-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 26, 2021 at 04:31 PM
-- Server version: 5.7.32-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs230`
--

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `pid` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `descript` text NOT NULL,
  `picpath` varchar(80) NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`pid`, `title`, `descript`, `picpath`, `upload_date`, `rating`) VALUES
(2, '1', '1', '../gallery/604a9c357b26f1.84989972.jpeg', '2021-03-11 17:39:49', NULL),
(3, '2', '2', '../gallery/604a9c3af18478.56700666.jpg', '2021-03-11 17:39:54', NULL),
(4, '3', '3', '../gallery/604a9c3fae6273.91461084.jpg', '2021-03-11 17:39:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `pid` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `profpic` varchar(50) NOT NULL DEFAULT '../images/default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`pid`, `fname`, `uname`, `profpic`) VALUES
(1, 'fdsaasfd', 'asdfasdf', '../images/default.jpg'),
(2, 'dfffd', 'fff', '../images/default.jpg'),
(3, 'Easton', 'EastonThewes', '../images/default.jpg'),
(4, 'Easton', '123', '../profiles/60359e5fce08f4.80864275.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `revid` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `uname` varchar(80) NOT NULL,
  `title` varchar(60) NOT NULL,
  `reviewtext` text NOT NULL,
  `revdate` datetime NOT NULL,
  `ratingnum` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`revid`, `itemid`, `uname`, `title`, `reviewtext`, `revdate`, `ratingnum`, `status`) VALUES
(1, 4, '', 'fdafddfas', 'asdfasfdasf', '2021-03-19 03:54:22', 5, 1),
(2, 4, '', 'asdfasfd', 'sdafasdfasfd', '2021-03-19 03:56:16', 5, 1),
(3, 3, '', 'asdfasfd', 'adfasdfasfd', '2021-03-19 04:20:10', 2, 1),
(4, 3, '', 'asdfaf', 'dddd', '2021-03-19 04:20:15', 4, 1),
(5, 3, '', 'asdfasdf', 'ddddd', '2021-03-19 04:20:43', 5, 1),
(6, 3, '', '3333', '2234234', '2021-03-19 04:21:18', 5, 1),
(7, 3, '', 'asdfas', 'dsfasfdsdf', '2021-03-19 04:25:02', 5, 1),
(8, 3, '123', 'asdfasfd', 'asdfadfs', '2021-03-19 04:35:59', 5, 1),
(9, 3, '123', 'new', 'new', '2021-03-19 04:36:06', 5, 1),
(10, 3, '123', '34243', '32234', '2021-03-19 04:55:11', 5, 1),
(11, 3, '123', 'asdfasdf', 'dddd', '2021-03-19 05:00:36', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(50) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COMMENT='User database for sighup and signin';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `fname`, `lname`, `uname`, `password`, `email`) VALUES
(1, 'fdsaasfd', 'asdfasdf', 'asdfasdf', NULL, 'adfasdf@gmail.com'),
(2, 'dfffd', 'dfff', 'fff', '$2y$10$VYYd9TCrBN8aZrrv.GIOiO6vBAjNPUx/PYy4KQhgY5oY9Id2nBZxq', 'dfdsfd@gmail.com'),
(3, 'Easton', 'Thewes', 'EastonThewes', '$2y$10$ZUTZhffWt9ZSgrNbcVH2LuW7Nv/y24tJmN8G2YJSCIpji9CAxapPu', 'easton@gmail.com'),
(4, 'Easton', 'Thewes', '123', '$2y$10$E.C7L7jdpNwxnnnUmiwqH.f1TAdLN5P1LflV5wMVFTG13PyGM9xom', '123@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`revid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `revid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
