-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 05:37 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs`
--

-- --------------------------------------------------------

--
-- Table structure for table `crudnode`
--

CREATE TABLE `crudnode` (
  `staffid` text NOT NULL,
  `staffname` text NOT NULL,
  `department` text NOT NULL,
  `emailid` text NOT NULL,
  `phnno` text NOT NULL,
  `password` text NOT NULL,
  `cpassword` text NOT NULL,
  `position` text NOT NULL,
  `subject` text NOT NULL,
  `yrofjoin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `crudnode`
--

INSERT INTO `crudnode` (`staffid`, `staffname`, `department`, `emailid`, `phnno`, `password`, `cpassword`, `position`, `subject`, `yrofjoin`) VALUES
('', '', 'msc', '', '', '', '', '', '', ''),
('78', 'aha', 'msc', 'ha@gmail.com', '1234', '123', '123', 'staff', 'ta', '2000'),
('79', 'dgdg', 'msc', 'adskjk@gmail.com', '1244', '1234', '1233', 'ts', 'dj', '1990'),
('80', 'hs', 'msc', 'adskjk@gmail.com', '23347', '3847', '847', 'kf', 'dj', '2022'),
('90', 'hdjs', 'msc', 'he@gmail.com', '2847', '2132', '121', 'wkdj', 'wkjf', '2004');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crudnode`
--
ALTER TABLE `crudnode`
  ADD PRIMARY KEY (`staffid`(15));
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
