-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2015 at 02:33 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vehicle`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `veId` int(11) NOT NULL,
  `custId` int(11) NOT NULL,
  `totalPurchase` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`veId`, `custId`, `totalPurchase`) VALUES
(1, 2, 325),
(1, 1, 280),
(1, 4, 230);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
`id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `dateAmik` date NOT NULL,
  `datePulang` date NOT NULL,
  `gps` int(11) NOT NULL,
  `childseat` int(11) NOT NULL,
  `delivery` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='Set fk';

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `email`, `name`, `address`, `contact`, `state`, `region`, `dateAmik`, `datePulang`, `gps`, `childseat`, `delivery`) VALUES
(2, 'iammarb@yahoo.com', 'ammar syatbi ', 'asfafssfasfs', '213123', '', 'asfaf', '1312-12-31', '0001-11-11', 35, 90, 100),
(3, 'sadas@asfasf.com', 'asfasf', 'asfasf', '124124', 'safsaf', 'saf', '0012-02-14', '0124-12-04', 35, 45, 100),
(4, 'saya@dia.com', 'Saya takda nama', '  ', '014492236', 'Johor', 'Segamat', '0031-12-31', '0023-12-31', 35, 45, 100);

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE IF NOT EXISTS `email` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `name`, `email`, `comment`) VALUES
(1, 'wq', '', ' Leave your comment hewqere '),
(2, 'test', 'test@yahoo.com', 'i hope this test succeed\r\n'),
(3, 'asfasf', 'safas@afasasf.com', 'safasfasfasfasfasf'),
(4, 'asfasf', 'safas@afasasf.com', 'safasfasfasfasfasf'),
(5, 'nama', 'asfaf', ' Leave your csafasfafsomment here '),
(6, 'nama', 'asfaf', ' Leave your csafasfafsomment here ');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
`id` int(11) NOT NULL,
  `matrik` varchar(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `matrik`, `username`, `password`, `name`) VALUES
(1, '2013830238', 'iammarb', 'abcd1234', 'AMMAR SYATBI'),
(2, '2013642068', 'zety', '1234', 'IZZATY');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`ID` int(11) NOT NULL,
  `prodName` varchar(50) NOT NULL,
  `prodCC` int(11) NOT NULL,
  `prodStock` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COMMENT='Table untuk product, setiap product ade stock.';

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ID`, `prodName`, `prodCC`, `prodStock`) VALUES
(1, 'RXZ', 180, 4),
(2, 'EX5', 120, 5),
(3, 'SRV', 100, 3),
(4, 'DUCATI MONSTER', 290, 5),
(5, 'KAWASAKI NINJA', 255, 3),
(6, 'HARLEY DAVIDSON', 300, 2),
(7, 'BMW', 2000, 12),
(8, 'AUDI', 2600, 7),
(9, 'FERRARI', 3000, 2),
(10, 'MURANO', 2000, 5),
(11, 'ESTIMA', 2100, 9),
(12, 'VELLFIRE', 2300, 7),
(13, 'BUS', 1600, 1),
(14, 'VAN', 1300, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `prodName` (`prodName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
