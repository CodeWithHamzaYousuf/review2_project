-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2024 at 05:17 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covid19`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `ID` int(10) NOT NULL,
  `task` varchar(11300) NOT NULL,
  `branch` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`ID`, `task`, `branch`) VALUES
(810, 'walterjnr1 Added Activity Log On ', 'Ikot Obong Edong, Ikot Ekpene, Akwa Ibom'),
(809, 'walterjnr1 Added Activity Log On ', 'Ikot Obong Edong, Ikot Ekpene, Akwa Ibom'),
(808, 'walterjnr1 Added Activity Log On ', 'Ikot Obong Edong, Ikot Ekpene, Akwa Ibom'),
(807, 'walterjnr1 Added Activity Log On ', 'Ikot Obong Edong, Ikot Ekpene, Akwa Ibom'),
(805, 'walterjnr1 Added Activity Log On ', 'Ikot Obong Edong, Ikot Ekpene, Akwa Ibom'),
(806, 'walterjnr1 Added Activity Log On ', 'Ikot Obong Edong, Ikot Ekpene, Akwa Ibom');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(3) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `fullname` varchar(35) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `username`, `password`, `fullname`, `status`) VALUES
(1, 'admin', 'hamza123', 'Hamza Yousuf', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_no` int(10) NOT NULL,
  `category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_general_ci COMMENT='States in Nigeria.';

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_no`, `category`) VALUES
(1, 'Private'),
(2, 'Public');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `id_no` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `vaccination_center` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_general_ci COMMENT='Local governments in Nigeria.';

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id_no`, `category_id`, `vaccination_center`) VALUES
(1, 1, 'Khawaja Hospital'),
(2, 1, 'Roshaan Hospital'),
(3, 2, 'Abbassi Shaheed Hospital'),
(4, 2, 'Aga Khan Hospital'),
(5, 2, 'P.N.S Rahat Hospital'),
(6, 2, 'Jinnah Postgraduate Medical Centre'),
(7, 2, 'Indus Hospital and Health Network'),
(18, 2, 'Saifee Hospital, Karachi');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(3) NOT NULL,
  `vaccinationID` varchar(11) NOT NULL,
  `fullname` varchar(40) NOT NULL,
  `email` varchar(35) NOT NULL,
  `sex` varchar(6) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `age` int(3) NOT NULL,
  `ID_type` varchar(20) NOT NULL,
  `address` varchar(40) NOT NULL,
  `work` varchar(10) NOT NULL,
  `health_facility` varchar(15) NOT NULL,
  `vaccination_center` varchar(40) NOT NULL,
  `vaccinationDate` varchar(20) NOT NULL,
  `timeslot` varchar(15) NOT NULL,
  `status` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `vaccinationID`, `fullname`, `email`, `sex`, `phone`, `age`, `ID_type`, `address`, `work`, `health_facility`, `vaccination_center`, `vaccinationDate`, `timeslot`, `status`) VALUES
(11, 'V1911610914', 'hamza', 'sabihahsan666@gmail.com', 'female', '03352716839', 5, 'Polio', 'Liaquatabad,Karachi', 'Yes', 'Private', 'Roshaan Hospital', '2024-10-23', 'Afternoon', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `vaccination`
--

CREATE TABLE `vaccination` (
  `ID` int(3) NOT NULL,
  `vaccinationID` varchar(15) NOT NULL,
  `vaccination_type` varchar(50) NOT NULL,
  `center` varchar(200) NOT NULL,
  `dose` int(6) NOT NULL,
  `vaccination_date` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vaccination`
--

INSERT INTO `vaccination` (`ID`, `vaccinationID`, `vaccination_type`, `center`, `dose`, `vaccination_date`) VALUES
(8, 'V1911610914', 'Inactivated Polio Vaccine (IPV)', 'Ziauddin University Hospital', 1, '2024-10-19 12:52:58'),
(9, 'V1911610914', '', '', 3, '2024-10-19 13:03:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_no`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id_no`),
  ADD KEY `state_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `vaccination`
--
ALTER TABLE `vaccination`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=775;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vaccination`
--
ALTER TABLE `vaccination`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
