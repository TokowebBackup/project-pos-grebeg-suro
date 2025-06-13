-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2025 at 12:53 PM
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
  `stok` int(11) DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barangcabangs`
--

INSERT INTO `barangcabangs` (`uuid`, `baranguuid`, `cabanguuid`, `stok`, `createdAt`, `updatedAt`) VALUES
('0b9afe6d-57ec-46d3-946e-2872bae29829', 'eaee7c5d-347c-45be-b522-2df0dbd3b1e7', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 46, '2025-03-29 00:30:26', '2025-04-02 02:55:59'),
('0de73a7c-c8f6-4fe6-8112-8da2c9e64a13', '430469b5-c520-4a7f-a675-f4ec6f90fa94', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 87, '2025-03-22 15:53:13', '2025-06-13 16:45:15'),
('10e999ec-8064-4e03-ae24-0d0a92f42fba', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 69, '2025-03-22 15:53:11', '2025-06-13 16:50:29'),
('3147bab3-8f44-4cf1-ae02-38b1b107898e', 'c02c96c2-d7b7-418a-b5ed-b15a99315ae8', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 71, '2025-03-22 15:53:12', '2025-06-13 17:29:36'),
('39694c5c-4a75-46c7-8128-ad73b0d760e7', '6d17c2fb-4e32-4d65-bb67-a71984dc5e09', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 46, '2025-03-17 10:41:05', '2025-06-13 17:29:36'),
('3e365357-7d44-4763-ac10-f189f597cfc5', 'ba37ba02-9673-47f9-b835-403616ccf9cb', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 192, '2025-03-24 14:36:48', '2025-03-29 00:48:41'),
('9747c966-8fc7-4b47-8d28-ec8883d757b4', 'dda1c016-6dcb-4e1f-a5dc-e3611e46d95d', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 95, '2025-03-22 15:53:10', '2025-06-13 16:41:26'),
('b5633694-7004-4de5-81bb-bbea3f27ccba', 'c02c96c2-d7b7-418a-b5ed-b15a99315ae8', '5fcd367d-b0ff-4871-872c-55752257d45f', 0, '2025-04-01 09:11:40', '2025-04-01 09:11:40'),
('e5eca974-7057-49ff-b758-ca8f24f945eb', '430469b5-c520-4a7f-a675-f4ec6f90fa94', '5fcd367d-b0ff-4871-872c-55752257d45f', 0, '2025-04-01 09:15:09', '2025-04-01 09:15:09');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barangs`
--

INSERT INTO `barangs` (`uuid`, `namabarang`, `harga`, `kategoriuuid`, `foto`, `createdAt`, `updatedAt`) VALUES
('430469b5-c520-4a7f-a675-f4ec6f90fa94', 'Roti Bakar', 10000.00, 'accddd95-6c5c-4779-9f78-4e8298bf7045', 'Roti Bakar-1743071912123.jpeg', '2025-03-22 15:50:34', '2025-03-27 17:38:32'),
('6d17c2fb-4e32-4d65-bb67-a71984dc5e09', 'steak', 15000.00, 'e20474e6-b287-408b-85cb-88c4fa6030b9', 'steak-1743071925877.jpeg', '2025-03-17 09:55:43', '2025-03-27 17:38:45'),
('ba37ba02-9673-47f9-b835-403616ccf9cb', 'makanan qr', 1.00, 'e20474e6-b287-408b-85cb-88c4fa6030b9', 'makanan qr-1743071936941.jpg', '2025-03-24 14:36:38', '2025-03-27 17:38:56'),
('c02c96c2-d7b7-418a-b5ed-b15a99315ae8', 'Es Soda Gembira', 10000.00, '8a04d624-0f63-4f92-9131-8497ae2bf295', 'Es Soda Gembira-1743071945540.jpeg', '2025-03-22 15:50:02', '2025-03-27 17:39:05'),
('ce8aa898-3f6a-4102-8e91-099acfa0fcae', 'Kentang goreng', 10000.00, 'accddd95-6c5c-4779-9f78-4e8298bf7045', 'Kentang goreng-1743071959946.jpeg', '2025-03-22 15:50:17', '2025-03-27 17:39:19'),
('dda1c016-6dcb-4e1f-a5dc-e3611e46d95d', 'Jus alpukat', 10000.00, '8a04d624-0f63-4f92-9131-8497ae2bf295', 'Jus alpukat-1743071970388.jpeg', '2025-03-22 15:49:44', '2025-03-27 17:39:30'),
('eaee7c5d-347c-45be-b522-2df0dbd3b1e7', 'Nasi Uduk', 1.00, 'e20474e6-b287-408b-85cb-88c4fa6030b9', 'Nasi Uduk-1743182881850.jpg', '2025-03-29 00:28:01', '2025-03-29 00:28:01');

-- --------------------------------------------------------

--
-- Table structure for table `cabangs`
--

CREATE TABLE `cabangs` (
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `namacabang` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `koordinat` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cabangs`
--

INSERT INTO `cabangs` (`uuid`, `namacabang`, `alamat`, `koordinat`, `createdAt`, `updatedAt`) VALUES
('5fcd367d-b0ff-4871-872c-55752257d45f', 'Perawang', 'Jl.Cepiring', '-6.9842252,110.3654802', '2025-03-24 20:45:59', '2025-03-26 23:33:11'),
('bb88b401-f02f-4ff9-8b7b-68826173eef7', 'Semarang-Pedurungan', 'Indonesia', '-6.9842252,110.3654802', '2024-11-28 15:05:02', '2025-03-27 17:34:20');

-- --------------------------------------------------------

--
-- Table structure for table `distribusistoks`
--

CREATE TABLE `distribusistoks` (
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `baranguuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `cabanguuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `jumlah` int(11) NOT NULL,
  `status` enum('pending','dikirim','diterima') DEFAULT 'pending',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `distribusistoks`
--

INSERT INTO `distribusistoks` (`uuid`, `baranguuid`, `cabanguuid`, `jumlah`, `status`, `createdAt`, `updatedAt`) VALUES
('06b8a4c2-e9a5-423d-a0f7-c439e6930cc9', '6d17c2fb-4e32-4d65-bb67-a71984dc5e09', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 50, 'diterima', '2025-03-27 17:41:30', '2025-03-27 17:43:55'),
('67fa718c-9a89-49f6-b78c-072706c7544f', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 50, 'diterima', '2025-03-27 17:41:48', '2025-03-27 17:43:35'),
('71593434-c861-4541-8f38-59bb698be29f', '430469b5-c520-4a7f-a675-f4ec6f90fa94', '5fcd367d-b0ff-4871-872c-55752257d45f', 9, 'pending', '2025-04-01 09:15:25', '2025-04-01 09:15:25'),
('8bf32af6-8e26-49d3-bbe0-ab72954100c7', 'dda1c016-6dcb-4e1f-a5dc-e3611e46d95d', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 50, 'diterima', '2025-03-27 17:41:54', '2025-03-27 17:44:01'),
('a2e50675-e5f2-4501-b9c3-1067f6d9dde5', '430469b5-c520-4a7f-a675-f4ec6f90fa94', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 50, 'diterima', '2025-03-27 17:41:24', '2025-03-27 17:43:56'),
('b2bd76d6-40c4-47eb-b779-a9d14343c125', 'eaee7c5d-347c-45be-b522-2df0dbd3b1e7', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 50, 'diterima', '2025-03-29 00:29:45', '2025-03-29 00:30:26'),
('f9880f9f-fdf8-40e3-8019-de51e4f380d5', 'c02c96c2-d7b7-418a-b5ed-b15a99315ae8', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 50, 'diterima', '2025-03-27 17:41:42', '2025-03-27 17:43:44'),
('fb15b4f2-56e4-4d36-83d4-1a66892628f2', 'ba37ba02-9673-47f9-b835-403616ccf9cb', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 100, 'diterima', '2025-03-27 17:41:36', '2025-03-27 17:43:52');

-- --------------------------------------------------------

--
-- Table structure for table `jurnalakuntansis`
--

CREATE TABLE `jurnalakuntansis` (
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `cabanguuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `jenis_transaksi` enum('pembelian','penjualan') NOT NULL,
  `baranguuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `harga_satuan` decimal(15,2) DEFAULT NULL,
  `total_harga` decimal(15,2) DEFAULT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `debit` decimal(15,2) DEFAULT 0.00,
  `kredit` decimal(15,2) DEFAULT 0.00,
  `saldo` decimal(15,2) NOT NULL DEFAULT 0.00,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jurnalakuntansis`
--

INSERT INTO `jurnalakuntansis` (`uuid`, `cabanguuid`, `jenis_transaksi`, `baranguuid`, `jumlah`, `harga_satuan`, `total_harga`, `deskripsi`, `debit`, `kredit`, `saldo`, `createdAt`, `updatedAt`) VALUES
('01981de2-e180-47b5-bfb9-10dc3fe02c69', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', '6d17c2fb-4e32-4d65-bb67-a71984dc5e09', 4, 15000.00, 60000.00, 'Penjualan 6d17c2fb-4e32-4d65-bb67-a71984dc5e09 (4 pcs)', 0.00, 60000.00, 60000.00, '2025-06-13 16:41:27', '2025-06-13 16:41:27'),
('0a2f6f63-29f3-4f77-8404-f1d812e8190c', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', 'eaee7c5d-347c-45be-b522-2df0dbd3b1e7', 1, 1.00, 1.00, 'Penjualan eaee7c5d-347c-45be-b522-2df0dbd3b1e7 (1 pcs)', 0.00, 1.00, 1.00, '2025-03-29 10:40:13', '2025-03-29 10:40:13'),
('0a7b21bb-7dbd-4812-b6f1-376a4f2f812e', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', '6d17c2fb-4e32-4d65-bb67-a71984dc5e09', 4, 15000.00, 60000.00, 'Penjualan 6d17c2fb-4e32-4d65-bb67-a71984dc5e09 (4 pcs)', 0.00, 60000.00, 60000.00, '2025-06-13 16:31:56', '2025-06-13 16:31:56'),
('0cad97a0-d9c5-4ccc-8344-bdd306fd90ad', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', 'c02c96c2-d7b7-418a-b5ed-b15a99315ae8', 1, 10000.00, 10000.00, 'Penjualan c02c96c2-d7b7-418a-b5ed-b15a99315ae8 (1 pcs)', 0.00, 10000.00, 10000.00, '2025-03-29 12:57:50', '2025-03-29 12:57:50'),
('0ee043ba-be92-4752-ae8a-b8708f674dc5', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', 2, 10000.00, 20000.00, 'Penjualan ce8aa898-3f6a-4102-8e91-099acfa0fcae (2 pcs)', 0.00, 20000.00, 20000.00, '2025-06-13 16:41:27', '2025-06-13 16:41:27'),
('0fff7b40-d96b-41f9-81f4-d5de1ced7aee', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', 'eaee7c5d-347c-45be-b522-2df0dbd3b1e7', 1, 1.00, 1.00, 'Penjualan Nasi Uduk (1 pcs) dari Meja meja vvip2', 0.00, 1.00, 1.00, '2025-04-02 02:55:59', '2025-04-02 02:55:59'),
('16a2c0b9-dd93-49ca-b71e-2f640bbebc38', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', '430469b5-c520-4a7f-a675-f4ec6f90fa94', 1, 10000.00, 10000.00, 'Penjualan 430469b5-c520-4a7f-a675-f4ec6f90fa94 (1 pcs)', 0.00, 10000.00, 10000.00, '2025-03-29 10:40:13', '2025-03-29 10:40:13'),
('17642ee0-86c6-4827-916e-a845703bf773', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', '430469b5-c520-4a7f-a675-f4ec6f90fa94', 1, 10000.00, 10000.00, 'Penjualan 430469b5-c520-4a7f-a675-f4ec6f90fa94 (1 pcs)', 0.00, 10000.00, 10000.00, '2025-06-13 16:45:15', '2025-06-13 16:45:15'),
('1d73d493-ba81-47e1-ac57-9c050e3e4a90', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', '430469b5-c520-4a7f-a675-f4ec6f90fa94', 1, 10000.00, 10000.00, 'Penjualan 430469b5-c520-4a7f-a675-f4ec6f90fa94 (1 pcs)', 0.00, 10000.00, 10000.00, '2025-06-13 16:31:56', '2025-06-13 16:31:56'),
('1f8bb68c-13bf-4010-a2ef-5e95f64da56f', NULL, 'pembelian', '430469b5-c520-4a7f-a675-f4ec6f90fa94', 100, 3000.00, 300000.00, '', 300000.00, 0.00, 0.00, '2025-03-27 17:39:56', '2025-03-27 17:39:56'),
('291b2130-2d4c-45a6-aac4-daeff4debddd', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', 'dda1c016-6dcb-4e1f-a5dc-e3611e46d95d', 1, 10000.00, 10000.00, 'Penjualan dda1c016-6dcb-4e1f-a5dc-e3611e46d95d (1 pcs)', 0.00, 10000.00, 10000.00, '2025-06-13 16:41:27', '2025-06-13 16:41:27'),
('32213aa2-d8d5-4c2d-809b-516aa65ac3c6', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', '6d17c2fb-4e32-4d65-bb67-a71984dc5e09', 4, 15000.00, 60000.00, 'Penjualan 6d17c2fb-4e32-4d65-bb67-a71984dc5e09 (4 pcs)', 0.00, 60000.00, 60000.00, '2025-06-13 16:16:38', '2025-06-13 16:16:38'),
('373c982d-3342-458c-ab3f-5bf744b43d27', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', 5, 10000.00, 50000.00, 'Penjualan ce8aa898-3f6a-4102-8e91-099acfa0fcae (5 pcs)', 0.00, 50000.00, 50000.00, '2025-06-13 15:36:24', '2025-06-13 15:36:24'),
('39bc8524-22c5-4d6e-9313-50a37827b2d9', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', 2, 10000.00, 20000.00, 'Penjualan ce8aa898-3f6a-4102-8e91-099acfa0fcae (2 pcs)', 0.00, 20000.00, 20000.00, '2025-06-13 16:37:09', '2025-06-13 16:37:09'),
('3a2a0b30-8a31-43ee-8ac8-f4adc13c0499', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', 'c02c96c2-d7b7-418a-b5ed-b15a99315ae8', 1, 10000.00, 10000.00, 'Penjualan c02c96c2-d7b7-418a-b5ed-b15a99315ae8 (1 pcs)', 0.00, 10000.00, 10000.00, '2025-06-13 16:45:15', '2025-06-13 16:45:15'),
('3a6ff175-5083-4b25-8ff0-1fbe287fb023', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', '6d17c2fb-4e32-4d65-bb67-a71984dc5e09', 5, 15000.00, 75000.00, 'Penjualan 6d17c2fb-4e32-4d65-bb67-a71984dc5e09 (5 pcs)', 0.00, 75000.00, 75000.00, '2025-06-13 16:50:29', '2025-06-13 16:50:29'),
('3d30ccd5-c4c9-4c9f-a563-2a6a5e83e005', NULL, 'pembelian', NULL, 100, 5000.00, 500000.00, '', 500000.00, 0.00, 0.00, '2025-03-27 17:39:48', '2025-03-27 17:39:48'),
('42452cc7-6d37-4f40-a1a4-8789dfaa705e', NULL, 'pembelian', 'eaee7c5d-347c-45be-b522-2df0dbd3b1e7', 100, 1.00, 100.00, '', 100.00, 0.00, 0.00, '2025-03-29 00:29:16', '2025-03-29 00:29:16'),
('4264a452-11e9-4146-8b3a-68b153805d68', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', 1, 10000.00, 10000.00, 'Penjualan ce8aa898-3f6a-4102-8e91-099acfa0fcae (1 pcs)', 0.00, 10000.00, 10000.00, '2025-06-13 15:31:37', '2025-06-13 15:31:37'),
('48c146e7-036e-43e2-8ce5-b1e05b75f183', NULL, 'pembelian', '6d17c2fb-4e32-4d65-bb67-a71984dc5e09', 2, 130000.00, 260000.00, 'steak', 260000.00, 0.00, 0.00, '2025-04-01 09:20:48', '2025-04-01 09:20:48'),
('4b49fb47-f19b-4682-ab84-33fe57758b79', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', 'ba37ba02-9673-47f9-b835-403616ccf9cb', 1, 1.00, 1.00, 'Penjualan makanan qr (1 pcs) dari Meja meja vvip2', 0.00, 1.00, 1.00, '2025-03-29 00:48:41', '2025-03-29 00:48:41'),
('4e398598-91ad-43b1-be13-d393860f88fc', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', 2, 10000.00, 20000.00, 'Penjualan ce8aa898-3f6a-4102-8e91-099acfa0fcae (2 pcs)', 0.00, 20000.00, 20000.00, '2025-03-28 03:45:02', '2025-03-28 03:45:02'),
('58a745be-177b-4f8b-af95-d9997275f693', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', 'eaee7c5d-347c-45be-b522-2df0dbd3b1e7', 1, 1.00, 1.00, 'Penjualan Nasi Uduk (1 pcs) dari Meja meja vvip2', 0.00, 1.00, 1.00, '2025-03-29 00:48:41', '2025-03-29 00:48:41'),
('5faa71e9-704a-46f3-a8f2-3ec625a2ed3d', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', '6d17c2fb-4e32-4d65-bb67-a71984dc5e09', 2, 15000.00, 30000.00, 'Penjualan 6d17c2fb-4e32-4d65-bb67-a71984dc5e09 (2 pcs)', 0.00, 30000.00, 30000.00, '2025-06-13 16:13:58', '2025-06-13 16:13:58'),
('79f68d80-48d7-4e1e-81c7-b48de06d38db', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', 'c02c96c2-d7b7-418a-b5ed-b15a99315ae8', 2, 10000.00, 20000.00, 'Penjualan c02c96c2-d7b7-418a-b5ed-b15a99315ae8 (2 pcs)', 0.00, 20000.00, 20000.00, '2025-06-13 16:22:09', '2025-06-13 16:22:09'),
('7a348785-9d4f-4a57-9b1e-bbcf8987cabd', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', '430469b5-c520-4a7f-a675-f4ec6f90fa94', 1, 10000.00, 10000.00, 'Penjualan 430469b5-c520-4a7f-a675-f4ec6f90fa94 (1 pcs)', 0.00, 10000.00, 10000.00, '2025-04-01 17:15:02', '2025-04-01 17:15:02'),
('8f51ef93-64aa-4931-97f4-54a992273258', NULL, 'pembelian', 'ba37ba02-9673-47f9-b835-403616ccf9cb', 100, 1.00, 100.00, '', 100.00, 0.00, 0.00, '2025-03-27 17:40:14', '2025-03-27 17:40:14'),
('a328bcb6-74f6-4e82-b0ba-3d8305e70498', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', '6d17c2fb-4e32-4d65-bb67-a71984dc5e09', 2, 15000.00, 30000.00, 'Penjualan 6d17c2fb-4e32-4d65-bb67-a71984dc5e09 (2 pcs)', 0.00, 30000.00, 30000.00, '2025-06-13 16:22:09', '2025-06-13 16:22:09'),
('aaab569c-7994-4c60-aa03-b835b0737298', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', 'dda1c016-6dcb-4e1f-a5dc-e3611e46d95d', 3, 10000.00, 30000.00, 'Penjualan dda1c016-6dcb-4e1f-a5dc-e3611e46d95d (3 pcs)', 0.00, 30000.00, 30000.00, '2025-06-13 16:37:09', '2025-06-13 16:37:09'),
('abafed44-34e6-4b89-97b8-d1d6ea4793e9', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', 1, 10000.00, 10000.00, 'Penjualan ce8aa898-3f6a-4102-8e91-099acfa0fcae (1 pcs)', 0.00, 10000.00, 10000.00, '2025-03-29 10:40:13', '2025-03-29 10:40:13'),
('b8185240-ad7b-401d-9be0-6d478b8e7763', NULL, 'pembelian', 'dda1c016-6dcb-4e1f-a5dc-e3611e46d95d', 100, 4000.00, 400000.00, '', 400000.00, 0.00, 0.00, '2025-03-27 17:40:38', '2025-03-27 17:40:38'),
('bb638b28-df78-449b-bcb3-83dfea644826', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', 5, 10000.00, 50000.00, 'Penjualan ce8aa898-3f6a-4102-8e91-099acfa0fcae (5 pcs)', 0.00, 50000.00, 50000.00, '2025-06-13 16:50:29', '2025-06-13 16:50:29'),
('c3cfa826-6ab0-457a-b824-4f26244ab6cb', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', '430469b5-c520-4a7f-a675-f4ec6f90fa94', 1, 10000.00, 10000.00, 'Penjualan 430469b5-c520-4a7f-a675-f4ec6f90fa94 (1 pcs)', 0.00, 10000.00, 10000.00, '2025-06-13 16:41:27', '2025-06-13 16:41:27'),
('c8eb2b89-2837-4ab4-8690-bbac7c97c129', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', 'eaee7c5d-347c-45be-b522-2df0dbd3b1e7', 1, 1.00, 1.00, 'Penjualan Nasi Uduk (1 pcs) dari Meja meja vvip2', 0.00, 1.00, 1.00, '2025-03-29 01:22:33', '2025-03-29 01:22:33'),
('d21f39ab-2e5e-460b-9fd7-8db2adfad2f7', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', 1, 10000.00, 10000.00, 'Penjualan ce8aa898-3f6a-4102-8e91-099acfa0fcae (1 pcs)', 0.00, 10000.00, 10000.00, '2025-06-13 16:45:15', '2025-06-13 16:45:15'),
('d30e2150-918d-4168-b461-30eab9791e85', NULL, 'pembelian', '6d17c2fb-4e32-4d65-bb67-a71984dc5e09', 100, 4000.00, 400000.00, '', 400000.00, 0.00, 0.00, '2025-03-27 17:40:04', '2025-03-27 17:40:04'),
('da7e7b80-5656-43f0-8775-f440a4cbf784', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', 'c02c96c2-d7b7-418a-b5ed-b15a99315ae8', 1, 10000.00, 10000.00, 'Penjualan c02c96c2-d7b7-418a-b5ed-b15a99315ae8 (1 pcs)', 0.00, 10000.00, 10000.00, '2025-03-29 10:40:13', '2025-03-29 10:40:13'),
('ddc8a370-abe6-4122-a947-10962c91b03a', NULL, 'pembelian', 'c02c96c2-d7b7-418a-b5ed-b15a99315ae8', 100, 4000.00, 400000.00, '', 400000.00, 0.00, 0.00, '2025-03-27 17:40:23', '2025-03-27 17:40:23'),
('de0bc60a-5ab4-45ce-9635-f540799bf0c7', NULL, 'pembelian', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', 100, 3000.00, 300000.00, '', 300000.00, 0.00, 0.00, '2025-03-27 17:40:31', '2025-03-27 17:40:31'),
('e41d55c6-c731-41e5-a15e-5b64c64012f6', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', 1, 10000.00, 10000.00, 'Penjualan ce8aa898-3f6a-4102-8e91-099acfa0fcae (1 pcs)', 0.00, 10000.00, 10000.00, '2025-03-29 12:57:50', '2025-03-29 12:57:50'),
('e485dd51-7517-4b48-b7de-b4f76188d574', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', 'c02c96c2-d7b7-418a-b5ed-b15a99315ae8', 3, 10000.00, 30000.00, 'Penjualan c02c96c2-d7b7-418a-b5ed-b15a99315ae8 (3 pcs)', 0.00, 30000.00, 30000.00, '2025-06-13 17:29:36', '2025-06-13 17:29:36'),
('ed2c459a-15ab-4995-99db-9d1e310e9aab', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', '6d17c2fb-4e32-4d65-bb67-a71984dc5e09', 4, 15000.00, 60000.00, 'Penjualan 6d17c2fb-4e32-4d65-bb67-a71984dc5e09 (4 pcs)', 0.00, 60000.00, 60000.00, '2025-06-13 16:37:09', '2025-06-13 16:37:09'),
('f3b45213-7931-40b0-8d7e-04782b4baef2', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', 'c02c96c2-d7b7-418a-b5ed-b15a99315ae8', 3, 10000.00, 30000.00, 'Penjualan c02c96c2-d7b7-418a-b5ed-b15a99315ae8 (3 pcs)', 0.00, 30000.00, 30000.00, '2025-06-13 16:41:27', '2025-06-13 16:41:27'),
('f7c1db35-f840-4b53-a297-4b64c58bbafd', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', '6d17c2fb-4e32-4d65-bb67-a71984dc5e09', 3, 15000.00, 45000.00, 'Penjualan 6d17c2fb-4e32-4d65-bb67-a71984dc5e09 (3 pcs)', 0.00, 45000.00, 45000.00, '2025-06-13 17:29:36', '2025-06-13 17:29:36'),
('fc7a3b7f-d3a3-4691-8ce2-090ea0dff430', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'penjualan', 'c02c96c2-d7b7-418a-b5ed-b15a99315ae8', 2, 10000.00, 20000.00, 'Penjualan c02c96c2-d7b7-418a-b5ed-b15a99315ae8 (2 pcs)', 0.00, 20000.00, 20000.00, '2025-06-13 16:13:58', '2025-06-13 16:13:58');

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `namakategori` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`uuid`, `namakategori`, `createdAt`, `updatedAt`) VALUES
('8a04d624-0f63-4f92-9131-8497ae2bf295', 'Minuman', '2025-03-22 15:48:38', '2025-04-01 10:57:20'),
('accddd95-6c5c-4779-9f78-4e8298bf7045', 'Camilan', '2025-03-22 15:48:44', '2025-03-22 15:48:44'),
('c4e174f7-967f-437a-b486-607e7151d539', 'berat', '2025-04-01 10:57:16', '2025-04-01 10:57:16'),
('e20474e6-b287-408b-85cb-88c4fa6030b9', 'Makanan', '2025-03-13 00:15:46', '2025-03-13 00:15:46'),
('e49bae3d-c296-43aa-9896-1abd44568b84', 'ringan', '2025-04-01 10:47:57', '2025-04-01 10:47:57'),
('ee96f2ea-523f-4b92-b7d3-1193b21661b3', 'berat', '2025-04-01 10:48:04', '2025-04-01 10:48:04');

-- --------------------------------------------------------

--
-- Table structure for table `mutasistoks`
--

CREATE TABLE `mutasistoks` (
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `baranguuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `cabanguuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `jenis_mutasi` enum('masuk','keluar','transfer','penyesuaian') NOT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mutasistoks`
--

INSERT INTO `mutasistoks` (`uuid`, `baranguuid`, `cabanguuid`, `jenis_mutasi`, `jumlah`, `keterangan`, `createdAt`, `updatedAt`) VALUES
('026ad760-65e6-4db2-bc9f-eba4c49ee8fa', '430469b5-c520-4a7f-a675-f4ec6f90fa94', NULL, 'masuk', 100, 'Pembelian barang masuk ke gudang ()', '2025-03-27 17:39:56', '2025-03-27 17:39:56'),
('05df7a5f-1fbc-4909-86ca-06a71e837b69', '6d17c2fb-4e32-4d65-bb67-a71984dc5e09', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 3, 'Transaksi ORDER-1749810576109', '2025-06-13 17:29:36', '2025-06-13 17:29:36'),
('0a6d9e34-2f09-408e-99ee-d23f1650f483', 'eaee7c5d-347c-45be-b522-2df0dbd3b1e7', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 1, 'Transaksi Meja meja vvip2 (TABLE-11-1743537322538-Cuostumer: Bimo)', '2025-04-02 02:55:59', '2025-04-02 02:55:59'),
('0c2d5398-4bd1-412d-a925-9647400c6be8', '6d17c2fb-4e32-4d65-bb67-a71984dc5e09', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 4, 'Transaksi ORDER-1749807686958', '2025-06-13 16:41:27', '2025-06-13 16:41:27'),
('19fa0053-2eb4-4ba9-a7a0-17f5266b9139', '430469b5-c520-4a7f-a675-f4ec6f90fa94', NULL, 'keluar', 50, 'Distribusi stok ke cabang (ID: a2e50675-e5f2-4501-b9c3-1067f6d9dde5)', '2025-03-27 17:43:56', '2025-03-27 17:43:56'),
('261b7cd5-95aa-433c-a4ec-06f8f6e81437', '430469b5-c520-4a7f-a675-f4ec6f90fa94', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 1, 'Transaksi ORDER-1749807116152', '2025-06-13 16:31:56', '2025-06-13 16:31:56'),
('278259d8-3dc4-49db-8c56-86e4f45a0a50', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', NULL, 'masuk', 100, 'Pembelian barang masuk ke gudang ()', '2025-03-27 17:40:31', '2025-03-27 17:40:31'),
('2b24bdad-65c8-4a65-b703-08ccac63b5c0', '6d17c2fb-4e32-4d65-bb67-a71984dc5e09', NULL, 'masuk', 2, 'Pembelian barang masuk ke gudang (steak)', '2025-04-01 09:20:48', '2025-04-01 09:20:48'),
('2edb788c-923b-4900-bc3e-cfa920356e8c', 'c02c96c2-d7b7-418a-b5ed-b15a99315ae8', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 3, 'Transaksi ORDER-1749807686958', '2025-06-13 16:41:27', '2025-06-13 16:41:27'),
('2f3f497a-3069-4c37-b570-5e274836a82e', 'c02c96c2-d7b7-418a-b5ed-b15a99315ae8', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 1, 'Transaksi ORDER-1743227870657', '2025-03-29 12:57:50', '2025-03-29 12:57:50'),
('2f9e8f02-3de7-45f4-a81f-1ce11850e722', '6d17c2fb-4e32-4d65-bb67-a71984dc5e09', NULL, 'masuk', 100, 'Pembelian barang masuk ke gudang ()', '2025-03-27 17:40:04', '2025-03-27 17:40:04'),
('2fa2e529-790f-42a0-9e87-11584250ea57', 'ba37ba02-9673-47f9-b835-403616ccf9cb', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'masuk', 100, 'Distribusi stok dari gudang (ID: fb15b4f2-56e4-4d36-83d4-1a66892628f2)', '2025-03-27 17:43:52', '2025-03-27 17:43:52'),
('36d549c7-9d7d-47df-8a2f-8b92e1610d05', '430469b5-c520-4a7f-a675-f4ec6f90fa94', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'masuk', 50, 'Distribusi stok dari gudang (ID: a2e50675-e5f2-4501-b9c3-1067f6d9dde5)', '2025-03-27 17:43:56', '2025-03-27 17:43:56'),
('3a4387bd-8fc5-432e-85bc-cef1322c053c', 'eaee7c5d-347c-45be-b522-2df0dbd3b1e7', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 1, 'Transaksi Meja meja vvip2 (TABLE-11-1743184068709-Cuostumer: Bimov3)', '2025-03-29 00:48:41', '2025-03-29 00:48:41'),
('3c232169-5d37-474d-bce0-8cb39dfb56ac', '6d17c2fb-4e32-4d65-bb67-a71984dc5e09', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 2, 'Transaksi ORDER-1749806529508', '2025-06-13 16:22:09', '2025-06-13 16:22:09'),
('42ed6ac9-dde2-4661-9c08-88a35f20d2f4', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 5, 'Transaksi ORDER-1749808229821', '2025-06-13 16:50:29', '2025-06-13 16:50:29'),
('57a66560-73cc-4eaf-9eea-a6c480eaa5b6', '6d17c2fb-4e32-4d65-bb67-a71984dc5e09', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 4, 'Transaksi ORDER-1749807429659', '2025-06-13 16:37:09', '2025-06-13 16:37:09'),
('58939dcd-cf67-43bf-b8a5-abf1627ff082', 'eaee7c5d-347c-45be-b522-2df0dbd3b1e7', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 1, 'Transaksi Meja meja vvip2 (TABLE-11-1743186100066-Cuostumer: Bimo)', '2025-03-29 01:22:33', '2025-03-29 01:22:33'),
('59ac7a96-ee2b-4d42-a00d-ae2c810b3229', 'c02c96c2-d7b7-418a-b5ed-b15a99315ae8', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 2, 'Transaksi ORDER-1749806038076', '2025-06-13 16:13:58', '2025-06-13 16:13:58'),
('66234c6e-2504-4710-b8c3-d3a869fc2321', '6d17c2fb-4e32-4d65-bb67-a71984dc5e09', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'masuk', 50, 'Distribusi stok dari gudang (ID: 06b8a4c2-e9a5-423d-a0f7-c439e6930cc9)', '2025-03-27 17:43:55', '2025-03-27 17:43:55'),
('685dd14d-23df-4d0b-91ef-a8ebda48c16b', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 5, 'Transaksi ORDER-1749803784739', '2025-06-13 15:36:24', '2025-06-13 15:36:24'),
('718ad50e-bcd4-4d63-8684-7552c6f8c3e9', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 1, 'Transaksi ORDER-1743219613462', '2025-03-29 10:40:13', '2025-03-29 10:40:13'),
('7272edbe-872b-4c79-a6a3-62f84f9483b3', 'dda1c016-6dcb-4e1f-a5dc-e3611e46d95d', NULL, 'masuk', 100, 'Pembelian barang masuk ke gudang ()', '2025-03-27 17:40:38', '2025-03-27 17:40:38'),
('732a4df0-99f4-42c4-93bc-ae3d777d4adf', '430469b5-c520-4a7f-a675-f4ec6f90fa94', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 1, 'Transaksi ORDER-1743502502240', '2025-04-01 17:15:02', '2025-04-01 17:15:02'),
('7784c1fc-c910-4e2c-9c6b-6ceed46b9b61', 'c02c96c2-d7b7-418a-b5ed-b15a99315ae8', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 2, 'Transaksi ORDER-1749806529508', '2025-06-13 16:22:09', '2025-06-13 16:22:09'),
('7ce356f2-b9d9-4500-bbd1-cf5c7ae652c9', 'eaee7c5d-347c-45be-b522-2df0dbd3b1e7', NULL, 'keluar', 50, 'Distribusi stok ke cabang (ID: b2bd76d6-40c4-47eb-b779-a9d14343c125)', '2025-03-29 00:30:26', '2025-03-29 00:30:26'),
('7e874898-ed62-4e59-bf81-2e4bc71749df', 'c02c96c2-d7b7-418a-b5ed-b15a99315ae8', NULL, 'masuk', 100, 'Pembelian barang masuk ke gudang ()', '2025-03-27 17:40:23', '2025-03-27 17:40:23'),
('808dfebf-9daf-40f9-aa38-909d92d991f6', 'c02c96c2-d7b7-418a-b5ed-b15a99315ae8', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 1, 'Transaksi ORDER-1743219613462', '2025-03-29 10:40:13', '2025-03-29 10:40:13'),
('8c3764b0-eb80-4fc0-af77-9fcddd64fbc9', 'c02c96c2-d7b7-418a-b5ed-b15a99315ae8', NULL, 'keluar', 50, 'Distribusi stok ke cabang (ID: f9880f9f-fdf8-40e3-8019-de51e4f380d5)', '2025-03-27 17:43:44', '2025-03-27 17:43:44'),
('8ed2aeaf-5eca-424e-82f9-833ce1d8c489', '6d17c2fb-4e32-4d65-bb67-a71984dc5e09', NULL, 'keluar', 50, 'Distribusi stok ke cabang (ID: 06b8a4c2-e9a5-423d-a0f7-c439e6930cc9)', '2025-03-27 17:43:55', '2025-03-27 17:43:55'),
('94079ab3-f25d-4333-9f48-c2a9247b881a', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'masuk', 50, 'Distribusi stok dari gudang (ID: 67fa718c-9a89-49f6-b78c-072706c7544f)', '2025-03-27 17:43:35', '2025-03-27 17:43:35'),
('9c004c39-3a72-43ad-a180-b2314fff38b7', 'ba37ba02-9673-47f9-b835-403616ccf9cb', NULL, 'masuk', 100, 'Pembelian barang masuk ke gudang ()', '2025-03-27 17:40:14', '2025-03-27 17:40:14'),
('9c36ca3e-71e5-4c76-9e8b-9766c54e9054', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', NULL, 'keluar', 50, 'Distribusi stok ke cabang (ID: 67fa718c-9a89-49f6-b78c-072706c7544f)', '2025-03-27 17:43:35', '2025-03-27 17:43:35'),
('9cde151e-1409-4876-8191-42dc5a206493', 'ba37ba02-9673-47f9-b835-403616ccf9cb', NULL, 'keluar', 100, 'Distribusi stok ke cabang (ID: fb15b4f2-56e4-4d36-83d4-1a66892628f2)', '2025-03-27 17:43:52', '2025-03-27 17:43:52'),
('a637c0b8-142c-4e31-9e42-99b344306d5d', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 1, 'Transaksi ORDER-1749807915166', '2025-06-13 16:45:15', '2025-06-13 16:45:15'),
('a690a05f-80cb-4661-9d62-33fce431fc0c', '6d17c2fb-4e32-4d65-bb67-a71984dc5e09', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 2, 'Transaksi ORDER-1749806038076', '2025-06-13 16:13:58', '2025-06-13 16:13:58'),
('a7f840a8-e749-40dd-bf40-1b8d792883c4', '6d17c2fb-4e32-4d65-bb67-a71984dc5e09', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 5, 'Transaksi ORDER-1749808229821', '2025-06-13 16:50:29', '2025-06-13 16:50:29'),
('a8fdc8bf-1d2a-4ed6-bc99-9a65d88454a4', '430469b5-c520-4a7f-a675-f4ec6f90fa94', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 1, 'Transaksi ORDER-1749807915166', '2025-06-13 16:45:15', '2025-06-13 16:45:15'),
('ad38044f-2aeb-4891-b06c-3a9a70a81a96', 'eaee7c5d-347c-45be-b522-2df0dbd3b1e7', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 1, 'Transaksi ORDER-1743219613462', '2025-03-29 10:40:13', '2025-03-29 10:40:13'),
('aee85f26-b53e-4689-9e9e-514578ba6c91', '6d17c2fb-4e32-4d65-bb67-a71984dc5e09', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 4, 'Transaksi ORDER-1749806197997', '2025-06-13 16:16:38', '2025-06-13 16:16:38'),
('af45830f-1143-4f36-80e3-ebb7fa7af1f2', 'c02c96c2-d7b7-418a-b5ed-b15a99315ae8', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 1, 'Transaksi ORDER-1749807915166', '2025-06-13 16:45:15', '2025-06-13 16:45:15'),
('b983fc50-363b-4d01-8a76-9b2e80b495fd', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 2, 'Transaksi ORDER-1749807686958', '2025-06-13 16:41:27', '2025-06-13 16:41:27'),
('bb2ad22f-0ca4-4fc6-869b-82d065cb9499', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 1, 'Transaksi ORDER-1743227870657', '2025-03-29 12:57:50', '2025-03-29 12:57:50'),
('bca6257c-60af-40f2-896e-dbc854dcb351', '430469b5-c520-4a7f-a675-f4ec6f90fa94', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 1, 'Transaksi ORDER-1743219613462', '2025-03-29 10:40:13', '2025-03-29 10:40:13'),
('c40312af-97a7-4588-9a57-850430efe244', '430469b5-c520-4a7f-a675-f4ec6f90fa94', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 1, 'Transaksi ORDER-1749807686958', '2025-06-13 16:41:27', '2025-06-13 16:41:27'),
('c71d4679-88e0-4640-838d-479bd5642b2a', 'dda1c016-6dcb-4e1f-a5dc-e3611e46d95d', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 1, 'Transaksi ORDER-1749807686958', '2025-06-13 16:41:27', '2025-06-13 16:41:27'),
('c9e1e924-b50e-47fc-944e-930199fe3d4a', '6d17c2fb-4e32-4d65-bb67-a71984dc5e09', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 4, 'Transaksi ORDER-1749807116152', '2025-06-13 16:31:56', '2025-06-13 16:31:56'),
('cba17da9-d9d6-4456-a1c0-180426267a26', 'eaee7c5d-347c-45be-b522-2df0dbd3b1e7', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'masuk', 50, 'Distribusi stok dari gudang (ID: b2bd76d6-40c4-47eb-b779-a9d14343c125)', '2025-03-29 00:30:26', '2025-03-29 00:30:26'),
('cf5d4562-45fd-47cf-9716-fc84efbc4e71', 'dda1c016-6dcb-4e1f-a5dc-e3611e46d95d', NULL, 'keluar', 50, 'Distribusi stok ke cabang (ID: 8bf32af6-8e26-49d3-bbe0-ab72954100c7)', '2025-03-27 17:44:01', '2025-03-27 17:44:01'),
('d09ffead-4483-4bfd-943d-75cc840498bc', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 2, 'Transaksi ORDER-1749807429659', '2025-06-13 16:37:09', '2025-06-13 16:37:09'),
('d0e6b092-f749-4057-9397-191219b77a6c', 'dda1c016-6dcb-4e1f-a5dc-e3611e46d95d', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 3, 'Transaksi ORDER-1749807429659', '2025-06-13 16:37:09', '2025-06-13 16:37:09'),
('d622d72c-e932-4f32-9f7a-a567f63ac056', 'dda1c016-6dcb-4e1f-a5dc-e3611e46d95d', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'masuk', 50, 'Distribusi stok dari gudang (ID: 8bf32af6-8e26-49d3-bbe0-ab72954100c7)', '2025-03-27 17:44:01', '2025-03-27 17:44:01'),
('dc6404a8-47bf-4dac-8e50-8f9f5dba9bbd', 'ba37ba02-9673-47f9-b835-403616ccf9cb', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 1, 'Transaksi Meja meja vvip2 (TABLE-11-1743184068709-Cuostumer: Bimov3)', '2025-03-29 00:48:41', '2025-03-29 00:48:41'),
('dd21dfe1-dac4-4f07-ab8a-901b9b99c635', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 1, 'Transaksi ORDER-1749803497912', '2025-06-13 15:31:37', '2025-06-13 15:31:37'),
('e3b0369c-f0b5-4ace-aa9d-43005ff0afdc', 'c02c96c2-d7b7-418a-b5ed-b15a99315ae8', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'masuk', 50, 'Distribusi stok dari gudang (ID: f9880f9f-fdf8-40e3-8019-de51e4f380d5)', '2025-03-27 17:43:44', '2025-03-27 17:43:44'),
('e937abf1-7626-42a1-9dec-96f84d79f9ea', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 2, 'Transaksi ORDER-1743108302856', '2025-03-28 03:45:02', '2025-03-28 03:45:02'),
('ef5782f8-3d06-46b5-af48-30b148a585d6', 'eaee7c5d-347c-45be-b522-2df0dbd3b1e7', NULL, 'masuk', 100, 'Pembelian barang masuk ke gudang ()', '2025-03-29 00:29:16', '2025-03-29 00:29:16'),
('ff14bce8-fd71-4530-812c-2b2fa2e981af', 'c02c96c2-d7b7-418a-b5ed-b15a99315ae8', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', 'keluar', 3, 'Transaksi ORDER-1749810576109', '2025-06-13 17:29:36', '2025-06-13 17:29:36');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `message` varchar(255) NOT NULL,
  `orderId` varchar(255) NOT NULL,
  `transaksiUuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `type` varchar(255) DEFAULT 'new_order',
  `timestamp` datetime DEFAULT NULL,
  `read` tinyint(1) DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `cabangUuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `message`, `orderId`, `transaksiUuid`, `type`, `timestamp`, `read`, `createdAt`, `updatedAt`, `cabangUuid`) VALUES
('145773ee-36ee-46bf-b22a-46e587da8cd6', 'Pesanan baru dari Meja 1  menunggu konfirmasi', 'TABLE-1-1743286398531-Cuostumer: Jvj ucuf', 'd56c9a2b-38ea-4b76-a840-0bc6e87f9c76', 'new_order', '2025-03-30 05:13:18', 0, '2025-03-30 05:13:18', '2025-03-30 05:13:18', NULL),
('26275a03-6891-4d2d-a0e8-ec75600aa5e8', 'Pesanan dari meja vvip2 telah diterima oleh kasir kasir', 'TABLE-11-1743184068709-Cuostumer: Bimov3', 'e70a93b7-3ba5-49fd-8844-b8b65f844c15', 'order_accepted', '2025-03-29 00:47:50', 0, '2025-03-29 00:47:50', '2025-03-29 00:50:08', 'bb88b401-f02f-4ff9-8b7b-68826173eef7'),
('2d253aa0-7791-406d-9b9d-2444a809bde6', 'Pesanan baru dari Meja 1  atas nama Jvj ucuf menunggu konfirmasi', 'TABLE-1-1743286398531-Cuostumer: Jvj ucuf', 'd56c9a2b-38ea-4b76-a840-0bc6e87f9c76', 'new_order', '2025-03-30 05:13:18', 0, '2025-03-30 05:13:18', '2025-03-30 05:13:18', 'bb88b401-f02f-4ff9-8b7b-68826173eef7'),
('360938bf-ea18-4a40-8135-825b78ab9fd2', 'Pesanan baru dari Meja 1  atas nama Hhhh menunggu konfirmasi', 'TABLE-1-1743351689529-Cuostumer: Hhhh', '9c8ca512-3fbb-4a56-a7fd-4edd1755127b', 'new_order', '2025-03-30 23:21:31', 0, '2025-03-30 23:21:31', '2025-03-30 23:21:31', 'bb88b401-f02f-4ff9-8b7b-68826173eef7'),
('4a5aef99-22f5-4605-b35a-0eecf3a44269', 'Pesanan baru dari Meja 1  menunggu konfirmasi', 'TABLE-1-1743351689529-Cuostumer: Hhhh', '9c8ca512-3fbb-4a56-a7fd-4edd1755127b', 'new_order', '2025-03-30 23:21:31', 0, '2025-03-30 23:21:31', '2025-03-30 23:21:31', NULL),
('58013aed-0ab2-42b7-befc-ab64b59df86d', 'Pesanan dari meja vvip2 telah diterima oleh kasir kasir', 'TABLE-11-1743186100066-Cuostumer: Bimo', '8c5515e7-8a7a-4803-aa81-606351b94120', 'order_accepted', '2025-03-29 01:21:41', 0, '2025-03-29 01:21:41', '2025-03-29 01:22:46', 'bb88b401-f02f-4ff9-8b7b-68826173eef7'),
('6b9d8e4d-2360-4166-b556-797a293f012e', 'Pesanan baru dari meja vvip2 menunggu konfirmasi', 'TABLE-11-1743186100066-Cuostumer: Bimo', '8c5515e7-8a7a-4803-aa81-606351b94120', 'new_order', '2025-03-29 01:21:41', 0, '2025-03-29 01:21:41', '2025-03-29 01:21:41', NULL),
('8befab44-7f4b-4419-a1b4-94f3ac71a03e', 'Pesanan dari meja vvip2 telah diterima oleh kasir kasir', 'TABLE-11-1743537322538-Cuostumer: Bimo', 'dda20526-d430-4885-b6d1-d280b0e158ba', 'order_accepted', '2025-04-02 02:55:23', 0, '2025-04-02 02:55:24', '2025-04-02 02:56:09', 'bb88b401-f02f-4ff9-8b7b-68826173eef7'),
('ae4685ae-68bf-46f0-b767-a05ddaa2a3fc', 'Pesanan baru dari meja vvip2 menunggu konfirmasi', 'TABLE-11-1743536559716-Cuostumer: Edi', 'af61c42a-648c-4ed2-9e35-d7e0f0efd24c', 'new_order', '2025-04-02 02:42:41', 0, '2025-04-02 02:42:41', '2025-04-02 02:42:41', NULL),
('d2079b83-1a55-46f9-9210-57673b22abb4', 'Pesanan baru dari meja vvip2 menunggu konfirmasi', 'TABLE-11-1743184068709-Cuostumer: Bimov3', 'e70a93b7-3ba5-49fd-8844-b8b65f844c15', 'new_order', '2025-03-29 00:47:50', 0, '2025-03-29 00:47:50', '2025-03-29 00:47:50', NULL),
('df8c3df7-f400-4c51-b77c-88751b91145d', 'Pesanan baru dari meja vvip2 atas nama Edi menunggu konfirmasi', 'TABLE-11-1743536559716-Cuostumer: Edi', 'af61c42a-648c-4ed2-9e35-d7e0f0efd24c', 'new_order', '2025-04-02 02:42:41', 0, '2025-04-02 02:42:41', '2025-04-02 02:42:41', 'bb88b401-f02f-4ff9-8b7b-68826173eef7'),
('f010fb1c-c9f0-4c57-b409-a3faf4560ef5', 'Pesanan baru dari meja vvip2 menunggu konfirmasi', 'TABLE-11-1743537322538-Cuostumer: Bimo', 'dda20526-d430-4885-b6d1-d280b0e158ba', 'new_order', '2025-04-02 02:55:24', 0, '2025-04-02 02:55:24', '2025-04-02 02:55:24', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('eDYd5aRPGJoWPhSAPQ1VIyP0267nd2Li', '2025-06-14 14:59:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-06-13 14:59:37', '2025-06-13 14:59:37'),
('o-GvqiyJ5STW0m5tizCCy8ar-m46p7qA', '2025-06-14 17:51:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-06-13 17:51:17', '2025-06-13 17:51:17'),
('Owma4vSZbDD_gAUu5bXZWAp1DdArs0xZ', '2025-06-14 14:47:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"},\"user\":{\"uuid\":\"2e7d8911-36b1-4599-ada8-0249e1c8d3c4\",\"username\":\"superadmin\",\"role\":\"superadmin\",\"cabanguuid\":null}}', '2025-06-13 14:44:12', '2025-06-13 14:47:18'),
('RDffrRRw1O51psFiQRDIZNYvDzNVVs58', '2025-06-14 14:59:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-06-13 14:59:37', '2025-06-13 14:59:37'),
('RhGur4QwO6Uo8oSKJHaqhJhsu41h2YgU', '2025-06-14 15:48:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-06-13 15:48:36', '2025-06-13 15:48:36'),
('sqWdliqp4DJBZHhAaZHN3prmEXfKJEUq', '2025-06-14 15:48:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-06-13 15:48:36', '2025-06-13 15:48:36'),
('VSMokFYc_DqCfTPalsVmqtmUJrs57qSQ', '2025-06-14 17:38:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"},\"user\":{\"uuid\":\"94e861b3-2af5-447a-91f5-bb285c6f7a3b\",\"username\":\"kasir\",\"role\":\"kasir\",\"cabanguuid\":\"bb88b401-f02f-4ff9-8b7b-68826173eef7\"}}', '2025-06-13 16:13:22', '2025-06-13 17:38:08'),
('YTZDCrsQccZVF0Vm8OsWUZIHGEqM2TPN', '2025-06-14 15:48:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\",\"sameSite\":\"lax\"}}', '2025-06-13 15:48:36', '2025-06-13 15:48:36');

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cabangUuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `name`, `cabangUuid`, `createdAt`, `updatedAt`) VALUES
(1, 'Meja 1 ', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', '2025-03-11 09:27:33', '2025-03-17 11:40:25'),
(2, 'Meja 2', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', '2025-03-14 23:11:53', '2025-03-17 11:13:24'),
(3, 'Meja 3', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', '2025-03-17 11:40:17', '2025-03-17 11:40:17'),
(4, 'meja 4', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', '2025-03-18 16:10:20', '2025-03-18 16:10:20'),
(5, 'Meja 5', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', '2025-03-18 16:12:28', '2025-03-18 16:12:28'),
(6, 'Meja 6', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', '2025-03-18 16:15:19', '2025-03-18 16:15:19'),
(7, 'Meja 7', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', '2025-03-18 16:18:18', '2025-03-18 16:18:18'),
(8, 'mejamilenial', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', '2025-03-21 21:27:01', '2025-03-21 21:27:01'),
(9, 'mejabaru', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', '2025-03-24 20:42:58', '2025-03-24 20:42:58'),
(10, 'Meja vvip', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', '2025-03-29 00:41:34', '2025-03-29 00:41:34'),
(11, 'meja vvip2', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', '2025-03-29 00:46:33', '2025-03-29 00:46:33');

-- --------------------------------------------------------

--
-- Table structure for table `transaksidetails`
--

CREATE TABLE `transaksidetails` (
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `transaksiuuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `baranguuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tableId` int(11) DEFAULT NULL,
  `jumlahbarang` int(11) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksidetails`
--

INSERT INTO `transaksidetails` (`uuid`, `transaksiuuid`, `baranguuid`, `tableId`, `jumlahbarang`, `harga`, `total`, `createdAt`, `updatedAt`) VALUES
('05b7a94e-175e-41f8-9536-ac35248a1ee8', 'ca4407e5-952e-443a-83bf-a95066888659', '6d17c2fb-4e32-4d65-bb67-a71984dc5e09', NULL, 4, 15000.00, 60000.00, '2025-06-13 16:16:38', '2025-06-13 16:16:38'),
('0bd9967b-8a5e-452f-b7ef-a86a633dc0ee', '6559f207-bb5c-4640-8af9-0132c9325e8d', '430469b5-c520-4a7f-a675-f4ec6f90fa94', NULL, 1, 10000.00, 10000.00, '2025-03-28 19:44:57', '2025-03-28 19:44:57'),
('0c0388b9-a6b5-49ae-8c11-cb09921ec3c4', 'e8b012bd-fa1d-4380-970e-1a1639796a9a', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', NULL, 1, 10000.00, 10000.00, '2025-03-29 12:57:30', '2025-03-29 12:57:30'),
('2151b32d-4d62-40d0-b0de-b3fff366ab73', '912e629d-623a-4ae7-ad1b-ba1f1fda55a6', '6d17c2fb-4e32-4d65-bb67-a71984dc5e09', NULL, 5, 15000.00, 75000.00, '2025-06-13 16:50:29', '2025-06-13 16:50:29'),
('240d26c4-fdfe-4a40-a7a6-aaac8e6f9542', '2b090c1f-2c98-4e35-9951-638b94b2fd4a', 'c02c96c2-d7b7-418a-b5ed-b15a99315ae8', NULL, 1, 10000.00, 10000.00, '2025-06-13 16:45:15', '2025-06-13 16:45:15'),
('2514672a-e97b-4e52-be9e-f735dba2c07a', '6ff8c95b-fbb0-4d09-9d4c-3d4186c646f5', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', NULL, 1, 10000.00, 10000.00, '2025-03-29 10:40:13', '2025-03-29 10:40:13'),
('263380f0-917a-425a-8653-23486427bf47', 'e70a93b7-3ba5-49fd-8844-b8b65f844c15', 'ba37ba02-9673-47f9-b835-403616ccf9cb', NULL, 1, 1.00, 1.00, '2025-03-29 00:47:48', '2025-03-29 00:47:48'),
('2b4e3607-1859-4361-83a7-6340e95d1525', '912e629d-623a-4ae7-ad1b-ba1f1fda55a6', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', NULL, 5, 10000.00, 50000.00, '2025-06-13 16:50:29', '2025-06-13 16:50:29'),
('30e39f76-a315-4648-8a10-35a6ba35840a', '379b5811-8645-46ae-8ec3-c4802a0a1268', '6d17c2fb-4e32-4d65-bb67-a71984dc5e09', NULL, 4, 15000.00, 60000.00, '2025-06-13 16:37:09', '2025-06-13 16:37:09'),
('346277ed-1785-4271-baaa-0ef9f1293175', '9c8ca512-3fbb-4a56-a7fd-4edd1755127b', 'eaee7c5d-347c-45be-b522-2df0dbd3b1e7', NULL, 2, 1.00, 2.00, '2025-03-30 23:21:29', '2025-03-30 23:21:29'),
('40bffa7e-6cec-47db-8d6d-b15bf13349ce', '379b5811-8645-46ae-8ec3-c4802a0a1268', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', NULL, 2, 10000.00, 20000.00, '2025-06-13 16:37:09', '2025-06-13 16:37:09'),
('4164fb32-0f27-4b41-b7bc-900a9e82ec77', '4fff0e96-8de5-4e8b-a68c-4d00f75a3ff8', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', NULL, 1, 10000.00, 10000.00, '2025-04-01 17:19:26', '2025-04-01 17:19:26'),
('42557d99-a886-4aac-b625-ebaa196fc64b', '57f8b914-9b47-4bbe-848f-5c48496a28cf', 'c02c96c2-d7b7-418a-b5ed-b15a99315ae8', NULL, 3, 10000.00, 30000.00, '2025-06-13 17:29:36', '2025-06-13 17:29:36'),
('4721b0fb-e81e-4717-9e46-7539b658dcf9', 'c21373c4-ea6e-4305-b800-1ca6e31f6568', 'dda1c016-6dcb-4e1f-a5dc-e3611e46d95d', NULL, 1, 10000.00, 10000.00, '2025-06-13 16:41:26', '2025-06-13 16:41:26'),
('4991219a-0423-4683-87f5-fd7db90c193e', '004d2136-0ae9-42e1-9a0c-7f96375f551f', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', NULL, 1, 10000.00, 10000.00, '2025-06-13 15:31:37', '2025-06-13 15:31:37'),
('5853cfe3-4fdd-425a-a146-5d042e76379c', '423ca447-e1d1-4f57-b77b-ffc3c8301f95', 'c02c96c2-d7b7-418a-b5ed-b15a99315ae8', NULL, 2, 10000.00, 20000.00, '2025-06-13 16:13:58', '2025-06-13 16:13:58'),
('5f4cafff-5640-481c-97ef-d205f30d539a', '6db68158-7b36-4bdf-bb4a-a533f69737d2', 'c02c96c2-d7b7-418a-b5ed-b15a99315ae8', NULL, 2, 10000.00, 20000.00, '2025-06-13 16:22:09', '2025-06-13 16:22:09'),
('6445197d-90e3-4ca1-ab76-f872f2e06b51', '916caaf5-a526-4ebc-b404-6bacc8cafe37', '430469b5-c520-4a7f-a675-f4ec6f90fa94', NULL, 1, 10000.00, 10000.00, '2025-03-28 19:44:59', '2025-03-28 19:44:59'),
('6a53415c-67d9-44fc-bb30-6d6b5ac01f06', '57f8b914-9b47-4bbe-848f-5c48496a28cf', '6d17c2fb-4e32-4d65-bb67-a71984dc5e09', NULL, 3, 15000.00, 45000.00, '2025-06-13 17:29:36', '2025-06-13 17:29:36'),
('7a89d788-0f26-4c2f-b3c5-21730b19b7d6', 'c21373c4-ea6e-4305-b800-1ca6e31f6568', '430469b5-c520-4a7f-a675-f4ec6f90fa94', NULL, 1, 10000.00, 10000.00, '2025-06-13 16:41:26', '2025-06-13 16:41:26'),
('7aa3795f-421a-4ec4-aec5-9594144bb288', '8c5515e7-8a7a-4803-aa81-606351b94120', 'eaee7c5d-347c-45be-b522-2df0dbd3b1e7', NULL, 1, 1.00, 1.00, '2025-03-29 01:21:40', '2025-03-29 01:21:40'),
('7af516bb-5ac2-4cdd-baeb-37bbb3987332', '17a5caaf-6ed8-4dd1-93ef-3face774cf2b', '430469b5-c520-4a7f-a675-f4ec6f90fa94', NULL, 1, 10000.00, 10000.00, '2025-04-01 17:15:02', '2025-04-01 17:15:02'),
('7c53685a-f336-4590-bfac-b88e3864a0b6', '6ff8c95b-fbb0-4d09-9d4c-3d4186c646f5', 'eaee7c5d-347c-45be-b522-2df0dbd3b1e7', NULL, 1, 1.00, 1.00, '2025-03-29 10:40:13', '2025-03-29 10:40:13'),
('7eb79a85-8b77-46f8-a938-3f8965761219', 'dda20526-d430-4885-b6d1-d280b0e158ba', 'eaee7c5d-347c-45be-b522-2df0dbd3b1e7', NULL, 1, 1.00, 1.00, '2025-04-02 02:55:22', '2025-04-02 02:55:22'),
('8172958c-34be-4fb3-a794-85f61bb4f8db', '2b090c1f-2c98-4e35-9951-638b94b2fd4a', '430469b5-c520-4a7f-a675-f4ec6f90fa94', NULL, 1, 10000.00, 10000.00, '2025-06-13 16:45:15', '2025-06-13 16:45:15'),
('83b1f567-7c6f-4eca-9011-92cac84c8c14', '2b090c1f-2c98-4e35-9951-638b94b2fd4a', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', NULL, 1, 10000.00, 10000.00, '2025-06-13 16:45:15', '2025-06-13 16:45:15'),
('8f17df51-6723-4d4d-8d20-17362b5cc34d', '9c8ca512-3fbb-4a56-a7fd-4edd1755127b', '430469b5-c520-4a7f-a675-f4ec6f90fa94', NULL, 1, 10000.00, 10000.00, '2025-03-30 23:21:29', '2025-03-30 23:21:29'),
('9200cedb-a0fe-4a46-8dc4-c04fb6cfc62b', '7ee2bea1-94f6-434e-827f-b1efc361c93c', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', NULL, 5, 10000.00, 50000.00, '2025-06-13 15:36:24', '2025-06-13 15:36:24'),
('abbf3d0a-9e5f-4972-8923-f225d543b9c2', '4fff0e96-8de5-4e8b-a68c-4d00f75a3ff8', 'c02c96c2-d7b7-418a-b5ed-b15a99315ae8', NULL, 1, 10000.00, 10000.00, '2025-04-01 17:19:26', '2025-04-01 17:19:26'),
('ac7bee3c-4917-45b8-9ccd-570d8f276501', 'c21373c4-ea6e-4305-b800-1ca6e31f6568', '6d17c2fb-4e32-4d65-bb67-a71984dc5e09', NULL, 4, 15000.00, 60000.00, '2025-06-13 16:41:26', '2025-06-13 16:41:26'),
('b0b1af48-0920-4631-bbab-6758aebbdf70', '6db68158-7b36-4bdf-bb4a-a533f69737d2', '6d17c2fb-4e32-4d65-bb67-a71984dc5e09', NULL, 2, 15000.00, 30000.00, '2025-06-13 16:22:09', '2025-06-13 16:22:09'),
('b3d0f7c3-3a6d-44e6-8efd-b149588ebd11', 'af61c42a-648c-4ed2-9e35-d7e0f0efd24c', 'eaee7c5d-347c-45be-b522-2df0dbd3b1e7', NULL, 1, 1.00, 1.00, '2025-04-02 02:42:39', '2025-04-02 02:42:39'),
('b3d3c48a-47e4-4ef8-9486-097d17380eaf', 'e8b012bd-fa1d-4380-970e-1a1639796a9a', 'c02c96c2-d7b7-418a-b5ed-b15a99315ae8', NULL, 1, 10000.00, 10000.00, '2025-03-29 12:57:30', '2025-03-29 12:57:30'),
('b7fe2fd4-49d8-4227-bc33-82ff2b365b5e', 'e98bff99-ef1e-4d85-b878-ee52edee9b85', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', NULL, 1, 10000.00, 10000.00, '2025-03-29 12:57:50', '2025-03-29 12:57:50'),
('bae41a14-3171-4733-8468-99f2dc0653a0', 'd56c9a2b-38ea-4b76-a840-0bc6e87f9c76', 'eaee7c5d-347c-45be-b522-2df0dbd3b1e7', NULL, 8, 1.00, 8.00, '2025-03-30 05:13:18', '2025-03-30 05:13:18'),
('bc8b6345-7a38-4158-941f-b24a9d9034de', 'e98bff99-ef1e-4d85-b878-ee52edee9b85', 'c02c96c2-d7b7-418a-b5ed-b15a99315ae8', NULL, 1, 10000.00, 10000.00, '2025-03-29 12:57:50', '2025-03-29 12:57:50'),
('c63a9ee8-0e99-427a-9b3b-cbdf70bf546e', '4c149ee3-5e08-4260-91de-e977b06009de', '430469b5-c520-4a7f-a675-f4ec6f90fa94', NULL, 1, 10000.00, 10000.00, '2025-06-13 16:31:56', '2025-06-13 16:31:56'),
('d3c7eb0e-b623-40f3-b837-c7b0509ef51b', '6559f207-bb5c-4640-8af9-0132c9325e8d', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', NULL, 1, 10000.00, 10000.00, '2025-03-28 19:44:57', '2025-03-28 19:44:57'),
('dec0784b-786c-4099-be84-2cf47036bcba', '4c149ee3-5e08-4260-91de-e977b06009de', '6d17c2fb-4e32-4d65-bb67-a71984dc5e09', NULL, 4, 15000.00, 60000.00, '2025-06-13 16:31:56', '2025-06-13 16:31:56'),
('dfb6dfc9-9aff-4c67-ad83-6921b39c103d', 'e70a93b7-3ba5-49fd-8844-b8b65f844c15', 'eaee7c5d-347c-45be-b522-2df0dbd3b1e7', NULL, 1, 1.00, 1.00, '2025-03-29 00:47:48', '2025-03-29 00:47:48'),
('e108a6f2-95e8-4ec2-b9d5-d2ea41048be0', '423ca447-e1d1-4f57-b77b-ffc3c8301f95', '6d17c2fb-4e32-4d65-bb67-a71984dc5e09', NULL, 2, 15000.00, 30000.00, '2025-06-13 16:13:58', '2025-06-13 16:13:58'),
('e26981eb-42c4-462e-852a-adf847742de3', '67e1b52c-c04a-427a-ad31-e81968757150', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', NULL, 2, 10000.00, 20000.00, '2025-03-28 03:45:02', '2025-03-28 03:45:02'),
('e5e7a719-040d-4ba6-82c7-da87a472a2ef', '6ff8c95b-fbb0-4d09-9d4c-3d4186c646f5', 'c02c96c2-d7b7-418a-b5ed-b15a99315ae8', NULL, 1, 10000.00, 10000.00, '2025-03-29 10:40:13', '2025-03-29 10:40:13'),
('e5f4c363-567a-4d46-bba7-de7fc9e6896e', 'c21373c4-ea6e-4305-b800-1ca6e31f6568', 'c02c96c2-d7b7-418a-b5ed-b15a99315ae8', NULL, 3, 10000.00, 30000.00, '2025-06-13 16:41:26', '2025-06-13 16:41:26'),
('eac0d3f8-ad9f-4dd1-9947-1e9bb911ac16', '916caaf5-a526-4ebc-b404-6bacc8cafe37', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', NULL, 1, 10000.00, 10000.00, '2025-03-28 19:44:59', '2025-03-28 19:44:59'),
('ed48bbeb-9a03-46aa-9383-660ff6c27422', '379b5811-8645-46ae-8ec3-c4802a0a1268', 'dda1c016-6dcb-4e1f-a5dc-e3611e46d95d', NULL, 3, 10000.00, 30000.00, '2025-06-13 16:37:09', '2025-06-13 16:37:09'),
('f58d49b0-8c23-4d94-a1c6-0154cf47a967', 'c21373c4-ea6e-4305-b800-1ca6e31f6568', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', NULL, 2, 10000.00, 20000.00, '2025-06-13 16:41:26', '2025-06-13 16:41:26'),
('f896ebe1-dbd2-4635-96c8-9b30e090afe3', '6ff8c95b-fbb0-4d09-9d4c-3d4186c646f5', '430469b5-c520-4a7f-a675-f4ec6f90fa94', NULL, 1, 10000.00, 10000.00, '2025-03-29 10:40:13', '2025-03-29 10:40:13');

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
  `customer_email` varchar(255) DEFAULT NULL,
  `totaljual` decimal(10,2) NOT NULL,
  `useruuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tanggal` date NOT NULL,
  `status_pembayaran` enum('pending','settlement','capture','deny','cancel','expire') DEFAULT NULL,
  `pembayaran` enum('qris','cash') NOT NULL,
  `oredermeja` enum('true','false') DEFAULT NULL,
  `cashier_accepted` enum('false','true','auto') DEFAULT NULL,
  `waiting_confirmation` enum('false','true') DEFAULT NULL,
  `tableId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksis`
--

INSERT INTO `transaksis` (`uuid`, `barangUuid`, `order_id`, `customer_name`, `customer_phone`, `customer_email`, `totaljual`, `useruuid`, `tanggal`, `status_pembayaran`, `pembayaran`, `oredermeja`, `cashier_accepted`, `waiting_confirmation`, `tableId`, `createdAt`, `updatedAt`) VALUES
('004d2136-0ae9-42e1-9a0c-7f96375f551f', NULL, 'ORDER-1749803497912', NULL, NULL, NULL, 10000.00, '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-06-13', 'settlement', 'cash', NULL, NULL, NULL, NULL, '2025-06-13 15:31:37', '2025-06-13 15:31:37'),
('17a5caaf-6ed8-4dd1-93ef-3face774cf2b', NULL, 'ORDER-1743502502240', NULL, NULL, NULL, 10000.00, '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-04-01', 'settlement', 'cash', NULL, NULL, NULL, NULL, '2025-04-01 17:15:02', '2025-04-01 17:15:02'),
('2b090c1f-2c98-4e35-9951-638b94b2fd4a', NULL, 'ORDER-1749807915166', 'Agus', '088222668778', 'pujiermanto@gmail.com', 30000.00, '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-06-13', 'settlement', 'cash', NULL, NULL, NULL, NULL, '2025-06-13 16:45:15', '2025-06-13 16:45:15'),
('379b5811-8645-46ae-8ec3-c4802a0a1268', NULL, 'ORDER-1749807429659', 'Puji Aje Deh', '085971630027', 'pujiermanto@gmail.com', 110000.00, '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-06-13', 'settlement', 'cash', NULL, NULL, NULL, NULL, '2025-06-13 16:37:09', '2025-06-13 16:37:09'),
('423ca447-e1d1-4f57-b77b-ffc3c8301f95', NULL, 'ORDER-1749806038076', 'Puji', '0859878217313', 'pujiermantO@gmail.com', 50000.00, '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-06-13', 'settlement', 'cash', NULL, NULL, NULL, NULL, '2025-06-13 16:13:58', '2025-06-13 16:13:58'),
('4c149ee3-5e08-4260-91de-e977b06009de', NULL, 'ORDER-1749807116152', 'Puji Namex', '08976123213', 'pujiermanto@gmail.com', 70000.00, '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-06-13', 'settlement', 'cash', NULL, NULL, NULL, NULL, '2025-06-13 16:31:56', '2025-06-13 16:31:56'),
('4fff0e96-8de5-4e8b-a68c-4d00f75a3ff8', NULL, 'ORDER-1743502766650', NULL, NULL, NULL, 20000.00, '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-04-01', 'cancel', 'qris', NULL, NULL, NULL, NULL, '2025-04-01 17:19:26', '2025-04-01 17:35:28'),
('57f8b914-9b47-4bbe-848f-5c48496a28cf', NULL, 'ORDER-1749810576109', 'Puji Ermanto', '085971630027', 'pujiermanto@gmail.com', 75000.00, '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-06-13', 'settlement', 'cash', NULL, NULL, NULL, NULL, '2025-06-13 17:29:36', '2025-06-13 17:29:36'),
('6559f207-bb5c-4640-8af9-0132c9325e8d', NULL, 'ORDER-1743165897966', NULL, NULL, NULL, 20000.00, '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-03-28', 'cancel', 'qris', NULL, NULL, NULL, NULL, '2025-03-28 19:44:57', '2025-03-28 20:01:03'),
('67e1b52c-c04a-427a-ad31-e81968757150', NULL, 'ORDER-1743108302856', NULL, NULL, NULL, 20000.00, '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-03-28', 'settlement', 'cash', NULL, NULL, NULL, NULL, '2025-03-28 03:45:02', '2025-03-28 03:45:02'),
('6db68158-7b36-4bdf-bb4a-a533f69737d2', NULL, 'ORDER-1749806529508', 'Puji Ermanto', '0892173131', 'pujiermanto@gmail.com', 50000.00, '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-06-13', 'settlement', 'cash', NULL, NULL, NULL, NULL, '2025-06-13 16:22:09', '2025-06-13 16:22:09'),
('6ff8c95b-fbb0-4d09-9d4c-3d4186c646f5', NULL, 'ORDER-1743219613462', NULL, NULL, NULL, 30001.00, '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-03-29', 'settlement', 'cash', NULL, NULL, NULL, NULL, '2025-03-29 10:40:13', '2025-03-29 10:40:13'),
('7ee2bea1-94f6-434e-827f-b1efc361c93c', NULL, 'ORDER-1749803784739', NULL, NULL, NULL, 50000.00, '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-06-13', 'settlement', 'cash', NULL, NULL, NULL, NULL, '2025-06-13 15:36:24', '2025-06-13 15:36:24'),
('8c5515e7-8a7a-4803-aa81-606351b94120', NULL, 'TABLE-11-1743186100066-Cuostumer: Bimo', NULL, NULL, NULL, 1.00, '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-03-29', 'settlement', 'qris', 'true', 'true', 'false', 11, '2025-03-29 01:21:40', '2025-03-29 01:22:46'),
('912e629d-623a-4ae7-ad1b-ba1f1fda55a6', NULL, 'ORDER-1749808229821', 'Suroto', '089127176654', 'pujiermanto@gmail.com', 125000.00, '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-06-13', 'settlement', 'cash', NULL, NULL, NULL, NULL, '2025-06-13 16:50:29', '2025-06-13 16:50:29'),
('916caaf5-a526-4ebc-b404-6bacc8cafe37', NULL, 'ORDER-1743165899776', NULL, NULL, NULL, 20000.00, '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-03-28', 'cancel', 'qris', NULL, NULL, NULL, NULL, '2025-03-28 19:44:59', '2025-03-28 20:01:03'),
('9c8ca512-3fbb-4a56-a7fd-4edd1755127b', NULL, 'TABLE-1-1743351689529-Cuostumer: Hhhh', NULL, NULL, NULL, 10002.00, '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-03-30', 'cancel', 'qris', 'true', 'false', 'false', 1, '2025-03-30 23:21:29', '2025-03-30 23:37:41'),
('af61c42a-648c-4ed2-9e35-d7e0f0efd24c', NULL, 'TABLE-11-1743536559716-Cuostumer: Edi', NULL, NULL, NULL, 1.00, '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-04-02', 'cancel', 'qris', 'true', 'false', 'false', 11, '2025-04-02 02:42:39', '2025-04-02 02:58:48'),
('c21373c4-ea6e-4305-b800-1ca6e31f6568', NULL, 'ORDER-1749807686958', 'Gugun Nugraha', '085971630027', 'pujiermanto@gmail.com', 130000.00, '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-06-13', 'settlement', 'cash', NULL, NULL, NULL, NULL, '2025-06-13 16:41:26', '2025-06-13 16:41:26'),
('ca4407e5-952e-443a-83bf-a95066888659', NULL, 'ORDER-1749806197997', 'Dadang', '08787812321', 'pujiermanto@gmail.com', 60000.00, '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-06-13', 'settlement', 'cash', NULL, NULL, NULL, NULL, '2025-06-13 16:16:37', '2025-06-13 16:16:37'),
('d56c9a2b-38ea-4b76-a840-0bc6e87f9c76', NULL, 'TABLE-1-1743286398531-Cuostumer: Jvj ucuf', NULL, NULL, NULL, 8.00, '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-03-30', 'cancel', 'qris', 'true', 'false', 'false', 1, '2025-03-30 05:13:18', '2025-03-30 05:29:33'),
('dda20526-d430-4885-b6d1-d280b0e158ba', NULL, 'TABLE-11-1743537322538-Cuostumer: Bimo', NULL, NULL, NULL, 1.00, '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-04-02', 'settlement', 'qris', 'true', 'true', 'false', 11, '2025-04-02 02:55:22', '2025-04-02 02:56:09'),
('e70a93b7-3ba5-49fd-8844-b8b65f844c15', NULL, 'TABLE-11-1743184068709-Cuostumer: Bimov3', NULL, NULL, NULL, 2.00, '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-03-29', 'settlement', 'qris', 'true', 'true', 'false', 11, '2025-03-29 00:47:48', '2025-03-29 00:50:08'),
('e8b012bd-fa1d-4380-970e-1a1639796a9a', NULL, 'ORDER-1743227850317', NULL, NULL, NULL, 20000.00, '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-03-29', 'cancel', 'qris', NULL, NULL, NULL, NULL, '2025-03-29 12:57:30', '2025-03-29 13:13:36'),
('e98bff99-ef1e-4d85-b878-ee52edee9b85', NULL, 'ORDER-1743227870657', NULL, NULL, NULL, 20000.00, '94e861b3-2af5-447a-91f5-bb285c6f7a3b', '2025-03-29', 'settlement', 'cash', NULL, NULL, NULL, NULL, '2025-03-29 12:57:50', '2025-03-29 12:57:50');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uuid`, `username`, `password`, `role`, `cabanguuid`, `createdAt`, `updatedAt`) VALUES
('2e7d8911-36b1-4599-ada8-0249e1c8d3c4', 'superadmin', '$argon2id$v=19$m=65536,t=3,p=4$UKjXBKCgDuduzKuhyVrdPg$ba5D3py3NEGyWAFwlClsvsHXmdhT3ChPZNOKBHU4BKI', 'superadmin', NULL, '2024-11-28 14:56:03', '2025-01-03 08:53:32'),
('5d93a890-e59c-4121-a370-7a2722e6c66a', 'admin', '$argon2id$v=19$m=65536,t=3,p=4$uracD2odlRq/1xjKdK0xwQ$CfGf1JuAbBz/6aUJQPfSuNIhSOzz7i3uOZM4dwg0dww', 'admin', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', '2024-11-28 15:05:56', '2024-11-28 15:05:56'),
('94e861b3-2af5-447a-91f5-bb285c6f7a3b', 'kasir', '$argon2id$v=19$m=65536,t=3,p=4$Kr2dQPrfW8kRb/8NWUSJHQ$3sOJBodDXWIKqbYf+S0nnj5cRBOPLyRB4Xpl0GbtLL8', 'kasir', 'bb88b401-f02f-4ff9-8b7b-68826173eef7', '2024-11-28 21:01:38', '2025-03-26 15:46:00');

-- --------------------------------------------------------

--
-- Table structure for table `wearhouses`
--

CREATE TABLE `wearhouses` (
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `baranguuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stok_gudang` int(11) NOT NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wearhouses`
--

INSERT INTO `wearhouses` (`uuid`, `baranguuid`, `stok_gudang`, `createdAt`, `updatedAt`) VALUES
('019ff628-835a-47a0-9a63-21f1840c003e', 'ce8aa898-3f6a-4102-8e91-099acfa0fcae', 50, '2025-03-27 17:40:31', '2025-03-27 17:43:35'),
('47234763-cdd4-4767-9728-b3193f599a88', '430469b5-c520-4a7f-a675-f4ec6f90fa94', 50, '2025-03-27 17:39:56', '2025-03-27 17:43:56'),
('890f94f3-196c-42e4-bd97-d999f88b2cdb', 'ba37ba02-9673-47f9-b835-403616ccf9cb', 0, '2025-03-27 17:40:14', '2025-03-27 17:43:52'),
('9764c8ed-2b3b-4f00-9cae-aefa38b4ed55', 'c02c96c2-d7b7-418a-b5ed-b15a99315ae8', 50, '2025-03-27 17:40:23', '2025-03-27 17:43:44'),
('be2e8319-035c-48b4-ba54-36398334a4dd', '6d17c2fb-4e32-4d65-bb67-a71984dc5e09', 52, '2025-03-27 17:40:04', '2025-04-01 09:20:48'),
('ced6a4df-dc81-4c50-81a1-ad342869971a', 'eaee7c5d-347c-45be-b522-2df0dbd3b1e7', 50, '2025-03-29 00:29:16', '2025-03-29 00:30:26'),
('f90b8bdb-0bec-43fa-923e-e5468af12e22', 'dda1c016-6dcb-4e1f-a5dc-e3611e46d95d', 50, '2025-03-27 17:40:38', '2025-03-27 17:44:01');

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
-- Indexes for table `distribusistoks`
--
ALTER TABLE `distribusistoks`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `baranguuid` (`baranguuid`),
  ADD KEY `cabanguuid` (`cabanguuid`);

--
-- Indexes for table `jurnalakuntansis`
--
ALTER TABLE `jurnalakuntansis`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `cabanguuid` (`cabanguuid`),
  ADD KEY `baranguuid` (`baranguuid`);

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`uuid`);

--
-- Indexes for table `mutasistoks`
--
ALTER TABLE `mutasistoks`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `baranguuid` (`baranguuid`),
  ADD KEY `cabanguuid` (`cabanguuid`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cabangUuid` (`cabangUuid`),
  ADD KEY `fk_notifications_transaksi` (`transaksiUuid`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cabangUuid` (`cabangUuid`);

--
-- Indexes for table `transaksidetails`
--
ALTER TABLE `transaksidetails`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `transaksiuuid` (`transaksiuuid`),
  ADD KEY `baranguuid` (`baranguuid`),
  ADD KEY `tableId` (`tableId`);

--
-- Indexes for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `barangUuid` (`barangUuid`),
  ADD KEY `useruuid` (`useruuid`),
  ADD KEY `tableId` (`tableId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `cabanguuid` (`cabanguuid`);

--
-- Indexes for table `wearhouses`
--
ALTER TABLE `wearhouses`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `baranguuid` (`baranguuid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barangcabangs`
--
ALTER TABLE `barangcabangs`
  ADD CONSTRAINT `BarangCabangs_ibfk_1` FOREIGN KEY (`baranguuid`) REFERENCES `barangs` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `BarangCabangs_ibfk_2` FOREIGN KEY (`cabanguuid`) REFERENCES `cabangs` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `barangs`
--
ALTER TABLE `barangs`
  ADD CONSTRAINT `barangs_ibfk_1` FOREIGN KEY (`kategoriuuid`) REFERENCES `kategoris` (`uuid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `distribusistoks`
--
ALTER TABLE `distribusistoks`
  ADD CONSTRAINT `distribusiStoks_ibfk_1` FOREIGN KEY (`baranguuid`) REFERENCES `barangs` (`uuid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `distribusiStoks_ibfk_2` FOREIGN KEY (`cabanguuid`) REFERENCES `cabangs` (`uuid`) ON UPDATE CASCADE;

--
-- Constraints for table `jurnalakuntansis`
--
ALTER TABLE `jurnalakuntansis`
  ADD CONSTRAINT `JurnalAkuntansis_ibfk_1` FOREIGN KEY (`cabanguuid`) REFERENCES `cabangs` (`uuid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `JurnalAkuntansis_ibfk_2` FOREIGN KEY (`baranguuid`) REFERENCES `barangs` (`uuid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mutasistoks`
--
ALTER TABLE `mutasistoks`
  ADD CONSTRAINT `mutasiStoks_ibfk_1` FOREIGN KEY (`baranguuid`) REFERENCES `barangs` (`uuid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `mutasiStoks_ibfk_2` FOREIGN KEY (`cabanguuid`) REFERENCES `cabangs` (`uuid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `Notifications_ibfk_1` FOREIGN KEY (`cabangUuid`) REFERENCES `cabangs` (`uuid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_notifications_transaksi` FOREIGN KEY (`transaksiUuid`) REFERENCES `transaksis` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tables`
--
ALTER TABLE `tables`
  ADD CONSTRAINT `Tables_ibfk_1` FOREIGN KEY (`cabangUuid`) REFERENCES `cabangs` (`uuid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksidetails`
--
ALTER TABLE `transaksidetails`
  ADD CONSTRAINT `TransaksiDetails_ibfk_1` FOREIGN KEY (`transaksiuuid`) REFERENCES `transaksis` (`uuid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `TransaksiDetails_ibfk_2` FOREIGN KEY (`baranguuid`) REFERENCES `barangs` (`uuid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `TransaksiDetails_ibfk_3` FOREIGN KEY (`tableId`) REFERENCES `tables` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD CONSTRAINT `transaksis_ibfk_1` FOREIGN KEY (`barangUuid`) REFERENCES `barangs` (`uuid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksis_ibfk_2` FOREIGN KEY (`useruuid`) REFERENCES `users` (`uuid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksis_ibfk_3` FOREIGN KEY (`tableId`) REFERENCES `tables` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`cabanguuid`) REFERENCES `cabangs` (`uuid`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `wearhouses`
--
ALTER TABLE `wearhouses`
  ADD CONSTRAINT `Wearhouses_ibfk_1` FOREIGN KEY (`baranguuid`) REFERENCES `barangs` (`uuid`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
