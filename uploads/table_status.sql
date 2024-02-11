-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2024 at 07:03 AM
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
  `status` enum('true','false','empt') NOT NULL DEFAULT 'empt',
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tablestatus`
--

INSERT INTO `tablestatus` (`id`, `zone`, `status`, `no`) VALUES
('10a', 'a', 'empt', 10),
('10b', 'b', 'empt', 10),
('10c', 'c', 'empt', 10),
('10d', 'd', 'empt', 10),
('10f', 'f', 'empt', 10),
('11a', 'a', 'true', 11),
('11b', 'b', 'empt', 11),
('11c', 'c', 'empt', 11),
('11d', 'd', 'empt', 11),
('11f', 'f', 'empt', 11),
('12a', 'a', 'empt', 12),
('12b', 'b', 'empt', 12),
('12c', 'c', 'empt', 12),
('12d', 'd', 'empt', 12),
('12f', 'f', 'empt', 12),
('13a', 'a', 'empt', 13),
('13c', 'c', 'empt', 13),
('13d', 'd', 'empt', 13),
('13f', 'f', 'empt', 13),
('14a', 'a', 'empt', 14),
('14c', 'c', 'empt', 14),
('14d', 'd', 'empt', 14),
('14f', 'f', 'empt', 14),
('15a', 'a', 'empt', 15),
('15c', 'c', 'empt', 15),
('15d', 'd', 'empt', 15),
('15f', 'f', 'empt', 15),
('16a', 'a', 'empt', 16),
('16c', 'c', 'empt', 16),
('16d', 'd', 'empt', 16),
('16f', 'f', 'empt', 16),
('17a', 'a', 'empt', 17),
('17c', 'c', 'empt', 17),
('17d', 'd', 'empt', 17),
('17f', 'f', 'empt', 17),
('18a', 'a', 'empt', 18),
('18c', 'c', 'empt', 18),
('18d', 'd', 'empt', 18),
('18f', 'f', 'empt', 18),
('19a', 'a', 'empt', 19),
('19c', 'c', 'empt', 19),
('19d', 'd', 'empt', 19),
('19f', 'f', 'empt', 19),
('1a', 'a', 'empt', 1),
('1b', 'b', 'empt', 1),
('1c', 'c', 'empt', 1),
('1d', 'd', 'empt', 1),
('1f', 'f', 'empt', 1),
('1g', 'g', 'empt', 1),
('20a', 'a', 'empt', 20),
('20c', 'c', 'empt', 20),
('20d', 'd', 'empt', 20),
('20f', 'f', 'empt', 20),
('21a', 'a', 'empt', 21),
('21c', 'c', 'empt', 21),
('21d', 'd', 'empt', 21),
('21f', 'f', 'empt', 21),
('22a', 'a', 'empt', 22),
('22c', 'c', 'empt', 22),
('22d', 'd', 'empt', 22),
('22f', 'f', 'empt', 22),
('23a', 'a', 'empt', 23),
('23c', 'c', 'empt', 23),
('23d', 'd', 'empt', 23),
('23f', 'f', 'empt', 23),
('24a', 'a', 'empt', 24),
('24c', 'c', 'empt', 24),
('24d', 'd', 'empt', 24),
('24f', 'f', 'empt', 24),
('25a', 'a', 'empt', 25),
('25c', 'c', 'empt', 25),
('25d', 'd', 'empt', 25),
('25f', 'f', 'empt', 25),
('26c', 'c', 'empt', 26),
('26d', 'd', 'empt', 26),
('26f', 'f', 'empt', 26),
('27c', 'c', 'empt', 27),
('27d', 'd', 'empt', 27),
('27f', 'f', 'empt', 27),
('28c', 'c', 'empt', 28),
('28d', 'd', 'empt', 28),
('28f', 'f', 'empt', 28),
('29c', 'c', 'empt', 29),
('29d', 'd', 'empt', 29),
('29f', 'f', 'empt', 29),
('2a', 'a', 'empt', 2),
('2b', 'b', 'empt', 2),
('2c', 'c', 'empt', 2),
('2d', 'd', 'empt', 2),
('2f', 'f', 'empt', 2),
('2g', 'g', 'empt', 2),
('30c', 'c', 'empt', 30),
('30d', 'd', 'empt', 30),
('30f', 'f', 'empt', 30),
('31c', 'c', 'empt', 31),
('31d', 'd', 'empt', 31),
('31f', 'f', 'empt', 31),
('32c', 'c', 'empt', 32),
('32d', 'd', 'empt', 32),
('32f', 'f', 'empt', 32),
('33c', 'c', 'empt', 33),
('33d', 'd', 'empt', 33),
('33f', 'f', 'empt', 33),
('34c', 'c', 'empt', 34),
('34d', 'd', 'empt', 34),
('34f', 'f', 'empt', 34),
('35c', 'c', 'empt', 35),
('35d', 'd', 'empt', 35),
('35f', 'f', 'empt', 35),
('36c', 'c', 'empt', 36),
('36d', 'd', 'empt', 36),
('36f', 'f', 'empt', 36),
('3a', 'a', 'empt', 3),
('3b', 'b', 'empt', 3),
('3c', 'c', 'empt', 3),
('3d', 'd', 'empt', 3),
('3f', 'f', 'empt', 3),
('3g', 'g', 'empt', 3),
('4a', 'a', 'empt', 4),
('4b', 'b', 'empt', 4),
('4c', 'c', 'empt', 4),
('4d', 'd', 'empt', 4),
('4f', 'f', 'empt', 4),
('4g', 'g', 'empt', 4),
('5a', 'a', 'empt', 5),
('5b', 'b', 'empt', 5),
('5c', 'c', 'empt', 5),
('5d', 'd', 'empt', 5),
('5f', 'f', 'empt', 5),
('5g', 'g', 'empt', 5),
('6a', 'a', 'empt', 6),
('6b', 'b', 'empt', 6),
('6c', 'c', 'empt', 6),
('6d', 'd', 'empt', 6),
('6f', 'f', 'empt', 6),
('6g', 'g', 'empt', 6),
('7a', 'a', 'empt', 7),
('7b', 'b', 'empt', 7),
('7c', 'c', 'empt', 7),
('7d', 'd', 'empt', 7),
('7f', 'f', 'empt', 7),
('7g', 'g', 'empt', 7),
('8a', 'a', 'empt', 8),
('8b', 'b', 'empt', 8),
('8c', 'c', 'empt', 8),
('8d', 'd', 'empt', 8),
('8f', 'f', 'empt', 8),
('8g', 'g', 'empt', 8),
('9a', 'a', 'empt', 9),
('9b', 'b', 'empt', 9),
('9c', 'c', 'true', 9),
('9d', 'd', 'empt', 9),
('9f', 'f', 'empt', 9),
('9g', 'g', 'empt', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tablestatus`
--
ALTER TABLE `tablestatus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sort` (`no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
