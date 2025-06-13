-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2025 at 12:22 PM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `barangUuid` (`barangUuid`),
  ADD KEY `useruuid` (`useruuid`),
  ADD KEY `tableId` (`tableId`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksis`
--
ALTER TABLE `transaksis`
  ADD CONSTRAINT `transaksis_ibfk_1` FOREIGN KEY (`barangUuid`) REFERENCES `barangs` (`uuid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksis_ibfk_2` FOREIGN KEY (`useruuid`) REFERENCES `users` (`uuid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksis_ibfk_3` FOREIGN KEY (`tableId`) REFERENCES `tables` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
