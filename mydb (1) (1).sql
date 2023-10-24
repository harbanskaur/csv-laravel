-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2023 at 01:55 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `city_name`, `state_id`) VALUES
(1, 'Ludhiana', 1),
(2, 'Amritsar', 1),
(3, 'kanpur', 9),
(4, 'Lukhnow', 9),
(5, 'Meerut', 4),
(6, 'Patna', 4),
(7, 'Kangra', 2),
(8, 'Shimla', 2),
(9, 'Setani', 6),
(10, 'Narwal bala', 6),
(11, 'Karnal', 7),
(12, 'Panipat', 7),
(13, 'Haridwar', 5),
(14, 'Dehradun', 5),
(15, 'Surat', 10),
(16, 'Anand', 10),
(17, 'Indore', 3),
(18, 'Ujjain', 3),
(19, 'Alambazar', 8),
(20, 'Aritola', 8),
(21, 'London', 11);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `country_name`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Bahamas'),
(4, 'Bahrain'),
(5, 'Cambodia'),
(6, 'Cameroon'),
(7, 'Denmark'),
(8, 'Djibouti'),
(9, 'East Timor'),
(10, 'Ecuador'),
(11, 'Falkland Islands (Malvinas)'),
(12, 'Faroe Islands'),
(13, 'Gabon'),
(14, 'Gambia'),
(15, 'Haiti'),
(16, 'Heard and Mc Donald Islands'),
(17, 'Iceland'),
(18, 'India'),
(19, 'Jamaica'),
(20, 'Japan'),
(21, 'Kenya'),
(22, 'Kiribati'),
(23, 'Lao Peoples Democratic Republic'),
(24, 'Latvia'),
(25, 'Macau'),
(26, 'Macedonia'),
(27, 'Namibia'),
(28, 'Nauru'),
(29, 'Oman'),
(30, 'Pakistan'),
(31, 'Palau'),
(32, 'Qatar'),
(33, 'Reunion'),
(34, 'Romania'),
(35, 'Saint Kitts and Nevis'),
(36, 'Saint Lucia'),
(37, 'Taiwan'),
(38, 'Tajikistan'),
(39, 'Uganda'),
(40, 'Ukraine'),
(41, 'Vanuatu'),
(42, 'Vatican City State'),
(43, 'Wallis and Futuna Islands'),
(44, 'Western Sahara'),
(45, 'Yemen'),
(46, 'Yugoslavia'),
(47, 'Zaire'),
(48, 'Zambia'),
(49, 'United Kingdom');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `state_name` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `state_name`, `country_id`) VALUES
(1, 'Punjab', 18),
(2, 'Himanchal', 18),
(3, 'Madhya Pradesh', 18),
(4, 'Bihar', 18),
(5, 'Uttrakhand', 18),
(6, 'jammu', 18),
(7, 'Haryana', 18),
(8, 'Kolakata', 18),
(9, 'Utter Pradesh', 18),
(10, 'Gujrat', 18),
(11, 'British Columbia', 49);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
