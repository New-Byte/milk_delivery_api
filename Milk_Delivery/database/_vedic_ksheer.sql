-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 14, 2021 at 11:24 PM
-- Server version: 5.7.33-log-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: ` vedic ksheer`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `bid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `usertype` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`, `bid`, `username`, `usertype`, `image`) VALUES
('radhika123@gmail.com', 'asdf', 38, 'Radhika Badgujar', 'admin', 'avatar2.png'),
('vedicksheer@gmail.com', 'vedic', 39, 'Vedic Ksheer', 'admin', '5.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `b_person`
--

CREATE TABLE `b_person` (
  `bid` int(10) NOT NULL,
  `Name` text NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Mobile` bigint(30) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Adhaar` bigint(50) NOT NULL,
  `image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `b_person`
--

INSERT INTO `b_person` (`bid`, `Name`, `Email`, `Mobile`, `Password`, `Adhaar`, `image`) VALUES
(0, 'Unknown', '', 0, '', 0, ''),
(8, 'Ram', 'cr5423@gmail.com', 9404341181, 'ram', 456732156709, 'avatar5.png'),
(9, 'shreyas', 'smfegade2799@gmail.com', 9404341181, 'shreyas', 567890876543, 'avatar5.png'),
(12, 'rajesh patil', 'admin@admin.com', 9513576248, 'asdf', 123456789122, 'avatar2.png'),
(15, 'ramesh malode', 'ram2@gmail.com', 9513576248, 'asdf', 123456789745, 'avatar04.png'),
(23, 'saurabh wani', 'r123@gmail.com', 9513576248, 'asdf', 123456789745, 'avatar5.png'),
(24, 'Radhika Badgujar', 'er.saurabhwani1@gmail.com', 1234567890, 'asdf', 123456789123, 'avatar5.png');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `price` int(200) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `image`, `price`, `name`) VALUES
(20, '3.jfif', 70, 'Milk Bottle'),
(21, '1.png', 22, 'Milk pouch'),
(30, '5.jfif', 220, 'Combo Pack'),
(31, 'about-img.jpg', 55, 'Aatta Milk');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `image` varchar(10000) NOT NULL,
  `id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`image`, `id`) VALUES
('prd1.jfif', 24),
('prd2.jfif', 26),
('prd3.jfif', 27),
('4.jfif', 53);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `image` varchar(1000) NOT NULL,
  `h1` varchar(1000) NOT NULL,
  `h2` varchar(1000) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`image`, `h1`, `h2`, `id`) VALUES
('prd5.jfif', 'India\'s Best selling site', 'Search for product', 22),
('5.jfif', 'sadf', 'asdf', 24),
('2.webp', 'C', 'CC', 25);

-- --------------------------------------------------------

--
-- Table structure for table `testmon`
--

CREATE TABLE `testmon` (
  `id` int(7) NOT NULL,
  `about` longtext NOT NULL,
  `name` varchar(22) NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testmon`
--

INSERT INTO `testmon` (`id`, `about`, `name`, `img`) VALUES
(3, 'Hum maja ma hai ekdam doodh pike!', 'Papa ki Pari', 'avatar2.png'),
(5, 'Humne ye doodh pike 1-2 Din me body bana liya bhai.....', 'Shaktiman', 'avatar04.png'),
(7, 'i am zipri porgi. testing the testmonials', 'Zipri Bai', 'avatar3.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `b_person`
--
ALTER TABLE `b_person`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testmon`
--
ALTER TABLE `testmon`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `b_person`
--
ALTER TABLE `b_person`
  MODIFY `bid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `testmon`
--
ALTER TABLE `testmon`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
