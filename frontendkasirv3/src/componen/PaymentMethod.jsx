// components/PaymentMethod.jsx
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
    TableContainer,
    Paper,
    Checkbox,
} from "@mui/material";
import EditIcon from '@mui/icons-material/Edit';
import DeleteIcon from '@mui/icons-material/Delete';
import axios from "axios";

const getApiBaseUrl = () => {
    const protocol = window.location.protocol === "https:" ? "https" : "http";
    const baseUrl = process.env.REACT_APP_URL.replace(/^https?:\/\/+/, "");
    return `${protocol}://${baseUrl}`;
};

const fetcher = (url) => axios.get(url).then((res) => res.data.data);

function PaymentMethod() {
    const { user } = useSelector((state) => state.auth);
    const [openModal, setOpenModal] = useState(false);
    const [isEditing, setIsEditing] = useState(false);
    const [currentMethod, setCurrentMethod] = useState({
        id: "",
        bankName: "",
        accountNumber: "",
        isDefault: false, // Tambahkan isDefault
    });
    const [searchTerm, setSearchTerm] = useState("");

    const { data: paymentMethods, error: paymentMethodError } = useSWR(
        `${getApiBaseUrl()}/paymentmethods`,
        fetcher
    );

    // Only allow superadmin to access this page/component
    if (!user || user.role !== "superadmin") {
        return <Typography sx={{ p: 3 }}>Access denied. Superadmin only.</Typography>;
    }

    const handleOpenModal = (method = null) => {
        if (method) {
            setIsEditing(true);
            setCurrentMethod(method);
        } else {
            setIsEditing(false);
            setCurrentMethod({ bankName: "", accountNumber: "", isDefault: false }); // Reset isDefault
        }
        setOpenModal(true);
    };

    const handleCloseModal = () => {
        setOpenModal(false);
        setCurrentMethod({ bankName: "", accountNumber: "", isDefault: false });
    };

    const handleFormChange = (e) => {
        const { name, value, type, checked } = e.target;
        setCurrentMethod((prev) => ({
            ...prev,
            [name]: type === "checkbox" ? checked : value,
        }));
    };

    const handleSaveMethod = async () => {
        const { bankName, accountNumber } = currentMethod;
        if (!bankName.trim() || !accountNumber.trim()) {
            alert("Bank Name and Account Number are required.");
            return;
        }

        try {
            if (isEditing) {
                await axios.put(
                    `${getApiBaseUrl()}/paymentmethods/${currentMethod.id}`,
                    currentMethod, // Kirim currentMethod yang sudah termasuk isDefault
                    { withCredentials: true }
                );
            } else {
                await axios.post(
                    `${getApiBaseUrl()}/addpaymentmethod`,
                    currentMethod, // Kirim currentMethod yang sudah termasuk isDefault
                    { withCredentials: true }
                );
            }
            mutate(`${getApiBaseUrl()}/paymentmethods`);
            handleCloseModal();
        } catch (error) {
            alert(error.response?.data?.message || "Failed to save payment method.");
        }
    };

    const handleDeleteMethod = async (id) => {
        if (!window.confirm("Are you sure you want to delete this payment method?")) return;

        try {
            await axios.delete(`${getApiBaseUrl()}/paymentmethods/${id}`, { withCredentials: true });
            mutate(`${getApiBaseUrl()}/paymentmethods`);
        } catch (error) {
            alert(error.response?.data?.message || "Failed to delete payment method.");
        }
    };

    if (paymentMethodError) return <Typography sx={{ p: 3 }}>Error loading data.</Typography>;
    if (!paymentMethods) return <Typography sx={{ p: 3 }}>Loading...</Typography>;

    // Filter payment methods based on search term
    const filteredMethods = paymentMethods.filter((method) =>
        method.bankName.toLowerCase().includes(searchTerm.toLowerCase())
    );

    return (
        <Box
            sx={{
                p: { xs: 2, sm: 3 },
                backgroundColor: "#f4f6f8",
                minHeight: "100vh",
                display: "flex",
                flexDirection: "column",
            }}
        >
            <Card
                sx={{
                    flex: 1,
                    width: "100%",
                    overflowX: "auto",
                }}
            >
                <Box
                    sx={{
                        pt: { xs: 4, sm: 3 },
                        px: { xs: 2, sm: 3 },
                        mb: 2,
                        display: "flex",
                        flexDirection: "column",
                        alignItems: "flex-start",
                    }}
                >
                    <Typography variant="h4" gutterBottom>
                        Payment Methods
                    </Typography>
                    <Typography variant="subtitle1" gutterBottom>
                        Total Payment Methods: {filteredMethods.length}
                    </Typography>
                    <Box
                        sx={{
                            mt: 1,
                            mb: 2,
                            display: "flex",
                            justifyContent: "space-between",
                            alignItems: "center",
                            width: "100%",
                            gap: 2,
                            flexWrap: "wrap",
                        }}
                    >
                        <TextField
                            variant="outlined"
                            placeholder="Search by bank name"
                            value={searchTerm}
                            onChange={(e) => setSearchTerm(e.target.value)}
                            size="small"
                            sx={{ minWidth: 300, flexGrow: 1 }}
                        />
                        <Button variant="contained" color="primary" onClick={() => handleOpenModal()}>
                            Add Payment Method
                        </Button>
                    </Box>
                </Box>

                <TableContainer
                    component={Paper}
                    sx={{
                        maxWidth: "100%",
                        overflowX: "auto",
                        "&::-webkit-scrollbar": { height: "8px" },
                        "&::-webkit-scrollbar-track": { backgroundColor: "#f1f1f1" },
                        "&::-webkit-scrollbar-thumb": { backgroundColor: "#888", borderRadius: "4px" },
                        "&::-webkit-scrollbar-thumb:hover": { backgroundColor: "#555" },
                    }}
                >
                    <Table size="small">
                        <TableHead>
                            <TableRow>
                                <TableCell sx={{ whiteSpace: "nowrap" }}>No</TableCell>
                                <TableCell sx={{ whiteSpace: "nowrap" }}>Bank Name</TableCell>
                                <TableCell sx={{ whiteSpace: "nowrap" }}>Account Number</TableCell>
                                <TableCell sx={{ whiteSpace: "nowrap" }}>Default</TableCell>
                                <TableCell sx={{ whiteSpace: "nowrap" }}>Actions</TableCell>
                            </TableRow>
                        </TableHead>
                        <TableBody>
                            {filteredMethods.map((method, index) => (
                                <TableRow key={method.id}>
                                    <TableCell sx={{ whiteSpace: "nowrap" }}>{index + 1}</TableCell>
                                    <TableCell sx={{ whiteSpace: "nowrap" }}>{method.bankName}</TableCell>
                                    <TableCell sx={{ whiteSpace: "nowrap" }}>{method.accountNumber}</TableCell>
                                    <TableCell sx={{ whiteSpace: "nowrap" }}>
                                        <Checkbox
                                            checked={method.isDefault}
                                            disabled
                                        />
                                    </TableCell>
                                    <TableCell sx={{ whiteSpace: "nowrap" }}>
                                        <Button
                                            color="primary"
                                            onClick={() => handleOpenModal(method)}
                                            sx={{ mr: 1 }}
                                            size="small"
                                            variant="outlined"
                                        >
                                            <EditIcon fontSize="small" /> Edit
                                        </Button>
                                        <Button
                                            color="error"
                                            onClick={() => handleDeleteMethod(method.id)}
                                            size="small"
                                            variant="outlined"
                                        >
                                            <DeleteIcon fontSize="small" /> Delete
                                        </Button>
                                    </TableCell>
                                </TableRow>
                            ))}
                        </TableBody>
                    </Table>
                </TableContainer>

                {/* Modal for Add/Edit */}
                <Modal open={openModal} onClose={handleCloseModal} aria-labelledby="modal-title" aria-describedby="modal-description">
                    <Box
                        sx={{
                            position: "absolute",
                            top: "50%",
                            left: "50%",
                            transform: "translate(-50%, -50%)",
                            width: 320,
                            maxWidth: '90vw',
                            bgcolor: "background.paper",
                            boxShadow: 24,
                            p: 4,
                            borderRadius: 2,
                        }}
                    >
                        <Typography id="modal-title" variant="h6" mb={2}>
                            {isEditing ? "Edit Payment Method" : "Add New Payment Method"}
                        </Typography>

                        <TextField
                            fullWidth
                            label="Bank Name"
                            name="bankName"
                            value={currentMethod.bankName}
                            onChange={handleFormChange}
                            margin="normal"
                            size="small"
                            autoFocus
                        />
                        <TextField
                            fullWidth
                            label="Account Number"
                            name="accountNumber"
                            value={currentMethod.accountNumber}
                            onChange={handleFormChange}
                            margin="normal"
                            size="small"
                        />
                        <Box sx={{ display: 'flex', alignItems: 'center', mt: 2 }}>
                            <Checkbox
                                name="isDefault"
                                checked={currentMethod.isDefault}
                                onChange={handleFormChange}
                            />
                            <Typography variant="body1">Set as Default</Typography>
                        </Box>

                        <Box mt={3} display="flex" justifyContent="flex-end" gap={1}>
                            <Button onClick={handleCloseModal} size="small">
                                Cancel
                            </Button>
                            <Button variant="contained" color="primary" onClick={handleSaveMethod} size="small">
                                {isEditing ? "Save Changes" : "Add"}
                            </Button>
                        </Box>
                    </Box>
                </Modal>
            </Card>
        </Box>
    );
}

export default PaymentMethod;
