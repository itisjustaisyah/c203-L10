-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2020 at 07:19 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `c203_p11`
--

-- --------------------------------------------------------

--
-- Table structure for table `used_items`
--

CREATE TABLE `used_items` (
  `id` int(7) NOT NULL,
  `user_id` int(6) NOT NULL,
  `name` varchar(70) NOT NULL,
  `description` varchar(200) NOT NULL,
  `price` decimal(5,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `used_items`
--

INSERT INTO `used_items` (`id`, `user_id`, `name`, `description`, `price`) VALUES
(1, 2, 'i5 PC with GeForce 860', 'i5 PC for gaming. Can play latest games.', '786.00'),
(2, 4, 'Score the Goal', 'Game comes with the box and bonus controller.', '5.50'),
(3, 3, 'Flowers illustration for children', '350 pages of illustration. Clear and nice pictures.', '21.00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(6) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997'),
(2, 'jonathan', '3692bfa45759a67d83aedf0045f6cb635a966abf'),
(3, 'dany', '118ab5d614b5a8d4222fc7eee1609793e4014800'),
(4, 'alma', '5f5ea3800d9a62bc5a008759dbbece9cad5db58f');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `used_items`
--
ALTER TABLE `used_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `used_items`
--
ALTER TABLE `used_items`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
