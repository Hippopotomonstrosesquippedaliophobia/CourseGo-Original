-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2018 at 09:04 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coursego`
--

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `ID` varchar(11) NOT NULL DEFAULT '-1',
  `CompositionE` double DEFAULT '-1',
  `CompositionT` double DEFAULT '-1',
  `ComprehensionE` double DEFAULT '-1',
  `ComprehensionT` double DEFAULT '-1',
  `GrammarE` double DEFAULT '-1',
  `GrammarT` double NOT NULL DEFAULT '-1',
  `MathE` double NOT NULL DEFAULT '-1',
  `MathT` double NOT NULL DEFAULT '-1',
  `SpellingE` double NOT NULL DEFAULT '-1',
  `SpellingT` double NOT NULL DEFAULT '-1',
  `ReadingE` double NOT NULL DEFAULT '-1',
  `ReadingT` double NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`ID`, `CompositionE`, `CompositionT`, `ComprehensionE`, `ComprehensionT`, `GrammarE`, `GrammarT`, `MathE`, `MathT`, `SpellingE`, `SpellingT`, `ReadingE`, `ReadingT`) VALUES
('1', 90, 100, 70.5, 80, 60.5, 60, 50.5, 50, 40.5, 40, 95.55, 100),
('4', 80, 90, 99, 67, 96, 45.55, 76.45, 100, 98, 80, 89, 67),
('56', 30, 50, 30, 30, 30, 30, 90, 90, 90, 90, 90, 90),
('567', -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
('6', -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
('88486', -1, 90, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1),
('990208-0093', -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);

-- --------------------------------------------------------

--
-- Table structure for table `loginusers`
--

CREATE TABLE `loginusers` (
  `pfname` varchar(50) NOT NULL,
  `plname` varchar(50) NOT NULL,
  `studentid` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `id` int(11) NOT NULL,
  `privilege` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginusers`
--

INSERT INTO `loginusers` (`pfname`, `plname`, `studentid`, `username`, `password`, `id`, `privilege`) VALUES
('Jane', 'Foster', 1, 'Jane', 'password', 1, 'user'),
('James', 'Bond', 0, 'James', '007', 2, 'editor'),
('Administrator', 'Account', 0, 'admin', 'admin', 3, 'admin'),
('tutor', 'tutor', 0, 'tutor', 'tutor', 4, 'editor'),
('Dara ', 'Jane', 88486, 'Dara', 'password', 5, 'user'),
('Faith', 'Hilltop', 4, 'Faith', 'password', 6, 'user'),
('Ria ', 'Benn', 6, 'Ria', 'password', 7, 'user'),
('Ricky', 'Morty', 56, 'Ricky', 'password', 8, 'user'),
('editor', 'editor', 0, 'editor', 'editor', 9, 'editor');

-- --------------------------------------------------------

--
-- Table structure for table `studentinfo`
--

CREATE TABLE `studentinfo` (
  `id` varchar(11) NOT NULL,
  `class` varchar(30) DEFAULT NULL,
  `firstname` varchar(40) DEFAULT NULL,
  `lastname` varchar(40) DEFAULT NULL,
  `parentfirstname` varchar(40) DEFAULT NULL,
  `parentlastname` varchar(40) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `telephone` varchar(11) DEFAULT NULL,
  `birth_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentinfo`
--

INSERT INTO `studentinfo` (`id`, `class`, `firstname`, `lastname`, `parentfirstname`, `parentlastname`, `address`, `telephone`, `birth_date`) VALUES
('1', 'class1_2019', 'Jason', 'Bourne', 'Hane', 'Kane', 'Road Street, St.Philip', '555-5555', '2017-04-03'),
('4', 'class1_2017', 'Jean', 'Grey', 'Faith', 'Hilltop', 'Apple Cider, St.Michael', '555-5555', '2017-04-07'),
('56', 'class1_2019', 'Jason', 'Tacheon', 'Ricky', 'Morty', 'James Street, Village Road, St.Lucy', '555-5555', '2017-04-13'),
('567', 'class1_2018', 'Jaden', 'Smith', 'Jada', 'Smith', 'Hollywood, California, United States', '555-5555', '2017-04-03'),
('6', 'class1_2017', 'Jake', 'Short', 'Ria', 'Benn', 'Happy Tree Village Road, St.John', '555-5555', '2017-05-05'),
('88486', 'BCC_2yr_yellow', 'Bonnie', 'Hoyte', 'Deborah', 'Posta', 'Nun ya, Business town, Barbados', '555-5555', '1999-02-08'),
('990208-0093', 'Class 4', 'John', 'Doe', 'Bert', 'Fane', 'Lot # 3 Somewhere', '555-5555', '1999-02-08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `StuID` (`ID`);

--
-- Indexes for table `loginusers`
--
ALTER TABLE `loginusers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `studentinfo`
--
ALTER TABLE `studentinfo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loginusers`
--
ALTER TABLE `loginusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
