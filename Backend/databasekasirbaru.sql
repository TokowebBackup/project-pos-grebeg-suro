-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2025 at 01:24 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `databasekasirbaru`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangcabangs`
--

CREATE TABLE `barangcabangs` (
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `baranguuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `cabanguuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barangcabangs`
--

INSERT INTO `barangcabangs` (`uuid`, `baranguuid`, `cabanguuid`, `createdAt`, `updatedAt`) VALUES
('204793d5-af8c-4af6-879d-9742ac7fb175', '8f19b892-0979-4fde-a448-c02f26a3d078', '197fa82d-bd4b-4c6d-92f1-21b875cdd3d7', '2024-12-23 14:40:58', '2024-12-23 14:40:58'),
('40dd4520-eead-416c-822d-55fd12a131f3', 'e535d34c-5fe5-4b60-8cf7-64b4aaf9a01c', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', '2025-01-02 13:02:52', '2025-01-02 13:02:52'),
('421cc25b-d4e0-47f0-b149-d5c1a7a218e0', '0dca2395-7e4e-437f-a46f-976d67691a43', '197fa82d-bd4b-4c6d-92f1-21b875cdd3d7', '2024-12-21 22:22:07', '2024-12-21 22:22:07'),
('4271d5aa-e8f8-4534-b888-d55353be642c', '65df3e31-1b4a-4227-9735-7e1fdcdca525', '197fa82d-bd4b-4c6d-92f1-21b875cdd3d7', '2024-12-24 20:03:40', '2024-12-24 20:03:40'),
('64f42c28-0677-4d83-905b-fa438b0a2b2b', '65df3e31-1b4a-4227-9735-7e1fdcdca525', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', '2024-12-24 20:04:05', '2024-12-24 20:04:05'),
('933f9db4-dedf-47f7-ab18-0344b6e8eba9', '0dca2395-7e4e-437f-a46f-976d67691a43', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', '2024-12-21 22:27:48', '2024-12-21 22:27:48'),
('bb3acd7d-c590-4fee-9332-c8fbf0d7cb77', '8f19b892-0979-4fde-a448-c02f26a3d078', '1aeceb73-2960-49b2-8eb4-c00139ddfe11', '2025-01-03 20:22:53', '2025-01-03 20:22:53'),
('bee25c47-6a49-4b4c-848d-9ecbddd30c94', '8f19b892-0979-4fde-a448-c02f26a3d078', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', '2024-12-23 14:43:29', '2024-12-23 14:43:29');

-- --------------------------------------------------------

--
-- Table structure for table `barangs`
--

CREATE TABLE `barangs` (
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `namabarang` varchar(255) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `kategoriuuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `foto` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barangs`
--

INSERT INTO `barangs` (`uuid`, `namabarang`, `harga`, `kategoriuuid`, `foto`, `createdAt`, `updatedAt`) VALUES
('08d4c3df-09d3-46a2-b841-80d825309151', 'test delete kategori', 120000.00, '72995123-0ac9-4dc7-a01d-5284cc6afd7d', 'test delete kategori-1735910652750.jpg', '2025-01-03 20:24:12', '2025-01-03 21:37:26'),
('0dca2395-7e4e-437f-a46f-976d67691a43', 'barang1', 70000.00, '72995123-0ac9-4dc7-a01d-5284cc6afd7d', 'barang3-1732801471920.png', '2024-11-28 20:42:28', '2024-12-16 14:40:47'),
('102562db-14be-418b-b6c4-e4bd62c65549', 'barang2', 10000.00, '8dfc2e1d-31b1-47f0-a38d-96d771669128', 'barang2-1732801448011.png', '2024-11-28 20:42:16', '2024-11-28 20:44:08'),
('38fc6bf9-85fb-49f8-9f43-17b4cb84f9be', 'barangbaruku', 50.00, '8dfc2e1d-31b1-47f0-a38d-96d771669128', 'barangbaruku-1732800897937.png', '2024-11-28 20:34:57', '2024-11-28 20:34:57'),
('65df3e31-1b4a-4227-9735-7e1fdcdca525', 'test', 1.00, '8dfc2e1d-31b1-47f0-a38d-96d771669128', 'test-1733988755234.png', '2024-12-12 14:32:35', '2024-12-12 14:32:35'),
('8e1c5164-da29-45fa-ab83-093a765cfec3', 'barang frontend', 100.00, '72995123-0ac9-4dc7-a01d-5284cc6afd7d', 'barang frontend-1733892936501.png', '2024-12-06 10:55:58', '2024-12-16 08:03:36'),
('8f19b892-0979-4fde-a448-c02f26a3d078', 'Es Kopi Hitam', 5000.00, '72995123-0ac9-4dc7-a01d-5284cc6afd7d', 'Es Kopi Hitam-1734335177111.jpeg', '2024-12-16 14:46:17', '2024-12-16 14:46:17'),
('e535d34c-5fe5-4b60-8cf7-64b4aaf9a01c', 'Barang Baru', 100000.00, '8dfc2e1d-31b1-47f0-a38d-96d771669128', 'Barang Baru-1733892947297.png', '2024-11-28 15:15:29', '2024-12-11 11:55:47'),
('f1026428-e81e-49b0-9ae8-741875ec4cb1', 'Produk Baru Test Frontend', 20000.00, '8dfc2e1d-31b1-47f0-a38d-96d771669128', 'Produk Baru Test Frontend-1733899377225.png', '2024-12-11 13:42:57', '2024-12-11 13:42:57');

-- --------------------------------------------------------

--
-- Table structure for table `cabangs`
--

CREATE TABLE `cabangs` (
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `namacabang` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `koordinat` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cabangs`
--

INSERT INTO `cabangs` (`uuid`, `namacabang`, `alamat`, `koordinat`, `createdAt`, `updatedAt`) VALUES
('197fa82d-bd4b-4c6d-92f1-21b875cdd3d7', 'cabang2', 'jl.baru', '-7.003011,110.411597', '2024-12-13 23:30:39', '2024-12-13 23:30:39'),
('1aeceb73-2960-49b2-8eb4-c00139ddfe11', 'testhapus', 'jl.baru', '-7.003011,110.411597', '2024-12-02 15:41:18', '2024-12-18 18:43:06'),
('bb88b401-f02f-4ff9-8b7b-68826173eef7', 'buatbaru', 'jl.baru', '-6.9842252,110.3654802', '2024-11-28 15:05:02', '2024-12-18 18:47:24'),
('e112b2e6-a41f-43d5-9a8d-e53d6af65649', 'Cabang baru 2', 'Jl.Ngaliyan', '-6.9854139,110.374197315', '2024-12-18 18:46:41', '2024-12-18 18:46:41');

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `namakategori` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`uuid`, `namakategori`, `createdAt`, `updatedAt`) VALUES
('72995123-0ac9-4dc7-a01d-5284cc6afd7d', 'Minuman update', '2024-12-16 07:55:08', '2025-01-03 21:34:22'),
('8dfc2e1d-31b1-47f0-a38d-96d771669128', 'kategori1', '2024-11-28 15:09:55', '2024-11-28 15:09:55');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('INdyup1SBLTRDeusGLslSOskwVAC2V7e', '2025-06-11 15:30:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-06-10 15:30:37', '2025-06-10 15:30:37'),
('jZ6tx-CQMiTpJhEtkiwLgPou-GLpQ1N9', '2025-06-11 15:30:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-06-10 15:30:37', '2025-06-10 15:30:37'),
('LvTAMZX8g2uyyU_-NObyXNqqVdLL9QCW', '2025-06-11 14:41:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-06-10 14:41:54', '2025-06-10 14:41:54'),
('SIOhBC4s300woPT-e_G4ORg__v4VEJqz', '2025-06-11 18:08:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"},\"user\":{\"uuid\":\"2e7d8911-36b1-4599-ada8-0249e1c8d3c4\",\"username\":\"superadmin\",\"role\":\"superadmin\",\"cabanguuid\":null}}', '2025-06-10 17:15:00', '2025-06-10 18:08:00'),
('sVH6oNjegdsX4yBH4KbK_xsu-Tcg-_5p', '2025-06-11 15:13:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-06-10 14:41:16', '2025-06-10 15:13:22');

-- --------------------------------------------------------

--
-- Table structure for table `transaksidetails`
--

CREATE TABLE `transaksidetails` (
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `transaksiuuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `baranguuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `jumlahbarang` int(11) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksidetails`
--

INSERT INTO `transaksidetails` (`uuid`, `transaksiuuid`, `baranguuid`, `jumlahbarang`, `harga`, `total`, `createdAt`, `updatedAt`) VALUES
('75e95d37-4fee-466e-a2de-3b3d5da7a81d', '1ae9a9f4-d0c5-4af8-bc42-957b63101457', '8f19b892-0979-4fde-a448-c02f26a3d078', 2, 5000.00, 10000.00, '2025-06-10 16:33:34', '2025-06-10 16:33:34'),
('883702fb-4325-4297-81aa-bdbd70fdad08', 'f56600f4-f7c5-4716-baa6-d3417e40bdb5', '0dca2395-7e4e-437f-a46f-976d67691a43', 3, 70000.00, 210000.00, '2025-06-10 16:34:53', '2025-06-10 16:34:53'),
('acaca37a-2d2f-409f-93d9-2331d28f1237', '2f98d96a-4184-44ae-ada7-f37a56c30289', 'e535d34c-5fe5-4b60-8cf7-64b4aaf9a01c', 2, 100000.00, 200000.00, '2025-06-10 17:02:54', '2025-06-10 17:02:54');

-- --------------------------------------------------------

--
-- Table structure for table `transaksis`
--

CREATE TABLE `transaksis` (
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `barangUuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `order_id` varchar(255) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_phone` varchar(255) DEFAULT NULL,
  `totaljual` decimal(10,2) NOT NULL,
  `useruuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tanggal` date NOT NULL,
  `status_pembayaran` enum('pending','settlement','capture','deny','cancel','expire') DEFAULT NULL,
  `pembayaran` enum('qris','cash') NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksis`
--

INSERT INTO `transaksis` (`uuid`, `barangUuid`, `order_id`, `customer_name`, `customer_phone`, `totaljual`, `useruuid`, `tanggal`, `status_pembayaran`, `pembayaran`, `createdAt`, `updatedAt`) VALUES
('1ae9a9f4-d0c5-4af8-bc42-957b63101457', NULL, 'ORDER-1749548014539', 'puji', '08123821381', 10000.00, '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-06-10', 'settlement', 'cash', '2025-06-10 16:33:34', '2025-06-10 16:33:34'),
('2f98d96a-4184-44ae-ada7-f37a56c30289', NULL, 'ORDER-1749549774649', 'Sudimara', '0897727321', 200000.00, '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-06-10', 'settlement', 'cash', '2025-06-10 17:02:54', '2025-06-10 17:02:54'),
('f56600f4-f7c5-4716-baa6-d3417e40bdb5', NULL, 'ORDER-1749548093374', 'Dadang Sutena', '0866236235', 210000.00, '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-06-10', 'settlement', 'cash', '2025-06-10 16:34:53', '2025-06-10 16:34:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('superadmin','admin','kasir') NOT NULL,
  `cabanguuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uuid`, `username`, `password`, `role`, `cabanguuid`, `createdAt`, `updatedAt`) VALUES
('1ad569cf-1a2c-40f6-94b5-5b97b8f3c832', 'pengelola', '$argon2id$v=19$m=65536,t=3,p=4$7iQg7TcbQx+zTjzoDPjhfQ$TM+SqNAw13QXJ0qrC5REUZ4gxlWWIcjkA2oDbWRwamc', 'kasir', '197fa82d-bd4b-4c6d-92f1-21b875cdd3d7', '2024-12-21 01:54:52', '2024-12-28 19:04:08'),
('2e7d8911-36b1-4599-ada8-0249e1c8d3c4', 'superadmin', '$argon2id$v=19$m=65536,t=3,p=4$UKjXBKCgDuduzKuhyVrdPg$ba5D3py3NEGyWAFwlClsvsHXmdhT3ChPZNOKBHU4BKI', 'superadmin', NULL, '2024-11-28 14:56:03', '2025-01-03 08:53:32'),
('4481955e-c1d3-4029-b15c-c5626c580733', 'admincabang2', '$argon2id$v=19$m=65536,t=3,p=4$IKfjJNilq1+bKLf3jy3a6A$HGqUUEJtWTSY5tet7GutPr8oZ1hIewh68Ah3RSGtELU', 'admin', '197fa82d-bd4b-4c6d-92f1-21b875cdd3d7', '2024-12-13 23:30:51', '2024-12-13 23:30:51'),
('5d93a890-e59c-4121-a370-7a2722e6c66a', 'admin', '$argon2id$v=19$m=65536,t=3,p=4$uracD2odlRq/1xjKdK0xwQ$CfGf1JuAbBz/6aUJQPfSuNIhSOzz7i3uOZM4dwg0dww', 'admin', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', '2024-11-28 15:05:56', '2024-11-28 15:05:56'),
('67a1852a-72ec-42a5-acc8-49f4a1bb10e0', 'hapuscabang', '$argon2id$v=19$m=65536,t=3,p=4$bvcHDdwURX82nMOVMqh/sw$JR6aX/QIr9HcglMvGU0yKAghWWSKrTAJNe+3qYBPUhs', 'kasir', '1aeceb73-2960-49b2-8eb4-c00139ddfe11', '2024-12-02 15:40:12', '2024-12-02 19:44:56'),
('7df0d418-742d-4c94-bc8a-d3c3b2b76fd0', 'admincabangtesthapus', '$argon2id$v=19$m=65536,t=3,p=4$0Cv8yOJUqrh+Q1KN4l80+A$jg6YEhT62HsbRW/v/VUxYZXFg1MhXRMLKQEJnCsrJoE', 'admin', '1aeceb73-2960-49b2-8eb4-c00139ddfe11', '2024-12-19 11:16:01', '2024-12-19 11:16:01'),
('94e861b3-2af5-447a-91f5-bb285c6f7a3b', 'kasir', '$argon2id$v=19$m=65536,t=3,p=4$QJ24EMumpIkKe/attRQ8BQ$V2jL0YJArFEXDyVCGh/KsS2BRWEPUi2sfxbD5brftUo', 'kasir', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', '2024-11-28 21:01:38', '2024-12-21 18:59:22'),
('c582e7f4-dd8d-49ee-a456-4b2b13bb3fbc', 'hapuscabang', '$argon2id$v=19$m=65536,t=3,p=4$o0DmV3lcHuwIOoM7SYB7IA$TPxtSXFMtC1fkA0I55NUFGVzDkiy6lf+UUr6vtv1OTE', 'kasir', '1aeceb73-2960-49b2-8eb4-c00139ddfe11', '2024-12-02 15:42:04', '2024-12-02 15:42:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangcabangs`
--
ALTER TABLE `barangcabangs`
  ADD PRIMARY KEY (`uuid`),
  ADD UNIQUE KEY `BarangCabangs_cabanguuid_baranguuid_unique` (`baranguuid`,`cabanguuid`),
  ADD KEY `cabanguuid` (`cabanguuid`);

--
-- Indexes for table `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `kategoriuuid` (`kategoriuuid`);

--
-- Indexes for table `cabangs`
--
ALTER TABLE `cabangs`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `transaksidetails`
--
ALTER TABLE `transaksidetails`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `transaksiuuid` (`transaksiuuid`),
  ADD KEY `baranguuid` (`baranguuid`);

--
-- Indexes for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `barangUuid` (`barangUuid`),
  ADD KEY `useruuid` (`useruuid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `cabanguuid` (`cabanguuid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barangcabangs`
--
ALTER TABLE `barangcabangs`
  ADD CONSTRAINT `barangcabangs_ibfk_1` FOREIGN KEY (`baranguuid`) REFERENCES `barangs` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `barangcabangs_ibfk_2` FOREIGN KEY (`cabanguuid`) REFERENCES `cabangs` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `barangs`
--
ALTER TABLE `barangs`
  ADD CONSTRAINT `barangs_ibfk_1` FOREIGN KEY (`kategoriuuid`) REFERENCES `kategoris` (`uuid`) ON UPDATE CASCADE;

--
-- Constraints for table `transaksidetails`
--
ALTER TABLE `transaksidetails`
  ADD CONSTRAINT `transaksidetails_ibfk_1` FOREIGN KEY (`transaksiuuid`) REFERENCES `transaksis` (`uuid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksidetails_ibfk_2` FOREIGN KEY (`baranguuid`) REFERENCES `barangs` (`uuid`) ON UPDATE CASCADE;

--
-- Constraints for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD CONSTRAINT `transaksis_ibfk_1` FOREIGN KEY (`barangUuid`) REFERENCES `barangs` (`uuid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksis_ibfk_2` FOREIGN KEY (`useruuid`) REFERENCES `users` (`uuid`) ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`cabanguuid`) REFERENCES `cabangs` (`uuid`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
