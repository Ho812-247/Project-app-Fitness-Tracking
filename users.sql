-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Dec 25, 2023 at 04:29 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `green-phuc`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `google_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`, `google_id`) VALUES
(1, 'Gwen Osinski PhD', 'oda.schuppe@example.org', '2023-05-18 05:28:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lqVh6HKwty', '2023-05-18 05:28:29', '2023-05-18 05:28:29', 1, NULL),
(2, 'Mr. Mohammad Halvorson', 'hillard54@example.org', '2023-05-18 05:28:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3kxxJkrdOe', '2023-05-18 05:28:29', '2023-05-18 05:28:29', 1, NULL),
(3, 'Dr. Khalid Haag', 'rashad.damore@example.net', '2023-05-18 05:28:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jhhRdNdDvC', '2023-05-18 05:28:29', '2023-05-18 05:28:29', 1, NULL),
(4, 'Dr. Rahul Collier IV', 'orrin.rosenbaum@example.net', '2023-05-18 05:28:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Hji86xVKR9', '2023-05-18 05:28:29', '2023-05-18 05:28:29', 1, NULL),
(5, 'Franco Wilderman', 'lemke.elyse@example.org', '2023-05-18 05:28:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qpmCtjetZm', '2023-05-18 05:28:29', '2023-05-18 05:28:29', 1, NULL),
(6, 'Dr. Cassie Daugherty Sr.', 'birdie.tillman@example.net', '2023-05-18 05:28:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2QjAAeA4dM', '2023-05-18 05:28:29', '2023-05-18 05:28:29', 1, NULL),
(7, 'Mr. Omer Barton', 'jones.leonor@example.org', '2023-05-18 05:28:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qmu8t0d9Mr', '2023-05-18 05:28:29', '2023-05-18 05:28:29', 1, NULL),
(8, 'Raven Nader', 'crist.kailyn@example.net', '2023-05-18 05:28:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'c7GT2QG5G6', '2023-05-18 05:28:29', '2023-05-18 05:28:29', 1, NULL),
(9, 'Miss Ona Stoltenberg', 'kiera.collier@example.net', '2023-05-18 05:28:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'E5gDShqXWn', '2023-05-18 05:28:29', '2023-05-18 05:28:29', 1, NULL),
(10, 'Prof. Elwin Collins', 'pablo.wisoky@example.com', '2023-05-18 05:28:29', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dfjynYrojM', '2023-05-18 05:28:29', '2023-05-18 05:28:29', 1, NULL),
(11, 'manh', 'm@t.com', NULL, '$2y$10$It/oUhzXWHwdhdvZPR7lkuKruFZ.fO6UGeq5hqPcuNOLYgsjs8siW', NULL, '2023-05-18 05:32:21', '2023-05-18 05:32:21', 1, NULL);

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
