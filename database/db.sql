-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2022 at 11:14 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tuser`
--

CREATE TABLE `tuser` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('Pegawai','Operator','Administrator','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tuser`
--

INSERT INTO `tuser` (`id`, `username`, `email`, `nama_lengkap`, `password`, `level`) VALUES
(1, 'admin', 'admin@mail.com', 'admin', 'f7e10480d4ee435101f6584400f768c0', 'Administrator'),
(2, 'operator', 'operator@mail.com', 'operator', '4b583376b2767b923c3e1da60d10de59', 'Operator'),
(3, 'pegawai', 'pegawai@mail.com', 'pegawai', '047aeeb234644b9e2d4138ed3bc7976a', 'Pegawai');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `username`, `userIp`, `loginTime`) VALUES
(13, 0, 'pegawai', 0x3a3a31, '2022-04-30 09:00:08'),
(14, 0, 'pegawai', 0x3a3a31, '2022-04-30 09:02:47'),
(15, 0, 'admin', 0x3a3a31, '2022-04-30 09:04:30'),
(16, 0, 'pegawai', 0x3a3a31, '2022-04-30 09:05:21'),
(17, 0, 'operator', 0x3a3a31, '2022-04-30 09:07:22'),
(18, 0, 'pegawai', 0x3a3a31, '2022-04-30 09:08:00'),
(19, 0, 'pegawai', 0x3a3a31, '2022-04-30 09:10:53'),
(20, 0, 'operator', 0x3a3a31, '2022-04-30 09:11:02'),
(21, 0, 'admin', 0x3a3a31, '2022-04-30 09:11:12');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios_token`
--

CREATE TABLE `usuarios_token` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `hash` varchar(32) DEFAULT NULL,
  `used` tinyint(1) DEFAULT 0,
  `expirado_em` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuarios_token`
--

INSERT INTO `usuarios_token` (`id`, `id_usuario`, `hash`, `used`, `expirado_em`) VALUES
(2, 1, '2f89f097c8b49ea6e5899a10d24c0746', 0, '2017-09-25 08:39:00'),
(3, 1, '87d88d23f31abe9318e6bdb78b352667', 1, '2017-09-25 08:48:00'),
(4, 1, '70c65e0ca5eebff926a72d6cc2b95030', 1, '2017-09-25 08:49:00'),
(5, 2, '59dc87b2d9b424f93c49adb2406e387e', 1, '2017-09-25 08:49:00'),
(6, 2, 'f4855bbd5cbf5bbe5cc1a7704d6114d0', 1, '2022-06-28 13:25:00'),
(7, 1, 'da9dee8565df0a22477c06e1590d2e41', 0, '2022-06-28 13:27:00'),
(8, 1, 'f3f6c4bb6ae95148e5bfa1b277ddd58e', 1, '2022-06-28 13:28:00'),
(9, 2, '77c8c6e8994f6f41b305d47226de0ba9', 1, '2022-06-28 13:30:00'),
(10, 3, '4d80606dbf1c1f2912e2babfda118c8f', 0, '2022-06-28 14:26:00'),
(11, 3, '28c6294fcf102d53124c5b1863fab247', 1, '2022-06-28 14:28:00'),
(12, 3, '15792256286efd5efc7031cd38736062', 1, '2022-06-28 16:30:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tuser`
--
ALTER TABLE `tuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD KEY `email_3` (`email`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios_token`
--
ALTER TABLE `usuarios_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tuser`
--
ALTER TABLE `tuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `usuarios_token`
--
ALTER TABLE `usuarios_token`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
