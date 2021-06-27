-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: fdb33.awardspace.net
-- Generation Time: Jun 27, 2021 at 05:55 PM
-- Server version: 5.7.20-log
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `3881360_dbgps`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gps`
--

CREATE TABLE `tbl_gps` (
  `id` int(11) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gps`
--

INSERT INTO `tbl_gps` (`id`, `lat`, `lng`, `created_date`) VALUES
(2, 29.359222, 71.693520, '2021-06-26 17:34:22'),
(3, 29.360691, 71.693657, '2021-06-26 17:34:54'),
(4, 29.363443, 71.694016, '2021-06-26 17:35:25'),
(5, 29.365980, 71.694016, '2021-06-26 17:35:54'),
(6, 29.368837, 71.693893, '2021-06-26 17:36:25'),
(7, 29.371695, 71.693535, '2021-06-26 17:36:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_gps`
--
ALTER TABLE `tbl_gps`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_gps`
--
ALTER TABLE `tbl_gps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
