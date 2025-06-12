import React, { useState, useEffect } from "react";
import useSWR from "swr";
import {
  Box,
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableRow,
  Typography,
  Card,
  Button,
  Modal,
  TextField,
  MenuItem,
  Select,
  InputLabel,
  FormControl,
  Pagination
} from "@mui/material";
import { Edit, Delete } from "@mui/icons-material";
import axios from "axios";
import { useSelector } from "react-redux";
import { UploadProduk } from "./uploadProduk";

const getApiBaseUrl = () => {
  const protocol = window.location.protocol === "https:" ? "https" : "http";
  const baseUrl = process.env.REACT_APP_URL.replace(/^https?:\/\/+/, "");
  return `${protocol}://${baseUrl}`;
};

const fetcher = (url) => axios.get(url, { withCredentials: true }).then((res) => res.data);

export const Product = () => {
  const { user } = useSelector((state) => state.auth);
  const { data: productResponse, error: productError, mutate } = useSWR(`${getApiBaseUrl()}/barang`, fetcher);
  const { data: categoryResponse, error: categoryError } = useSWR(`${getApiBaseUrl()}/kategori`, fetcher);

  const products = Array.isArray(productResponse?.data) ? productResponse.data : [];
  const categories = Array.isArray(categoryResponse?.data) ? categoryResponse.data : [];

  const [open, setOpen] = useState(false);
  const [formData, setFormData] = useState({ namabarang: "", harga: "", kategoriuuid: "", file: null });
  const [isEditing, setIsEditing] = useState(false);
  const [editId, setEditId] = useState(null);
  const [filters, setFilters] = useState({ kategori: "" });
  const [currentPage, setCurrentPage] = useState(1);
  const [filteredProducts, setFilteredProducts] = useState([]);
  const itemsPerPage = 5;

  useEffect(() => {
    if (products) {
      const filtered = filters.kategori === "" ? products : products.filter(product => product.kategoriuuid === filters.kategori);
      setFilteredProducts(filtered);
      setCurrentPage(1);
    }
  }, [filters.kategori, products]);

  const paginatedProducts = filteredProducts.slice((currentPage - 1) * itemsPerPage, currentPage * itemsPerPage);
  const totalPages = Math.ceil(filteredProducts.length / itemsPerPage);

  const handleOpen = () => setOpen(true);
  const handleClose = () => {
    setOpen(false);
    setFormData({ namabarang: "", harga: "", kategoriuuid: "", file: null });
    setIsEditing(false);
  };

  const handleChange = (e) => setFormData({ ...formData, [e.target.name]: e.target.value });
  const handleFileChange = (e) => setFormData({ ...formData, file: e.target.files[0] });

  const handleSubmit = async () => {
    const formDataToSend = new FormData();
    Object.entries(formData).forEach(([key, value]) => {
      if (value) formDataToSend.append(key, value);
    });

    try {
      const url = isEditing ? `${getApiBaseUrl()}/updatebarang/${editId}` : `${getApiBaseUrl()}/createbarang`;
      const method = isEditing ? axios.put : axios.post;
      await method(url, formDataToSend, { withCredentials: true });
      mutate();
      handleClose();
    } catch (err) {
      console.error("Submit Error:", err);
    }
  };

  const handleEdit = (product) => {
    setFormData({ namabarang: product.namabarang, harga: product.harga, kategoriuuid: product.kategoriuuid, file: null });
    setEditId(product.uuid);
    setIsEditing(true);
    handleOpen();
  };

  const handleDelete = async (id) => {
    try {
      await axios.delete(`${getApiBaseUrl()}/deletebarang/${id}`, { withCredentials: true });
      mutate();
    } catch (err) {
      console.error("Delete Error:", err);
    }
  };

  if (productError || categoryError) return <Typography color="error">Error loading data.</Typography>;
  if (!products || !categories) return <Typography>Loading...</Typography>;

  return (
    <Box sx={{ p: 3 }}>
      <Box sx={{ display: "flex", justifyContent: "space-between", alignItems: "center", mb: 2 }}>
        <Typography variant="h5">Daftar Produk</Typography>
        {user?.role === "superadmin" && <UploadProduk />}
      </Box>

      <Box sx={{ display: "flex", gap: 2, mb: 3 }}>
        {user?.role === "superadmin" && (
          <Button variant="contained" onClick={handleOpen}>Tambah Produk</Button>
        )}
        <FormControl sx={{ minWidth: 200 }}>
          <InputLabel>Filter Kategori</InputLabel>
          <Select value={filters.kategori} onChange={(e) => setFilters({ kategori: e.target.value })} label="Filter Kategori">
            <MenuItem value="">Semua Kategori</MenuItem>
            {categories.map((cat) => <MenuItem key={cat.uuid} value={cat.uuid}>{cat.namakategori}</MenuItem>)}
          </Select>
        </FormControl>
      </Box>

      <Card>
        <Table>
          <TableHead>
            <TableRow>
              <TableCell>No</TableCell>
              <TableCell>Nama</TableCell>
              <TableCell>Harga</TableCell>
              <TableCell>Kategori</TableCell>
              <TableCell>Foto</TableCell>
              <TableCell>Dibuat</TableCell>
              {user?.role === "superadmin" && <TableCell>Aksi</TableCell>}
            </TableRow>
          </TableHead>
          <TableBody>
            {paginatedProducts.map((prod, idx) => (
              <TableRow key={prod.uuid}>
                <TableCell>{(currentPage - 1) * itemsPerPage + idx + 1}</TableCell>
                <TableCell>{prod.namabarang}</TableCell>
                <TableCell>{prod.harga}</TableCell>
                <TableCell>{prod.Kategori?.namakategori || "-"}</TableCell>
                <TableCell>
                  <img src={`${getApiBaseUrl()}/uploads/${prod.foto}`} alt={prod.namabarang} style={{ width: 50, height: 50, objectFit: "cover" }} />
                </TableCell>
                <TableCell>{new Date(prod.createdAt).toLocaleString()}</TableCell>
                {user?.role === "superadmin" && (
                  <TableCell>
                    <Button size="small" onClick={() => handleEdit(prod)}><Edit fontSize="small" /> Edit</Button>
                    <Button size="small" color="error" onClick={() => handleDelete(prod.uuid)}><Delete fontSize="small" /> Hapus</Button>
                  </TableCell>
                )}
              </TableRow>
            ))}
          </TableBody>
        </Table>
      </Card>

      {totalPages > 1 && (
        <Box sx={{ mt: 3, display: "flex", justifyContent: "center" }}>
          <Pagination count={totalPages} page={currentPage} onChange={(e, val) => setCurrentPage(val)} color="primary" />
        </Box>
      )}

      <Modal open={open} onClose={handleClose}>
        <Box sx={{ p: 4, width: 300, bgcolor: "background.paper", boxShadow: 24, position: "absolute", top: "50%", left: "50%", transform: "translate(-50%, -50%)" }}>
          <Typography variant="h6" gutterBottom>{isEditing ? "Edit Produk" : "Tambah Produk"}</Typography>
          <TextField fullWidth margin="normal" label="Nama Barang" name="namabarang" value={formData.namabarang} onChange={handleChange} />
          <TextField fullWidth margin="normal" label="Harga" name="harga" value={formData.harga} onChange={handleChange} />
          <FormControl fullWidth margin="normal">
            <InputLabel>Kategori</InputLabel>
            <Select name="kategoriuuid" value={formData.kategoriuuid} onChange={handleChange} label="Kategori">
              {categories.map((cat) => <MenuItem key={cat.uuid} value={cat.uuid}>{cat.namakategori}</MenuItem>)}
            </Select>
          </FormControl>
          <input type="file" onChange={handleFileChange} style={{ marginTop: 16 }} />
          <Button variant="contained" fullWidth sx={{ mt: 2 }} onClick={handleSubmit}>{isEditing ? "Update" : "Submit"}</Button>
        </Box>
      </Modal>
    </Box>
  );
};
