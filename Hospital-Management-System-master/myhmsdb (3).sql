-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2023 at 02:14 PM
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
-- Database: `myhmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(0, 14, 'Nick ', 'Pope', 'Male', 'popenick@gmail.com', '0789898989', 'Ken Mutua', 600, '2023-04-12', '08:00:00', 1, 1),
(0, 15, 'Moses', 'Kuria', 'Male', 'moseskuria@gmail.com', '0799999999', 'Jerry Rolinse', 0, '2023-04-14', '10:00:00', 1, 1),
(0, 16, 'Moses', 'Kuria', 'Male', 'moseskuria@gmail.com', '0799999999', 'Nancy Mwatoroka', 0, '2023-04-12', '12:00:00', 1, 0),
(0, 17, 'Mercy ', 'Mwanyalo', 'Female', 'mercymwa@gmail.com', '0712345678', 'Roy Wafula', 0, '2023-04-22', '10:00:00', 1, 1),
(0, 18, 'Faith', 'Baya', 'Female', 'faithbaya00@gmail.com', '0798846141', 'Leila Yusuf', 0, '2023-04-20', '12:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Jane', 'jane@gmail.com', '7869869757', 'I love your service!'),
('John ', 'johnkili@gmail.com', '0112345678', 'Hello');

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `email`, `spec`, `docFees`) VALUES
('Jerry Rolinse', '123456', 'jerry@gmail.com', 'Cardiologist', 1000),
('Leila Yusuf', '123456', 'leilayusuf@gmail.com', 'Neurologist', 2000),
('Nancy Mwatoroka', '123456', 'nancymwat@gmail.com', 'Cardiologist', 1500),
('Ken Mutua', '123456', 'mutuaken@gmail.com', 'Pediatrician', 1500),
('Roy Wafula', '123456', 'wafularoy@gmail.com', 'General', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES
(7, 'Nancy', 'Deborah', 'Female', 'nancy@gmail.com', '9128972454', 'nancy123', 'nancy123'),
(8, 'Kenny', 'Sebastian', 'Male', 'kenny@gmail.com', '9809879868', 'kenny123', 'kenny123'),
(9, 'William', 'Blake', 'Male', 'william@gmail.com', '8683619153', 'william123', 'william123'),
(12, 'Mercy ', 'Mwanyalo', 'Female', 'mercymwa@gmail.com', '0712345678', '123456', '123456'),
(13, 'Nick ', 'Pope', 'Male', 'popenick@gmail.com', '0789898989', '123456', '123456'),
(14, 'Moses', 'Kuria', 'Male', 'moseskuria@gmail.com', '0799999999', '123456', '123456'),
(15, 'Faith', 'Baya', 'Female', 'faithbaya00@gmail.com', '0798846141', '123456', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('Ken Mutua', 0, 14, 'Nick ', 'Pope', '2023-04-12', '08:00:00', 'Malaria', 'Sleep', 'paracetamol\r\nbed rest\r\nwarm water\r\n'),
('Ken Mutua', 0, 14, 'Nick ', 'Pope', '2023-04-12', '08:00:00', 'Skin Rush', 'None', 'Apply the griseofuluirl twice per day.\r\nTake a lot of water\r\ntake a bed rest'),
('Nancy Mwatoroka', 0, 16, 'Moses', 'Kuria', '2023-04-12', '12:00:00', 'TB', 'Skin', 'Take 2 tablets of paracetamol twice per day\r\ntake cough syrup '),
('Leila Yusuf', 0, 18, 'Faith', 'Baya', '2023-04-20', '12:00:00', 'malaria', 'none', 'paracitamol '),
('Leila Yusuf', 0, 18, 'Faith', 'Baya', '2023-04-20', '12:00:00', 'malaria', 'none', 'paracitamol');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
