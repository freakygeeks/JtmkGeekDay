-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2016 at 04:11 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `geekday`
--

-- --------------------------------------------------------

--
-- Table structure for table `netrider`
--

CREATE TABLE IF NOT EXISTS `netrider` (
`netrider_id` int(11) NOT NULL,
  `netTeamName` varchar(50) DEFAULT NULL,
  `netFirst` varchar(50) DEFAULT NULL,
  `netSecond` varchar(50) DEFAULT NULL,
  `netFirstIC` bigint(12) NOT NULL,
  `netSecondIC` bigint(12) NOT NULL,
  `netFirstNum` varchar(15) NOT NULL,
  `netSecondNum` varchar(15) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `netrider`
--

INSERT INTO `netrider` (`netrider_id`, `netTeamName`, `netFirst`, `netSecond`, `netFirstIC`, `netSecondIC`, `netFirstNum`, `netSecondNum`) VALUES
(1, 'Sample Team', 'John', 'Jack', 900101130909, 900101130907, '0196655444', '0196655442');

-- --------------------------------------------------------

--
-- Table structure for table `programming`
--

CREATE TABLE IF NOT EXISTS `programming` (
`programming_id` int(11) NOT NULL,
  `progTeamName` varchar(50) DEFAULT NULL,
  `progFirst` varchar(50) DEFAULT NULL,
  `progSecond` varchar(50) DEFAULT NULL,
  `progThird` varchar(50) DEFAULT NULL,
  `progFirstIC` bigint(12) NOT NULL,
  `progSecondIC` bigint(12) NOT NULL,
  `progThirdIC` bigint(12) NOT NULL,
  `progFirstNum` varchar(15) NOT NULL,
  `progSecondNum` varchar(15) NOT NULL,
  `progThirdNum` varchar(15) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `programming`
--

INSERT INTO `programming` (`programming_id`, `progTeamName`, `progFirst`, `progSecond`, `progThird`, `progFirstIC`, `progSecondIC`, `progThirdIC`, `progFirstNum`, `progSecondNum`, `progThirdNum`) VALUES
(1, 'Sample Team', 'Ali', 'Abu', 'Kassim', 900101130909, 900101130907, 900101130905, '0196655444', '0196655442', '0196655441');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `netrider`
--
ALTER TABLE `netrider`
 ADD PRIMARY KEY (`netrider_id`), ADD KEY `netFirstIC_index` (`netFirstIC`), ADD KEY `netSecondIC_index` (`netSecondIC`), ADD KEY `netFirstNum_index` (`netFirstNum`);

--
-- Indexes for table `programming`
--
ALTER TABLE `programming`
 ADD PRIMARY KEY (`programming_id`), ADD KEY `progFirstIC_index` (`progFirstIC`), ADD KEY `progSecondIC_index` (`progSecondIC`), ADD KEY `progThirdIC_index` (`progThirdIC`), ADD KEY `progFirstNum_index` (`progFirstNum`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `netrider`
--
ALTER TABLE `netrider`
MODIFY `netrider_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `programming`
--
ALTER TABLE `programming`
MODIFY `programming_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
