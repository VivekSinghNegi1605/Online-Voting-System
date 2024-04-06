-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2020 at 07:08 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `votesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'Vivek Singh Negi', '$2y$10$nabT0nJ7q3xQsxtMJAhrju/vXNBCgdytYS36sFdyDjPDR0LKwnOYC', 'Vivek Singh', 'Negi', 'profile.jpg', '2018-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(18, 10, 'Himanshu', 'Panwar', 'IMG-20201210-WA0002.jpg', 'College'),
(19, 10, 'Amrit', 'Joshi', 'IMG-20201210-WA0003.jpg', 'College'),
(23, 10, 'Hugo', 'Weaving', 'IMG-20201210-WA0004.jpg', 'College');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(10, 'College Representative', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voters_id`, `password`, `firstname`, `lastname`, `photo`) VALUES
(15, 'lAk28ZYIDhc1Knx', '$2y$10$jBJ7LbyEXa7E/bwW0lBmHu38Pa8o.bX2WyFxk3Zn3Gk5LbvSe1XMO', 'Gaurav', 'Shamant', 'profile.jpg'),
(16, 'lqyvXeC1ZIkbJHN', '$2y$10$fO.V4DyY7biwZYWUmHnN0.k1uZa40qdiosGeeOOjXAjdXkwzGNxFC', 'Siddharth', 'Negi', 'profile.jpg'),
(17, '8MGHvWJAI2CfeuU', '$2y$10$y1OqYFUHAbkCgWl/vTHoh.dcLyPInG0rXBiN3XXpT5fEBx215sf8.', 'Gaurav', 'Joshal', 'profile.jpg'),
(18, 'QdoY3OIA1TpqikW', '$2y$10$aOD7fthu2JwRJHPxdSud5O6SumzrxjAq5fyMw8pDIUUxeRcOai8y6', 'Vivek', 'Singh', ''),
(19, 'vZ2mlWbsiwuTRN5', '$2y$10$vCP5giM1QDrad/5IMRncJexvyd2K0J2n6KyAQeU7LmVyE1BuPBRMC', 'Kalicharan', 'Sharma', ''),
(21, 'ZW2vIgeiX7jNP1G', '$2y$10$gEPMSpFh5Pc.NzCetLZT.OBoORTv2Tg8ejiK7Z5mhCT9wp6v7.mo6', 'Sagar', 'Kafola', 'profile.jpg'),
(22, 'WtTNfDcKgvIon8r', '$2y$10$wSFKqtwzmsNiOPUJXZlLC.NWscgnEp.e4J3lKdoGrqnFOhgByxx/u', 'Vinod', 'Singh', 'profile.jpg'),
(23, 'HOIXxf9CPMDqcLe', '$2y$10$kUSxEEAX60InmPC7Gcqx.ePr.xLDaDgDnUtWfjjTCAiQ0Z7xyQWw2', 'Ayush', 'Singh', 'profile.jpg'),
(24, 'ZmHTWIxD4Ewf3kQ', '$2y$10$1u4mF7p/ZLEJz.TEHCt5luAT.XPUdJ0yoDRDf72mSLyh7sP17ifhu', 'Saksham', 'Sharma', 'profile.jpg'),
(25, '9i5LpQPuNbVS46I', '$2y$10$4ce9fPn7vjlRo499jywDo.VN0mXkHpcbWhe6uFEzr.Ov/A8jsD3ga', 'Shreyansh', 'Parashar', 'profile.jpg'),
(26, 'uxvRcOnhkH7aPiS', '$2y$10$VCxU07LMIWpvGICsaU799O4kS6gAC2vN/3dUcULwuauhUhMn12HaC', 'Vishal', 'Kala', 'profile.jpg'),
(27, 'w2jVpckguEq1S7M', '$2y$10$TOPUCv2StDUnEXgfRmm5..tDegZ63u4FptRqQmed4d3naC6i1EHRG', 'Abhishak', 'Negi', 'profile.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
