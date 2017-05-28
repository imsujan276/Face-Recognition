-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2017 at 09:01 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `face`
--

-- --------------------------------------------------------

--
-- Table structure for table `average`
--

CREATE TABLE IF NOT EXISTS `average` (
  `averageimage` longblob,
`id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8 AUTO_INCREMENT=53 ;

-- --------------------------------------------------------

--
-- Table structure for table `eigenfaces`
--

CREATE TABLE IF NOT EXISTS `eigenfaces` (
`id` int(11) NOT NULL,
  `Eigenface` longblob NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8 AUTO_INCREMENT=38 ;

-- --------------------------------------------------------

--
-- Table structure for table `testset1`
--

CREATE TABLE IF NOT EXISTS `testset1` (
`FaceId` bigint(100) NOT NULL,
  `FaceName` varchar(1000) NOT NULL,
  `FaceImage` longblob NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=248 ;

-- --------------------------------------------------------

--
-- Table structure for table `weight`
--

CREATE TABLE IF NOT EXISTS `weight` (
`id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `faceid` int(11) NOT NULL,
  `weightvector` longblob NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1699 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `average`
--
ALTER TABLE `average`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eigenfaces`
--
ALTER TABLE `eigenfaces`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testset1`
--
ALTER TABLE `testset1`
 ADD PRIMARY KEY (`FaceId`);

--
-- Indexes for table `weight`
--
ALTER TABLE `weight`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `average`
--
ALTER TABLE `average`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `eigenfaces`
--
ALTER TABLE `eigenfaces`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `testset1`
--
ALTER TABLE `testset1`
MODIFY `FaceId` bigint(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=248;
--
-- AUTO_INCREMENT for table `weight`
--
ALTER TABLE `weight`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1699;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
