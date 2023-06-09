-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jun 11, 2023 at 08:07 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project4`
--

-- --------------------------------------------------------

--
-- Table structure for table `cancellation`
--

CREATE TABLE `cancellation` (
  `pnr_no` varchar(30) NOT NULL,
  `cancellation_no` varchar(30) NOT NULL,
  `cancellation_date` varchar(30) NOT NULL,
  `ticket_id` varchar(100) NOT NULL,
  `fli_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cancellation`
--

INSERT INTO `cancellation` (`pnr_no`, `cancellation_no`, `cancellation_date`, `ticket_id`, `fli_code`) VALUES
('10', '1', '31/11/2022', '', 'f02'),
('10', '1', '31/11/2022', '', 'f02'),
('10', '1', '31/11/2022', '12111484', 'f02'),
('', '', '', '', ''),
('10', '2', '31/12/2022', '12111484', 'f01'),
('10', '2', '31/11/2022', '12111484', 'f01');

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `f_code` varchar(30) NOT NULL,
  `f_name` varchar(30) NOT NULL,
  `src` varchar(30) NOT NULL,
  `dst` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`f_code`, `f_name`, `src`, `dst`) VALUES
('f1005', 'flight 1005', 'Philippines', 'United States'),
('12', '', '', ''),
('f01', 'Denver Airlines', 'India', 'Russia'),
('12', '', '', ''),
('f01', 'Denver Airlines', 'India', 'Russia');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'admin'),
('sneha', 'sneha34');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `pnr_no` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `ph_no` varchar(30) NOT NULL,
  `passport_no` varchar(30) NOT NULL,
  `fl_code` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`pnr_no`, `address`, `nationality`, `name`, `gender`, `ph_no`, `passport_no`, `fl_code`) VALUES
('11', 'Negros Occidental, Philippines', 'Filipino', '', 'male', '09272777334', 'SAR081119', 'f1005'),
('121231', 'hsfygs', 'sdfe', 'fa', 'male', '789', '113213', '1123'),
('78', 'gd', 'dgs', 'fbsgt', 'male', '76', 'rb', 'hihb'),
('1234', 'Indian Gully', 'Indian', 'Harox', 'male', '7249691520', '12345678', 'f01'),
('10', 'sukhsagr', 'Russian', 'Sanket', 'male', '980157893', '1234', 'f01'),
('123', 'Sukhsagar', 'Indian', 'Harshal', 'male', '7249691520', '12345678', 'f01'),
('2', 'Sukhsagar', 'Indian', 'Harox', 'male', '7249691520', '12111484', 'f01'),
('', '', '', '', 'null', '', '', ''),
('', '', '', '', 'null', '', '', ''),
('', '', '', '', 'null', '', '', ''),
('32', 'Bibewewadi', 'Indian', 'Om ', 'male', '9527374289', '12110518', 'f02'),
('1', 'Su', 'Indian', 'Harshal', 'male', '7249691520', '12111484', 'f01');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pnr_no` varchar(30) NOT NULL,
  `ph_no` varchar(30) NOT NULL,
  `cheque_no` varchar(30) NOT NULL,
  `card_no` varchar(30) NOT NULL,
  `paid_amt` varchar(30) NOT NULL,
  `pay_date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pnr_no`, `ph_no`, `cheque_no`, `card_no`, `paid_amt`, `pay_date`) VALUES
('11', '09272777334', '1222', '121-121', '1000', '2022-05-05'),
('10', '7249691520', '12456', 'ABC20', '1000', '31-12-2022'),
('10', '7249691520', '12456', 'ABC20', '1000', '31-12-2022');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `pnr_no` varchar(30) NOT NULL,
  `ticket_id` varchar(30) NOT NULL,
  `f_code` varchar(30) NOT NULL,
  `jny_date` varchar(30) NOT NULL,
  `jny_time` varchar(30) NOT NULL,
  `src` varchar(30) NOT NULL,
  `dst` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`pnr_no`, `ticket_id`, `f_code`, `jny_date`, `jny_time`, `src`, `dst`) VALUES
('11', '111', 'f1005', '2022-05-05', '1:00 PM', 'Philippines', 'United States'),
('10', '12111484', 'f02', '31/12/2022', '15:00', 'India', 'Russia'),
('10', '12111484', 'f02', '31/12/2022', '15:00', 'India', 'Russia');

-- --------------------------------------------------------

--
-- Table structure for table `sector`
--

CREATE TABLE `sector` (
  `flight_code` varchar(30) NOT NULL,
  `capacity` varchar(30) NOT NULL,
  `class_code` varchar(30) NOT NULL,
  `class_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sector`
--

INSERT INTO `sector` (`flight_code`, `capacity`, `class_code`, `class_name`) VALUES
('f1005', '500', 'A', 'FIRST CLASS'),
('f1005', '500', 'B', 'BUSINESS CLASS'),
('f1005', '500', 'C', 'ECONOMY');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
