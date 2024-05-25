-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2024 at 02:04 PM
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
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `dishID` int(11) NOT NULL,
  `dishName` varchar(100) DEFAULT NULL,
  `cuisine` varchar(50) DEFAULT NULL,
  `chefFirstName` varchar(50) DEFAULT NULL,
  `chefLastName` varchar(50) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `isVegetarian` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`dishID`, `dishName`, `cuisine`, `chefFirstName`, `chefLastName`, `price`, `isVegetarian`) VALUES
(1, 'Spaghetti Carbonara', 'Italian', 'Giovanni', 'Bianchi', 15.99, 0),
(2, 'Chicken Tikka Masala', 'Indian', 'Raj', 'Patel', 12.50, 0),
(3, 'Caesar Salad', 'American', 'Emily', 'Jones', 9.99, 1),
(4, 'Sushi Platter', 'Japanese', 'Takeshi', 'Yamamoto', 22.50, 0),
(5, 'Beef Bourguignon', 'French', 'Claire', 'Dubois', 18.75, 0),
(6, 'Margherita Pizza', 'Italian', 'Luca', 'Rossi', 11.99, 1),
(7, 'Pad Thai', 'Thai', 'Siri', 'Srivijaya', 13.25, 0),
(8, 'Hamburger', 'American', 'Michael', 'Smith', 8.99, 1),
(9, 'Miso Soup', 'Japanese', 'Aiko', 'Tanaka', 5.50, 1),
(10, 'Fish and Chips', 'British', 'Jack', 'Johnson', 14.75, 0),
(11, 'Tacos', 'Mexican', 'Maria', 'Garcia', 10.50, 1),
(12, 'Caprese Salad', 'Italian', 'Giuseppe', 'Romano', 10.25, 1),
(13, 'Chicken Satay', 'Thai', 'Naree', 'Karnchana', 11.75, 0),
(14, 'Lasagna', 'Italian', 'Antonio', 'Conti', 16.50, 0),
(15, 'Pho', 'Vietnamese', 'An', 'Nguyen', 12.99, 0),
(16, 'Falafel Wrap', 'Middle Eastern', 'Yousef', 'Ali', 9.50, 1),
(17, 'Gyoza', 'Japanese', 'Haru', 'Suzuki', 8.25, 0),
(18, 'Moussaka', 'Greek', 'Dimitri', 'Papadopoulos', 17.25, 0),
(19, 'Pasta Primavera', 'Italian', 'Isabella', 'Ricci', 14.99, 1),
(20, 'Chicken Caesar Wrap', 'American', 'Josh', 'Evans', 11.25, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL,
  `customerID` int(11) DEFAULT NULL,
  `dishID` int(11) DEFAULT NULL,
  `orderDate` date DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `totalAmount` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderID`, `customerID`, `dishID`, `orderDate`, `quantity`, `totalAmount`) VALUES
(1, 101, 1, '2024-05-01', 2, 31.98),
(2, 102, 5, '2024-05-02', 1, 11.99),
(3, 103, 8, '2024-05-03', 3, 26.97),
(4, 104, 12, '2024-05-04', 1, 16.50),
(5, 105, 4, '2024-05-05', 2, 45.00),
(6, 106, 7, '2024-05-06', 1, 13.25),
(7, 107, 9, '2024-05-07', 2, 11.00),
(8, 108, 15, '2024-05-08', 1, 12.99),
(9, 109, 18, '2024-05-09', 3, 26.25),
(10, 110, 11, '2024-05-10', 1, 10.50),
(11, 111, 2, '2024-05-11', 2, 33.98),
(12, 112, 14, '2024-05-12', 1, 12.99),
(13, 113, 6, '2024-05-13', 2, 27.50),
(14, 114, 3, '2024-05-14', 1, 9.50),
(15, 115, 10, '2024-05-15', 3, 34.50),
(16, 116, 13, '2024-05-16', 1, 17.25),
(17, 117, 20, '2024-05-17', 2, 29.98),
(18, 118, 16, '2024-05-18', 1, 14.99),
(19, 119, 19, '2024-05-19', 3, 44.97),
(20, 120, 17, '2024-05-20', 1, 11.25);

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`firstName`, `lastName`, `birthday`, `state`, `status`) VALUES
('John', 'Doe', '2000-01-15', 'California', 'Active'),
('Jane', 'Smith', '1995-05-20', 'New York', 'Inactive'),
('Michael', 'Johnson', '1988-09-10', 'Texas', 'Active'),
('Emily', 'Brown', '1992-11-25', 'Florida', 'Active'),
('David', 'Williams', '1985-03-08', 'Ohio', 'Inactive'),
('Jessica', 'Davis', '1998-07-12', 'Illinois', 'Active'),
('Matthew', 'Miller', '1990-04-30', 'Pennsylvania', 'Inactive'),
('Sarah', 'Wilson', '1983-12-05', 'Georgia', 'Active'),
('Daniel', 'Taylor', '1980-06-18', 'Michigan', 'Inactive'),
('Jennifer', 'Anderson', '1976-02-22', 'Washington', 'Active'),
('Christopher', 'Thomas', '1993-08-14', 'Massachusetts', 'Active'),
('Lisa', 'Jackson', '1987-10-03', 'Virginia', 'Inactive'),
('Andrew', 'White', '1982-01-28', 'Colorado', 'Active'),
('Amanda', 'Harris', '1996-06-09', 'Arizona', 'Inactive'),
('James', 'Martin', '1984-09-17', 'Indiana', 'Active'),
('Michelle', 'Thompson', '1979-07-02', 'Tennessee', 'Active'),
('Ryan', 'Garcia', '1991-03-11', 'North Carolina', 'Inactive'),
('Kimberly', 'Martinez', '1989-05-06', 'Wisconsin', 'Active'),
('Jason', 'Young', '1977-11-19', 'Minnesota', 'Inactive'),
('Melissa', 'Lee', '1986-02-04', 'Oregon', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`dishID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `dishID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
