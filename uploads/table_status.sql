-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2024 at 07:25 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `table_status`
--

-- --------------------------------------------------------

--
-- Table structure for table `tablestatus`
--

CREATE TABLE `tablestatus` (
  `id` varchar(5) NOT NULL,
  `zone` enum('a','b','c','d','f','g') NOT NULL,
  `status` enum('true','false','empt') NOT NULL DEFAULT 'empt'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tablestatus`
--

INSERT INTO `tablestatus` (`id`, `zone`, `status`) VALUES
('10a', 'a', 'empt'),
('10b', 'b', 'empt'),
('10c', 'c', 'empt'),
('10d', 'd', 'empt'),
('10f', 'f', 'empt'),
('11a', 'a', 'empt'),
('11b', 'b', 'empt'),
('11c', 'c', 'empt'),
('11d', 'd', 'empt'),
('11f', 'f', 'empt'),
('12a', 'a', 'empt'),
('12b', 'b', 'empt'),
('12c', 'c', 'empt'),
('12d', 'd', 'empt'),
('12f', 'f', 'empt'),
('13a', 'a', 'empt'),
('13c', 'c', 'empt'),
('13d', 'd', 'empt'),
('13f', 'f', 'empt'),
('14a', 'a', 'empt'),
('14c', 'c', 'empt'),
('14d', 'd', 'empt'),
('14f', 'f', 'empt'),
('15a', 'a', 'empt'),
('15c', 'c', 'empt'),
('15d', 'd', 'empt'),
('15f', 'f', 'empt'),
('16a', 'a', 'empt'),
('16c', 'c', 'empt'),
('16d', 'd', 'empt'),
('16f', 'f', 'empt'),
('17a', 'a', 'empt'),
('17c', 'c', 'empt'),
('17d', 'd', 'empt'),
('17f', 'f', 'empt'),
('18a', 'a', 'empt'),
('18c', 'c', 'empt'),
('18d', 'd', 'empt'),
('18f', 'f', 'empt'),
('19a', 'a', 'empt'),
('19c', 'c', 'empt'),
('19d', 'd', 'empt'),
('19f', 'f', 'empt'),
('1a', 'a', 'empt'),
('1b', 'b', 'empt'),
('1c', 'c', 'empt'),
('1d', 'd', 'empt'),
('1f', 'f', 'empt'),
('1g', 'g', 'empt'),
('20a', 'a', 'empt'),
('20c', 'c', 'empt'),
('20d', 'd', 'empt'),
('20f', 'f', 'empt'),
('21a', 'a', 'empt'),
('21c', 'c', 'empt'),
('21d', 'd', 'empt'),
('21f', 'f', 'empt'),
('22a', 'a', 'empt'),
('22c', 'c', 'empt'),
('22d', 'd', 'empt'),
('22f', 'f', 'empt'),
('23a', 'a', 'empt'),
('23c', 'c', 'empt'),
('23d', 'd', 'empt'),
('23f', 'f', 'empt'),
('24a', 'a', 'empt'),
('24c', 'c', 'empt'),
('24d', 'd', 'empt'),
('24f', 'f', 'empt'),
('25a', 'a', 'empt'),
('25c', 'c', 'empt'),
('25d', 'd', 'empt'),
('25f', 'f', 'empt'),
('26c', 'c', 'empt'),
('26d', 'd', 'empt'),
('26f', 'f', 'empt'),
('27c', 'c', 'empt'),
('27d', 'd', 'empt'),
('27f', 'f', 'empt'),
('28c', 'c', 'empt'),
('28d', 'd', 'empt'),
('28f', 'f', 'empt'),
('29c', 'c', 'empt'),
('29d', 'd', 'empt'),
('29f', 'f', 'empt'),
('2a', 'a', 'empt'),
('2b', 'b', 'empt'),
('2c', 'c', 'empt'),
('2d', 'd', 'empt'),
('2f', 'f', 'empt'),
('2g', 'g', 'empt'),
('30c', 'c', 'empt'),
('30d', 'd', 'empt'),
('30f', 'f', 'empt'),
('31c', 'c', 'empt'),
('31d', 'd', 'empt'),
('31f', 'f', 'empt'),
('32c', 'c', 'empt'),
('32d', 'd', 'empt'),
('32f', 'f', 'empt'),
('33c', 'c', 'empt'),
('33d', 'd', 'empt'),
('33f', 'f', 'empt'),
('34c', 'c', 'empt'),
('34d', 'd', 'empt'),
('34f', 'f', 'empt'),
('35c', 'c', 'empt'),
('35d', 'd', 'empt'),
('35f', 'f', 'empt'),
('36c', 'c', 'empt'),
('36d', 'd', 'empt'),
('36f', 'f', 'empt'),
('3a', 'a', 'empt'),
('3b', 'b', 'empt'),
('3c', 'c', 'empt'),
('3d', 'd', 'empt'),
('3f', 'f', 'empt'),
('3g', 'g', 'empt'),
('4a', 'a', 'empt'),
('4b', 'b', 'empt'),
('4c', 'c', 'empt'),
('4d', 'd', 'empt'),
('4f', 'f', 'empt'),
('4g', 'g', 'empt'),
('5a', 'a', 'empt'),
('5b', 'b', 'empt'),
('5c', 'c', 'empt'),
('5d', 'd', 'empt'),
('5f', 'f', 'empt'),
('5g', 'g', 'empt'),
('6a', 'a', 'empt'),
('6b', 'b', 'empt'),
('6c', 'c', 'empt'),
('6d', 'd', 'empt'),
('6f', 'f', 'empt'),
('6g', 'g', 'empt'),
('7a', 'a', 'empt'),
('7b', 'b', 'empt'),
('7c', 'c', 'empt'),
('7d', 'd', 'empt'),
('7f', 'f', 'empt'),
('7g', 'g', 'empt'),
('8a', 'a', 'empt'),
('8b', 'b', 'empt'),
('8c', 'c', 'empt'),
('8d', 'd', 'empt'),
('8f', 'f', 'empt'),
('8g', 'g', 'empt'),
('9a', 'a', 'empt'),
('9b', 'b', 'empt'),
('9c', 'c', 'empt'),
('9d', 'd', 'empt'),
('9f', 'f', 'empt'),
('9g', 'g', 'empt');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tablestatus`
--
ALTER TABLE `tablestatus`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
