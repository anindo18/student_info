-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 04, 2014 at 04:25 AM
-- Server version: 5.1.73-community
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `department`
--
CREATE DATABASE `department` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `department`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(20) DEFAULT NULL,
  `fname` char(20) DEFAULT NULL,
  `lname` char(20) DEFAULT NULL,
  `contact` bigint(20) DEFAULT NULL,
  `occupation` varchar(30) DEFAULT NULL,
  `masterusn` varchar(20) DEFAULT NULL,
  `masterpass` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `fname`, `lname`, `contact`, `occupation`, `masterusn`, `masterpass`, `email`) VALUES
('anindo', 'anindo', 'anindo', 'choudhury', 123456, 'IT', NULL, NULL, NULL),
('ankitap', 'anki', 'ankita', 'prabhu', 4512, 'IT services', 'kajal11', 'kaju', 'ankita_p@gmail.com'),
('ashishbob', 'ashi', 'ashish', 'gupta', 78459, 'MBA ', 'ankitap', 'anki', 'ashishbob1@gmail.com'),
('kajal11', 'kaju', 'kajal', 'aggarwal', 12345, 'IT', 'anindo', 'anindo', 'abcd@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sname` longtext NOT NULL,
  `rollno` mediumtext NOT NULL,
  `regno` int(11) NOT NULL,
  `dname` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `sname`, `rollno`, `regno`, `dname`) VALUES
(39, 'Vijay', '321', 3131, 'Mechanical'),
(37, 'Khalid Mushtaq', 'BCS-06-12', 29911495, 'Computer Science'),
(40, 'Shahrukh Khan', '555', 55540, 'Instrumentation'),
(38, 'Anindo', '1234', 12343, 'Information Science');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
