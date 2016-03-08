-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2016 at 03:38 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `netrider`
--

INSERT INTO `netrider` (`netrider_id`, `netTeamName`, `netFirst`, `netSecond`, `netFirstIC`, `netSecondIC`, `netFirstNum`, `netSecondNum`) VALUES
(1, 'Sample Team', 'John', 'Jack', 900101130909, 900101130907, '0196655444', '0196655442');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE IF NOT EXISTS `video` (
`video_id` int(11) NOT NULL,
  `vidTeamName` varchar(50) DEFAULT NULL,
  `vidFirst` varchar(50) DEFAULT NULL,
  `vidSecond` varchar(50) DEFAULT NULL,
  `vidThird` varchar(50) DEFAULT NULL,
  `vidFirstIC` bigint(12) NOT NULL,
  `vidSecondIC` bigint(12) NOT NULL,
  `vidThirdIC` bigint(12) NOT NULL,
  `vidFirstNum` varchar(15) NOT NULL,
  `vidSecondNum` varchar(15) NOT NULL,
  `vidThirdNum` varchar(15) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`video_id`, `vidTeamName`, `vidFirst`, `vidSecond`, `vidThird`, `vidFirstIC`, `vidSecondIC`, `vidThirdIC`, `vidFirstNum`, `vidSecondNum`, `vidThirdNum`) VALUES
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
-- Indexes for table `video`
--
ALTER TABLE `video`
 ADD PRIMARY KEY (`video_id`), ADD KEY `vidFirstIC_index` (`vidFirstIC`), ADD KEY `vidtSecondIC_index` (`vidSecondIC`), ADD KEY `vidThirdIC_index` (`vidThirdIC`), ADD KEY `vidFirstNum_index` (`vidFirstNum`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `netrider`
--
ALTER TABLE `netrider`
MODIFY `netrider_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
