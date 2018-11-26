-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2018 at 07:20 AM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `products_order`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` int(11) NOT NULL DEFAULT '0',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` int(15) NOT NULL,
  `address` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `username`, `password`, `phone`, `address`) VALUES
(3, 101, '101', 1010, 'uganda'),
(5, 10, '10', 1710, 'jamalpur');

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE IF NOT EXISTS `persons` (
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `addresses` varchar(100) NOT NULL,
  `t_shirt` varchar(20) NOT NULL,
  `date_of_birth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`first_name`, `last_name`, `email`, `addresses`, `t_shirt`, `date_of_birth`) VALUES
('', '', 'a', '', '', '0000-00-00'),
('', '', 'as', 'address', '', '0000-00-00'),
('', '', 'as', 'as', '', '0000-00-00'),
('', '', '', '', '', '0000-00-00'),
('', '', 'mizan-it@beaconpharma.com.bd', 'dhaka', 'option2', '0000-00-00'),
('', '', 'hello', 'hello', 'option1', '0000-00-00'),
('', '', 'a', 'a', 'option1', '0000-00-00'),
('', '', 'a', 'a', 'a', '0000-00-00'),
('s', 's', 's', 's', 'option2', '2018-10-01'),
('A', 'A', 'A', 'A', 'option1', '2018-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `registration_form`
--

CREATE TABLE IF NOT EXISTS `registration_form` (
  `phone_number` varchar(100) NOT NULL,
  `mail_address` varchar(100) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `f_name` varchar(100) NOT NULL,
  `m_name` varchar(100) NOT NULL,
  `date_of_birth` date NOT NULL,
  `tshirt_size` varchar(100) NOT NULL,
  `blood_group` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `education_status` varchar(200) NOT NULL,
  `profesion_name` varchar(200) NOT NULL,
  `institute_name` varchar(200) NOT NULL,
  `payment_way` varchar(100) NOT NULL,
  `agrement_status` varchar(20) NOT NULL,
  UNIQUE KEY `mail_address` (`mail_address`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration_form`
--

INSERT INTO `registration_form` (`phone_number`, `mail_address`, `full_name`, `f_name`, `m_name`, `date_of_birth`, `tshirt_size`, `blood_group`, `address`, `education_status`, `profesion_name`, `institute_name`, `payment_way`, `agrement_status`) VALUES
('1234', 'a@b.com', 'SM Mizan', 'SM Mustafizur Rahman', 'Tahmina Rahman', '1995-01-01', 'Jamalpur,Bangladesh', 'M', 'B+', 'Southeast University', 'Software Engineeer', 'SM Apps Valley', 'bKash', 'agree');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(70) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `created_at`, `updated_at`) VALUES
(1, 'mizan', '827ccb0eea8a706c4c34a16891f84e7b', 'mizan@mail.com', '2018-09-30 23:05:51', '2018-09-30 23:05:51'),
(2, 'a', '0cc175b9c0f1b6a831c399e269772661', 'b@a.com', '2018-09-30 23:13:12', '2018-09-30 23:13:12'),
(3, 'a', 'c4ca4238a0b923820dcc509a6f75849b', 'a@b.com', '2018-10-09 14:55:05', '2018-10-09 14:55:05'),
(4, 'ami', '6c5b7de29192b42ed9cc6c7f635c92e0', 'ami@tumi.com', '2018-10-09 15:23:03', '2018-10-09 15:23:03');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
