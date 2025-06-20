-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2025 at 11:00 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(2, '2025-05-22-050242', 'App\\Database\\Migrations\\CreateUsersTable', 'default', 'App', 1747891151, 1),
(4, '2025-06-08-094648', 'App\\Database\\Migrations\\CreateProfiles', 'default', 'App', 1749377498, 2);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `study_program` varchar(100) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `instagram` varchar(100) DEFAULT NULL,
  `youtube` varchar(100) DEFAULT NULL,
  `tiktok` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `name`, `email`, `phone`, `address`, `study_program`, `photo`, `instagram`, `youtube`, `tiktok`, `created_at`, `updated_at`) VALUES
(3, 'Nama TIM 1', 'tim1@gmail.com', '081234567890', 'Alamat TIM 1', 'Teknik Informatika', '1749381220_fb88f539b50e71570e64.jpg', 'https://www.instagram.com/tim1', 'https://www.youtube.com/tim1', 'https://www.tiktok.com/tim1', NULL, NULL),
(4, 'Nama TIM 2', 'tim2@gmail.com', '081234567890', 'Alamat TIM 2', 'Teknik Informatika', '1749381214_b2a395b76d645c2b53fa.jpg', 'https://instagram.com/tim2', 'https://youtube.com/tim2', 'https://tiktok.com/tim2', NULL, NULL),
(5, 'Nama TIM 3', 'tim3@gmail.com', '081234567890', 'Alamat TIM 3', 'Teknik Informatika', '1749381284_1f63829dc671dd4b62bc.jpg', 'https://www.instagram.com/tim3', 'https://youtube.com/tim3', 'https://www.tiktok.com/tim3', NULL, NULL),
(6, 'Nama TIM 4', 'tim4@gmail.com', '081234567890', 'Alamat TIM 4', 'Teknik Informatika', '1749381349_b9e7c1eae37decb992ed.jpg', 'https://instagram.com/tim4', 'https://youtube.com/tim4', 'https://tiktok.com/tim4', NULL, NULL),
(11, 'Cut Nursilul', 'cutnursilul@gmail.com', '08123456789', 'Sigli', 'Teknik Informatika', NULL, '#', '#', '#', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`) VALUES
(1, 'admin@unpri.ac.id', '$2y$10$uARMQpRVHctJi.eg2oTh6edNTGymKNI/wWOaJnvcm199NxmqnsL9.', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
