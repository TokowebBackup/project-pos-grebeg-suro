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
    Typography,
    TableContainer,
    Paper,
    Checkbox,
} from "@mui/material";
import EditIcon from '@mui/icons-material/Edit';
import DeleteIcon from '@mui/icons-material/Delete';
import axios from "axios";
import Swal from "sweetalert2";

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
        qrisImage: null,
        isDefault: false,
    });
    const [searchTerm, setSearchTerm] = useState("");

    const { data: paymentMethods, error: paymentMethodError } = useSWR(
        `${getApiBaseUrl()}/paymentmethods`,
        fetcher
    );

    if (!user || user.role !== "superadmin") {
        return <Typography sx={{ p: 3 }}>Access denied. Superadmin only.</Typography>;
    }

    const handleOpenModal = (method = null) => {
        if (method) {
            setIsEditing(true);
            setCurrentMethod(method);
        } else {
            setIsEditing(false);
            setCurrentMethod({ qrisImage: null, isDefault: false });
        }
        setOpenModal(true);
    };

    const handleCloseModal = () => {
        setOpenModal(false);
        setCurrentMethod({ qrisImage: null, isDefault: false });
    };

    const handleFormChange = (e) => {
        const { name, type, checked, files } = e.target;
        setCurrentMethod((prev) => ({
            ...prev,
            [name]: type === "checkbox" ? checked : files ? files[0] : e.target.value,
        }));
    };


    const handleSaveMethod = async () => {
        const formData = new FormData();
        formData.append('qrisImage', currentMethod.qrisImage);
        formData.append('isDefault', currentMethod.isDefault);

        try {
            let response;
            if (isEditing) {
                response = await axios.put(
                    `${getApiBaseUrl()}/paymentmethods/${currentMethod.id}`,
                    formData,
                    { withCredentials: true, headers: { 'Content-Type': 'multipart/form-data' } }
                );
            } else {
                response = await axios.post(
                    `${getApiBaseUrl()}/addpaymentmethod`,
                    formData,
                    { withCredentials: true, headers: { 'Content-Type': 'multipart/form-data' } }
                );
            }

            // Update state dengan data yang diterima dari server
            const newPaymentMethod = response.data.data; // Ambil data dari respons
            mutate(`${getApiBaseUrl()}/paymentmethods`, (prev) => {
                if (isEditing) {
                    // Update metode pembayaran yang sudah ada
                    return prev.map(method => method.id === newPaymentMethod.id ? newPaymentMethod : method);
                } else {
                    // Tambahkan metode pembayaran baru
                    return [...prev, newPaymentMethod];
                }
            }, false);

            handleCloseModal();
            Swal.fire({
                icon: 'success',
                title: 'Success',
                text: 'Payment method saved successfully!',
            });
        } catch (error) {
            Swal.fire({
                icon: 'error',
                title: 'Error',
                text: error.response?.data?.message || "Failed to save payment method.",
            });
        }
    };



    const handleDeleteMethod = async (id) => {
        const result = await Swal.fire({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!'
        });

        if (result.isConfirmed) {
            try {
                await axios.delete(`${getApiBaseUrl()}/paymentmethods/${id}`, { withCredentials: true });
                mutate(`${getApiBaseUrl()}/paymentmethods`);
                Swal.fire(
                    'Deleted!',
                    'Your payment method has been deleted.',
                    'success'
                );
            } catch (error) {
                Swal.fire({
                    icon: 'error',
                    title: 'Error',
                    text: error.response?.data?.message || "Failed to delete payment method.",
                });
            }
        }
    };


    if (paymentMethodError) return <Typography sx={{ p: 3 }}>Error loading data.</Typography>;
    if (!paymentMethods) return <Typography sx={{ p: 3 }}>Loading...</Typography>;

    const filteredMethods = paymentMethods.filter((method) =>
        (method.file || "").toLowerCase().includes(searchTerm.toLowerCase())
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
                    }}
                >
                    <Table size="small">
                        <TableHead>
                            <TableRow>
                                <TableCell sx={{ whiteSpace: "nowrap" }}>No</TableCell>
                                <TableCell sx={{ whiteSpace: "nowrap" }}>QRIS Image</TableCell>
                                <TableCell sx={{ whiteSpace: "nowrap" }}>Default</TableCell>
                                <TableCell sx={{ whiteSpace: "nowrap" }}>Actions</TableCell>
                            </TableRow>
                        </TableHead>
                        <TableBody>
                            {filteredMethods.map((method, index) => (
                                <TableRow key={method.id}>
                                    <TableCell sx={{ whiteSpace: "nowrap" }}>{index + 1}</TableCell>
                                    <TableCell sx={{ whiteSpace: "nowrap" }}>
                                        {
                                            method?.file && (
                                                <img src={`${getApiBaseUrl()}${method.file}`} alt="QRIS" style={{ width: '100px' }} />
                                            )
                                        }
                                    </TableCell>
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

                        <input
                            type="file"
                            name="qrisImage" // Pastikan ini sesuai dengan yang diharapkan di backend
                            onChange={handleFormChange}
                            accept="image/*"
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
