import React, { useState } from "react";
import useSWR, { mutate } from "swr";
import { useSelector } from "react-redux";
import {
  Box,
  Button,
  Card,
  Modal,
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableRow,
  TextField,
  Typography,
  MenuItem,
  TableContainer,
  Paper,
  IconButton,
  Dialog,
  DialogTitle,
  DialogContent,
  DialogActions,
  CircularProgress,
  InputAdornment,
} from "@mui/material";
import { Edit, Delete, Search } from "@mui/icons-material";
import axios from "axios";

const getApiBaseUrl = () => {
  const protocol = window.location.protocol === "https:" ? "https" : "http";
  const baseUrl = process.env.REACT_APP_URL.replace(/^https?:\/\/+/, "");
  return `${protocol}://${baseUrl}`;
};

const fetcher = (url) => axios.get(url).then((res) => res.data.data);

export default function UserList() {
  const { user } = useSelector((state) => state.auth);
  const endpoint = user?.role === "superadmin" ? "/getuser" : "/getusercabang";
  const { data: users, error: userError } = useSWR(
    user ? `${getApiBaseUrl()}${endpoint}` : null,
    fetcher
  );
  const { data: cabangList, error: cabangError } = useSWR(
    `${getApiBaseUrl()}/cabang`,
    fetcher
  );

  // States for modal and dialog
  const [openModal, setOpenModal] = useState(false);
  const [isEditing, setIsEditing] = useState(false);
  const [currentUser, setCurrentUser] = useState({
    uuid: "",
    username: "",
    password: "",
    confpassword: "",
    role: "",
    cabanguuid: "",
  });
  const [openDeleteDialog, setOpenDeleteDialog] = useState(false);
  const [deleteTarget, setDeleteTarget] = useState(null);
  const [searchTerm, setSearchTerm] = useState("");

  const handleOpenModal = (user = null) => {
    if (user) {
      setIsEditing(true);
      setCurrentUser({
        uuid: user.uuid,
        username: user.username,
        password: "",
        confpassword: "",
        role: user.role,
        cabanguuid: user.Cabang?.uuid || "",
      });
    } else {
      setIsEditing(false);
      setCurrentUser({ username: "", password: "", confpassword: "", role: "", cabanguuid: "" });
    }
    setOpenModal(true);
  };

  const handleCloseModal = () => {
    setOpenModal(false);
    setCurrentUser({ username: "", password: "", confpassword: "", role: "", cabanguuid: "" });
  };

  const handleFormChange = (e) => {
    const { name, value } = e.target;
    setCurrentUser((prev) => ({ ...prev, [name]: value }));
  };

  const handleSaveUser = async () => {
    if (!currentUser.username.trim()) {
      alert("Username is required");
      return;
    }
    if (!currentUser.role) {
      alert("Please select a role");
      return;
    }
    if (!isEditing && !currentUser.password) {
      alert("Password is required for new users");
      return;
    }
    if (currentUser.password !== currentUser.confpassword) {
      alert("Password and confirm password do not match.");
      return;
    }

    try {
      if (isEditing) {
        await axios.put(
          `${getApiBaseUrl()}/updateuser/${currentUser.uuid}`,
          currentUser,
          { withCredentials: true }
        );
      } else {
        await axios.post(`${getApiBaseUrl()}/createuser`, currentUser, {
          withCredentials: true,
        });
      }
      mutate(`${getApiBaseUrl()}${endpoint}`);
      handleCloseModal();
    } catch (error) {
      alert(error.response?.data?.message || "Failed to save user.");
    }
  };

  const handleOpenDeleteDialog = (user) => {
    setDeleteTarget(user);
    setOpenDeleteDialog(true);
  };

  const handleCloseDeleteDialog = () => {
    setOpenDeleteDialog(false);
    setDeleteTarget(null);
  };

  const handleDeleteUser = async () => {
    if (!deleteTarget) return;
    try {
      await axios.delete(`${getApiBaseUrl()}/deleteuser/${deleteTarget.uuid}`, {
        withCredentials: true,
      });
      mutate(`${getApiBaseUrl()}${endpoint}`);
      handleCloseDeleteDialog();
    } catch (error) {
      alert(error.response?.data?.message || "Failed to delete user.");
    }
  };

  if (userError || cabangError)
    return (
      <Typography color="error" align="center" mt={4}>
        Error loading data.
      </Typography>
    );
  if (!users || !cabangList)
    return (
      <Box display="flex" justifyContent="center" mt={6}>
        <CircularProgress />
      </Box>
    );

  // Filter users by search term
  const filteredUsers = users.filter((u) =>
    u.username.toLowerCase().includes(searchTerm.toLowerCase())
  );

  return (
    <Box
      sx={{
        p: { xs: 1, sm: 2 },
        backgroundColor: "#f4f6f8",
        minHeight: "100vh",
        display: "flex",
        flexDirection: "column",
        overflowX: "auto",
      }}
    >
      <Card sx={{ flex: 1, width: "100%", overflowX: "auto", p: 2 }}>
        <Box
          sx={{
            mb: 2,
            display: "flex",
            justifyContent: "space-between",
            flexWrap: "wrap",
            gap: 1,
          }}
        >
          <TextField
            placeholder="Search by username..."
            variant="outlined"
            size="small"
            value={searchTerm}
            onChange={(e) => setSearchTerm(e.target.value)}
            InputProps={{
              startAdornment: (
                <InputAdornment position="start">
                  <Search />
                </InputAdornment>
              ),
            }}
            sx={{ width: { xs: "100%", sm: "300px" } }}
          />
          <Button variant="contained" color="primary" onClick={() => handleOpenModal()}>
            Add User
          </Button>
        </Box>

        <TableContainer component={Paper} sx={{ maxWidth: "100%", overflowX: "auto" }}>
          <Table
            sx={{
              minWidth: 650,
              "& tbody tr:hover": {
                backgroundColor: "#e3f2fd",
                cursor: "pointer",
              },
              "& tbody tr:nth-of-type(odd)": {
                backgroundColor: "#fafafa",
              },
            }}
          >
            <TableHead>
              <TableRow>
                <TableCell>Username</TableCell>
                <TableCell>Role</TableCell>
                <TableCell>Cabang</TableCell>
                <TableCell align="center">Actions</TableCell>
              </TableRow>
            </TableHead>
            <TableBody>
              {filteredUsers.length === 0 ? (
                <TableRow>
                  <TableCell colSpan={4} align="center" sx={{ py: 3 }}>
                    No users found.
                  </TableCell>
                </TableRow>
              ) : (
                filteredUsers.map((user) => (
                  <TableRow key={user.uuid}>
                    <TableCell>{user.username}</TableCell>
                    <TableCell sx={{ textTransform: "capitalize" }}>{user.role}</TableCell>
                    <TableCell>{user.Cabang?.namacabang || "N/A"}</TableCell>
                    <TableCell align="center">
                      <IconButton
                        color="primary"
                        onClick={() => handleOpenModal(user)}
                        aria-label="edit"
                        size="small"
                      >
                        <Edit fontSize="small" />
                      </IconButton>
                      <IconButton
                        color="error"
                        onClick={() => handleOpenDeleteDialog(user)}
                        aria-label="delete"
                        size="small"
                      >
                        <Delete fontSize="small" />
                      </IconButton>
                    </TableCell>
                  </TableRow>
                ))
              )}
            </TableBody>
          </Table>
        </TableContainer>
      </Card>

      {/* Add/Edit Modal */}
      <Modal open={openModal} onClose={handleCloseModal}>
        <Box
          sx={{
            position: "absolute",
            top: "50%",
            left: "50%",
            transform: "translate(-50%, -50%)",
            width: { xs: "90%", sm: 350 },
            maxHeight: "90vh",
            bgcolor: "background.paper",
            boxShadow: 24,
            p: 3,
            borderRadius: 2,
            overflowY: "auto",
          }}
        >
          <Typography variant="h6" mb={2}>
            {isEditing ? "Edit User" : "Add New User"}
          </Typography>

          <TextField
            fullWidth
            label="Username"
            name="username"
            value={currentUser.username}
            onChange={handleFormChange}
            margin="normal"
            size="small"
          />
          <TextField
            fullWidth
            label="Password"
            type="password"
            name="password"
            value={currentUser.password}
            onChange={handleFormChange}
            margin="normal"
            size="small"
            helperText={isEditing ? "Leave blank if you don't want to change password" : ""}
          />
          <TextField
            fullWidth
            label="Confirm Password"
            type="password"
            name="confpassword"
            value={currentUser.confpassword}
            onChange={handleFormChange}
            margin="normal"
            size="small"
          />
          <TextField
            fullWidth
            select
            label="Role"
            name="role"
            value={currentUser.role}
            onChange={handleFormChange}
            margin="normal"
            size="small"
          >
            <MenuItem value="superadmin">Super Admin</MenuItem>
            <MenuItem value="admin">Admin</MenuItem>
            <MenuItem value="teknisi">Teknisi</MenuItem>
            <MenuItem value="karyawan">Karyawan</MenuItem>
          </TextField>

          {(user.role === "superadmin" || user.role === "admin") && (
            <TextField
              fullWidth
              select
              label="Cabang"
              name="cabanguuid"
              value={currentUser.cabanguuid}
              onChange={handleFormChange}
              margin="normal"
              size="small"
            >
              <MenuItem value="">-- Select Cabang --</MenuItem>
              {cabangList.map((cabang) => (
                <MenuItem key={cabang.uuid} value={cabang.uuid}>
                  {cabang.namacabang}
                </MenuItem>
              ))}
            </TextField>
          )}

          <Box mt={3} display="flex" justifyContent="flex-end" gap={1}>
            <Button onClick={handleCloseModal} color="inherit">
              Cancel
            </Button>
            <Button onClick={handleSaveUser} variant="contained" color="primary">
              {isEditing ? "Update" : "Save"}
            </Button>
          </Box>
        </Box>
      </Modal>

      {/* Delete Confirmation Dialog */}
      <Dialog open={openDeleteDialog} onClose={handleCloseDeleteDialog}>
        <DialogTitle>Confirm Delete</DialogTitle>
        <DialogContent>
          Are you sure you want to delete user <b>{deleteTarget?.username}</b>?
        </DialogContent>
        <DialogActions>
          <Button onClick={handleCloseDeleteDialog} color="inherit">
            Cancel
          </Button>
          <Button onClick={handleDeleteUser} color="error" variant="contained">
            Delete
          </Button>
        </DialogActions>
      </Dialog>
    </Box>
  );
}
