-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2017 at 09:33 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `courier`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `username` varchar(10) NOT NULL DEFAULT '',
  `password` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `emailid` varchar(30) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(10) NOT NULL,
  `country` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`username`, `password`, `name`, `emailid`, `mobile`, `address`, `city`, `country`) VALUES
('amit', 'amit', 'Amit Pradhan', 'amit@gmail.com', '9542033378', 'Dhapasi', 'Kathmandu', 'Nepal'),
('ritu', 'ritu', 'Ritu Pandey', 'ritu.p94@gmail.com', '9841652384', 'Balaju', 'Kathmandu', 'Nepal'),
('suman', 'suman', 'Suman Rai', 'rai.suman@gmail.com', '9658734984', 'Newroad', 'Pokhara', 'Nepal'),
('kris', 'kris', 'kris wu', 'kris@gmail.com', '9857889833', 'Sejong-daero, Jung-gu', 'Seoul', 'Korea'),
('alek', 'alek', 'alek tamang', 'alek.t@gmail.com', '9841628952', 'Gongabu', 'Kathmandu', 'Nepal');

-- --------------------------------------------------------

--
-- Table structure for table `courier_table`
--

CREATE TABLE IF NOT EXISTS `courier_table` (
`cid` int(5) NOT NULL,
  `orig` varchar(20) NOT NULL,
  `dest` varchar(20) NOT NULL,
  `sname` varchar(20) NOT NULL,
  `rname` varchar(20) NOT NULL,
  `radd` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rate` float NOT NULL,
  `mode` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Loaded'
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courier_table`
--

INSERT INTO `courier_table` (`cid`, `orig`, `dest`, `sname`, `rname`, `radd`, `date`, `rate`, `mode`, `status`) VALUES
(1, 'Kathmandu', 'Pokhara', 'Anmol', 'Sudarshan', 'New Road', '2014-10-22 22:37:01', 100, 'surface', 'In Transit'),
(2, 'Nepal', 'Korea', 'Kris', 'Luhan', 'Seoul city', '2013-04-14 22:36:00', 2500, 'air', 'In Transit'),
(3, 'Nepal', 'India', 'Rohan', 'Ritu', 'Kolkata', '2013-04-23 22:34:55', 1600, 'surface', 'Loaded'),
(4, 'Nepal', 'Nepal', 'Riya', 'Puja', 'Rupandehi', '2013-04-14 22:33:28', 100, 'air', 'Delivered'),
(5, 'China', 'India', 'Minhyuk choi', 'Raja', 'Indiranagar', '2013-04-18 22:32:36', 420, 'water', 'In Transit'),
(6, 'Nepal', 'Nepal', 'Sweta', 'Ravi', 'Pokhara', '2013-04-24 22:37:26', 400, 'surface', 'Delivered'),
(7, 'Nepal', 'Thailand', 'Samir', 'Priya', 'Bangkok', '2013-04-14 22:37:55', 280, 'air', 'Loaded'),
(8, 'China', 'Japan', 'Subin', 'Aditi', 'Tokyo', '2013-04-16 23:13:30', 400, 'water', 'In Transit'),
(9, 'Nepal', 'Korea', 'Aditya', 'Chiran', 'Seoul city', '2013-04-26 23:36:28', 70, 'air', 'Loaded'),
(10, 'India', 'Nepal', 'Navina', 'Sneha', 'Butwal', '2013-04-26 14:53:41', 400, 'air', 'Loaded'),
(11, 'Nepal', 'India', 'Sacar', 'Sourav', 'Udit Nagar', '2013-07-24 20:51:09', 402, 'air', 'In Transit'),
(12, 'China', 'nepal', 'Om', 'Sambhav', 'Pokhara', '2014-03-14 15:30:03', 500, 'air', 'Loaded'),
(13, 'Nepal', 'New York', 'Kaanchi', 'David', 'Top Floor, Stark Tower', '2014-05-22 15:15:16', 21000, 'air', 'Loaded'),
(31, 'Kathmandu', 'Toronta', 'Ganesh', 'James', 'Canada', '2017-06-14 16:17:09', 22400, 'air', 'Loaded'),
(32, 'Bhaktapur', 'Tokyo', 'Sebika', 'Saron', 'Japan', '2017-06-15 14:46:36', 700, 'air', 'Loaded'),
(33, 'Bhaktapur', 'Tokyo', 'Sebika', 'Saron', 'Japan', '2017-06-15 14:47:19', 700, 'air', 'Loaded'),
(34, 'Lalitpur', 'Vancouver', 'Dipa', 'Shiva', 'Canada', '2017-06-15 14:48:57', 1050, 'air', 'Loaded'),
(35, 'Samakhusi', 'Los Angeles', 'Sarmila', 'Urvashi', 'USA', '2017-06-15 14:53:52', 8000, 'surface', 'Loaded');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `emailid` varchar(30) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(10) NOT NULL,
  `country` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`username`, `password`, `name`, `emailid`, `mobile`, `address`, `city`, `country`) VALUES
('ramesh', 'ramesh', 'Ramesh Joshi', 'ramesh.j@gmail.com', '9439344276', 'SanFransisco', 'California', 'USA'),
('rohan', 'rohan', 'Rohan Gurung', 'rohan@gmail.com', '9860215482', 'Alaknanda', 'New-delhi', 'India'),
('Jason', 'jae', 'jason magar', 'jason@gmail.com', '9842568214', 'Kalanki', 'Kathmandu', 'Nepal'),
('suzy', 'suzy', 'Suzy Choi', 'suzy@gmail.com', '0152698245', '1 Dong Fang Rd,North Dongsanhuan Rd', 'Beijing', 'China');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`username`), ADD UNIQUE KEY `password` (`password`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
 ADD PRIMARY KEY (`username`);

--
-- Indexes for table `courier_table`
--
ALTER TABLE `courier_table`
 ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
 ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courier_table`
--
ALTER TABLE `courier_table`
MODIFY `cid` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
