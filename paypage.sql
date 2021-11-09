-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2021 at 03:58 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paypage`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `email`, `created_at`) VALUES
('cus_KYmuEkDDna3HsN', 'peter', 'karis', 'pkariuki214@gmail.com', '2021-11-09 00:24:43'),
('cus_KYy56S4P8Atwjk', 'Jack', 'Daniels', 'pkariuki214@gmail.com', '2021-11-09 11:57:38'),
('cus_KYzEB5oVGrh5tb', 'Jack', 'Mike', 'pkariuki214@gmail.com', '2021-11-09 13:08:55'),
('cus_KYzh93ak9idlZV', 'Jack', 'Mike', 'pkariuki214@gmail.com', '2021-11-09 13:37:49'),
('cus_KYzmzzIp7jwyti', 'Jack', 'Mike', 'pkariuki214@gmail.com', '2021-11-09 13:42:57'),
('cus_KYzRMsLDXgCXqO', 'Jack', 'Mike', 'pkariuki214@gmail.com', '2021-11-09 13:21:55'),
('cus_KYzy2XtiS0afvt', 'Jack', 'Mike', 'pkariuki214@gmail.com', '2021-11-09 13:54:56'),
('cus_KZ0BZBX6e5y7Ev', 'Jack', 'Mike', 'pkariuki214@gmail.com', '2021-11-09 14:07:41'),
('cus_KZ0dS2c70J9yJZ', 'IRENE', 'NJERI NGUNYI', 'irenenjery1@gmail.com', '2021-11-09 14:36:17'),
('cus_KZ0gHL0xMaIjdJ', 'IRENE', 'NJERI NGUNYI', 'irenenjery1@gmail.com', '2021-11-09 14:38:45'),
('cus_KZ0Kq7LnKTskvH', 'Jack', 'Mike', 'pkariuki214@gmail.com', '2021-11-09 14:16:24'),
('cus_KZ2KmgEhEOjtHE', 'joh', 'mahg', 'johmahugu@gmail.com', '2021-11-09 16:21:15');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_code` varchar(60) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_desc` tinytext NOT NULL,
  `product_img_name` varchar(60) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_desc`, `product_img_name`, `price`) VALUES
(1, 'PD1001', 'Commercial Cleaning', 'Cleaning hospitals, Industries, Hotels, Schools e.t.c', 'm_m_commercial-cleaning-3-1-1024x455.jpg', '200.50'),
(2, 'PD1002', 'Home Cleaning', 'All types of home cleaning.', 'm_home-cleaning-service.jpg', '100.85'),
(3, 'PD1003', 'Sofa Cleaning', 'All types of sofa cleaning e.g leather, fabric e.t.c', 'm_Sofa-Cleaning-img.jpg', '100.00'),
(4, 'PD1004', 'Fumigation Services', 'All home and commercial fumigation services.', 'fumigation.jpg', '400.30'),
(5, 'PD1005', 'Laundry Services', 'All types of Laundry services, commercial and home laundry.', 'm_laudryjpg.jpg', '100.00'),
(6, 'PD1006', 'Pet Cleaning', 'All Pets cleaning and grooming services.', 'Pet-cleaning.jpg', '200.50');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` varchar(255) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `product` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `customer_id`, `product`, `amount`, `currency`, `status`, `created_at`) VALUES
('ch_3JtfKZJ3w39zQdbT1DxmxNhX', 'cus_KYmuEkDDna3HsN', 'Intro To React Course', '50000', 'usd', 'succeeded', '2021-11-09 00:24:43'),
('ch_3Jtq97J3w39zQdbT0Re8oQvm', 'cus_KYy56S4P8Atwjk', 'Intro To React Course', '50000', 'usd', 'succeeded', '2021-11-09 11:57:38'),
('ch_3JtrG6J3w39zQdbT0rPcgQCL', 'cus_KYzEB5oVGrh5tb', 'Intro To React Course', '304875', 'usd', 'succeeded', '2021-11-09 13:08:55'),
('ch_3Jtri5J3w39zQdbT08IphUvx', 'cus_KYzh93ak9idlZV', 'Intro To React Course', '304875', 'usd', 'succeeded', '2021-11-09 13:37:49'),
('ch_3Jtrn3J3w39zQdbT1RA8g8DS', 'cus_KYzmzzIp7jwyti', 'Intro To React Course', '70435', 'usd', 'succeeded', '2021-11-09 13:42:57'),
('ch_3JtrShJ3w39zQdbT0qFJzN97', 'cus_KYzRMsLDXgCXqO', 'Intro To React Course', '304875', 'usd', 'succeeded', '2021-11-09 13:21:55'),
('ch_3JtryeJ3w39zQdbT16PeiQGc', 'cus_KYzy2XtiS0afvt', 'Intro To React Course', '47085', 'usd', 'succeeded', '2021-11-09 13:54:56'),
('ch_3JtsAyJ3w39zQdbT15BDpcNe', 'cus_KZ0BZBX6e5y7Ev', 'Intro To React Course', '11850', 'usd', 'succeeded', '2021-11-09 14:07:41'),
('ch_3JtsceJ3w39zQdbT0emn0zhI', 'cus_KZ0dS2c70J9yJZ', 'Consulting Services', '70535', 'usd', 'succeeded', '2021-11-09 14:36:17'),
('ch_3Jtsf2J3w39zQdbT1R5ILQHb', 'cus_KZ0gHL0xMaIjdJ', 'Consulting Services', '70535', 'usd', 'succeeded', '2021-11-09 14:38:46'),
('ch_3JtsJPJ3w39zQdbT1y7UNpJW', 'cus_KZ0Kq7LnKTskvH', 'Consulting Services', '47085', 'usd', 'succeeded', '2021-11-09 14:16:24'),
('ch_3JtuGEJ3w39zQdbT1sZYDJA2', 'cus_KZ2KmgEhEOjtHE', 'Consulting Services', '35385', 'usd', 'succeeded', '2021-11-09 16:21:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `trn_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `trn_date`) VALUES
(1, 'karis', 'pkariuki214@gmail.com', '202cb962ac59075b964b07152d234b70', '2021-11-09 08:54:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`product_code`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
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
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
