-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2024 at 11:22 AM
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
-- Database: `finalexam`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `car_type` varchar(255) NOT NULL,
  `daily_rent_price` decimal(8,2) NOT NULL,
  `availability` tinyint(1) NOT NULL DEFAULT 1,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `name`, `brand`, `model`, `year`, `car_type`, `daily_rent_price`, `availability`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Civic LX', 'Honda', 'Civic LX', 2021, 'Sedan', 500.00, 1, 'uploads/images/1727367085.jpg', '2024-09-26 10:11:25', '2024-09-26 10:11:25'),
(2, 'Model S', 'Tesla', 'Long Range', 2023, 'Electric', 1120.00, 1, 'uploads/images/1727367228.jpg', '2024-09-26 10:13:48', '2024-09-26 10:13:48'),
(3, 'Camry XSE', 'Toyota', 'Camry XSE', 2020, 'Sedan', 550.00, 1, 'uploads/images/1727367303.jpg', '2024-09-26 10:15:03', '2024-09-26 10:15:03'),
(4, 'F-150 Lariat', 'Ford', 'F-150', 2022, 'Pickup', 800.00, 1, 'uploads/images/1727367396.jpg', '2024-09-26 10:16:36', '2024-09-26 10:59:15'),
(5, 'X5 xDrive40i', 'BMW', 'X5', 2021, 'SUV', 950.00, 1, 'uploads/images/1727367486.jpg', '2024-09-26 10:18:06', '2024-09-26 10:18:06'),
(6, 'Wrangler Sahara', 'Jeep', 'A4', 2019, 'Sedan', 450.00, 1, 'uploads/images/1727367574.jpg', '2024-09-26 10:19:34', '2024-09-26 10:59:25'),
(7, 'Nissan Rogue', 'Nissan', 'Rogue SL', 2022, 'SUV', 399.00, 1, 'uploads/images/1727368735.jpg', '2024-09-26 10:38:55', '2024-09-26 10:38:55'),
(8, 'Audi Q7', 'Audi', 'Q7 Premium', 2022, 'SUV', 300.00, 1, 'uploads/images/1727411765.jpg', '2024-09-26 22:36:05', '2024-09-26 22:36:05'),
(9, 'Mercedes-Benz GLC', 'Mercedes-Benz', 'GLC 300', 2023, 'SUV', 500.00, 1, 'uploads/images/1727411893.jpg', '2024-09-26 22:38:14', '2024-09-26 22:38:14'),
(13, 'Toyota Corolla', 'Toyota', 'Corolla LE', 2020, 'Sedan', 300.00, 1, 'uploads/images/1727412318.jpg', '2024-09-26 22:45:18', '2024-09-26 22:45:18'),
(14, 'Ford Mustang', 'Ford', 'Mustang GT', 2022, 'Coupe', 950.00, 1, 'uploads/images/1727412476.jpg', '2024-09-26 22:47:56', '2024-09-26 22:47:56'),
(15, 'Chevrolet Tahoe', 'Chevrolet', 'Tahoe LT', 2022, 'SUV', 1130.00, 1, 'uploads/images/1727413936.png', '2024-09-26 23:12:16', '2024-09-26 23:12:16'),
(16, 'Volkswagen Passat', 'Volkswagen', 'Passat R-Line', 2021, 'Sedan', 500.00, 1, 'uploads/images/1727414065.jpg', '2024-09-26 23:14:25', '2024-09-26 23:14:25'),
(17, 'Subaru Outback', 'Subaru', 'Outback Limited', 2021, 'Crossover', 700.00, 1, 'uploads/images/1727414201.png', '2024-09-26 23:16:41', '2024-09-26 23:16:41'),
(18, 'Lexus ES', 'Lexus', 'ES 350', 2023, 'Sedan', 850.00, 1, 'uploads/images/1727414310.jpg', '2024-09-26 23:18:30', '2024-09-26 23:18:30'),
(19, 'Dodge Charger', 'Dodge', 'Charger R/T', 2021, 'Sedan', 750.00, 1, 'uploads/images/1727414377.png', '2024-09-26 23:19:37', '2024-09-26 23:19:37'),
(20, 'Tesla Model X', 'Tesla', 'Model X Long Range', 2023, 'SUV', 1150.00, 1, 'uploads/images/1727414504.jpg', '2024-09-26 23:21:44', '2024-09-26 23:21:44'),
(21, 'Mazda CX-5', 'Mazda', 'CX-5 Grand Touring', 2022, 'SUV', 600.00, 1, 'uploads/images/1727414619.jpg', '2024-09-26 23:23:39', '2024-09-26 23:23:39'),
(22, 'Porsche 911', 'Porsche', '911 Carrera', 2021, 'Sports Car', 2000.00, 1, 'uploads/images/1727414696.jpg', '2024-09-26 23:24:56', '2024-09-26 23:24:56'),
(23, 'Toyota Highlander', 'Toyota', 'Highlander XLE', 2023, 'SUV', 900.00, 1, 'uploads/images/1727414760.jpg', '2024-09-26 23:26:00', '2024-09-26 23:26:00'),
(24, 'Hyundai Tucson', 'Hyundai', 'Tucson SEL', 2022, 'SUV', 450.00, 1, 'uploads/images/1727414826.jpg', '2024-09-26 23:27:07', '2024-09-26 23:27:07'),
(25, 'Civic', 'Honda', 'EX', 2021, 'Sedan', 20.00, 1, 'uploads/images/1727428046.jpg', '2024-09-27 03:07:26', '2024-09-27 03:07:26'),
(27, 'Corolla', 'Toyota', 'XLE', 2022, 'Sedan', 300.00, 1, 'uploads/images/1727428424.jpg', '2024-09-27 03:09:20', '2024-09-27 03:13:44'),
(28, 'Rav4', 'Toyota', 'LE', 2020, 'SUV', 600.00, 1, 'uploads/images/1727428241.jpg', '2024-09-27 03:10:41', '2024-09-27 03:10:41'),
(29, 'Model S', 'Tesla', 'Long Range', 2022, 'Electric', 1200.00, 1, 'uploads/images/1727428361.jpg', '2024-09-27 03:12:41', '2024-09-27 03:12:41'),
(30, 'Explorer', 'Ford', 'XLT', 2020, 'SUV', 650.00, 1, 'uploads/images/1727428520.jpg', '2024-09-27 03:15:20', '2024-09-27 03:15:20'),
(31, 'Camry', 'Toyota', 'SE', 2022, 'Sedan', 520.00, 1, 'uploads/images/1727428575.png', '2024-09-27 03:16:15', '2024-09-27 03:16:15'),
(32, 'X5', 'BMW', 'M50i', 2023, 'SUV', 1400.00, 1, 'uploads/images/1727428650.jpg', '2024-09-27 03:17:30', '2024-09-27 03:17:30'),
(33, 'A6', 'Audi', 'Premium Plus', 2021, 'Sedan', 950.00, 1, 'uploads/images/1727428759.jpg', '2024-09-27 03:19:19', '2024-09-27 03:19:19'),
(34, 'Mustang', 'FORD', 'GT', 2023, 'Coupe', 900.00, 1, 'uploads/images/1727428886.jpg', '2024-09-27 03:21:26', '2024-09-27 03:21:26');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_09_15_165628_create_cars_table', 1),
(5, '2024_09_15_165651_create_rentals_table', 1),
(6, '2024_09_16_071505_add_status_to_rentals_table', 1),
(7, '2024_09_16_074403_add_phoner_address_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rentals`
--

CREATE TABLE `rentals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `car_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_cost` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Ongoing'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('fx2qJ7kku2ZzdgYFaw1OmOZ3rzY6tlB1R6o52xRf', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWERpUFlqeGVEUmk0R0lnMWFhbjNGck5ORVdPZ1VTM2J0OFdzNjFRcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9jYXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1727428887),
('G1Si2Sv6ZpyurRz58xWYpuMD8T0gSor6LSj1US1D', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3hEeklNdVJMUHptQ1pUSmpFSnFwT00xQTI3a0RERU91Z3doV3JPeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXJzP2JyYW5kPSZwcmljZT0mdHlwZT1TZWRhbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1727372865),
('J5EvQ6lKxrNk4ziwZlf7hVKy96zvoeQ8zaCy3a3p', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUHdaMTMyeWlMNmVlNUU1akhmR0toVnBLUUhMTndNVk5UZ1NiTGdrRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1727416453),
('wP3v8S97fhpJ4u5qg147g8YySa6QtnYINnIJpXfs', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRm0yVllUY2FrRDJXdEtFS2pHbUQyeWRwSFgxcGNMdXkxVGFKc2JtNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1727370211);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `created_at`, `updated_at`, `phone`, `address`) VALUES
(1, 'Md.Arif Hossen', 'arifsohag2500@gmail.com', '$2y$12$SMrOYuYyGH9Xl5Wlgqw55OYldHBliWhI0Efj5evLAq95ZelX/P2Jm', 'admin', '2024-09-26 09:44:04', '2024-09-26 09:44:04', '01516051551', 'Hazaribagh,Dhaka-1209'),
(2, 'Sohag Khan', 'arifsohag2700@gmail.com', '$2y$12$l2yvcIbV8uThExOA3Ew8ue4Tdv8EJ2G0r6rRo7G69S6f/G2bJOBKu', 'customer', '2024-09-26 10:22:35', '2024-09-26 10:22:35', '01601051551', 'Bashudevchap');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `rentals`
--
ALTER TABLE `rentals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rentals_user_id_foreign` (`user_id`),
  ADD KEY `rentals_car_id_foreign` (`car_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rentals`
--
ALTER TABLE `rentals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rentals`
--
ALTER TABLE `rentals`
  ADD CONSTRAINT `rentals_car_id_foreign` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rentals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
