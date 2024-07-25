-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2023 at 08:11 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cargo_transport`
--

-- --------------------------------------------------------

--
-- Table structure for table `addcargo_tbl`
--

CREATE TABLE `addcargo_tbl` (
  `sr_no` int(100) NOT NULL,
  `source` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `arival_datetime` datetime(6) NOT NULL,
  `departure_datetime` datetime(6) NOT NULL,
  `capacity` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addcargo_tbl`
--

INSERT INTO `addcargo_tbl` (`sr_no`, `source`, `destination`, `arival_datetime`, `departure_datetime`, `capacity`) VALUES
(5, 'Ocean Frieght', 'Africa', '2023-06-26 10:44:00.000000', '2023-10-05 10:45:00.000000', '1000kg');

-- --------------------------------------------------------

--
-- Table structure for table `booking_tbl`
--

CREATE TABLE `booking_tbl` (
  `booking_id` int(20) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(20) NOT NULL,
  `user_mobile` int(10) NOT NULL,
  `source` varchar(50) NOT NULL,
  `user_company` varchar(50) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `material` varchar(50) NOT NULL,
  `booking_status` varchar(20) NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_tbl`
--

INSERT INTO `booking_tbl` (`booking_id`, `user_name`, `user_email`, `user_mobile`, `source`, `user_company`, `destination`, `material`, `booking_status`, `quantity`) VALUES
(9, 'Tejas Narendra Patil', 'tej@gmail.com', 2147483647, 'Air Frieght', 'Tej Creation', 'Chennai', 'Glassy', 'Approved', 0),
(10, 'tejas ', 'tej@gmail.com', 2147483647, 'Road Fright', 'high', 'Africa', 'Food , Medicine', 'Approved', 100),
(11, 'tej', 'tej@gmail.com', 2147483647, 'Air Frieght', 'asd', 'Chennai', 'Glassy', 'Pending', 100);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `loc.no` int(10) NOT NULL,
  `location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE `user_tbl` (
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_password` varchar(10) NOT NULL,
  `user_mobile` int(10) NOT NULL,
  `user_company` varchar(50) NOT NULL,
  `user_address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`user_name`, `user_email`, `user_password`, `user_mobile`, `user_company`, `user_address`) VALUES
('Darshan Govind Chaudhari', 'darshan@gmail.com', '1234', 2147483647, 'RCPIT', 'Dhule'),
('Jatin Patil', 'jatin@gmail.com', '12345', 2147483647, 'jatin\'s ', 'sambhajinagar'),
('Tejas Narendra Patil', 'tej@gmail.com', 'tej@123', 2147483647, 'Tej Creation', 'Dhule');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcargo_tbl`
--
ALTER TABLE `addcargo_tbl`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `booking_tbl`
--
ALTER TABLE `booking_tbl`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`loc.no`);

--
-- Indexes for table `user_tbl`
--
ALTER TABLE `user_tbl`
  ADD PRIMARY KEY (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addcargo_tbl`
--
ALTER TABLE `addcargo_tbl`
  MODIFY `sr_no` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `booking_tbl`
--
ALTER TABLE `booking_tbl`
  MODIFY `booking_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `loc.no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
