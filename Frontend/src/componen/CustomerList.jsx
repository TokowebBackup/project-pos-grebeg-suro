import React, { useState } from "react";
import useSWR, { mutate } from "swr";
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
} from "@mui/material";
import axios from "axios";

const getApiBaseUrl = () => {
  const protocol = window.location.protocol === "https:" ? "https" : "http";
  const baseUrl = process.env.REACT_APP_URL.replace(/^https?:\/\/+/, "");
  return `${protocol}://${baseUrl}`;
};

const fetcher = (url) => axios.get(url).then((res) => res.data.data);

function CustomerList() {
  // Misal endpoint customer list di API kamu: /getcustomers
  const { data: customers, error: customerError } = useSWR(`${getApiBaseUrl()}/customers`, fetcher);

  // Kalau perlu, state modal untuk tambah/edit bisa ditambahkan di sini

  if (customerError) return <Typography>Error loading customers.</Typography>;
  if (!customers) return <Typography>Loading...</Typography>;

  return (
    <Box sx={{
      p: 2,
      backgroundColor: "#f4f6f8",
      minHeight: "100vh",
      display: "flex",
      flexDirection: "column",
      overflowX: 'auto',
    }}>
      <Card sx={{ flex: 1, width: "100%", overflowX: 'auto' }}>
        <Typography variant="h6" sx={{ p: 2 }}>
          Customer List
        </Typography>
        <TableContainer component={Paper} sx={{ maxWidth: '100%', overflowX: 'auto' }}>
          <Table>
            <TableHead>
              <TableRow>
                <TableCell>Nama Customer</TableCell>
                <TableCell>Telepon</TableCell>
                {/* Tambah kolom lain sesuai data */}
              </TableRow>
            </TableHead>
            <TableBody>
              {customers.map((customer) => (
                <TableRow key={customer?.uuid}>
                  <TableCell>{customer?.customer_name}</TableCell>
                  <TableCell>{customer?.customer_phone}</TableCell>
                  {/* Tambah kolom lain sesuai data */}
                </TableRow>
              ))}
            </TableBody>
          </Table>
        </TableContainer>
      </Card>
    </Box>
  );
}

export default CustomerList;
