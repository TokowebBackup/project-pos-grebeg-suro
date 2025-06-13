-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 26 Feb 2025 pada 22.43
-- Versi server: 10.6.17-MariaDB-cll-lve
-- Versi PHP: 8.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brabsenm_kasirv2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `BarangCabangs`
--

CREATE TABLE `BarangCabangs` (
  `uuid` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `baranguuid` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `cabanguuid` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `stok` int(11) DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `BarangCabangs`
--

INSERT INTO `BarangCabangs` (`uuid`, `baranguuid`, `cabanguuid`, `stok`, `createdAt`, `updatedAt`) VALUES
('0c527250-17ae-4b7c-9484-b1f739de15f2', '00f3be4a-96e2-4d9e-9d8d-ad27017ff5a2', '197fa82d-bd4b-4c6d-92f1-21b875cdd3d7', 0, '2025-02-26 21:49:10', '2025-02-26 21:49:10'),
('2389b175-3cc6-4a97-9434-92b0c67e8285', '8f19b892-0979-4fde-a448-c02f26a3d078', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 49, '2025-02-26 21:47:03', '2025-02-26 22:26:31'),
('597bab6d-dcea-4a93-b19a-ce3601d354f4', '08d4c3df-09d3-46a2-b841-80d825309151', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 48, '2025-02-26 21:47:08', '2025-02-26 22:27:29'),
('5c773c9d-9d06-436d-bf84-7b42044dee76', '8e1c5164-da29-45fa-ab83-093a765cfec3', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 49, '2025-02-26 21:46:51', '2025-02-26 22:26:31'),
('6d1d007f-a8b6-4bfa-98bc-a51b3493ea13', '102562db-14be-418b-b6c4-e4bd62c65549', '197fa82d-bd4b-4c6d-92f1-21b875cdd3d7', 0, '2025-02-26 21:49:16', '2025-02-26 21:49:16'),
('6ddea917-217a-4901-83bf-b746a45eebc7', '00f3be4a-96e2-4d9e-9d8d-ad27017ff5a2', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 49, '2025-02-26 21:46:45', '2025-02-26 22:26:31'),
('74c07291-9c8f-4651-88c7-e164605de854', '8f19b892-0979-4fde-a448-c02f26a3d078', '197fa82d-bd4b-4c6d-92f1-21b875cdd3d7', 0, '2025-02-26 21:49:22', '2025-02-26 21:49:22'),
('c0fbf914-e5da-4e9a-8aae-1945da22e40d', '102562db-14be-418b-b6c4-e4bd62c65549', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 50, '2025-02-26 22:22:26', '2025-02-26 22:22:26'),
('deb85884-e937-4eea-a440-6fd1e6a2d71d', '0dca2395-7e4e-437f-a46f-976d67691a43', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 50, '2025-02-26 22:22:25', '2025-02-26 22:22:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barangs`
--

CREATE TABLE `barangs` (
  `uuid` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `namabarang` varchar(255) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `kategoriuuid` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `foto` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `barangs`
--

INSERT INTO `barangs` (`uuid`, `namabarang`, `harga`, `kategoriuuid`, `foto`, `createdAt`, `updatedAt`) VALUES
('00f3be4a-96e2-4d9e-9d8d-ad27017ff5a2', 'Roti Bakar', 10000.00, 'eedfba9f-d995-42a2-b0df-a6fe7186dee3', 'Roti Bakar-1740581109160.jpeg', '2025-02-26 21:45:09', '2025-02-26 21:45:09'),
('08d4c3df-09d3-46a2-b841-80d825309151', 'Steak', 25000.00, '8dfc2e1d-31b1-47f0-a38d-96d771669128', 'Steak-1740581187273.jpeg', '2025-01-03 20:24:12', '2025-02-26 21:46:27'),
('0dca2395-7e4e-437f-a46f-976d67691a43', 'Kentang', 10000.00, 'eedfba9f-d995-42a2-b0df-a6fe7186dee3', 'Kentang-1740581059805.jpeg', '2024-11-28 20:42:28', '2025-02-26 21:44:19'),
('102562db-14be-418b-b6c4-e4bd62c65549', 'Jus Alpukat', 10000.00, '72995123-0ac9-4dc7-a01d-5284cc6afd7d', 'Jus Alpukat-1740581178798.jpeg', '2024-11-28 20:42:16', '2025-02-26 21:46:18'),
('8e1c5164-da29-45fa-ab83-093a765cfec3', 'Es kelapa', 10000.00, '72995123-0ac9-4dc7-a01d-5284cc6afd7d', 'Es kelapa-1740581088069.jpeg', '2024-12-06 10:55:58', '2025-02-26 21:44:48'),
('8f19b892-0979-4fde-a448-c02f26a3d078', 'Es Kopi Hitam', 5000.00, '72995123-0ac9-4dc7-a01d-5284cc6afd7d', 'Es Kopi Hitam-1740581080113.jpeg', '2024-12-16 14:46:17', '2025-02-26 21:44:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cabangs`
--

CREATE TABLE `cabangs` (
  `uuid` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `namacabang` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `koordinat` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `cabangs`
--

INSERT INTO `cabangs` (`uuid`, `namacabang`, `alamat`, `koordinat`, `createdAt`, `updatedAt`) VALUES
('197fa82d-bd4b-4c6d-92f1-21b875cdd3d7', 'Kendal,Jawa Tengah', 'Jl.Cepiring', '-7.003011,110.411597', '2024-12-13 23:30:39', '2025-02-26 21:48:06'),
('1aeceb73-2960-49b2-8eb4-c00139ddfe11', 'Jogja', 'Jl.Malioboro', '-7.003011,110.411597', '2024-12-02 15:41:18', '2025-02-26 21:47:50'),
('bb88b401-f02f-4ff9-8b7b-68826173eef7', 'Semarang-Pedurungan', 'Jl.Pedurungan', '-6.9842252,110.3654802', '2024-11-28 15:05:02', '2025-02-26 21:48:57'),
('e112b2e6-a41f-43d5-9a8d-e53d6af65649', 'Semarang', 'Jl.Ngaliyan', '-6.9854139,110.374197315', '2024-12-18 18:46:41', '2025-02-26 21:48:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `distribusiStoks`
--

CREATE TABLE `distribusiStoks` (
  `uuid` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `baranguuid` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `cabanguuid` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `jumlah` int(11) NOT NULL,
  `status` enum('pending','dikirim','diterima') DEFAULT 'pending',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `distribusiStoks`
--

INSERT INTO `distribusiStoks` (`uuid`, `baranguuid`, `cabanguuid`, `jumlah`, `status`, `createdAt`, `updatedAt`) VALUES
('0d29c5a2-7b9c-4934-81b2-9e4b7102cd34', '8e1c5164-da29-45fa-ab83-093a765cfec3', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 50, 'diterima', '2025-02-26 22:22:00', '2025-02-26 22:22:27'),
('3502dc60-0416-464e-921e-c22a2d12571d', '00f3be4a-96e2-4d9e-9d8d-ad27017ff5a2', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 50, 'diterima', '2025-02-26 22:21:33', '2025-02-26 22:22:21'),
('6af387c2-75ee-44ac-a037-f07bb17302dc', '08d4c3df-09d3-46a2-b841-80d825309151', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 50, 'diterima', '2025-02-26 22:21:39', '2025-02-26 22:22:28'),
('8b85f997-545c-48fd-88d0-914c247634cf', '0dca2395-7e4e-437f-a46f-976d67691a43', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 50, 'diterima', '2025-02-26 22:21:47', '2025-02-26 22:22:25'),
('94663337-59ab-40de-bc8e-7d552219fb33', '102562db-14be-418b-b6c4-e4bd62c65549', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 50, 'diterima', '2025-02-26 22:21:54', '2025-02-26 22:22:26'),
('fd6e13c7-2c6e-4780-a592-5f6ede02b61b', '8f19b892-0979-4fde-a448-c02f26a3d078', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 50, 'diterima', '2025-02-26 22:22:07', '2025-02-26 22:22:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `JurnalAkuntansis`
--

CREATE TABLE `JurnalAkuntansis` (
  `uuid` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `cabanguuid` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `jenis_transaksi` enum('pembelian','penjualan') NOT NULL,
  `baranguuid` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `harga_satuan` decimal(15,2) DEFAULT NULL,
  `total_harga` decimal(15,2) DEFAULT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `debit` decimal(15,2) DEFAULT 0.00,
  `kredit` decimal(15,2) DEFAULT 0.00,
  `saldo` decimal(15,2) NOT NULL DEFAULT 0.00,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `JurnalAkuntansis`
--

INSERT INTO `JurnalAkuntansis` (`uuid`, `cabanguuid`, `jenis_transaksi`, `baranguuid`, `jumlah`, `harga_satuan`, `total_harga`, `deskripsi`, `debit`, `kredit`, `saldo`, `createdAt`, `updatedAt`) VALUES
('1a225a0d-8813-4e00-b879-f06b4859e215', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', '08d4c3df-09d3-46a2-b841-80d825309151', 1, 25000.00, 25000.00, 'Penjualan 08d4c3df-09d3-46a2-b841-80d825309151 (1 pcs)', 0.00, 25000.00, 25000.00, '2025-02-26 22:26:31', '2025-02-26 22:26:31'),
('40e1ebde-ed97-452a-aa07-ec7de7ef971c', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', '8e1c5164-da29-45fa-ab83-093a765cfec3', 1, 10000.00, 10000.00, 'Penjualan 8e1c5164-da29-45fa-ab83-093a765cfec3 (1 pcs)', 0.00, 10000.00, 10000.00, '2025-02-26 22:26:31', '2025-02-26 22:26:31'),
('5bc4dc7c-d440-4be2-b85c-630d69053f14', NULL, 'pembelian', '8e1c5164-da29-45fa-ab83-093a765cfec3', 1000, 3500.00, 3500000.00, 'Penambahan kelapa', 3500000.00, 0.00, 0.00, '2025-02-26 21:52:46', '2025-02-26 21:52:46'),
('61531582-a135-424d-8412-3735615cf14e', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, 5000.00, 5000.00, 'Penjualan 8f19b892-0979-4fde-a448-c02f26a3d078 (1 pcs)', 0.00, 5000.00, 5000.00, '2025-02-26 22:26:31', '2025-02-26 22:26:31'),
('8f5f1f11-392f-49fe-9a75-5893b26cd47e', NULL, 'pembelian', '0dca2395-7e4e-437f-a46f-976d67691a43', 1000, 5000.00, 5000000.00, 'Penambahan kentang', 5000000.00, 0.00, 0.00, '2025-02-26 21:51:54', '2025-02-26 21:51:54'),
('c9ad59b4-c765-4a84-b29c-82df01972c69', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', '00f3be4a-96e2-4d9e-9d8d-ad27017ff5a2', 1, 10000.00, 10000.00, 'Penjualan 00f3be4a-96e2-4d9e-9d8d-ad27017ff5a2 (1 pcs)', 0.00, 10000.00, 10000.00, '2025-02-26 22:26:31', '2025-02-26 22:26:31'),
('e4bf5a0c-05bb-418f-a828-242069d7de4e', NULL, 'pembelian', '8f19b892-0979-4fde-a448-c02f26a3d078', 1000, 2000.00, 2000000.00, 'Penambahan stock kopi', 2000000.00, 0.00, 0.00, '2025-02-26 21:53:16', '2025-02-26 21:53:16'),
('e9cef8a9-d85e-45c7-bd59-a2d3b1d2ed84', NULL, 'pembelian', '102562db-14be-418b-b6c4-e4bd62c65549', 1000, 3000.00, 3000000.00, 'Penambahan stock alpukat\n', 3000000.00, 0.00, 0.00, '2025-02-26 21:52:20', '2025-02-26 21:52:20'),
('eea77634-9e83-4205-a968-9aa65c4e6e21', NULL, 'pembelian', '08d4c3df-09d3-46a2-b841-80d825309151', 1000, 8000.00, 8000000.00, 'Penambahan steak\n', 8000000.00, 0.00, 0.00, '2025-02-26 21:51:18', '2025-02-26 21:51:18'),
('f1e8681e-9724-4996-980b-f971e1ee8889', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', '08d4c3df-09d3-46a2-b841-80d825309151', 1, 25000.00, 25000.00, 'Penjualan 08d4c3df-09d3-46a2-b841-80d825309151 (1 pcs)', 0.00, 25000.00, 25000.00, '2025-02-26 22:27:29', '2025-02-26 22:27:29'),
('f4adfd7c-7b6f-4cf1-93f1-38f608ba2c02', NULL, 'pembelian', '00f3be4a-96e2-4d9e-9d8d-ad27017ff5a2', 1000, 8000.00, 8000000.00, 'Pembelian Stock Roti pada gudang utama', 8000000.00, 0.00, 0.00, '2025-02-26 21:50:25', '2025-02-26 21:50:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoris`
--

CREATE TABLE `kategoris` (
  `uuid` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `namakategori` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kategoris`
--

INSERT INTO `kategoris` (`uuid`, `namakategori`, `createdAt`, `updatedAt`) VALUES
('72995123-0ac9-4dc7-a01d-5284cc6afd7d', 'Minuman ', '2024-12-16 07:55:08', '2025-02-26 21:20:22'),
('8dfc2e1d-31b1-47f0-a38d-96d771669128', 'Makanan', '2024-11-28 15:09:55', '2025-02-26 21:20:27'),
('eedfba9f-d995-42a2-b0df-a6fe7186dee3', 'Cemilan', '2025-02-26 21:20:17', '2025-02-26 21:20:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mutasiStoks`
--

CREATE TABLE `mutasiStoks` (
  `uuid` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `baranguuid` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `cabanguuid` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `jenis_mutasi` enum('masuk','keluar','transfer','penyesuaian') NOT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `mutasiStoks`
--

INSERT INTO `mutasiStoks` (`uuid`, `baranguuid`, `cabanguuid`, `jenis_mutasi`, `jumlah`, `keterangan`, `createdAt`, `updatedAt`) VALUES
('01b64628-dff6-4afd-94ef-cb0a79727e10', '00f3be4a-96e2-4d9e-9d8d-ad27017ff5a2', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 1, 'Transaksi ORDER-1740583591338', '2025-02-26 22:26:31', '2025-02-26 22:26:31'),
('087ffae6-3d75-49c8-abfb-8be8fba94084', '08d4c3df-09d3-46a2-b841-80d825309151', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 1, 'Transaksi ORDER-1740583649452', '2025-02-26 22:27:29', '2025-02-26 22:27:29'),
('1a03c0dd-cb6f-4c30-a40a-cbdc7a598033', '8e1c5164-da29-45fa-ab83-093a765cfec3', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 50, 'Distribusi stok ke cabang', '2025-02-26 22:22:00', '2025-02-26 22:22:00'),
('21ada6fa-02d2-40d6-bcca-ccf875ff10dd', '00f3be4a-96e2-4d9e-9d8d-ad27017ff5a2', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 50, 'Distribusi stok ke cabang', '2025-02-26 22:21:33', '2025-02-26 22:21:33'),
('28fc0492-1cad-4cb9-aeb2-bd508eeeaf79', '08d4c3df-09d3-46a2-b841-80d825309151', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 50, 'Distribusi stok ke cabang', '2025-02-26 22:21:39', '2025-02-26 22:21:39'),
('2fd9e908-3790-4e7b-a18a-17c782a53de1', '8f19b892-0979-4fde-a448-c02f26a3d078', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 1, 'Transaksi ORDER-1740583591338', '2025-02-26 22:26:31', '2025-02-26 22:26:31'),
('56622553-a2c9-4001-9a19-96c76b27e978', '08d4c3df-09d3-46a2-b841-80d825309151', NULL, 'masuk', 1000, 'Pembelian barang masuk ke gudang (Penambahan steak\n)', '2025-02-26 21:51:18', '2025-02-26 21:51:18'),
('64b0a2c3-168d-4cc0-8263-2d7abd96ffc4', '8e1c5164-da29-45fa-ab83-093a765cfec3', NULL, 'masuk', 1000, 'Pembelian barang masuk ke gudang (Penambahan kelapa)', '2025-02-26 21:52:46', '2025-02-26 21:52:46'),
('712ccc61-c00c-4c08-a27e-6a7f76b2ea49', '102562db-14be-418b-b6c4-e4bd62c65549', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 50, 'Distribusi stok ke cabang', '2025-02-26 22:21:54', '2025-02-26 22:21:54'),
('8e0705d2-6e6c-4103-986d-f736055f4b84', '08d4c3df-09d3-46a2-b841-80d825309151', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 1, 'Transaksi ORDER-1740583591338', '2025-02-26 22:26:31', '2025-02-26 22:26:31'),
('9dbba1a0-dede-4cc8-b2be-829d557b361c', '8f19b892-0979-4fde-a448-c02f26a3d078', NULL, 'masuk', 1000, 'Pembelian barang masuk ke gudang (Penambahan stock kopi)', '2025-02-26 21:53:16', '2025-02-26 21:53:16'),
('a6af6d7f-b63d-4be2-92e0-8c374d8a8177', '8f19b892-0979-4fde-a448-c02f26a3d078', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 50, 'Distribusi stok ke cabang', '2025-02-26 22:22:07', '2025-02-26 22:22:07'),
('b0be3038-9d13-46a2-b73f-b630a9a0507f', '0dca2395-7e4e-437f-a46f-976d67691a43', NULL, 'masuk', 1000, 'Pembelian barang masuk ke gudang (Penambahan kentang)', '2025-02-26 21:51:54', '2025-02-26 21:51:54'),
('be7678c5-ad8a-43f0-8a02-0c4fda37a1e2', '0dca2395-7e4e-437f-a46f-976d67691a43', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 50, 'Distribusi stok ke cabang', '2025-02-26 22:21:47', '2025-02-26 22:21:47'),
('c5ad457d-4f38-4e08-adb7-821d802c19d3', '102562db-14be-418b-b6c4-e4bd62c65549', NULL, 'masuk', 1000, 'Pembelian barang masuk ke gudang (Penambahan stock alpukat\n)', '2025-02-26 21:52:20', '2025-02-26 21:52:20'),
('d6af1831-8e3f-4238-8f35-2933501ea9f2', '00f3be4a-96e2-4d9e-9d8d-ad27017ff5a2', NULL, 'masuk', 1000, 'Pembelian barang masuk ke gudang (Pembelian Stock Roti pada gudang utama)', '2025-02-26 21:50:25', '2025-02-26 21:50:25'),
('e02e651e-aa27-4acc-a9bc-65fac59d1aa3', '8e1c5164-da29-45fa-ab83-093a765cfec3', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 1, 'Transaksi ORDER-1740583591338', '2025-02-26 22:26:31', '2025-02-26 22:26:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `Sessions`
--

CREATE TABLE `Sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `Sessions`
--

INSERT INTO `Sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('-2xTnriZQB6rE98SVu6oPMb6Dqv315wv', '2025-02-27 21:15:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 21:15:26', '2025-02-26 21:15:26'),
('-L68fTIZhOWFuJnJc1N-pCwq6-FjE5O4', '2025-02-27 14:14:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 14:14:49', '2025-02-26 14:14:51'),
('-m0V1HtuKLZdOWDaPiUyE1SeRvYqXwBJ', '2025-02-27 20:01:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 20:01:32', '2025-02-26 20:01:32'),
('1xV-qS7Jmq32bZSWCvOJBW81Sm8Kszjk', '2025-02-27 06:33:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 06:33:39', '2025-02-26 06:33:39'),
('3yy2-2M0v136z8C5UxWPiu9g1GkxCJn5', '2025-02-27 20:01:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 20:01:44', '2025-02-26 20:01:44'),
('4rFCN2r-gSzDJMqJMzE0fqfDKIgZukO9', '2025-02-27 22:26:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 22:26:05', '2025-02-26 22:26:05'),
('4SeVIAbaa_PIteKpq5_Bfuu5X-13_K9Z', '2025-02-27 21:40:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 21:40:27', '2025-02-26 21:40:27'),
('5Zipx0UOhSqlKfW8kFpcgvdAGpP7M2fm', '2025-02-27 22:26:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 22:26:05', '2025-02-26 22:26:05'),
('6CUQh6mIlwnX8PQop-yNpQVc9rPyQSo_', '2025-02-27 21:40:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 21:40:28', '2025-02-26 21:40:28'),
('86h5ZJNdSYjGMBL9yrU60nH4jbnzf98f', '2025-02-27 19:59:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 19:59:57', '2025-02-26 19:59:57'),
('8KIqnQZroAB0kH8ueezCeaNh1igmqXVj', '2025-02-27 14:14:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 14:14:47', '2025-02-26 14:14:52'),
('8zwyh8HSIb7s27MosQkHRqUtQH09J8P0', '2025-02-26 22:47:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-25 22:47:19', '2025-02-25 22:47:23'),
('99NdgQQNrEMSPEyun0HZc2TMbjdcSF1n', '2025-02-27 21:35:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 21:35:14', '2025-02-26 21:35:14'),
('9A1ceVjArwNz-lyZpLbvJQT4LWJ-oKAe', '2025-02-27 20:06:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 20:06:59', '2025-02-26 20:06:59'),
('a92orpsFqtU3QU8kYr63y1HIihzbcXsM', '2025-02-27 19:59:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 19:59:57', '2025-02-26 19:59:57'),
('AaH1MbZdrUDWxX_1aYnBJNVI9bipEITr', '2025-02-27 00:38:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 00:38:49', '2025-02-26 00:38:53'),
('aCu4LEvD1BRTyw-sK_AugefdjX2DeuXb', '2025-02-27 21:18:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 21:18:12', '2025-02-26 21:18:12'),
('bEerw_g3yYQ_aTRNdqlT2_sazdv49-ia', '2025-02-27 06:32:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 06:32:31', '2025-02-26 06:32:31'),
('bpN_rl6eUrypjTdw2z1sQbMeRR_CAxbZ', '2025-02-27 18:28:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 18:28:15', '2025-02-26 18:28:25'),
('bYmQZESNPaLlxe0sQafA5vJcDnU8LrD3', '2025-02-27 21:35:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 21:35:14', '2025-02-26 21:35:14'),
('cxU-DdbJvz4XwV1t_w7XyVfI6BxCARAk', '2025-02-27 22:15:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 22:15:02', '2025-02-26 22:15:02'),
('D6PnuoiAyH6q1N_PmUrhhbL510sbFDko', '2025-02-27 05:58:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 05:58:37', '2025-02-26 05:58:37'),
('DcemQCcNYY3PMxjUKRO0QoNmrH5SdwIo', '2025-02-27 21:15:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 21:15:42', '2025-02-26 21:15:42'),
('Dg-J01a9xhh7qKFwp9tl1GE0f_41MJoa', '2025-02-26 22:47:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-25 22:47:13', '2025-02-25 22:47:24'),
('dP6GJGVoVoSocIRIkj3wjYvrD09-503b', '2025-02-27 00:00:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 00:00:30', '2025-02-26 00:00:30'),
('EBQNk9rNZJxP392a1JOWZcfBQWRx7nST', '2025-02-27 12:47:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 12:47:44', '2025-02-26 12:47:44'),
('eoqRuyIDIYJBq_PFIt6C316dh5aLmZsa', '2025-02-27 21:35:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 21:35:14', '2025-02-26 21:35:14'),
('fEg3-Uj-iA2Z5jEXDhn0hQm0AnJja5Qc', '2025-02-27 21:14:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 21:14:44', '2025-02-26 21:14:44'),
('FtjrJJ4Wdm6KWFvwbc8XuZZbHMWtlmGG', '2025-02-27 21:14:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 21:14:52', '2025-02-26 21:14:52'),
('g-1UfCR4qbLuy2d71BrGrE82t_F_Hbch', '2025-02-27 11:25:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 11:25:16', '2025-02-26 11:25:16'),
('G6md8TPDTMz6glabMzWtVZHWkpCEjaMa', '2025-02-27 22:26:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 22:26:05', '2025-02-26 22:26:05'),
('Ga45eVUSVno49pGtvfwlarecdOMg4L5K', '2025-02-27 19:59:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 19:59:57', '2025-02-26 19:59:57'),
('gHc7w_U5zMxVygU7Gsw_55u0nx7PAqv5', '2025-02-26 22:42:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-25 22:42:10', '2025-02-25 22:42:14'),
('GJzLPwnOf5tBuThy3U75cBIlbTnqN6CZ', '2025-02-27 19:59:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 19:59:57', '2025-02-26 19:59:57'),
('GozRz7hsmyeeML_5o7RX8e8KunqZpnor', '2025-02-27 06:27:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 06:27:23', '2025-02-26 06:27:23'),
('HdQ9xVBfLlbf00Bmx5e5I8vJBndGhWEo', '2025-02-27 18:30:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 18:30:02', '2025-02-26 18:30:24'),
('hpiBkhkYRjKi5utAeuSA-0SkToEi0Lz0', '2025-02-27 22:42:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"},\"user\":{\"uuid\":\"5d93a890-e59c-4121-a370-7a2722e6c66a\",\"username\":\"admin\",\"role\":\"admin\",\"cabanguuid\":\"bb88b401-f02f-4ff9-8b7b-68826173eef7\"}}', '2025-02-26 22:37:59', '2025-02-26 22:42:41'),
('i5GshYH_oyewh6KYNrEp-R8BwGHAv815', '2025-02-27 21:35:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 21:35:14', '2025-02-26 21:35:14'),
('ivm6LNxz6ngZAC4TNXX7SbdFr1lH35Xr', '2025-02-26 23:24:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-25 23:24:28', '2025-02-25 23:24:28'),
('j6_yUfIrpL98YrEET3ZkkyUzlUnzLqQF', '2025-02-26 23:24:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-25 23:24:28', '2025-02-25 23:24:28'),
('J9vAIpm2_mduLbBEugzJeQiINEXEyfJO', '2025-02-27 00:00:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 00:00:33', '2025-02-26 00:00:33'),
('jgxtRldWi7PlWBmPrgYgdscql_CQqICA', '2025-02-27 20:01:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 20:01:07', '2025-02-26 20:01:07'),
('KJl8JZxRYOSbKLC1tn4pxv9_7or_2gKE', '2025-02-27 18:29:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 18:28:41', '2025-02-26 18:29:49'),
('klwHy6Z43tJRS9IDB1V__zlx_L3o8HNU', '2025-02-27 21:15:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 21:15:42', '2025-02-26 21:15:42'),
('KMRUB5axWWeijFY6nWEmKWOAONMcaO7U', '2025-02-27 18:29:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 18:29:11', '2025-02-26 18:29:43'),
('L1VetzE4mQ-IUMaOZJcNawXNxFxquyny', '2025-02-27 19:59:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 19:59:57', '2025-02-26 19:59:57'),
('L56VEnxUGBgb8RtBaIwGy7H-p-jMmB91', '2025-02-26 23:25:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-25 23:25:11', '2025-02-25 23:25:11'),
('l6Jb-HW4cJ-TRXH9u0XvlmF6HhhnKoJs', '2025-02-27 21:40:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 21:40:27', '2025-02-26 21:40:27'),
('lUQFQR6BJkS3ou65mKh84dIFEbBGrpq8', '2025-02-27 20:01:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 20:01:32', '2025-02-26 20:01:32'),
('LykpVSLzoGINGUMB5TPdOqlz3iBNZXoX', '2025-02-27 21:35:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 21:35:14', '2025-02-26 21:35:14'),
('m8x5KcJj6_I5OQlzv40xJOv2B8KU90nL', '2025-02-27 21:18:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 21:18:12', '2025-02-26 21:18:12'),
('mA5_ht0-leX1aHHTZLmh7UVrHsZeOlEz', '2025-02-27 21:40:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 21:40:28', '2025-02-26 21:40:28'),
('MBM_t8PgUpT2hM6aE7FgBZ1yYfsK5fKw', '2025-02-27 12:21:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 12:21:50', '2025-02-26 12:21:50'),
('MTLgPqf6SSb6SVDzyObqQN-fjHh4L7RP', '2025-02-27 12:20:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 12:20:51', '2025-02-26 12:20:51'),
('M_U-6VUz56ioMX7Q6eMQ3fB381vmI5UE', '2025-02-27 02:16:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 02:16:00', '2025-02-26 02:16:06'),
('NDp1YRMTeB3szeAHKgi-NpskUqV1b3BG', '2025-02-27 06:33:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 06:33:46', '2025-02-26 06:33:46'),
('nG-AvkKF3caMF_G3YOeqZyu9O8s9TKVK', '2025-02-27 21:13:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 21:13:34', '2025-02-26 21:13:34'),
('OS3fleRWhf1X8592O2qwsnCRuQanLGKB', '2025-02-27 20:06:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 20:06:37', '2025-02-26 20:06:37'),
('p-eyLmK_UJHiA_jH2f4Ob5wZwDb2fxn0', '2025-02-27 19:59:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 19:59:57', '2025-02-26 19:59:57'),
('PaBCQxWAsq8OpsmRrkaZBp87acR3xFLX', '2025-02-27 12:20:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 12:20:57', '2025-02-26 12:20:57'),
('pEnAMNL9SboJNzLGaJEPWBD433o1_plv', '2025-02-27 20:01:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 20:01:44', '2025-02-26 20:01:44'),
('pLFqaW16kRbh2rsSceQ9VShrouRPj9eH', '2025-02-27 21:14:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 21:14:44', '2025-02-26 21:14:44'),
('qnBP99nssKY1ResrRhUcpKBv0pOsVZ7y', '2025-02-27 02:16:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 02:16:04', '2025-02-26 02:16:05'),
('QsVXjRnlKohhcyn_6WtD0fzJ9wMk32uO', '2025-02-27 20:07:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 20:07:12', '2025-02-26 20:07:12'),
('r5DBu9onpqekqFgbawi8S_LDhFEtLOa7', '2025-02-27 18:28:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 18:27:36', '2025-02-26 18:28:28'),
('rFRzRHaPT0Lqj7pLMjZLb3wbaRiz8x5s', '2025-02-27 22:26:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 22:26:05', '2025-02-26 22:26:05'),
('R_MtzkRBVYukJFmMfdbgDa9MZZo42ydF', '2025-02-27 21:38:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"},\"user\":{\"uuid\":\"2e7d8911-36b1-4599-ada8-0249e1c8d3c4\",\"username\":\"superadmin\",\"role\":\"superadmin\",\"cabanguuid\":null}}', '2025-02-26 21:35:14', '2025-02-26 21:38:43'),
('S0hJt2YoxujP8jz-nB2V3kJejXVG_Xrq', '2025-02-26 23:04:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-25 23:04:43', '2025-02-25 23:04:43'),
('S5nNWaAMFhuTsVcXYw3FOvs1TQUBlDGu', '2025-02-27 05:58:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 05:58:47', '2025-02-26 05:58:47'),
('tANq7ytZH6KMKnXmXLbEkksiDrDM6jsx', '2025-02-27 21:18:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 21:18:12', '2025-02-26 21:18:12'),
('TO2MKOlj3ywHaQ2XENMPAGjHqoEambTU', '2025-02-27 22:24:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 22:24:14', '2025-02-26 22:24:15'),
('tSAoUrr7cR7OmrhZk3a5k3GHky44xS6w', '2025-02-26 22:42:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-25 22:42:12', '2025-02-25 22:42:13'),
('UCYo9elb24veKgNtwYy767OUdZhq314B', '2025-02-27 20:07:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 20:07:12', '2025-02-26 20:07:12'),
('Uic9WGYPXesXyAWnshG2D-T2I_4XMA2n', '2025-02-27 10:41:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 10:41:45', '2025-02-26 10:41:45'),
('UprezcEgAhngPiSuqJCTOoHPSwaWdLLY', '2025-02-27 22:26:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 22:26:05', '2025-02-26 22:26:05'),
('UqbDteInHr14ub8AyCrpjPR64w8mpEVa', '2025-02-27 21:35:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 21:35:14', '2025-02-26 21:35:14'),
('uQCcaJ39vpGM-1ccqWaHh6gp6c4buGLm', '2025-02-27 22:26:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 22:26:05', '2025-02-26 22:26:05'),
('uQiYKqgQJ-VTJ_mc9g4HhOPUtixcrkzS', '2025-02-27 06:27:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 06:27:28', '2025-02-26 06:27:28'),
('uR62U45KffKTXGFglCHPHZMc4sPBBPvb', '2025-02-27 21:15:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 21:15:16', '2025-02-26 21:15:16'),
('vOwCRIj7_7_W2EYpH5mRSNz70Gng-fVv', '2025-02-27 21:13:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 21:13:35', '2025-02-26 21:13:35'),
('vp8_NgK0zJefztIxsB5Akxe7PVGWfrJK', '2025-02-27 20:06:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 20:06:37', '2025-02-26 20:06:37'),
('VXfDVWNDtocZ1-InDnvCDNf5uSQ7jUwR', '2025-02-27 18:30:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 18:29:38', '2025-02-26 18:30:28'),
('wDplVVnC1noxyKw52ZHE7D01GZqZ63hm', '2025-02-27 00:00:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 00:00:28', '2025-02-26 00:00:28'),
('wPBs_vgvs_9mZQMr_XpvwnyK1V3qwWTm', '2025-02-27 21:50:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 21:50:15', '2025-02-26 21:50:16'),
('xCuLXC4WtKUdQSbtfogbUrzzQp1tyDdl', '2025-02-27 19:59:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 19:59:57', '2025-02-26 19:59:57'),
('xiAQMP2SxrP0zgwfgKYwAaRwzf-EfBbD', '2025-02-27 20:06:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 20:06:59', '2025-02-26 20:06:59'),
('XupnDaEpFt5IU1MFPFN2nA4InRPoK2-V', '2025-02-26 23:25:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-25 23:25:09', '2025-02-25 23:25:09'),
('XVlGT7vZP9rDxTn7QdZT5zCZSjqMCAcu', '2025-02-27 21:35:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 21:35:14', '2025-02-26 21:35:14'),
('yHo-YOjqpzKT3EhuLjrkIO_jMKbmSc-K', '2025-02-27 21:35:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 21:35:14', '2025-02-26 21:35:14'),
('z4xxjjdaje2vQSCICOSktVaWFl1cQ1UX', '2025-02-27 00:38:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 00:38:51', '2025-02-26 00:38:52'),
('ZjX9_-4kEEAUUyA5JV-gIvuXnBNWFMnt', '2025-02-27 00:00:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 00:00:39', '2025-02-26 00:00:39'),
('zNlmxMWUytD7xjy0A5Ou_a5YkyigjotI', '2025-02-27 20:01:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 20:01:07', '2025-02-26 20:01:07'),
('_aH9PJ6agJfFalQq3LGrZftWTX5shxZT', '2025-02-27 21:15:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 21:15:16', '2025-02-26 21:15:16'),
('_bDDp5NAQAJFxYWcPObMiTk2Y5eiQNa5', '2025-02-27 21:40:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 21:40:28', '2025-02-26 21:40:28'),
('_pCyZP4UF7ECp4DjBGBTuzYsjqbi4O6y', '2025-02-27 21:14:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-02-26 21:14:52', '2025-02-26 21:14:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `TransaksiDetails`
--

CREATE TABLE `TransaksiDetails` (
  `uuid` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `transaksiuuid` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `baranguuid` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `jumlahbarang` int(11) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `TransaksiDetails`
--

INSERT INTO `TransaksiDetails` (`uuid`, `transaksiuuid`, `baranguuid`, `jumlahbarang`, `harga`, `total`, `createdAt`, `updatedAt`) VALUES
('61b520b8-1638-4eb9-b023-95456ebca258', 'cee8bd8f-ce8c-4a69-8f93-1fb02639c7b8', '08d4c3df-09d3-46a2-b841-80d825309151', 1, 25000.00, 25000.00, '2025-02-26 22:27:29', '2025-02-26 22:27:29'),
('6331e694-b6f7-4591-8ed9-c7939f66c765', '4db87d04-f638-44f3-b67d-3a2515939b89', '8f19b892-0979-4fde-a448-c02f26a3d078', 1, 5000.00, 5000.00, '2025-02-26 22:26:31', '2025-02-26 22:26:31'),
('6b5161a3-4261-4e51-b485-6d7b8286993d', '4db87d04-f638-44f3-b67d-3a2515939b89', '08d4c3df-09d3-46a2-b841-80d825309151', 1, 25000.00, 25000.00, '2025-02-26 22:26:31', '2025-02-26 22:26:31'),
('b10b5424-5756-4d7c-89ab-d2a1929bfe50', '4db87d04-f638-44f3-b67d-3a2515939b89', '00f3be4a-96e2-4d9e-9d8d-ad27017ff5a2', 1, 10000.00, 10000.00, '2025-02-26 22:26:31', '2025-02-26 22:26:31'),
('d1a05842-4261-4810-a85a-c259eb2f7b7c', '4db87d04-f638-44f3-b67d-3a2515939b89', '8e1c5164-da29-45fa-ab83-093a765cfec3', 1, 10000.00, 10000.00, '2025-02-26 22:26:31', '2025-02-26 22:26:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksis`
--

CREATE TABLE `transaksis` (
  `uuid` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `barangUuid` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `order_id` varchar(255) NOT NULL,
  `totaljual` decimal(10,2) NOT NULL,
  `useruuid` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `tanggal` date NOT NULL,
  `status_pembayaran` enum('pending','settlement','capture','deny','cancel','expire') DEFAULT NULL,
  `pembayaran` enum('qris','cash') NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `transaksis`
--

INSERT INTO `transaksis` (`uuid`, `barangUuid`, `order_id`, `totaljual`, `useruuid`, `tanggal`, `status_pembayaran`, `pembayaran`, `createdAt`, `updatedAt`) VALUES
('4db87d04-f638-44f3-b67d-3a2515939b89', NULL, 'ORDER-1740583591338', 50000.00, '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-02-26', 'settlement', 'cash', '2025-02-26 22:26:31', '2025-02-26 22:26:31'),
('cee8bd8f-ce8c-4a69-8f93-1fb02639c7b8', NULL, 'ORDER-1740583649452', 25000.00, '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-02-26', 'pending', 'qris', '2025-02-26 22:27:29', '2025-02-26 22:27:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `uuid` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('superadmin','admin','kasir') NOT NULL,
  `cabanguuid` char(36) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`uuid`, `username`, `password`, `role`, `cabanguuid`, `createdAt`, `updatedAt`) VALUES
('1ad569cf-1a2c-40f6-94b5-5b97b8f3c832', 'pengelola', '$argon2id$v=19$m=65536,t=3,p=4$7iQg7TcbQx+zTjzoDPjhfQ$TM+SqNAw13QXJ0qrC5REUZ4gxlWWIcjkA2oDbWRwamc', 'kasir', '197fa82d-bd4b-4c6d-92f1-21b875cdd3d7', '2024-12-21 01:54:52', '2024-12-28 19:04:08'),
('2e7d8911-36b1-4599-ada8-0249e1c8d3c4', 'superadmin', '$argon2id$v=19$m=65536,t=3,p=4$UKjXBKCgDuduzKuhyVrdPg$ba5D3py3NEGyWAFwlClsvsHXmdhT3ChPZNOKBHU4BKI', 'superadmin', NULL, '2024-11-28 14:56:03', '2025-01-03 08:53:32'),
('4481955e-c1d3-4029-b15c-c5626c580733', 'admincabang2', '$argon2id$v=19$m=65536,t=3,p=4$IKfjJNilq1+bKLf3jy3a6A$HGqUUEJtWTSY5tet7GutPr8oZ1hIewh68Ah3RSGtELU', 'admin', '197fa82d-bd4b-4c6d-92f1-21b875cdd3d7', '2024-12-13 23:30:51', '2024-12-13 23:30:51'),
('5d93a890-e59c-4121-a370-7a2722e6c66a', 'admin', '$argon2id$v=19$m=65536,t=3,p=4$uracD2odlRq/1xjKdK0xwQ$CfGf1JuAbBz/6aUJQPfSuNIhSOzz7i3uOZM4dwg0dww', 'admin', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', '2024-11-28 15:05:56', '2024-11-28 15:05:56'),
('67a1852a-72ec-42a5-acc8-49f4a1bb10e0', 'hapuscabang', '$argon2id$v=19$m=65536,t=3,p=4$bvcHDdwURX82nMOVMqh/sw$JR6aX/QIr9HcglMvGU0yKAghWWSKrTAJNe+3qYBPUhs', 'kasir', '1aeceb73-2960-49b2-8eb4-c00139ddfe11', '2024-12-02 15:40:12', '2024-12-02 19:44:56'),
('7df0d418-742d-4c94-bc8a-d3c3b2b76fd0', 'admincabangtesthapus', '$argon2id$v=19$m=65536,t=3,p=4$0Cv8yOJUqrh+Q1KN4l80+A$jg6YEhT62HsbRW/v/VUxYZXFg1MhXRMLKQEJnCsrJoE', 'admin', '1aeceb73-2960-49b2-8eb4-c00139ddfe11', '2024-12-19 11:16:01', '2024-12-19 11:16:01'),
('94e861b3-2af5-447a-91f5-bb285c6f7a3b', 'kasir', '$argon2id$v=19$m=65536,t=3,p=4$QJ24EMumpIkKe/attRQ8BQ$V2jL0YJArFEXDyVCGh/KsS2BRWEPUi2sfxbD5brftUo', 'kasir', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', '2024-11-28 21:01:38', '2024-12-21 18:59:22'),
('c582e7f4-dd8d-49ee-a456-4b2b13bb3fbc', 'hapuscabang2', '$argon2id$v=19$m=65536,t=3,p=4$o0DmV3lcHuwIOoM7SYB7IA$TPxtSXFMtC1fkA0I55NUFGVzDkiy6lf+UUr6vtv1OTE', 'kasir', '1aeceb73-2960-49b2-8eb4-c00139ddfe11', '2024-12-02 15:42:04', '2025-02-22 02:53:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `Wearhouses`
--

CREATE TABLE `Wearhouses` (
  `uuid` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `baranguuid` char(36) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `stok_gudang` int(11) NOT NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `Wearhouses`
--

INSERT INTO `Wearhouses` (`uuid`, `baranguuid`, `stok_gudang`, `createdAt`, `updatedAt`) VALUES
('01ab4932-e9d0-4a77-b353-d2c195e5d2bf', '102562db-14be-418b-b6c4-e4bd62c65549', 950, '2025-02-26 21:52:20', '2025-02-26 22:21:54'),
('0a8ec978-a520-41a2-9d69-3e7e07c69693', '8f19b892-0979-4fde-a448-c02f26a3d078', 950, '2025-02-26 21:53:16', '2025-02-26 22:22:07'),
('0e391afb-9410-4dae-a141-9808723f3025', '08d4c3df-09d3-46a2-b841-80d825309151', 950, '2025-02-26 21:51:18', '2025-02-26 22:21:39'),
('142024a3-e753-4b3c-87cc-4d4f8f3df5fc', '00f3be4a-96e2-4d9e-9d8d-ad27017ff5a2', 950, '2025-02-26 21:50:25', '2025-02-26 22:21:33'),
('63746d77-fea5-4101-9044-bce9f06c7d36', '8e1c5164-da29-45fa-ab83-093a765cfec3', 950, '2025-02-26 21:52:46', '2025-02-26 22:22:00'),
('9dfcbefb-4f86-43b8-b41a-4bc12f00f857', '0dca2395-7e4e-437f-a46f-976d67691a43', 950, '2025-02-26 21:51:54', '2025-02-26 22:21:47');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `BarangCabangs`
--
ALTER TABLE `BarangCabangs`
  ADD PRIMARY KEY (`uuid`),
  ADD UNIQUE KEY `BarangCabangs_cabanguuid_baranguuid_unique` (`baranguuid`,`cabanguuid`),
  ADD KEY `cabanguuid` (`cabanguuid`);

--
-- Indeks untuk tabel `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `kategoriuuid` (`kategoriuuid`);

--
-- Indeks untuk tabel `cabangs`
--
ALTER TABLE `cabangs`
  ADD PRIMARY KEY (`uuid`);

--
-- Indeks untuk tabel `distribusiStoks`
--
ALTER TABLE `distribusiStoks`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `baranguuid` (`baranguuid`),
  ADD KEY `cabanguuid` (`cabanguuid`);

--
-- Indeks untuk tabel `JurnalAkuntansis`
--
ALTER TABLE `JurnalAkuntansis`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `cabanguuid` (`cabanguuid`),
  ADD KEY `baranguuid` (`baranguuid`);

--
-- Indeks untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`uuid`);

--
-- Indeks untuk tabel `mutasiStoks`
--
ALTER TABLE `mutasiStoks`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `baranguuid` (`baranguuid`),
  ADD KEY `cabanguuid` (`cabanguuid`);

--
-- Indeks untuk tabel `Sessions`
--
ALTER TABLE `Sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indeks untuk tabel `TransaksiDetails`
--
ALTER TABLE `TransaksiDetails`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `transaksiuuid` (`transaksiuuid`),
  ADD KEY `baranguuid` (`baranguuid`);

--
-- Indeks untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `barangUuid` (`barangUuid`),
  ADD KEY `useruuid` (`useruuid`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `cabanguuid` (`cabanguuid`);

--
-- Indeks untuk tabel `Wearhouses`
--
ALTER TABLE `Wearhouses`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `baranguuid` (`baranguuid`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `BarangCabangs`
--
ALTER TABLE `BarangCabangs`
  ADD CONSTRAINT `BarangCabangs_ibfk_1` FOREIGN KEY (`baranguuid`) REFERENCES `barangs` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `BarangCabangs_ibfk_2` FOREIGN KEY (`cabanguuid`) REFERENCES `cabangs` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `barangs`
--
ALTER TABLE `barangs`
  ADD CONSTRAINT `barangs_ibfk_1` FOREIGN KEY (`kategoriuuid`) REFERENCES `kategoris` (`uuid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `distribusiStoks`
--
ALTER TABLE `distribusiStoks`
  ADD CONSTRAINT `distribusiStoks_ibfk_1` FOREIGN KEY (`baranguuid`) REFERENCES `barangs` (`uuid`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `distribusiStoks_ibfk_2` FOREIGN KEY (`cabanguuid`) REFERENCES `cabangs` (`uuid`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `JurnalAkuntansis`
--
ALTER TABLE `JurnalAkuntansis`
  ADD CONSTRAINT `JurnalAkuntansis_ibfk_1` FOREIGN KEY (`cabanguuid`) REFERENCES `cabangs` (`uuid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `JurnalAkuntansis_ibfk_2` FOREIGN KEY (`baranguuid`) REFERENCES `barangs` (`uuid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `mutasiStoks`
--
ALTER TABLE `mutasiStoks`
  ADD CONSTRAINT `mutasiStoks_ibfk_1` FOREIGN KEY (`baranguuid`) REFERENCES `barangs` (`uuid`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `mutasiStoks_ibfk_2` FOREIGN KEY (`cabanguuid`) REFERENCES `cabangs` (`uuid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `TransaksiDetails`
--
ALTER TABLE `TransaksiDetails`
  ADD CONSTRAINT `TransaksiDetails_ibfk_1` FOREIGN KEY (`transaksiuuid`) REFERENCES `transaksis` (`uuid`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `TransaksiDetails_ibfk_2` FOREIGN KEY (`baranguuid`) REFERENCES `barangs` (`uuid`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksis`
--
ALTER TABLE `transaksis`
  ADD CONSTRAINT `transaksis_ibfk_1` FOREIGN KEY (`barangUuid`) REFERENCES `barangs` (`uuid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksis_ibfk_2` FOREIGN KEY (`useruuid`) REFERENCES `users` (`uuid`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`cabanguuid`) REFERENCES `cabangs` (`uuid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `Wearhouses`
--
ALTER TABLE `Wearhouses`
  ADD CONSTRAINT `Wearhouses_ibfk_1` FOREIGN KEY (`baranguuid`) REFERENCES `barangs` (`uuid`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
