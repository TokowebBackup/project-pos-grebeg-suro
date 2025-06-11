import React, { useState, useMemo } from "react";
import useSWR from "swr";
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
  Typography,
  TableContainer,
  Paper,
  TablePagination,
  TextField,
  TableSortLabel,
  CircularProgress,
} from "@mui/material";
import axios from "axios";

const getApiBaseUrl = () => {
  const protocol = window.location.protocol === "https:" ? "https" : "http";
  const baseUrl = process.env.REACT_APP_URL.replace(/^https?:\/\/+/, "");
  return `${protocol}://${baseUrl}`;
};

const fetcher = (url) => axios.get(url).then((res) => res.data.data);

function descendingComparator(a, b, orderBy) {
  if (!a[orderBy]) return 1;
  if (!b[orderBy]) return -1;
  if (b[orderBy] < a[orderBy]) return -1;
  if (b[orderBy] > a[orderBy]) return 1;
  return 0;
}

function getComparator(order, orderBy) {
  return order === "desc"
    ? (a, b) => descendingComparator(a, b, orderBy)
    : (a, b) => -descendingComparator(a, b, orderBy);
}

function stableSort(array, comparator) {
  const stabilized = array.map((el, index) => [el, index]);
  stabilized.sort((a, b) => {
    const cmp = comparator(a[0], b[0]);
    if (cmp !== 0) return cmp;
    return a[1] - b[1];
  });
  return stabilized.map((el) => el[0]);
}

export default function CustomerList() {
  const { data: customers, error } = useSWR(
    `${getApiBaseUrl()}/customers`,
    fetcher
  );

  const [page, setPage] = useState(0);
  const [rowsPerPage, setRowsPerPage] = useState(10);
  const [order, setOrder] = useState("asc");
  const [orderBy, setOrderBy] = useState("customer_name");
  const [searchTerm, setSearchTerm] = useState("");

  // Filter berdasarkan searchTerm
  const filteredCustomers = useMemo(() => {
    if (!searchTerm) return customers;
    return customers?.filter(
      (cust) =>
        cust.customer_name
          ?.toLowerCase()
          .includes(searchTerm.toLowerCase()) ||
        cust.customer_phone
          ?.toLowerCase()
          .includes(searchTerm.toLowerCase()) ||
        cust.User?.Cabang?.namacabang
          ?.toLowerCase()
          .includes(searchTerm.toLowerCase())
    );
  }, [customers, searchTerm]);

  if (error)
    return (
      <Typography color="error" variant="h6" align="center" sx={{ mt: 4 }}>
        Error loading customers.
      </Typography>
    );
  if (!customers)
    return (
      <Box sx={{ display: "flex", justifyContent: "center", mt: 6 }}>
        <CircularProgress />
      </Box>
    );

  // Sorting + pagination
  const sortedCustomers = stableSort(
    filteredCustomers,
    getComparator(order, orderBy)
  );
  const paginatedCustomers = sortedCustomers.slice(
    page * rowsPerPage,
    page * rowsPerPage + rowsPerPage
  );

  const handleRequestSort = (property) => {
    const isAsc = orderBy === property && order === "asc";
    setOrder(isAsc ? "desc" : "asc");
    setOrderBy(property);
  };

  const handleChangePage = (event, newPage) => {
    setPage(newPage);
  };

  const handleChangeRowsPerPage = (event) => {
    setRowsPerPage(parseInt(event.target.value, 10));
    setPage(0);
  };

  return (
    <Box
      sx={{
        p: 2,
        backgroundColor: "#f4f6f8",
        minHeight: "100vh",
        display: "flex",
        flexDirection: "column",
      }}
    >
      <Card sx={{ flex: 1, width: "100%" }}>
        <Typography variant="h5" sx={{ p: 2 }}>
          Customer List
        </Typography>

        <Box sx={{ p: 2, display: "flex", justifyContent: "space-between" }}>
          <TextField
            label="Search Customers"
            variant="outlined"
            size="small"
            value={searchTerm}
            onChange={(e) => setSearchTerm(e.target.value)}
            sx={{ width: 300 }}
          />
          {/* Tambahkan tombol tambah customer di sini jika perlu */}
          {/* <Button variant="contained" color="primary">Add Customer</Button> */}
        </Box>

        <TableContainer component={Paper}>
          <Table stickyHeader>
            <TableHead>
              <TableRow>
                <TableCell sortDirection={orderBy === "customer_name" ? order : false}>
                  <TableSortLabel
                    active={orderBy === "customer_name"}
                    direction={orderBy === "customer_name" ? order : "asc"}
                    onClick={() => handleRequestSort("customer_name")}
                  >
                    Nama Customer
                  </TableSortLabel>
                </TableCell>
                <TableCell sortDirection={orderBy === "customer_phone" ? order : false}>
                  <TableSortLabel
                    active={orderBy === "customer_phone"}
                    direction={orderBy === "customer_phone" ? order : "asc"}
                    onClick={() => handleRequestSort("customer_phone")}
                  >
                    Telepon
                  </TableSortLabel>
                </TableCell>
                <TableCell sortDirection={orderBy === "namacabang" ? order : false}>
                  <TableSortLabel
                    active={orderBy === "namacabang"}
                    direction={orderBy === "namacabang" ? order : "asc"}
                    onClick={() => handleRequestSort("namacabang")}
                  >
                    Penjual
                  </TableSortLabel>
                </TableCell>
              </TableRow>
            </TableHead>

            <TableBody>
              {paginatedCustomers.length > 0 ? (
                paginatedCustomers.map((customer) => (
                  <TableRow
                    hover
                    key={customer.uuid}
                    sx={{ cursor: "pointer" }}
                    // onClick={() => openEditModal(customer)} // contoh event klik baris
                  >
                    <TableCell>{customer.customer_name}</TableCell>
                    <TableCell>{customer.customer_phone}</TableCell>
                    <TableCell>{customer.User?.Cabang?.namacabang || "-"}</TableCell>
                  </TableRow>
                ))
              ) : (
                <TableRow>
                  <TableCell colSpan={3} align="center">
                    No customers found.
                  </TableCell>
                </TableRow>
              )}
            </TableBody>
          </Table>
        </TableContainer>

        <TablePagination
          rowsPerPageOptions={[5, 10, 25]}
          component="div"
          count={filteredCustomers.length}
          rowsPerPage={rowsPerPage}
          page={page}
          onPageChange={handleChangePage}
          onRowsPerPageChange={handleChangeRowsPerPage}
        />
      </Card>
    </Box>
  );
}
