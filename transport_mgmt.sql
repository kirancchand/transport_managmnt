-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 27, 2019 at 05:56 AM
-- Server version: 5.1.37
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `transport_mgmt`
--

-- --------------------------------------------------------

--
-- Table structure for table `busrouteassigntbl`
--

CREATE TABLE IF NOT EXISTS `busrouteassigntbl` (
  `br_slno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `f_r_slno` int(10) unsigned NOT NULL,
  `f_bt_slno` int(10) unsigned NOT NULL,
  PRIMARY KEY (`br_slno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `busrouteassigntbl`
--

INSERT INTO `busrouteassigntbl` (`br_slno`, `f_r_slno`, `f_bt_slno`) VALUES
(1, 1, 9),
(2, 2, 10),
(3, 2, 11),
(4, 4, 11);

-- --------------------------------------------------------

--
-- Table structure for table `bustbl`
--

CREATE TABLE IF NOT EXISTS `bustbl` (
  `b_slno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bus_no` varchar(45) NOT NULL,
  PRIMARY KEY (`b_slno`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `bustbl`
--

INSERT INTO `bustbl` (`b_slno`, `bus_no`) VALUES
(1, '1000'),
(2, 'sdfs'),
(3, 'sadsad'),
(4, 'sadsad'),
(5, '123'),
(6, 'fdsfvsd');

-- --------------------------------------------------------

--
-- Table structure for table `bustimeassigntbl`
--

CREATE TABLE IF NOT EXISTS `bustimeassigntbl` (
  `bt_slno` int(11) NOT NULL AUTO_INCREMENT,
  `f_b_slno` int(45) DEFAULT NULL,
  `journey_start_time` varchar(45) DEFAULT NULL,
  `journey_end_time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bt_slno`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `bustimeassigntbl`
--

INSERT INTO `bustimeassigntbl` (`bt_slno`, `f_b_slno`, `journey_start_time`, `journey_end_time`) VALUES
(1, 0, '05:30 AM', '05:30 AM'),
(2, 0, '05:30 AM', '05:30 AM'),
(3, 0, '05:30 AM', '05:30 AM'),
(4, 0, '05:30 AM', '05:30 AM'),
(5, 0, '05:45 AM', '05:45 AM'),
(6, 0, '05:45 AM', '05:45 AM'),
(7, 0, '05:45 AM', '05:45 AM'),
(8, 0, '05:45 AM', '05:45 AM'),
(9, 0, '05:45 AM', '05:45 AM'),
(10, 0, '05:45 AM', '05:45 AM'),
(11, 0, '05:45 AM', '05:45 AM');

-- --------------------------------------------------------

--
-- Table structure for table `journeyassigntbl`
--

CREATE TABLE IF NOT EXISTS `journeyassigntbl` (
  `j_a_slno` int(11) NOT NULL AUTO_INCREMENT,
  `f_abr_slno` varchar(45) DEFAULT NULL,
  `stops` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`j_a_slno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `journeyassigntbl`
--


-- --------------------------------------------------------

--
-- Table structure for table `routetbl`
--

CREATE TABLE IF NOT EXISTS `routetbl` (
  `r_slno` int(11) NOT NULL AUTO_INCREMENT,
  `place` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`r_slno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `routetbl`
--

INSERT INTO `routetbl` (`r_slno`, `place`) VALUES
(1, 'sdfds');

-- --------------------------------------------------------

--
-- Table structure for table `usertbl`
--

CREATE TABLE IF NOT EXISTS `usertbl` (
  `slno` int(11) NOT NULL AUTO_INCREMENT,
  `emailid` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`slno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `usertbl`
--

INSERT INTO `usertbl` (`slno`, `emailid`, `password`, `name`) VALUES
(1, 'a@a.com', 'aa', 'a'),
(2, 'a@a.com', 'aa', 'a'),
(3, 'a@a.com', 'aa', 'a'),
(4, 'a@a.com', 'aa', 'a'),
(5, 'a@a.com', 'aa', 'a'),
(6, 'a@a.com', 'aa', 'a'),
(7, 'a@a.com', 'aa', 'a'),
(8, 'a@a.com', 'aa', 'a'),
(9, 'a@a.com', 'aa', 'a'),
(10, 'a@a.com', 'aa', 'a'),
(11, 'a@a.com', 'aa', 'a'),
(12, 'a@a.com', 'aa', 'a');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
