-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2022 at 02:18 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin`
--
CREATE DATABASE IF NOT EXISTS `admin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `admin`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(12, '2022_08_18_115055_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('6LfYOuGQeX5GSxb35QpjU5wiq7lMB3mhRVGyTzj5', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoieXhwbEVPNlpvSzhBME90WVNkSkJrdm5heWJWUjZTbHJzWFhzejllTiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6NDoiYXV0aCI7YToxOntzOjIxOiJwYXNzd29yZF9jb25maXJtZWRfYXQiO2k6MTY2MzQyMzg3NTt9czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkVmROcTN0MnRHMXBPMnpqZXJiUmpqZUhkWk8zSTZHOUxhUHRqblp3WGowZ3FzQTZsTHd5M1MiO30=', 1663424024),
('9CcplCStQOyqVYsHMOGvc4iEt3IlKSL8ffxiHiS3', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiT0Q2MFU3c3Z1NnBuWXhsQmk3STJXTGN3TnhwdGFxUUY2Y2laOHpIaSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkVmROcTN0MnRHMXBPMnpqZXJiUmpqZUhkWk8zSTZHOUxhUHRqblp3WGowZ3FzQTZsTHd5M1MiO30=', 1663586121),
('haE8sA8wxLt43UhgmgayMm5mlEDugV2AaQL0mkRv', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiNEdwcjJiTnpuaGI2N0Y5cVN4bm9Pd0l0Mk5SbTlycXJJajRYRVI4MCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbiI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7czo0OiJhdXRoIjthOjE6e3M6MjE6InBhc3N3b3JkX2NvbmZpcm1lZF9hdCI7aToxNjYzNDMyOTQ4O31zOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRRN0NLZGVlb3l3MXAvZFRRNEFjLkJ1bDdrYkR0MGhDZnFzZy9NR2JjdjlKaFlwRFA2SHFleSI7fQ==', 1663433858),
('n1DjK1Gf7hLUEBajGbKaKeB4Mh4IYqabVXdMKqf6', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiSWVxc09MZ2RtSTQ3M2g5N2pYeDlXb0lBNmdrdGVKZ2dSaWZKNUpqNyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9ob21lIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE2NjM0MTQ3OTE7fX0=', 1663414792);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `usertype`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'saad ali', '03148151487', NULL, 'saad@gmail.com', NULL, '$2y$10$CAZi3Mikzk9O0K8W8YIgguqZ2AwyWjsONxs83DyHaE1Ckb3bkKXY6', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-23 05:14:16', '2022-08-23 05:14:16'),
(2, 'Admin', '0314151487', 'Admin', 'saadali@gmail.com', NULL, '$2y$10$VdNq3t2tG1pO2zjerbRjjeHdZO3I6G9LaPtjnZwXj0gqsA6lLwy3S', NULL, NULL, NULL, 'XMQo1leh1IM2XQr0zOCmUL3SjUlw9oEh4XksagX2cltryE3iAeRpnMYcN00f', NULL, NULL, '2022-09-17 05:30:46', '2022-09-17 05:30:46'),
(3, 'User', '031415148722', 'User', 'user@gmail.com', NULL, '$2y$10$Q7CKdeeoyw1p/dTQ4Ac.Bul7kbDt0hCfqsg/MGbcv9JhYpDP6Hqey', NULL, NULL, NULL, 'cyox19o90GUbu1ZYO4IaBH3X2FuQzgsVMPR8oJRChzSnJCraW9XNCONXzWES', NULL, NULL, '2022-09-17 05:31:32', '2022-09-17 05:31:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `admin_prac`
--
CREATE DATABASE IF NOT EXISTS `admin_prac` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `admin_prac`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(16, '2019_08_19_000000_create_failed_jobs_table', 1),
(17, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(18, '2022_08_18_115055_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('swMmCSooMsZUjQTMrHR85ftLya7SbXxEsf3fyovs', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUlRvWmJnaHdKQWFCNmFiQTJGUEk2WUR3dzVqMUpKTXJqMldtM1kwWiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9yZWdpc3RlciI7fX0=', 1663583465);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `admin_scratch`
--
CREATE DATABASE IF NOT EXISTS `admin_scratch` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `admin_scratch`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(12, '2022_09_27_094422_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('AhkqMV7L4QNOwLlgROTvnFaIILXI7j8W7CnzSYv1', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWlLOWlLZ3pIck9mdnpYOUNUNUc2WXFZN05JWllKVzBRV2J3MzM2biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1664462061),
('cpOYrQL7ZMj9ayqhnKyrC0aq5mz3wodcZCqvIMYp', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiVGZpdFQ5aG1rdTkyT0ltYlBSNUt3eUdWOUowRWhXZUk2eVJOQ0dURCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NDoiYXV0aCI7YToxOntzOjIxOiJwYXNzd29yZF9jb25maXJtZWRfYXQiO2k6MTY2NDM2MTU2NTt9czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkYWpaY1RzOU1aWm0xa0c3WlczejNRLkZyY1hOcVd4clVrSy5QLy5yR0ZudXpRbXZMTTM2TzYiO30=', 1664365806),
('kEvE64lSTgwIRMb46jCp2tsObjWen9WDDtuSPo7o', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRVI2cXZCSEFqVUZUY3dKVkRLZ0V4RTRJclNwdXBadnp4blBHTVIyMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1664384219),
('rsNDl9XfmtOYHqN8BZa79bTJ295boTT01GaNqe5g', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiWkJqV05KMEIySEIxcTU3Uks1WVdXNGhlOVFxNU8xRUFucEg2MlNiTyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6NDoiYXV0aCI7YToxOntzOjIxOiJwYXNzd29yZF9jb25maXJtZWRfYXQiO2k6MTY2NDI4Njc1Mzt9czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkazZPSWRDeWRXWXMwMDh2bHZOTHEydWZhSVRLcUVVLkxTTlhhSDBuYU44VFdWZE94MllKa3UiO30=', 1664286758);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `usertype`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '0314151487', 'Admin', 'saadali@gmail.com', NULL, '$2y$10$ajZcTs9MZZm1kG7ZW3z3Q.FrcXNqWxrUkK.P/.rGFnuzQmvLM36O6', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-27 08:11:25', '2022-09-27 08:11:25'),
(2, 'User', '0314151488', 'User', 'user@gmail.com', NULL, '$2y$10$k6OIdCydWYs008vlvNLq2ufaITKqEU.LSNXaH0naN8TWVdOx2YJku', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-27 08:12:17', '2022-09-27 08:12:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `blood_donation`
--
CREATE DATABASE IF NOT EXISTS `blood_donation` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blood_donation`;

-- --------------------------------------------------------

--
-- Table structure for table `center`
--

CREATE TABLE `center` (
  `Center_ID` int(5) NOT NULL,
  `City` varchar(40) NOT NULL,
  `Location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `center`
--

INSERT INTO `center` (`Center_ID`, `City`, `Location`) VALUES
(1, 'Dubai', 'St 29 Blood Donate Center Near X Road Dubai'),
(2, 'Abu Dhabi', 'St 14 Blood Donate Center Near Y Road Abu Dhabi'),
(3, 'Sharjah', 'St 16 Blood Donate Center Near Z Road Sharjah');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Contact_ID` int(5) NOT NULL,
  `Name` varchar(80) NOT NULL,
  `Email` varchar(80) NOT NULL,
  `Message` varchar(2000) NOT NULL,
  `User_ID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Contact_ID`, `Name`, `Email`, `Message`, `User_ID`) VALUES
(1, 'Rashid', 'rashid@gmail.com', 'This is a first message', 1),
(2, 'Ali', 'ali@gmail.com', 'This is a second message !', 1);

-- --------------------------------------------------------

--
-- Table structure for table `survey_form`
--

CREATE TABLE `survey_form` (
  `Survey_ID` int(5) NOT NULL,
  `Blood_Group` varchar(20) NOT NULL,
  `First_Time` varchar(20) NOT NULL,
  `Medical_Condition` varchar(20) NOT NULL,
  `Excercise` varchar(20) NOT NULL,
  `Weakness` varchar(20) NOT NULL,
  `BMI` varchar(20) NOT NULL,
  `Name` varchar(80) NOT NULL,
  `Email` varchar(80) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Age` int(5) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `User_ID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `survey_form`
--

INSERT INTO `survey_form` (`Survey_ID`, `Blood_Group`, `First_Time`, `Medical_Condition`, `Excercise`, `Weakness`, `BMI`, `Name`, `Email`, `Phone`, `Age`, `Gender`, `User_ID`) VALUES
(1, '20', 'No', 'No', 'Yes', 'No', 'No', 'Rashid', 'rashid@gmail.com', '0314151487', 2, 'Male', 1),
(2, '20', 'No', 'No', 'Yes', 'No', 'No', 'Rashid', 'rashid@gmail.com', '0314151487', 2, 'Male', 1),
(3, '60', 'No', 'Yes', 'Yes', 'No', 'Yes', 'Ahmed', 'ahmed@gmail.com', '971894814561', 10, 'Male', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_ID` int(5) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Email` varchar(80) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_ID`, `Name`, `Email`, `Phone`, `Password`) VALUES
(1, 'Rashid', 'rashid@gmail.com', '03311321578', 'rashid@123!+'),
(2, 'Ali', 'ali@gmail.com', '0314151487', '123'),
(3, 'Ahmed', 'ahmed@gmail.com', '0314151487', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `center`
--
ALTER TABLE `center`
  ADD PRIMARY KEY (`Center_ID`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`Contact_ID`),
  ADD KEY `User` (`User_ID`);

--
-- Indexes for table `survey_form`
--
ALTER TABLE `survey_form`
  ADD PRIMARY KEY (`Survey_ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `center`
--
ALTER TABLE `center`
  MODIFY `Center_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `Contact_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `survey_form`
--
ALTER TABLE `survey_form`
  MODIFY `Survey_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`);

--
-- Constraints for table `survey_form`
--
ALTER TABLE `survey_form`
  ADD CONSTRAINT `survey_form_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`);
--
-- Database: `buyers`
--
CREATE DATABASE IF NOT EXISTS `buyers` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `buyers`;

-- --------------------------------------------------------

--
-- Table structure for table `buyers`
--

CREATE TABLE `buyers` (
  `ID` int(20) NOT NULL,
  `Buyer_Name` varchar(50) NOT NULL,
  `Buyer_Phone` bigint(20) NOT NULL,
  `Buyer_Address` varchar(220) NOT NULL,
  `Email` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buyers`
--

INSERT INTO `buyers` (`ID`, `Buyer_Name`, `Buyer_Phone`, `Buyer_Address`, `Email`) VALUES
(1, 'elias', 4725899634, 'Alesund', 'elias456@gmail.com'),
(2, 'magnus', 4725845914, 'Alesund', 'magnus852@gmail.com'),
(3, 'lucas', 4725898524, 'Alesund', 'lucas951@gmail.com'),
(4, 'Henrik', 4725863214, 'Alesund', 'henrik963@gmail.com'),
(5, 'Saad', 123456987, 'xyxzzz', 'Saad@gmail.com'),
(6, 'Saad Ali', 856932147, 'abcabc', 'exp@gmail.com'),
(7, 'waqar', 1234522552, 'aaaaaa', 'e@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buyers`
--
ALTER TABLE `buyers`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buyers`
--
ALTER TABLE `buyers`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `capgemini`
--
CREATE DATABASE IF NOT EXISTS `capgemini` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `capgemini`;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `C_ID` int(225) NOT NULL,
  `C_Name` varchar(40) NOT NULL,
  `C_Address` varchar(100) NOT NULL,
  `Phone_Number` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `D_ID` int(225) NOT NULL,
  `Emp_ID` int(225) NOT NULL,
  `D_Name` varchar(40) NOT NULL,
  `D_Address` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Emp_ID` int(225) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Phone_Number` bigint(20) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `DOB` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_hours`
--

CREATE TABLE `log_hours` (
  `Log_ID` int(225) NOT NULL,
  `P_Emp_ID` int(225) NOT NULL,
  `Start_Time` decimal(20,0) NOT NULL,
  `End_Time` decimal(20,0) NOT NULL,
  `Log_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `professional_employee`
--

CREATE TABLE `professional_employee` (
  `P_Emp_ID` int(225) NOT NULL,
  `Project_ID` int(225) NOT NULL,
  `Emp_ID` int(225) NOT NULL,
  `Assigned_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `Project_ID` int(225) NOT NULL,
  `C_ID` int(225) NOT NULL,
  `D_ID` int(225) NOT NULL,
  `Emp_ID` int(225) NOT NULL,
  `Project_Tiltle` varchar(80) NOT NULL,
  `Project_Start_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project_manager`
--

CREATE TABLE `project_manager` (
  `PM_ID` int(225) NOT NULL,
  `Team_ID` int(225) NOT NULL,
  `Assigned_Team` varchar(40) NOT NULL,
  `Assigned_Project` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `R_ID` int(225) NOT NULL,
  `R_Name` varchar(60) NOT NULL,
  `R_Type` varchar(60) NOT NULL,
  `R_Price` bigint(40) NOT NULL DEFAULT 2000,
  `R_Brand` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`C_ID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`D_ID`),
  ADD UNIQUE KEY `Emp_ID` (`Emp_ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Emp_ID`);

--
-- Indexes for table `log_hours`
--
ALTER TABLE `log_hours`
  ADD PRIMARY KEY (`Log_ID`),
  ADD UNIQUE KEY `p_emp_id` (`P_Emp_ID`);

--
-- Indexes for table `professional_employee`
--
ALTER TABLE `professional_employee`
  ADD PRIMARY KEY (`P_Emp_ID`),
  ADD UNIQUE KEY `Project_ID` (`Project_ID`),
  ADD UNIQUE KEY `emp_id` (`Emp_ID`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`Project_ID`),
  ADD UNIQUE KEY `C_ID` (`C_ID`),
  ADD UNIQUE KEY `D_ID` (`D_ID`),
  ADD UNIQUE KEY `Emp_ID` (`Emp_ID`);

--
-- Indexes for table `project_manager`
--
ALTER TABLE `project_manager`
  ADD PRIMARY KEY (`PM_ID`),
  ADD UNIQUE KEY `Team_ID` (`Team_ID`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`R_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `C_ID` int(225) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `D_ID` int(225) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `Emp_ID` int(225) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log_hours`
--
ALTER TABLE `log_hours`
  MODIFY `Log_ID` int(225) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `professional_employee`
--
ALTER TABLE `professional_employee`
  MODIFY `P_Emp_ID` int(225) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `Project_ID` int(225) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_manager`
--
ALTER TABLE `project_manager`
  MODIFY `PM_ID` int(225) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `R_ID` int(225) NOT NULL AUTO_INCREMENT;
--
-- Database: `casestudy`
--
CREATE DATABASE IF NOT EXISTS `casestudy` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `casestudy`;
--
-- Database: `cbs`
--
CREATE DATABASE IF NOT EXISTS `cbs` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cbs`;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `Booking_ID` int(20) NOT NULL,
  `Customer_ID` int(20) NOT NULL,
  `Car_ID` int(20) NOT NULL,
  `Driver_ID` int(20) NOT NULL,
  `Booking_Duration` datetime NOT NULL,
  `Price` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `Car_ID` int(20) NOT NULL,
  `Car_Type` varchar(40) NOT NULL,
  `Car_Number` bigint(20) NOT NULL,
  `Customer_ID` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_ID` int(20) NOT NULL,
  `Customer_Name` varchar(40) NOT NULL,
  `Customer_Phone` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `Driver_ID` int(20) NOT NULL,
  `Driver_Name` varchar(40) NOT NULL,
  `Driver_Phone` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`Booking_ID`),
  ADD UNIQUE KEY `Customer_ID` (`Customer_ID`),
  ADD UNIQUE KEY `Car_ID` (`Car_ID`),
  ADD UNIQUE KEY `Driver_ID` (`Driver_ID`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`Car_ID`),
  ADD UNIQUE KEY `Customer_ID` (`Customer_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`Driver_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `Booking_ID` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `Car_ID` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Customer_ID` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `Driver_ID` int(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`Car_ID`) REFERENCES `car` (`Car_ID`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`),
  ADD CONSTRAINT `booking_ibfk_3` FOREIGN KEY (`Driver_ID`) REFERENCES `driver` (`Driver_ID`);

--
-- Constraints for table `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`);
--
-- Database: `ch08_simpleco`
--
CREATE DATABASE IF NOT EXISTS `ch08_simpleco` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ch08_simpleco`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_ID` int(20) NOT NULL,
  `CUST_NUM` int(20) NOT NULL,
  `CUST_LNAME` varchar(40) NOT NULL,
  `CUST_FNAME` varchar(40) NOT NULL,
  `CUST_BALANCE` float NOT NULL,
  `CUST_DOB` date DEFAULT NULL,
  `CUST_AGE` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_ID`, `CUST_NUM`, `CUST_LNAME`, `CUST_FNAME`, `CUST_BALANCE`, `CUST_DOB`, `CUST_AGE`) VALUES
(1, 1000, 'Smith', 'Jeanne', 1050.11, '1979-03-15', '50'),
(2, 1001, 'Oriega', 'Juan', 840.92, '1988-12-22', '34');

-- --------------------------------------------------------

--
-- Table structure for table `customer_2`
--

CREATE TABLE `customer_2` (
  `CUST_2_ID` int(20) NOT NULL,
  `CUST_NUM` int(20) NOT NULL,
  `CUST_LNAME` varchar(40) NOT NULL,
  `CUST_FNAME` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_2`
--

INSERT INTO `customer_2` (`CUST_2_ID`, `CUST_NUM`, `CUST_LNAME`, `CUST_FNAME`) VALUES
(1, 2000, 'McPherson', 'Anne'),
(2, 2001, 'Oriega', 'Juan'),
(3, 2002, 'Kowalski', 'jan'),
(4, 2003, 'Chen', 'George');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `Invoice_ID` int(20) NOT NULL,
  `INV_NUM` int(20) NOT NULL,
  `CUST_NUM` int(20) NOT NULL,
  `INV_DATE` date NOT NULL,
  `INV_AMOUNT` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`Invoice_ID`, `INV_NUM`, `CUST_NUM`, `INV_DATE`, `INV_AMOUNT`) VALUES
(1, 8000, 1000, '2014-03-23', 235.69),
(2, 8001, 1001, '2014-03-23', 312.82),
(3, 8002, 1001, '2014-03-30', 526.1),
(4, 8003, 1000, '2014-04-12', 194.78),
(5, 8004, 1000, '2014-04-23', 619.44);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `customer_2`
--
ALTER TABLE `customer_2`
  ADD PRIMARY KEY (`CUST_2_ID`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`Invoice_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Customer_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer_2`
--
ALTER TABLE `customer_2`
  MODIFY `CUST_2_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `Invoice_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `chatsystem`
--
CREATE DATABASE IF NOT EXISTS `chatsystem` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `chatsystem`;

-- --------------------------------------------------------

--
-- Table structure for table `ch_favorites`
--

CREATE TABLE `ch_favorites` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `favorite_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ch_favorites`
--

INSERT INTO `ch_favorites` (`id`, `user_id`, `favorite_id`, `created_at`, `updated_at`) VALUES
(45441299, 1, 2, '2022-12-10 04:08:34', '2022-12-10 04:08:34');

-- --------------------------------------------------------

--
-- Table structure for table `ch_messages`
--

CREATE TABLE `ch_messages` (
  `id` bigint(20) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `body` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ch_messages`
--

INSERT INTO `ch_messages` (`id`, `type`, `from_id`, `to_id`, `body`, `attachment`, `seen`, `created_at`, `updated_at`) VALUES
(1756953681, 'user', 1, 2, 'Workingg', NULL, 1, '2022-11-01 11:51:12', '2022-11-01 11:51:15'),
(1862057774, 'user', 1, 1, 'Hi', NULL, 1, '2022-12-10 04:05:40', '2022-12-10 04:05:41'),
(2125356937, 'user', 2, 1, 'Good !!', NULL, 1, '2022-11-01 11:51:24', '2022-11-01 11:51:50'),
(2175881347, 'user', 1, 2, 'Anas ..........................!', NULL, 1, '2022-11-01 11:28:38', '2022-11-01 11:30:25'),
(2460250810, 'user', 2, 1, 'Hello !', NULL, 1, '2022-11-01 11:32:11', '2022-11-01 11:32:17'),
(2465487788, 'user', 1, 2, '', '{\"new_name\":\"faecbb29-58f2-491b-940e-e18c3ef82c24.jpg\",\"old_name\":\"images (11).jpg\"}', 1, '2022-11-01 11:33:34', '2022-11-01 11:34:53');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_11_01_160534_create_sessions_table', 1),
(7, '2022_11_01_999999_add_active_status_to_users', 1),
(8, '2022_11_01_999999_add_avatar_to_users', 1),
(9, '2022_11_01_999999_add_dark_mode_to_users', 1),
(10, '2022_11_01_999999_add_messenger_color_to_users', 1),
(11, '2022_11_01_999999_create_favorites_table', 1),
(12, '2022_11_01_999999_create_messages_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('eM2R6mi2TAUBNxuglgwkWtCPn8SW4r5urK8JLCHK', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiY2NHaDl3UkpzOWxoSnU5YkMzU1V0WGFQR2VEdTRJTDVjUjREYkRhVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1670663583);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.png',
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `messenger_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#2180f3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `active_status`, `avatar`, `dark_mode`, `messenger_color`) VALUES
(1, 'Saad Ali', 'saadimtiaz208@gmail.com', NULL, '$2y$10$QW5XE5QTGtXj2HcsuCRvv.BQNxVKpPnQR/3fqKzIUlkqSMbim02zy', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-01 11:21:32', '2022-12-10 04:09:28', 1, 'avatar.png', 1, '#2196F3'),
(2, 'Anas Shahid', 'anas.56918@iqra.edu.pk', NULL, '$2y$10$iaKYwSd5s1k9ayol0sWMleg2KsHzhwykttittGVbJwjE5fIL9Rkua', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-01 11:22:42', '2022-11-01 12:13:06', 0, 'avatar.png', 1, '#2180f3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ch_favorites`
--
ALTER TABLE `ch_favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_messages`
--
ALTER TABLE `ch_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `cyphion`
--
CREATE DATABASE IF NOT EXISTS `cyphion` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cyphion`;

-- --------------------------------------------------------

--
-- Table structure for table `add_leads`
--

CREATE TABLE `add_leads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lead_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `business_leads`
--

CREATE TABLE `business_leads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_leads`
--

INSERT INTO `business_leads` (`id`, `name`, `email`, `phone`, `business_type`, `created_at`, `updated_at`) VALUES
(1, 'Waqar', 'waqarnasir@cyphion.com', '0123456798', 'Education', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `business_messages`
--

CREATE TABLE `business_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `range` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_messages`
--

INSERT INTO `business_messages` (`id`, `name`, `email`, `phone`, `service`, `message`, `range`, `created_at`, `updated_at`) VALUES
(1, 'Davidmem', 'mymail@mymails.cmo', '89645288515', 'Saas product design', 'The world is in crisis and some people are getting rich against all odds with the help of one smart robot. http://ebay-app.malenaturalpure.com/news-6086 It is enough to invest at least $250 one time and this smart robot will make you passive income from $1000 per day. http://app-101-financial.degitaldollar.com/news-2396 Over 94,833 people have already become multimillionaires over the past month thanks to the smart robot. See for yourself. http://app-70mai.e-bestseller.com/id-8198', '$1k-5k', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leads_responses`
--

CREATE TABLE `leads_responses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lead_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `messages` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_11_02_123429_create_sessions_table', 1),
(7, '2022_11_02_131543_create_business_messages_table', 2),
(8, '2022_11_02_132007_create_business_leads_table', 2),
(9, '2022_11_02_132155_create_leads_responses_table', 2),
(10, '2022_11_02_132627_create_add_leads_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('fdLJPR4eSDNCw5uelavgLDQbbyyYAu69PXaXSA4E', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiSHphS2dWMHpDbklCc0xGQU92TkswRnVDMm9hSW5DYUJOazFWbVZGbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZGRfbGVhZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkL3JxOGE2c0tXTzFlT2lBMWxaLjA5LmNYSzVOaUVkL1pSeWt3NHlYU0hmNVRIZ054TzdDU3kiO30=', 1667470854),
('popNcpI6rkIlKzGyOpFbFy7cW9lqQhHNv3UJ6xpz', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoic1NzWEE0QlhwZTFKRVp3aDF3VTlnQ240VFRuRmJWUk9BZzQyYkoxZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9MZWFkc19SZXNwb25zZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkL3JxOGE2c0tXTzFlT2lBMWxaLjA5LmNYSzVOaUVkL1pSeWt3NHlYU0hmNVRIZ054TzdDU3kiO30=', 1668595048),
('Z4jwLAKuwAPs1HlxOVQArmZyCw8OekCTZxn5RXq8', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRzZ6M2NncE9rdXVTOW14clFuZGJMQUk1MGFIWlpjWk1JSzI5VXNzcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9MZWFkc19SZXNwb25zZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkL3JxOGE2c0tXTzFlT2lBMWxaLjA5LmNYSzVOaUVkL1pSeWt3NHlYU0hmNVRIZ054TzdDU3kiO30=', 1667410604);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` int(5) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Syed Saad Ali', 'saadimtiaz208@gmail.com', 1, NULL, '$2y$10$/rq8a6sKWO1eOiA1lZ.09.cXK5NiEd/ZRykw4yXSHf5THgNxO7CSy', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-02 07:44:04', '2022-11-02 07:44:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_leads`
--
ALTER TABLE `add_leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_leads`
--
ALTER TABLE `business_leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_messages`
--
ALTER TABLE `business_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `leads_responses`
--
ALTER TABLE `leads_responses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `add_leads`
--
ALTER TABLE `add_leads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business_leads`
--
ALTER TABLE `business_leads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `business_messages`
--
ALTER TABLE `business_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leads_responses`
--
ALTER TABLE `leads_responses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `dabs`
--
CREATE DATABASE IF NOT EXISTS `dabs` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dabs`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_ID` int(225) NOT NULL,
  `Username` varchar(40) NOT NULL,
  `Password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `Booking_ID` int(225) NOT NULL,
  `Patient_ID` int(225) NOT NULL,
  `Book_Appointment` varchar(40) NOT NULL,
  `Cancel_Appointment` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `clinic`
--

CREATE TABLE `clinic` (
  `Clinic_ID` int(225) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Contact_No` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `Feedback_ID` int(225) NOT NULL,
  `Patient_ID` int(225) NOT NULL,
  `Description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback_reply`
--

CREATE TABLE `feedback_reply` (
  `Feedback_Reply_ID` int(225) NOT NULL,
  `Admin_ID` int(225) NOT NULL,
  `Description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Login_ID` int(225) NOT NULL,
  `Username` varchar(40) NOT NULL,
  `Password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `Patient_ID` int(225) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `Age` bigint(20) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Contact_No` bigint(20) NOT NULL,
  `Address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `Register_ID` int(225) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Age` bigint(20) NOT NULL,
  `Contact_No` bigint(20) NOT NULL,
  `Password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `Schedule_ID` int(225) NOT NULL,
  `Patient_ID` int(225) NOT NULL,
  `Appointment` varchar(40) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_ID`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`Booking_ID`),
  ADD UNIQUE KEY `Patient_ID` (`Patient_ID`);

--
-- Indexes for table `clinic`
--
ALTER TABLE `clinic`
  ADD PRIMARY KEY (`Clinic_ID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`Feedback_ID`),
  ADD UNIQUE KEY `Patient_ID` (`Patient_ID`);

--
-- Indexes for table `feedback_reply`
--
ALTER TABLE `feedback_reply`
  ADD PRIMARY KEY (`Feedback_Reply_ID`),
  ADD UNIQUE KEY `Admin_ID` (`Admin_ID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Login_ID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`Patient_ID`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`Register_ID`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`Schedule_ID`),
  ADD UNIQUE KEY `Patient_ID` (`Patient_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Admin_ID` int(225) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `Booking_ID` int(225) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clinic`
--
ALTER TABLE `clinic`
  MODIFY `Clinic_ID` int(225) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `Feedback_ID` int(225) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback_reply`
--
ALTER TABLE `feedback_reply`
  MODIFY `Feedback_Reply_ID` int(225) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `Login_ID` int(225) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `Patient_ID` int(225) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `Register_ID` int(225) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `Schedule_ID` int(225) NOT NULL AUTO_INCREMENT;
--
-- Database: `dashboard`
--
CREATE DATABASE IF NOT EXISTS `dashboard` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dashboard`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_11_07_121835_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('WNp08kuMYXvZkdvMIg0ptZZOlZShLjaxrcSC7meq', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiN3lqSUlwTDk3TFhWU004cGhLcWZiM2NvV1lqbWhCSzVPbkxCaUlXQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9DaGFydCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkaVBKNUxwSmk3TXFWalQwN1E5THZrT1o0Q2sxWENtb2JqYUk2TFdZWjNlTUNBMjNCTkV3ZXUiO30=', 1667825849);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Saad', 'saadali@gmail.com', NULL, '$2y$10$iPJ5LpJi7MqVjT07Q9LvkOZ4Ck1XCmobjaI6LWYZ3eMCA23BNEweu', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-07 07:22:26', '2022-11-07 07:22:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `database`
--
CREATE DATABASE IF NOT EXISTS `database` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `database`;

-- --------------------------------------------------------

--
-- Table structure for table `bag`
--

CREATE TABLE `bag` (
  `Bag_ID` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `Client_ID` int(11) NOT NULL,
  `Payment_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bag`
--

INSERT INTO `bag` (`Bag_ID`, `Product_ID`, `Client_ID`, `Payment_ID`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 3),
(3, 3, 1, 2),
(4, 1, 2, 4),
(5, 2, 2, 4),
(6, 2, 3, 4),
(7, 3, 3, 1),
(8, 4, 3, 1),
(9, 5, 4, 2),
(10, 6, 4, 2),
(11, 7, 4, 3),
(12, 8, 4, 3),
(13, 8, 4, 2),
(14, 7, 1, 2),
(15, 6, 1, 1),
(16, 5, 1, 1),
(17, 4, 2, 1),
(18, 3, 2, 2),
(19, 2, 2, 2),
(20, 1, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `cat`
--

CREATE TABLE `cat` (
  `Cat_ID` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cat`
--

INSERT INTO `cat` (`Cat_ID`, `Name`) VALUES
(1, 'grocery'),
(2, 'book'),
(3, 'baby'),
(4, 'sport');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `Client_ID` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Mobile` bigint(45) NOT NULL,
  `Address` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`Client_ID`, `Name`, `Mobile`, `Address`) VALUES
(1, 'Mariam', 55512345, 'RAK'),
(2, 'Omer', 55545698, 'DAK'),
(3, 'Jo', 51234567, 'DX'),
(4, 'Ali', 55554321, 'DX'),
(5, 'Rashid', 55559632, 'SK');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `Product_ID` int(11) NOT NULL,
  `Product_Name` varchar(45) NOT NULL,
  `Product_Price` decimal(9,0) NOT NULL,
  `Product_Shipment` varchar(45) NOT NULL,
  `Cat_Name` varchar(45) NOT NULL,
  `Client_ID` int(11) NOT NULL,
  `Client_Name` varchar(45) NOT NULL,
  `Client_Address` varchar(45) NOT NULL,
  `Client_Mobile` varchar(45) NOT NULL,
  `Pay` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Payment_ID` int(11) NOT NULL,
  `Pay` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Payment_ID`, `Pay`) VALUES
(1, 'master'),
(2, 'visa'),
(3, 'cash'),
(4, 'noon pay');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Product_ID` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Shipment` varchar(45) NOT NULL,
  `Price` decimal(9,0) NOT NULL,
  `Cat_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Product_ID`, `Name`, `Shipment`, `Price`, `Cat_ID`) VALUES
(1, 'letuce', '1 day', '1', 0),
(2, 'banana', '1 day', '3', 1),
(3, 'The innovation sectret', '2 day', '50', 2),
(4, 'princess', '3 day', '55', 2),
(5, 'polo blue', '2 day', '30', 3),
(6, 'dress', '3 day', '70', 3),
(7, 'bike', '4 day', '600', 4),
(8, 'BBC Grill', '3 day', '96', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bag`
--
ALTER TABLE `bag`
  ADD PRIMARY KEY (`Bag_ID`);

--
-- Indexes for table `cat`
--
ALTER TABLE `cat`
  ADD PRIMARY KEY (`Cat_ID`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`Client_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Payment_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bag`
--
ALTER TABLE `bag`
  MODIFY `Bag_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cat`
--
ALTER TABLE `cat`
  MODIFY `Cat_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `Client_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `Payment_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `Product_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Database: `daxone`
--
CREATE DATABASE IF NOT EXISTS `daxone` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `daxone`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(225) NOT NULL,
  `Admin_Name` varchar(60) NOT NULL,
  `Admin_Password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `Admin_Name`, `Admin_Password`) VALUES
(1, 'Admin', '123'),
(2, 'Admin', '123');

-- --------------------------------------------------------

--
-- Table structure for table `best_products`
--

CREATE TABLE `best_products` (
  `B_ProductID` int(225) NOT NULL,
  `B_Product_Photo` varchar(200) NOT NULL,
  `B_Name` varchar(20) NOT NULL,
  `B_Color` varchar(20) NOT NULL,
  `B_Quantity` int(20) NOT NULL,
  `B_Prize` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `best_products`
--

INSERT INTO `best_products` (`B_ProductID`, `B_Product_Photo`, `B_Name`, `B_Color`, `B_Quantity`, `B_Prize`) VALUES
(23, 'Products/Best/huawei-nova-5i.jpg', 'Huawei Nova 5i', 'Blue', 200, 300),
(24, 'Products/Best/huawei-p40-pro.jpg', 'Huawei p40 Pro', 'White', 300, 350),
(25, 'Products/Best/Infinix.jpg', 'INFINIX', 'Blue', 300, 400),
(26, 'Products/Best/Oppo_A9.jpg', 'OPPO A9', 'Blue', 300, 350),
(27, 'Products/Best/Oppo_F7.jpg', 'OPPO F7', 'Red', 300, 300),
(28, 'Products/Best/panasonic-eluga-ray-810.png', 'Panasonic Eluga Ray ', 'Black', 300, 250),
(29, 'Products/Best/samsung-galaxy-s9.jpg', 'Samsung Galaxy S9', 'Blue', 300, 500),
(30, 'Products/Best/Vivo_S1.jpg', 'VIVO S1', 'Dark Blue', 200, 300),
(31, 'Products/Best/Xiomi_Redmi_9.jpg', 'XIOMI REDMI 9', 'Sea Green', 100, 250);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `ContactID` int(225) NOT NULL,
  `Name` varchar(60) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Message` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`ContactID`, `Name`, `Email`, `Subject`, `Message`) VALUES
(3, 'Saad', 'saad@gmail.com', 'Product Security', 'xyz');

-- --------------------------------------------------------

--
-- Table structure for table `featured_products`
--

CREATE TABLE `featured_products` (
  `F_ProductID` int(225) NOT NULL,
  `F_Product_Photo` varchar(200) NOT NULL,
  `F_Name` varchar(20) NOT NULL,
  `F_Color` varchar(20) NOT NULL,
  `F_Quantity` int(20) NOT NULL,
  `F_Prize` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `featured_products`
--

INSERT INTO `featured_products` (`F_ProductID`, `F_Product_Photo`, `F_Name`, `F_Color`, `F_Quantity`, `F_Prize`) VALUES
(18, 'Products/Featured/Corei3_intel.png', 'Core i3 Intel', 'Black', 200, 650),
(19, 'Products/Featured/Corei3_Intel_10th_Gen.jpeg', 'Core i3 Intel', 'White', 250, 680),
(20, 'Products/Featured/Corei5.jpeg', 'Core i5 Intel', 'Black', 250, 850),
(21, 'Products/Featured/Corei5_intel.jpg', 'Core i5 Intel', 'Grey', 300, 850),
(22, 'Products/Featured/Corei7.jpg', 'Core i7 Intel', 'Black', 300, 1500),
(23, 'Products/Featured/Corei7_Lenovo.jpg', 'Core i7 Intel', 'Black', 300, 1500),
(24, 'Products/Featured/predator.jpg', 'PREDATOR', 'Black', 350, 1800),
(25, 'Products/Featured/Spectre_x360.jpg', 'SPECTRE', 'White', 300, 1500);

-- --------------------------------------------------------

--
-- Table structure for table `general_products`
--

CREATE TABLE `general_products` (
  `G_ProductID` int(225) NOT NULL,
  `G_Product_Photo` varchar(200) NOT NULL,
  `G_Name` varchar(20) NOT NULL,
  `G_Color` varchar(20) NOT NULL,
  `G_Quantity` bigint(20) NOT NULL,
  `G_Prize` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `general_products`
--

INSERT INTO `general_products` (`G_ProductID`, `G_Product_Photo`, `G_Name`, `G_Color`, `G_Quantity`, `G_Prize`) VALUES
(30, 'Products/General/HeadPhones.jpg', 'Head Phone', 'Black', 500, 100),
(31, 'Products/General/HeadPhones1.jpg', 'Head Phone', 'Blue', 500, 100),
(32, 'Products/General/HeadPhones2.jpg', 'Head Phone', 'Purple', 500, 80),
(33, 'Products/General/HeadPhones3.jpg', 'Head Phone', 'Black', 500, 80),
(34, 'Products/General/HeadPhones5.jpg', 'Head Phone', 'Red', 500, 80),
(35, 'Products/General/HeadPhones5.jpg', 'Head Phone', 'Black', 500, 100),
(36, 'Products/General/HeadPhones6.jpg', 'Head Phone', 'Black', 300, 100),
(37, 'Products/General/HeadPhones7.jpg', 'Head Phone', 'White', 300, 100),
(38, 'Products/General/HeadPhones8.jpg', 'Head Phone', 'Black', 500, 100),
(39, 'Products/General/Oppo_F7.jpg', 'OPPO F7', 'Red', 400, 500),
(40, 'Products/General/Infinix.jpg', 'INFINIX', 'Blue', 300, 400),
(41, 'Products/General/Corei3_intel.png', 'Core i3 Intel', 'Black', 200, 650),
(42, 'Products/General/Corei5.jpeg', 'Core i5 Intel', 'Black', 250, 800);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `LoginID` int(225) NOT NULL,
  `Username` varchar(60) NOT NULL,
  `Password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`LoginID`, `Username`, `Password`) VALUES
(1, 'Saad Ali', '123');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(225) NOT NULL,
  `Customer_Name` varchar(60) NOT NULL,
  `ProductID` int(225) NOT NULL,
  `Product_Photo` varchar(200) NOT NULL,
  `Product_Name` varchar(100) NOT NULL,
  `Category` varchar(40) NOT NULL,
  `Quantity` int(20) NOT NULL,
  `Customer_Address` varchar(100) NOT NULL,
  `Customer_No` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `Customer_Name`, `ProductID`, `Product_Photo`, `Product_Name`, `Category`, `Quantity`, `Customer_Address`, `Customer_No`) VALUES
(10, 'Ebad', 24, 'Products/Featured/predator.jpg', 'PREDATOR', 'Featured Product', 1, 'Dumy Street No, Dumy House No', 123456789),
(11, 'Anas', 24, 'Products/Featured/predator.jpg', 'PREDATOR', 'Featured Product', 1, 'Dumy Street No, Dumy House No', 123456789),
(12, 'Saad', 27, 'Products/Best/Oppo_F7.jpg', 'OPPO F7', 'Best Product', 2, 'Dumy Street No, Dumy House No', 1234567899),
(13, 'Saad', 32, 'Products/General/HeadPhones2.jpg', 'Head Phone', 'All Product', 5, 'Dumy Street No, Dumy House No', 123456789),
(14, 'Saad', 31, 'Products/General/HeadPhones1.jpg', 'Head Phone', 'All Product', 2, 'Dumy Street No, Dumy House No', 1234567899);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `RegisterID` int(225) NOT NULL,
  `Username` varchar(60) NOT NULL,
  `Password` varchar(60) NOT NULL,
  `Email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`RegisterID`, `Username`, `Password`, `Email`) VALUES
(1, 'Saad Ali', '123', 'saad@gmail.com'),
(2, 'Saad Ali', '1234', 'saad@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `best_products`
--
ALTER TABLE `best_products`
  ADD PRIMARY KEY (`B_ProductID`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`ContactID`);

--
-- Indexes for table `featured_products`
--
ALTER TABLE `featured_products`
  ADD PRIMARY KEY (`F_ProductID`);

--
-- Indexes for table `general_products`
--
ALTER TABLE `general_products`
  ADD PRIMARY KEY (`G_ProductID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`LoginID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`RegisterID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `best_products`
--
ALTER TABLE `best_products`
  MODIFY `B_ProductID` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `ContactID` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `featured_products`
--
ALTER TABLE `featured_products`
  MODIFY `F_ProductID` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `general_products`
--
ALTER TABLE `general_products`
  MODIFY `G_ProductID` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `LoginID` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `RegisterID` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `dealer`
--
CREATE DATABASE IF NOT EXISTS `dealer` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dealer`;

-- --------------------------------------------------------

--
-- Table structure for table `buyers`
--

CREATE TABLE `buyers` (
  `ID` int(20) NOT NULL,
  `Buyer_Name` varchar(50) NOT NULL,
  `Buyer_Phone` bigint(20) NOT NULL,
  `Buyer_Address` varchar(220) NOT NULL,
  `Email` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buyers`
--

INSERT INTO `buyers` (`ID`, `Buyer_Name`, `Buyer_Phone`, `Buyer_Address`, `Email`) VALUES
(1, 'elias', 4725899634, 'Alesund', 'elias456@gmail.com'),
(2, 'magnus', 4725845914, 'Alesund', 'magnus852@gmail.com'),
(3, 'lucas', 4725898524, 'Alesund', 'lucas951@gmail.com'),
(4, 'Henrik', 4725863214, 'Alesund', 'henrik963@gmail.com'),
(5, 'Saad', 123456987, 'xyxzzz', 'Saad@gmail.com'),
(6, 'Saad Ali', 856932147, 'abcabc', 'exp@gmail.com'),
(7, 'waqar', 1234522552, 'aaaaaa', 'e@gmail.com'),
(8, 'Aiysha', 97185236974, 'xyzz', 'aiysha@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `dealership`
--

CREATE TABLE `dealership` (
  `Dealership_ID` int(20) NOT NULL,
  `Dealership` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dealership`
--

INSERT INTO `dealership` (`Dealership_ID`, `Dealership`) VALUES
(1, 'Toyota Oslo'),
(2, 'Tysk Bilimport'),
(3, 'Bavaria Oslo'),
(4, 'Autoarena');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `Employees_ID` int(20) NOT NULL,
  `Dealership_ID` int(20) NOT NULL,
  `Employees_Name` varchar(50) NOT NULL,
  `Employees_Phone` bigint(20) NOT NULL,
  `Employees_Address` varchar(220) NOT NULL,
  `Employees_Email` varchar(80) NOT NULL,
  `Employees_Designation` varchar(40) NOT NULL,
  `Employees_Salary` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`Employees_ID`, `Dealership_ID`, `Employees_Name`, `Employees_Phone`, `Employees_Address`, `Employees_Email`, `Employees_Designation`, `Employees_Salary`) VALUES
(16, 1, 'Jakob', 4725896314, 'Alesund', 'jakob854@gmail.com', 'Sales Person', 5000),
(17, 2, 'Sofia', 4725895269, 'Alesund', 'sofia125@gmail.com', 'Manager', 12000),
(18, 3, 'Emma', 4725865414, 'Alesund', 'emma519@gmail.com', 'Sales Person', 5000),
(19, 4, 'Filip', 4725167314, 'Alesund', 'filip45@gmail.com', 'Manager', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `Manufacturer_ID` int(20) NOT NULL,
  `Manufacturer_Name` varchar(50) NOT NULL,
  `Manufacturer_Phone` bigint(20) NOT NULL,
  `Manufacturer_Address` varchar(220) NOT NULL,
  `Manufacturer_Email` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`Manufacturer_ID`, `Manufacturer_Name`, `Manufacturer_Phone`, `Manufacturer_Address`, `Manufacturer_Email`) VALUES
(1, 'Oliver', 4725895214, 'Alesund', 'oliver23@gmail.com'),
(2, 'William', 4725868414, 'Alesund', 'william23@gmail.com'),
(3, 'Lucas', 4725896745, 'Alesund', 'lucas852@gmail.com'),
(4, 'Oskar', 4725896459, 'Alesund', 'oskar654@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_08_04_095142_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `Sale_ID` int(20) NOT NULL,
  `Buyer_ID` int(20) NOT NULL,
  `Car_ID` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`Sale_ID`, `Buyer_ID`, `Car_ID`) VALUES
(1, 1, 3),
(2, 2, 4),
(3, 3, 5),
(4, 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('bOZuzKNiJqC09GiH8G1PheuaQ4wjfHesvKvfuOFS', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoieFNWUW1uZ0tvb0QyUWdaaEx3WnMwMWVReEFwZzFrTktGVFpGb0s0QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9zZWFyY2gvc2FhZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkd0RMWkZuQU1DbWQ3eFVWSFJxN2pmT0piN2tEeU9SQWlIaG9WcWJnLkg2TUlGM0VwaVRRWXUiO30=', 1660234917),
('e7EeyPNVIqqbwDafonR1XvRk7o78p9wHhfQcVMoB', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiTjAxam1ZcTVtekcyRGFreVo2VnFsS21sblJnZ0VXR3hyMzYySnVxMCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vbG9jYWxob3N0OjgwMDAvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCR3RExaRm5BTUNtZDd4VVZIUnE3amZPSmI3a0R5T1JBaUhob1ZxYmcuSDZNSUYzRXBpVFFZdSI7fQ==', 1660231296),
('gwxXQcYqbkiwAGHYqVMDm64sa9olk9TJMuj8gqcz', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiY3ZWM0ZhZWRaR0JuZWxRVGFLVDZIT2c4VEZsSWFFN0xveUpld0VXQyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvYnV5ZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJHdETFpGbkFNQ21kN3hVVkhScTdqZk9KYjdrRHlPUkFpSGhvVnFiZy5INk1JRjNFcGlUUVl1Ijt9', 1659805578),
('mjhiaYV8VhOHq7xh5qWo4KwUNljCLkADDHczjCOE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ3ZNQ1BDek5udTE2S3lrYWxaSXk2czZXWldYVldxWm9pOXBnSVNWbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1660133262),
('w6HpoN5llXj41tyjFYBYTmpv5OsH72KFsR2I3nQN', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQjJKYWc4R2VRYU5BS0t0c0RaaUU1VGZJRHRSMWprdUxKRG9xZUdETiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9zZWFyY2gvc2FhZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1660312268);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Saad Ali', 'saadimtiaz208@gmail.com', NULL, '$2y$10$wDLZFnAMCmd7xUVHRq7jfOJb7kDyORAiHhoVqbg.H6MIF3EpiTQYu', NULL, NULL, NULL, 'q8QsMp3Ho2VoYHlgX91orf55TYb0OfcQfJuJ8GpT1EFyxuatw2ENUmQB0FSP', NULL, NULL, '2022-08-06 10:15:32', '2022-08-06 10:15:32');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `Car_ID` int(20) NOT NULL,
  `Manufacturer_ID` int(20) NOT NULL,
  `Vehicle_Name` varchar(50) NOT NULL,
  `Vehicle_Price` bigint(20) NOT NULL,
  `Vehicle_Model` varchar(20) NOT NULL,
  `Vehicle_Series` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`Car_ID`, `Manufacturer_ID`, `Vehicle_Name`, `Vehicle_Price`, `Vehicle_Model`, `Vehicle_Series`) VALUES
(3, 1, 'BMW 13', 18979, '2017', NULL),
(4, 3, 'AUDI A6 3.0 TDI', 34812, '2015', NULL),
(5, 2, 'HUNDAI I40', 8488, '2012', NULL),
(6, 4, 'BMW X5 XDRIVEE40E', 43863, '2017', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buyers`
--
ALTER TABLE `buyers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `dealership`
--
ALTER TABLE `dealership`
  ADD PRIMARY KEY (`Dealership_ID`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`Employees_ID`),
  ADD UNIQUE KEY `Dealership_ID` (`Dealership_ID`),
  ADD KEY `E_Name` (`Employees_Name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`Manufacturer_ID`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`Sale_ID`),
  ADD UNIQUE KEY `Buyer_ID` (`Buyer_ID`),
  ADD UNIQUE KEY `Car_ID` (`Car_ID`);

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
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`Car_ID`),
  ADD UNIQUE KEY `Manufacturer_ID` (`Manufacturer_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buyers`
--
ALTER TABLE `buyers`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `dealership`
--
ALTER TABLE `dealership`
  MODIFY `Dealership_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `Employees_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `Manufacturer_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `Sale_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `Car_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`Dealership_ID`) REFERENCES `dealership` (`Dealership_ID`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`Car_ID`) REFERENCES `vehicles` (`Car_ID`),
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`Buyer_ID`) REFERENCES `buyers` (`ID`);

--
-- Constraints for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD CONSTRAINT `vehicles_ibfk_1` FOREIGN KEY (`Manufacturer_ID`) REFERENCES `manufacturer` (`Manufacturer_ID`);
--
-- Database: `easyfast`
--
CREATE DATABASE IF NOT EXISTS `easyfast` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `easyfast`;

-- --------------------------------------------------------

--
-- Table structure for table `clips`
--

CREATE TABLE `clips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video_link` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(17, '2014_10_12_000000_create_users_table', 1),
(18, '2014_10_12_100000_create_password_resets_table', 1),
(19, '2019_08_19_000000_create_failed_jobs_table', 1),
(20, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(21, '2022_11_07_162549_create_galleries_table', 1),
(22, '2022_11_07_162638_create_clips_table', 1),
(23, '2022_11_07_162705_create_orders_table', 1),
(24, '2022_11_07_162734_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prd_link` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `image`, `prd_link`, `created_at`, `updated_at`) VALUES
(1, '1669998186.png', 'https://www.amazon.com/s?k=toys&s=date-desc-rank&pd_rd_r=f0026a25-c16f-43b4-98e4-5ff3c3c70fa1&pd_rd_w=6nXbf&pd_rd_wg=tnOsh&pf_rd_p=779cadfb-bc4d-465d-931f-0b68c1ba5cd5&pf_rd_r=A6MT8TX3N7KGHCKXY1TC&qid=1632870778&ref=pd_gw_unk', '2022-12-02 11:23:06', '2022-12-02 11:23:06'),
(2, '1669998854.png', 'https://www.amazon.com/Amazon-Essentials-Standard-Straight-Fit-Stretch/dp/B07X8XKFRT/ref=sr_1_1_sspa?crid=2SXN10HC9XM5D&keywords=jeans+for+men&qid=1669974624&sprefix=jeans%2Caps%2C302&sr=8-1-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUExQTBDR0w3UzVSR1lWJmVuY3J5cHRlZElkPUEwMzM4Mzc2MUdSSU1WTTlJSDdGSiZlbmNyeXB0ZWRBZElkPUEwNjUxNDcyMVpXRUpRTUlOQ0RSTiZ3aWRnZXROYW1lPXNwX2F0ZiZhY3Rpb249Y2xpY2tSZWRpcmVjdCZkb05vdExvZ0NsaWNrPXRydWU=', '2022-12-02 11:34:14', '2022-12-02 11:34:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Admin', 'admin321@gmail.com', '1', NULL, 'eyJpdiI6IlVpTDNaWi9iTjRPTEJ2SHBReUJiVFE9PSIsInZhbHVlIjoidkZjTjIyeW1rK0Jnei91bWRsTk5zYTN4NVI2Qlc4V2l4djUzK05HSExKND0iLCJtYWMiOiIwM2Y0ZmNjYmJhOGZhZTdlZGE5YzU4YTIwMGFjYmFmMmNmNTBiYjg2YjZmMTRhYWNiNGVhMWM0YTRhYjcyYzcxIiwidGFnIjoiIn0=', NULL, '2022-11-29 08:19:39', '2022-11-29 08:19:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clips`
--
ALTER TABLE `clips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `clips`
--
ALTER TABLE `clips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `easyfastmillion`
--
CREATE DATABASE IF NOT EXISTS `easyfastmillion` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `easyfastmillion`;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Saad', 'saad@gmail.com', 'xyz', '2022-12-12 12:09:25', '2022-12-12 12:09:25'),
(2, 'saad ali', 'saad@gmail.com', 'Dumy Street No, Dumy House No', '2022-12-12 09:10:03', '2022-12-12 09:10:03'),
(3, 'saad ali', 'saad@gmail.com', 'Dumy Street No, Dumy House No', '2022-12-12 09:10:30', '2022-12-12 09:10:30'),
(4, 'saad ali', 'saad@gmail.com', 'Dumy Street No, Dumy House No', '2022-12-12 09:52:49', '2022-12-12 09:52:49');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Saad', 'saad@gmail.com', 'xyz', '2022-12-12 12:11:02', '2022-12-12 12:11:02'),
(2, 'saad ali', 'saad@gmail.com', 'vahrgff', '2022-12-12 09:17:56', '2022-12-12 09:17:56'),
(3, 'saad ali', 'saad@gmail.com', 'fherg', '2022-12-12 09:44:52', '2022-12-12 09:44:52'),
(4, 'saad ali', 'saad@gmail.com', 'jfhdgbdf', '2022-12-12 09:46:25', '2022-12-12 09:46:25'),
(5, 'saad ali', 'saad@gmail.com', 'abdfhdfvgs', '2022-12-12 09:51:20', '2022-12-12 09:51:20'),
(6, 'saad ali', 'saad@gmail.com', 'ngsdj', '2022-12-12 09:52:02', '2022-12-12 09:52:02'),
(7, 'saad ali', 'saad@gmail.com', 'jlktujr', '2022-12-12 09:52:19', '2022-12-12 09:52:19');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`, `created_at`, `updated_at`) VALUES
(1, '1670842455.jpg', '2022-12-10 10:44:12', '2022-12-12 05:54:15'),
(3, '1670687749.png', '2022-12-10 10:55:49', '2022-12-10 10:55:49'),
(4, '1670687825.png', '2022-12-10 10:57:05', '2022-12-10 10:57:05'),
(5, '1670837381.png', '2022-12-12 04:29:41', '2022-12-12 04:29:41');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_10_145515_create_images_table', 1),
(6, '2022_12_10_145732_create_videos_table', 1),
(7, '2022_12_10_145752_create_books_table', 1),
(8, '2022_12_10_145818_create_products_table', 1),
(9, '2022_12_10_145850_create_contacts_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `image`, `link`, `created_at`, `updated_at`) VALUES
(2, '1670846312.jpg', 'https://www.amazon.com/LAKKOA-MV16-01-Manwei/dp/B0BMWY7ZQC/ref=sr_1_1?keywords=toys&pd_rd_r=f0026a25-c16f-43b4-98e4-5ff3c3c70fa1&pd_rd_w=6nXbf&pd_rd_wg=tnOsh&pf_rd_p=779cadfb-bc4d-465d-931f-0b68c1ba5cd5&pf_rd_r=A6MT8TX3N7KGHCKXY1TC&qid=1670845999&sr=8-1', '2022-12-12 06:58:32', '2022-12-12 06:58:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `usertype`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '1', 'Admin321@gmail.com', NULL, 'eyJpdiI6IlJRUWZ0OFM0NUlmcUVMMEZwN0dVOEE9PSIsInZhbHVlIjoiVmVHeUVCRnhMTllpb2hlMjFaVDRGL1ozblBnZHExcTlrbmZhZmYzdWVyVT0iLCJtYWMiOiJhOWJiNWIyOGFlNWIxYTU5MDJhZTJlOWUzMGE4ODI4YWEwOWViNTgyOWViODAyZjBlZmViMjNjNGFjNmQwMGUyIiwidGFnIjoiIn0=', NULL, '2022-12-12 10:37:22', '2022-12-12 10:37:22');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `video`, `created_at`, `updated_at`) VALUES
(1, '1670844328.mp4', '2022-12-12 06:20:55', '2022-12-12 06:25:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `ecommerceproject`
--
CREATE DATABASE IF NOT EXISTS `ecommerceproject` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ecommerceproject`;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `User_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `name`, `email`, `phone`, `address`, `product_title`, `price`, `quantity`, `image`, `Product_id`, `User_id`, `created_at`, `updated_at`) VALUES
(31, 'saad ali', 'saadali@gmail.com', '03148151487', 'Dumy Street No, Dumy House No', 'Dumy', '190', '2', '1666787592.jpg', '1', '1', '2022-10-31 09:21:32', '2022-10-31 09:21:43'),
(32, 'saad ali', 'saadali@gmail.com', '03148151487', 'Dumy Street No, Dumy House No', 'Shirt', '180', '1', '1666790268.jpg', '3', '1', '2022-10-31 11:14:08', '2022-10-31 11:14:08');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(4, 'Ipad', '2022-10-24 07:23:48', '2022-10-24 07:23:48'),
(5, 'Ipad', '2022-10-24 07:24:04', '2022-10-24 07:24:04'),
(9, 'Ipad', '2022-10-24 07:26:52', '2022-10-24 07:26:52'),
(10, 'Phone', '2022-10-24 07:27:18', '2022-10-24 07:27:18'),
(12, 'Ipad', '2022-10-24 07:28:01', '2022-10-24 07:28:01'),
(14, 'Phone', '2022-10-24 07:28:54', '2022-10-24 07:28:54'),
(15, 'Mobile', '2022-10-24 07:29:54', '2022-10-24 07:29:54'),
(16, 'Phone', '2022-10-24 07:32:53', '2022-10-24 07:32:53'),
(18, 'Ipad', '2022-10-24 07:36:14', '2022-10-24 07:36:14'),
(19, 'Phone', '2022-10-24 07:37:04', '2022-10-24 07:37:04'),
(20, 'Charger', '2022-10-24 07:37:43', '2022-10-24 07:37:43');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `comment`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'saad ali', 'This is my first comment', '1', '2022-10-31 09:53:21', '2022-10-31 09:53:21'),
(2, 'saad ali', 'This is 2nd comment', '1', '2022-10-31 10:56:59', '2022-10-31 10:56:59'),
(3, 'saad ali', 'whr4u', '1', '2022-10-31 11:25:45', '2022-10-31 11:25:45'),
(4, 'Saad', 'This is the third comment', '1', '2022-11-01 06:37:35', '2022-11-01 06:37:35'),
(5, 'Saad', 'This is the third comment', '1', '2022-11-01 06:39:58', '2022-11-01 06:39:58'),
(6, 'Saad', 'This is the fourth comment !!', '1', '2022-11-01 07:27:40', '2022-11-01 07:27:40');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(12, '2022_10_20_125549_create_sessions_table', 1),
(13, '2022_10_24_093426_create_categories_table', 2),
(14, '2022_10_25_121114_create_products_table', 3),
(15, '2022_10_26_151811_create_carts_table', 4),
(16, '2022_10_27_095956_create_orders_table', 5),
(17, '2022_10_28_152101_create_notifications_table', 6),
(18, '2022_10_31_141225_create_comments_table', 7),
(19, '2022_10_31_141316_create_replies_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `user_id`, `product_title`, `quantity`, `price`, `image`, `product_id`, `payment_status`, `delivery_status`, `created_at`, `updated_at`) VALUES
(1, 'saad ali', 'saadali@gmail.com', '03148151487', 'Dumy Street No, Dumy House No', '1', 'Dumy', '3', '285', '1666787592.jpg', '1', 'Cash on delivery', 'Delivered', '2022-10-27 05:35:33', '2022-10-27 11:05:43'),
(2, 'saad ali', 'saadali@gmail.com', '03148151487', 'Dumy Street No, Dumy House No', '1', 'Dumy', '1', '95', '1666787592.jpg', '1', 'Paid', 'Delivered', '2022-10-27 05:35:33', '2022-10-27 11:13:59'),
(3, 'saad ali', 'saadali@gmail.com', '03148151487', 'Dumy Street No, Dumy House No', '1', 'Dumy', '2', '190', '1666787592.jpg', '1', 'Cash on delivery', 'Delivered', '2022-10-27 05:35:33', '2022-10-27 11:09:58'),
(4, 'saad ali', 'saadali@gmail.com', '03148151487', 'Dumy Street No, Dumy House No', '1', 'Dumy', '1', '95', '1666787592.jpg', '1', 'Paid', 'Your order is cancelled.', '2022-10-27 10:01:35', '2022-10-29 05:27:09'),
(5, 'saad ali', 'saadali@gmail.com', '03148151487', 'Dumy Street No, Dumy House No', '1', 'Shirt', '1', '180', '1666790268.jpg', '3', 'Paid', 'Delivered', '2022-10-27 10:09:40', '2022-10-27 11:14:14'),
(6, 'saad ali', 'saadali@gmail.com', '03148151487', 'Dumy Street No, Dumy House No', '1', 'Shirt', '1', '180', '1666790268.jpg', '3', 'Paid', 'Your order is cancelled.', '2022-10-27 10:14:29', '2022-10-29 05:38:08'),
(7, 'Saad Ali', 'cyphiontech@gmail.com', '03203707987', 'Dumy Street No 17, Dumy House No 18', '13', 'Shirt', '2', '360', '1666790268.jpg', '3', 'Cash on delivery', 'processing', '2022-10-28 10:49:54', '2022-10-28 10:49:54'),
(8, 'saad ali', 'saadali@gmail.com', '03148151487', 'Dumy Street No, Dumy House No', '1', 'Shirt', '14', '2520', '1666790268.jpg', '3', 'Cash on delivery', 'Your order is cancelled.', '2022-10-31 05:20:26', '2022-10-31 05:22:43');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `category`, `quantity`, `price`, `discount_price`, `created_at`, `updated_at`) VALUES
(1, 'Dumy', 'Dumy', '1666787592.jpg', 'Ipad', '8', '100', '95', '2022-10-26 04:40:16', '2022-10-26 07:53:34'),
(3, 'Shirt', 'Cotton Shirt', '1666790268.jpg', 'Phone', '4', '200', '180', '2022-10-26 08:17:48', '2022-10-26 08:17:48'),
(4, 'saad ali', 'Battery type: lithium polymer Single earphone net weight: about 5.0g Charging box net weight: about 35g Wireless connectivity: Bluetooth 5.0 OEM Original Quality', '1666790294.png', 'Phone', '3', '100', '80', '2022-10-26 08:18:14', '2022-10-26 08:18:14'),
(5, 'Waqar', 'Dumy', '1666790330.jpg', 'Phone', '56', '50', '40', '2022-10-26 08:18:50', '2022-10-26 08:18:50');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `name`, `comment`, `reply`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'saad ali', '1', 'sAd', '1', '2022-10-31 10:34:42', '2022-10-31 10:34:42'),
(2, 'saad ali', '1', 'this is my first reply', '1', '2022-10-31 10:47:52', '2022-10-31 10:47:52'),
(3, 'saad ali', '1', 'harthB', '1', '2022-10-31 10:51:40', '2022-10-31 10:51:40'),
(4, 'saad ali', '1', 'hjwru56hr', '1', '2022-10-31 10:51:55', '2022-10-31 10:51:55'),
(5, 'saad ali', '3', 'nsrj', '1', '2022-10-31 11:25:56', '2022-10-31 11:25:56');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('EhOXFxilvfQnAY3uDftXh5zkh8Dqv5p7gFazkINY', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiT1NKclMyVG9TNExRZDM4R2M4VExOZDRsaU40VUtZMEJmWWVrVjBQMSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9wcm9kdWN0cyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo1OiJhbGVydCI7YTowOnt9fQ==', 1667237229),
('gl8rKG2N1AgKoruSyV6Fif5m8rgR7X6nqc9XD7eB', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibU5iMUZOSmtneTZZNVpGV1o3RWFyQmlMNUV1S2gwOExBbTdtdzAyVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1667301251),
('GWmIB2JcMcMAnUTAcYHum8MEVzafHvKFz8geyChi', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib1E1S2pqdnNmMURPQXM1Q01iYjB6UklUSGRubFlpUlpTSlNoRlZxeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1667235397),
('mtHhMDN4vv6ziXZ5p8N579PVO1srMXj1o2dkyjp1', 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.26', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOXhMOElmOU5xanRuV3BseTZRTjBKR00wejNGVU1mM1FnQjUya1lIRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9vcmRlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjc7fQ==', 1667235093);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `usertype`, `phone`, `address`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'saad ali', 'saadali@gmail.com', '2022-10-26 17:50:35', '0', '03148151487', 'Dumy Street No, Dumy House No', '$2y$10$PLLU1ZJItBhKquk/xCP6BOEjDodQl0WzzeceC615nn925nE1PEk9G', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-21 09:32:15', '2022-10-21 09:32:15'),
(7, 'Admin', 'admin@gmail.com', '2022-10-26 17:50:20', '1', '03311321578', 'Dumy Street No.', '$2y$10$zRVXIkh5n5J2AkaY2SsVKuEDrxAlDu5OnfcPI.hT0pmOplD8udyry', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-21 09:40:40', '2022-10-21 09:40:40'),
(13, 'Saad Ali', 'cyphiontech@gmail.com', '2022-10-27 12:46:56', '0', '03203707987', 'Dumy Street No 17, Dumy House No 18', '$2y$10$uYtSDAEoNf.l/ADfN0.e7.7AEgiodS.Lhzo.05ZSjs6IQRHHcBlG6', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-27 12:45:52', '2022-10-27 12:46:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_address_unique` (`address`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Database: `educational`
--
CREATE DATABASE IF NOT EXISTS `educational` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `educational`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminID` int(225) NOT NULL,
  `Admin_Name` varchar(40) NOT NULL,
  `Admin_Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminID`, `Admin_Name`, `Admin_Password`) VALUES
(2, 'Afra', '123456'),
(3, 'Fatema', '123456'),
(4, 'Asma', '123456'),
(5, 'Athra', '123456'),
(6, 'Tasneem', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `boxorders`
--

CREATE TABLE `boxorders` (
  `BoxOrderID` int(225) NOT NULL,
  `BoxOrder_Name` varchar(60) NOT NULL,
  `BoxOrder_Price` bigint(20) NOT NULL,
  `BoxOrder_Quantity` bigint(20) NOT NULL,
  `BoxOrder_Description` varchar(240) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boxorders`
--

INSERT INTO `boxorders` (`BoxOrderID`, `BoxOrder_Name`, `BoxOrder_Price`, `BoxOrder_Quantity`, `BoxOrder_Description`) VALUES
(3, 'xyz', 50, 2, 'BBFVVcF'),
(4, 'xyz', 50, 2, 'BBFVVcF'),
(5, 'xyztyu', 50, 2, 'BBFVVcF'),
(6, 'Game1', 5, 7, ''),
(7, 'Game1', 5, 7, ''),
(8, 'Game1', 5, 7, ''),
(9, 'Game1', 5, 7, ''),
(10, 'Game1', 5, 7, ''),
(11, 'Game1', 5, 7, ''),
(12, 'Game1', 5, 8, ''),
(13, 'Game1', 5, 8, ''),
(14, 'Game1', 5, 5, ''),
(15, 'Game1', 5, 9, ''),
(16, 'Game1', 5, 2, ''),
(17, 'Game1', 5, 62, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(18, 'Game1', 5, 70, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(19, 'Game2', 10, 80, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(20, 'Game1', 5, 85, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(21, 'Game2', 10, 52, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(22, 'Game1', 5, 65, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(23, 'Game2', 10, 60, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(24, 'Game1', 5, 2, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(25, 'Game2', 10, 3, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(26, 'Game1', 5, 5, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(27, 'Game2', 10, 10, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(28, 'Game1', 5, 5, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(29, 'Game2', 10, 10, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(30, 'Game1', 5, 5, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(31, 'Game2', 10, 10, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(32, 'Game1', 5, 5, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(33, 'Game2', 10, 10, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(34, 'Game1', 5, 5, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(35, 'Game2', 10, 10, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(36, 'Game1', 5, 5, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(37, 'Game2', 10, 10, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(38, 'Game1', 5, 5, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(39, 'Game2', 10, 10, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(40, 'Game1', 5, 5, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(41, 'Game2', 10, 5, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(42, 'Game1', 5, 5, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(43, 'Game2', 10, 5, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(44, 'Game1', 5, 4, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(45, 'Game2', 10, 4, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(46, 'Game1', 5, 4, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(47, 'Game2', 10, 4, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(48, 'Game1', 5, 5, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(49, 'Game2', 10, 5, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(50, 'Game3', 15, 0, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(51, 'Game3', 15, 0, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(52, 'Game3', 15, 0, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(53, 'Game3', 15, 0, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(54, 'Game2', 10, 0, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(55, 'Game2', 10, 0, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(56, 'Game3', 15, 66, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(57, 'Game2', 10, 0, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(58, 'Game3', 15, 6, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Consequuntur, facere.'),
(0, 'Game1', 5, 2, 'Box 1'),
(0, 'Game2', 10, 2, 'Box 2');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `CourseID` int(11) NOT NULL,
  `Course_Name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`CourseID`, `Course_Name`) VALUES
(1, 'Maths'),
(2, 'English'),
(10, 'Big Data Analytics'),
(11, 'Chemistry'),
(12, 'Physics'),
(13, 'Islamiat'),
(14, 'Automata'),
(15, 'Simulation & Modeling');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `FeedbackID` int(225) NOT NULL,
  `Teacher_Name` varchar(225) NOT NULL,
  `Comment` varchar(300) NOT NULL,
  `Student_Name` varchar(225) NOT NULL,
  `MathGrade1_Result` int(225) NOT NULL,
  `ArabicGrade1_Result` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`FeedbackID`, `Teacher_Name`, `Comment`, `Student_Name`, `MathGrade1_Result`, `ArabicGrade1_Result`) VALUES
(1, '0', '', 'Saad Ali', 8, 0),
(2, '0', '', 'Saad Ali', 0, 1),
(3, 'Saad', 'xyzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz', 'Saad Ali', 0, 1),
(4, '', '', 'Saad Ali', 0, 1),
(5, '', '', 'Saad Ali', 0, 1),
(6, '', '', 'Saad Ali', 0, 1),
(7, '', '', 'Saad Ali', 0, 1),
(8, '', '', 'Saad Ali', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `LessonID` int(225) NOT NULL,
  `Lesson_Name` varchar(60) NOT NULL,
  `Course_Name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`LessonID`, `Lesson_Name`, `Course_Name`) VALUES
(1, 'Parabola', 'Maths'),
(2, 'eclipse', 'Maths'),
(3, 'vectorization', 'Physics'),
(4, 'Thermal Conductivity', 'Physics'),
(5, 'vectorization', 'Physics'),
(6, 'vectorization', 'Physics'),
(7, 'vectorization', 'Physics'),
(8, 'vectorization', 'Physics'),
(9, 'vectorization', 'Physics'),
(10, 'vectorization', 'Physics');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `StatusID` int(225) NOT NULL,
  `Status_Value` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `StudentID` int(225) NOT NULL,
  `Student_Name` varchar(40) NOT NULL,
  `Student_Email` varchar(40) NOT NULL,
  `Student_Age` int(10) NOT NULL,
  `Student_Grade` varchar(10) NOT NULL,
  `Student_Password` varchar(40) NOT NULL,
  `Student_Contact` bigint(20) NOT NULL,
  `Student_Address` varchar(225) NOT NULL,
  `Student_profilePhoto` varchar(225) NOT NULL,
  `Student_Status` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`StudentID`, `Student_Name`, `Student_Email`, `Student_Age`, `Student_Grade`, `Student_Password`, `Student_Contact`, `Student_Address`, `Student_profilePhoto`, `Student_Status`) VALUES
(1, 'sarah', 'Sarah@hotmail.com', 6, '1', '123456', 500000000, 'Sharjah', 'uploads/sarah.JPG', 'Approved'),
(2, 'mohammed', 'mohammed@hotmail.com', 6, '1', '123456', 500000000, 'Sharjah', 'uploads/mohammad.JPG', 'Approved'),
(3, 'salama', 'salama@hotmail.com', 7, '2', '654321', 500000000, 'Dubai', 'uploads/salama.JPG', 'Approved'),
(4, 'rashed', 'rashed@hotmail.com', 7, '2', '654321', 500000000, 'Abu Dhabi', 'uploads/rashed.JPG', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `TeacherID` int(225) NOT NULL,
  `Teacher_Name` varchar(40) NOT NULL,
  `Teacher_Email` varchar(40) NOT NULL,
  `Teacher_Password` varchar(30) NOT NULL,
  `Teacher_profilePhoto` varchar(225) NOT NULL,
  `Teacher_Request` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`TeacherID`, `Teacher_Name`, `Teacher_Email`, `Teacher_Password`, `Teacher_profilePhoto`, `Teacher_Request`) VALUES
(1, 'Afra', 'H00368759@hct.ac.ae', '123456', 'uploads/t1.JPG', 'Approved'),
(2, 'Fatema', 'H00368564@hct.ac.ae', '123456', 'uploads/t2.JPG', 'Approved'),
(3, 'Asma', 'H00282571@hct.ac.ae', '123456', 'uploads/t3.JPG', 'Approved'),
(4, 'Athra', 'H00282571@hct.ac.ae', '123456', 'uploads/t4.JPG', 'Approved');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`FeedbackID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`StudentID`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`TeacherID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `AdminID` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `FeedbackID` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `StudentID` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `TeacherID` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `email`
--
CREATE DATABASE IF NOT EXISTS `email` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `email`;

-- --------------------------------------------------------

--
-- Table structure for table `campaign`
--

CREATE TABLE `campaign` (
  `ID` int(20) NOT NULL,
  `Emails` varchar(60) NOT NULL,
  `Validity` varchar(200) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `campaign`
--

INSERT INTO `campaign` (`ID`, `Emails`, `Validity`, `Status`) VALUES
(108, 'sales@ar15parts.com', 'exist', 'Exist'),
(109, 'theartspotbigspring@gmail.com', 'exist', 'Exist'),
(110, 'juan254@icloud.com', 'does not exist', 'Not Exist'),
(111, 'affinitivebodyart@gmail.com', 'exist', 'Exist'),
(112, 'theawkward_artiststudio@outlook.com', 'exist', 'Not Exist'),
(113, 'artbykelleetinker@gmail.com', 'exist', 'Exist'),
(114, 'cchristie@pilotpointisd.com', 'exist', 'Exist'),
(115, 'tattooart903@gmail.com', 'exist', 'Exist'),
(116, 'grizzlyartsstudio@outlook.com', 'exist', 'Not Exist'),
(117, 'rrartsncrafts@yahoo.com', 'exist', 'Not Exist'),
(118, 'wgcash@hcaf.com', 'does not exist', 'Not Exist'),
(119, 'support@lonestarart.com', 'exist', 'Not Exist'),
(120, 'contact@artgalleryinc.com', 'does not exist', 'Not Exist'),
(121, 'thelanderdesigns@gmail.com', 'exist', 'Exist'),
(122, 'hello@artsmissionoc.org', 'exist', 'Exist'),
(123, 'boxoffice@coppellartscenter.org', 'exist', 'Not Exist'),
(124, 'hyun2203@gmail.com', 'exist', 'Exist'),
(125, 'palmerjerry21@gmail.com', 'exist', 'Exist'),
(126, 'sketchartstudiollc@gmail.com', 'exist', 'Exist'),
(127, 'admin@dentonarts.com', 'does not exist', 'Not Exist'),
(128, 'waqar@cyphion.com', 'exist', 'Not Exist'),
(129, 'omema@cyphion.com', 'exist', 'Not Exist'),
(130, 'bushra122@cyphion.com', 'does not exist', 'Not Exist'),
(131, 'cyphiontech@gmail.com ', 'exist', 'Not Exist'),
(132, 'saadimtiaz208@gmail.com', 'exist', 'Exist'),
(133, 'saad@gmail.com', 'does not exist', 'Not Exist'),
(134, 'sales@ar15parts.com', '', 'Exist'),
(135, 'theartspotbigspring@gmail.com', '', 'Exist'),
(136, '', '', 'Not Exist'),
(137, 'juan254@icloud.com', '', 'Not Exist'),
(138, 'affinitivebodyart@gmail.com', '', 'Exist'),
(139, 'theawkward_artiststudio@outlook.com', '', 'Not Exist'),
(140, 'artbykelleetinker@gmail.com', '', 'Exist'),
(141, '', '', 'Not Exist'),
(142, 'cchristie@pilotpointisd.com', '', 'Exist'),
(143, 'tattooart903@gmail.com', '', 'Exist'),
(144, '', '', 'Not Exist'),
(145, '', '', 'Not Exist'),
(146, 'grizzlyartsstudio@outlook.com', '', 'Not Exist'),
(147, 'rrartsncrafts@yahoo.com', '', 'Not Exist'),
(148, 'wgcash@hcaf.com', '', 'Not Exist'),
(149, 'support@lonestarart.com', '', 'Not Exist'),
(150, 'contact@artgalleryinc.com', '', 'Not Exist'),
(151, 'thelanderdesigns@gmail.com', '', 'Exist'),
(152, '', '', 'Not Exist'),
(153, '', '', 'Not Exist'),
(154, 'hello@artsmissionoc.org', '', 'Exist'),
(155, 'boxoffice@coppellartscenter.org', '', 'Not Exist'),
(156, '', '', 'Not Exist'),
(157, 'hyun2203@gmail.com', '', 'Exist'),
(158, 'palmerjerry21@gmail.com', '', 'Exist'),
(159, 'sketchartstudiollc@gmail.com', '', 'Not Exist'),
(160, 'admin@dentonarts.com', '', 'Not Exist'),
(161, 'info@creativeartscenter.org', '', 'Not Exist'),
(162, '', '', 'Not Exist'),
(163, 'mckinneyartcompany@gmail.com', '', 'Not Exist'),
(164, 'dallassilkart@gmail.com', '', 'Not Exist'),
(165, 'shop@valkyriebodyarts.com', '', 'Not Exist'),
(166, 'lindsay.whittenberg@gmail.com', '', 'Not Exist'),
(167, 'noahsartsupplies@gmail.com', '', 'Not Exist'),
(168, 'nisha.shah@falakarts.com', '', 'Not Exist'),
(169, 'company@artistryinmotionpac.com', '', 'Not Exist'),
(170, 'kidartdallas@sbcglobal.net', '', 'Not Exist'),
(171, '', '', 'Not Exist'),
(172, 'joylyndance@icloud.com', '', 'Not Exist'),
(173, 's.r.p.niteowl@gmail.com', '', 'Not Exist'),
(174, 'wyar2005@gmail.com', '', 'Not Exist'),
(175, '', '', 'Not Exist'),
(176, 'bandeartstudio@gmail.com', '', 'Not Exist'),
(177, '', '', 'Not Exist'),
(178, '', '', 'Not Exist'),
(179, 'carsonsartschool@gmail.com', '', 'Not Exist'),
(180, 'info@artschoolhouston.com', '', 'Not Exist'),
(181, 'info@artcentercc.org', '', 'Not Exist'),
(182, 'information@galvestonartscenter.org', '', 'Not Exist'),
(183, 'micahlewisart@icloud.com', '', 'Not Exist'),
(184, 'raquel.sweetness@gmail.com', '', 'Not Exist'),
(185, 'loveartstudio14@gmail.com', '', 'Not Exist'),
(186, 'info@ltxac.com', '', 'Not Exist'),
(187, 'onairballoonart@gmail.com', '', 'Not Exist'),
(188, 'souldecorba12@gmail.com', '', 'Not Exist'),
(189, '', '', 'Not Exist'),
(190, 'info@artstudio.org', '', 'Not Exist'),
(191, 'sam@heavymetaltattootx.com', '', 'Not Exist'),
(192, 'sarishryack@gmail.com', '', 'Not Exist'),
(193, 'info@houstonmonart.com', '', 'Not Exist'),
(194, 'info@artoffcenter.com', '', 'Not Exist'),
(195, 'info@alamocityarts.org', '', 'Not Exist'),
(196, 'brownwoodart@gmail.com', '', 'Not Exist'),
(197, 'victoriatxartleague@gmail.com', '', 'Not Exist'),
(198, 'epaa500@sbcglobal.net', '', 'Not Exist'),
(199, 'musicboxbodyartstudio16@gmail.com', '', 'Not Exist'),
(200, 'north@shamanmods.com', '', 'Not Exist'),
(201, 'customerservices@timorousbeasties.com', '', 'Not Exist'),
(202, '', '', 'Not Exist'),
(203, 'studio@londonvelvet.co.uk', '', 'Not Exist'),
(204, 'cazyan@me.com', '', 'Not Exist'),
(205, '', '', 'Not Exist'),
(206, 'thebookshelf71@gmail.com', '', 'Not Exist'),
(207, 'tors@torsduce.co.uk', '', 'Not Exist'),
(208, '', '', 'Not Exist'),
(209, 'plugarmihaela3@gmail.com', '', 'Not Exist'),
(210, 'octarinedreamspress@gmail.com', '', 'Not Exist'),
(211, 'info@sayna.co.uk', '', 'Not Exist'),
(212, '', '', 'Not Exist'),
(213, 'sharonlondondesigns@gmail.com', '', 'Not Exist'),
(214, 'support@larssonjennings.com', '', 'Not Exist'),
(215, '', '', 'Not Exist'),
(216, 'info@rivetandhide.com', '', 'Not Exist'),
(217, 'info@crosswaterlondon.com', '', 'Not Exist'),
(218, 'contact@marlowlondon.com', '', 'Not Exist'),
(219, 'enquiries@santorus.com', '', 'Not Exist'),
(220, 'verablack@me.com', '', 'Not Exist'),
(221, 'joinus@cathkidston.com', '', 'Not Exist'),
(222, 'evolutionoflondon@gmail.com', '', 'Not Exist'),
(223, 'skinartaddison@gmail.com', '', 'Not Exist'),
(224, 'customercare@matchesfashion.com', '', 'Not Exist'),
(225, 'clientservices@acnestudios.com', '', 'Not Exist'),
(226, '', '', 'Not Exist'),
(227, 'customerservices@penelopechilvers.com', '', 'Not Exist'),
(228, 'care@saintandsofia.com', '', 'Not Exist'),
(229, 'art1stcustomtattoos@gmail.com', '', 'Not Exist'),
(230, 'artcolbk@gmail.com', '', 'Not Exist'),
(231, 'lisakaytran@yahoo.com', '', 'Not Exist'),
(232, 'andartdesigning@gmail.com', '', 'Not Exist'),
(233, 'leannarosales99@gmail.com', '', 'Not Exist'),
(234, 'londonsnowart@gmail.com', '', 'Not Exist'),
(235, 'doodleartprojects@gmail.com', '', 'Not Exist'),
(236, 'artbyari22@gmail.com', '', 'Not Exist'),
(237, '', '', 'Not Exist'),
(238, 'gallerypure@gmail.com', '', 'Not Exist'),
(239, '', '', 'Not Exist'),
(240, '', '', 'Not Exist'),
(241, '', '', 'Not Exist'),
(242, 'info@accessories806.com', '', 'Not Exist'),
(243, 'fluidartbykathy@gmail.com', '', 'Not Exist'),
(244, 'contact@artgallerieshouston.com', '', 'Not Exist'),
(245, 'glenn@artglassdecor.net', '', 'Not Exist'),
(246, 'info@vastarts.org', '', 'Not Exist'),
(247, 'theartofacrylics@gmail.com', '', 'Not Exist'),
(248, 'sifugurojon@aol.com', '', 'Not Exist'),
(249, 'stacycampbellart@gmail.com', '', 'Not Exist'),
(250, 'tourniqueart@gmail.com', '', 'Not Exist'),
(251, 'director@artslongview.org', '', 'Not Exist'),
(252, 'veeartsy@yahoo.com', '', 'Not Exist'),
(253, '', '', 'Not Exist'),
(254, 'info@lonestaryardart.net', '', 'Not Exist'),
(255, 'lsagpresident@gmail.com', '', 'Not Exist'),
(256, 'bonartcenter@gmail.com', '', 'Not Exist'),
(257, 'sharon@colorofthewest.com', '', 'Not Exist'),
(258, 'talonma82@gmail.com', '', 'Not Exist'),
(259, 'gregdow83@yahoo.com', '', 'Not Exist'),
(260, 'regina@london-ink.com', '', 'Not Exist'),
(261, 'wrightarttwins@gmail.com', '', 'Not Exist'),
(262, 'events@artspace111.com', '', 'Not Exist'),
(263, 'info@theartevent.com', '', 'Not Exist'),
(264, 'candiratliff@icloud.com', '', 'Not Exist'),
(265, 'kettleartgallery@gmail.com', '', 'Not Exist'),
(266, '', '', 'Not Exist'),
(267, 'jenn@storiedart.com', '', 'Not Exist'),
(268, 'dgibson@creativeclarityarttherapy.com', '', 'Not Exist'),
(269, '', '', 'Not Exist'),
(270, 'info@acbv.org', '', 'Not Exist'),
(271, 'merryfacepaint@gmail.com', '', 'Not Exist'),
(272, 'mcartsupplies@gmail.com', '', 'Not Exist'),
(273, '', '', 'Not Exist'),
(274, '', '', 'Not Exist'),
(275, 'bakerylamourlondon@gmail.com', '', 'Not Exist'),
(276, 'info@dominiqueansellondon.com', '', 'Not Exist'),
(277, '', '', 'Not Exist'),
(278, 'royallondonbakery1@gmail.com', '', 'Not Exist'),
(279, '', '', 'Not Exist'),
(280, 'dalesbakeryboston@gmail.com', '', 'Not Exist'),
(281, 'enquiry@oldbakerylondon.co.uk', '', 'Not Exist'),
(282, 'rosebakerymanager@doverstreetmarket.com', '', 'Not Exist'),
(283, 'info@dulwichbakery.com', '', 'Not Exist'),
(284, 'carly@littlelondonbakery.co.uk', '', 'Not Exist'),
(285, 'londonhomebakery@gmail.com', '', 'Not Exist'),
(286, 'oninebusiness057@gmail.com', '', 'Not Exist'),
(287, 'thelondonveganbakery@gmail.com', '', 'Not Exist'),
(288, 'allasyummyfood@gmail.com', '', 'Not Exist'),
(289, 'info@b-bakery.com', '', 'Not Exist'),
(290, 'hello@chestnutbakery.com', '', 'Not Exist'),
(291, '', '', 'Not Exist'),
(292, 'info@paul-uk.com', '', 'Not Exist'),
(293, 'haley@hivebakerytx.com', '', 'Not Exist'),
(294, '', '', 'Not Exist'),
(295, 'info@violetcakes.com', '', 'Not Exist'),
(296, 'info@eggfreecake.co.uk', '', 'Not Exist'),
(297, 'info@sweetlandlondon.com', '', 'Not Exist'),
(298, '', '', 'Not Exist'),
(299, '', '', 'Not Exist'),
(300, 'info@flavourtownbakery.co.uk', '', 'Not Exist'),
(301, 'breadheads@gailsbread.co.uk', '', 'Not Exist'),
(302, 'contact@pandanbakery.com', '', 'Not Exist'),
(303, 'mail@nataliescreativecakes.com and nataliecramer@hotmail.co.', '', 'Not Exist'),
(304, 'hello@meringuegirls.co.uk', '', 'Not Exist'),
(305, 'info@bbbakery.co.uk', '', 'Not Exist'),
(306, 'yum@biscuiteers.com', '', 'Not Exist'),
(307, '', '', 'Not Exist'),
(308, 'info@bageriet.co.uk', '', 'Not Exist'),
(309, 'info@mygfbakery.co.uk', '', 'Not Exist'),
(310, '', '', 'Not Exist'),
(311, 'enquiries@aprilsbaker.com', '', 'Not Exist'),
(312, 'info@oliviersbakery.com', '', 'Not Exist'),
(313, 'enquiries@thecakestore.co.uk', '', 'Not Exist'),
(314, 'bakery@stjohnbakerycompany.com', '', 'Not Exist'),
(315, 'info@brixtoncakeshop.com', '', 'Not Exist'),
(316, '', '', 'Not Exist'),
(317, 'jonosbakery@gmail.com', '', 'Not Exist'),
(318, '', '', 'Not Exist'),
(319, 'info@badbrownie.co.uk', '', 'Not Exist'),
(320, 'info@outsidertart.com', '', 'Not Exist'),
(321, 'cakes@wilton-uk.com', '', 'Not Exist'),
(322, 'customer-services@dinafoods.com', '', 'Not Exist'),
(323, 'info@blondieskitchen.co.uk', '', 'Not Exist'),
(324, 'butterscotch@feedyoursoul.co.uk', '', 'Not Exist'),
(325, 'simon@essproductions.co.uk', '', 'Not Exist'),
(326, 'orders@benscookies.com', '', 'Not Exist'),
(327, 'clare@popbakery.co.uk', '', 'Not Exist'),
(328, 'allsconebakery@gmail.com', '', 'Not Exist'),
(329, 'info@elegateau.co.uk', '', 'Not Exist'),
(330, 'hello@theindulgentsugarplum.com', '', 'Not Exist'),
(331, 'info@fabrique.co.uk', '', 'Not Exist'),
(332, 'info@poilane.com', '', 'Not Exist'),
(333, 'butterscotchbakery@feedyoursoul.co.uk', '', 'Not Exist'),
(334, 'maggie@magpiebakery.co.uk', '', 'Not Exist'),
(335, '', '', 'Not Exist'),
(336, 'mnoviello@lrb.co.uk', '', 'Not Exist'),
(337, 'contact@doughlicious.co.uk', '', 'Not Exist'),
(338, 'giancarloroncato76@yahoo.co.uk', '', 'Not Exist'),
(339, 'thegoodriceitalianbakeryuk@gmail.com', '', 'Not Exist'),
(340, 'shop@thebreadstation.co.uk', '', 'Not Exist'),
(341, 'info@rainbowbakery.co.uk', '', 'Not Exist'),
(342, 'info@ilmulinotooting.com', '', 'Not Exist'),
(343, 'sales@londoncake.com', '', 'Not Exist'),
(344, 'info@lavelibakery.com', '', 'Not Exist'),
(345, 'sidibou.london@gmail.com', '', 'Not Exist'),
(346, 'info@victoriascakecouture.com', '', 'Not Exist'),
(347, 'sales@paulrhodesbakery.co.uk', '', 'Not Exist'),
(348, 'mail@dolcettalondon.co.uk', '', 'Not Exist'),
(349, 'lovecake@cupcakes-london.co.uk', '', 'Not Exist'),
(350, 'sweet_salty_london@gmail.com', '', 'Not Exist'),
(351, '', '', 'Not Exist'),
(352, 'info@camdenbakery.london', '', 'Not Exist'),
(353, '', '', 'Not Exist'),
(354, 'info@cakewalklondon.com', '', 'Not Exist'),
(355, 'lincolnspatisserie@gmail.com', '', 'Not Exist'),
(356, '', '', 'Not Exist'),
(357, 'mumscakeslondon@gmail.com', '', 'Not Exist'),
(358, 'info@cakegirllondon.co.uk', '', 'Not Exist'),
(359, 'nada@littlelondonbakery.com', '', 'Not Exist'),
(360, '', '', 'Not Exist'),
(361, 'belsizepark@euphoriumbakery.com', '', 'Not Exist'),
(362, 'cakes@pearlandgroove.com', '', 'Not Exist'),
(363, 'treat_ladies@hotmail.com', '', 'Not Exist'),
(364, 'sales@wagashi-uk.com', '', 'Not Exist'),
(365, 'wappingsourdough@gmail.com', '', 'Not Exist'),
(366, 'soho@crissxculture.com', '', 'Not Exist'),
(367, 'info@theunclejohnsbakery.com', '', 'Not Exist'),
(368, 'cake.street@yahoo.com', '', 'Not Exist'),
(369, 'appleyardbakery@gmail.com', '', 'Not Exist'),
(370, 'luxurycakes@vdcake.com', '', 'Not Exist'),
(371, 'hellohemu@gmail.com', '', 'Not Exist'),
(372, '', '', 'Not Exist'),
(373, '', '', 'Not Exist'),
(374, '', '', 'Not Exist'),
(375, 'charlottesmithrvn@hotmail.com', '', 'Not Exist'),
(376, '', '', 'Not Exist'),
(377, 'pecoraandmollica@gmail.com', '', 'Not Exist'),
(378, '', '', 'Not Exist'),
(379, 'enquiries@hummingbirdbakery.com', '', 'Not Exist'),
(380, 'info@littlelondoncs.com', '', 'Not Exist'),
(381, 'info@sweetnothing.co.uk', '', 'Not Exist'),
(382, '', '', 'Not Exist'),
(383, '', '', 'Not Exist'),
(384, 'info@cakecultldn.com', '', 'Not Exist'),
(385, '', '', 'Not Exist'),
(386, '', '', 'Not Exist'),
(387, 'cafelondoncebu@gmail.com', '', 'Not Exist'),
(388, 'enquiries@ace-cafe-london.com', '', 'Not Exist'),
(389, 'london.reception@hardrock.com', '', 'Not Exist'),
(390, 'management@romulocafe.co.uk', '', 'Not Exist'),
(391, 'lillyscafe@3henrietta.com', '', 'Not Exist'),
(392, '', '', 'Not Exist'),
(393, 'info@royalelondon.co.uk', '', 'Not Exist'),
(394, 'info@clutch-cafe.com', '', 'Not Exist'),
(395, '', '', 'Not Exist'),
(396, 'wesleyscafe@greenandfortune.co.uk', '', 'Not Exist'),
(397, 'restaurant@farzilondon.com', '', 'Not Exist'),
(398, 'info@rubio.co.uk', '', 'Not Exist'),
(399, '', '', 'Not Exist'),
(400, 'mirnajeebasghar@gmail.com', '', 'Not Exist'),
(401, '', '', 'Not Exist'),
(402, '', '', 'Not Exist'),
(403, 'enquiries@rovingchef.net', '', 'Not Exist'),
(404, 'greenwich@caferouge.co.uk', '', 'Not Exist'),
(405, 'info@thejazzcafelondon.com', '', 'Not Exist'),
(406, 'londoncafe1@yahoo.com', '', 'Not Exist'),
(407, 'customer.service@harrods.com', '', 'Not Exist'),
(408, 'info@thewolseley.com', '', 'Not Exist'),
(409, 'dwlondon@duckandwaffle.com', '', 'Not Exist'),
(410, '', '', 'Not Exist'),
(411, 'oxo.reservations@harveynichols.com', '', 'Not Exist'),
(412, 'hello@timeout.com', '', 'Not Exist'),
(413, '', '', 'Not Exist'),
(414, 'london@royalnawaab.com', '', 'Not Exist'),
(415, 'info@zumarestaurant.com', '', 'Not Exist'),
(416, 'info@masti.london', '', 'Not Exist'),
(417, 'enquiries@muranolondon.com', '', 'Not Exist'),
(418, 'reception@thegoring.com', '', 'Not Exist'),
(419, 'info@camdenmarket.com', '', 'Not Exist'),
(420, 'melia.white.house@melia.com', '', 'Not Exist'),
(421, 'info@museumoflondon.org.uk', '', 'Not Exist'),
(422, 'madisoninfo@danddlondon.com', '', 'Not Exist'),
(423, 'london@corinthia.com', '', 'Not Exist'),
(424, 'enquiries@hotelcaferoyal.com', '', 'Not Exist'),
(425, '', '', 'Not Exist'),
(426, 'info@chinatown.co.uk', '', 'Not Exist'),
(427, '', '', 'Not Exist'),
(428, 'info@punjab.co.uk', '', 'Not Exist'),
(429, '', '', 'Not Exist'),
(430, 'reservations@brasseriezedel.com', '', 'Not Exist'),
(431, 'reservations@galvinatwindows.com', '', 'Not Exist'),
(432, 'officialcafehelen@gmail.com', '', 'Not Exist'),
(433, 'info@balthazarlondon.com', '', 'Not Exist'),
(434, 'hello@vietnamfood.co.uk', '', 'Not Exist'),
(435, 'goldminequeensway@gmail.com', '', 'Not Exist'),
(436, '', '', 'Not Exist'),
(437, 'booking@danslenoir.com', '', 'Not Exist'),
(438, 'customerservices@libertylondon.com', '', 'Not Exist'),
(439, 'cnrcafe88@gmail.com', '', 'Not Exist'),
(440, '', '', 'Not Exist'),
(441, 'info@tarorestaurants.uk', '', 'Not Exist'),
(442, 'social@spicevillage.co.uk', '', 'Not Exist'),
(443, '', '', 'Not Exist'),
(444, 'reservations@bateauxlondon.com', '', 'Not Exist'),
(445, 'reservations@shaka-zulu.com', '', 'Not Exist'),
(446, 'info@hopperslondon.com', '', 'Not Exist'),
(447, 'piccadillycicchetti@sancarlo.co.uk', '', 'Not Exist'),
(448, 'info@zazasrestaurant.com', '', 'Not Exist'),
(449, '', '', 'Not Exist'),
(450, '', '', 'Not Exist'),
(451, 'info@cinnamonclub.com', '', 'Not Exist'),
(452, '', '', 'Not Exist'),
(453, 'marylebone@therealgreek.com', '', 'Not Exist'),
(454, 'info@restaurantmarina.co.uk', '', 'Not Exist'),
(455, 'w1@meatliquor.com', '', 'Not Exist'),
(456, 'london@bagatellegroup.com', '', 'Not Exist'),
(457, 'skylonreservations@danddlondon.com', '', 'Not Exist'),
(458, 'chelsea@sophiessteakhouse.com', '', 'Not Exist'),
(459, 'info@breadstreetkitchen.com', '', 'Not Exist'),
(460, 'mezemiso@cplondonalbert.co.uk', '', 'Not Exist'),
(461, 'bookings@sancarloalto.co.uk', '', 'Not Exist'),
(462, 'contact@thelondonfeelgood.com', '', 'Not Exist'),
(463, 'lotus@lotusfloating.co.uk', '', 'Not Exist'),
(464, 'info@cafe1001.co.uk', '', 'Not Exist'),
(465, 'wellington@caferouge.co.uk', '', 'Not Exist'),
(466, '', '', 'Not Exist'),
(467, 'enquiries@belcantolondon.co.uk', '', 'Not Exist'),
(468, 'dickens.bookings@ssp.uk.com', '', 'Not Exist'),
(469, 'southbank@brasserieblanc.com', '', 'Not Exist'),
(470, 'tuttons@cgrestaurants.com', '', 'Not Exist'),
(471, 'info@poppiesfishandchips.co.uk', '', 'Not Exist'),
(472, 'bookings@sbg-london.com', '', 'Not Exist'),
(473, 'info@eatatsicily.com', '', 'Not Exist'),
(474, 'santini@santinirestaurant.com', '', 'Not Exist'),
(475, 'info@frankscafe.org.uk', '', 'Not Exist'),
(476, 'info@faranglondon.co.uk', '', 'Not Exist'),
(477, 'enquiries.swaybar@stonegatepubs.com', '', 'Not Exist'),
(478, '', '', 'Not Exist'),
(479, 'partypeople@rapsa.co.uk', '', 'Not Exist'),
(480, 'info@cinnamon-bazaar.com', '', 'Not Exist'),
(481, 'info@archipelago-restaurant.co.uk', '', 'Not Exist'),
(482, 'restmgr@marcoslondonbridge.com', '', 'Not Exist'),
(483, 'reservations@germangymnasium.com', '', 'Not Exist'),
(484, 'info@lahore-kebabhouse.com', '', 'Not Exist'),
(485, 'reservations@laballerina.co.uk', '', 'Not Exist'),
(486, '', '', 'Not Exist'),
(487, '', '', 'Not Exist'),
(488, '', '', 'Not Exist'),
(489, 'info@lantanacafe.co.uk', '', 'Not Exist'),
(490, 'info@cafe-luca.co.uk', '', 'Not Exist'),
(491, 'cafeeluk@gmail.com', '', 'Not Exist'),
(492, '', '', 'Not Exist'),
(493, 'thelondoncafe.it@gmail.com', '', 'Not Exist'),
(494, 'info@demitasselondon.com', '', 'Not Exist'),
(495, '', '', 'Not Exist'),
(496, '', '', 'Not Exist'),
(497, 'mimos.cafe1@hotmail.com', '', 'Not Exist'),
(498, 'boxoffice@arsenal.co.uk', '', 'Not Exist'),
(499, 'tllon.info@langhamhotels.com', '', 'Not Exist'),
(500, 'info@thebikeshed.cc', '', 'Not Exist'),
(501, '', '', 'Not Exist'),
(502, 'aydenbouton0@gmail.com', '', 'Not Exist'),
(503, 'drive.clean@hotmail.com', '', 'Not Exist'),
(504, 'mikesspecialtycarcleaners@gmail.com', '', 'Not Exist'),
(505, 'cleaning1airservices@gmail.com', '', 'Not Exist'),
(506, 'km@missioncleaningservice.com', '', 'Not Exist'),
(507, 'contact@ladbible.com', '', 'Not Exist'),
(508, '', '', 'Not Exist'),
(509, '', '', 'Not Exist'),
(510, '', '', 'Not Exist'),
(511, 'content@unilad.co.uk', '', 'Not Exist'),
(512, 'michael@honeydocleaninginc.com', '', 'Not Exist'),
(513, 'fims.shop@gmail.com', '', 'Not Exist'),
(514, 'alservicecleanin@gmail.com', '', 'Not Exist'),
(515, 'casscloud87@gmail.com', '', 'Not Exist'),
(516, 'info@maidcleantx.com', '', 'Not Exist'),
(517, 'service@detailcleanings.com', '', 'Not Exist'),
(518, 'bossladycleaning866@gmail.com', '', 'Not Exist'),
(519, 'office@tailormaidclean.com', '', 'Not Exist'),
(520, 'josh@cleangreencarwash.com', '', 'Not Exist'),
(521, 'karenacosta244@gmail.com', '', 'Not Exist'),
(522, 'christycleaningservices01@gmail.com', '', 'Not Exist'),
(523, 'joanscleaningservices@yahoo.com', '', 'Not Exist'),
(524, '', '', 'Not Exist'),
(525, 'alex@cleancarcustomdetail.com', '', 'Not Exist'),
(526, 'josh@cleangreencarwash.com', '', 'Not Exist'),
(527, 'sparklecleaning2022@gmail.com', '', 'Not Exist'),
(528, 'daydreamcleaningtx@gmail.com', '', 'Not Exist'),
(529, '', '', 'Not Exist'),
(530, 'info@acidfw.com', '', 'Not Exist'),
(531, '', '', 'Not Exist'),
(532, 'ginascleaning@outlook.com', '', 'Not Exist'),
(533, 'asparkling_clean@yahoo.com', '', 'Not Exist'),
(534, 'revivecleaningservice@gmail.com', '', 'Not Exist'),
(535, '', '', 'Not Exist'),
(536, 'brightercleaningsolution@gmail.com', '', 'Not Exist'),
(537, 'cleanaskeck@gmail.com', '', 'Not Exist'),
(538, 'christianscleaningservices@yahoo.com', '', 'Not Exist'),
(539, 'josh@cleangreencarwash.com', '', 'Not Exist'),
(540, 'jessica@cleaningunlimited.net', '', 'Not Exist'),
(541, 'sjohnson@thebeyondclean.com', '', 'Not Exist'),
(542, 'crystalcleansetx@gmail.com', '', 'Not Exist'),
(543, '', '', 'Not Exist'),
(544, 'kingdomclean@yahoo.com', '', 'Not Exist'),
(545, 'info@cleanrcans.com', '', 'Not Exist'),
(546, 'ik@crazycleanwash.com', '', 'Not Exist'),
(547, 'thecleancancompany@gmail.com', '', 'Not Exist'),
(548, '', '', 'Not Exist'),
(549, '', '', 'Not Exist'),
(550, 'cleancleanservicesyes@gmail.com', '', 'Not Exist'),
(551, 'customerservice@chabodcleaningservices.com', '', 'Not Exist'),
(552, '', '', 'Not Exist'),
(553, 'londonmaidcleaningservice@gmail.com', '', 'Not Exist'),
(554, 'info@mycarcleaning.co.uk', '', 'Not Exist'),
(555, '', '', 'Not Exist'),
(556, 'amaznfind@gmail.com', '', 'Not Exist'),
(557, '', '', 'Not Exist'),
(558, 'handcarwashlondon@gmail.com', '', 'Not Exist'),
(559, 'ategirlph@gmail.com', '', 'Not Exist'),
(560, 'info@jewelspassion.co.uk', '', 'Not Exist'),
(561, 'london@carcleanic.co.uk', '', 'Not Exist'),
(562, 'inquiries@cleaningedge.ca', '', 'Not Exist'),
(563, 'julianbray@mtnloaded.co.za', '', 'Not Exist'),
(564, 'info@smithglobalcarwash.com', '', 'Not Exist'),
(565, '', '', 'Not Exist'),
(566, '', '', 'Not Exist'),
(567, 'dominikbystron@yahoo.com', '', 'Not Exist'),
(568, 'extremecarcleaning2@gmail.com', '', 'Not Exist'),
(569, '', '', 'Not Exist'),
(570, 'info@londonsfinestdetailing.com', '', 'Not Exist'),
(571, 'gregbouchard@mail.com', '', 'Not Exist'),
(572, 'devonhatfield14@gmail.com', '', 'Not Exist'),
(573, '', '', 'Not Exist'),
(574, 'camberley@misterclean.co.uk', '', 'Not Exist'),
(575, '', '', 'Not Exist'),
(576, '', '', 'Not Exist'),
(577, '', '', 'Not Exist'),
(578, 'llautospa@gmail.com', '', 'Not Exist'),
(579, 'office@professionalcleaninglondon.org.uk', '', 'Not Exist'),
(580, 'info@nationalcarclean.co.uk', '', 'Not Exist'),
(581, 'marketing@americancarwash.co.uk', '', 'Not Exist'),
(582, 'info@poshwash.london', '', 'Not Exist'),
(583, 'sales@allstarwash.com', '', 'Not Exist'),
(584, '', '', 'Not Exist'),
(585, 'ambercarsoncleaningservices@gmail.com', '', 'Not Exist'),
(586, 'miraclemakercleaningservice@gmail.com', '', 'Not Exist'),
(587, 'contactcustomdetailing@gmail.com', '', 'Not Exist'),
(588, 'ryan.french@profreshclean.co.uk', '', 'Not Exist'),
(589, 'keepingcleanmobiledetailing@gmail.com', '', 'Not Exist'),
(590, 'sales@waxyclean.co.uk', '', 'Not Exist'),
(591, 'taylormasse@yahoo.com', '', 'Not Exist'),
(592, 'hello@filthtoclean.co.uk', '', 'Not Exist'),
(593, 'builtbylondon@gmail.com', '', 'Not Exist'),
(594, 'info@tinomobilecarwash.co.uk', '', 'Not Exist'),
(595, '', '', 'Not Exist'),
(596, '', '', 'Not Exist'),
(597, 'enquiries@dbscleaningservices.co.uk', '', 'Not Exist'),
(598, 'info@premiercarpetcleaning.co.uk', '', 'Not Exist'),
(599, 'lorencleaningservice1@outlook.com', '', 'Not Exist'),
(600, '', '', 'Not Exist'),
(601, 'autosales324@gmail.com', '', 'Not Exist'),
(602, 'tips@insider.com', '', 'Not Exist'),
(603, 'info@totalexteriorclean.com', '', 'Not Exist'),
(604, '', '', 'Not Exist'),
(605, 'squeakyclean@gmx.com', '', 'Not Exist'),
(606, 'kingdomcleaningdb@gmail.com', '', 'Not Exist'),
(607, 'marieashmore97@icloud.com', '', 'Not Exist'),
(608, 'crautomotive915@gmail.com', '', 'Not Exist'),
(609, '', '', 'Not Exist'),
(610, 'midiala.alex@gmail.com', '', 'Not Exist'),
(611, '', '', 'Not Exist'),
(612, '', '', 'Not Exist'),
(613, 'info@dtsoftwash.net', '', 'Not Exist'),
(614, 'sparrowcleaningaj@gmail.com', '', 'Not Exist'),
(615, '', '', 'Not Exist'),
(616, 'chocolateslondon@bernardcallebaut.com', '', 'Not Exist'),
(617, 'm.farag@al-rowaad.com', '', 'Not Exist'),
(618, '', '', 'Not Exist'),
(619, 'marketing@rococochocolates.com', '', 'Not Exist'),
(620, '', '', 'Not Exist'),
(621, '', '', 'Not Exist'),
(622, 'shop@british-emporium.com', '', 'Not Exist'),
(623, '', '', 'Not Exist'),
(624, '', '', 'Not Exist'),
(625, 'ledbury@meltchocolates.com', '', 'Not Exist'),
(626, '', '', 'Not Exist'),
(627, '', '', 'Not Exist'),
(628, '', '', 'Not Exist'),
(629, 'info@lakechamplainchocolates.com', '', 'Not Exist'),
(630, '', '', 'Not Exist'),
(631, 'info@chocolatesandpearls.com', '', 'Not Exist'),
(632, '', '', 'Not Exist'),
(633, '', '', 'Not Exist'),
(634, 'customerserviceuk@godiva.com', '', 'Not Exist'),
(635, '', '', 'Not Exist'),
(636, '', '', 'Not Exist'),
(637, '', '', 'Not Exist'),
(638, 'asel@londonchocolate.co.uk', '', 'Not Exist'),
(639, '', '', 'Not Exist'),
(640, 'info@chococo.co.uk', '', 'Not Exist'),
(641, '', '', 'Not Exist'),
(642, '', '', 'Not Exist'),
(643, '', '', 'Not Exist'),
(644, '', '', 'Not Exist'),
(645, 'publicidad.meencantaelchocolate@gmail.com', '', 'Not Exist'),
(646, '', '', 'Not Exist'),
(647, 'holla@thechocolatemen.com', '', 'Not Exist'),
(648, '', '', 'Not Exist'),
(649, 'enquiries@charbonnel.co.uk', '', 'Not Exist'),
(650, 'info@darksugars.co.uk', '', 'Not Exist'),
(651, '', '', 'Not Exist'),
(652, 'tomcamp1358@yahoo.com', '', 'Not Exist'),
(653, '', '', 'Not Exist'),
(654, 'mysterywalks1@gmail.com', '', 'Not Exist'),
(655, 'thelondonbakertx@gmail.com', '', 'Not Exist'),
(656, 'info@cricketandfig.com', '', 'Not Exist'),
(657, 'contact@avaandjack.co.uk', '', 'Not Exist'),
(658, 'yum@biscuiteers.com', '', 'Not Exist'),
(659, 'cs.ecommerce@domori.com', '', 'Not Exist'),
(660, 'info@pucksofeastlondon.com', '', 'Not Exist'),
(661, 'shipping@chocolateselrey.com', '', 'Not Exist'),
(662, 'customercare@loquetlondon.com', '', 'Not Exist'),
(663, 'kokoalondon@icloud.com', '', 'Not Exist'),
(664, 'hello@snackrevolution.co.uk', '', 'Not Exist'),
(665, '', '', 'Not Exist'),
(666, 'hello@rchocolatelondon.co.uk', '', 'Not Exist'),
(667, 'londonchocolate.002@gmail.com', '', 'Not Exist'),
(668, 'laf@upperstreetevents.co.uk', '', 'Not Exist'),
(669, 'aydaslondon@gmail.com', '', 'Not Exist'),
(670, '', '', 'Not Exist'),
(671, 'ask@5dchocolates.com', '', 'Not Exist'),
(672, 'customerservice@waggonerchocolates.com', '', 'Not Exist'),
(673, 'ostentate.marketing@gmail.com', '', 'Not Exist'),
(674, '', '', 'Not Exist'),
(675, 'london@choccywoccydoodah.com', '', 'Not Exist'),
(676, 'flowerslondon@rogers.com', '', 'Not Exist'),
(677, 'missmaude@barofchocolates.com', '', 'Not Exist'),
(678, 'jayajaks21@gmail.com', '', 'Not Exist'),
(679, 'sumaiyamasum.newlife@gmail.com', '', 'Not Exist'),
(680, 'noreply@chocolate-radio.com', '', 'Not Exist'),
(681, 'sales@londonpride.com', '', 'Not Exist'),
(682, 'hello@londonmaker.com', '', 'Not Exist'),
(683, 'chocolatebouquetslondon@gmail.com', '', 'Not Exist'),
(684, '', '', 'Not Exist'),
(685, 'mail@chelseaflowers.co.uk', '', 'Not Exist'),
(686, 'info@icedlondon.com', '', 'Not Exist'),
(687, 'info@chocolatesoupshop.com', '', 'Not Exist'),
(688, 'info@dapaahchocolates.co.uk', '', 'Not Exist'),
(689, 'info@cocoamoda.com', '', 'Not Exist'),
(690, 'contact@fairytalegourmet.com', '', 'Not Exist'),
(691, '', '', 'Not Exist'),
(692, 'cocoabocoa@gmail.com', '', 'Not Exist'),
(693, 'truman@trumanchocolates.com', '', 'Not Exist'),
(694, 'londoncafe1@yahoo.com', '', 'Not Exist'),
(695, 'info@mychocolate.co.uk', '', 'Not Exist'),
(696, '', '', 'Not Exist'),
(697, 'enquiries@treatslondon.co.uk', '', 'Not Exist'),
(698, 'info@exquisitochocolates.com', '', 'Not Exist'),
(699, 'info@thechocolateshopsevenoaks.co.uk', '', 'Not Exist'),
(700, 'info@paulayoung.co.uk', '', 'Not Exist'),
(701, 'kwomack@londonisd.net', '', 'Not Exist'),
(702, 'info@exhalelondon.com', '', 'Not Exist'),
(703, 'nikobchocolates@yahoo.com', '', 'Not Exist'),
(704, 'webmaster@londonisd.net', '', 'Not Exist'),
(705, 'reservations@onealdwych.com', '', 'Not Exist'),
(706, 'hello@eastvillagelondon.co.uk', '', 'Not Exist'),
(707, '', '', 'Not Exist'),
(708, '', '', 'Not Exist'),
(709, '', '', 'Not Exist'),
(710, 'webmaster@londonisd.net', '', 'Not Exist'),
(711, 'rose.moffett.rm@gmail.com', '', 'Not Exist'),
(712, 'thenicepeople@eatdrinkpulp.com', '', 'Not Exist'),
(713, 'info@chocolatekizomba.com', '', 'Not Exist'),
(714, 'candy@thechocolateshop.co.za', '', 'Not Exist'),
(715, '', '', 'Not Exist'),
(716, 'syedbehram5@gmail.com', '', 'Not Exist'),
(717, '', '', 'Not Exist'),
(718, 'annie@annieschocolates.com', '', 'Not Exist'),
(719, 'dude@dudesweetchocolate.com', '', 'Not Exist'),
(720, 'info@venturesendurance.com', '', 'Not Exist'),
(721, '', '', 'Not Exist'),
(722, 'tips@insider.com', '', 'Not Exist'),
(723, 'info@moznachocolate.com', '', 'Not Exist'),
(724, 'info@chocolatenationmas.com', '', 'Not Exist'),
(725, 'ofelbermas6271@gmail.com', '', 'Not Exist'),
(726, '', '', 'Not Exist'),
(727, '', '', 'Not Exist'),
(728, 'info@awakechocolate.com', '', 'Not Exist'),
(729, '', '', 'Not Exist'),
(730, 'team@coteslondon.com', '', 'Not Exist'),
(731, 'londonbakers.chd@gmail.com', '', 'Not Exist'),
(732, '', '', 'Not Exist'),
(733, '', '', 'Not Exist'),
(734, 'chocolateloungeex@gmail.com', '', 'Not Exist'),
(735, '', '', 'Not Exist'),
(736, '', '', 'Not Exist'),
(737, '', '', 'Not Exist'),
(738, '', '', 'Not Exist'),
(739, '', '', 'Not Exist'),
(740, '', '', 'Not Exist'),
(741, 'a.rizzo@champagnechocolates.com', '', 'Not Exist'),
(742, '', '', 'Not Exist'),
(743, 'brooke@bcocoachocolate.com', '', 'Not Exist'),
(744, 'ldeacon@redcross.org.uk', '', 'Not Exist'),
(745, '', '', 'Not Exist'),
(746, '', '', 'Not Exist'),
(747, '', '', 'Not Exist'),
(748, '', '', 'Not Exist'),
(749, 'info@lejeunechocolatiers.com', '', 'Not Exist'),
(750, '', '', 'Not Exist'),
(751, 'briannamc62@gmail.com', '', 'Not Exist'),
(752, '', '', 'Not Exist'),
(753, 'chillichocnails@mail.com', '', 'Not Exist'),
(754, '', '', 'Not Exist'),
(755, '', '', 'Not Exist'),
(756, 'sales@derosierchocolates.com', '', 'Not Exist'),
(757, 'customercare@shopatshams.com.pk', '', 'Not Exist'),
(758, '', '', 'Not Exist'),
(759, '', '', 'Not Exist'),
(760, '', '', 'Not Exist'),
(761, '', '', 'Not Exist'),
(762, '', '', 'Not Exist'),
(763, 'moorelleschocolates@gmail.com', '', 'Not Exist'),
(764, 'info@churchills-confectionery.co.uk', '', 'Not Exist'),
(765, 'info@julieschocolate.com', '', 'Not Exist'),
(766, 'info@chocolatepoetry.club', '', 'Not Exist'),
(767, 'info@thechocolateshopsevenoaks.co.uk', '', 'Not Exist'),
(768, 'samissensations@hotmail.com', '', 'Not Exist'),
(769, '', '', 'Not Exist'),
(770, 'cookingveg@yahoo.fr', '', 'Not Exist'),
(771, 'info@thechocolatebeautybox.com', '', 'Not Exist'),
(772, 'orders@blisschocolate.co.uk', '', 'Not Exist'),
(773, '', '', 'Not Exist'),
(774, '', '', 'Not Exist'),
(775, 'james@hipchocolate.com', '', 'Not Exist'),
(776, 'contact@fairytalegourmet.com', '', 'Not Exist'),
(777, '', '', 'Not Exist'),
(778, 'empyah@empyah.com', '', 'Not Exist'),
(779, 'shama.alam@ymail.com', '', 'Not Exist'),
(780, '', '', 'Not Exist'),
(781, 'support@legendlondon.co', '', 'Not Exist'),
(782, '', '', 'Not Exist'),
(783, 'store@pepejeans.com', '', 'Not Exist'),
(784, 'info@guideclothing.co.uk', '', 'Not Exist'),
(785, 'services@truworths.co.za', '', 'Not Exist'),
(786, 'cs@clubllondon.com', '', 'Not Exist'),
(787, '', '', 'Not Exist'),
(788, 'londonsaccessories@att.net', '', 'Not Exist'),
(789, 'enquiries@bombshellhq.com', '', 'Not Exist'),
(790, 'oceanaaction@gmail.com', '', 'Not Exist'),
(791, '', '', 'Not Exist'),
(792, 'info@izabel.com', '', 'Not Exist'),
(793, 'lpfwevents@gmail.com', '', 'Not Exist'),
(794, 'sales@qedlondon.co.uk', '', 'Not Exist'),
(795, 'info@sienna-london.com', '', 'Not Exist'),
(796, '', '', 'Not Exist'),
(797, '', '', 'Not Exist'),
(798, '', '', 'Not Exist'),
(799, 'tcs77868@outlook.com', '', 'Not Exist'),
(800, 'cs@discount-computer.com', '', 'Not Exist'),
(801, 'caresystem61@yahoo.com', '', 'Not Exist'),
(802, 'support@discountcomputerdepot.com', '', 'Not Exist'),
(803, 'pearlandtechno@gmail.com', '', 'Not Exist'),
(804, 'jlmc5371@tx.rr.com', '', 'Not Exist'),
(805, 'info@comp-connections.com', '', 'Not Exist'),
(806, 'briannorby@bwncomp.com', '', 'Not Exist'),
(807, 'act1computer@outlook.com', '', 'Not Exist'),
(808, '', '', 'Not Exist'),
(809, 'tcsebay@yahoo.com', '', 'Not Exist'),
(810, 'mattshack@gmail.com', '', 'Not Exist'),
(811, 'info@csdelrio.com', '', 'Not Exist'),
(812, 'info@mycomputerguy.com', '', 'Not Exist'),
(813, 'support@ccstexarkana.com', '', 'Not Exist'),
(814, 'skipper.computerhelp@gmail.com', '', 'Not Exist'),
(815, 'info@computerliterate.us', '', 'Not Exist'),
(816, 'office@tomballcomputerguy.com', '', 'Not Exist'),
(817, 'solutions@avatar-cs.net', '', 'Not Exist'),
(818, 'info@thecomputerloft.org', '', 'Not Exist'),
(819, 'service@lccsite.com', '', 'Not Exist'),
(820, 'london1230@yahoo.com', '', 'Not Exist'),
(821, 'crystal@setxcomputersolutions.com', '', 'Not Exist'),
(822, 'apluscomputerrepair@mail.com', '', 'Not Exist'),
(823, 'ccgeeks33@gmail.com', '', 'Not Exist'),
(824, 'info@the360tech.com', '', 'Not Exist'),
(825, 'roland@impresscomputers.com', '', 'Not Exist'),
(826, 'utsales@computerstore.utexas.edu', '', 'Not Exist'),
(827, 'zawzaw4633@gmail.com', '', 'Not Exist'),
(828, '', '', 'Not Exist'),
(829, '', '', 'Not Exist'),
(830, 'aycomputer9@gmail.com', '', 'Not Exist'),
(831, 'euromobilesandlaptops@gmail.com', '', 'Not Exist'),
(832, 'customerservice@ishine-trade.co.uk', '', 'Not Exist'),
(833, '', '', 'Not Exist'),
(834, 'experiencetech@yahoo.com', '', 'Not Exist'),
(835, 'info@computer-matters.co.uk', '', 'Not Exist'),
(836, 'support@vendulalondon.com', '', 'Not Exist'),
(837, '', '', 'Not Exist'),
(838, '', '', 'Not Exist'),
(839, 'customerservice@ishine-trade.co.uk', '', 'Not Exist'),
(840, 'vancitytech@gmail.com', '', 'Not Exist'),
(841, '', '', 'Not Exist'),
(842, 'tony@decorlondon.uk', '', 'Not Exist'),
(843, 'londondecorcompany@gmail.com', '', 'Not Exist'),
(844, 'jpdecorlondon@gmail.com', '', 'Not Exist'),
(845, '', '', 'Not Exist'),
(846, 'bestdecorlondon@gmail.com', '', 'Not Exist'),
(847, 'nichedecorlondon@outlook.com', '', 'Not Exist'),
(848, '', '', 'Not Exist'),
(849, '', '', 'Not Exist'),
(850, 'charlotte.mccaughan-hawes@condenast.co.uk', '', 'Not Exist'),
(851, 'admin@stoneglowcandles.co.uk', '', 'Not Exist'),
(852, '', '', 'Not Exist'),
(853, '', '', 'Not Exist'),
(854, 'info@archidesiign.com', '', 'Not Exist'),
(855, 'littlelondonluxurys@outlook.com', '', 'Not Exist'),
(856, '', '', 'Not Exist'),
(857, '', '', 'Not Exist'),
(858, 'customer.service@novielo.co.uk', '', 'Not Exist'),
(859, 'pam@christmasdecorlondon.com', '', 'Not Exist'),
(860, '', '', 'Not Exist'),
(861, 'customercare@decorcurios.com', '', 'Not Exist'),
(862, 'eventdecor.ltd@gmail.com', '', 'Not Exist'),
(863, 'hello@rowenhomes.com', '', 'Not Exist'),
(864, 'customerservice@oka.com', '', 'Not Exist'),
(865, 'info@decorhunterslondon.com', '', 'Not Exist'),
(866, 'lal_hatheli@outlook.com', '', 'Not Exist'),
(867, 'info@adamsblinds.co.uk', '', 'Not Exist'),
(868, 'info@midecor.co.uk', '', 'Not Exist'),
(869, 'sales@ldmdirect.co.uk', '', 'Not Exist'),
(870, 'info@decor-it.co.uk', '', 'Not Exist'),
(871, 'contact@londonparty-ideas.co.uk', '', 'Not Exist'),
(872, 'info@everestdecor.co.uk', '', 'Not Exist'),
(873, '', '', 'Not Exist'),
(874, 'andorahomeuk@hotmail.com', '', 'Not Exist'),
(875, 'marcgregorydecor@gmail.com', '', 'Not Exist'),
(876, '', '', 'Not Exist'),
(877, 'sales@mydecorstore.co.uk', '', 'Not Exist'),
(878, 'tim@westlondoncarpentry.com', '', 'Not Exist'),
(879, 'customersevices@thelondonhomewarecompany.com', '', 'Not Exist'),
(880, 'woollies@wildashlondon.co.uk', '', 'Not Exist'),
(881, 'info@interiorloftlondon.com', '', 'Not Exist'),
(882, 'enquiry@chrisbsltd.co.uk', '', 'Not Exist'),
(883, 'londonflowermarket@gmail.com', '', 'Not Exist'),
(884, 'steve@londonencaustic.com', '', 'Not Exist'),
(885, 'info@cafferoyalepk.com', '', 'Not Exist'),
(886, 'shop@kb-london.com', '', 'Not Exist'),
(887, 'images@ornaterugs.com', '', 'Not Exist'),
(888, 'assie@prestigeeventsdecor.com', '', 'Not Exist'),
(889, 'londonorgone@gmail.com', '', 'Not Exist'),
(890, 'enquiries@hux-london.co.uk', '', 'Not Exist'),
(891, 'anya@anyadesigns.ltd', '', 'Not Exist'),
(892, 'chairclassupholstery70@gmail.com', '', 'Not Exist'),
(893, 'hello@parkscandles.com', '', 'Not Exist'),
(894, 'renov8london@gmail.com', '', 'Not Exist'),
(895, 'care@madeleinehome.com', '', 'Not Exist'),
(896, 'contact@radiance-london.co.uk', '', 'Not Exist'),
(897, 'james_rl07@hotmail.com', '', 'Not Exist'),
(898, '', '', 'Not Exist'),
(899, 'london@blueelephant.com', '', 'Not Exist'),
(900, 'info@ready2paint.co.uk', '', 'Not Exist'),
(901, 'hello@mucknbrass.com', '', 'Not Exist'),
(902, 'customerservices@abigailahern.com', '', 'Not Exist'),
(903, 'info.lamsalondon@gmail.com', '', 'Not Exist'),
(904, 'contact@sdiaslondon.com', '', 'Not Exist'),
(905, '', '', 'Not Exist'),
(906, 'chris@londonpicturehanger.com', '', 'Not Exist'),
(907, 'ask@howelondon.com', '', 'Not Exist'),
(908, 'kelly@ambrosiallondon.co.uk', '', 'Not Exist'),
(909, 'info@mickarthome.com', '', 'Not Exist'),
(910, '', '', 'Not Exist'),
(911, 'info@evermorelondon.com', '', 'Not Exist'),
(912, 'sales@gingerlily.com', '', 'Not Exist'),
(913, 'hello@initiallylondon.com', '', 'Not Exist'),
(914, 'contact@decalicious.shop', '', 'Not Exist'),
(915, 'info@darium.co.uk', '', 'Not Exist'),
(916, 'sales@londoncarpetsolutions.co.uk', '', 'Not Exist'),
(917, '', '', 'Not Exist'),
(918, 'info@cornishdecorators.co.uk', '', 'Not Exist'),
(919, 'shop@graceandbutler.co.uk', '', 'Not Exist'),
(920, 'faye@londonbeadco.co.uk', '', 'Not Exist'),
(921, 'support@jasslondon.co.uk', '', 'Not Exist'),
(922, 'info@decorativelondoncement.co.uk', '', 'Not Exist'),
(923, 'splendidsunsevent@hotmail.com', '', 'Not Exist'),
(924, 'prostrikelondon@gmail.com', '', 'Not Exist'),
(925, 'info@sandarthome.com', '', 'Not Exist'),
(926, 'info@houseofvanessa.co.uk', '', 'Not Exist'),
(927, 'info@londoneventsatelier.com', '', 'Not Exist'),
(928, 'info@topnotchdecorators.co.uk', '', 'Not Exist'),
(929, 'info@giltcitybar.com', '', 'Not Exist'),
(930, '', '', 'Not Exist'),
(931, 'hello@bombayduck.com', '', 'Not Exist'),
(932, 'lmdc.dha@gmail.com', '', 'Not Exist'),
(933, '', '', 'Not Exist'),
(934, 'heightsdental@hotmail.com', '', 'Not Exist'),
(935, 'drteethbaycity@gmail.com', '', 'Not Exist'),
(936, 'dentonfamilydentalclinic@yahoo.com', '', 'Not Exist'),
(937, '', '', 'Not Exist'),
(938, 'info@dentalartimplantclinic.co.uk', '', 'Not Exist'),
(939, 'kinjaldentalclinic@gmail.com', '', 'Not Exist'),
(940, 'fuji@fujidentallab.com', '', 'Not Exist'),
(941, '', '', 'Not Exist'),
(942, 'arlingtondentalclinic@gmail.com', '', 'Not Exist'),
(943, 'office@visitdenisondental.com', '', 'Not Exist'),
(944, 'alexandraparkdentist@hotmail.co.uk', '', 'Not Exist'),
(945, 'brawleydental@cvctx.com', '', 'Not Exist'),
(946, 'patientcare@imagecaredentalgroup.com', '', 'Not Exist'),
(947, 'info@huhealth.co.uk', '', 'Not Exist'),
(948, 'lonestardentalcorpus@gmail.com', '', 'Not Exist'),
(949, 'info@chifamilydental.com', '', 'Not Exist'),
(950, 'administrator@myskydental.com', '', 'Not Exist'),
(951, '', '', 'Not Exist'),
(952, 'docsivie@lonestardentalgroup.com', '', 'Not Exist'),
(953, 'admin@bestdentistinhouston.com', '', 'Not Exist'),
(954, 'smile@lagodental.com', '', 'Not Exist'),
(955, 'info@bleudentist.com', '', 'Not Exist'),
(956, 'info@alliancedentalcenter.org', '', 'Not Exist'),
(957, 'manager@smileninjadental.com', '', 'Not Exist'),
(958, 'dentalzone16@gmail.com', '', 'Not Exist'),
(959, 'dentalsquarelumberton@gmail.com', '', 'Not Exist'),
(960, 'officemanager@myfusiondental.com', '', 'Not Exist'),
(961, 'doctornoiemail@gmail.com', '', 'Not Exist'),
(962, '', '', 'Not Exist'),
(963, 'smile@loldentistry.com', '', 'Not Exist'),
(964, '', '', 'Not Exist'),
(965, 'davidbernaldds@gmail.com', '', 'Not Exist'),
(966, 'coastaldentalcaretx@gmail.com', '', 'Not Exist'),
(967, 'beyonddental@yahoo.com', '', 'Not Exist'),
(968, 'info@sintondental.com', '', 'Not Exist'),
(969, 'drwesleywermuth@gmail.com', '', 'Not Exist'),
(970, 'marveldentalburleson@gmail.com', '', 'Not Exist'),
(971, 'office@visitfiestadental.com', '', 'Not Exist'),
(972, '5stardentalgroup@gmail.com', '', 'Not Exist'),
(973, 'infomercydental@gmail.com', '', 'Not Exist'),
(974, 'frontdesk@drsikes.com', '', 'Not Exist'),
(975, 'jordan.drluna@gmail.com', '', 'Not Exist'),
(976, 'info@moderydental.com', '', 'Not Exist'),
(977, '', '', 'Not Exist'),
(978, '', '', 'Not Exist'),
(979, 'info@comaldental.com', '', 'Not Exist'),
(980, 'belldental@comcast.net', '', 'Not Exist'),
(981, 'dentalappointments@nacdental.com', '', 'Not Exist'),
(982, 'info@westcolumbiadental.com', '', 'Not Exist'),
(983, 'info@houstonsmilespa.com', '', 'Not Exist'),
(984, 'contact@smithdentalrgv.com', '', 'Not Exist'),
(985, 'care@duncandentalstudio.com', '', 'Not Exist'),
(986, 'info@dentalartimplantclinic.co.uk', '', 'Not Exist'),
(987, 'london@dentaprime.com', '', 'Not Exist'),
(988, 'info@dentalsmileslondon.co.uk', '', 'Not Exist'),
(989, 'info@dentalartimplantclinic.co.uk', '', 'Not Exist'),
(990, '', '', 'Not Exist'),
(991, 'info@londondentalsmiles.com', '', 'Not Exist'),
(992, 'docrommell@yahoo.com', '', 'Not Exist'),
(993, 'booking@dubailondonclinic.ae', '', 'Not Exist'),
(994, 'info@dentalartimplantclinic.co.uk', '', 'Not Exist'),
(995, 'info@azizmedicare.com', '', 'Not Exist'),
(996, '', '', 'Not Exist'),
(997, 'dantspa@gmail.com', '', 'Not Exist'),
(998, 'info@ortholondon.com', '', 'Not Exist'),
(999, 'info@tibordental.com', '', 'Not Exist'),
(1000, 'info@faverowimpoleclinic.com', '', 'Not Exist'),
(1001, 'reception.barbican@smileright.co', '', 'Not Exist'),
(1002, 'dentalsquarepeshawar@gmail.com', '', 'Not Exist'),
(1003, 'info@londoncitydental.ca', '', 'Not Exist'),
(1004, 'drjo@dentist.tc', '', 'Not Exist'),
(1005, 'enquiries@lundosler.com', '', 'Not Exist'),
(1006, 'info@london-dental-specialists.co.uk', '', 'Not Exist'),
(1007, 'info@re-enhance.com', '', 'Not Exist'),
(1008, 'info@dentalimplantgroup.co.uk', '', 'Not Exist'),
(1009, '', '', 'Not Exist'),
(1010, '', '', 'Not Exist'),
(1011, 'londonroaddental@gmail.com', '', 'Not Exist'),
(1012, 'anasmarketing@gmail.com', '', 'Not Exist'),
(1013, 'mldc.danak@gmail.com', '', 'Not Exist'),
(1014, 'info@celebidental.com', '', 'Not Exist'),
(1015, 'info@zenithclinics.co.uk', '', 'Not Exist'),
(1016, 'dr_avik@dentalimplantcentre.com', '', 'Not Exist'),
(1017, 'dr.s.bhorat@gmail.com', '', 'Not Exist'),
(1018, '', '', 'Not Exist'),
(1019, 'info@dentalwise.co.uk', '', 'Not Exist'),
(1020, 'hello@twentyonedental.co.uk', '', 'Not Exist'),
(1021, 'enquiries@straightwhiteteethlondon.com', '', 'Not Exist'),
(1022, 'thecliniccanton@gmail.com', '', 'Not Exist'),
(1023, 'beyouagain@evodental.com', '', 'Not Exist'),
(1024, 'info@cosmeticdentalantalya.co.uk', '', 'Not Exist'),
(1025, 'appointments@carisbrookedental.co.uk', '', 'Not Exist'),
(1026, 'info@eskulap.co.uk', '', 'Not Exist'),
(1027, 'gilloolydentureclinics@gmail.com', '', 'Not Exist'),
(1028, 'info@mydrdental.com', '', 'Not Exist'),
(1029, '', '', 'Not Exist'),
(1030, 'info@southlondondental.com', '', 'Not Exist'),
(1031, 'yourperfectsmile@hotmail.com', '', 'Not Exist'),
(1032, '', '', 'Not Exist'),
(1033, 'katy.dentalclinic@gmail.com', '', 'Not Exist'),
(1034, '', '', 'Not Exist'),
(1035, 'dentalplusofconverse@gmail.com', '', 'Not Exist'),
(1036, 'dentistatmain@gmail.com', '', 'Not Exist'),
(1037, 'officemanager@delawaredental.org', '', 'Not Exist'),
(1038, '', '', 'Not Exist'),
(1039, 'customercare@1dental.com', '', 'Not Exist'),
(1040, 'dentalexpressions306@gmail.com', '', 'Not Exist'),
(1041, 'info@lonestardentalcenter.com', '', 'Not Exist'),
(1042, 'frontdesk@sterlingdentalcenter.net', '', 'Not Exist'),
(1043, 'office@cocodentalcenter.com', '', 'Not Exist'),
(1044, 'leedentalfrontoffice@gmail.com', '', 'Not Exist'),
(1045, 'info@lonestardentalcare.com', '', 'Not Exist'),
(1046, 'hello@panthercreekdental.com', '', 'Not Exist'),
(1047, 'fw@endospecialiststx.com', '', 'Not Exist'),
(1048, 'contact@missionhilldental.com', '', 'Not Exist'),
(1049, 'frontoffice@watsondentallab.com', '', 'Not Exist'),
(1050, 'info@abc123dental.com', '', 'Not Exist'),
(1051, '', '', 'Not Exist'),
(1052, '1187dental@gmail.com', '', 'Not Exist'),
(1053, 'office@dentalimplantshoustontx.com', '', 'Not Exist'),
(1054, 'lorenzanaperio@yahoo.com', '', 'Not Exist'),
(1055, 'keenedentalpllc@gmail.com', '', 'Not Exist'),
(1056, 'gsrdental@protonmail.com', '', 'Not Exist'),
(1057, 'zach.pendry@thommenmedical.com', '', 'Not Exist'),
(1058, 'drknott@towncenterdentalgarland.com', '', 'Not Exist'),
(1059, 'contact@dentalvisions.com', '', 'Not Exist'),
(1060, 'forest.square.dental.tx@gmail.com', '', 'Not Exist'),
(1061, 'info@bellairefaces.com', '', 'Not Exist'),
(1062, 'lancasterdentaltx@gmail.com', '', 'Not Exist'),
(1063, 'info@dredental.com', '', 'Not Exist'),
(1064, 'jacksondental@gmail.com', '', 'Not Exist'),
(1065, 'wdentaldds@gmail.com', '', 'Not Exist'),
(1066, 'info@kcdentalaustin.com', '', 'Not Exist'),
(1067, 'melissa@whartondental.com', '', 'Not Exist'),
(1068, 'info@completedentalcarekingwood.com', '', 'Not Exist'),
(1069, 'info@serenitydentalaustin.com', '', 'Not Exist'),
(1070, 'frontdesk@apollonia-dental.com', '', 'Not Exist'),
(1071, '', '', 'Not Exist'),
(1072, 'mychael@dentalillusions.com', '', 'Not Exist'),
(1073, 'smile@titensordental.com', '', 'Not Exist'),
(1074, '', '', 'Not Exist'),
(1075, 'info@nesloneydental.com', '', 'Not Exist'),
(1076, '', '', 'Not Exist'),
(1077, 'manager@visita1dental.com', '', 'Not Exist'),
(1078, 'info@springcrestdental.com', '', 'Not Exist'),
(1079, '', '', 'Not Exist'),
(1080, 'office@rdgallen.com', '', 'Not Exist'),
(1081, 'staff@mylonestardental.com', '', 'Not Exist'),
(1082, 'sonrisadentalsa@gmail.com', '', 'Not Exist'),
(1083, '', '', 'Not Exist'),
(1084, 'info@cedarparkdentalandbraces.com', '', 'Not Exist'),
(1085, 'info@4405dentalstudio.com', '', 'Not Exist'),
(1086, 'frontdesk@ciscodental.com', '', 'Not Exist'),
(1087, 'scheduling@leedentalcenters.com', '', 'Not Exist'),
(1088, 'coulondental@gmail.com', '', 'Not Exist'),
(1089, '359dental@mb2dental.com', '', 'Not Exist'),
(1090, 'info@longviewsmiles.com', '', 'Not Exist'),
(1091, 'care@citylinedentalcenter.com', '', 'Not Exist'),
(1092, 'info@doctorsmileclinic.com', '', 'Not Exist'),
(1093, 'office@smileninjadental.com', '', 'Not Exist'),
(1094, 'info@smilegreat.com', '', 'Not Exist'),
(1095, 'info@lakeview-dental.com', '', 'Not Exist'),
(1096, 'info@doctorsmileclinic.com', '', 'Not Exist'),
(1097, 'appointments@clearlakedentalcare.com', '', 'Not Exist'),
(1098, 'starlightdentalaustin@gmail.com', '', 'Not Exist'),
(1099, 'info@williamsdentalcare.com', '', 'Not Exist'),
(1100, 'lumberton@mb2dental.com', '', 'Not Exist'),
(1101, 'office@yellowhousedds.com', '', 'Not Exist'),
(1102, 'info@shinerdental.com', '', 'Not Exist'),
(1103, 'tlndental@gmail.com', '', 'Not Exist'),
(1104, 'info@townedentalandortho.com', '', 'Not Exist'),
(1105, '', '', 'Not Exist'),
(1106, 'faithloveandlight@gmail.com', '', 'Not Exist'),
(1107, 'bookings@drfarahclinics.com', '', 'Not Exist'),
(1108, 'beyonddental@yahoo.com', '', 'Not Exist'),
(1109, 'info@thrasyvouloudentalclinic.com.cy', '', 'Not Exist'),
(1110, 'info@starklinics.com.au', '', 'Not Exist'),
(1111, '', '', 'Not Exist'),
(1112, 'info@croatiadentalservices.co.uk', '', 'Not Exist'),
(1113, 'info@eyespyeyeanddentalcare.co.uk', '', 'Not Exist'),
(1114, 'chike_emeagi@yahoo.com', '', 'Not Exist'),
(1115, '', '', 'Not Exist'),
(1116, '', '', 'Not Exist'),
(1117, 'appointments@lintonsmile.com', '', 'Not Exist'),
(1118, 'drtwiss@twissdental.com', '', 'Not Exist'),
(1119, '', '', 'Not Exist'),
(1120, 'patientcoordinator@londondentalcenter.com', '', 'Not Exist'),
(1121, '', '', 'Not Exist'),
(1122, 'enquiries@thesmileclinic.uk.com', '', 'Not Exist'),
(1123, 'dentalcarehn@gmail.com', '', 'Not Exist'),
(1124, 'info@london-dental-implant.co.uk', '', 'Not Exist'),
(1125, 'shrpl.oswal@gmail.com', '', 'Not Exist'),
(1126, 'reception@tl-dc.com', '', 'Not Exist'),
(1127, '', '', 'Not Exist'),
(1128, 'info@thesmilestudios.com', '', 'Not Exist'),
(1129, 'soranmuhammad92@gmail.com', '', 'Not Exist'),
(1130, '', '', 'Not Exist'),
(1131, '', '', 'Not Exist');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `campaign`
--
ALTER TABLE `campaign`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `campaign`
--
ALTER TABLE `campaign`
  MODIFY `ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1132;
--
-- Database: `epidemic`
--
CREATE DATABASE IF NOT EXISTS `epidemic` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `epidemic`;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Contact_ID` int(225) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `PhoneNumber` bigint(20) NOT NULL,
  `Message` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Contact_ID`, `Name`, `Email`, `PhoneNumber`, `Message`) VALUES
(1, 'Saad', 'saadimtiaz208@gmail.com', 3311321578, 's'),
(2, 'Saad', 'saadimtiaz208@gmail.com', 3311321578, 'Hello!!!'),
(3, 'Saad', 'saadimtiaz208@gmail.com', 3311321578, 'HI !!'),
(4, 'Saad', 'saadimtiaz208@gmail.com', 3311321578, 'Hey!');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `Profile_ID` int(225) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `Phone` bigint(20) NOT NULL,
  `Age` int(10) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Percent` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`Profile_ID`, `Name`, `Email`, `Phone`, `Age`, `Gender`, `Percent`) VALUES
(6, 'Saad', 'saadimtiaz208@gmail.com', 3311321578, 23, 'Male', 51.6667),
(7, 'Saad', 'saadimtiaz208@gmail.com', 3311321578, 20, 'Male', 40),
(8, 'Saad', 'saadimtiaz208@gmail.com', 3311321578, 20, 'Male', 40),
(9, 'Saad', 'saadimtiaz208@gmail.com', 3311321578, 20, 'Male', 75),
(10, 'Saad', 'saadimtiaz208@gmail.com', 3311321578, 20, 'Male', 75),
(11, 'Saad', 'saadimtiaz208@gmail.com', 3311321578, 20, 'Male', 75),
(12, 'saad ali', 'saad@gmail.com', 314151487, 4, 'Male', 55);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`Contact_ID`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`Profile_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `Contact_ID` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `Profile_ID` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Database: `jdesign`
--
CREATE DATABASE IF NOT EXISTS `jdesign` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `jdesign`;

-- --------------------------------------------------------

--
-- Table structure for table `clips`
--

CREATE TABLE `clips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video_link` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clips`
--

INSERT INTO `clips` (`id`, `video_link`, `created_at`, `updated_at`) VALUES
(1, 'https://www.youtube.com/embed/Dn0M6WUtaWE', '2022-11-08 11:16:03', '2022-11-12 06:07:23'),
(2, 'https://www.youtube.com/embed/Dn0M6WUtaWE', '2022-11-12 06:02:27', '2022-11-12 06:02:27');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `image`, `created_at`, `updated_at`) VALUES
(15, '1668419700.jpg', '2022-11-09 08:03:13', '2022-11-14 04:55:00'),
(16, '1668593575.jpg', '2022-11-09 08:04:36', '2022-11-16 05:12:55'),
(20, '1667999382.jpg', '2022-11-09 08:09:42', '2022-11-09 08:09:42'),
(22, '1667999553.jpg', '2022-11-09 08:12:33', '2022-11-09 08:12:33'),
(23, '1668163089.jpg', '2022-11-11 05:38:09', '2022-11-11 05:38:09'),
(24, '1668250834.jpg', '2022-11-11 05:39:13', '2022-11-12 06:00:34'),
(25, '1668163407.jpg', '2022-11-11 05:43:27', '2022-11-11 05:43:27'),
(26, '1668163420.jpg', '2022-11-11 05:43:40', '2022-11-11 05:43:40'),
(27, '1668164460.jpg', '2022-11-11 06:01:00', '2022-11-11 06:01:00'),
(28, '1668164637.jpg', '2022-11-11 06:03:57', '2022-11-11 06:03:57'),
(29, '1668258243.jpg', '2022-11-12 08:04:03', '2022-11-12 08:04:03'),
(30, '1668258249.jpg', '2022-11-12 08:04:09', '2022-11-12 08:04:09'),
(31, '1668258361.jpg', '2022-11-12 08:06:01', '2022-11-12 08:06:01'),
(32, '1668258553.jpg', '2022-11-12 08:09:13', '2022-11-12 08:09:13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_11_07_125937_create_sessions_table', 1),
(7, '2022_11_07_162549_create_galleries_table', 2),
(8, '2022_11_07_162638_create_clips_table', 2),
(9, '2022_11_07_162705_create_orders_table', 2),
(11, '2022_11_07_162734_create_products_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `username`, `email`, `phone`, `alt_phone`, `address`, `country`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 'saad ali', 'saad', 'saad@gmail.com', '0314151487', '0314151487', 'Dumy Street No, Dumy House No', 'Karachi', '2', '2022-11-07 13:03:21', '2022-11-07 13:03:21'),
(2, 'saad ali', 'saad', 'saad@gmail.com', '0314151487', '0314151487', 'Dumy Street No, Dumy House No', 'Karachi', '2', '2022-11-07 13:10:05', '2022-11-07 13:10:05'),
(3, 'saad ali', 'saadd', 'saad@gmail.com', '0314151487', '0314151487', 'Dumy Street No, Dumy House No', 'Karachi', '2', '2022-11-07 13:12:46', '2022-11-07 13:12:46'),
(4, 'saad ali', 'ca', 'saad@gmail.com', '0314151487', '0314151487', 'Dumy Street No, Dumy House No', 'Karachi', '1', '2022-11-07 13:14:23', '2022-11-07 13:14:23');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prd_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `image`, `prd_link`, `created_at`, `updated_at`) VALUES
(1, '1668258076.jpg', 'https://media.gettyimages.com/id/184944186/photo/quaid-e-azam.jpg?s=612x612&w=gi&k=20&c=Nr9cDm0BY-yx1eu7bUGN3QGk87VybswqcqTwT05S-U8=', '2022-11-08 12:20:06', '2022-11-12 08:01:16');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('88fBy0CPoEQwA1v0Q8wuMHhDlp4rQZCkHnCUIGNd', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRGZpNDhsM0VDMkljN2JGY0xKN3g0Tmw2aVg0Y3hHdFVhdUN2bWk2QiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9JbWFnZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo1OiJhbGVydCI7YTowOnt9fQ==', 1668593756),
('bKRmhFOybSbKZotdhzSXGspjIMfPu5Z0Xoi63Y2H', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNTlaY2lqQkxGYXlLQlJRVGRNT2d0TWZYV2tOSlg2TGoyWUZmUTdoVyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fX0=', 1669210355),
('pBPt4ipPiUaAK73WZZyIu8O4N3d53WTzdzTrCiat', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoib25WdzlGMWZNMENIRTlzOFFXTTNqcUR1QVl6ajRNUVdKVndsajdKayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9BbmFseXRpY3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1668601559),
('RZjrhL1UdbHdPBGOFJpxoS6Cyd5C7y0Zx1b0kH6D', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiR1dBOWlMQ0hBZFl0OU9QaW5RQ1RHbWlqbzk5YVRkWXlzNlhSN0g4cCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9JbWFnZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo1OiJhbGVydCI7YTowOnt9fQ==', 1668671029);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$oGhk.PZRUjdQr4zbLYydUeouzpsRu86aYg2xP5f3uvIG1KwDOyCHq', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-14 06:05:32', '2022-11-14 06:05:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clips`
--
ALTER TABLE `clips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `clips`
--
ALTER TABLE `clips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `jetblog`
--
CREATE DATABASE IF NOT EXISTS `jetblog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `jetblog`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_08_04_095142_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('G89aNPlePBMp2TO2T9yAmUoxtb3bu3M2ThVvedrc', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoid21jbmswZkNHSWQ5T0JXZmxaRmxTa1BobG45MnY0WElQbmU3czA2byI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIxOiJodHRwOi8vbG9jYWxob3N0OjgwMDAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJEY4bDF4Q1NRdkRIM0pKWjhDdkVtTWVsdUtlTnZTT1FjaUFzMVllTEFSQ255UkhFMVBHcnhLIjt9', 1659698758),
('oHs5W218fUCoHld4FzfuYlIzCtQY7BOTtX4D5CM2', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidm96R2hkRHBnMkl5elVoTFJLajBnVUkyNkJZM2pDazZzRnlqZ0N1QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJEY4bDF4Q1NRdkRIM0pKWjhDdkVtTWVsdUtlTnZTT1FjaUFzMVllTEFSQ255UkhFMVBHcnhLIjt9', 1659613134),
('rXp03IPxxWpF6J7rEt5llUl2R0bdEmCzII9T2gs8', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiV2FmWFBVUkwxb2RjNVZCN3F4QmdwVTRTT01TR25ac2VRVk9BYzZLUSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMToiaHR0cDovL2xvY2FsaG9zdDo4MDAwL2Rhc2hib2FyZCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1659626766);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Saad Ali', 'saadimtiaz208@gmail.com', NULL, '$2y$10$F8l1xCSQvDH3JJZ8CvEmMeluKeNvSOQciAs1YeLARCnyRHE1PGrxK', NULL, NULL, NULL, NULL, NULL, NULL, '2022-08-04 06:15:05', '2022-08-04 06:15:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `jetblog2`
--
CREATE DATABASE IF NOT EXISTS `jetblog2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `jetblog2`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_09_27_093905_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('uDtXvDPRemOwnrnmsr3ub7gF49ZyD58xeQMnM7Ge', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoia0NWam5xTmYyT1J4QUtmZGlLZzBEbll0eG1uVlgzbllRcmdHVU52ZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJFRUbGxNUTdMa2I2NGFDVklicEF0SmV3Ny9jeUNLTTJILlZpVTJKUTZ0U0lPcS95Yy9TS3JpIjt9', 1666371136);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'saad ali', 'saadali@gmail.com', NULL, '$2y$10$TTllMQ7Lkb64aCVIbpAtJew7/cyCKM2H.ViU2JQ6tSIOq/yc/SKri', NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-21 11:44:01', '2022-10-21 11:44:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `joins`
--
CREATE DATABASE IF NOT EXISTS `joins` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `joins`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(50) NOT NULL,
  `Description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerID` int(10) NOT NULL,
  `CustomerName` varchar(50) NOT NULL,
  `ContactName` varchar(50) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `City` varchar(50) NOT NULL,
  `PostalCode` varchar(20) NOT NULL,
  `Country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `CustomerName`, `ContactName`, `Address`, `City`, `PostalCode`, `Country`) VALUES
(1, 'Alfreds Futterkiste	', 'Maria Anders	', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico'),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmployeeID` int(11) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `BirthDate` date NOT NULL,
  `Photo` varchar(200) NOT NULL,
  `Notes` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `OrderDetailID` int(11) NOT NULL,
  `OrderID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `OrderDate` date NOT NULL,
  `ShipperID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `ShipperID`) VALUES
(1, 2, 5, '1996-07-04', 3),
(2, 3, 4, '1996-07-05', 1),
(3, 8, 2, '1996-07-08', 2);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(80) NOT NULL,
  `SupplierID` int(11) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `Unit` varchar(80) NOT NULL,
  `Price` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shipper`
--

CREATE TABLE `shipper` (
  `ShipperID` int(11) NOT NULL,
  `ShipperName` varchar(80) NOT NULL,
  `Phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SupplierID` int(11) NOT NULL,
  `SupplierName` varchar(80) NOT NULL,
  `ContactName` varchar(50) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `City` varchar(50) NOT NULL,
  `PostalCode` varchar(20) NOT NULL,
  `Country` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`OrderDetailID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `shipper`
--
ALTER TABLE `shipper`
  ADD PRIMARY KEY (`ShipperID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SupplierID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CustomerID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EmployeeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `OrderDetailID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipper`
--
ALTER TABLE `shipper`
  MODIFY `ShipperID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SupplierID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `larablog`
--
CREATE DATABASE IF NOT EXISTS `larablog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `larablog`;
--
-- Database: `lfg`
--
CREATE DATABASE IF NOT EXISTS `lfg` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lfg`;
--
-- Database: `lol`
--
CREATE DATABASE IF NOT EXISTS `lol` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lol`;

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `Game_ID` int(20) NOT NULL,
  `Game_Photo` varchar(200) NOT NULL,
  `Game_Title` varchar(200) NOT NULL,
  `Game_Description` varchar(1000) NOT NULL,
  `Avg_Rating` decimal(5,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`Game_ID`, `Game_Photo`, `Game_Title`, `Game_Description`, `Avg_Rating`) VALUES
(1, 'Games/1.jpg', 'MLB The Show 21', 'Experience faster, deeper and more intense moment-to-moment match action on the baseball field in this year\'s  MLB The Show 21 from San Diego Studio. Play a variety of game modes for all your rookie players and returning seasoned vets.', '3'),
(2, 'Games/2.jpg', 'Everybody Golf', 'Cute and colourful Everybody\'s Golf is more \'pitch-and-putt\' than PGA Tour with intuitive controls and the chance to create your own goofy in-game avatars. The rules are simple: club balls, hole... join them all together in the fewest possible strokes - and do try to avoid the bunkers!', '3'),
(3, 'Games/3.jpg', 'EA SPORT FIFA 22', 'Powered by football, the latest season of EA SPORTS\'™ world-renowned series delivers all the glory of the beautiful game, letting you pick from hundreds of licensed teams from across the globe. ', '5'),
(4, 'Games/4.jpg', 'NBA 2K Playgrounds 2', 'Take street balling to the next level with NBA 2K Playgrounds 2. Putting a fun, artistic spin on basketball and grounding the gameplay in a more straightforward series of dribbles and dunks, this sequel to the original smash hit is the perfect for those looking to Ball Without Limits!', '2'),
(5, 'Games/5.jpg', 'LEGO DC Super-Villains', 'Create and play as an all-new super-villain, unleashing mischievous antics and wreaking havoc in an action-packed open-world adventure. Joined by The Joker, Harley Quinn, and many others from the Injustice League, set out on a quest to uncover the intentions of Earth\'s strange, new wannabe superheroes.', '4'),
(6, 'Games/6.jpg', 'LEGO Marve Super Heroes 2', 'It\'s about time! Join your favorite Super Heroes and Super Villains from different eras and realities as they go head-to-head with the time-traveling Kang the Conqueror in the all-new, original adventure, LEGO® Marvel Super Heroes 2!', '1'),
(7, 'Games/7.jpg', 'LEGO Harry Potter Collection', 'The wizarding world of Harry Potter is a favorite with kids, families, and adults alike, and with this spellbinding PS4-remastered collection you can relive each of the much-loved books and movies in the inimitable style LEGO style.', '1'),
(8, 'Games/8.jpg', 'LEGO The Incredibles', 'Experience the thrilling adventures of the Parr family as they conquer crime and family life through both Disney-Pixar films The Incredibles and Incredibles 2, in a LEGO® world full of fun and humor.', '1'),
(9, 'Games/9.jpg', 'It Takes Two', 'Become the wandering spirit guide Kena and embark on a voyage across a corrupted world, gathering together a group of adorable followers known as the Rot, harnessing their combined powers to banish corruption from the land. ', '2'),
(10, 'Games/10.jpg', 'Sackboy A Big Adventure', 'Iconic PlayStation hero Sackboy rerturns with a huge, fun and frantic 3D multiplayer platforming adventure. When the dastardly Vex kidnaps Sackboy’s friends and forces them to build his Topsy Turver, it\'ll be up to you and friends to jump into action and stop him.', '1');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `Rating_ID` int(20) NOT NULL,
  `Game_ID` int(20) NOT NULL,
  `Rating` int(5) NOT NULL,
  `Email` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`Rating_ID`, `Game_ID`, `Rating`, `Email`) VALUES
(1, 1, 3, 'test1@gmail.com'),
(2, 2, 3, 'test1@gmail.com'),
(3, 3, 5, 'test1@gmail.com'),
(4, 4, 2, 'test1@gmail.com'),
(5, 5, 4, 'test1@gmail.com'),
(6, 6, 1, 'test1@gmail.com'),
(7, 7, 1, 'test1@gmail.com'),
(8, 8, 1, 'test1@gmail.com'),
(9, 9, 2, 'test1@gmail.com'),
(10, 10, 1, 'test1@gmail.com'),
(11, 1, 3, 'test2@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `Review_ID` int(20) NOT NULL,
  `Game_ID` int(20) NOT NULL,
  `Review` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`Review_ID`, `Game_ID`, `Review`) VALUES
(1, 2, 'Good Game'),
(2, 1, 'Nice Game');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `Signup_ID` int(20) NOT NULL,
  `Email` varchar(80) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `F_Name` varchar(40) NOT NULL,
  `L_Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`Signup_ID`, `Email`, `Password`, `F_Name`, `L_Name`) VALUES
(1, 'test1@gmail.com', '123', 'Khalid', 'Shaikh'),
(2, 'test2@gmail.com', '321', 'Rashid', 'Siddiqui'),
(3, 'test3@gmail.com', '741', 'Umair', 'Ali');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`Game_ID`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`Rating_ID`),
  ADD KEY `Game_ID` (`Game_ID`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`Review_ID`),
  ADD KEY `Game_ID` (`Game_ID`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`Signup_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `Game_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `Rating_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `Review_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `Signup_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `midone`
--
CREATE DATABASE IF NOT EXISTS `midone` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `midone`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `gender`, `active`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Saad', 'saad@gmail.com', NULL, 'Saad@123', NULL, '', 0, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `ntl`
--
CREATE DATABASE IF NOT EXISTS `ntl` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ntl`;

-- --------------------------------------------------------

--
-- Table structure for table `ntl_category`
--

CREATE TABLE `ntl_category` (
  `catID` varchar(6) NOT NULL DEFAULT '',
  `catDesc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ntl_category`
--

INSERT INTO `ntl_category` (`catID`, `catDesc`) VALUES
('c1', 'Model Trains & Railway Sets'),
('c10', 'Fancy Dress'),
('c11', 'Slot Cars, Race Tracks & Accessories'),
('c12', 'Musical Toy Instruments'),
('c13', 'Trading Cards & Accessories'),
('c14', 'Puppets & Puppet Theatres'),
('c15', 'Pretend Play'),
('c2', 'Games'),
('c3', 'Arts & Crafts'),
('c4', 'Characters & Brands'),
('c5', 'Figures & Playsets'),
('c6', 'Home Accessories'),
('c7', 'Die-Cast & Toy Vehicles'),
('c8', 'Model Building Kits'),
('c9', 'Collectible Figures & Memorabilia');

-- --------------------------------------------------------

--
-- Table structure for table `ntl_manufacturer`
--

CREATE TABLE `ntl_manufacturer` (
  `manID` varchar(6) NOT NULL DEFAULT '',
  `manName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ntl_manufacturer`
--

INSERT INTO `ntl_manufacturer` (`manID`, `manName`) VALUES
('m1', 'Alfa Romeo'),
('m10', 'Cheatwell Games'),
('m11', 'Classix'),
('m12', 'Comic Maker'),
('m13', 'Corgi'),
('m14', 'DC Collectibles'),
('m15', 'Deckboosters'),
('m16', 'Disney'),
('m17', 'Frozen'),
('m18', 'FunKo'),
('m19', 'FunkyBuys'),
('m2', 'Arcane Wonders'),
('m20', 'Games Workshop'),
('m21', 'Gibsons Games'),
('m22', 'Greater Than Games'),
('m23', 'Guaranteed4Less'),
('m24', 'Hasbro'),
('m25', 'Hornby'),
('m26', 'Hot Wheels'),
('m27', 'Kaiyodo'),
('m28', 'Kato'),
('m29', 'King Horse'),
('m3', 'Bachmann'),
('m30', 'Learning Curve'),
('m31', 'Legion Supplies'),
('m32', 'LEGO'),
('m33', 'Lion Games & Gifts Europe'),
('m34', 'Manhattan Toy'),
('m35', 'Marvel'),
('m36', 'Masters'),
('m37', 'Match Attax'),
('m38', 'Mattel'),
('m39', 'Moshi Monsters'),
('m4', 'Bburago'),
('m40', 'Motion Sand'),
('m41', 'Muppets'),
('m42', 'Nickelodeon'),
('m43', 'Oxford Diecast'),
('m44', 'Pictionary'),
('m45', 'Playing Cards'),
('m46', 'Playmobil'),
('m47', 'Preiser'),
('m48', 'Rockets Toys'),
('m49', 'Scalextric'),
('m5', 'Blue Frog Toys'),
('m50', 'Schleich'),
('m51', 'Silkcraft'),
('m52', 'Slammer'),
('m53', 'Small Foot'),
('m54', 'Snoopy'),
('m55', 'Spider-Man'),
('m56', 'Spin Master'),
('m57', 'Star Cutouts Ltd'),
('m58', 'Star Wars'),
('m59', 'Tagamoto'),
('m6', 'Brimtoy'),
('m60', 'Takara Tomy'),
('m61', 'Take N Play'),
('m62', 'TALLON INTERNATIONAL'),
('m63', 'Tapball'),
('m64', 'Teenage Mutant Ninja Turtles'),
('m65', 'The Avengers'),
('m66', 'The Hulk'),
('m67', 'The Puppet Company'),
('m68', 'Thomas & Friends'),
('m69', 'Tobar'),
('m7', 'Carrera'),
('m70', 'Top Trumps'),
('m71', 'Trade Mark Collections'),
('m72', 'Transformers'),
('m73', 'Trefl'),
('m74', 'Ultra Pro'),
('m75', 'Universal Hobbies'),
('m76', 'Upper Deck'),
('m77', 'US Playing Card Co.'),
('m78', 'Vigid Imaginations'),
('m79', 'Winning Moves'),
('m8', 'Cartamundi'),
('m80', 'Yu-Gi-Oh'),
('m9', 'Character Options');

-- --------------------------------------------------------

--
-- Table structure for table `ntl_toys`
--

CREATE TABLE `ntl_toys` (
  `toyID` int(11) NOT NULL,
  `toyName` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `manID` varchar(6) DEFAULT NULL,
  `catID` varchar(6) DEFAULT NULL,
  `toyPrice` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ntl_toys`
--

INSERT INTO `ntl_toys` (`toyID`, `toyName`, `description`, `manID`, `catID`, `toyPrice`) VALUES
(1, 'FunkyBuys Large Christmas Holiday Express Festive Train Set (SI-TY1017) Toy Light / Sounds / Battery Operated & Smoke', 'Size Name: Large FunkyBuys Large Christmas Holiday Express Festive Train Set (SI-TY1017) Toy Light / Sounds / Battery Operated & Smoke', 'm19', 'c1', '16.99'),
(2, 'HORNBY Coach R4410A BR Hawksworth Corridor 3rd', 'Hornby 00 Gauge BR Hawksworth 3rd Class W 2107 W # R4410A', 'm25', 'c1', '39.99'),
(3, 'Hornby 00 Gauge 0-4-0 Gildenlow Salt Co. Steam Locomotive Model', 'Product Description Hornby RailRoad 0-4-0 Gildenlow Salt Co 00 gauge steam locomotive model. Safety warning: This product is not suitable for children under 3 years because of small parts which could present a choking hazard. Some components have functional sharp edges. Handle with care. Only use this product with the recommended transformer. Made in China. Box Contains 1x Steam Locomotive Model', 'm25', 'c1', '32.19'),
(4, 'Hornby 00 Gauge 230mm BR Bogie Passenger Brake Coach Model (Red)', 'Product Description Hornby BR bogie passenger brake coach has pristine finish. Livery: BR red livery. Entered Service: 1930. Period: 1950. 230mm coach model length. The truly fascinating and varied range of Hornby coaches offers something for most enthusiasts modelling the various regions and periods of the British rail network. Box Contains 1x Red Bogie Passenger Brake', 'm25', 'c1', '24.99'),
(5, 'Kato (USA) 176-1308 F3B Denver & Rio Grande Western', 'Suitable for the following scale(s): N Scale', 'm28', 'c1', '99.99'),
(6, 'Bachmann 37-662 14 Ton Tank Wagon Pease & Partners Red', 'Suitable for the following scale(s): OO Scale', 'm3', 'c1', '9.60'),
(7, 'Hornby 00 Gauge 253mm Weathered Paviland Grange Steam Locomotive Train Model', 'Product Description Hornby Weathered DCC Ready 00 Gauge Paviland Grange steam locomotive train model. Its features		: Sprung buffers, sliding cab roof hatch, NEM couplings, tender detail. Class: grange, designer: C.B. collett, entered service: 1936, number built: 80, purpose: mixed traffic, wheel configuration: 4-6-0, length: 253mm, motor: 5 pole skew wound. loco drive, DCC ready, livery: BR (late), finish: heavily weathered Box Contains 1x Train Model', 'm25', 'c1', '99.99'),
(8, 'Kumoyuni 74-0 Shonan Color (Model Train)', 'Japanese toys', 'm28', 'c1', '17.08'),
(9, 'Bachmann 31-588 Freightliner Class 70 005 Powerhaul Diesel Weathered', 'Suitable for the following scale(s): OO Scale', 'm3', 'c1', '96.05'),
(10, 'Preiser 30495 Horse Drawn Wedding Coach (Closed)', 'Suitable for the following scale(s): HO Scale', 'm47', 'c1', '27.55'),
(11, 'Preiser 30414 Horse Drawn Liquid Manure Wagon', 'Suitable for the following scale(s): HO Scale', 'm47', 'c1', '24.50'),
(12, 'Bachmann Class A2 60534 Irish Elegance BR Lined Green Early Emblem', 'Suitable for the following scale(s): OO Scale', 'm3', 'c1', '99.99'),
(13, '4 Player Shut The Box', 'An enormously fun four player version of Shut The Box. Now you can get the whole family involved in your favourite dice game.Beautifully presented in a Pine wood box with green felt flooring, featuring four rows of numbers with black printed numbers. A relatively simple but engrossing game, Shut The Box is usually just a single row of numbers shared amongst all players. This is a premium version of the game in an extended format that we haven\"t come across anywhere else. Includes 2 dice. Approx. dimensions: 29 x 29 x 4.5cmProduct Ref: 00H473', 'm36', 'c2', '24.63'),
(14, 'Rockets Toys Rainbow Towers', 'Product Description Match the colours to complete a tower! The first to complete a tower by matching the colours wins the game. Rainbow Towers is entertaining and educational, helping children with colour recognition and manipulation. Simply throw the correct colours on the die to build a tower using the easy-to-handle rainbow beads.Contents:24 Beads (4 each in 6 colours)4 Towers2 Colour cards1 Coloured die1 Plastic baseRules leaflet Box Contains 4 wooden towers and 24 coloured beads.', 'm48', 'c2', '4.99'),
(15, 'Memory Match', 'Product Description A memory game but with a difference! Collect the items that go together such as a bucket and spade or a sock and a shoe. An ideal way for children to improve their memory and vocabulary skills. Also teaches children items by association. A fun game which will have them learning vital skills too. Box Contains 48 cards , rules leaflet', 'm48', 'c2', '4.79'),
(16, 'Peruvian Dice Game. The original Liar\'s dice game from Peru - 6 player', 'This ancient South American game is a quick, exciting game of guesswork, bluff and luck that can be played anywhere by anybody. No board, no setting up and no complicated rules. The game is also known as Cacho, Dudo or Cachito \"The second most addictive thing to come out of South America!\" - Stephen Fry. Contains 6 dice cups, 30 dice, collection bag and full instructions.', 'm6', 'c2', '10.99'),
(17, 'Coloured Ice Cream Play Sand Set For Kids - 1 Pound (450 Gram) Colour Play Sand Box 3 Moulds - Pink Sculpting Magic Super Fun Sand Kit', 'Make your own Play Sand Ice Cream with this Superset. Use the three moulds and bags of Play Sand to make your pretend frozen treats. This stuff isn\'t like your normal sand either - it\'s super-squishy, sticks together and very easy to mould. Have a blast with Play Sand! A great playset for ages three and up,. What\'s in the box? 3x bags of Play Sand 3 x moulds', 'm52', 'c3', '10.95'),
(18, 'Motion Sand Safari Playset', 'Have endless hours of fun with this deluxe playtray playset, creating brilliant sand shapes or create your own sculptures. Motion Sand is the squeezable sand where you can FEEL the fun! Pack it, pull it, shape it and love it, Motion Sand is so incredible you can\'t put it down. It\'s kinetic - meaning it sticks to itself and not to you! It\'s easy to shape and mould and flows through your fingers like a slow-moving liquid, but leaves them completely dry. Kinetic Sand stimulates children\'s creative skills allowing them to create anything they can imagine. It never dries out and is gluten free. This soft and stretchy sand easily cleans up while delivering non-stop fun! It\'s squeezable sand you can\'t put down. The deluxe playtray playset includes Motions Sand, 10 animal moulds and play scene tray. For ages 3 years and over. Motion Sand is a registered trade mark of ProActive Distribution.', 'm40', 'c3', '6.99'),
(19, 'Disney Princess Play Sand Set for Kids - 1lb (450g) Pink Play Sand Box with Accesoires: 3 Moulds + Disney Princesses - Pink Sculpting Magic Super Fun Sand Kit', 'Ever made a bright pink castle out of sand? Give it a go with the Disney Princess Play Sand Set! The set includes three moulds and 450g of sand for making a big pink castle. Once completed, add the colourful jewels and bring it to life. The Disney Princess Play Sand Set also comes with four character stands from the hit Disney movie - Cinderella, Ariel, Belle and Rapunzel. Set them up around your newly built castle and create a royal Disney scene! A great gift for Disney fans aged three and up. What\'s in the box? 3 x moulds 4 x character stands Jewels 450g of sand', 'm52', 'c4', '14.89'),
(20, 'Lanyard With Kermit the Frog Dangle - The Muppets ID Holder', 'This bright and fun Muppets lanyard features a PVC dangle of Kermit the Frog! The Muppets lanyard includes a ID holder so you can wear it all around. Measures about 6-inches tall x 4 1/4-inches wide x 1/4-inch long.', 'm41', 'c5', '9.71'),
(21, 'Tobar 1:24 Scale Ferrari 458 Italia Kit', 'Product Description Maisto 1:24 Ferrari 458 Italia Die-Cast Kit The Maisto line of Assembly Line die-cast model kits reaches another plateau with the addition of Ferrari cars! Very few of us will ever get to own a Ferrari and even less will actually get to make one. Well with Maistos fantastic die cast assembly line you get to do both! Everything you need is supplied all in one box. No glue and paint is required and you even get a screwdriver to put this together. Highly Detailed Opening Parts Detailed Rolling Wheels Pre-Painted Metal Body Easy Assembly Screw Driver Included Bonus Custom Wheels Included 35 piece model kit to build a 1:24 scale diecast Ferrari 458 Italia. The finished model is extremely detailed inside and out, with a faithfully recreated chassis and a visible engine and detailed interior features. The pieces fit together with ease, either snapping together by hand or with a little bit of help from the screwdriver included in the kit. Diecast car model kit. Builds into a Ferrari 458 Italia. 1:24 scale model. Easy to assemble. Electrostatic paint coating. Red or yellow colours. Tampo print details. Highly detailed interior and exterior. Colour of vehicle may vary from image shown. ', 'm69', 'c7', '16.18'),
(22, 'Batman 1966 Tv Series Batboat 1:50 Scale Diecast Model', 'based on the 1966 tv series hotwheels diecast model 1.50 scale 8+', 'm26', 'c7', '35.99'),
(23, 'Disney Pixar BDW82 Cars Jessica Giampetrol & Nate Stanchion 2-Pack 1:55 Diecast Car Vehicle', 'Disney/Pixar Cars Collector Die-cast 2 Pack Collection: All kids\' favorite characters from Disney/Pixar Cars are rolling in and these two-packs double the fun! Each set includes two characters that share a key scene in the film. Kids will love reenacting favorite movie moments or imagining new adventures-\"and scene\"! Each sold separately, collect all your favorite Cars characters!', 'm38', 'c7', '7.99'),
(24, 'Ford Capri 3.0S - 1982 British Saloon Car Champion', 'Capris dominated the British Saloon Car Championship BSCC in the late 1970s but by 1981 were starting to look outdated and outclassed by the cleverly homologated TWR built Rover SD1 V8 However Vince Woodman led one last Capri hurrah during the 1982 season winning four races outright in his Neil Brown engined CC Developments prepared car and battling all year with works Rover driver Jeff Allam Woodman looked to set to steal once last championship for the Capri and led the last round of the series at Silverstone until Gordon Spice punted him over the chicane leaving Allam victorious in Class A by 3 point', 'm13', 'c7', '33.95'),
(25, 'Lucario Pokemon Pocket Monster Collection Action Figure', 'Lucario Pokemon Pocket Monster Collection Takara Tomy Action Figure!', 'm60', 'c4 ', '4.23'),
(26, 'Marvel Avengers Super Hero Mashers Spiderman Classic Figure', 'Product Description Make your own hero mash-up with this customizable Spider-Man figure!. He looks just like the web-slinging superhero. But Spider-Man would be even more powerful if he had a Captain America arm or a Hawkeye head. All his parts are removable so you can swap parts from other Super Hero Mashers figures (sold separately). Create the ultimate Avenger and customize your superhero adventures with your Spider-Man figure. Box Contains 1 x Includes figure', 'm24', 'c4 ', '15.99'),
(27, 'Star Wars Basic Figure Force Unleashed Imperial Jumptrooper', 'Star Wars Basic Figure Force Unleashed Imperial Jumptrooper', 'm24', 'c4 ', '16.52'),
(28, 'Warhammer 40,000 Eldar Farseer (1 figure, plastic, 2013)', 'The Farseer is a HQ choice for Eldar. A master of the psychic powers this HQ can sway the tide of battle with a meer thought. This multi-part plastic kit contains 10 components with which to make an Eldar Farseer armed with Singing Spear. Supplied new and sealed in box, unassembled and unpainted.', 'm20', 'c8', '11.45'),
(29, 'Nickelodeon Teenage Mutant Ninja Turtles: Mega Colouring Book', 'Join your favourite pizza-lovin\' ninja heroes as they shell out their own brand of justice in this awesome colouring adventures! Over 100 pages', 'm42', 'c5', '2.79'),
(30, 'Playmobil 5446 Unicorn Carriage with Butterfly Fairy', 'Product Description The Playmobil unicorn carriage with butterfly fairy features a unicorn pulling the two-wheeled carriage taking the butterfly fairy with staff on her travels. Box Contains 1 x Playmobil unicorn carriage1 x Butterfly fairy', 'm46', 'c5', '7.99'),
(31, 'Godzilla Revoltech SciFi Super Poseable Action Figure #004 Baragon', 'Referred to as the category of \"monster Underground\" familiar, roots this Baragon. Or place, such as the venerable monster. There the number of stars toys monster, but rarely is the \"movable monster joints move freely really\". With that said molding of \"creatures of flesh and blood\", because there was unnatural of the dividing line of the movable part, a gap of joint called ... worried about \"destiny\". However, this figure has to bear that in appreciation as the \"Real Figure\" enough. I think I see from the image, better had you play to take the hand and can feel it. Exhibitions and work of the Natural History Museum in the world, familiar with your chocolate Q Â· Dyno Tales and candy chocolate eggs, guru of animal molding, was in charge of the molding Shinobu Matsumura said. Do it become Kakkoyoku how creators of the world\'s best animal-dinosaur figurines, make a fictional monster. Instead of adding arbitrary arrangement, form of appearance is not an exaggeration to say that do not sculptor that while faithfully reproduces the monster movie, can do it to more than him ... to inject a sense of life.', 'm27', 'c5', '33.34'),
(32, 'King Horse Beautiful personalized fashion tattoo sticker tattoo sticker sexy totem waterproof', 'Our temporary tattoos are certified by F.D.A, EN71, ASTM, safe and non-toxic. It\'s high quality with fashion designs that are fake, but look real on the skin, they are 100% waterproof and can last up to 7 days. Easy on easy off, they can be removed with baby oil or rubbing alcohol. Product Dimensions : 8.07\" x 3.94\" Inches Weight : 0.18 ounces/pcs', 'm29', 'c10 ', '1.99'),
(33, 'Marvel\'s Avengers Color Tattoo Sheets [ 4 Per Package]', 'Have an Avengers super hero birthday party! Each contains 4 sheets.', 'm65', 'c10 ', '5.99'),
(34, 'Scalextric 1:32 Scale Lancia Delta S4 Slot Car', 'Product Description Scalextric C3490 1:32 Scale Lancia Delta S4 Slot Car Box Contains 1 Slot Car', 'm49', 'c11', '26.29'),
(35, 'Automoblox C9-P Sports Car (Pink)', 'Product Description A reinvention of a classic wooden toy car for the iPod age, Automoblox is a fusion of heirloom craftsmanship and contemporary styling, transformed into a mix-and-match design system that allows children to create their own unique car styles; offering opportunity for creative, developmental fun! In addition to being modern, classic toy cars, Automoblox is a high-quality building system that will delight and inspire children whilst fostering the development of important skills and learning foundations. Starting with a stylish wooden body made from German beech wood, kids add wheels, windows and unique customising details. Each car in the series has its own unique VIN number, just like a real car! All Automoblox cars can mix and match with others in the series to create your very own unique ride! Made of solid wood with real rubber tires, these cars roll like greased lightning! This pink sportscar is the full size model at 16.5cm long and 11.5cm wide; featuring venom alloy rims, low profile pink tyres, and pink visor. All cars feature a patented Automoblox connector system that enables the rapid interchange of parts; perfect for on-the-go car design. Automoblox are design-led classics that will be enjoyed by car enthusiasts, young and old! Suitable age - 3 years +', 'm34', 'c11', '26.61'),
(36, 'CARRERA 20061191 GO!!! - Cars - Porsche RS Spyder', 'Scale: 1:43', 'm7', 'c11', '22.11'),
(37, 'Hexbug Tagamoto Enforcer Road Set', 'From the creators of HEXBUG micro robotic creatures, Tagamoto motorized vehicles read and react to codes you place on the road, with sounds, movement and lights. Tagamoto motorized vehicles read and react to codes with lights, sounds and movement, making each driving experience different. Tagamoto gives kids the power to essentially engineer their own play environment, control where their vehicles go, and most importantly, how they interact within that environment a?? stopping at stop signs or toll booths, revving engines, drag racing, or pulling into a parking lot at the end of the day. Includes two collectible lights & sounds vehicles (one racer and one police car), more than 30 bar-codes, and more than 65 easy to connect pieces a?? three straight tracks, three four-way intersections, eight curve tracks, two cul-de-sacs, two three-way tee bases, two road closed pieces, eight street lights, two double overhead road signs, four single overhead street signs, six road cones, six road barrels, 12 street signs, two parking diverters, one parking lot, one stop sign, one toll booth, and two flip down diverters.', 'm59', 'c11', '39.99'),
(38, 'Pirate Salty - Thomas Take N Play', 'Sail the High Seas with Pirate Salty', 'm61', 'c11', '9.02'),
(39, 'Inflatable Pluto Disney Character Children\'s Toy', 'This is a Winnie the Pooh Disney character which inflates to a size of 50 cm. The product is a great children\'s toy with eye catching colours and graphics. Children will adore having life size characters of their favourite Disney TV, film stars and superheroes. This product is brilliant for indoor and outdoor use. - The product comes packaged with a size of 16 cm x 23 cm - All inflatable\'s have a safety valve to ensure the product does not deflate - Ideal for parties, children\'s present, decoration, party and Christmas bag filler - Suitable for children 3 +', 'm63', 'c4', '2.99'),
(40, 'LARGE FUN INFLATABLE LARGE GUITAR BLOW UP FANCY DRESS PARTY MUSICAL INSTRUMENT (Gold)', 'Colour Name:Gold GREAT WAY TO LIVEN UP A PARTY 81cm - 106cm LONG CHOOSE YOUR COLOUR BRILLIANT FOR ANY CELEBRATION HOLIDAYS CHRISTMAS BIRTHDAY PARTIES', 'm23', 'c12', '1.78'),
(41, 'Oxford Diecast Land Rover Freelander Mauritius Blue 76FRE003', 'The 2013 specification of the Land Rover Freelander 2 SD4 HSE, a high performance two or four wheel drive car from Land Rover .This two door Freelander is in an appealing Firenze Red , the model comes with a black chassis, silver wheels, matt black interior and seating and matt black steering wheel. Registered XXXXX, the Freelander 2 SD4 HSE lettering is masked silver across the back, as well as the Land Rover badge, while the front features the Land Rover lettering across the front of the bonnet above the detailed radiator grille. Shown here in Mauritius Blue.', 'm43', 'c7', '6.79'),
(42, 'Tobar 1:32 Scale \"Ferrari Race and Play F10 Wrist Racers\" Car', 'Product Description Bburago Ferrari Race and Play F10 IR Wrist Racer Take the wheel of a powerful Ferrari sports car with this unique \"Wrist Racer\". The wrist unit straps around much like a watch and the car is controlled by an authentic, mini Ferrari steering wheel. Box Contains 1 x m69 B18-41211 1:32 Ferrari Race & Play F10 Wrist Racers', 'm69', 'c7', '19.50'),
(43, 'Universal Hobbies Fahr D180H 1:16', 'Fahr D180H 1:16', 'm75', 'c7', '35.42'),
(44, 'Oxford Diecast Austin FX4 Black Taxi 76FX4001', 'Over 75,000 FX4\'s were manufactured since it was released in 1958 and production ran for nearly 40 years. The Austin FX4 became a very familiar sight on the streets of London.', 'm43', 'c7', '6.25'),
(45, 'Bburago 1:18 Scale Plus Porsche GTS RS 4.0 Model Car (White)', 'Highly detailed model of the Porsche 911 GT3 RS 4.0 in 1:18 scale. The doors, boot and bonnet all open, revealing a stunning amount of detail of the interior and exterior of this beautiful diecast sports car reproduction. The GT3 RS 4.0 is the final evolution of the 997 series and features a 4.0 litre engine capable of 365 bhp. Suitable for age 3+. Perfect for model collectors and Porsche fans.', 'm4', 'c7', '26.65'),
(46, 'classix morris minor 4 door saloon beige car 1.76 scale diecast model', 'Classix by Pocketbond - Morris Minor 4 Door Saloon in Beige 1:76 Scale - Suitable for OO Gauge Model Railways. CLASSIX - Detailed and faithful diecast scale models with plastic parts intended for collectors of 14 years and above. PLEASE NOTE THAT THIS ITEM IS NOT INTENDED TO BE A TOY, THIS ITEM IS FOR COLLECTORS. MINIMUM AGE RECOMMENDED 14.', 'm11', 'c7', '4.99'),
(47, 'Alfa Romeo P3, No.2, 1935, Model Car, Ready-made, Rio 1:43', 'Our car models are in scale and true to the original models for adult collectors, not toys for children!', 'm1', 'c7', '57.29'),
(48, 'Ultra Pro DECKBOX POK Pokemon C60 Card Game (Red and White)', 'Product Description DECKBOX POK Red and White Pokemon C60 Box Contains 1x DECKBOX POK Red and White Pokemon C60', 'm74', 'c2', '5.29'),
(49, 'Mattel Skip Bo', 'Skip-Bo a game where each player is dealt a stockpile of cards and then attempts to win by playing all these cards on building piles in numerical sequence 1 through 12, Includes: 144 number cards and 18 Skip-Bo Jokers. For 2 - 6 Spieler.Ab 7 Jahren.', 'm38 ', 'c2', '10.50'),
(50, 'Sentinels of The Multiverse Silver Gulch Card Game', 'Product Description Sentinels of the Multiverse Silver Gulch Box Contains 1x Sentinels of the Multiverse Silver Gulch', 'm22', 'c2', '7.32'),
(51, 'Top Trumps James Bond Card Game', 'Style Name:James-Bond Product Description The names Bond, James Bond. This pack needs no introduction, its simply the Best of Bond. Villains, Henchman all the Bonds and a few glamorous women thrown in for good measure, it\'s the greatest adventure ever, so pay attention 007. Suitable for ages 3 years + Safety Information: Warning. Not suitable for Children under 3 years. Manufacturer\'s Description The names Bond, James Bond. This pack needs no introduction, its simply the Best of Bond. Villains, Henchman all the Bonds and a few glamorous women thrown in for good measure, its the greatest adventure ever, so pay attention 007. See all Product Description', 'm79', 'c13', '3.93'),
(52, 'Pairs on Wheels - Family Fun Playing Cards', 'Product Description Woodand toys offer this Pairs on Wheels Card Game. The game is played with 40 cards: there are 20 identical pairs. The game can be played by 2 or more players. Can also be used for the card game \'Snap\'. From 4 yrs. 2 or more players. Cars piuctures include Fire Engine, Bus, Train, Motorbike, Tractor, Lorry, Digger, Truck, Van, etc. Manufacturer\'s Description Woodandtoys offer this Pairs on Wheels Card Game. The game is played with 40 cards: there are 20 identical pairs. The game can be played by 2 or more players. Can also be used for the card game \'Snap\'. From 4 yrs. 2 or more players. Cars piuctures include Fire Engine, Bus, Train, Motorbike, Tractor, Lorry, Digger, Truck, Van, etc.', 'm69', 'c2', '1.95'),
(53, 'Uno H20 Waterproof Clear Cards', 'Product Description One of America\'s favorite family games is now waterproof! UNO H20 features all new clear, plastic cards and a portable, waterproof carrying case. The special \"downpour rule\" rains cards on all the players. Manufacturer\'s Description UNO - H20 Edition features clear plastic waterproof playing cards that will keep you playing for years to come! This special edition of America\'s #1 card game includes the special Downpour Card and rule for unique game play. Be the first player to score 500 points and you are the winner!', 'm38', 'c2', '11.11'),
(54, 'Cheatwelll Games Chattabox', 'Product Description This quick-witted word game is a riot of fun! It\'s a helter-skelter race in which you must get rid of your cards by calling out answers to teasing topics. Once the topic has been announced you\'ll have to think quickly, calling examples that start with the letters on your cards Try not to panic and do your best to keep the momentum going whilst playing out the cards in your hand - but don\'t delay - pause too long or fail to play your cards and you\'ll pick up a penalty!', 'm10', 'c2', '6.70'),
(55, 'Monopoly Deal Card Game (US Version)', 'Get a handy way to play the classic property-trading game! be the first collect 3 full property sets of different colors, and you\'ll win the monopoly deal card game. You\'ll pick up cards when it\'s your turn and play action cards to charge players rent, steal their cards or demand money for your birthday. Build up property sets, gather piles of money and keep wheeling and dealing until you\'re the monopoly deal winner! monopoly and all related characters are trademarks of Hasbro.', 'm24', 'c4 ', '4.75'),
(56, 'Top Trumps Cats', 'They come in all sizes and tempers but we dearly love our mysterious feline friends. Discover the most famous varieties of cats and see how the fiercest compares to the cuddliest and most mischievous. A furry deck full of surprising cat facts; find out all about your favourite kittens in this special Top Trumps pack! Suitable for ages 3 years + Safety Information: Warning. Not suitable for Children under 3 years.', 'm70', 'c2', '3.20'),
(57, 'Top Deck - Very High Quality Playing Cards - Linen Finish - Varnished', 'This is a high quality set of traditional playing cards with the standard 52 cards plus 2 Jokers. The cards come in a choice of blue or red and have a linen finish and a varnished surface for extra durability. A quality deck of cards for all those fun family games - Top Trumps , snap etc and those who take their poker and bridge nights a little more seriously. This deck of cards is suitable for the following games:- Stud Poker,Stud Horse Poker,Oxford Stud, High Chicago,Low,Chicago,FollowQueentheQueen,Countdown, Billabong,Shanghai,Guts,FiveO,Chinese,Kuhn,Draw, Community card.', 'm45', 'c2', '3.99'),
(58, 'Mini Top Trumps - England Football Stars', 'Celebrate England\'s past and present with this Mini edition of England Stars Top Trumps! Featuring stars from the current squad like Sturridge and Lampard alongside heroes from England\'s illustrious past such as David Beckham or Gary Lineker, this Top Trumps pack is an absolute must for all England fans!', 'm70', 'c2', '1.99'),
(59, 'YuGiOh : DUEA-EN000 1st Ed Dragon Horn Hunter Super Rare Card - ( Duelist Alliance Yu-Gi-Oh! Single Card )', 'All Deckboosters single cards are brand new in mint condition taken straight from the pack and are supplied in a professional storage/presentation case providing an ideal gift for both the Yu-G-Oh! player and collector.', 'm15', 'c2', '5.95'),
(60, 'Redakai - Conquer The Kairu - X-Reader Starter Pack', 'Redakai - Conquer The Kairu - X-Reader Starter Pack', 'm56', 'c2', '9.95'),
(61, 'Lion Games & Gifts Europe 11.5 g Ultimate Value 1000 Chip (Yellow)', 'Colour Name:yellow Â |Â  Style Name:Value 1000 Product Description Lion Games & Gifts Europe offers the ultimate ABS chip suitable for card and casino games. Box Contains 25 x Chips', 'm33', 'c2', '1.46'),
(62, 'Tripack of Happy Families Childrens Playing Cards from Disney Pixar Cars 2 Toy Story', 'Tripack of Disney favourites including Buzz Lightyear, Woody, Bugs Life, The Invincibles and many more. 3 decks of Happy families from Cars 2, Toy Story & Pixar', 'm8', 'c4', '8.99'),
(63, 'Piatnik plastic playing cards - double deck', 'Product Description Traditional design playing cards Geometric back design, four indices Double pack of 52 cards and two jokers, plastic case Standard bridge size 89mm x 58mm 100% plastic playing cards - washable and long lasting. Ideal for regular use Manufacturer\'s Description 100% plastic playing cards - washable and long lasting. Ideal for regular use See all Product Description', 'm21', 'c2', '16.99'),
(64, 'Yu-Gi-Oh Crossed Souls Booster Display Card Game (Pack of 24)', 'Product Description Crossed Souls unlocks new Deck-building opportunities like never before for the Yu-Gi-Oh! TRADING CARD GAME. This 100-card set introduces the Zefra monsters, a new monster omni-theme that crosses over five different Deck types!Each Zefra monster is tied in to a popular monster group from recent sets, making them either Zefra/Shaddoll, Zefra/\'tellarknight, Zefra/Yang Zing, Zefra/Nekroz, or Zefra/Ritual Beast. Duelists with any of these Decks can add their new Zefra monsters to spice the Deck up, OR build a Deck entirely of Zefra monsters, tying all five together!While their cross-theme potential and monster effects vary, all Zefra monsters can take advantage of the new, powerful Zefra Spell & Trap Cards in Crossed Souls, magnifying the power boost that Zefra monsters give to any Deck that includes them. At the same time, a pure Zefra Deck (or a Deck with appropriate Zefra splash) can now gain increased access to Shaddoll, \'tellarknight, Yang Zing, Nekroz, and Ritual Beast cards!Zefra monsters open up unprecedented crossover Deck-building avenues, but Crossed Souls also arms Duelists with new non-Zefra cards for their Burning Abyss, Madolche, Infernoid, U.A., Yosenju, and other Decks.Fans of the Yu-Gi-Oh! anime and TV series will also be treated to a slew of new cards from the newest generation of the series - Yu-Gi-Oh! ARC-V. Box Contains 24 x Booster Packs', 'm80', 'c2', '49.93'),
(65, 'Comic Maker Minnie Mouse Magazine Maker', 'Product Description This fantastic kit has everything you need to make your own fun and lively magazine featuring the beautiful and much-loved Minnie Mouse. Think up stories, adventures and antics for Minnie and her friends, then bring them to life in glorious colour! There are lots of great stickers of Minnie in cute poses and outfits; speech and thought bubbles for your words and cool graphics to add real design style! Then, for more prettiness and sparkle use the glitter pens and the ribbon to bind your magazine altogether, ready to share with your friendsâ‚¬Â¦ and Minnie! Contains 1 Minnie Mouse magazine cover, 12 Minnie Mouse magazine sheets, 12 sticker sheets, 2 glitter pens, 1 fine line black pen, 2 stampers, 1 ink pad, 1 ribbon and an instructions and ideas sheet. For ages 7+ Box Contains Contains 1 Minnie Mouse magazine cover, 12 Minnie Mouse magazine sheets, 12 sticker sheets, 2 glitter pens, 1 fine line black pen, 2 stampers, 1 ink pad, 1 ribbon and an instructions and ideas sheet', 'm12', 'c3', '10.98'),
(66, 'Arcane Wonders \"Sheriff of Nottingham\" Board Game', 'Product Description Sheriff of Nottingham Box Contains 1x Sheriff of Nottingham', 'm2', 'c2', '23.81'),
(67, 'Top Trumps - Smash Hits Pop Stars', 'Top Trumps cards', 'm79', 'c2', '6.94'),
(68, 'Top Cards Disney Frozen Whot!', 'The classic card game Whot! gets a Frozen makeover! In Whot! Players have to match the shapes or numbers to get rid of their cards. Play with up to six people for fast-paced fun. Be prepared though it\'s going to get hectic! This special edition features brilliant designs and characters from the hit Disney film. A great card game for ages eight and up.', 'm70', 'c4', '7.20'),
(69, 'm51 Silk Painting: Cardmaking Kit - Makes 5 Lovely Cards- Animal', 'Sc Â silk painting: cardmaking kit - makes 5 lovely cards Â  Â silk painting kitanimal packcontains 5 printed silk outlines, 5 cards, 5 envelopes, 5 x10ml bottles of silkpaint, pallet and bruhe designs in this pack are dolphins, fish, bears, butterflies and catssee my ebay shop for other kitsplease pay for your goods within 2 days of the finish of the auctiPayment can be by paypal, cheque or postal ordlease look at my other items as i give shipping discounGoods are usually shipped within 24 hours of the payment being receivf goods are faulty or damaged i will send a replacement or refundm51 ltd is a small family business specialising in silk and silk painting supplies', 'm51', 'c3', '15.99'),
(70, 'Top Trumps Penguins', 'Penguins are joining the Top Trumps range, and that\'s cool because under their cuddly and clumsy appearance, Penguins are actually amazingly strong animals with astonishing abilities! Learn all about your favourite birds and discover how they\'re loosely related to Puffins, Auks and Guillemots. ...But are they? Snow way! Suitable for ages 3 years + Safety Information: Warning. Not suitable for Children under 3 years.', 'm70', 'c2', '3.94'),
(71, 'Top Trumps: MULTIPLE SELECTION CHOOSE YOUR FAVOURITE TRUMP (MONSTERS UNIVERSITY)', 'Colour Name:MONSTERS UNIVERSITY Top Trumps was the undisputed winner of the Loaded World Cup of Games and we can\'t argue with that. For grown-up males of a certain age, Top Trumps were the playground game of choice. Now they\'re making a grand comeback with all-new subjects, still using the \'one-upmanship\' method of play. Choose a statistic on your top card which you think will beat those on other top cards - simple, and very addictive. There are lots of different flavours to choose from, across three different ranges covering the World of Top Trumps.', 'm35', 'c2', '3.75'),
(72, 'Disney Rummy Tiles', 'Product Description Play with Buzz, Woody, Lightning McQueen, Remy, Nemo and all their friends! Disney Rummy contains two ways to play! The \"Discovery\" game helps children learn the basics whilst the \"Family\" game gives you all the fun of classic rummy! Make a run of numbers of the same colour, or a set of the same number but different colours! Watch out: when it\'s your turn, if you cannot place a tile you\'ll have to take another one out of the bag! First to get rid of all their tiles is the winner! Box Contains 52 Tiles 4 Tile-Holders 1 Set of Rules', 'm16', 'c4', '14.49'),
(73, 'Disney Apples to Apples Card Game', 'Disney Apples to Apples - The Game of Goofy Comparisons. Now the whole family can experience the award-winning fun of APPLES to APPLES as they never have before, with the magic of Disney and some wonderful new twists. For the first time, Red Apple cards come to life with pictures from Disney theme parks, movies and Disney Channel shows. The special card holder makes it easy to pass Green Apple cards around the table. Just Comes complete with 360 cards and a card holder. For 4 to 8 players.', 'm38', 'c4', '19.99'),
(74, 'Star Wars original trilogy playing cards (1 sealed pack)', 'Star Wars original trilogy playing cards (1 sealed pack)', 'm8', 'c4 ', '5.68'),
(75, 'Hasbro Card Game - Cranium Cards', 'The card game that gives everyone a chance to shine! Get ready to act, draw, describe and spell backwards in this exciting laugh-out-loud card game where you supply the answers. You never know what you`ll do next with Cranium Cards!', 'm24', 'c4 ', '12.99'),
(76, 'Star Realms: FLIP Box, Includes MERCENARY GARRISON Promo Card -Holds an entire Set!', 'The Star Realms Flip Box is a double deck box with promo card, Mercenary Garrison.', 'm31', 'c2', '11.99'),
(77, 'JUMBO PACK KIDS SNAP CARDS 13CM X 9CM APPROX 36 GREAT CARDS', 'Tallon Games Children\'s Jumbo Picture Snap Cards 36 Cards Suitable for 3 years + Great fun for all the family 12.5cm x 8.5cm approx', 'm62', 'c2', '1.86'),
(78, 'Legendary Villains: Fear Itself', 'Please note this game is an expansion pack only and requires the original Marvel Legendary Deck Building Game in order to play. Play through the Fear itself storyline within Legendary! First small box expansion to the highly successful Legendary Villains A Marvel Deck Building Card Game! 6 new Allies! 1 new Adversary group! 1 new Commander! 3 new Plots! Players can work both with and against other players to defeat The Mighty while laying waste to planet Earth! The game will feature six playable characters from the Worthy; Kuurth, Mul, Skirn, Nerkkod, Greithoth and Skadi! Use The Worthy to defeat Iron Man in his Uru Enchanted Armour as he leads the forces of The Mighty to defend Earth! Comes with 100 playable cards and features original art!', 'm76', 'c2', '16.08'),
(79, 'Disney Frozen 2-In-1 Happy Families & Action Game Playing Cards', 'Frozen 2 In 1 Happy Families Playing Cards - Disney - Cartamundi. Great Pack Of Cards To Play With Your Friends And Family. 2 In 1. Detailed Rules Are Included Within The Pack. Style And Colour May Vary. Ages 3+', 'm8', 'c4', '2.85'),
(80, 'Trefl Disney Planes Playing Cards', 'Product Description Iif you are a fan of Disney Planes, then this will be the perfect pack of cards for you. This is a great pack of 55 playing cards featuring Disney Planes. Learn a variety of different games to play with your family and friends. This pack of card would make a great children\'s gift. Box Contains 1 x Pack of 55 cards', 'm73', 'c4', '1.73'),
(81, 'Pictionary Card Game', 'Product Description The addictive fun of the original Pictionary - no drawing required! The deck comes with simple images on picture cards. Combine cards or use them as props as you race to act out answers. Earn five points and your team is a picture-perfect winner! The best of both Pictionary and charades in one laugh-out-loud game Use pictures from the deck to act out clues Perfect party game, at home or on the road Two teams make for fast-moving fun Box Contains 1 x 1 x pictionary card game', 'm44', 'c2', '6.99'),
(82, 'Frozen Top Trumps Card Game', 'Style Name:Frozen Top Trumps Product Description Who is the most magical character in Frozen? Find out with this classic Top Trumps card game that features all your favourite characters from Disney Frozen! Box Contains 30 x cards; 1 x instruction card; 1 x promo card.', 'm17', 'c4', '2.70'),
(83, 'Star Cutouts Cut Out of Stormtrooper', 'Product Description The Cardboard Cut out of Stormtrooper measures 183cm tall and is sure to add wow factor to any home, office, event or party! Great for collectors and gifts. All cut outs are designed to be free standing and are erected within seconds. All life size standees fold down for easy storage and delivery. Box Contains Life sized cut-out of Stormtrooper', 'm57', 'c5', '29.99'),
(84, '4 Dragon Plastic Toys', 'Set of 4 Dragon Plastic Toys Each dragon toy measures between 17cm to 20cm long depending on the design. 4 different designs - exclusive to Blue Frog Toys Ltd. CE approved an suitable for ages 3 years +', 'm5', 'c5', '4.99'),
(85, 'Star Wars - POTF - Holo Card - Emperor\'s Royal Guard - with Force Pike', 'Star Wars - POTF - Holo Card - Emperor\'s Royal Guard - with Force Pike', 'm58', 'c4 ', '16.99'),
(86, 'Star Wars The Black Series Action Figure - Anakin Skywalker #03', '* Figure stands approximately 3.75\" tall * Detailed figure equipped with lightsaber * Officially licensed * Brand new', 'm58', 'c4 ', '13.41'),
(87, 'Snoopy and Woodstock figure - Snowsled Snoopy and Woodstock vintage item by Schleich', 'This is a fantastic Snoopy figure made by Schleich. It is a vintage collectable item and is roughly 6cm tall.', 'm54', 'c5', '4.99'),
(88, 'Batman Arkham City Mr. Hammer & Harley Quinn Action Figure 2 Pack', 'Batman Arkham City Mr. Hammer & Harley Quinn Action Figure 2 Pack', 'm14', 'c5', '33.99'),
(89, 'Star Wars Movie Heroes Yoda', 'This fierce Yoda figure is rendered in careful detail to look just like the characters in the Star Wars: Revenge of the Sith movie! He comes with weapons for all the Star Wars adventures you can come up with, and a battle base so that he can look awesome in your collection. Re-enact your favorite Star Wars battles or create brand new ones with this cool YODA figure! Figure comes with weapon accessories, Galactic Battle Game card, battle base and die.', 'm58', 'c4 ', '12.95'),
(90, 'Trefl Movie Revenge Of The Fallen Exclusive Bruticus Maximus Combaticons', 'Trefl Revenge of the Fallen Combiner: Bruticus Maximus', 'm72', 'c4 ', '99.99'),
(91, 'Moshi Monsters Series 7 Moshling - ROARY SCRAWL', 'Moshi Monsters Series 7 Moshling. Brand New.', 'm39', 'c5', '2.95'),
(92, 'Star Wars: Wicket', 'Product Description Star WarsÂ is an AmericanÂ epicÂ space operaÂ franchise centered on aÂ film seriesÂ created byÂ George Lucas. The franchise depicts a galaxy described as \"far, far away\" in the distant past, and portraysÂ JediÂ as a representation of good, in conflict with theÂ Sith, their evil counterpart. Their weapon of choice, theÂ lightsaber, is commonly recognized in popular culture. The franchise\'s storylines contain many themes, with influences fromÂ philosophy and religion. Box Contains POP! Bobble: Star Wars: Wicket', 'm58', 'c4 ', '11.98'),
(93, 'Moshi Monsters Series 4 - Scarlet O\'Haira #The Puppet Company Moshling Figure', 'Moshi Monsters Series 4 - Scarlet O\'Haira #The Puppet Company Moshling Figure', 'm78', 'c5', '1.85'),
(94, 'Star Wars general grievous bobble head', 'Star Wars, General Grievous, bobble head, figure', 'm18', 'c4 ', '11.58'),
(95, 'Star Wars: R2-D2', 'Product Description Star Wars is an American epic space opera franchise centered on a film series created by George Lucas. The film series, consisting of two trilogies, has spawned an extensive media franchise called the Expanded Universe including books, television series, computer and video games, and comic books. These supplements to the franchise resulted in significant development of the series \'fictional universe, keeping the franchise active in the 16-year interim between the two film trilogies. The franchise depicts a galaxy described as far, far away in the distant past, and it commonly portrays Jedi as a representation of good, in conflict with the Sith, their evil counterpart. Their weapon of choice, the lightsaber, is commonly recognized in popular culture. The franchise\'s storylines contain many themes, with strong influences from philosophy and religion. Box Contains 1 x Star Wars R2-D2 Pop! Vinyl Bobble Head', 'm58', 'c4 ', '7.99'),
(96, 'LEGO Teenage Mutant Ninja Turtles 79100: Kraang Lab Escape', 'Product Description Give the villains the slip with a hot slice of turtle power. The Kraang has Michelangelo locked tight in a laser-shield prison inside his lab. Use Michelangelo\'s leftover pizza to turn a sticky situation into a slick escape. Slide the pizza through the prison bars to make the Foot Soldier slip and fall. Then activate the explosion function on Michelangelo\'s cage to escape. Once he\'s free, battle The Kraang in his awesome mech walker with dual laser flick missiles. Be ready for a wild ride through the city sewers when The Kraang detaches the mech walker\'s legs to create a flying escape pod. Don\'t let him get away. Box Contains 1 x prison1 x mech walker1 x Michelangelo minifigure1 x Foot Soldier minifigure1 x The Kraang4 x weapons', 'm32', 'c5', '40.99'),
(97, 'Star Wars 30th Anniversary Collection #19 - Jawa & LIN Droid', 'Bands of Jawas scavenge Tatooine for discarded droids and machinery to repair and resell.', 'm24', 'c4 ', '31.20'),
(98, 'The Amazing Spider-Man WEB BATTLERS Green Goblin figure', 'Spider man is the web-slinging hero you\'ve always admired, but it\'s not a Spider man adventure without a nemesis: Green Goblin. This Bashin\' Bomb GREEN GOBLIN figure looks just like the web-slinging crime-fighter\'s archenemy, but he has something your Spider man figure (sold separately) may not be ready for: his bomb. When you squeeze his legs, he unleashes a smashing bomb attack.', 'm55', 'c4 ', '7.99'),
(99, 'Schleich Dragon Knight with Sword', 'Product Description The dragon knights, with the dragon rider as their leader and their armour reminding us of dragon skin, are a new and highly attractive group of knights destined for boys. Box Contains 1 x Schleich Dragon knight with sword', 'm50', 'c5', '5.99'),
(100, 'Star Wars Galactic Heroes Commando Droid and Count Dooku', 'The skys the limit for battle excitement with these two stylized figures! Based on characters from the out-of-this-world saga, your chunky Count Dooku and Commando Droid figures are ready to light up the skies with their lightsaber and blaster. These two are ready for action in their battle poses ?and just raring to fight for the fate of the universe!', 'm58', 'c4 ', '14.75'),
(101, 'Teenage Mutant Ninja Turtles Movie Action Figure Foot Soldier', 'Product Description New York City crime rates are on the rise and innocent civilians tremble in fear. But there\'s a force fighting back, vigilantes among us ready to protect the city. Are they the heroes we expect them to be? And are they powerful enough to take down the masked warrior everyone fears...the Shredder? This figure is the scariest and most detailed ever, with multiple points of articulation. This version of Shredder replicates exactly the character in the movie. This version of Foot Soldier comes with padded knees, a belt and a gun case, as well as all his characteristic weapons. Suitable for ages 4 and above. Box Contains Contents: Foot Soldier figure, a gun case, weapons.', 'm64', 'c5', '17.99'),
(102, 'Marvel Avengers Iron Man Flip Up Gauntlet', 'Product Description Gear up just like your favorite armored Avenger with the Flip & Fire Gauntlet toy. This gauntlet attaches to your wrist so you can break out the heavy artillery with a flick of your wrist, just like Iron Man does. The gauntlet\'s dual rocket launchers fire darts up to 25 feet so the foes of justice can\'t get out of range. Tighten the strap on your arm for a stable shot, then head out for a fierce firefight with all of your Iron Man enemies To avoid injury: use only darts designed for this product. Do not modify darts or bow Box Contains Includes gauntlet and 2 darts', 'm35', 'c4 ', '11.11'),
(103, 'Marvel Super Hero Mashers - Hulk Figure', 'Now you can make m66 even more Incredible thanks to Marvel\'s Super Hero Mashers! This fully customisable figure has removable parts which you can swap in and out with other Super Hero Mashers (sold separately). Mix \'n match them up for insane combinations and totally unique characters! Hulk looks great on his own but wouldn\'t he look even more powerful with Thor\'s head and mighty hammer? With Superhero Mashers you can be as creative as you like! The green giant also comes with Smash Missile Launcher for even more fun. Kids aged four and up will love this 18cm tall figure.', 'm66', 'c4 ', '12.99'),
(104, 'Star Wars Talking Stormtrooper Figure With 22 Phrases', 'The Empire\'s forces have tracked you down! This Star Wars Talking Stormtrooper figure is fully articulated, boasts a flashing blaster pistol with sound effects and features an abundance of film phrases. Age 3+', 'm58', 'c4 ', '35.99'),
(105, 'Doctor Who 5\" Action Figure - Slitheen and the Space Pig', 'Doctor who twin figure pack,very rare and long out of production', 'm9', 'c5', '21.99'),
(106, 'Teenage Mutant Ninja Turtles Sewer Gas Station T-Machines Play Set', 'Product Description Leo, Donnie, Raph and Mikey are mutant turtles who have been trained in the art of ninjutsu by their rat sensei, Master Splinter. Emerging from their sewer lair, the reptile brothers confront the world of New York City, facing villains more dangerous and pizza more delicious than anything they could have imagined! Help the turtles battle with Shredder, the Kraang and loads of super-powerful mutants, and learn your Ninja skills today! Turtle Power! Shredder and the Kraang are developing weapons that allow them to quickly take over the streets of NYC! They\'ve developed a series of hi-tech vehicles that travel the streets, sewers and even buildings at super speeds with awesome battling capabilities. But Donnie\'s been in his garage 24/7 and has salvaged every useable piece of metal found in the sewers and on the surface. He\'s now ready to unleash his top secret project known as T-Machines so the Turtles can get to the scene fast and battle-ready. He\'s even developed the T-Machines to look and function based on the personalities and fighting skills of his brothers and cohorts. Now you can explore the Turtles world with the T-Machines Sewer Gas Station playset! This playset has 2 levels of play, the rooftop and the gas station. When you\'re at the station level, fill up with fuel and visit the garage to get a tune up, then take the rooftop lift to the 2nd level of your adventure. Use the rooftop runway and ramp to fire your T-Machines into action, tear up the roof top and crash through the Kraang battle billboard. When your done use the hidden escape ramp for a quick getaway! Playset also includes an exclusive Mikey T-Rawket vehicle. Compatible with all T-Machines vehicles. Suitable for ages 3 and above. Contents: 1 Sewer Gas Station playset, 1 Mikey T-Rawket vehicle. Box Contains 1 x Sewer Gas Station Play Set 1 x Mikey T-Rawket vehicle.', 'm64', 'c5', '18.46'),
(107, 'Star Wars - POTJ - incl. Jedi Force File - Sabe (Queen\'s Decoy) - with Pistol', 'Star Wars Power of the Jedi Sabe Queen\'s Decoy', 'm58', 'c4 ', '10.00'),
(108, 'Star Wars: Chewbacca', 'Product Description Star WarsÂ is an AmericanÂ epicÂ space operafranchise centered on aÂ film seriesÂ created by George Lucas. The franchise depicts a galaxy described as \"far, far away\" in the distant past, and portraysÂ JediÂ as a representation of good, in conflict with theÂ Sith, their evil counterpart. Their weapon of choice, theÂ lightsaber, is commonly recognized in popular culture. The franchise\'s storylines contain many themes, with influences fromÂ philosophy and religion. Box Contains Wacky Wobbler: Star Wars: Chewbacca', 'm58', 'c4 ', '12.98'),
(109, 'Disney Frozen Sing A Long Elsa Doll', 'It\'s fun to sing Frozen\'s Let it Go but it\'s even better when you\'ve got Elsa by your side! The little Disney Princess knows all the words to the famous song and will happily sing the whole lot to you. Just press her brooch and Â put the microphone to her lips to hear her beautiful voice. However, you can join in at any time! Take the mic away and Elsa will give you the stage to sing Let it Go. Then switch it back to the famous Frozen princess and she will continue where you left off. With both of you belting out the Frozen classic, any listeners are bound to get goose bumps! Sing Along Elsa is ideal for little crooners aged three and up. Please note: RequiresÂ Â 3 x AAA batteries (included) plus 2 x AAA batteries (included).', 'm16', 'c4', '45.96'),
(110, 'Star Wars 7\" Unleashed AOTC Darth Tyranus', 'Star Wars 7\" Unleashed AOTC Darth Tyranus', 'm24', 'c4 ', '67.22'),
(111, 'Schleich Clumsy Smurf Figure', 'Product Description Suitable from 3 Years + Safety Information: Warning. Not suitable for Children under 3 years. Box Contains 1 Figure', 'm50', 'c5', '3.99');
INSERT INTO `ntl_toys` (`toyID`, `toyName`, `description`, `manID`, `catID`, `toyPrice`) VALUES
(112, 'Thomas & Friends Take-n-Play Gator Engine', 'Product Description Thomas & Friends Take-n-Play Gator is a durable die-cast engine. Perfect for Take-n-Play Portable Fold-Out Playsets (sold separately and subject to availability). Ages 3+ Box Contains Take-n-Play Gator', 'm68', 'c7', '4.99'),
(113, 'Wooden Train Set & Railway Freight Depot', 'Product Description 140 pieces incl. signal box. Invaluable accessory for all railway fans for extending our railway systems. New options lead to a higher demand for our bestseller train sets! Box Contains 1 x Small Foot company 1934', 'm53', 'c7', '77.44'),
(114, 'Wooden Thomas & Friends: Edward the Blue Engine', 'Product Description Edward is an older blue engine and is exteremely kind to everyone he comes across; even those who are rude and impatient. This Edward engine has been made from real wood and comes with a coal tender carriage. The carriage, and other Thomas Wooden Railway engines, can be connected together using a strong magnetic coupling system found on the front and back of the engines. This Edward engine has a printed name on the chassis and includes a character card which outlines Edward\'s personality and role within Sodor. The Thomas & Friends Wooden Railway - Edward the Blue Engine is a great way to encourage roleplay. Edward the Blue Engine is an older engine. Kind and patient with Thomas and the other younger engines, Edward is a Really Useful Engine. This Edward is made out of real wood and arrives complete with his own coal truck. He has a three-dimensional face and is linked to his own coal truck with a very strong magnetic coupling. Over the years (and these Thomas trains will have years of play value) these solid wooden trains will prove to be a great investment as they stand the test of time. Edward will work happily on the Thomas & Friends Wooden Railway Sets and all other major brand wooden train sets. Suitable for children aged 2 to 6 years --Victoria Mackenzie', 'm30', 'c4 ', '9.99'),
(115, 'The Puppet Company - Finger Puppets - Dog', 'Great Finger Puppet from The Puppet Company\'s huge collection of over 150 finger puppets!', 'm67', 'c14', '3.50'),
(116, 'Trademark Collections Disney Princess Sleeping Beauty Aurora Handbag', 'Product Description A lovely heart shaped handbag. Zipped making it easy for little hands to add or remove items. Useful size for a child to carry when shopping. Pink with character picture on the front . Trade Mark Collections Ltd are the leading supplier to UK retailers of licensed children\'s and student bags,umbrellas and related accessories. Box Contains 1 x Handbag', 'm71', 'c15', '4.99'),
(117, 'Trademark Collections DPRIN004036 Disney Princess Purse', 'Product Description An ideal first purse for your little one, Pink in design and Illistrated with three Disney princesses, Zip fastening pocket and popper fold out section for cards etc. Trade Mark Collections Ltd are the leading supplier to UK retailers of licensed children\'s and student bags,umbrellas and related accessories. Box Contains 1 x purse', 'm16', 'c15', '5.95');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ntl_category`
--
ALTER TABLE `ntl_category`
  ADD PRIMARY KEY (`catID`);

--
-- Indexes for table `ntl_manufacturer`
--
ALTER TABLE `ntl_manufacturer`
  ADD PRIMARY KEY (`manID`);

--
-- Indexes for table `ntl_toys`
--
ALTER TABLE `ntl_toys`
  ADD PRIMARY KEY (`toyID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ntl_toys`
--
ALTER TABLE `ntl_toys`
  MODIFY `toyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;
--
-- Database: `osurvey`
--
CREATE DATABASE IF NOT EXISTS `osurvey` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `osurvey`;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmployeeID` int(225) NOT NULL,
  `EmployeeName` varchar(60) NOT NULL,
  `EmployeeAddress` varchar(100) NOT NULL,
  `EmployeeContact` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE `employer` (
  `EmployerID` int(225) NOT NULL,
  `EmployerName` varchar(60) NOT NULL,
  `EmployerAddress` varchar(100) NOT NULL,
  `Contact` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `ResultID` int(225) NOT NULL,
  `EmployeeID` int(225) NOT NULL,
  `Result` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `survey`
--

CREATE TABLE `survey` (
  `SurveyID` int(225) NOT NULL,
  `SurveyQuestion` varchar(200) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`EmployerID`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`ResultID`),
  ADD UNIQUE KEY `EmployeeID` (`EmployeeID`);

--
-- Indexes for table `survey`
--
ALTER TABLE `survey`
  ADD PRIMARY KEY (`SurveyID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EmployeeID` int(225) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employer`
--
ALTER TABLE `employer`
  MODIFY `EmployerID` int(225) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `ResultID` int(225) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `survey`
--
ALTER TABLE `survey`
  MODIFY `SurveyID` int(225) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `result_ibfk_1` FOREIGN KEY (`ResultID`) REFERENCES `employer` (`EmployerID`);
--
-- Database: `parking`
--
CREATE DATABASE IF NOT EXISTS `parking` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `parking`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_ID` int(5) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_ID`, `Name`, `Password`) VALUES
(1, 'Admin', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `driver_id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `driver_type` varchar(40) NOT NULL,
  `driver_address` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`driver_id`, `first_name`, `last_name`, `driver_type`, `driver_address`, `Password`) VALUES
(1, 'Driver', 'truck', 'Truck driver', 'XYZ', '654123');

-- --------------------------------------------------------

--
-- Table structure for table `parking_lots`
--

CREATE TABLE `parking_lots` (
  `lot_id` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `lot_address` varchar(255) NOT NULL,
  `permit_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `parking_spaces`
--

CREATE TABLE `parking_spaces` (
  `space_id` int(11) NOT NULL,
  `space_type` varchar(3) NOT NULL,
  `lot_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `permit_assignments`
--

CREATE TABLE `permit_assignments` (
  `permit_assignment_id` int(11) NOT NULL,
  `purchase_date` date NOT NULL,
  `expiry_date` date NOT NULL,
  `status` varchar(25) DEFAULT 'active',
  `vehicle_id` int(11) NOT NULL,
  `permit_type_id` int(11) NOT NULL,
  `permit_pmt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `permit_payments`
--

CREATE TABLE `permit_payments` (
  `permit_pmt_id` int(11) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'unpaid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `permit_type`
--

CREATE TABLE `permit_type` (
  `permit_type_id` int(11) NOT NULL,
  `permit_type` varchar(3) NOT NULL,
  `cost` decimal(19,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `vehicle_id` int(11) NOT NULL,
  `make` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `license_plate` varchar(9) NOT NULL,
  `driver_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `violation_assignments`
--

CREATE TABLE `violation_assignments` (
  `violation_id` int(11) NOT NULL,
  `date_issued` date NOT NULL,
  `violation_type` varchar(10) NOT NULL,
  `amount_due` decimal(19,4) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `space_id` int(11) NOT NULL,
  `violation_pmt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `violation_payments`
--

CREATE TABLE `violation_payments` (
  `violation_pmt_id` int(11) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'unpaid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_ID`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`driver_id`);

--
-- Indexes for table `parking_lots`
--
ALTER TABLE `parking_lots`
  ADD PRIMARY KEY (`lot_id`),
  ADD KEY `permit_type_id` (`permit_type_id`);

--
-- Indexes for table `parking_spaces`
--
ALTER TABLE `parking_spaces`
  ADD PRIMARY KEY (`space_id`),
  ADD KEY `lot_id` (`lot_id`);

--
-- Indexes for table `permit_assignments`
--
ALTER TABLE `permit_assignments`
  ADD PRIMARY KEY (`permit_assignment_id`),
  ADD KEY `vehicle_id` (`vehicle_id`),
  ADD KEY `permit_type_id` (`permit_type_id`),
  ADD KEY `permit_pmt_id` (`permit_pmt_id`);

--
-- Indexes for table `permit_payments`
--
ALTER TABLE `permit_payments`
  ADD PRIMARY KEY (`permit_pmt_id`);

--
-- Indexes for table `permit_type`
--
ALTER TABLE `permit_type`
  ADD PRIMARY KEY (`permit_type_id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`vehicle_id`),
  ADD KEY `driver_id` (`driver_id`);

--
-- Indexes for table `violation_assignments`
--
ALTER TABLE `violation_assignments`
  ADD PRIMARY KEY (`violation_id`),
  ADD KEY `vehicle_id` (`vehicle_id`),
  ADD KEY `space_id` (`space_id`),
  ADD KEY `violation_pmt_id` (`violation_pmt_id`);

--
-- Indexes for table `violation_payments`
--
ALTER TABLE `violation_payments`
  ADD PRIMARY KEY (`violation_pmt_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Admin_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `driver_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `parking_lots`
--
ALTER TABLE `parking_lots`
  MODIFY `lot_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parking_spaces`
--
ALTER TABLE `parking_spaces`
  MODIFY `space_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permit_assignments`
--
ALTER TABLE `permit_assignments`
  MODIFY `permit_assignment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permit_payments`
--
ALTER TABLE `permit_payments`
  MODIFY `permit_pmt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permit_type`
--
ALTER TABLE `permit_type`
  MODIFY `permit_type_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `violation_assignments`
--
ALTER TABLE `violation_assignments`
  MODIFY `violation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `violation_payments`
--
ALTER TABLE `violation_payments`
  MODIFY `violation_pmt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `parking_lots`
--
ALTER TABLE `parking_lots`
  ADD CONSTRAINT `parking_lots_ibfk_1` FOREIGN KEY (`permit_type_id`) REFERENCES `permit_type` (`permit_type_id`);

--
-- Constraints for table `parking_spaces`
--
ALTER TABLE `parking_spaces`
  ADD CONSTRAINT `parking_spaces_ibfk_1` FOREIGN KEY (`lot_id`) REFERENCES `parking_lots` (`lot_id`);

--
-- Constraints for table `permit_assignments`
--
ALTER TABLE `permit_assignments`
  ADD CONSTRAINT `permit_assignments_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`vehicle_id`),
  ADD CONSTRAINT `permit_assignments_ibfk_2` FOREIGN KEY (`permit_type_id`) REFERENCES `permit_type` (`permit_type_id`),
  ADD CONSTRAINT `permit_assignments_ibfk_3` FOREIGN KEY (`permit_pmt_id`) REFERENCES `permit_payments` (`permit_pmt_id`);

--
-- Constraints for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD CONSTRAINT `vehicles_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`driver_id`);

--
-- Constraints for table `violation_assignments`
--
ALTER TABLE `violation_assignments`
  ADD CONSTRAINT `violation_assignments_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`vehicle_id`),
  ADD CONSTRAINT `violation_assignments_ibfk_2` FOREIGN KEY (`space_id`) REFERENCES `parking_spaces` (`space_id`),
  ADD CONSTRAINT `violation_assignments_ibfk_3` FOREIGN KEY (`violation_pmt_id`) REFERENCES `violation_payments` (`violation_pmt_id`);
--
-- Database: `payment`
--
CREATE DATABASE IF NOT EXISTS `payment` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `payment`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_10_27_141820_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('LqHAbSg3y93m30zjrQT3pUseIsg2xqHxV0Ii5DXy', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidnJzYUViUGRPNnBKTG9KenFYWEJ1OWRZRDFNekNmMFRDSFhyMlFUWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9zdHJpcGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1666881944);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `pdfbookshub`
--
CREATE DATABASE IF NOT EXISTS `pdfbookshub` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pdfbookshub`;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `Book_ID` int(5) NOT NULL,
  `Book_Name` varchar(100) NOT NULL,
  `Author_Name` varchar(50) NOT NULL,
  `Book_Image` varchar(200) NOT NULL,
  `Book_File` varchar(200) NOT NULL,
  `Book_Description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`Book_ID`, `Book_Name`, `Author_Name`, `Book_Image`, `Book_File`, `Book_Description`) VALUES
(1, 'dumy', 'dumy', 'dumy', 'dumy', 'dumy'),
(2, 'dumy', 'dumy', 'dumy', 'dumy', 'CA T');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Contact_ID` int(5) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(80) NOT NULL,
  `Message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Contact_ID`, `Name`, `Email`, `Message`) VALUES
(1, 'saad ali', 'saad@gmail.com', 'dumy !!!'),
(2, 'saad ali', 'saad@gmail.com', 'Dumy'),
(3, 'saad ali', 'saad@gmail.com', 'MDD'),
(4, 'saad ali', 'saad@gmail.com', 'vsd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`Book_ID`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`Contact_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `Book_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `Contact_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `pfj`
--
CREATE DATABASE IF NOT EXISTS `pfj` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pfj`;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `C_ID` int(5) NOT NULL,
  `Company` int(20) NOT NULL,
  `E_ID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `E_ID` int(5) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `ID` int(5) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`ID`, `Name`, `Email`, `Address`) VALUES
(1, 'NwIRkA4yNA', '4zCOkYQV8M@gmail.com', 'GZ36frfBDi'),
(2, 'tOmieyCAXX', 'utpU2dz3Bn@gmail.com', 'qYSvZKjgiG'),
(3, '82qdWER2Ha', 'hrdMQu4nWo@gmail.com', '2Na2qf7oZl'),
(4, 'GnVX4WP3i4', 'wJ2oXoCGpP@gmail.com', 'wnFrZ9FPGe'),
(5, 'c23tXPCIBW', 'juGKFkyh4t@gmail.com', 'xkx8Au5r8a'),
(6, 'fzcX3TSkAS', 'rZNcjse7dL@gmail.com', '7XqbKUYhT3'),
(7, 'Pd6hYyy4WS', 'uIGscpNWUV@gmail.com', '9HbXeGUw5d'),
(8, '1SXHvgwaSm', 'Isi1YRsnDy@gmail.com', 'C5IvZ6bEA5'),
(9, 'OXm4NsOt5G', 'P9Fg0qdqE9@gmail.com', 'iwNTex3f2P'),
(10, 'aSNejawvEC', 'mqXJPphNJu@gmail.com', 'qagAt8lVpN'),
(11, '8MbPvZe5rc', 'MdAiuFNdMi@gmail.com', 'dGPi9Et3R2'),
(12, 'NDxkmrgYO1', 'aNeIYBUFch@gmail.com', 'oIskv4xABB');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(14, '2014_10_12_000000_create_users_table', 1),
(15, '2014_10_12_100000_create_password_resets_table', 1),
(16, '2019_08_19_000000_create_failed_jobs_table', 1),
(17, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(18, '2022_08_02_164016_create_test', 1),
(19, '2022_08_02_171658_create_test1', 1),
(20, '2022_08_02_171727_create_test2', 1),
(21, '2022_08_02_171803_create_test3', 1),
(22, 'tester', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test1`
--

CREATE TABLE `test1` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test2`
--

CREATE TABLE `test2` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test3`
--

CREATE TABLE `test3` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tester`
--

CREATE TABLE `tester` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`C_ID`),
  ADD KEY `E_ID` (`E_ID`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`E_ID`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test1`
--
ALTER TABLE `test1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test2`
--
ALTER TABLE `test2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test3`
--
ALTER TABLE `test3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tester`
--
ALTER TABLE `tester`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `C_ID` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `E_ID` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test1`
--
ALTER TABLE `test1`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test2`
--
ALTER TABLE `test2`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test3`
--
ALTER TABLE `test3`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tester`
--
ALTER TABLE `tester`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `company_ibfk_1` FOREIGN KEY (`E_ID`) REFERENCES `employees` (`E_ID`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"snap_to_grid\":\"off\",\"relation_lines\":\"true\",\"angular_direct\":\"direct\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"educational\",\"table\":\"admin\"},{\"db\":\"educational\",\"table\":\"teacher\"},{\"db\":\"educational\",\"table\":\"student\"},{\"db\":\"easyfastmillion\",\"table\":\"books\"},{\"db\":\"easyfastmillion\",\"table\":\"products\"},{\"db\":\"easyfastmillion\",\"table\":\"users\"},{\"db\":\"easyfastmillion\",\"table\":\"contacts\"},{\"db\":\"easyfastmillion\",\"table\":\"videos\"},{\"db\":\"easyfastmillion\",\"table\":\"images\"},{\"db\":\"chatsystem\",\"table\":\"users\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

--
-- Dumping data for table `pma__relation`
--

INSERT INTO `pma__relation` (`master_db`, `master_table`, `master_field`, `foreign_db`, `foreign_table`, `foreign_field`) VALUES
('blood_donation', 'contact', 'User_ID', 'blood_donation', 'user', 'User_ID');

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dumping data for table `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('blood_donation', 'contact', 'Name'),
('blood_donation', 'survey_form', 'Blood_Group'),
('blood_donation', 'user', 'Name'),
('pos', 'carts', 'Image'),
('pos_laravel', 'carts', 'image'),
('pos_laravel', 'invoices', 'image'),
('pos_laravel', 'products', 'image');

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'blood_donation', 'user', '{\"CREATE_TIME\":\"2022-12-01 15:40:36\",\"col_order\":[0,1,2,3,4],\"col_visib\":[1,1,1,1,1]}', '2022-12-02 14:34:41'),
('root', 'educational', 'admin', '{\"CREATE_TIME\":\"2022-11-25 17:41:41\",\"col_order\":[0,1,2],\"col_visib\":[1,1,1]}', '2022-12-16 10:56:48'),
('root', 'prd', 'image', '{\"sorted_col\":\"`image`.`Prd_ID` DESC\"}', '2022-09-22 07:47:32'),
('root', 'prd', 'product', '{\"CREATE_TIME\":\"2022-09-21 16:18:04\",\"col_order\":[0,1,2,3,4,5,6,7],\"col_visib\":[1,1,1,1,1,1,1,1]}', '2022-09-21 11:45:44');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-12-16 09:23:08', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":207}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `poc`
--
CREATE DATABASE IF NOT EXISTS `poc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `poc`;

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `CheckOut_ID` int(225) NOT NULL,
  `Name` varchar(60) NOT NULL,
  `Category` varchar(40) NOT NULL,
  `Selling_Price` bigint(40) NOT NULL,
  `Tax` bigint(20) NOT NULL,
  `Quantity` bigint(40) NOT NULL,
  `Product_ID` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`CheckOut_ID`, `Name`, `Category`, `Selling_Price`, `Tax`, `Quantity`, `Product_ID`) VALUES
(12, 'Ipad', 'Ipads', 1200, 1200, 1, 42);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_ID` int(225) NOT NULL,
  `Name` varchar(60) NOT NULL,
  `Mobile_No` bigint(20) NOT NULL,
  `Selling_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_ID`, `Name`, `Mobile_No`, `Selling_Date`) VALUES
(70, 'Saad', 123456789, '2022-01-18'),
(72, 'Saad', 123456789, '2022-01-19'),
(73, 'Saad', 123456789, '2022-01-19'),
(74, 'Saad', 123456789, '2022-01-19'),
(75, 'Saad', 123456789, '2022-01-19'),
(76, 'Saad', 123456789, '2022-01-19'),
(77, 'Saad', 123456789, '2022-01-19'),
(78, 'Saad', 123456789, '2022-01-21'),
(79, 'Saad', 123456789, '2022-01-21'),
(80, 'Saad', 123456789, '2022-01-21'),
(81, 'Saad', 123456789, '2022-01-21'),
(84, 'Saad', 123456789, '2022-01-21'),
(118, 'Saad', 123456789, '2022-01-25'),
(119, 'Saad', 123456789, '2022-01-26'),
(120, 'Saad', 123456789, '2022-01-26'),
(121, 'Saad', 123456789, '2022-01-26'),
(122, 'Saad', 123456789, '2022-01-26'),
(123, 'Saad', 123456789, '2022-01-26'),
(124, 'Saad', 123456789, '2022-01-26'),
(125, 'Saad', 123456789, '2022-01-26'),
(126, 'Saad', 123456789, '2022-01-27'),
(127, 'Saad', 123456789, '2022-01-27'),
(128, 'Saad', 123456789, '2022-01-27'),
(129, 'Saad', 123456789, '2022-01-27'),
(130, 'Saad', 123456789, '2022-01-27'),
(131, 'Saad', 123456789, '2022-01-27'),
(132, 'saad ali', 123456789, '2022-09-19');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `Invoice_ID` int(225) NOT NULL,
  `Customer_ID` int(225) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`Invoice_ID`, `Customer_ID`, `Date`) VALUES
(70, 70, '2022-01-18'),
(72, 72, '2022-01-19'),
(73, 73, '2022-01-19'),
(74, 74, '2022-01-19'),
(75, 75, '2022-01-19'),
(76, 76, '2022-01-19'),
(77, 77, '2022-01-19'),
(78, 78, '2022-01-21'),
(79, 79, '2022-01-21'),
(80, 80, '2022-01-21'),
(81, 81, '2022-01-21'),
(84, 84, '2022-01-21'),
(118, 118, '2022-01-25'),
(119, 119, '2022-01-26'),
(120, 120, '2022-01-26'),
(121, 121, '2022-01-26'),
(122, 122, '2022-01-26'),
(123, 123, '2022-01-26'),
(124, 124, '2022-01-26'),
(125, 125, '2022-01-26'),
(126, 126, '2022-01-27'),
(127, 127, '2022-01-27'),
(128, 128, '2022-01-27'),
(129, 129, '2022-01-27'),
(130, 130, '2022-01-27'),
(131, 131, '2022-01-27'),
(132, 132, '2022-09-19');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Login_ID` int(225) NOT NULL,
  `Username` varchar(60) NOT NULL,
  `Password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Login_ID`, `Username`, `Password`) VALUES
(1, 'Admin', 'Admin@123!+'),
(2, 'User', 'User@321!+');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Product_ID` int(225) NOT NULL,
  `Invoice_ID` int(225) NOT NULL,
  `Product_Category` varchar(40) NOT NULL,
  `Product` varchar(40) NOT NULL,
  `Quantity` bigint(20) NOT NULL,
  `Selling_Date` date NOT NULL,
  `Selling_Price` bigint(20) NOT NULL,
  `Product1_ID` int(225) NOT NULL,
  `Selling_Price_WT` int(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Product_ID`, `Invoice_ID`, `Product_Category`, `Product`, `Quantity`, `Selling_Date`, `Selling_Price`, `Product1_ID`, `Selling_Price_WT`) VALUES
(49, 30, 'Mobile', 'S4 ', 1, '2021-11-29', 2, 0, 0),
(50, 31, 'Mobile', 'S4 ', 1, '2021-11-29', 2, 0, 0),
(51, 31, 'Chargers', 'Samsung Charger', 1, '2021-11-29', 100, 0, 0),
(52, 31, 'Mobile LCDs', 'xyz', 1, '2021-11-29', 80, 0, 0),
(53, 32, 'Mobile', 'S4 ', 1, '2021-11-29', 2, 0, 0),
(54, 32, 'Chargers', 'Samsung Charger', 1, '2021-11-29', 100, 0, 0),
(55, 32, 'Mobile LCDs', 'xyz', 1, '2021-11-29', 80, 0, 0),
(59, 35, 'Mobile', 'S4 ', 1, '2021-11-29', 2, 0, 0),
(60, 35, 'Chargers', 'Samsung Charger', 1, '2021-11-29', 100, 0, 0),
(61, 35, 'Mobile LCDs', 'xyz', 1, '2021-11-29', 80, 0, 0),
(62, 36, 'Mobile', 'S4 ', 1, '2021-11-29', 2, 0, 0),
(63, 41, 'Mobile', 'S4 ', 1, '2021-11-29', 2, 0, 0),
(64, 41, 'Mobile', 'Iphone11', 1, '2021-11-29', 5500, 0, 0),
(65, 41, 'Mobile LCDs', 'xyz', 1, '2021-11-29', 80, 0, 0),
(71, 70, 'Chargers', 'Samsung Charger', 10, '2021-12-09', 100, 0, 0),
(72, 72, 'Ipads', 'Ipad', 1, '2021-12-12', 1050, 0, 0),
(73, 72, 'Mobile LCDs', 'SamsungS7', 1, '2021-12-12', 2625, 0, 0),
(74, 72, 'Ipads', 'Ipad', 1, '2021-12-12', 1000, 0, 0),
(75, 72, 'Ipads', 'Ipad', 1, '2021-12-12', 1000, 0, 0),
(76, 72, 'Mobile LCDs', 'SamsungS7', 1, '2021-12-12', 2500, 0, 0),
(77, 72, 'Chargers', 'Samsung Charger', 200, '2021-12-12', 100, 0, 0),
(78, 73, 'Chargers', 'Samsung Charger', 250, '2021-12-12', 105, 0, 0),
(79, 73, 'Mobile LCDs', 'SamsungS7', 2, '2021-12-12', 2625, 0, 0),
(80, 75, 'Chargers', 'Samsung Charger', 1, '2021-12-12', 100, 0, 0),
(81, 77, 'Chargers', 'Samsung Charger', 1, '2021-12-12', 100, 0, 0),
(82, 78, 'Chargers', 'Samsung Charger', 1, '2021-12-12', 100, 0, 0),
(83, 79, 'Chargers', 'Samsung Charger', 1, '2021-12-12', 100, 0, 0),
(84, 80, 'Chargers', 'Samsung Charger', 1, '2021-12-12', 100, 0, 0),
(85, 81, 'Chargers', 'Samsung Charger', 200, '2021-12-12', 100, 0, 0),
(88, 84, 'Chargers', 'Samsung Charger', 250, '2021-12-12', 105, 0, 0),
(89, 84, 'Mobile LCDs', 'SamsungS7', 2, '2021-12-12', 2625, 0, 0),
(90, 70, 'Ipads', 'Ipad', 1, '2022-01-18', 1050, 0, 0),
(91, 70, 'Ipads', 'Ipad', 1, '2022-01-18', 8400, 0, 0),
(92, 70, 'Mobile LCDs', 'SamsungS7', 3, '2022-01-18', 2625, 0, 0),
(93, 70, 'Chargers', 'Iphone Charger', 1, '2022-01-18', 525, 0, 0),
(94, 70, 'Mobile Covers', 'Apple Iphone Cover', 2, '2022-01-18', 525, 0, 0),
(95, 72, 'Ipads', 'Ipad', 1, '2022-01-19', 1050, 0, 0),
(96, 72, 'Mobile LCDs', 'SamsungS7', 1, '2022-01-19', 2625, 0, 0),
(97, 72, 'Chargers', 'Samsung Charger', 1, '2022-01-19', 368, 0, 0),
(98, 72, 'Mobile Covers', 'Apple Iphone Cover', 1, '2022-01-19', 525, 0, 0),
(99, 72, 'Mobile', 'Samsung8', 1, '2022-01-19', 5775, 0, 0),
(100, 73, 'Mobile', 'Galaxy S8', 1, '2022-01-19', 6825, 0, 0),
(101, 75, 'Mobile', 'Iphone X', 1, '2022-01-19', 8399, 0, 0),
(102, 76, 'Chargers', 'Samsung Charger', 43, '2022-01-19', 368, 0, 0),
(103, 77, 'Chargers', 'Samsung Charger', 1, '2022-01-19', 350, 0, 0),
(104, 78, 'Ipads', 'Ipad', 1, '2022-01-21', 1000, 0, 0),
(105, 80, 'Ipads', 'Ipad', 1, '2022-01-21', 1000, 0, 0),
(116, 118, 'Ipads', 'Ipad', 1, '2022-01-25', 1050, 15, 1000),
(117, 119, 'Ipads', 'Ipad', 1, '2022-01-26', 6300, 26, 6000),
(118, 120, 'Ipads', 'Ipad8', 1, '2022-01-26', 1260, 38, 1200),
(119, 121, 'Ipads', 'Ipad8', 1, '2022-01-26', 1260, 38, 1200),
(120, 123, 'Ipads', 'Ipad8', 1, '2022-01-26', 1260, 38, 1200),
(121, 124, 'Ipads', 'Ipad', 1, '2022-01-26', 630, 44, 600),
(122, 125, 'Chargers', 'Samsung', 1, '2022-01-26', 150, 45, 150),
(123, 126, 'Ipads', 'Ipad5', 1, '2022-01-27', 200, 36, 200),
(124, 127, 'Ipads', 'Ipad6', 1, '2022-01-27', 1500, 40, 1500),
(125, 128, 'Ipads', 'Ipad', 1, '2022-01-27', 1200, 41, 1200),
(126, 129, 'Ipads', 'Ipad5', 1, '2022-01-27', 1000, 39, 1000),
(127, 130, 'Ipads', 'Ipad', 1, '2022-01-27', 1200, 42, 1200),
(128, 131, 'Ipads', 'Ipad', 1, '2022-01-27', 1000, 43, 1000),
(129, 132, 'Ipads', 'Ipad', 1, '2022-09-19', 6300, 26, 6000),
(130, 132, 'Ipads', 'Ipad', 1, '2022-09-19', 1260, 41, 1200);

-- --------------------------------------------------------

--
-- Table structure for table `product1`
--

CREATE TABLE `product1` (
  `Product1_ID` int(225) NOT NULL,
  `Category_ID` bigint(40) NOT NULL,
  `Name` varchar(60) NOT NULL,
  `Company` varchar(60) NOT NULL,
  `Specification` varchar(240) NOT NULL,
  `IMEI1` bigint(50) NOT NULL,
  `IMEI2` bigint(50) NOT NULL,
  `Buying_Price` bigint(40) NOT NULL,
  `Selling_Price` bigint(40) NOT NULL,
  `Purchased_from` varchar(200) NOT NULL,
  `Purchased_Date` date NOT NULL,
  `Quantity` bigint(100) NOT NULL,
  `Category` varchar(40) NOT NULL,
  `Status` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product1`
--

INSERT INTO `product1` (`Product1_ID`, `Category_ID`, `Name`, `Company`, `Specification`, `IMEI1`, `IMEI2`, `Buying_Price`, `Selling_Price`, `Purchased_from`, `Purchased_Date`, `Quantity`, `Category`, `Status`) VALUES
(15, 2, 'Ipad 3', 'Apple', '					 						 						 						 	dual core', 126547899, 1236941016, 700, 750, 'xyz', '2021-10-26', 200, 'Ipads', 'AVAILABLE'),
(17, 5, 'Samsung Charger', '', 'xyz', 0, 0, 100, 100, 'xyz', '2021-10-19', 500, 'Chargers', ''),
(20, 0, '', '', '', 0, 0, 0, 0, '', '0000-00-00', 0, '', ''),
(21, 4, 'SamsungS7', '', 'Multicoted', 0, 0, 2000, 2500, 'Sharjah', '2021-11-26', 14, 'Mobile LCDs', ''),
(23, 13, 'Samsung8', 'Samsung', 'Very good mobile', 123564789, 123564789, 5000, 5500, 'Sharjah', '2021-11-29', 10, 'Mobile', 'SOLD'),
(24, 13, 'Iphone11', 'Iphone', 'xyz', 14404501805, 14404501805, 10000, 11000, 'Sharjah', '2021-11-28', 20, 'Mobile', ''),
(25, 13, 'Apple', 'Apple', 'xyz', 2149018940, 2149018940, 2000, 2100, 'Sharjah', '2021-11-29', 100, 'Mobile', ''),
(26, 2, 'Ipad', 'Apple', '					 						 	memory : 4gb\r\nstorage : 32gb\r\nrear camera : 16mp', 1235632, 185233, 6000, 6000, 'Sharjah', '2022-01-04', 0, 'Ipads', 'COMPLAIN'),
(27, 2, 'Ipad3', 'Apple', '					 						 						 						 						 						 	memory : 3gb\r\nstorage : 16gb\r\nfront camera : 5mp', 812392184719, 3129839127328, 5500, 6000, 'Sharjah', '2022-01-05', 0, 'Ipads', 'AVAILABLE'),
(28, 4, 'xyz', '', '5\" IPS LCD', 0, 0, 1200, 1500, 'Sharjah', '2022-01-03', 50, 'Mobile LCDs', ''),
(29, 4, 'Iphone LCD', '', '6\" Super Amoled', 0, 0, 2000, 2450, 'Sharjah', '2022-01-21', 60, 'Mobile LCDs', ''),
(30, 5, 'Iphone Charger', '', '6Ampere ', 0, 0, 340, 500, 'Sharjah', '2022-01-01', 29, 'Chargers', ''),
(33, 13, 'Iphone X', 'Apple', 'Apple Iphone X', 12487126487126, 21387126378152, 6500, 7999, 'Sharjah', '2022-01-07', 0, 'Mobile', ''),
(34, 15, 'Samsung Mobile Cover', '', 'Samsung Galaxy S8 Cover', 0, 0, 200, 300, 'Sharjah', '2022-01-04', 35, 'Mobile Covers', ''),
(35, 15, 'Apple Iphone Cover', '', 'Apple Iphone X cover', 0, 0, 350, 500, 'Sharjah', '2022-01-08', 57, 'Mobile Covers', ''),
(36, 2, 'Ipad5', 'Apple', '					 						 	xzyz', 408113, 1001081, 100, 200, 'Sharjah', '2022-01-21', 0, 'Ipads', 'AVAILABLE'),
(37, 5, 'Samsung G9', '', 'xyz', 0, 0, 343, 434, 'Sharjah', '2022-01-21', 23, 'Chargers', ''),
(38, 2, 'Ipad8', 'Apple', 'xyz', 1016501, 0, 1000, 1200, 'Sharjah', '2022-01-26', 0, 'Ipads', 'AVAILABLE'),
(39, 2, 'Ipad5', 'Iphone', '					 	xyz', 10981601, 0, 1000, 1000, 'Sharjah', '2022-01-26', 0, 'Ipads', 'AVAILABLE'),
(40, 2, 'Ipad6', 'Iphone', 'xyz', 48494041, 68084411, 1200, 1500, 'Sharjah', '2022-01-26', 0, 'Ipads', 'AVAILABLE'),
(41, 2, 'Ipad', 'Apple', '					 	xyz', 14600101, 0, 1200, 1200, 'Sharjah', '2022-01-26', 0, 'Ipads', 'SOLD'),
(42, 2, 'Ipad', 'Apple', 'xyz', 89041, 16380, 1000, 1200, 'Sharjah', '2022-01-26', 0, 'Ipads', 'AVAILABLE'),
(43, 2, 'Ipad', 'Apple', '					 	xyz', 13658406, 0, 1000, 1000, 'Sharjah', '2022-01-26', 0, 'Ipads', 'AVAILABLE'),
(44, 2, 'Ipad', 'Iphone', 'xyz', 635804, 814044, 500, 600, 'Sharjah', '2022-01-26', 0, 'Ipads', 'AVAILABLE'),
(45, 5, 'Samsung', '', 'xyz', 0, 0, 110, 150, 'Sharjah', '2022-01-26', 49, 'Chargers', 'AVAILABLE'),
(46, 5, 'dumy charger', '', '3 amp', 0, 0, 100, 200, 'Sharjah', '2022-09-19', 20, 'Chargers', 'AVAILABLE');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `Product_Category_ID` int(225) NOT NULL,
  `Category` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`Product_Category_ID`, `Category`) VALUES
(2, 'Mobile'),
(4, 'Ipads'),
(5, 'Chargers'),
(13, 'Mobile LCDs'),
(15, 'Mobile Covers');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`CheckOut_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`Invoice_ID`),
  ADD UNIQUE KEY `Customer_ID` (`Customer_ID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Login_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_ID`);

--
-- Indexes for table `product1`
--
ALTER TABLE `product1`
  ADD PRIMARY KEY (`Product1_ID`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`Product_Category_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `CheckOut_ID` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Customer_ID` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `Invoice_ID` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `Login_ID` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `Product_ID` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `product1`
--
ALTER TABLE `product1`
  MODIFY `Product1_ID` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `Product_Category_ID` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Database: `pos`
--
CREATE DATABASE IF NOT EXISTS `pos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pos`;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Product_ID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Product_Image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Product_Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Product_Quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Product_Price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Customer_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_11_17_125657_create_sessions_table', 1),
(7, '2022_11_25_141246_create_customers_table', 2),
(8, '2022_11_25_141405_create_products_table', 2),
(9, '2022_11_25_141433_create_categories_table', 2),
(10, '2022_11_25_141501_create_carts_table', 2),
(11, '2022_11_25_141530_create_invoices_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Stock` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Category_ID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('x8PbX0qdnw2kzUgHKS3R3IlttnNlTYTmy4xK5uCu', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiSWdWTFlHa1o1Mmk2aXZCR3NTMXd0a24wcHJXZ2tMU293aHRiU1RWOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZGRfY2F0ZWdvcnkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJFFxUWRXQm5JcHdwL1o2MUFzTDJEaGVFVGk5NGFaQUtoR0RBd25xeEdTaFpUQng2VFp1VjZ1Ijt9', 1669389515);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$QqQdWBnIpwp/Z61AsL2DheETi94aZAKhGDAwnqxGShZTBx6TZuV6u', NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-25 09:09:52', '2022-11-25 09:09:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Product_ID` (`Product_ID`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`id`);
--
-- Database: `pos_laravel`
--
CREATE DATABASE IF NOT EXISTS `pos_laravel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pos_laravel`;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `Product_ID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `Customer_ID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_02_142455_create_products_table', 1),
(6, '2022_12_02_144322_create_categories_table', 1),
(7, '2022_12_02_144941_create_invoices_table', 1),
(8, '2022_12_02_144959_create_carts_table', 1),
(9, '2022_12_02_145018_create_customers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Category_ID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Product_ID` (`Product_ID`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Customer_ID` (`Customer_ID`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Category_ID` (`Category_ID`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `products` (`id`);

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customers` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`Category_ID`) REFERENCES `categories` (`id`);
--
-- Database: `prd`
--
CREATE DATABASE IF NOT EXISTS `prd` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `prd`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_ID` int(225) NOT NULL,
  `Name` varchar(60) NOT NULL,
  `Email` varchar(80) NOT NULL,
  `Password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_ID`, `Name`, `Email`, `Password`) VALUES
(1, 'Admin', '', 'Admin@123!+'),
(2, 'Waheed', 'waheed@gmail.com', '$2y$10$142mSf/jASI6XGm9UWSdAeeuUmj86Ima4RfptyvEmP3nfYhW34e/a');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Cat_ID` int(20) NOT NULL,
  `Category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Cat_ID`, `Category`) VALUES
(2, 'Covers'),
(3, 'Chargers'),
(4, 'Mobile Chargers');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `Image_ID` int(225) NOT NULL,
  `Image` varchar(500) NOT NULL,
  `Prd_ID` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`Image_ID`, `Image`, `Prd_ID`) VALUES
(11, 'Products/Watch1.1.jpeg', 1),
(12, 'Products/Watch1.2.jpeg', 1),
(13, 'Products/Watch1.jpeg', 1),
(14, 'Products/Watch1.1.jpeg', 1),
(15, 'Products/Watch1.2.jpeg', 1),
(16, 'Products/Watch1.jpeg', 1),
(17, 'Products/Watch2.1.jpeg', 2),
(18, 'Products/Watch2.2.jpeg', 2),
(19, 'Products/Watch2.jpeg', 2),
(20, 'Products/Watch3.1.jpeg', 3),
(21, 'Products/Watch3.2.jpeg', 3),
(22, 'Products/Watch3.jpeg', 3),
(23, 'Products/Watch4.1.jpeg', 4),
(24, 'Products/Watch4.2.jpeg', 4),
(25, 'Products/Watch4.jpeg', 4),
(26, 'Products/Earbuds.jpg', 5),
(27, 'Products/Earbuds1.1.jpg', 5),
(28, 'Products/Earbuds1.2.jpg', 5),
(29, 'Products/AirPods.jpg', 6),
(30, 'Products/AirPods1.1.jpg', 6),
(31, 'Products/AirPods1.2.jpg', 6),
(34, 'Products/1662739654dubai-skyline-burj-khalifa-downtown-w1264x941.jpg', 7),
(35, 'Products/1662739839dubai-skyline-burj-khalifa-downtown-w1264x941.jpg', 7),
(36, 'Products/burj-al-arab-profile-exterior_6-4_landscape.jpg', 11),
(37, 'Products/1662740391dubai-skyline-burj-khalifa-downtown-w1264x941.jpg', 12),
(38, 'Products/Football-01.jpg', 13),
(39, 'Products/Honda-CBR600RR.jpg', 13),
(42, 'Products/B6.jpg', 16),
(43, 'Products/B7.jpg', 16),
(44, 'Products/anime-naruto-black-hair-boy-wallpaper-preview.jpg', 17),
(45, 'Products/The-Undertaker.jpg', 17),
(46, 'Products/screenshot.devil-may-cry-5.3840x2160.2018-06-12.2.jpg', 18),
(47, 'Products/screenshot.devil-may-cry-5.3840x2160.2018-06-12.3.jpg', 18),
(48, 'Products/sukuna-jujutsu-kaisen-uhdpaper.com-4K-7.3220.jpg', 18),
(49, 'Products/watch & inpods 2.jpeg', 19),
(50, 'Products/watch & inpods 3.jpg', 19),
(51, 'Products/watch & inpods1.jpg', 19);

-- --------------------------------------------------------

--
-- Table structure for table `ordernow`
--

CREATE TABLE `ordernow` (
  `Order_ID` int(225) NOT NULL,
  `FullName` varchar(200) NOT NULL,
  `Mobile` varchar(20) NOT NULL,
  `Quantity` varchar(10) NOT NULL,
  `City` varchar(200) NOT NULL,
  `Address` varchar(5000) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Product_ID` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordernow`
--

INSERT INTO `ordernow` (`Order_ID`, `FullName`, `Mobile`, `Quantity`, `City`, `Address`, `Status`, `Product_ID`) VALUES
(3, 'Saad', '0', '0', '', '', 'Inprocess', 12),
(4, 'Ammad', '0', '0', '', '', 'Inprocess', 12),
(5, 'Ammar', '0', '0', '', '', 'Delivered', 12),
(6, 'Laiq', '0', '0', '', '', 'Inprocess', 12),
(7, 'Younus', '0', '0', '', '', 'Delivered', 12),
(8, 'Anas', '0', '0', '', '', 'New Order', 12),
(9, 'Rafay', '0', '0', '', '', 'New Order', 12),
(10, 'Sharik', '0', '0', '', '', 'New Order', 12),
(11, 'saad', '0', '0', '', '', 'New Order', 2),
(12, 'saad ali', '314151487', '1', 'Abu Dhabi', 'Dumy Street No, Dumy House No', 'Inprocess', 1),
(13, '', '0', '1', '', '', '', 1),
(14, '', '0', '1', '', '', '', 1),
(15, '', '0', '1', '', '', '', 1),
(16, '', '0', '1', '', '', '', 0),
(17, '', '0', '1', '', '', '', 0),
(18, '', '0', '1', '', '', '', 0),
(19, '', '0', '1', '', '', '', 1),
(20, 'saad ali', '314151487', '1', 'Abu Dhabi', 'Dumy Street No, Dumy House No', '', 0),
(21, 'saad ali', '314151487', '3', 'Dubai', 'Dumy Street No, Dumy House No', 'Delivered', 5),
(22, 'saad ali', '314151487', '2', 'Abu Dhabi', 'Dumy Street No, Dumy House No', '', 2),
(23, 'saad ali', '0314151487', '1 - 49 AED', 'Sharjah', 'Dumy Street No, Dumy House No', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Product_ID` int(225) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Description` varchar(5000) NOT NULL,
  `CP` bigint(40) NOT NULL,
  `SP` bigint(40) NOT NULL,
  `DP` bigint(40) NOT NULL,
  `ItemsSold` bigint(40) NOT NULL,
  `Cat_ID` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Product_ID`, `Name`, `Description`, `CP`, `SP`, `DP`, `ItemsSold`, `Cat_ID`) VALUES
(1, 'Deltron Unisex', 'Dumy Product Discription', 100, 120, 110, 20, 2),
(2, 'Timezone', 'Dumy Product Discription', 80, 100, 90, 10, 3),
(3, 'YAZOLE Black', 'Dumy Product Discription', 70, 95, 90, 25, 2),
(4, 'Hannah Martin', 'Dumy Product Discription', 50, 70, 60, 8, 2),
(5, 'JBL TWS 4 Earbuds', 'Dumy Product Discription', 30, 50, 40, 50, 2),
(6, 'Airpods', 'Dumy Product Discription', 50, 70, 60, 20, 3),
(11, 'burj khalifa', 'The Burj Khalifa is undoubtedly one of the most iconic towers in Dubai. The Burj Khalifa top view is at a staggering 828 meters and is currently the tallest building in the world.', 1200, 1500, 1400, 0, 3),
(12, '', '', 0, 0, 10, 0, 3),
(16, 'Dumy', 'Dumy', 100, 120, 110, 5, 3),
(17, 'saad ali', 'Dumyeee', 130, 160, 150, 8, 4),
(18, 'Dumy', 'Dumy', 100, 120, 110, 5, 2),
(19, 'Testing', 'Testing', 100, 120, 110, 5, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_ID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Cat_ID`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`Image_ID`);

--
-- Indexes for table `ordernow`
--
ALTER TABLE `ordernow`
  ADD PRIMARY KEY (`Order_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Admin_ID` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `Cat_ID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `Image_ID` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `ordernow`
--
ALTER TABLE `ordernow`
  MODIFY `Order_ID` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `Product_ID` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- Database: `qrcode`
--
CREATE DATABASE IF NOT EXISTS `qrcode` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `qrcode`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `maps`
--

CREATE TABLE `maps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `longitude` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qrcode_png` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `qrcode_eps` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `qrcode_svg` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `maps`
--

INSERT INTO `maps` (`id`, `longitude`, `latitude`, `qrcode_png`, `qrcode_eps`, `qrcode_svg`, `created_at`, `updated_at`) VALUES
(3, '20.5937', '78.9629', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAAEsAQAAAABRBrPYAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0QAAd2KE6QAAAGFSURBVGje7ZpNsoQwCITdeWyunBvwnKikyd/btlWdsqbU+cyGAA3JccQ4/RrX73397qdD2Kew56rDOqx+mOYph5WKxV/CaLBk0Pp4Yc2+Z4/FtG1yYaxYPO5tKuyL2OQNrpDq7F4gqgtjxR6jL2zaIvm7NrzkOCCMBEONhDfnf1IqayphpNjapo6jNGFs+b0wBqw3KFQxVtrVYbd+vj1dGCmWhwEWSdZiYUTy9TdT+5O1hVFhfc+h5M7DK7RCZXW+L4wIC3/cZttQzm3CPNW9BoQxYKl+2Yrex+5HWgCpGSWMD8MI7GViU4N+VKisVvkWYSwY5tx4j7qotaFiKmH0WFjW0bUz1jRzhPQsoa0IY8HGALvqSGAKNuxE5X6FMCpsdN6xjzRu+oSPC2PA5op3U9ecKfMK+wTW78sM5xz6fQFsOgnjwMZzDssOPxZE2eJTNxfGgO28OGO4kZcajMKosO5M2hrDOOAgqoURYukT7AyPS8KFsWJD/WKrw6Jgcc81rzAm7A+vV/EzkmD/JAAAAABJRU5ErkJggg==', 'data:image/png;base64,JSFQUy1BZG9iZS0zLjAgRVBTRi0zLjAKJSVDcmVhdG9yOiBCYWNvblFyQ29kZQolJUJvdW5kaW5nQm94OiAwIDAgMzAwIDMwMCAKJSVCZWdpblByb2xvZwpzYXZlCjUwIGRpY3QgYmVnaW4KL3EgeyBnc2F2ZSB9IGJpbmQgZGVmCi9RIHsgZ3Jlc3RvcmUgfSBiaW5kIGRlZgovcyB7IHNjYWxlIH0gYmluZCBkZWYKL3QgeyB0cmFuc2xhdGUgfSBiaW5kIGRlZgovciB7IHJvdGF0ZSB9IGJpbmQgZGVmCi9uIHsgbmV3cGF0aCB9IGJpbmQgZGVmCi9tIHsgbW92ZXRvIH0gYmluZCBkZWYKL2wgeyBsaW5ldG8gfSBiaW5kIGRlZgovYyB7IGN1cnZldG8gfSBiaW5kIGRlZgoveiB7IGNsb3NlcGF0aCB9IGJpbmQgZGVmCi9mIHsgZW9maWxsIH0gYmluZCBkZWYKL3JnYiB7IHNldHJnYmNvbG9yIH0gYmluZCBkZWYKL2NteWsgeyBzZXRjbXlrY29sb3IgfSBiaW5kIGRlZgovZ3JheSB7IHNldGdyYXkgfSBiaW5kIGRlZgolJUVuZFByb2xvZwoxIC0xIHMKMCAtMzAwIHQKMCAwIG0gMzAwIDAgbCAzMDAgMzAwIGwgMCAzMDAgbCB6IDEgMSAxIHJnYiBmCjEyIDEyIHMKMCAwIHQKbiAxMCAwIG0gMTAgMiBsIDExIDIgbCAxMSAwIGwgeiAxMiAwIG0gMTIgMSBsIDEzIDEgbCAxMyAyIGwgMTIgMiBsIDEyIDQgbAogMTMgNCBsIDEzIDUgbCAxMSA1IGwgMTEgNiBsIDEwIDYgbCAxMCA0IGwgMTEgNCBsIDExIDMgbCA4IDMgbCA4IDQgbCA5IDQgbCA5CiA1IGwgOCA1IGwgOCA3IGwgOSA3IGwgOSA4IGwgNiA4IGwgNiA5IGwgNSA5IGwgNSA4IGwgMCA4IGwgMCAxMSBsIDEgMTEgbCAxCiAxMiBsIDAgMTIgbCAwIDE3IGwgMSAxNyBsIDEgMTQgbCAyIDE0IGwgMiAxNSBsIDQgMTUgbCA0IDE2IGwgMiAxNiBsIDIgMTcgbAogNCAxNyBsIDQgMTYgbCA1IDE2IGwgNSAxNyBsIDggMTcgbCA4IDE5IGwgOSAxOSBsIDkgMTggbCAxMCAxOCBsIDEwIDIwIGwgMTEKIDIwIGwgMTEgMTcgbCAxMiAxNyBsIDEyIDE4IGwgMTMgMTggbCAxMyAxOSBsIDEyIDE5IGwgMTIgMjEgbCAxMyAyMSBsIDEzIDIwCiBsIDE0IDIwIGwgMTQgMjEgbCAxNiAyMSBsIDE2IDIyIGwgMTcgMjIgbCAxNyAyMSBsIDE4IDIxIGwgMTggMjIgbCAyMSAyMiBsCiAyMSAyMyBsIDIwIDIzIGwgMjAgMjQgbCAxOCAyNCBsIDE4IDIzIGwgMTYgMjMgbCAxNiAyNCBsIDE1IDI0IGwgMTUgMjMgbCAxNAogMjMgbCAxNCAyNCBsIDE1IDI0IGwgMTUgMjUgbCAxNiAyNSBsIDE2IDI0IGwgMTggMjQgbCAxOCAyNSBsIDI1IDI1IGwgMjUgMjAKIGwgMjQgMjAgbCAyNCAxOSBsIDI1IDE5IGwgMjUgMTggbCAyMiAxOCBsIDIyIDE3IGwgMjUgMTcgbCAyNSAxNiBsIDI0IDE2IGwKIDI0IDE1IGwgMjUgMTUgbCAyNSAxNCBsIDIzIDE0IGwgMjMgMTMgbCAyNSAxMyBsIDI1IDEwIGwgMjMgMTAgbCAyMyA5IGwgMjQgOQogbCAyNCA4IGwgMjMgOCBsIDIzIDkgbCAyMiA5IGwgMjIgOCBsIDIxIDggbCAyMSA5IGwgMjIgOSBsIDIyIDExIGwgMjAgMTEgbAogMjAgMTAgbCAxOCAxMCBsIDE4IDggbCAxNiA4IGwgMTYgNyBsIDE3IDcgbCAxNyA1IGwgMTUgNSBsIDE1IDQgbCAxNyA0IGwgMTcKIDIgbCAxNiAyIGwgMTYgMSBsIDE1IDEgbCAxNSAwIGwgMTQgMCBsIDE0IDEgbCAxMyAxIGwgMTMgMCBsIHogOCAxIG0gOCAyIGwgOQogMiBsIDkgMSBsIHogMTQgMSBtIDE0IDIgbCAxMyAyIGwgMTMgMyBsIDE0IDMgbCAxNCA0IGwgMTUgNCBsIDE1IDMgbCAxNiAzIGwKIDE2IDIgbCAxNSAyIGwgMTUgMSBsIHogMTMgNSBtIDEzIDcgbCAxMiA3IGwgMTIgNiBsIDExIDYgbCAxMSA3IGwgMTIgNyBsIDEyCiA5IGwgMTEgOSBsIDExIDggbCAxMCA4IGwgMTAgOSBsIDkgOSBsIDkgMTAgbCA4IDEwIGwgOCA5IGwgNiA5IGwgNiAxMCBsIDQgMTAKIGwgNCAxMSBsIDMgMTEgbCAzIDkgbCAyIDkgbCAyIDEwIGwgMSAxMCBsIDEgMTEgbCAyIDExIGwgMiAxNCBsIDMgMTQgbCAzIDEyCiBsIDUgMTIgbCA1IDEzIGwgNCAxMyBsIDQgMTUgbCA2IDE1IGwgNiAxNiBsIDcgMTYgbCA3IDE1IGwgOCAxNSBsIDggMTYgbCAxMAogMTYgbCAxMCAxNyBsIDExIDE3IGwgMTEgMTQgbCAxMyAxNCBsIDEzIDE1IGwgMTIgMTUgbCAxMiAxNyBsIDE1IDE3IGwgMTUgMTkKIGwgMTQgMTkgbCAxNCAyMCBsIDE1IDIwIGwgMTUgMTkgbCAxNiAxOSBsIDE2IDE2IGwgMTcgMTYgbCAxNyAxMyBsIDE4IDEzIGwKIDE4IDE0IGwgMjAgMTQgbCAyMCAxNiBsIDIxIDE2IGwgMjEgMTcgbCAyMiAxNyBsIDIyIDE2IGwgMjMgMTYgbCAyMyAxNSBsIDIyCiAxNSBsIDIyIDE2IGwgMjEgMTYgbCAyMSAxMyBsIDIyIDEzIGwgMjIgMTIgbCAyMyAxMiBsIDIzIDExIGwgMjIgMTEgbCAyMiAxMgogbCAyMSAxMiBsIDIxIDEzIGwgMTggMTMgbCAxOCAxMiBsIDIwIDEyIGwgMjAgMTEgbCAxOCAxMSBsIDE4IDEwIGwgMTcgMTAgbAogMTcgOSBsIDE2IDkgbCAxNiA4IGwgMTQgOCBsIDE0IDYgbCAxNSA2IGwgMTUgNyBsIDE2IDcgbCAxNiA2IGwgMTUgNiBsIDE1IDUKIGwgeiA5IDYgbSA5IDcgbCAxMCA3IGwgMTAgNiBsIHogMTkgOCBtIDE5IDkgbCAyMCA5IGwgMjAgOCBsIHogMTAgOSBtIDEwIDExCiBsIDExIDExIGwgMTEgOSBsIHogMTIgOSBtIDEyIDEwIGwgMTMgMTAgbCAxMyAxMSBsIDEyIDExIGwgMTIgMTMgbCAxMyAxMyBsCiAxMyAxMiBsIDE0IDEyIGwgMTQgMTMgbCAxNSAxMyBsIDE1IDEyIGwgMTQgMTIgbCAxNCAxMSBsIDE2IDExIGwgMTYgMTIgbCAxOAogMTIgbCAxOCAxMSBsIDE2IDExIGwgMTYgMTAgbCAxNCAxMCBsIDE0IDkgbCB6IDYgMTAgbSA2IDExIGwgNSAxMSBsIDUgMTIgbCA2CiAxMiBsIDYgMTMgbCA4IDEzIGwgOCAxNCBsIDkgMTQgbCA5IDEzIGwgMTEgMTMgbCAxMSAxMiBsIDkgMTIgbCA5IDExIGwgOCAxMQogbCA4IDEyIGwgNiAxMiBsIDYgMTEgbCA3IDExIGwgNyAxMCBsIHogOCAxMiBtIDggMTMgbCA5IDEzIGwgOSAxMiBsIHogNiAxNCBtCiA2IDE1IGwgNyAxNSBsIDcgMTQgbCB6IDE1IDE0IG0gMTUgMTUgbCAxNCAxNSBsIDE0IDE2IGwgMTYgMTYgbCAxNiAxNCBsIHogMTgKIDE1IG0gMTggMTYgbCAxOSAxNiBsIDE5IDE1IGwgeiAxNyAxNyBtIDE3IDIwIGwgMjAgMjAgbCAyMCAxNyBsIHogMTggMTggbSAxOAogMTkgbCAxOSAxOSBsIDE5IDE4IGwgeiAyMiAxOSBtIDIyIDIwIGwgMjEgMjAgbCAyMSAyMSBsIDIyIDIxIGwgMjIgMjQgbCAyNAogMjQgbCAyNCAyMiBsIDIzIDIyIGwgMjMgMjEgbCAyNCAyMSBsIDI0IDIwIGwgMjMgMjAgbCAyMyAxOSBsIHogOCAyMCBtIDggMjUKIGwgOSAyNSBsIDkgMjQgbCAxMSAyNCBsIDExIDI1IGwgMTIgMjUgbCAxMiAyMyBsIDEzIDIzIGwgMTMgMjIgbCAxMSAyMiBsIDExCiAyMSBsIDEwIDIxIGwgMTAgMjIgbCA5IDIyIGwgOSAyMCBsIHogMjIgMjAgbSAyMiAyMSBsIDIzIDIxIGwgMjMgMjAgbCB6IDEwCiAyMiBtIDEwIDIzIGwgMTEgMjMgbCAxMSAyMiBsIHogMCAwIG0gMCA3IGwgNyA3IGwgNyAwIGwgeiAxIDEgbSAxIDYgbCA2IDYgbAogNiAxIGwgeiAyIDIgbSAyIDUgbCA1IDUgbCA1IDIgbCB6IDE4IDAgbSAxOCA3IGwgMjUgNyBsIDI1IDAgbCB6IDE5IDEgbSAxOSA2CiBsIDI0IDYgbCAyNCAxIGwgeiAyMCAyIG0gMjAgNSBsIDIzIDUgbCAyMyAyIGwgeiAwIDE4IG0gMCAyNSBsIDcgMjUgbCA3IDE4IGwKIHogMSAxOSBtIDEgMjQgbCA2IDI0IGwgNiAxOSBsIHogMiAyMCBtIDIgMjMgbCA1IDIzIGwgNSAyMCBsIHogMCAwIDAgcmdiIGYKJSVUUkFJTEVSCmVuZCByZXN0b3JlCiUlRU9G', 'data:image/png;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgd2lkdGg9IjMwMCIgaGVpZ2h0PSIzMDAiIHZpZXdCb3g9IjAgMCAzMDAgMzAwIj48cmVjdCB4PSIwIiB5PSIwIiB3aWR0aD0iMzAwIiBoZWlnaHQ9IjMwMCIgZmlsbD0iI2ZmZmZmZiIvPjxnIHRyYW5zZm9ybT0ic2NhbGUoMTIpIj48ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgwLDApIj48cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMCAwTDEwIDJMMTEgMkwxMSAwWk0xMiAwTDEyIDFMMTMgMUwxMyAyTDEyIDJMMTIgNEwxMyA0TDEzIDVMMTEgNUwxMSA2TDEwIDZMMTAgNEwxMSA0TDExIDNMOCAzTDggNEw5IDRMOSA1TDggNUw4IDdMOSA3TDkgOEw2IDhMNiA5TDUgOUw1IDhMMCA4TDAgMTFMMSAxMUwxIDEyTDAgMTJMMCAxN0wxIDE3TDEgMTRMMiAxNEwyIDE1TDQgMTVMNCAxNkwyIDE2TDIgMTdMNCAxN0w0IDE2TDUgMTZMNSAxN0w4IDE3TDggMTlMOSAxOUw5IDE4TDEwIDE4TDEwIDIwTDExIDIwTDExIDE3TDEyIDE3TDEyIDE4TDEzIDE4TDEzIDE5TDEyIDE5TDEyIDIxTDEzIDIxTDEzIDIwTDE0IDIwTDE0IDIxTDE2IDIxTDE2IDIyTDE3IDIyTDE3IDIxTDE4IDIxTDE4IDIyTDIxIDIyTDIxIDIzTDIwIDIzTDIwIDI0TDE4IDI0TDE4IDIzTDE2IDIzTDE2IDI0TDE1IDI0TDE1IDIzTDE0IDIzTDE0IDI0TDE1IDI0TDE1IDI1TDE2IDI1TDE2IDI0TDE4IDI0TDE4IDI1TDI1IDI1TDI1IDIwTDI0IDIwTDI0IDE5TDI1IDE5TDI1IDE4TDIyIDE4TDIyIDE3TDI1IDE3TDI1IDE2TDI0IDE2TDI0IDE1TDI1IDE1TDI1IDE0TDIzIDE0TDIzIDEzTDI1IDEzTDI1IDEwTDIzIDEwTDIzIDlMMjQgOUwyNCA4TDIzIDhMMjMgOUwyMiA5TDIyIDhMMjEgOEwyMSA5TDIyIDlMMjIgMTFMMjAgMTFMMjAgMTBMMTggMTBMMTggOEwxNiA4TDE2IDdMMTcgN0wxNyA1TDE1IDVMMTUgNEwxNyA0TDE3IDJMMTYgMkwxNiAxTDE1IDFMMTUgMEwxNCAwTDE0IDFMMTMgMUwxMyAwWk04IDFMOCAyTDkgMkw5IDFaTTE0IDFMMTQgMkwxMyAyTDEzIDNMMTQgM0wxNCA0TDE1IDRMMTUgM0wxNiAzTDE2IDJMMTUgMkwxNSAxWk0xMyA1TDEzIDdMMTIgN0wxMiA2TDExIDZMMTEgN0wxMiA3TDEyIDlMMTEgOUwxMSA4TDEwIDhMMTAgOUw5IDlMOSAxMEw4IDEwTDggOUw2IDlMNiAxMEw0IDEwTDQgMTFMMyAxMUwzIDlMMiA5TDIgMTBMMSAxMEwxIDExTDIgMTFMMiAxNEwzIDE0TDMgMTJMNSAxMkw1IDEzTDQgMTNMNCAxNUw2IDE1TDYgMTZMNyAxNkw3IDE1TDggMTVMOCAxNkwxMCAxNkwxMCAxN0wxMSAxN0wxMSAxNEwxMyAxNEwxMyAxNUwxMiAxNUwxMiAxN0wxNSAxN0wxNSAxOUwxNCAxOUwxNCAyMEwxNSAyMEwxNSAxOUwxNiAxOUwxNiAxNkwxNyAxNkwxNyAxM0wxOCAxM0wxOCAxNEwyMCAxNEwyMCAxNkwyMSAxNkwyMSAxN0wyMiAxN0wyMiAxNkwyMyAxNkwyMyAxNUwyMiAxNUwyMiAxNkwyMSAxNkwyMSAxM0wyMiAxM0wyMiAxMkwyMyAxMkwyMyAxMUwyMiAxMUwyMiAxMkwyMSAxMkwyMSAxM0wxOCAxM0wxOCAxMkwyMCAxMkwyMCAxMUwxOCAxMUwxOCAxMEwxNyAxMEwxNyA5TDE2IDlMMTYgOEwxNCA4TDE0IDZMMTUgNkwxNSA3TDE2IDdMMTYgNkwxNSA2TDE1IDVaTTkgNkw5IDdMMTAgN0wxMCA2Wk0xOSA4TDE5IDlMMjAgOUwyMCA4Wk0xMCA5TDEwIDExTDExIDExTDExIDlaTTEyIDlMMTIgMTBMMTMgMTBMMTMgMTFMMTIgMTFMMTIgMTNMMTMgMTNMMTMgMTJMMTQgMTJMMTQgMTNMMTUgMTNMMTUgMTJMMTQgMTJMMTQgMTFMMTYgMTFMMTYgMTJMMTggMTJMMTggMTFMMTYgMTFMMTYgMTBMMTQgMTBMMTQgOVpNNiAxMEw2IDExTDUgMTFMNSAxMkw2IDEyTDYgMTNMOCAxM0w4IDE0TDkgMTRMOSAxM0wxMSAxM0wxMSAxMkw5IDEyTDkgMTFMOCAxMUw4IDEyTDYgMTJMNiAxMUw3IDExTDcgMTBaTTggMTJMOCAxM0w5IDEzTDkgMTJaTTYgMTRMNiAxNUw3IDE1TDcgMTRaTTE1IDE0TDE1IDE1TDE0IDE1TDE0IDE2TDE2IDE2TDE2IDE0Wk0xOCAxNUwxOCAxNkwxOSAxNkwxOSAxNVpNMTcgMTdMMTcgMjBMMjAgMjBMMjAgMTdaTTE4IDE4TDE4IDE5TDE5IDE5TDE5IDE4Wk0yMiAxOUwyMiAyMEwyMSAyMEwyMSAyMUwyMiAyMUwyMiAyNEwyNCAyNEwyNCAyMkwyMyAyMkwyMyAyMUwyNCAyMUwyNCAyMEwyMyAyMEwyMyAxOVpNOCAyMEw4IDI1TDkgMjVMOSAyNEwxMSAyNEwxMSAyNUwxMiAyNUwxMiAyM0wxMyAyM0wxMyAyMkwxMSAyMkwxMSAyMUwxMCAyMUwxMCAyMkw5IDIyTDkgMjBaTTIyIDIwTDIyIDIxTDIzIDIxTDIzIDIwWk0xMCAyMkwxMCAyM0wxMSAyM0wxMSAyMlpNMCAwTDAgN0w3IDdMNyAwWk0xIDFMMSA2TDYgNkw2IDFaTTIgMkwyIDVMNSA1TDUgMlpNMTggMEwxOCA3TDI1IDdMMjUgMFpNMTkgMUwxOSA2TDI0IDZMMjQgMVpNMjAgMkwyMCA1TDIzIDVMMjMgMlpNMCAxOEwwIDI1TDcgMjVMNyAxOFpNMSAxOUwxIDI0TDYgMjRMNiAxOVpNMiAyMEwyIDIzTDUgMjNMNSAyMFoiIGZpbGw9IiMwMDAwMDAiLz48L2c+PC9nPjwvc3ZnPgo=', '2022-12-08 06:31:24', '2022-12-08 06:32:46');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(19, '2014_10_12_000000_create_users_table', 1),
(20, '2014_10_12_100000_create_password_resets_table', 1),
(21, '2019_08_19_000000_create_failed_jobs_table', 1),
(22, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(23, '2022_12_07_141250_create_websites_table', 1),
(24, '2022_12_07_141321_create_maps_table', 1),
(25, '2022_12_07_141342_create_phonenumbers_table', 1),
(26, '2022_12_07_141359_create_sms_table', 1),
(27, '2022_12_07_141416_create_wifis_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phonenumbers`
--

CREATE TABLE `phonenumbers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qrcode_png` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `qrcode_eps` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `qrcode_svg` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phonenumbers`
--

INSERT INTO `phonenumbers` (`id`, `phone`, `qrcode_png`, `qrcode_eps`, `qrcode_svg`, `created_at`, `updated_at`) VALUES
(2, '03311321578', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAAEsCAAAAABcFtGpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0QA/4ePzL8AAAWzSURBVHja7d0/ixNBGMfxqBfDwREEyRV2NhG0SFpBrPYsBG1iIfgGrlEsDrvIcenEwjdhdzYiCN5VItjuFRYe1gcmCHIIcolebOeZYx+fXWZ28+f765aZndn9ZDMwy+5OrVZGptlJZc1Eqborq/ZFYRmncb5GwAILLLDAAouABRZYYIEFFjFnpfwuX381V33xa6axhmGaXVfKvg7Mzezti830irvV0PaMch5nrqxWiD5GkX7aVpSq5vNgzGKABwsssMAiYIEFFlhgLWjUuw6/D+0NtVdLONoDd6N51bpbqPNQsQ679k7STnwreTj9Het+oc6DvyFjFlhggQUWAQsssMACCywCVo5U8GDIWiI298FS8uyZu3XQ5W/ImAUWAQsssMACCywCFlhgMZFW8mIPLHN+yZsyu/fdrXPanul1d+vCMmD5qUepypjFAA8WWGARsMACCyywwCJglT6Rbqf2htoxju7VnyB9hDoPFWu1U/FPeSNMM6HOg78hWGCBBRZYBCywwAILrGWZSI+qPR6ve/GZw5NjUdZo5mhojiLWMenLsl23bOztOGZ1FMYssAhYYIEFFlhgEbDAAguseU31Lw08mCOs6YL86lP+hoxZYIFFwAILLLDAAouABVYZE+nnWumdW87G6bYs3M6GPn5Z+ok8t1ddE5+zVNd9vfbI3qz9oQ0ZfUXUoZtUrRrlwZBE7JhoVWUfldzPch8kOmLMYoAHCwKwwAILLLDAggAssCq/6xConVEFc7yDsvvwseTMXnxXoe7N+sWnHT/K5zv64ksKOZ79SDaz+/AyGChHLqMdwJNNparsw8e63cputpfjF+kV/Slj7KhegvfE1hvGLAZ4sMACCywCFlhggQUWdx1qtUn2PHaSo91J0QOamCfSxXecBMJalzN5d3Y6uajeLtDuCCTZV/OKt0Kr7GRct/bo7ThsmftQW81BqT4YIpNqD4ZMrQn2xZChvQ/7eTBmMcCDBRZYYBGwwAILLLDAIsFeGtjSCjeUsif3lMK7StnnDeuxfXka6Dz82frYjX5HwI1/R0AUBruz4Tb6n1de3FZTtap2Hv+5sgKtkBpn9dSKW2XMYoAHCyywwCJggQUWWGAt412H0cfC7b6JcbDfvlWM5c3IL7sbR/b3SG7LdrpF57SymS35YIZ6OGn2eXhJXhacna8EWq60JV5jKb7oTaeMPYt2wpgFFlhggQUWAQsssMACa0GzMmPHU/5Sqj9Ow2A1+1rpheyihrrjILtoIl+HqfWVHfvmk/TOY01sPczxysm09MRZwLZwEsYsBniwwAILLAjAAgsssMACC4JZizaRjtKHTLqgV1ZS9I5AnMg7G/wNGbPAAgsssAhYYIEFFlhgkVl7MCTP2qqlH845r3AYpg/v+Q7xYczjE3frqKu1MyzYh8xBoD7OXFmtEFbqg0NNsaWv13OpXqyPPLH3wZjFAA8WWGCBRcACCyywwFrQqHcdfh/aG2qvRj/WKtZ9tWMddu0NpWE+EKGtyaqu+6rlinw3w/5pj+auHauK9CJUbYmaOVbdafQYsxjgwQILLLAIWGCBBRZYy5AK5oanf7XSHDM3rWqe1WQnM4y1ra3Xqq6XKjNQPqYh12T1nnXw3tu4OMtXlpdN+yK5obLnbmzY92PMYoAHCyywwCJggQUWWGCBRcDKkSpu0chPhqiLk4hPcb59YK6aY8mT98p7LD/Xq8Y6n+dqrkeoWfhy4W/ImAUWWGCBRcACCyywwGIiHSqfvtvrvo3Sh1wwthcGq53aD69trvlBe6BDrpe6pd1n6PcK9rEv10MZZ0/BL6d2rNVO+dddCUur5hikOoxZDPBggQUWWAQssMACC6xlyJm54Wh+jj3GoZ4ci81GU8Nanx8r9XUUbTHX5KbYFGvLvvM+tLGjXlkLksfi3R2PdYcxiwEeLLDAImCBBRZYYIFFwCqYf55Uq44WtGGlAAAAAElFTkSuQmCC', 'data:image/png;base64,JSFQUy1BZG9iZS0zLjAgRVBTRi0zLjAKJSVDcmVhdG9yOiBCYWNvblFyQ29kZQolJUJvdW5kaW5nQm94OiAwIDAgMzAwIDMwMCAKJSVCZWdpblByb2xvZwpzYXZlCjUwIGRpY3QgYmVnaW4KL3EgeyBnc2F2ZSB9IGJpbmQgZGVmCi9RIHsgZ3Jlc3RvcmUgfSBiaW5kIGRlZgovcyB7IHNjYWxlIH0gYmluZCBkZWYKL3QgeyB0cmFuc2xhdGUgfSBiaW5kIGRlZgovciB7IHJvdGF0ZSB9IGJpbmQgZGVmCi9uIHsgbmV3cGF0aCB9IGJpbmQgZGVmCi9tIHsgbW92ZXRvIH0gYmluZCBkZWYKL2wgeyBsaW5ldG8gfSBiaW5kIGRlZgovYyB7IGN1cnZldG8gfSBiaW5kIGRlZgoveiB7IGNsb3NlcGF0aCB9IGJpbmQgZGVmCi9mIHsgZW9maWxsIH0gYmluZCBkZWYKL3JnYiB7IHNldHJnYmNvbG9yIH0gYmluZCBkZWYKL2NteWsgeyBzZXRjbXlrY29sb3IgfSBiaW5kIGRlZgovZ3JheSB7IHNldGdyYXkgfSBiaW5kIGRlZgolJUVuZFByb2xvZwoxIC0xIHMKMCAtMzAwIHQKMCAwIG0gMzAwIDAgbCAzMDAgMzAwIGwgMCAzMDAgbCB6IDEgMSAxIHJnYiBmCjE0LjI4NiAxNC4yODYgcwowIDAgdApuIDkgMCBtIDkgMSBsIDggMSBsIDggMyBsIDkgMyBsIDkgNCBsIDggNCBsIDggOCBsIDYgOCBsIDYgOSBsIDUgOSBsIDUgMTAgbAogMyAxMCBsIDMgMTIgbCAyIDEyIGwgMiAxMyBsIDQgMTMgbCA0IDExIGwgNSAxMSBsIDUgMTIgbCA2IDEyIGwgNiAxMyBsIDggMTMKIGwgOCAxNSBsIDkgMTUgbCA5IDE3IGwgOCAxNyBsIDggMTggbCA5IDE4IGwgOSAxNyBsIDEwIDE3IGwgMTAgMTkgbCA4IDE5IGwgOAogMjEgbCAxMCAyMSBsIDEwIDE5IGwgMTEgMTkgbCAxMSAyMSBsIDE1IDIxIGwgMTUgMjAgbCAxNiAyMCBsIDE2IDIxIGwgMTcgMjEKIGwgMTcgMjAgbCAxOCAyMCBsIDE4IDE5IGwgMTcgMTkgbCAxNyAxNyBsIDE4IDE3IGwgMTggMTggbCAyMCAxOCBsIDIwIDE5IGwKIDIxIDE5IGwgMjEgMTcgbCAxOCAxNyBsIDE4IDE1IGwgMjAgMTUgbCAyMCAxNiBsIDIxIDE2IGwgMjEgMTUgbCAyMCAxNSBsIDIwCiAxNCBsIDIxIDE0IGwgMjEgOSBsIDIwIDkgbCAyMCA4IGwgMTggOCBsIDE4IDkgbCAxOSA5IGwgMTkgMTAgbCAxNyAxMCBsIDE3IDgKIGwgMTQgOCBsIDE0IDkgbCAxMyA5IGwgMTMgNiBsIDEyIDYgbCAxMiAxMSBsIDExIDExIGwgMTEgMTAgbCAxMCAxMCBsIDEwIDkgbAogMTEgOSBsIDExIDYgbCAxMCA2IGwgMTAgNyBsIDkgNyBsIDkgNCBsIDEwIDQgbCAxMCAwIGwgeiAxMiAwIG0gMTIgMSBsIDExIDEKIGwgMTEgNSBsIDEyIDUgbCAxMiA0IGwgMTMgNCBsIDEzIDIgbCAxMiAyIGwgMTIgMSBsIDEzIDEgbCAxMyAwIGwgeiAwIDggbSAwCiAxMiBsIDEgMTIgbCAxIDExIGwgMiAxMSBsIDIgMTAgbCAxIDEwIGwgMSA5IGwgMiA5IGwgMiA4IGwgeiAzIDggbSAzIDkgbCA0IDkKIGwgNCA4IGwgeiA4IDggbSA4IDEwIGwgNyAxMCBsIDcgOSBsIDYgOSBsIDYgMTAgbCA1IDEwIGwgNSAxMSBsIDYgMTEgbCA2IDEyCiBsIDcgMTIgbCA3IDExIGwgOSAxMSBsIDkgMTQgbCAxMCAxNCBsIDEwIDE1IGwgMTEgMTUgbCAxMSAxNiBsIDEwIDE2IGwgMTAgMTcKIGwgMTIgMTcgbCAxMiAxNiBsIDEzIDE2IGwgMTMgMTcgbCAxNSAxNyBsIDE1IDE4IGwgMTQgMTggbCAxNCAxOSBsIDEzIDE5IGwKIDEzIDIwIGwgMTUgMjAgbCAxNSAxOSBsIDE2IDE5IGwgMTYgMTcgbCAxNyAxNyBsIDE3IDE2IGwgMTYgMTYgbCAxNiAxNCBsIDE4CiAxNCBsIDE4IDEzIGwgMTkgMTMgbCAxOSAxMSBsIDIwIDExIGwgMjAgMTAgbCAxOSAxMCBsIDE5IDExIGwgMTggMTEgbCAxOCAxMgogbCAxNyAxMiBsIDE3IDEzIGwgMTYgMTMgbCAxNiAxMSBsIDE3IDExIGwgMTcgMTAgbCAxNiAxMCBsIDE2IDkgbCAxNCA5IGwgMTQKIDEwIGwgMTMgMTAgbCAxMyAxMSBsIDEyIDExIGwgMTIgMTIgbCAxMyAxMiBsIDEzIDExIGwgMTQgMTEgbCAxNCAxMCBsIDE1IDEwCiBsIDE1IDEyIGwgMTQgMTIgbCAxNCAxMyBsIDEzIDEzIGwgMTMgMTQgbCAxNCAxNCBsIDE0IDE2IGwgMTMgMTYgbCAxMyAxNSBsCiAxMSAxNSBsIDExIDE0IGwgMTIgMTQgbCAxMiAxMyBsIDExIDEzIGwgMTEgMTIgbCAxMCAxMiBsIDEwIDEwIGwgOSAxMCBsIDkgOAogbCB6IDYgMTAgbSA2IDExIGwgNyAxMSBsIDcgMTAgbCB6IDEwIDEzIG0gMTAgMTQgbCAxMSAxNCBsIDExIDEzIGwgeiAxMSAxOCBtCiAxMSAxOSBsIDEyIDE5IGwgMTIgMTggbCB6IDE5IDIwIG0gMTkgMjEgbCAyMCAyMSBsIDIwIDIwIGwgeiAwIDAgbSAwIDcgbCA3IDcKIGwgNyAwIGwgeiAxIDEgbSAxIDYgbCA2IDYgbCA2IDEgbCB6IDIgMiBtIDIgNSBsIDUgNSBsIDUgMiBsIHogMTQgMCBtIDE0IDcgbAogMjEgNyBsIDIxIDAgbCB6IDE1IDEgbSAxNSA2IGwgMjAgNiBsIDIwIDEgbCB6IDE2IDIgbSAxNiA1IGwgMTkgNSBsIDE5IDIgbCB6CiAwIDE0IG0gMCAyMSBsIDcgMjEgbCA3IDE0IGwgeiAxIDE1IG0gMSAyMCBsIDYgMjAgbCA2IDE1IGwgeiAyIDE2IG0gMiAxOSBsIDUKIDE5IGwgNSAxNiBsIHogMCAwIDAgcmdiIGYKJSVUUkFJTEVSCmVuZCByZXN0b3JlCiUlRU9G', 'data:image/png;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgd2lkdGg9IjMwMCIgaGVpZ2h0PSIzMDAiIHZpZXdCb3g9IjAgMCAzMDAgMzAwIj48cmVjdCB4PSIwIiB5PSIwIiB3aWR0aD0iMzAwIiBoZWlnaHQ9IjMwMCIgZmlsbD0iI2ZmZmZmZiIvPjxnIHRyYW5zZm9ybT0ic2NhbGUoMTQuMjg2KSI+PGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMCwwKSI+PHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBkPSJNOSAwTDkgMUw4IDFMOCAzTDkgM0w5IDRMOCA0TDggOEw2IDhMNiA5TDUgOUw1IDEwTDMgMTBMMyAxMkwyIDEyTDIgMTNMNCAxM0w0IDExTDUgMTFMNSAxMkw2IDEyTDYgMTNMOCAxM0w4IDE1TDkgMTVMOSAxN0w4IDE3TDggMThMOSAxOEw5IDE3TDEwIDE3TDEwIDE5TDggMTlMOCAyMUwxMCAyMUwxMCAxOUwxMSAxOUwxMSAyMUwxNSAyMUwxNSAyMEwxNiAyMEwxNiAyMUwxNyAyMUwxNyAyMEwxOCAyMEwxOCAxOUwxNyAxOUwxNyAxN0wxOCAxN0wxOCAxOEwyMCAxOEwyMCAxOUwyMSAxOUwyMSAxN0wxOCAxN0wxOCAxNUwyMCAxNUwyMCAxNkwyMSAxNkwyMSAxNUwyMCAxNUwyMCAxNEwyMSAxNEwyMSA5TDIwIDlMMjAgOEwxOCA4TDE4IDlMMTkgOUwxOSAxMEwxNyAxMEwxNyA4TDE0IDhMMTQgOUwxMyA5TDEzIDZMMTIgNkwxMiAxMUwxMSAxMUwxMSAxMEwxMCAxMEwxMCA5TDExIDlMMTEgNkwxMCA2TDEwIDdMOSA3TDkgNEwxMCA0TDEwIDBaTTEyIDBMMTIgMUwxMSAxTDExIDVMMTIgNUwxMiA0TDEzIDRMMTMgMkwxMiAyTDEyIDFMMTMgMUwxMyAwWk0wIDhMMCAxMkwxIDEyTDEgMTFMMiAxMUwyIDEwTDEgMTBMMSA5TDIgOUwyIDhaTTMgOEwzIDlMNCA5TDQgOFpNOCA4TDggMTBMNyAxMEw3IDlMNiA5TDYgMTBMNSAxMEw1IDExTDYgMTFMNiAxMkw3IDEyTDcgMTFMOSAxMUw5IDE0TDEwIDE0TDEwIDE1TDExIDE1TDExIDE2TDEwIDE2TDEwIDE3TDEyIDE3TDEyIDE2TDEzIDE2TDEzIDE3TDE1IDE3TDE1IDE4TDE0IDE4TDE0IDE5TDEzIDE5TDEzIDIwTDE1IDIwTDE1IDE5TDE2IDE5TDE2IDE3TDE3IDE3TDE3IDE2TDE2IDE2TDE2IDE0TDE4IDE0TDE4IDEzTDE5IDEzTDE5IDExTDIwIDExTDIwIDEwTDE5IDEwTDE5IDExTDE4IDExTDE4IDEyTDE3IDEyTDE3IDEzTDE2IDEzTDE2IDExTDE3IDExTDE3IDEwTDE2IDEwTDE2IDlMMTQgOUwxNCAxMEwxMyAxMEwxMyAxMUwxMiAxMUwxMiAxMkwxMyAxMkwxMyAxMUwxNCAxMUwxNCAxMEwxNSAxMEwxNSAxMkwxNCAxMkwxNCAxM0wxMyAxM0wxMyAxNEwxNCAxNEwxNCAxNkwxMyAxNkwxMyAxNUwxMSAxNUwxMSAxNEwxMiAxNEwxMiAxM0wxMSAxM0wxMSAxMkwxMCAxMkwxMCAxMEw5IDEwTDkgOFpNNiAxMEw2IDExTDcgMTFMNyAxMFpNMTAgMTNMMTAgMTRMMTEgMTRMMTEgMTNaTTExIDE4TDExIDE5TDEyIDE5TDEyIDE4Wk0xOSAyMEwxOSAyMUwyMCAyMUwyMCAyMFpNMCAwTDAgN0w3IDdMNyAwWk0xIDFMMSA2TDYgNkw2IDFaTTIgMkwyIDVMNSA1TDUgMlpNMTQgMEwxNCA3TDIxIDdMMjEgMFpNMTUgMUwxNSA2TDIwIDZMMjAgMVpNMTYgMkwxNiA1TDE5IDVMMTkgMlpNMCAxNEwwIDIxTDcgMjFMNyAxNFpNMSAxNUwxIDIwTDYgMjBMNiAxNVpNMiAxNkwyIDE5TDUgMTlMNSAxNloiIGZpbGw9IiMwMDAwMDAiLz48L2c+PC9nPjwvc3ZnPgo=', '2022-12-08 06:52:42', '2022-12-08 06:52:42');

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sms` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qrcode_png` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `qrcode_eps` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `qrcode_svg` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms`
--

INSERT INTO `sms` (`id`, `sms`, `qrcode_png`, `qrcode_eps`, `qrcode_svg`, `created_at`, `updated_at`) VALUES
(2, '03311321578', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAAEsCAAAAABcFtGpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0QA/4ePzL8AAAW3SURBVHja7d29a9tAGMfxvNg1geAl2NBsheKWZrDXQkenYxd36z/QpdChZHMw8RYydMw/0M1dQqHQZCqFrvLQQELmQB0KwQRC7DbuqueCnzwSJ8kv39926HQnfSIf6CLpFhbSyGh8AlmzrlTtyKpNsTGN01haIGCBBRZYYIFFwAILLLDAAouYk0u/y08n5qq7VxON1fPTbFnZdtI2N3N4JIrBerhU0PZM5DzuXFklH31cJPSnLSVS1XwejFkM8GCBBRZYBCywwAILrBmNOutwfWpvqLKSwtF2w4XiI+tuvs5DxTqt2TsJqslbycNp7lj383Ue/AwZs8ACCyywCFhggQUWWGARsCIkgwdDVuuieASWkq2tcKlb42fImAUWAQsssMACCywCFlhgcSOtZPcQLHOu5KRM51W4tKjtGTwLl5bnActNPpGqjFkM8GCBBRYBCyywwAILLAJW6jfSlcDeUCWJo/v410sfvs5DxVqpZvyn3PDTjK/z4GcIFlhggQUWAQsssMACa15upC+yPR6ne/GZw5u+2FYoRmhoiiLWMWnKbZ3wtoGz44DVURizwCJggQUWWGCBRcACCyywpjXZvzTweoqwRjPyVx/xM2TMAgssAhZYYIEFFlgELLDSuJHe1ra+fBEq3LbkxtZ46P5e6ieyba+6Kj5nqa77+uSNvVn7Qxsy+oqovXACtWoiD4bUxY51rarsI5P5rPCDROeMWQzwYEEAFlhggQUWWBCABVbmsw765q6y7ViUUlmT1X5wifSRk7fy3bYoqg9t1ERJrGVa7Gg7au/c1N+Kovb5yLY8Vq3L2A+fyD5yjST+WIVG7F0bCezo6xJkzAILLLDAAouABRZYYIE1o/H3H+lhxmcyNN+Bxz5Ub1i1uDvKZw0ext3x6IEo9sKPCOTUqmqrcuNI+5pHGumMrInyYEhvfDMD9XAC5QEXxiwGeLDAAgssAhZYYIEFFlgk+49g7O/H3PHnprXmr/d+DnVR3q7f/guXjmvaroOYXToPdESIWJP1sqxVFVM03QjnISfChtqVtRTlZ5n+Cqn5tFvNM2YxwIMFFlhgEbDAAgsssOYhuc9JtHrzRZYbfpo9O0tZxzmPXIQ3Nep71vvPvtOq9omKzuPx2z7IBzPUYw1Eac0LlnMekeazklmitTpRzTBmgQUWWGCBRcACCyywwJrD5CbseLJeStVZ99XBivBOxaq5ZiHumxpD5wEG2U5b2aalqDUj80Wd2RilnmQWsLUnSh+MWQzwYIEFFlgELLDAAgsssIgz67CYRi+x1wDVPlfhvKmh9KG/YTG1V1Z+ZF+5JHbk6igj7bUNObPBz5AxCyywwAKLgAUWWGCBBRbJzeNJy/VbW0vWqu4MTc/P4TjPd4jpk/6N2FYsjG/mz23MPmTu+QhGeNrBeYqmrF9ZJR9W6oNDRXs7a3H7iJ1CSemDMYsBHiywwAKLgAUWWGCBNaNRZx2uT+0NeVqT1VnkUnx/4OJ8krFOa/aGAi/fVRjWlBmB7/JVkaa5x3X53oT9ux/O2rLTPJ9l/mhLSdSMsOqOs7YsYxYDPFhggQUWAQsssMACa0aTwb2hXCfjvjvrmNvy5poRbhYzwGppH6Fw3qmI8DqKjLbgR4Q+MsfScxgubE5WH4xZDPBggQUWWAQssMACCyywyMTdSG+CFU5L+8CoM18iPpN5oD7RoS2tquWr8h7LZTlrLG3d1zvzcPaTzid/uTBmMcCDBRZYYBGwwAILLLBmNBncG/74LYobT5W6B376cCLXoW34waoE9sOrmGt+kw90dDQsbZ6h2TD3IXMkV3odjL8FXwvsWCvVif5VJH90S1XGLAZ4sMACCywCFlhggQXWPOTOveHF9Bx7EofqfE2yUNSwytNjpb6Ooq3CWn8uisvhgrMma3NHvbJmJO/EuzsO6w5jFgM8WGCBRcACCyywwAKLgBUz/wHxwxTdGx9qZgAAAABJRU5ErkJggg==', 'data:image/png;base64,JSFQUy1BZG9iZS0zLjAgRVBTRi0zLjAKJSVDcmVhdG9yOiBCYWNvblFyQ29kZQolJUJvdW5kaW5nQm94OiAwIDAgMzAwIDMwMCAKJSVCZWdpblByb2xvZwpzYXZlCjUwIGRpY3QgYmVnaW4KL3EgeyBnc2F2ZSB9IGJpbmQgZGVmCi9RIHsgZ3Jlc3RvcmUgfSBiaW5kIGRlZgovcyB7IHNjYWxlIH0gYmluZCBkZWYKL3QgeyB0cmFuc2xhdGUgfSBiaW5kIGRlZgovciB7IHJvdGF0ZSB9IGJpbmQgZGVmCi9uIHsgbmV3cGF0aCB9IGJpbmQgZGVmCi9tIHsgbW92ZXRvIH0gYmluZCBkZWYKL2wgeyBsaW5ldG8gfSBiaW5kIGRlZgovYyB7IGN1cnZldG8gfSBiaW5kIGRlZgoveiB7IGNsb3NlcGF0aCB9IGJpbmQgZGVmCi9mIHsgZW9maWxsIH0gYmluZCBkZWYKL3JnYiB7IHNldHJnYmNvbG9yIH0gYmluZCBkZWYKL2NteWsgeyBzZXRjbXlrY29sb3IgfSBiaW5kIGRlZgovZ3JheSB7IHNldGdyYXkgfSBiaW5kIGRlZgolJUVuZFByb2xvZwoxIC0xIHMKMCAtMzAwIHQKMCAwIG0gMzAwIDAgbCAzMDAgMzAwIGwgMCAzMDAgbCB6IDEgMSAxIHJnYiBmCjE0LjI4NiAxNC4yODYgcwowIDAgdApuIDkgMCBtIDkgMSBsIDggMSBsIDggMyBsIDkgMyBsIDkgNCBsIDggNCBsIDggOCBsIDYgOCBsIDYgOSBsIDggOSBsIDggOCBsIDkKIDggbCA5IDEwIGwgNSAxMCBsIDUgOSBsIDQgOSBsIDQgOCBsIDMgOCBsIDMgOSBsIDIgOSBsIDIgOCBsIDAgOCBsIDAgOSBsIDEgOQogbCAxIDExIGwgMiAxMSBsIDIgMTIgbCAwIDEyIGwgMCAxMyBsIDMgMTMgbCAzIDEyIGwgNCAxMiBsIDQgMTEgbCA4IDExIGwgOAogMTUgbCA5IDE1IGwgOSAxMiBsIDExIDEyIGwgMTEgMTMgbCAxMCAxMyBsIDEwIDE0IGwgMTEgMTQgbCAxMSAxNSBsIDEzIDE1IGwKIDEzIDE2IGwgMTIgMTYgbCAxMiAxNyBsIDExIDE3IGwgMTEgMTYgbCAxMCAxNiBsIDEwIDE3IGwgOCAxNyBsIDggMTggbCAxMCAxOAogbCAxMCAyMSBsIDE1IDIxIGwgMTUgMjAgbCAxNiAyMCBsIDE2IDIxIGwgMTcgMjEgbCAxNyAyMCBsIDE4IDIwIGwgMTggMTkgbAogMTcgMTkgbCAxNyAxNyBsIDE4IDE3IGwgMTggMTggbCAyMCAxOCBsIDIwIDE5IGwgMjEgMTkgbCAyMSAxNyBsIDE4IDE3IGwgMTgKIDE1IGwgMTcgMTUgbCAxNyAxNCBsIDE4IDE0IGwgMTggMTEgbCAxOSAxMSBsIDE5IDEwIGwgMjAgMTAgbCAyMCAxMSBsIDIxIDExCiBsIDIxIDkgbCAyMCA5IGwgMjAgOCBsIDE4IDggbCAxOCAxMCBsIDE3IDEwIGwgMTcgOCBsIDE0IDggbCAxNCA5IGwgMTMgOSBsCiAxMyA2IGwgMTIgNiBsIDEyIDExIGwgOSAxMSBsIDkgMTAgbCAxMCAxMCBsIDEwIDkgbCAxMSA5IGwgMTEgNiBsIDEwIDYgbCAxMAogNyBsIDkgNyBsIDkgNCBsIDEwIDQgbCAxMCAwIGwgeiAxMiAwIG0gMTIgMSBsIDExIDEgbCAxMSA1IGwgMTIgNSBsIDEyIDQgbAogMTMgNCBsIDEzIDIgbCAxMiAyIGwgMTIgMSBsIDEzIDEgbCAxMyAwIGwgeiAxNCA5IG0gMTQgMTAgbCAxMyAxMCBsIDEzIDExIGwKIDEyIDExIGwgMTIgMTIgbCAxMyAxMiBsIDEzIDExIGwgMTQgMTEgbCAxNCAxMCBsIDE1IDEwIGwgMTUgMTIgbCAxNCAxMiBsIDE0CiAxMyBsIDEzIDEzIGwgMTMgMTQgbCAxNCAxNCBsIDE0IDE2IGwgMTMgMTYgbCAxMyAxNyBsIDE1IDE3IGwgMTUgMTggbCAxNCAxOAogbCAxNCAxOSBsIDEzIDE5IGwgMTMgMjAgbCAxNSAyMCBsIDE1IDE5IGwgMTYgMTkgbCAxNiAxNyBsIDE3IDE3IGwgMTcgMTYgbAogMTYgMTYgbCAxNiAxNCBsIDE3IDE0IGwgMTcgMTMgbCAxNiAxMyBsIDE2IDExIGwgMTcgMTEgbCAxNyAxMCBsIDE2IDEwIGwgMTYKIDkgbCB6IDYgMTIgbSA2IDEzIGwgNyAxMyBsIDcgMTIgbCB6IDIwIDEyIG0gMjAgMTMgbCAxOSAxMyBsIDE5IDE1IGwgMjAgMTUgbAogMjAgMTYgbCAyMSAxNiBsIDIxIDE1IGwgMjAgMTUgbCAyMCAxNCBsIDIxIDE0IGwgMjEgMTIgbCB6IDExIDEzIG0gMTEgMTQgbAogMTIgMTQgbCAxMiAxMyBsIHogMTAgMTcgbSAxMCAxOCBsIDExIDE4IGwgMTEgMTkgbCAxMiAxOSBsIDEyIDE4IGwgMTEgMTggbAogMTEgMTcgbCB6IDggMTkgbSA4IDIxIGwgOSAyMSBsIDkgMTkgbCB6IDE5IDIwIG0gMTkgMjEgbCAyMCAyMSBsIDIwIDIwIGwgeiAwCiAwIG0gMCA3IGwgNyA3IGwgNyAwIGwgeiAxIDEgbSAxIDYgbCA2IDYgbCA2IDEgbCB6IDIgMiBtIDIgNSBsIDUgNSBsIDUgMiBsIHoKIDE0IDAgbSAxNCA3IGwgMjEgNyBsIDIxIDAgbCB6IDE1IDEgbSAxNSA2IGwgMjAgNiBsIDIwIDEgbCB6IDE2IDIgbSAxNiA1IGwKIDE5IDUgbCAxOSAyIGwgeiAwIDE0IG0gMCAyMSBsIDcgMjEgbCA3IDE0IGwgeiAxIDE1IG0gMSAyMCBsIDYgMjAgbCA2IDE1IGwgegogMiAxNiBtIDIgMTkgbCA1IDE5IGwgNSAxNiBsIHogMCAwIDAgcmdiIGYKJSVUUkFJTEVSCmVuZCByZXN0b3JlCiUlRU9G', 'data:image/png;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgd2lkdGg9IjMwMCIgaGVpZ2h0PSIzMDAiIHZpZXdCb3g9IjAgMCAzMDAgMzAwIj48cmVjdCB4PSIwIiB5PSIwIiB3aWR0aD0iMzAwIiBoZWlnaHQ9IjMwMCIgZmlsbD0iI2ZmZmZmZiIvPjxnIHRyYW5zZm9ybT0ic2NhbGUoMTQuMjg2KSI+PGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMCwwKSI+PHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBkPSJNOSAwTDkgMUw4IDFMOCAzTDkgM0w5IDRMOCA0TDggOEw2IDhMNiA5TDggOUw4IDhMOSA4TDkgMTBMNSAxMEw1IDlMNCA5TDQgOEwzIDhMMyA5TDIgOUwyIDhMMCA4TDAgOUwxIDlMMSAxMUwyIDExTDIgMTJMMCAxMkwwIDEzTDMgMTNMMyAxMkw0IDEyTDQgMTFMOCAxMUw4IDE1TDkgMTVMOSAxMkwxMSAxMkwxMSAxM0wxMCAxM0wxMCAxNEwxMSAxNEwxMSAxNUwxMyAxNUwxMyAxNkwxMiAxNkwxMiAxN0wxMSAxN0wxMSAxNkwxMCAxNkwxMCAxN0w4IDE3TDggMThMMTAgMThMMTAgMjFMMTUgMjFMMTUgMjBMMTYgMjBMMTYgMjFMMTcgMjFMMTcgMjBMMTggMjBMMTggMTlMMTcgMTlMMTcgMTdMMTggMTdMMTggMThMMjAgMThMMjAgMTlMMjEgMTlMMjEgMTdMMTggMTdMMTggMTVMMTcgMTVMMTcgMTRMMTggMTRMMTggMTFMMTkgMTFMMTkgMTBMMjAgMTBMMjAgMTFMMjEgMTFMMjEgOUwyMCA5TDIwIDhMMTggOEwxOCAxMEwxNyAxMEwxNyA4TDE0IDhMMTQgOUwxMyA5TDEzIDZMMTIgNkwxMiAxMUw5IDExTDkgMTBMMTAgMTBMMTAgOUwxMSA5TDExIDZMMTAgNkwxMCA3TDkgN0w5IDRMMTAgNEwxMCAwWk0xMiAwTDEyIDFMMTEgMUwxMSA1TDEyIDVMMTIgNEwxMyA0TDEzIDJMMTIgMkwxMiAxTDEzIDFMMTMgMFpNMTQgOUwxNCAxMEwxMyAxMEwxMyAxMUwxMiAxMUwxMiAxMkwxMyAxMkwxMyAxMUwxNCAxMUwxNCAxMEwxNSAxMEwxNSAxMkwxNCAxMkwxNCAxM0wxMyAxM0wxMyAxNEwxNCAxNEwxNCAxNkwxMyAxNkwxMyAxN0wxNSAxN0wxNSAxOEwxNCAxOEwxNCAxOUwxMyAxOUwxMyAyMEwxNSAyMEwxNSAxOUwxNiAxOUwxNiAxN0wxNyAxN0wxNyAxNkwxNiAxNkwxNiAxNEwxNyAxNEwxNyAxM0wxNiAxM0wxNiAxMUwxNyAxMUwxNyAxMEwxNiAxMEwxNiA5Wk02IDEyTDYgMTNMNyAxM0w3IDEyWk0yMCAxMkwyMCAxM0wxOSAxM0wxOSAxNUwyMCAxNUwyMCAxNkwyMSAxNkwyMSAxNUwyMCAxNUwyMCAxNEwyMSAxNEwyMSAxMlpNMTEgMTNMMTEgMTRMMTIgMTRMMTIgMTNaTTEwIDE3TDEwIDE4TDExIDE4TDExIDE5TDEyIDE5TDEyIDE4TDExIDE4TDExIDE3Wk04IDE5TDggMjFMOSAyMUw5IDE5Wk0xOSAyMEwxOSAyMUwyMCAyMUwyMCAyMFpNMCAwTDAgN0w3IDdMNyAwWk0xIDFMMSA2TDYgNkw2IDFaTTIgMkwyIDVMNSA1TDUgMlpNMTQgMEwxNCA3TDIxIDdMMjEgMFpNMTUgMUwxNSA2TDIwIDZMMjAgMVpNMTYgMkwxNiA1TDE5IDVMMTkgMlpNMCAxNEwwIDIxTDcgMjFMNyAxNFpNMSAxNUwxIDIwTDYgMjBMNiAxNVpNMiAxNkwyIDE5TDUgMTlMNSAxNloiIGZpbGw9IiMwMDAwMDAiLz48L2c+PC9nPjwvc3ZnPgo=', '2022-12-08 07:04:17', '2022-12-08 07:04:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `websites`
--

CREATE TABLE `websites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `qrcode_png` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `qrcode_eps` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `qrcode_svg` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `websites`
--

INSERT INTO `websites` (`id`, `link`, `qrcode_png`, `qrcode_eps`, `qrcode_svg`, `created_at`, `updated_at`) VALUES
(1, 'https://www.google.com/search?q=eps+format&oq=eps+format&aqs=chrome.0.0i512l7j69i61.3568j0j7&sourceid=chrome&ie=UTF-8', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAAEsCAAAAABcFtGpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0QA/4ePzL8AABUVSURBVHja7V19cFXXcd8nPUlGHyAglgTYImDFuAYiTBM+lIAbI7l2PO2IpARQpi2Z4uDpBJCbhpDxuDK12xBiOyS0DsnkQ3ZSKtdJ0fTDdoPczOCgiMFgK8i2MB9G2GCBiyPQB0JPerd/7N7H3evV0bn3PQGSdv+57+zZs+fc37vv3H17zu4BCEGdjuM4TpOP2+s4juM0+Lgxx0Mdsr4aR6A2WbbWcRzHiZsH2O04juPspVIlKqygYpPjOI7TGeK+00BJwVKwFCwFS8Ea6xRNnartySr41nDdZKoUR9wPpy2Ep7l2Vi4AwP5FJtmqb+N1KuOewcudx/DamgcAAOMmAgBAXpdJIQ1wfC4AgJMmDtsdYHc2AEDsfc4l2YIoAEBXXvAbv/JkTR2ySTzQ1zDVhjk1wG+gQOLmTPAU+nldBmq/7JZvzJA0FA09E53ROUsneAVLwRr5psOA/F9/8oSw+k/SW+GmTAAAOOGrPhFUX/8pXj5/HufuPMZtF9u+Q6+2LKHuwnmxyfR0A1htt4ht6lba385OvOTj5YuNeD10BwDABZ/628SmRA/gJfdxeu8BAMBxalLytwAA8Dop3F3JmvJuKu8BAIBfErdpoTDqF1eJN3N85jAZpUS3LwnddJ23cErk+mQ3BND7S52zdIJXsBQs9TokR04Absp6cUYIWEXcuFkq1s6X25j8ISSTLnKP8Z/EcpPa9OsIrLm/wvHWy5ZgFACgfrnvf3xkSLU3vydxb0WuI08fM/fpnKUTvIKlYCkpWNfGzvq6qfKhwOr+fT9eF37Oy/1ZC17v+mP7oaycf92A9UlyAU3ew9h7ZyOXittY5fpHyFwy6H2Hmmxn3OPEvR3bc/dTG6HS2MjYd18/T1baJAAAiPn5kwAAegZpNClF4+Z62nTO0glewVKwlFI4wXe/Hbrp61YeFTIW5ojcANQyTGBNrhOlZotjoI0hFX/F2NMBAOAGUvS9Rqlp5TGLoVXjJRe3yt71B1iUV2HqDJWX53Khm8U7lG98sgmsCStDAC61SSPm91L1rZKb7Ihcm1UJ8KGNIX76XMbgdXPm6JylE7yCpWCNWtMhnqSmOIc/nrIhxsN/rXGpmGYWsgFrWrL39Pl68josAQDoySF2KV6axTa+Sl50S7Q4c5ZtkyzJsdBbzkqAG3n8G0PSwzxZw0SviKs7RM/OAgA4V0jF1wAA4LtkYH1pIwAM6s1B2Q0yWI3ZAAAvk7kxYzcApMJho3OWgqVgKVgK1qi3s8LT/az0zDMG0Utc9nGTopb7Q49oo0lveIqEiRXOBQAApxtLeUbZmMl0CEJkZ3WxMfSSo2Fcurdy3S68NixkA6RbzYkwRUGerNzwOGPT2NX9KfDx3mCqpHIidicrwySrc5ZO8AqWgjXaTIf9vFw03Vt686LYaEHkmo330u/o7bIAAABe5++09E+Y2h7Cy20sEOkAeWjm5AAAxA8YwfLF7u5kwR+128RGnd43ScbzFoZcqSh0bo3YhGQ/K9WdovGWHAUAgB/sYLVlxj2l1JS7aO4nv8XhOQAAHYuG2Si910JmxgyJ+7QsPLsYwBO7o3OWTvAKlpKClUKvwxB/+LA6Q5QNwg1EMYsRxiC4EFgPLQEW5S0bhw6FTM71Ef2Nf/5eAIBYJq/0re64Ng6G/eYbB0O98fWW3MV4LWQyezJ5ES+NnFsu3oRsHcxlsofbjQM97U0hl1hKOy8lmFvr2kOO4zhOn0/RXsdxHNd9cwUsUxo7l8Q0drlYrHFNPz7ADsdxHOeQT5GYxo7IbBZuQqEinbN0glewFCwFawzbWac2GmTjn7fR+OSTSQ7pp/8xQsDqrzcJi5UZvaz4GzJuqn7C2FkmvTXf8JYu1l+VO1/7T+zW+N7dk2SnPGBjwQehrEDspGVTRlmB63TO0glewVKwRqTp8OabUvWrxsYvAQBA5hJDJSxDk+Roykb8koXMbyXmy30B1C8TwaK/5o3lYlPOLeVrKbRls+JXUstdtDkDN4Ycoo0h61d4ZU6sscdoxTLWaQlZJugtmrmXVbrDbsj0vtoe3WNQv9jVQOtZcbbat7UMwaLHotFqxOwZ2h/muWAagmT8o1irI6KiCVjqN/ZmpOJiAAD4wDhsnbN0glewFKwR7HUYgnoMdb1yDExfX5J63crsEHeHTdNuSBqmnuBgNecYKleTs6CKTAdim5qMJ9ktWwxCXaQB95RmUhMxKDVSBaxzsiAqMRzlthuZ8E2ShnRXA98ntHkzXmnNY2t41CtQQyUV5dUdovXSatFZq27OOtZUxVtWOmFpp85ZOsErWAqWgqV21rBR+aXgbchv8ZXVXuY39torWJ38xkt3K0gsMDVx06Gf2KSQSmUkdAiLA1hZYhxSWywWi8USG0OwJd8Y4tJ6WUM3G2g/P98w+ScrkvQjlm5+ZKOhH/fodfOD0TlLwVKwFKwRbDp0vhRCRz0rfXLa1Rh3/XUA1vshwnP3+JK6BgDrkMidYmHwyOMso80eou/rCb6eMZ+N4S3aGLJJTO42/1oapS5lz0qxwjsMdXNZKRFOVpoGAPCWSYMe2acTvIKlYI1I0+ECfZiQYsUXxHI0xySFY7jcm7peJRofsdAgDiWaTx9Os7Nki2gDB98JUoobLy79SOyGPAC4VaMnn3Pp5bse85b+Cb3FfUf2YV7cndVD33DEdTfsYL3syLcAC8N+o64GhG4SFbexjSG+PaUJwtid4y5Y6NXYxGVKeeyOj3q9vpPE6g66bHa70DEHS63fenIcx3G2c6YYu+N30exGt5DV09dkWM5J5OSP6+qOTvAKloKlYI0lO8v9cKeFcPfHhpb59ZdNtS+QhrdEW0dWz7mPPYbG0sEUAfCpc3itnx287c44krvo46UBc1M0HRp8XG468DezazrUoP4g6b9K+AAd0XRoYMOvEE0HNz3uYZPpsBU1fMhFExm8NHynU0aGqWUktQPUOUsneAVLwRqRpoNLPKfVqiwAgHMvDPMong7dZHUmAMAZOdLkXRTK+TOhrv9fePkgt0WekXob4n1xfhIAQAv5+kufBQCAx8lF8/xMJouLDy+5Yb9/5+V2nOU+GfSAPL2G99ZqGMm/0ibd2kVMUccEAIBXjQcZ0gbc4+QXKh4HANCVZ/OVtLJhB1vdmWUsGirz8wFgSN/cLOsxhLFibgnRJmMmgK7u6ASvYClYo8R0MNI5a+agbKT3DXVdvkieggB6TfR/FFw0OT3sHUdrRBk5mKa5UGDGCkVZN+xXJmpTI/X242pWzOUZ69eY1JahZ+HoLqZ+IhkzZIz5zt3hY9g0zvQGFRc5fJnZDstDkzOzBaFWHrtjs7rjI56ZrYzH7jSwm+IumsRXgHuC3eMNN2nsjk7wCpaCpWCNRTvL9+f7Cb44M/16Hz8P3v2d5Eq4/BFeLjfpe+opvF60cd/v5KYDUZ1FiGylUa8vqWvcoEg2HWRab+wUTYdBdjCt1Y0hOmcpWAqWgqU0iIum97uSVLvI/czHAQDiO0J0i1tLYVWhdYv/5Mm20r+SIgCeog0SK6YOLZswJzDKtp98EkUsk9jFubLXgSfPRw1H3dWdbwIAwGrKYobJ893zYZYdI6+DtETx+05m45GL5hHux6Fzd85eNpmFDcsAAC77UtE0YWxQJuZ8n8fO3UkcYIO5xzouyk9WdCqAJ1dasVeoxeo7KswCADgqajAyfTRxIhu2uU9W6rd7mIqt62hRSucsneAVLAVrRJsO/XxCPWUzIZ8KUInFrEIL0Ztt/vFbzf+nQnPltyH9x+/lb912KuLGEJdKv4QvR9oYQmfqVdznxX0KKaymFRYq8tidjbQ9FV8253xv/LZiAIC87T7jhumrtnEeuZnZ/ggAAP6bVncWiQp91hHuXHnWF7tjzszGV3fk2J0KyddhFbszSGa2NklokHN3bKjSmF6Fr+6oi0YneAVLwVKwxrSdRbEgXazko2b+GiehPQHiGHbs8L6Z/ZQr+g44rVkjDbBLVNQFhl4Szh5Dk4iPy1/QvrBfomQ2hphid/ymg7i6I1MJG6DVkX0hYneITuvPUOcsBUvBUrBGuenwiMx/ZHi73ZIiPT+R3S3bTG1ewEikKesY9xe/EERfbOJgycNu5+y6z3hLD7H0Khn05l9Xz5pUfcdnyBnAqvlrw73lHpe4ZKe9Rnbb7jJv5YPiTe1CV8VB8iytRbD2YGTLr93MbF/16m/bIhulZioIXlcQ4AEpCF0ZQOgjIvfGAIp0ztIJXsFSsEak18FMR4LXETtAck2zolsjAAAx2mAQuRWSVgwAAEfjKQOrFi+rRO4MdCvcxrmuK4Ud2fcxXvnYMamzT3QxRWvIPUL68dydE1QqsTkw0VVUb5BZ0cxki1jlPD6UIUiO3en0+i8SLhpTZjYf+ZLn1yDXdTTh6k6br1M8d6eVu2h4Zjb/uTs2G3C5i0YmddHoBK9gKVij2HQIQM4QZYs2joVQiCZhOuX/3t0XE73MS1jJlzHElX3Vu0ASu50+tGQBXMkY4tMrk6+3EtNQrDSYZHx0LMyDwDeG7DSF/ZZahPC4mdmqsFhm7NwY9rsdi+bhd4irO5zEI/s6dc7SCV7BUrAULKWEnbWBl1/fYJKmym3eAI+BB+nDExmSrJH+OenxPxxA9ELSYPnClIxRS83kzvhHLzMR6PRtJutmV+lg3HzGrSfXR82DJuMAL9/xxe68ggDw8ZY9b/j17Oe57tY+7i29uOqaWPA+yvH2kPhufUcjmM6EmBCEHeRwieAHUeicpWApWArWiDIdwjft9P1vf8Mg+/67vPwaL76KlztEbnB6g+JbPzrRpEfu1AgW7fY8spm8DhiJxE/Em+rbEorZy97wBcFQeA7Jcg37louyRFvILEAPwxJRA/AxGDf9/gPZLRT2O19UtJy2twywH9emxd7SWYrd2YoLetFKLH4r4c+4MuoETaoM8LVOXgIA0BP+iZ2PN+ffTFRWkKIf05SFAIPtZKb7d+kHnKtzlk7wCpaCNaJMB6tcCP1B7I1+Y9GiZdRGezTEuIOPiDeJun4VWlnIwhdzGXtDt/hiYjtzAQDS5cWIpbzI/TZyk0Yu22aIzD7CN4bkcIW+F2a52OkiiZtBRfGcYNi8mZdPG1ZsjBtDBlndkSlA2K/VxhCZqnzWAKt0vThrLZaqNOxXJ3gFS8FSsMaYi+ZrV7PXNbHgbcRFjW/y1F7jv29QsOE8K/Z8URL6w78BAIA/jxvB2mUx3tJGkzGCdFc3K1a4mdlmebvbx11hNXiqcCHzBBRzRdvcc3dWeF007+0ymXENi72/nlY3ef5cAIC4fO4OZdRtaMfr8SIAgI5pAQzhBGUPLRLJDtE0O0CL7KTHm21y0UiyHTpn6QSvYClYI9l0sKKX8fLpSIpH8TL/I83/Qy+RZNM+Za83a0HoofjAahC9GkU/l4TLl3pdNCkg6rx8i7fYwp088rk7VrE7bmY2XM95+OvU1NRk2zY2Mh7KE13GiomkrssERfGUP9c3zQLwnJqEnbYM049oSRDhuyI6Z+kEr2ApWKPUdOCpwzMjUi3n9tGaf5akwC2nZZi6sRlKGOIaslINVjvPoV63Et/BVKQ/7JgP3qWV9Xjdi3sdcohNbXhS1/mYfD1xZq+Jum6wEKJe8sXKeq4Bj+xLoyZvNzMNCX9AskZpGu0/uT/It/FcFACgvp4x8YhleLo+VT+Qv6wM2iKbbmYelR+do3OWTvAKloKlYI1dO+tue9n4PRI3dh8vP2pS0Urd/U/k2t2yHO6Dqzpw50Ne5jM/t1FY1McIU5wOuLWdyPVnDOnr6+vr828MoYwh2KIjgbvjOI5TS6WaPq/CASy4Tq1cLCbywTPZflYaZGNIEJJP+92KvQxmZ2UYVWYEbhNAX1qasSkrpqdfnacxQ+csneAVLAVr1LhoLOjcQXvZt1t5+cUUDb/xQqoBwYyvcK/EjTaJTUQzKM2VRffL2+65O2RZcT9R1Qbvt9HsC8T5bIpurU4OU8aB9i01VProJIX9uqs7mN3/HpKlPbvRhQGGtjAIe+E1/L3MzQYYfAlQGtlJUXI6HnpwRucsneAVLAVrJJoOXSEaBdjq0G2TmI0fYNPXJ1YGoXiXdZ+D3Ey3CFZeCLBwY0g2nUY30SR6d6PI5gfZ8bDf71fzmzKNcDopohDeMswS15PHevmRiJWrlof9UpP/ykvZ49iZdGa28Ofu1EqdupnZymySujbxzGz8yD5y0RTpnKUTvIKlYClYY8rOCt/0gG/Pw/6sZAczL3CLr/EEYt3zrg5Yp4uGFuarA/FmSWbZgNj0UCkAQGe+VFdATSaICnPRZfX34lk6l6nJ7j8FAIhnBDCsB0y/rdOs1P6h2J2hf5DxZH7YaaHngjTrXgPtEE4LXqlzlk7wCpaCNYJNhwvysstsiz2EUI+XxcUWsv+Gl4pJFrLPpviWT5606A030R48ZgLrvJzbtM4EVsWTAADwMDXdawMWybYysH7LZSinSxfJUtoSnkGl+st4nRoALGP6VvdkxC9EAABecTOz3ZesUZqgOSn6yrkef2a2Aikz28yr9AOco3OWTvAKloI1lrwOCfrAhvmBhQJ8N166FKCbECOzot9LipIAa/wmettOFip7XCYJubE745gU7jA5V0hFXN35YTVr6VKhxZDKPg0AAO9SHhE37PdWyTpYO8lkOvB7kjOzHZcHUefbgCse2Ue0Vzqyz01fa87MJp67Q1Rj8/2VJZuZ7bzOWTrBK1gKloKldlYq6Aumyueew+uZ4YndOTFF4jZNMTRZ8A5eG2ZfVbB6MwEA/rdcqqvEtYSL+VJlQZCFhtq/8JY28g24lE8NuscBAPxmKeeK1NfutfESxIb03rTUP1mRkHUQSVUv4TRaa9A5Syd4BUvBGiOmQ5tvJag2QNsfstJ0MZ74ytkk7J2L3PS1JvU/C343+/ZJzBYTWNNlt4PkhIF2WvqowODYrz7AaqseNX0bXLZGBKva1LKEg7X74wAAcIuo3ki70WY4QGs+m9Z5X4YtD5jASg+zXDIzAHe4aCZAqPMWYAZeDtgMW+csneAVLAVrZJoOZ0LrOJOisZy5Fm3fc0KANS30OPfwplsN1kbWVl7miyazjOFJvCltb11A3OWmJptNau9tZrIfteg7GOHqjhxdTas7VuSasTVYNAebnTUoOiQ3kWN3iGh1p5SKh03n7mzFos5ZOsErWAqWgjVK6f8BSSkdS34RRC4AAAAASUVORK5CYII=', 'data:image/png;base64,JSFQUy1BZG9iZS0zLjAgRVBTRi0zLjAKJSVDcmVhdG9yOiBCYWNvblFyQ29kZQolJUJvdW5kaW5nQm94OiAwIDAgMzAwIDMwMCAKJSVCZWdpblByb2xvZwpzYXZlCjUwIGRpY3QgYmVnaW4KL3EgeyBnc2F2ZSB9IGJpbmQgZGVmCi9RIHsgZ3Jlc3RvcmUgfSBiaW5kIGRlZgovcyB7IHNjYWxlIH0gYmluZCBkZWYKL3QgeyB0cmFuc2xhdGUgfSBiaW5kIGRlZgovciB7IHJvdGF0ZSB9IGJpbmQgZGVmCi9uIHsgbmV3cGF0aCB9IGJpbmQgZGVmCi9tIHsgbW92ZXRvIH0gYmluZCBkZWYKL2wgeyBsaW5ldG8gfSBiaW5kIGRlZgovYyB7IGN1cnZldG8gfSBiaW5kIGRlZgoveiB7IGNsb3NlcGF0aCB9IGJpbmQgZGVmCi9mIHsgZW9maWxsIH0gYmluZCBkZWYKL3JnYiB7IHNldHJnYmNvbG9yIH0gYmluZCBkZWYKL2NteWsgeyBzZXRjbXlrY29sb3IgfSBiaW5kIGRlZgovZ3JheSB7IHNldGdyYXkgfSBiaW5kIGRlZgolJUVuZFByb2xvZwoxIC0xIHMKMCAtMzAwIHQKMCAwIG0gMzAwIDAgbCAzMDAgMzAwIGwgMCAzMDAgbCB6IDEgMSAxIHJnYiBmCjcuMzE3IDcuMzE3IHMKMCAwIHQKbiA4IDAgbSA4IDQgbCA5IDQgbCA5IDUgbCA4IDUgbCA4IDcgbCA5IDcgbCA5IDggbCAxMyA4IGwgMTMgNiBsIDE0IDYgbCAxNCA4CiBsIDE3IDggbCAxNyA5IGwgMTUgOSBsIDE1IDExIGwgMTQgMTEgbCAxNCAxMiBsIDEzIDEyIGwgMTMgMTEgbCAxMiAxMSBsIDEyCiAxMCBsIDE0IDEwIGwgMTQgOSBsIDEyIDkgbCAxMiAxMCBsIDExIDEwIGwgMTEgOSBsIDkgOSBsIDkgMTAgbCAxMSAxMCBsIDExCiAxMiBsIDEwIDEyIGwgMTAgMTMgbCAxMSAxMyBsIDExIDEyIGwgMTIgMTIgbCAxMiAxMyBsIDEzIDEzIGwgMTMgMTUgbCAxMiAxNQogbCAxMiAxNiBsIDExIDE2IGwgMTEgMTggbCA5IDE4IGwgOSAxOSBsIDEwIDE5IGwgMTAgMjAgbCA5IDIwIGwgOSAyMSBsIDggMjEKIGwgOCAyMCBsIDUgMjAgbCA1IDE5IGwgOCAxOSBsIDggMTcgbCAxMCAxNyBsIDEwIDE1IGwgMTEgMTUgbCAxMSAxNCBsIDkgMTQgbAogOSAxMSBsIDggMTEgbCA4IDkgbCA3IDkgbCA3IDggbCA0IDggbCA0IDkgbCAzIDkgbCAzIDEwIGwgMiAxMCBsIDIgMTEgbCAxIDExCiBsIDEgOSBsIDIgOSBsIDIgOCBsIDAgOCBsIDAgMTEgbCAxIDExIGwgMSAxMyBsIDggMTMgbCA4IDE0IGwgMiAxNCBsIDIgMTYgbAogMSAxNiBsIDEgMTUgbCAwIDE1IGwgMCAxOCBsIDMgMTggbCAzIDIwIGwgMiAyMCBsIDIgMTkgbCAwIDE5IGwgMCAyMSBsIDEgMjEKIGwgMSAyMiBsIDIgMjIgbCAyIDIzIGwgMCAyMyBsIDAgMjUgbCAxIDI1IGwgMSAyNiBsIDAgMjYgbCAwIDI3IGwgMSAyNyBsIDEKIDI4IGwgMCAyOCBsIDAgMzAgbCAyIDMwIGwgMiAzMiBsIDAgMzIgbCAwIDMzIGwgMyAzMyBsIDMgMzIgbCA1IDMyIGwgNSAzMSBsCiAzIDMxIGwgMyAzMCBsIDYgMzAgbCA2IDMxIGwgNyAzMSBsIDcgMzIgbCA2IDMyIGwgNiAzMyBsIDcgMzMgbCA3IDMyIGwgOCAzMgogbCA4IDMxIGwgNyAzMSBsIDcgMzAgbCA2IDMwIGwgNiAyOSBsIDcgMjkgbCA3IDI4IGwgNSAyOCBsIDUgMjkgbCAxIDI5IGwgMQogMjggbCAyIDI4IGwgMiAyNyBsIDMgMjcgbCAzIDI4IGwgNCAyOCBsIDQgMjQgbCA1IDI0IGwgNSAyNyBsIDcgMjcgbCA3IDI2IGwKIDYgMjYgbCA2IDI1IGwgNyAyNSBsIDcgMjQgbCA4IDI0IGwgOCAyMiBsIDkgMjIgbCA5IDIzIGwgMTAgMjMgbCAxMCAyNCBsIDkKIDI0IGwgOSAyNSBsIDEwIDI1IGwgMTAgMjQgbCAxMiAyNCBsIDEyIDI1IGwgMTEgMjUgbCAxMSAyNyBsIDEwIDI3IGwgMTAgMjYgbAogOSAyNiBsIDkgMjcgbCA4IDI3IGwgOCAyOCBsIDExIDI4IGwgMTEgMjkgbCAxMyAyOSBsIDEzIDMxIGwgMTIgMzEgbCAxMiAzMiBsCiAxMSAzMiBsIDExIDMxIGwgMTAgMzEgbCAxMCAzMiBsIDkgMzIgbCA5IDMzIGwgOCAzMyBsIDggMzQgbCA5IDM0IGwgOSAzMyBsCiAxMCAzMyBsIDEwIDMyIGwgMTEgMzIgbCAxMSAzNSBsIDEyIDM1IGwgMTIgMzMgbCAxMyAzMyBsIDEzIDMxIGwgMTQgMzEgbCAxNAogMzIgbCAxNSAzMiBsIDE1IDMzIGwgMTQgMzMgbCAxNCAzNCBsIDEzIDM0IGwgMTMgMzcgbCAxMiAzNyBsIDEyIDM4IGwgMTEgMzgKIGwgMTEgMzYgbCAxMCAzNiBsIDEwIDM1IGwgOCAzNSBsIDggMzcgbCA5IDM3IGwgOSAzOSBsIDggMzkgbCA4IDQxIGwgMTEgNDEgbAogMTEgNDAgbCAxMiA0MCBsIDEyIDM5IGwgMTMgMzkgbCAxMyAzNyBsIDE0IDM3IGwgMTQgMzggbCAxNSAzOCBsIDE1IDQwIGwgMTcKIDQwIGwgMTcgNDEgbCAxOCA0MSBsIDE4IDM5IGwgMTYgMzkgbCAxNiAzOCBsIDE1IDM4IGwgMTUgMzcgbCAxNyAzNyBsIDE3IDM2CiBsIDE2IDM2IGwgMTYgMzQgbCAxOCAzNCBsIDE4IDM1IGwgMTkgMzUgbCAxOSAzNiBsIDIxIDM2IGwgMjEgMzcgbCAyMCAzNyBsCiAyMCA0MCBsIDE5IDQwIGwgMTkgNDEgbCAyMyA0MSBsIDIzIDQwIGwgMjUgNDAgbCAyNSAzOSBsIDI0IDM5IGwgMjQgMzggbCAyNgogMzggbCAyNiA0MCBsIDI3IDQwIGwgMjcgNDEgbCAzMCA0MSBsIDMwIDQwIGwgMzEgNDAgbCAzMSA0MSBsIDM0IDQxIGwgMzQgMzcKIGwgMzcgMzcgbCAzNyAzOSBsIDM2IDM5IGwgMzYgMzggbCAzNSAzOCBsIDM1IDM5IGwgMzYgMzkgbCAzNiA0MCBsIDM1IDQwIGwKIDM1IDQxIGwgMzYgNDEgbCAzNiA0MCBsIDM3IDQwIGwgMzcgMzkgbCAzOCAzOSBsIDM4IDM4IGwgNDAgMzggbCA0MCAzOSBsIDM5CiAzOSBsIDM5IDQxIGwgNDAgNDEgbCA0MCA0MCBsIDQxIDQwIGwgNDEgMzcgbCA0MCAzNyBsIDQwIDM2IGwgNDEgMzYgbCA0MSAzMwogbCA0MCAzMyBsIDQwIDMyIGwgNDEgMzIgbCA0MSAyOCBsIDQwIDI4IGwgNDAgMjcgbCA0MSAyNyBsIDQxIDIxIGwgMzkgMjEgbAogMzkgMjIgbCA0MCAyMiBsIDQwIDIzIGwgMzkgMjMgbCAzOSAyNCBsIDQwIDI0IGwgNDAgMjUgbCAzNiAyNSBsIDM2IDI0IGwgMzcKIDI0IGwgMzcgMjMgbCAzOCAyMyBsIDM4IDIxIGwgMzYgMjEgbCAzNiAyMCBsIDM1IDIwIGwgMzUgMjEgbCAzMyAyMSBsIDMzIDIwCiBsIDM0IDIwIGwgMzQgMTkgbCAzNSAxOSBsIDM1IDE4IGwgMzYgMTggbCAzNiAxOSBsIDM3IDE5IGwgMzcgMjAgbCAzOCAyMCBsCiAzOCAxOSBsIDM3IDE5IGwgMzcgMTggbCAzOSAxOCBsIDM5IDIwIGwgNDEgMjAgbCA0MSAxNyBsIDQwIDE3IGwgNDAgMTYgbCA0MQogMTYgbCA0MSAxMiBsIDQwIDEyIGwgNDAgMTEgbCA0MSAxMSBsIDQxIDggbCAzNyA4IGwgMzcgOSBsIDM2IDkgbCAzNiA4IGwgMzUKIDggbCAzNSA5IGwgMzMgOSBsIDMzIDggbCAzMiA4IGwgMzIgNyBsIDMzIDcgbCAzMyA2IGwgMzIgNiBsIDMyIDUgbCAzMyA1IGwKIDMzIDIgbCAzMiAyIGwgMzIgMSBsIDMzIDEgbCAzMyAwIGwgMzIgMCBsIDMyIDEgbCAzMSAxIGwgMzEgMCBsIDMwIDAgbCAzMCAxCiBsIDMxIDEgbCAzMSAyIGwgMjkgMiBsIDI5IDAgbCAyNSAwIGwgMjUgMiBsIDI0IDIgbCAyNCAzIGwgMjUgMyBsIDI1IDQgbCAyNwogNCBsIDI3IDUgbCAyNCA1IGwgMjQgNCBsIDIzIDQgbCAyMyA1IGwgMjQgNSBsIDI0IDcgbCAyNSA3IGwgMjUgNiBsIDI2IDYgbAogMjYgNyBsIDI3IDcgbCAyNyA1IGwgMjggNSBsIDI4IDcgbCAyOSA3IGwgMjkgOSBsIDI4IDkgbCAyOCA4IGwgMjYgOCBsIDI2IDkKIGwgMjUgOSBsIDI1IDggbCAyNCA4IGwgMjQgOSBsIDIzIDkgbCAyMyA2IGwgMjIgNiBsIDIyIDUgbCAyMSA1IGwgMjEgNCBsIDIwCiA0IGwgMjAgNSBsIDE2IDUgbCAxNiA3IGwgMTUgNyBsIDE1IDQgbCAxNiA0IGwgMTYgMyBsIDE5IDMgbCAxOSAyIGwgMjEgMiBsCiAyMSAzIGwgMjIgMyBsIDIyIDIgbCAyMyAyIGwgMjMgMSBsIDI0IDEgbCAyNCAwIGwgMjEgMCBsIDIxIDEgbCAxOSAxIGwgMTkgMgogbCAxNyAyIGwgMTcgMSBsIDE4IDEgbCAxOCAwIGwgMTUgMCBsIDE1IDEgbCAxNiAxIGwgMTYgMiBsIDE1IDIgbCAxNSAzIGwgMTQKIDMgbCAxNCAyIGwgMTMgMiBsIDEzIDMgbCAxMSAzIGwgMTEgMiBsIDEyIDIgbCAxMiAxIGwgMTMgMSBsIDEzIDAgbCAxMSAwIGwKIDExIDEgbCAxMCAxIGwgMTAgMCBsIHogMjYgMSBtIDI2IDIgbCAyNSAyIGwgMjUgMyBsIDI2IDMgbCAyNiAyIGwgMjcgMiBsIDI3CiAzIGwgMjggMyBsIDI4IDQgbCAzMCA0IGwgMzAgNiBsIDI5IDYgbCAyOSA3IGwgMzAgNyBsIDMwIDkgbCAyOSA5IGwgMjkgMTEgbAogMzAgMTEgbCAzMCAxMiBsIDMxIDEyIGwgMzEgMTMgbCAyOSAxMyBsIDI5IDEyIGwgMjggMTIgbCAyOCAxMSBsIDI3IDExIGwgMjcKIDkgbCAyNiA5IGwgMjYgMTEgbCAyNSAxMSBsIDI1IDkgbCAyNCA5IGwgMjQgMTEgbCAyMyAxMSBsIDIzIDkgbCAyMiA5IGwgMjIKIDEyIGwgMjMgMTIgbCAyMyAxMyBsIDIyIDEzIGwgMjIgMTYgbCAyMyAxNiBsIDIzIDEzIGwgMjQgMTMgbCAyNCAxNiBsIDI1IDE2CiBsIDI1IDE3IGwgMjQgMTcgbCAyNCAxOCBsIDI1IDE4IGwgMjUgMTcgbCAyNiAxNyBsIDI2IDE5IGwgMjMgMTkgbCAyMyAxNyBsCiAxOSAxNyBsIDE5IDE2IGwgMjAgMTYgbCAyMCAxNSBsIDIxIDE1IGwgMjEgMTMgbCAyMCAxMyBsIDIwIDE0IGwgMTcgMTQgbCAxNwogMTUgbCAxNiAxNSBsIDE2IDEzIGwgMTggMTMgbCAxOCAxMiBsIDIwIDEyIGwgMjAgMTAgbCAyMSAxMCBsIDIxIDggbCAyMCA4IGwKIDIwIDkgbCAxOSA5IGwgMTkgMTAgbCAxOCAxMCBsIDE4IDEyIGwgMTcgMTIgbCAxNyAxMSBsIDE1IDExIGwgMTUgMTMgbCAxNCAxMwogbCAxNCAxNSBsIDEzIDE1IGwgMTMgMTcgbCAxMiAxNyBsIDEyIDE4IGwgMTUgMTggbCAxNSAxNyBsIDE0IDE3IGwgMTQgMTUgbAogMTUgMTUgbCAxNSAxNiBsIDE2IDE2IGwgMTYgMTggbCAxNyAxOCBsIDE3IDE5IGwgMTYgMTkgbCAxNiAyMCBsIDE1IDIwIGwgMTUKIDE5IGwgMTQgMTkgbCAxNCAyMSBsIDEzIDIxIGwgMTMgMjAgbCAxMiAyMCBsIDEyIDIxIGwgMTEgMjEgbCAxMSAyMCBsIDEwIDIwCiBsIDEwIDIxIGwgOSAyMSBsIDkgMjIgbCAxMiAyMiBsIDEyIDIxIGwgMTMgMjEgbCAxMyAyMyBsIDEyIDIzIGwgMTIgMjQgbCAxMwogMjQgbCAxMyAyNSBsIDEyIDI1IGwgMTIgMjYgbCAxMyAyNiBsIDEzIDI4IGwgMTQgMjggbCAxNCAyNyBsIDE1IDI3IGwgMTUgMjYKIGwgMTMgMjYgbCAxMyAyNSBsIDE2IDI1IGwgMTYgMjQgbCAxNCAyNCBsIDE0IDIxIGwgMTUgMjEgbCAxNSAyMiBsIDE2IDIyIGwKIDE2IDIzIGwgMTggMjMgbCAxOCAyNSBsIDE3IDI1IGwgMTcgMjYgbCAxNiAyNiBsIDE2IDI3IGwgMTcgMjcgbCAxNyAyNiBsIDE4CiAyNiBsIDE4IDI3IGwgMTkgMjcgbCAxOSAyOCBsIDIwIDI4IGwgMjAgMzAgbCAxOSAzMCBsIDE5IDI5IGwgMTggMjkgbCAxOCAyOAogbCAxNSAyOCBsIDE1IDI5IGwgMTQgMjkgbCAxNCAzMSBsIDE1IDMxIGwgMTUgMzIgbCAxNiAzMiBsIDE2IDMzIGwgMTcgMzMgbAogMTcgMzEgbCAxOCAzMSBsIDE4IDMwIGwgMTkgMzAgbCAxOSAzMiBsIDE4IDMyIGwgMTggMzQgbCAxOSAzNCBsIDE5IDM1IGwgMjAKIDM1IGwgMjAgMzQgbCAyMSAzNCBsIDIxIDMyIGwgMjAgMzIgbCAyMCAzMCBsIDIyIDMwIGwgMjIgMzEgbCAyMyAzMSBsIDIzIDI5CiBsIDI0IDI5IGwgMjQgMzAgbCAyNSAzMCBsIDI1IDMyIGwgMjQgMzIgbCAyNCAzNiBsIDIzIDM2IGwgMjMgMzUgbCAyMiAzNSBsCiAyMiAzNiBsIDIzIDM2IGwgMjMgMzcgbCAyMSAzNyBsIDIxIDM5IGwgMjMgMzkgbCAyMyAzNyBsIDI4IDM3IGwgMjggMzggbCAyOQogMzggbCAyOSAzOSBsIDMwIDM5IGwgMzAgMzggbCAyOSAzOCBsIDI5IDM3IGwgMjggMzcgbCAyOCAzNSBsIDI5IDM1IGwgMjkgMzQKIGwgMzAgMzQgbCAzMCAzNyBsIDMxIDM3IGwgMzEgMzggbCAzMyAzOCBsIDMzIDM3IGwgMzEgMzcgbCAzMSAzNCBsIDMwIDM0IGwKIDMwIDMzIGwgMjkgMzMgbCAyOSAyNyBsIDMwIDI3IGwgMzAgMjggbCAzMSAyOCBsIDMxIDI5IGwgMzAgMjkgbCAzMCAzMCBsIDMxCiAzMCBsIDMxIDMxIGwgMzMgMzEgbCAzMyAzMiBsIDM1IDMyIGwgMzUgMzEgbCAzNCAzMSBsIDM0IDI5IGwgMzcgMjkgbCAzNyAzMAogbCAzOCAzMCBsIDM4IDMxIGwgMzYgMzEgbCAzNiAzMiBsIDM3IDMyIGwgMzcgMzMgbCAzOCAzMyBsIDM4IDM0IGwgMzcgMzQgbAogMzcgMzYgbCAzOCAzNiBsIDM4IDM3IGwgMzkgMzcgbCAzOSAzNiBsIDQwIDM2IGwgNDAgMzUgbCAzOCAzNSBsIDM4IDM0IGwgNDAKIDM0IGwgNDAgMzMgbCAzOSAzMyBsIDM5IDMyIGwgNDAgMzIgbCA0MCAyOSBsIDM5IDI5IGwgMzkgMjcgbCAzNyAyNyBsIDM3IDI4CiBsIDM2IDI4IGwgMzYgMjYgbCAzNCAyNiBsIDM0IDI1IGwgMzUgMjUgbCAzNSAyNCBsIDM2IDI0IGwgMzYgMjMgbCAzNyAyMyBsCiAzNyAyMiBsIDM2IDIyIGwgMzYgMjEgbCAzNSAyMSBsIDM1IDIyIGwgMzMgMjIgbCAzMyAyMyBsIDMyIDIzIGwgMzIgMjEgbCAzMQogMjEgbCAzMSAxOSBsIDMyIDE5IGwgMzIgMTggbCAzMyAxOCBsIDMzIDE5IGwgMzQgMTkgbCAzNCAxNyBsIDM1IDE3IGwgMzUgMTYKIGwgMzYgMTYgbCAzNiAxNyBsIDM3IDE3IGwgMzcgMTUgbCAzOCAxNSBsIDM4IDE3IGwgMzkgMTcgbCAzOSAxOCBsIDQwIDE4IGwKIDQwIDE3IGwgMzkgMTcgbCAzOSAxNSBsIDQwIDE1IGwgNDAgMTQgbCAzNyAxNCBsIDM3IDE1IGwgMzYgMTUgbCAzNiAxNCBsIDM1CiAxNCBsIDM1IDE1IGwgMzQgMTUgbCAzNCAxNCBsIDMyIDE0IGwgMzIgMTMgbCAzOSAxMyBsIDM5IDEwIGwgMzggMTAgbCAzOCA5IGwKIDM3IDkgbCAzNyAxMSBsIDM2IDExIGwgMzYgMTAgbCAzNCAxMCBsIDM0IDEyIGwgMzIgMTIgbCAzMiAxMSBsIDMzIDExIGwgMzMgOQogbCAzMSA5IGwgMzEgNyBsIDMyIDcgbCAzMiA2IGwgMzEgNiBsIDMxIDUgbCAzMiA1IGwgMzIgMiBsIDMxIDIgbCAzMSAzIGwgMjgKIDMgbCAyOCAxIGwgeiA5IDMgbSA5IDQgbCAxMCA0IGwgMTAgMyBsIHogMTMgMyBtIDEzIDQgbCAxNCA0IGwgMTQgMyBsIHogMTEgNAogbSAxMSA1IGwgOSA1IGwgOSA3IGwgMTAgNyBsIDEwIDYgbCAxMSA2IGwgMTEgNyBsIDEyIDcgbCAxMiA2IGwgMTMgNiBsIDEzIDUKIGwgMTIgNSBsIDEyIDQgbCB6IDE3IDYgbSAxNyA3IGwgMTggNyBsIDE4IDYgbCB6IDE5IDYgbSAxOSA3IGwgMjAgNyBsIDIwIDYgbAogeiAyMSA2IG0gMjEgNyBsIDIyIDcgbCAyMiA2IGwgeiAzMCA2IG0gMzAgNyBsIDMxIDcgbCAzMSA2IGwgeiA0IDkgbSA0IDExIGwKIDYgMTEgbCA2IDEyIGwgOCAxMiBsIDggMTEgbCA2IDExIGwgNiAxMCBsIDcgMTAgbCA3IDkgbCB6IDMwIDkgbSAzMCAxMSBsIDMxCiAxMSBsIDMxIDkgbCB6IDI0IDExIG0gMjQgMTIgbCAyNSAxMiBsIDI1IDExIGwgeiAzNyAxMSBtIDM3IDEyIGwgMzggMTIgbCAzOAogMTEgbCB6IDI2IDEzIG0gMjYgMTQgbCAyNSAxNCBsIDI1IDE1IGwgMjYgMTUgbCAyNiAxNiBsIDI3IDE2IGwgMjcgMTUgbCAyOAogMTUgbCAyOCAxNyBsIDI3IDE3IGwgMjcgMTkgbCAyNiAxOSBsIDI2IDIwIGwgMjggMjAgbCAyOCAyMSBsIDI1IDIxIGwgMjUgMjAKIGwgMjMgMjAgbCAyMyAyMiBsIDIwIDIyIGwgMjAgMjEgbCAxOCAyMSBsIDE4IDIzIGwgMTkgMjMgbCAxOSAyMiBsIDIwIDIyIGwKIDIwIDI0IGwgMTkgMjQgbCAxOSAyNSBsIDE4IDI1IGwgMTggMjYgbCAxOSAyNiBsIDE5IDI1IGwgMjAgMjUgbCAyMCAyNyBsIDIxCiAyNyBsIDIxIDI5IGwgMjMgMjkgbCAyMyAyNyBsIDI1IDI3IGwgMjUgMjYgbCAyNiAyNiBsIDI2IDI4IGwgMjggMjggbCAyOCAyNgogbCAzMSAyNiBsIDMxIDI1IGwgMzQgMjUgbCAzNCAyMyBsIDMzIDIzIGwgMzMgMjQgbCAzMSAyNCBsIDMxIDIxIGwgMzAgMjEgbAogMzAgMTggbCAzMSAxOCBsIDMxIDE3IGwgMzAgMTcgbCAzMCAxNiBsIDMyIDE2IGwgMzIgMTcgbCAzMyAxNyBsIDMzIDE1IGwgMjgKIDE1IGwgMjggMTQgbCAyOSAxNCBsIDI5IDEzIGwgeiAzIDE1IG0gMyAxNiBsIDIgMTYgbCAyIDE3IGwgNCAxNyBsIDQgMTkgbCA1CiAxOSBsIDUgMTcgbCA2IDE3IGwgNiAxOCBsIDcgMTggbCA3IDE3IGwgNiAxNyBsIDYgMTYgbCA3IDE2IGwgNyAxNSBsIDYgMTUgbAogNiAxNiBsIDQgMTYgbCA0IDE1IGwgeiAxNyAxNSBtIDE3IDE4IGwgMTggMTggbCAxOCAxOSBsIDE5IDE5IGwgMTkgMTcgbCAxOAogMTcgbCAxOCAxNiBsIDE5IDE2IGwgMTkgMTUgbCB6IDIwIDE4IG0gMjAgMjAgbCAyMSAyMCBsIDIxIDIxIGwgMjIgMjEgbCAyMgogMTggbCB6IDI4IDE4IG0gMjggMTkgbCAyOSAxOSBsIDI5IDE4IGwgeiAxIDIwIG0gMSAyMSBsIDIgMjEgbCAyIDIwIGwgeiAzIDIwCiBtIDMgMjEgbCA0IDIxIGwgNCAyMiBsIDMgMjIgbCAzIDIzIGwgNSAyMyBsIDUgMjQgbCA3IDI0IGwgNyAyMyBsIDUgMjMgbCA1CiAyMCBsIHogMTYgMjAgbSAxNiAyMSBsIDE3IDIxIGwgMTcgMjAgbCB6IDYgMjEgbSA2IDIyIGwgNyAyMiBsIDcgMjEgbCB6IDI0CiAyMSBtIDI0IDIyIGwgMjUgMjIgbCAyNSAyMyBsIDIyIDIzIGwgMjIgMjQgbCAyMyAyNCBsIDIzIDI1IGwgMjQgMjUgbCAyNCAyNAogbCAyNSAyNCBsIDI1IDI1IGwgMjYgMjUgbCAyNiAyNiBsIDI3IDI2IGwgMjcgMjUgbCAyOSAyNSBsIDI5IDIzIGwgMzAgMjMgbAogMzAgMjIgbCAyOSAyMiBsIDI5IDIzIGwgMjcgMjMgbCAyNyAyMiBsIDI1IDIyIGwgMjUgMjEgbCB6IDM1IDIyIG0gMzUgMjMgbAogMzYgMjMgbCAzNiAyMiBsIHogMjYgMjMgbSAyNiAyNSBsIDI3IDI1IGwgMjcgMjMgbCB6IDIwIDI0IG0gMjAgMjUgbCAyMSAyNSBsCiAyMSAyNyBsIDIzIDI3IGwgMjMgMjYgbCAyMiAyNiBsIDIyIDI1IGwgMjEgMjUgbCAyMSAyNCBsIHogMzAgMjQgbSAzMCAyNSBsCiAzMSAyNSBsIDMxIDI0IGwgeiAyIDI1IG0gMiAyNiBsIDMgMjYgbCAzIDI1IGwgeiAzMiAyNiBtIDMyIDI3IGwgMzEgMjcgbCAzMQogMjggbCAzMyAyOCBsIDMzIDI5IGwgMzIgMjkgbCAzMiAzMCBsIDMzIDMwIGwgMzMgMjkgbCAzNCAyOSBsIDM0IDI4IGwgMzUgMjgKIGwgMzUgMjcgbCAzNCAyNyBsIDM0IDI2IGwgeiAxMSAyNyBtIDExIDI4IGwgMTIgMjggbCAxMiAyNyBsIHogMzMgMjcgbSAzMyAyOAogbCAzNCAyOCBsIDM0IDI3IGwgeiAyNCAyOCBtIDI0IDI5IGwgMjUgMjkgbCAyNSAyOCBsIHogMTYgMjkgbSAxNiAzMSBsIDE3IDMxCiBsIDE3IDMwIGwgMTggMzAgbCAxOCAyOSBsIHogMjYgMjkgbSAyNiAzMiBsIDI3IDMyIGwgMjcgMzEgbCAyOCAzMSBsIDI4IDI5IGwKIHogMzggMjkgbSAzOCAzMCBsIDM5IDMwIGwgMzkgMjkgbCB6IDIyIDMyIG0gMjIgMzQgbCAyMyAzNCBsIDIzIDMyIGwgeiAyNiAzMwogbSAyNiAzNCBsIDI3IDM0IGwgMjcgMzUgbCAyNiAzNSBsIDI2IDM2IGwgMjcgMzYgbCAyNyAzNSBsIDI4IDM1IGwgMjggMzQgbAogMjkgMzQgbCAyOSAzMyBsIHogMzMgMzMgbSAzMyAzNiBsIDM2IDM2IGwgMzYgMzMgbCB6IDM0IDM0IG0gMzQgMzUgbCAzNSAzNSBsCiAzNSAzNCBsIHogMTQgMzUgbSAxNCAzNyBsIDE1IDM3IGwgMTUgMzUgbCB6IDkgMzYgbSA5IDM3IGwgMTAgMzcgbCAxMCAzNiBsIHoKIDE4IDM3IG0gMTggMzggbCAxOSAzOCBsIDE5IDM3IGwgeiAxMCAzOCBtIDEwIDM5IGwgOSAzOSBsIDkgNDAgbCAxMCA0MCBsIDEwCiAzOSBsIDExIDM5IGwgMTEgMzggbCB6IDI3IDM5IG0gMjcgNDAgbCAyOCA0MCBsIDI4IDM5IGwgeiAwIDAgbSAwIDcgbCA3IDcgbAogNyAwIGwgeiAxIDEgbSAxIDYgbCA2IDYgbCA2IDEgbCB6IDIgMiBtIDIgNSBsIDUgNSBsIDUgMiBsIHogMzQgMCBtIDM0IDcgbAogNDEgNyBsIDQxIDAgbCB6IDM1IDEgbSAzNSA2IGwgNDAgNiBsIDQwIDEgbCB6IDM2IDIgbSAzNiA1IGwgMzkgNSBsIDM5IDIgbCB6CiAwIDM0IG0gMCA0MSBsIDcgNDEgbCA3IDM0IGwgeiAxIDM1IG0gMSA0MCBsIDYgNDAgbCA2IDM1IGwgeiAyIDM2IG0gMiAzOSBsIDUKIDM5IGwgNSAzNiBsIHogMCAwIDAgcmdiIGYKJSVUUkFJTEVSCmVuZCByZXN0b3JlCiUlRU9G', 'data:image/png;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgd2lkdGg9IjMwMCIgaGVpZ2h0PSIzMDAiIHZpZXdCb3g9IjAgMCAzMDAgMzAwIj48cmVjdCB4PSIwIiB5PSIwIiB3aWR0aD0iMzAwIiBoZWlnaHQ9IjMwMCIgZmlsbD0iI2ZmZmZmZiIvPjxnIHRyYW5zZm9ybT0ic2NhbGUoNy4zMTcpIj48ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgwLDApIj48cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik04IDBMOCA0TDkgNEw5IDVMOCA1TDggN0w5IDdMOSA4TDEzIDhMMTMgNkwxNCA2TDE0IDhMMTcgOEwxNyA5TDE1IDlMMTUgMTFMMTQgMTFMMTQgMTJMMTMgMTJMMTMgMTFMMTIgMTFMMTIgMTBMMTQgMTBMMTQgOUwxMiA5TDEyIDEwTDExIDEwTDExIDlMOSA5TDkgMTBMMTEgMTBMMTEgMTJMMTAgMTJMMTAgMTNMMTEgMTNMMTEgMTJMMTIgMTJMMTIgMTNMMTMgMTNMMTMgMTVMMTIgMTVMMTIgMTZMMTEgMTZMMTEgMThMOSAxOEw5IDE5TDEwIDE5TDEwIDIwTDkgMjBMOSAyMUw4IDIxTDggMjBMNSAyMEw1IDE5TDggMTlMOCAxN0wxMCAxN0wxMCAxNUwxMSAxNUwxMSAxNEw5IDE0TDkgMTFMOCAxMUw4IDlMNyA5TDcgOEw0IDhMNCA5TDMgOUwzIDEwTDIgMTBMMiAxMUwxIDExTDEgOUwyIDlMMiA4TDAgOEwwIDExTDEgMTFMMSAxM0w4IDEzTDggMTRMMiAxNEwyIDE2TDEgMTZMMSAxNUwwIDE1TDAgMThMMyAxOEwzIDIwTDIgMjBMMiAxOUwwIDE5TDAgMjFMMSAyMUwxIDIyTDIgMjJMMiAyM0wwIDIzTDAgMjVMMSAyNUwxIDI2TDAgMjZMMCAyN0wxIDI3TDEgMjhMMCAyOEwwIDMwTDIgMzBMMiAzMkwwIDMyTDAgMzNMMyAzM0wzIDMyTDUgMzJMNSAzMUwzIDMxTDMgMzBMNiAzMEw2IDMxTDcgMzFMNyAzMkw2IDMyTDYgMzNMNyAzM0w3IDMyTDggMzJMOCAzMUw3IDMxTDcgMzBMNiAzMEw2IDI5TDcgMjlMNyAyOEw1IDI4TDUgMjlMMSAyOUwxIDI4TDIgMjhMMiAyN0wzIDI3TDMgMjhMNCAyOEw0IDI0TDUgMjRMNSAyN0w3IDI3TDcgMjZMNiAyNkw2IDI1TDcgMjVMNyAyNEw4IDI0TDggMjJMOSAyMkw5IDIzTDEwIDIzTDEwIDI0TDkgMjRMOSAyNUwxMCAyNUwxMCAyNEwxMiAyNEwxMiAyNUwxMSAyNUwxMSAyN0wxMCAyN0wxMCAyNkw5IDI2TDkgMjdMOCAyN0w4IDI4TDExIDI4TDExIDI5TDEzIDI5TDEzIDMxTDEyIDMxTDEyIDMyTDExIDMyTDExIDMxTDEwIDMxTDEwIDMyTDkgMzJMOSAzM0w4IDMzTDggMzRMOSAzNEw5IDMzTDEwIDMzTDEwIDMyTDExIDMyTDExIDM1TDEyIDM1TDEyIDMzTDEzIDMzTDEzIDMxTDE0IDMxTDE0IDMyTDE1IDMyTDE1IDMzTDE0IDMzTDE0IDM0TDEzIDM0TDEzIDM3TDEyIDM3TDEyIDM4TDExIDM4TDExIDM2TDEwIDM2TDEwIDM1TDggMzVMOCAzN0w5IDM3TDkgMzlMOCAzOUw4IDQxTDExIDQxTDExIDQwTDEyIDQwTDEyIDM5TDEzIDM5TDEzIDM3TDE0IDM3TDE0IDM4TDE1IDM4TDE1IDQwTDE3IDQwTDE3IDQxTDE4IDQxTDE4IDM5TDE2IDM5TDE2IDM4TDE1IDM4TDE1IDM3TDE3IDM3TDE3IDM2TDE2IDM2TDE2IDM0TDE4IDM0TDE4IDM1TDE5IDM1TDE5IDM2TDIxIDM2TDIxIDM3TDIwIDM3TDIwIDQwTDE5IDQwTDE5IDQxTDIzIDQxTDIzIDQwTDI1IDQwTDI1IDM5TDI0IDM5TDI0IDM4TDI2IDM4TDI2IDQwTDI3IDQwTDI3IDQxTDMwIDQxTDMwIDQwTDMxIDQwTDMxIDQxTDM0IDQxTDM0IDM3TDM3IDM3TDM3IDM5TDM2IDM5TDM2IDM4TDM1IDM4TDM1IDM5TDM2IDM5TDM2IDQwTDM1IDQwTDM1IDQxTDM2IDQxTDM2IDQwTDM3IDQwTDM3IDM5TDM4IDM5TDM4IDM4TDQwIDM4TDQwIDM5TDM5IDM5TDM5IDQxTDQwIDQxTDQwIDQwTDQxIDQwTDQxIDM3TDQwIDM3TDQwIDM2TDQxIDM2TDQxIDMzTDQwIDMzTDQwIDMyTDQxIDMyTDQxIDI4TDQwIDI4TDQwIDI3TDQxIDI3TDQxIDIxTDM5IDIxTDM5IDIyTDQwIDIyTDQwIDIzTDM5IDIzTDM5IDI0TDQwIDI0TDQwIDI1TDM2IDI1TDM2IDI0TDM3IDI0TDM3IDIzTDM4IDIzTDM4IDIxTDM2IDIxTDM2IDIwTDM1IDIwTDM1IDIxTDMzIDIxTDMzIDIwTDM0IDIwTDM0IDE5TDM1IDE5TDM1IDE4TDM2IDE4TDM2IDE5TDM3IDE5TDM3IDIwTDM4IDIwTDM4IDE5TDM3IDE5TDM3IDE4TDM5IDE4TDM5IDIwTDQxIDIwTDQxIDE3TDQwIDE3TDQwIDE2TDQxIDE2TDQxIDEyTDQwIDEyTDQwIDExTDQxIDExTDQxIDhMMzcgOEwzNyA5TDM2IDlMMzYgOEwzNSA4TDM1IDlMMzMgOUwzMyA4TDMyIDhMMzIgN0wzMyA3TDMzIDZMMzIgNkwzMiA1TDMzIDVMMzMgMkwzMiAyTDMyIDFMMzMgMUwzMyAwTDMyIDBMMzIgMUwzMSAxTDMxIDBMMzAgMEwzMCAxTDMxIDFMMzEgMkwyOSAyTDI5IDBMMjUgMEwyNSAyTDI0IDJMMjQgM0wyNSAzTDI1IDRMMjcgNEwyNyA1TDI0IDVMMjQgNEwyMyA0TDIzIDVMMjQgNUwyNCA3TDI1IDdMMjUgNkwyNiA2TDI2IDdMMjcgN0wyNyA1TDI4IDVMMjggN0wyOSA3TDI5IDlMMjggOUwyOCA4TDI2IDhMMjYgOUwyNSA5TDI1IDhMMjQgOEwyNCA5TDIzIDlMMjMgNkwyMiA2TDIyIDVMMjEgNUwyMSA0TDIwIDRMMjAgNUwxNiA1TDE2IDdMMTUgN0wxNSA0TDE2IDRMMTYgM0wxOSAzTDE5IDJMMjEgMkwyMSAzTDIyIDNMMjIgMkwyMyAyTDIzIDFMMjQgMUwyNCAwTDIxIDBMMjEgMUwxOSAxTDE5IDJMMTcgMkwxNyAxTDE4IDFMMTggMEwxNSAwTDE1IDFMMTYgMUwxNiAyTDE1IDJMMTUgM0wxNCAzTDE0IDJMMTMgMkwxMyAzTDExIDNMMTEgMkwxMiAyTDEyIDFMMTMgMUwxMyAwTDExIDBMMTEgMUwxMCAxTDEwIDBaTTI2IDFMMjYgMkwyNSAyTDI1IDNMMjYgM0wyNiAyTDI3IDJMMjcgM0wyOCAzTDI4IDRMMzAgNEwzMCA2TDI5IDZMMjkgN0wzMCA3TDMwIDlMMjkgOUwyOSAxMUwzMCAxMUwzMCAxMkwzMSAxMkwzMSAxM0wyOSAxM0wyOSAxMkwyOCAxMkwyOCAxMUwyNyAxMUwyNyA5TDI2IDlMMjYgMTFMMjUgMTFMMjUgOUwyNCA5TDI0IDExTDIzIDExTDIzIDlMMjIgOUwyMiAxMkwyMyAxMkwyMyAxM0wyMiAxM0wyMiAxNkwyMyAxNkwyMyAxM0wyNCAxM0wyNCAxNkwyNSAxNkwyNSAxN0wyNCAxN0wyNCAxOEwyNSAxOEwyNSAxN0wyNiAxN0wyNiAxOUwyMyAxOUwyMyAxN0wxOSAxN0wxOSAxNkwyMCAxNkwyMCAxNUwyMSAxNUwyMSAxM0wyMCAxM0wyMCAxNEwxNyAxNEwxNyAxNUwxNiAxNUwxNiAxM0wxOCAxM0wxOCAxMkwyMCAxMkwyMCAxMEwyMSAxMEwyMSA4TDIwIDhMMjAgOUwxOSA5TDE5IDEwTDE4IDEwTDE4IDEyTDE3IDEyTDE3IDExTDE1IDExTDE1IDEzTDE0IDEzTDE0IDE1TDEzIDE1TDEzIDE3TDEyIDE3TDEyIDE4TDE1IDE4TDE1IDE3TDE0IDE3TDE0IDE1TDE1IDE1TDE1IDE2TDE2IDE2TDE2IDE4TDE3IDE4TDE3IDE5TDE2IDE5TDE2IDIwTDE1IDIwTDE1IDE5TDE0IDE5TDE0IDIxTDEzIDIxTDEzIDIwTDEyIDIwTDEyIDIxTDExIDIxTDExIDIwTDEwIDIwTDEwIDIxTDkgMjFMOSAyMkwxMiAyMkwxMiAyMUwxMyAyMUwxMyAyM0wxMiAyM0wxMiAyNEwxMyAyNEwxMyAyNUwxMiAyNUwxMiAyNkwxMyAyNkwxMyAyOEwxNCAyOEwxNCAyN0wxNSAyN0wxNSAyNkwxMyAyNkwxMyAyNUwxNiAyNUwxNiAyNEwxNCAyNEwxNCAyMUwxNSAyMUwxNSAyMkwxNiAyMkwxNiAyM0wxOCAyM0wxOCAyNUwxNyAyNUwxNyAyNkwxNiAyNkwxNiAyN0wxNyAyN0wxNyAyNkwxOCAyNkwxOCAyN0wxOSAyN0wxOSAyOEwyMCAyOEwyMCAzMEwxOSAzMEwxOSAyOUwxOCAyOUwxOCAyOEwxNSAyOEwxNSAyOUwxNCAyOUwxNCAzMUwxNSAzMUwxNSAzMkwxNiAzMkwxNiAzM0wxNyAzM0wxNyAzMUwxOCAzMUwxOCAzMEwxOSAzMEwxOSAzMkwxOCAzMkwxOCAzNEwxOSAzNEwxOSAzNUwyMCAzNUwyMCAzNEwyMSAzNEwyMSAzMkwyMCAzMkwyMCAzMEwyMiAzMEwyMiAzMUwyMyAzMUwyMyAyOUwyNCAyOUwyNCAzMEwyNSAzMEwyNSAzMkwyNCAzMkwyNCAzNkwyMyAzNkwyMyAzNUwyMiAzNUwyMiAzNkwyMyAzNkwyMyAzN0wyMSAzN0wyMSAzOUwyMyAzOUwyMyAzN0wyOCAzN0wyOCAzOEwyOSAzOEwyOSAzOUwzMCAzOUwzMCAzOEwyOSAzOEwyOSAzN0wyOCAzN0wyOCAzNUwyOSAzNUwyOSAzNEwzMCAzNEwzMCAzN0wzMSAzN0wzMSAzOEwzMyAzOEwzMyAzN0wzMSAzN0wzMSAzNEwzMCAzNEwzMCAzM0wyOSAzM0wyOSAyN0wzMCAyN0wzMCAyOEwzMSAyOEwzMSAyOUwzMCAyOUwzMCAzMEwzMSAzMEwzMSAzMUwzMyAzMUwzMyAzMkwzNSAzMkwzNSAzMUwzNCAzMUwzNCAyOUwzNyAyOUwzNyAzMEwzOCAzMEwzOCAzMUwzNiAzMUwzNiAzMkwzNyAzMkwzNyAzM0wzOCAzM0wzOCAzNEwzNyAzNEwzNyAzNkwzOCAzNkwzOCAzN0wzOSAzN0wzOSAzNkw0MCAzNkw0MCAzNUwzOCAzNUwzOCAzNEw0MCAzNEw0MCAzM0wzOSAzM0wzOSAzMkw0MCAzMkw0MCAyOUwzOSAyOUwzOSAyN0wzNyAyN0wzNyAyOEwzNiAyOEwzNiAyNkwzNCAyNkwzNCAyNUwzNSAyNUwzNSAyNEwzNiAyNEwzNiAyM0wzNyAyM0wzNyAyMkwzNiAyMkwzNiAyMUwzNSAyMUwzNSAyMkwzMyAyMkwzMyAyM0wzMiAyM0wzMiAyMUwzMSAyMUwzMSAxOUwzMiAxOUwzMiAxOEwzMyAxOEwzMyAxOUwzNCAxOUwzNCAxN0wzNSAxN0wzNSAxNkwzNiAxNkwzNiAxN0wzNyAxN0wzNyAxNUwzOCAxNUwzOCAxN0wzOSAxN0wzOSAxOEw0MCAxOEw0MCAxN0wzOSAxN0wzOSAxNUw0MCAxNUw0MCAxNEwzNyAxNEwzNyAxNUwzNiAxNUwzNiAxNEwzNSAxNEwzNSAxNUwzNCAxNUwzNCAxNEwzMiAxNEwzMiAxM0wzOSAxM0wzOSAxMEwzOCAxMEwzOCA5TDM3IDlMMzcgMTFMMzYgMTFMMzYgMTBMMzQgMTBMMzQgMTJMMzIgMTJMMzIgMTFMMzMgMTFMMzMgOUwzMSA5TDMxIDdMMzIgN0wzMiA2TDMxIDZMMzEgNUwzMiA1TDMyIDJMMzEgMkwzMSAzTDI4IDNMMjggMVpNOSAzTDkgNEwxMCA0TDEwIDNaTTEzIDNMMTMgNEwxNCA0TDE0IDNaTTExIDRMMTEgNUw5IDVMOSA3TDEwIDdMMTAgNkwxMSA2TDExIDdMMTIgN0wxMiA2TDEzIDZMMTMgNUwxMiA1TDEyIDRaTTE3IDZMMTcgN0wxOCA3TDE4IDZaTTE5IDZMMTkgN0wyMCA3TDIwIDZaTTIxIDZMMjEgN0wyMiA3TDIyIDZaTTMwIDZMMzAgN0wzMSA3TDMxIDZaTTQgOUw0IDExTDYgMTFMNiAxMkw4IDEyTDggMTFMNiAxMUw2IDEwTDcgMTBMNyA5Wk0zMCA5TDMwIDExTDMxIDExTDMxIDlaTTI0IDExTDI0IDEyTDI1IDEyTDI1IDExWk0zNyAxMUwzNyAxMkwzOCAxMkwzOCAxMVpNMjYgMTNMMjYgMTRMMjUgMTRMMjUgMTVMMjYgMTVMMjYgMTZMMjcgMTZMMjcgMTVMMjggMTVMMjggMTdMMjcgMTdMMjcgMTlMMjYgMTlMMjYgMjBMMjggMjBMMjggMjFMMjUgMjFMMjUgMjBMMjMgMjBMMjMgMjJMMjAgMjJMMjAgMjFMMTggMjFMMTggMjNMMTkgMjNMMTkgMjJMMjAgMjJMMjAgMjRMMTkgMjRMMTkgMjVMMTggMjVMMTggMjZMMTkgMjZMMTkgMjVMMjAgMjVMMjAgMjdMMjEgMjdMMjEgMjlMMjMgMjlMMjMgMjdMMjUgMjdMMjUgMjZMMjYgMjZMMjYgMjhMMjggMjhMMjggMjZMMzEgMjZMMzEgMjVMMzQgMjVMMzQgMjNMMzMgMjNMMzMgMjRMMzEgMjRMMzEgMjFMMzAgMjFMMzAgMThMMzEgMThMMzEgMTdMMzAgMTdMMzAgMTZMMzIgMTZMMzIgMTdMMzMgMTdMMzMgMTVMMjggMTVMMjggMTRMMjkgMTRMMjkgMTNaTTMgMTVMMyAxNkwyIDE2TDIgMTdMNCAxN0w0IDE5TDUgMTlMNSAxN0w2IDE3TDYgMThMNyAxOEw3IDE3TDYgMTdMNiAxNkw3IDE2TDcgMTVMNiAxNUw2IDE2TDQgMTZMNCAxNVpNMTcgMTVMMTcgMThMMTggMThMMTggMTlMMTkgMTlMMTkgMTdMMTggMTdMMTggMTZMMTkgMTZMMTkgMTVaTTIwIDE4TDIwIDIwTDIxIDIwTDIxIDIxTDIyIDIxTDIyIDE4Wk0yOCAxOEwyOCAxOUwyOSAxOUwyOSAxOFpNMSAyMEwxIDIxTDIgMjFMMiAyMFpNMyAyMEwzIDIxTDQgMjFMNCAyMkwzIDIyTDMgMjNMNSAyM0w1IDI0TDcgMjRMNyAyM0w1IDIzTDUgMjBaTTE2IDIwTDE2IDIxTDE3IDIxTDE3IDIwWk02IDIxTDYgMjJMNyAyMkw3IDIxWk0yNCAyMUwyNCAyMkwyNSAyMkwyNSAyM0wyMiAyM0wyMiAyNEwyMyAyNEwyMyAyNUwyNCAyNUwyNCAyNEwyNSAyNEwyNSAyNUwyNiAyNUwyNiAyNkwyNyAyNkwyNyAyNUwyOSAyNUwyOSAyM0wzMCAyM0wzMCAyMkwyOSAyMkwyOSAyM0wyNyAyM0wyNyAyMkwyNSAyMkwyNSAyMVpNMzUgMjJMMzUgMjNMMzYgMjNMMzYgMjJaTTI2IDIzTDI2IDI1TDI3IDI1TDI3IDIzWk0yMCAyNEwyMCAyNUwyMSAyNUwyMSAyN0wyMyAyN0wyMyAyNkwyMiAyNkwyMiAyNUwyMSAyNUwyMSAyNFpNMzAgMjRMMzAgMjVMMzEgMjVMMzEgMjRaTTIgMjVMMiAyNkwzIDI2TDMgMjVaTTMyIDI2TDMyIDI3TDMxIDI3TDMxIDI4TDMzIDI4TDMzIDI5TDMyIDI5TDMyIDMwTDMzIDMwTDMzIDI5TDM0IDI5TDM0IDI4TDM1IDI4TDM1IDI3TDM0IDI3TDM0IDI2Wk0xMSAyN0wxMSAyOEwxMiAyOEwxMiAyN1pNMzMgMjdMMzMgMjhMMzQgMjhMMzQgMjdaTTI0IDI4TDI0IDI5TDI1IDI5TDI1IDI4Wk0xNiAyOUwxNiAzMUwxNyAzMUwxNyAzMEwxOCAzMEwxOCAyOVpNMjYgMjlMMjYgMzJMMjcgMzJMMjcgMzFMMjggMzFMMjggMjlaTTM4IDI5TDM4IDMwTDM5IDMwTDM5IDI5Wk0yMiAzMkwyMiAzNEwyMyAzNEwyMyAzMlpNMjYgMzNMMjYgMzRMMjcgMzRMMjcgMzVMMjYgMzVMMjYgMzZMMjcgMzZMMjcgMzVMMjggMzVMMjggMzRMMjkgMzRMMjkgMzNaTTMzIDMzTDMzIDM2TDM2IDM2TDM2IDMzWk0zNCAzNEwzNCAzNUwzNSAzNUwzNSAzNFpNMTQgMzVMMTQgMzdMMTUgMzdMMTUgMzVaTTkgMzZMOSAzN0wxMCAzN0wxMCAzNlpNMTggMzdMMTggMzhMMTkgMzhMMTkgMzdaTTEwIDM4TDEwIDM5TDkgMzlMOSA0MEwxMCA0MEwxMCAzOUwxMSAzOUwxMSAzOFpNMjcgMzlMMjcgNDBMMjggNDBMMjggMzlaTTAgMEwwIDdMNyA3TDcgMFpNMSAxTDEgNkw2IDZMNiAxWk0yIDJMMiA1TDUgNUw1IDJaTTM0IDBMMzQgN0w0MSA3TDQxIDBaTTM1IDFMMzUgNkw0MCA2TDQwIDFaTTM2IDJMMzYgNUwzOSA1TDM5IDJaTTAgMzRMMCA0MUw3IDQxTDcgMzRaTTEgMzVMMSA0MEw2IDQwTDYgMzVaTTIgMzZMMiAzOUw1IDM5TDUgMzZaIiBmaWxsPSIjMDAwMDAwIi8+PC9nPjwvZz48L3N2Zz4K', '2022-12-08 04:52:49', '2022-12-08 05:27:31');
INSERT INTO `websites` (`id`, `link`, `qrcode_png`, `qrcode_eps`, `qrcode_svg`, `created_at`, `updated_at`) VALUES
(2, 'https://www.stockphotosecrets.com/questions-answers/technical/what-is-an-eps-file-and-which-program-can-open-it.html', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAAEsCAAAAABcFtGpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0QA/4ePzL8AABVUSURBVHja7V1xeJbVdf99SSASAgTQEIOCQCSIINV2laajdQUqcz5tZE8ni3XDDgp7ngJxs8geh2DLU4G5xyCupZPZtFsp1O6BPm7oBlqGymAVFImTzIDgIwgIGEqCgSTfuz/ueT+/cz25ue/7fQQTzvnn5tx77rn3/eXNeU/OvfdcIAadDdLogtW4PQiCIGgO2dZAoDLEplqmaB7VbgyCIAhavTTsDIIgCM7GGDsHSgqWgqVgKVgK1uVOefG7NvyrWL1jR8ddWlZla94rOFu/oivASoQ/HPEQHhr6WYUAsGsibzUa3ppiuKq/M2VpusiZIt5lfz9hlGeqGVtYz9j+hQAQyH8RFc94PEVxHgA09Yv+4B+/WaWddkm6mwfnA8Bb/vo8hUoj/O5Lo78uJZ1boqNqs9TAK1gKVvd3HdoPy7Z7gIcq67Ny0BQjzffzA0fH4B0P7cebfR6HDRqFzpwSq4fnOsA6PErss/5u6TOyhrHPU1eqnbvOlK15APDCXbwvCQ0CAHwwyuNpfvQIY8seAAC8uZr7eKSpuSAqWM/PEKsPjMySUzp8Dh+OyrGTAODcXGffbycy/ZMwg89Xm6UGXsFSsJSyH3VAEKk6y8MEHn0Snx6w7KhDiSm+JAY3Srz+p5Uqj+VIjQ05LgV9TbF18qfnzbLoUD4AvDBFavv61300vC/iTOXe4vQ3RzYfI18BANyzTm2WGngFS8FSUrAuzdfQRS8/K1bPu4axD7pU/L0pvnK7S0jS0PYQ/fCD3EsH1u9RCGiw2Fq1On2AkytFoW9xVhQqNCG2JyhEM9b4EzT2Uhplo/HuBkvLcO2h2mWXEKwcE43qaJ/PoGy9lYN8KgcBQJvaLDXwCpaCpZQNA99sLcq8LQm91Z7xFOt8Kuv8u2YNrMHrRakbxZlYIZrxktAs+pjLeq8CAPTnjceqGds0nmkYY6IO4WBUay0eUS0FQCpndP5i3ChPUHaLcCTolFIvidmtvNP5W6gyfSqI3RN4U42s8Hi6TGqPSmMQBEGwx37pgyAIgu3EVUqjpHYrt3c+oyNqs9TAK1gKVrd2HZJZ1pyU2ESCteVAYqOojTDtjkZJRgdraGxUJlC5l7Hr1jH2ForJPAEAKG8w7P5yADgxhDQEkt69rLLeuA4oowWcIoesRdO2mHLnraw6N86bFZuK/9O4OjTT1WZjCD0MXs0DgE13Rdd73wLzMsqtrwMA5tOgSysBoK2X2iw18AqWgqWkYHVtiOZiU91sxj70KQArzlnhQgDA56krfdt/Ts6d8RkKzvr/NorlOaylwcx2kcdodaf2j7Pz4IUxHjyvMPZwCd61QAI0CvierYVZek1i6FGbpWApWApWt3IddvlIXWsOPXrJjh6Yzr3qXN1pNBqLyl3qd3lXpmifs9X0LTBrHr+lj/i4vgCQ/C3JmMjE4WOGG2xSnORN9AHAnN1Jeslun5TOLRBPTK82wZgTpHDJUgDAlCYmVDMaAHCHNGoQVm42xRjePJE1XiE2znoKADCb4hb7xgFAY6g3mQCA5+lQzfIHL6FTOs0UP3VL/aGHpgrXebXek9VmqYFXsBQsjTpknVpjN0aUytYkPGQ7AKuE7/LIN8VUnwmaRYPUggVYV/p2jW3wUFRdbf7h/YJht0j6OvjLoNYprsa1a1nteNdUFi1ytZYEGZJ9/HuPK43dElMrxwEKTeMSYmsdg6ZeDr4xxCKvNHbJIAiCYI3aLDXwCpaCpWCpnxVSvfXl/Hl6vL3tG/TDht4OFd+LP0Vpm0QwnX74WT8AqFvMm++5yKgdaWHEPsl2eEjOgNvich0sMoPUcteBhq6Ruxw3re0+e0qJtrJHmspch3C0cA/QPun523llnu14dg31lvbGdDKDGBPMj9Amyebkq81SA69gKVg9xXU499+mTHzF/Pv7oaPrqdc5/zL9+17sMeyLnH3hoj6jpb1JHO34ccZO9gDrGEU1SsxujA10YnY9z/9pwi8NVgSE2O3FANCH/uVfRKs7PALwLd6VJ10LZb/keP5EqK+f2EytZoXt/BRW2yQHbqzaZCKuUwpMivrbTFg9Cm/27zt8GAC8m8GEPiumsZvYCwCeU5ulBl7BUrA06vAJOpfBQKZvXu9MJ3wuglSf+KnZPjJFARs0r4pazaJMryrHC5e0VmxI1pnZ66brTMnP7lgaLOJT4errx7hGq7gu3beRM7MVVLk0rGPeESV1PRoebHKu0SwkofX82C/RZsclRRZtpMZ5fHVnv8c6UcprDIIgCPY734cK0yWEY6uJxYStFzofzE4afECP/aqBV7AULAXrcvKzVv2Sf723Zaj3o9S/+uxY7e4vCrIn5SSm9/Is6V5nYbn6hx9m7G0Zo0XfzOW8ljaGtLcaCjdecOK1lcx1sO83NDKNqdp0DcflmdUw9amNIYYNhRrZjDJ/eRZKj3jEy4PPyfFw9/OivMFEuYnI7z7jA7G5LYt/amqz1MArWApWt3cdNrlaXz7pap0wIvawv/YRoqlVumR+k21AXIOmvkrW3gqzvvDgSpfezey8yF00DJ3deY0pIrKv7LOIz4GiOnQ+9+AZww4pBTq+su9JAMBjFGjZ6pEr9T45JQtb3Wl/w/pSDinN7m/o5kz7WKs7I+OMenN2niX3ZrVZauAVLAWr+0YdgDPZVRyqMwdQ2pr9e55vETUNyHgqRP0T3s8bTiX/Cg6WT2a2CXyvhmv650InwVzZ929WgGUe4/i9e2uqGdtEmo6n785JzBNHpTWZcdTa3zyx5a+YzGxNReKM+FRqMzn2+0S23rtV6W7MidXRFThn8jcxZvTtcQBwerXaLDXwCpaCpWBd1n6WBzVfz7/40wCgdayzzw2Otn+OcqLnix4yw7cCAGaay+jwj38gCX3TZ7TRMbA8lUyjKBtDOnFCzanaWuKW0AA8H3yNqYwy3U42hiSTyWSScq5gllGfOrtDieYNhRclHkifWNDZm5XuDwUX7f1ORKjN2jAJnzETarPUwCtYClYPdR2eja7x4EEPoZ9JlT/N/HGcKta5ZHfvBgCU8BsBX3qJgUWbNDfxY9Al2wAAT89ktRM2AAAeWyvOxWh6b4pUa9GdM1kjpQr5TlPHavGLMKmrKz3cmB0usPjDWOlVqHGhAeu/zJd/G++SVy4rLo9QS3RdPgC8Z9WOcr675Z2/LOX+XbJ3ZR/5pNvUZqmBV7AUrG7sOpyQ609EqCXyWS6JofaEh9rkyfh9o4A1hPO0dfORIZw1xd4hgobcJbyRd7HwHMKHMT7DCauWiHY3WI3XSHr30iaSCp47Lryyz0QWdmxxAUHqR7kabVrDs5ecEtOrsBBNSJVyiKY1XaaRh2gCawOux9kdmfbwEA2RdWWfOwnfPklvmJltuWHVZqmBV7AULAXrMgnRPPAAY4dnaZhN9/pI9Yusd8HTHkJbffR+gbO/Y8H3ZctcXUukY79u4q5DB8d+RdchJGdSV5nCzTQbpUY7qat47HdCB26u3varNkvBUrAUrMvYdZDp2CrG/mVvADhISz8Fs4Uebf9AP8zvfBG+6Z/853t8vVh9eFWWcRG3YSYOm/IXtLqzxpzHSVwLoMOzO2cLAWAXrbNMNbf9HqXlgiH5QFryfLMBt9lKxTGMRZ2GiKPU3CXIutOr2A7W9R0PGtJ7SQ/HcvmfmjfL1jAs7u/Cefanb98YGodl/H54aODxsdNORWqz1MArWApWt3Id5AyX7ryXp09LwrI1PepSNDTXe6In46SFe9f7I3D2Qw9FeeK3Mghra0xRbYoJ9wEA6nifLcS2pOcD7009f+kM8uwvB4ACkv3bJofok3y5qOw7klA1n/YUH0DbcwBg8wzZfSG98r07ztWdCSZiMUsetUWKgFQ4J7rfFaKpYY3WalRZ/Ht3bLCCIAgC2dfVzGxq4BUsBUvBujxDNHPnSlL0ndqbYGwYYWHcC1PErk1ST/uSXt6aYIWlqIGqGwcAwGu3iOottklShFyXrKyoAzqV/mVOnd1x3buz1dLQKiV1Jaq13bvoSV0bHRtDLOL37thX9vGNISXMdQhJ/wzVZilYCpaCdZm4DnKAwtp+8Zgp7vwcq33Uf9RlHmchTj7J+R+KUo87NLz5jCkHLmDVz4n3o/zqVwCAUXwHC50xumk682JwJA8AmmgDagnlKzMpTero3uAJZh3nITr1QpnZaEvwnE1smKrH0zWcp63MvYsAANfT1cj7B7I+7Hqjd+XgTi1LB7eMZ/ioeCWde4mywVQax+WkiaXsvoMrNDtaf0MhmoUr0p9pY0fpVYqZLyZfy1TsXWlV5/sI+VFx3D+iKzuozvEeRG2WGngFS8Hqlq7D2XpWXy9K13tXhtRA/31fl++vsMxjzac+UrWL3pYq/y+Q9ObRf/7HKFqyxiRsmynuv9gr1bY6t2r8OR3E3cNShj6cFEM0RIeHAUARzWymJBLIPXfwatLA91mM4LGOx8cwWQo3fPkYE1q0iIVFwuT51uqOk+T0KqGfxVd39khBk1q562ExRBMCEGGCWz32DU9whmjUZqmBV7AUrG7sOgSXYtTApzlxkcZJyG0eg+a5Xy26Lq6BcSHrlHXSaKcQhRtqFvgPKsvIG0Moqat1oGc8izoMLpT0dhLP2jUoPUTT93UAwGx53nX5wCeXwjImchqXioeu8Wp6Gt62XtkatI5x4f2GarPUwCtYCpaC1dNDNF40n3HPRbhG/ic/iTy1A/M9hBZnGY+P+KCLSiODNa7RlEW05mPY/eHZHVpxMhGr20jWikk586wvuZ/FFarFLseN/j7Gd6RRFst6Tesb4eqOiW58w5leZd+1ANA+mNeaqZQ2RnmzjDOTiovkFgqtYVuc6xMGRBZy9+hVEFP9aefQarPUwCtYCla3dh1ei/2/J51vGDkguh4S9rgH7fz/mjLxmejqM37EFFi065OO2pb8yJQsjpET7gw1n+/hxPamr/gmU5or+87dwsfZKA1+ZqYpH6GIggkpTeJT4XSI9Ja97VJvlqhGhoo2sUbyeGb9kYlmsCv7+lmKrpJROxIEQRAcIK4kiEyV1FVOnu+1usMaD1uNfANumUd6FaIW+YFnuVZ3ZFKbpQZewVKwekLUoU1qlneCJrzO7rZleeJtHurzMlbr1JdDexN2UOj/VPp9uUl5PYAyhhRVpGtMWEdYbxG7us65pqYitjb0YhpENwNbJztGE8/jnB7sBemR9G+kdezXPrtjgeXx0d0od93v0VV2HVLBGHZ2xwbLunen840hp9RmqYFXsBQsBeuy9rO+a4qv3S0Ivb3UQ9MD75vy/s8BQMtf+IzuvLLv9j9j7P3RH+5pfuZopkv20RjguTOGNEv0kVfUobm5ubm5MWRNz1rnVChjCI0SZgypNSx3HUKhS+TBy1QQf6ACIO3mhj6J2GMWAJ/cXFVwUf5LUJulYClYClZPDNEQvclZusDu9xMA8GFdhHGa2N13eNm/50vO1je6EqzUV4kyfVxTDgB2aH69OQUabhflSV0tDeOLASB40XAP7/CYxJJJUu3VY9kMSf3wMmmCHUQdGLeCbwyZxXKxnZzh6uoXognBktKr7LSEYmRmC8HyD9F0MEFXiMZOrxKCxRrtzGxJXd1RA69gKVg93HUI6byT9egRY5Cs6XVryneIJGmzS16uA6xEGELYZAr6rk4YYUp+7GVqX8sLAdLywVcyReC1RJQ35EoxqWshOSxmvmE++LJxol6uPt/VGN722+7443qKZwyRXYeQFnIZOamruLpjXdmXtXt3OtgYYlFzhMxs7Q7XQa/sUwOvYClYCpb6WZ+krzra5rxjyu/xYMQdji4b6MKd2//aY9B1V3pPJfQOFk8CgAt38kbruM80UcPt/lGHDlwHizZfMOSzuiN+mWt51CF0HQ5fSCcr6mDVEm1kXapY1KElyuuw0GhIJXU1rHEvgrxMXsteF+l179VpW3DRptLLwarNUgOvYClYPdd1sEg89tvkcxj4eVfjm2ZNaehNrHa3KUaMiTqhTKiepXrLC5cdxMycM6e7NE0Ua8mxqmKHjd+nHbLz7gEAfJOEaPAiUUPNTVJtLQeLNJiMLG138FqTeyWfuMVbWCOnQzNcDxOCdasLjhtcjbvcvxSmeJNYi6LyTH/1Y8QjveMLOpyJwAPAIbVZauAVLAWrx7kOTTE6ed2sIl8e0+QQ9az2EEo2+XcsjABWvxhgnWUDTBUTt69dZ0pz229/WuRYLWX4SN32S0K07FJdbR6Gf9QHMlHb6yDyeKhUZjbX6g5mZf468o0hPqs7RI2WInN253jIGqEa6zV27RqZF2P2ztWdhXrvjhp4BUvBUrA0RHOx6NkMMqh9hnHfvedTANaRks6F+cnxW9v9h2nf62gsdipq4l29jpw0X5HGtF4hOtbtrr8t+X7fvAh/kMmL9SecfVuQk6FIjtosNfAKloLV01yHM/Kyy43jhMqj1qmaP0kAwDv/E3kOLb+OIr3Bx1MxxedHSI2HDvkPMm0AAJwjfR9f2VcKAAdHiX3X3w0AydB1kM/utIj54E2I5vRRw1FiedBB4tG9gbQQDW8E7+JDFT8GADxK4SFKr0IHsv5qi4cGSp5/Nd27c2Ak8HE++C5ySgeZnDapY783uo799h8We5xx3pVqs9TAK1gKlkYdskKt1lXzH5pioMvOn858WKMipyhyly4Ca+BC6dX9dyt1GiVA218OAPnU5YdsAauD235JdiVniWiLw2evMSV5MXTb75c9Euxi5Uqmt48sxZO62n5W7GO/UTKzpTbgikldiawr+xodg24nmUr/zLSpzGzscNERtVlq4BUsBUvBUj8rEr3YtasvfIdp+TYAwL0838fOq8kZST8u0XR96AbkAMCG6q4Ba+p/mNI4mMExl+y8VYzlPunvWO0wOSuIaUxQ4wK+K2ckfff5HOQZHYOHkKHSZPberESWZBMR1Ca69P1NqM1SA69gKViXp+tgVgkw2x/4tfQ/+fSrAKD5X6h6DgBgW72HhtwYuz0pxes0Hs54ytHjFVrrGDVFAmu4HHZwppTfQqsmM1k2k6rvp3Nv8BDNCrov+DYD1lwG1l4fl6fMBdby70u1c2mYncMBoJCedDrV7jPhHb66VRemVxHByh2ZtXeWaerS1Hy4NvL8Qv602iw18AqWgtUDXYejWdZ8NGtCkXt+QAnVBufHVv++E6yhWcZq3TpH4xzysyjAsoQtooxe7tK7yBQNNF8uS7tHq/nGEKKvTfbwgyw4SP0NGQDhWt1xp46dJ17Zt8R/+UW+d8cinl7FTe57d/Tsjhp4BUvBUrAuC/p/R5oSjetsbnoAAAAASUVORK5CYII=', 'data:image/png;base64,JSFQUy1BZG9iZS0zLjAgRVBTRi0zLjAKJSVDcmVhdG9yOiBCYWNvblFyQ29kZQolJUJvdW5kaW5nQm94OiAwIDAgMzAwIDMwMCAKJSVCZWdpblByb2xvZwpzYXZlCjUwIGRpY3QgYmVnaW4KL3EgeyBnc2F2ZSB9IGJpbmQgZGVmCi9RIHsgZ3Jlc3RvcmUgfSBiaW5kIGRlZgovcyB7IHNjYWxlIH0gYmluZCBkZWYKL3QgeyB0cmFuc2xhdGUgfSBiaW5kIGRlZgovciB7IHJvdGF0ZSB9IGJpbmQgZGVmCi9uIHsgbmV3cGF0aCB9IGJpbmQgZGVmCi9tIHsgbW92ZXRvIH0gYmluZCBkZWYKL2wgeyBsaW5ldG8gfSBiaW5kIGRlZgovYyB7IGN1cnZldG8gfSBiaW5kIGRlZgoveiB7IGNsb3NlcGF0aCB9IGJpbmQgZGVmCi9mIHsgZW9maWxsIH0gYmluZCBkZWYKL3JnYiB7IHNldHJnYmNvbG9yIH0gYmluZCBkZWYKL2NteWsgeyBzZXRjbXlrY29sb3IgfSBiaW5kIGRlZgovZ3JheSB7IHNldGdyYXkgfSBiaW5kIGRlZgolJUVuZFByb2xvZwoxIC0xIHMKMCAtMzAwIHQKMCAwIG0gMzAwIDAgbCAzMDAgMzAwIGwgMCAzMDAgbCB6IDEgMSAxIHJnYiBmCjcuMzE3IDcuMzE3IHMKMCAwIHQKbiA5IDAgbSA5IDEgbCA4IDEgbCA4IDIgbCAxMCAyIGwgMTAgMyBsIDggMyBsIDggNCBsIDkgNCBsIDkgNSBsIDggNSBsIDggNyBsCiA5IDcgbCA5IDYgbCAxMCA2IGwgMTAgNyBsIDExIDcgbCAxMSA2IGwgMTIgNiBsIDEyIDcgbCAxMyA3IGwgMTMgNiBsIDE0IDYgbAogMTQgOCBsIDEzIDggbCAxMyA5IGwgMTIgOSBsIDEyIDExIGwgMTMgMTEgbCAxMyAxMiBsIDE0IDEyIGwgMTQgMTMgbCAxNSAxMyBsCiAxNSAxNSBsIDE0IDE1IGwgMTQgMTYgbCAxMyAxNiBsIDEzIDE1IGwgMTIgMTUgbCAxMiAxNyBsIDExIDE3IGwgMTEgMTEgbCAxMAogMTEgbCAxMCAxMCBsIDkgMTAgbCA5IDExIGwgOCAxMSBsIDggMTIgbCA2IDEyIGwgNiAxMyBsIDggMTMgbCA4IDEyIGwgOSAxMiBsCiA5IDEzIGwgMTAgMTMgbCAxMCAxNiBsIDkgMTYgbCA5IDE4IGwgMTAgMTggbCAxMCAyMCBsIDExIDIwIGwgMTEgMTggbCAxMiAxOAogbCAxMiAxOSBsIDEzIDE5IGwgMTMgMTcgbCAxNiAxNyBsIDE2IDE4IGwgMTUgMTggbCAxNSAxOSBsIDE0IDE5IGwgMTQgMjAgbAogMTYgMjAgbCAxNiAxOCBsIDE3IDE4IGwgMTcgMTcgbCAxOCAxNyBsIDE4IDE2IGwgMTkgMTYgbCAxOSAxNCBsIDIxIDE0IGwgMjEKIDE1IGwgMjAgMTUgbCAyMCAxNyBsIDE5IDE3IGwgMTkgMTggbCAxOCAxOCBsIDE4IDE5IGwgMTkgMTkgbCAxOSAyMCBsIDE4IDIwCiBsIDE4IDIxIGwgMTkgMjEgbCAxOSAyMiBsIDE3IDIyIGwgMTcgMjEgbCAxMyAyMSBsIDEzIDIwIGwgMTIgMjAgbCAxMiAyMSBsCiAxMyAyMSBsIDEzIDIyIGwgMTEgMjIgbCAxMSAyMyBsIDEwIDIzIGwgMTAgMjEgbCA5IDIxIGwgOSAyMCBsIDggMjAgbCA4IDIxIGwKIDcgMjEgbCA3IDIwIGwgNSAyMCBsIDUgMTkgbCA4IDE5IGwgOCAxNiBsIDYgMTYgbCA2IDE1IGwgOCAxNSBsIDggMTQgbCA0IDE0CiBsIDQgMTUgbCAxIDE1IGwgMSAxNCBsIDMgMTQgbCAzIDEzIGwgMSAxMyBsIDEgMTQgbCAwIDE0IGwgMCAxNyBsIDEgMTcgbCAxCiAxOCBsIDAgMTggbCAwIDIwIGwgMSAyMCBsIDEgMjEgbCAwIDIxIGwgMCAyNCBsIDEgMjQgbCAxIDI1IGwgMCAyNSBsIDAgMzMgbAogMSAzMyBsIDEgMzAgbCAyIDMwIGwgMiAyOSBsIDEgMjkgbCAxIDI3IGwgMiAyNyBsIDIgMjggbCAzIDI4IGwgMyAzMSBsIDQgMzEKIGwgNCAzMyBsIDggMzMgbCA4IDM1IGwgOSAzNSBsIDkgMzQgbCAxMiAzNCBsIDEyIDM2IGwgMTEgMzYgbCAxMSAzNyBsIDEzIDM3CiBsIDEzIDM0IGwgMTIgMzQgbCAxMiAzMyBsIDE0IDMzIGwgMTQgMzQgbCAxNSAzNCBsIDE1IDM1IGwgMTQgMzUgbCAxNCAzNiBsCiAxNSAzNiBsIDE1IDM3IGwgMTQgMzcgbCAxNCAzOCBsIDExIDM4IGwgMTEgNDEgbCAxNSA0MSBsIDE1IDM4IGwgMTcgMzggbCAxNwogMzcgbCAxNiAzNyBsIDE2IDM2IGwgMTcgMzYgbCAxNyAzMyBsIDE4IDMzIGwgMTggMzIgbCAxNyAzMiBsIDE3IDMzIGwgMTYgMzMKIGwgMTYgMzEgbCAxOCAzMSBsIDE4IDMwIGwgMjEgMzAgbCAyMSAyOSBsIDE3IDI5IGwgMTcgMjggbCAxOSAyOCBsIDE5IDI3IGwKIDE4IDI3IGwgMTggMjYgbCAyMCAyNiBsIDIwIDI3IGwgMjEgMjcgbCAyMSAyOCBsIDIyIDI4IGwgMjIgMjkgbCAyMyAyOSBsIDIzCiAzMCBsIDIyIDMwIGwgMjIgMzEgbCAxOSAzMSBsIDE5IDM0IGwgMTggMzQgbCAxOCAzNSBsIDE5IDM1IGwgMTkgMzQgbCAyMCAzNAogbCAyMCAzNiBsIDE4IDM2IGwgMTggMzcgbCAxOSAzNyBsIDE5IDM4IGwgMjAgMzggbCAyMCAzNiBsIDIyIDM2IGwgMjIgMzcgbAogMjEgMzcgbCAyMSAzOCBsIDI0IDM4IGwgMjQgMzcgbCAyNSAzNyBsIDI1IDM4IGwgMjYgMzggbCAyNiA0MCBsIDI1IDQwIGwgMjUKIDM5IGwgMjAgMzkgbCAyMCA0MCBsIDI0IDQwIGwgMjQgNDEgbCAyNiA0MSBsIDI2IDQwIGwgMjggNDAgbCAyOCAzOCBsIDI2IDM4CiBsIDI2IDM3IGwgMjggMzcgbCAyOCAzNiBsIDI5IDM2IGwgMjkgMzcgbCAzMCAzNyBsIDMwIDM4IGwgMjkgMzggbCAyOSAzOSBsCiAzMiAzOSBsIDMyIDQwIGwgMzMgNDAgbCAzMyAzOSBsIDMyIDM5IGwgMzIgMzggbCAzMSAzOCBsIDMxIDM3IGwgMzAgMzcgbCAzMAogMzYgbCAyOSAzNiBsIDI5IDM1IGwgMzEgMzUgbCAzMSAzNiBsIDMyIDM2IGwgMzIgMzcgbCAzNyAzNyBsIDM3IDM4IGwgMzYgMzgKIGwgMzYgMzkgbCAzNSAzOSBsIDM1IDM4IGwgMzQgMzggbCAzNCAzOSBsIDM1IDM5IGwgMzUgNDEgbCAzNiA0MSBsIDM2IDM5IGwKIDM3IDM5IGwgMzcgNDEgbCAzOSA0MSBsIDM5IDQwIGwgNDAgNDAgbCA0MCAzOSBsIDM5IDM5IGwgMzkgNDAgbCAzOCA0MCBsIDM4CiAzNyBsIDM5IDM3IGwgMzkgMzYgbCAzOCAzNiBsIDM4IDM3IGwgMzcgMzcgbCAzNyAzMiBsIDM4IDMyIGwgMzggMzUgbCAzOSAzNQogbCAzOSAzNCBsIDQxIDM0IGwgNDEgMzMgbCAzOSAzMyBsIDM5IDMyIGwgNDAgMzIgbCA0MCAzMSBsIDM5IDMxIGwgMzkgMzIgbAogMzggMzIgbCAzOCAzMCBsIDQxIDMwIGwgNDEgMjggbCAzNyAyOCBsIDM3IDI5IGwgMzYgMjkgbCAzNiAyNiBsIDM3IDI2IGwgMzcKIDI3IGwgMzkgMjcgbCAzOSAyNiBsIDM3IDI2IGwgMzcgMjUgbCAzNiAyNSBsIDM2IDI0IGwgMzcgMjQgbCAzNyAyMyBsIDM2IDIzCiBsIDM2IDIyIGwgMzggMjIgbCAzOCAyMyBsIDM5IDIzIGwgMzkgMjQgbCAzOCAyNCBsIDM4IDI1IGwgNDAgMjUgbCA0MCAyNiBsCiA0MSAyNiBsIDQxIDI0IGwgNDAgMjQgbCA0MCAyMyBsIDM5IDIzIGwgMzkgMjEgbCA0MCAyMSBsIDQwIDIyIGwgNDEgMjIgbCA0MQogMjEgbCA0MCAyMSBsIDQwIDIwIGwgNDEgMjAgbCA0MSAxOSBsIDQwIDE5IGwgNDAgMTggbCA0MSAxOCBsIDQxIDE3IGwgMzkgMTcKIGwgMzkgMTYgbCA0MCAxNiBsIDQwIDE1IGwgMzkgMTUgbCAzOSAxNiBsIDM4IDE2IGwgMzggMTQgbCAzNyAxNCBsIDM3IDEzIGwKIDM5IDEzIGwgMzkgMTIgbCAzOCAxMiBsIDM4IDExIGwgMzYgMTEgbCAzNiAxMCBsIDM4IDEwIGwgMzggOCBsIDM3IDggbCAzNyA5CiBsIDM2IDkgbCAzNiA4IGwgMzUgOCBsIDM1IDkgbCAzNCA5IGwgMzQgOCBsIDMzIDggbCAzMyA2IGwgMzIgNiBsIDMyIDkgbCAzMAogOSBsIDMwIDggbCAzMSA4IGwgMzEgNSBsIDMyIDUgbCAzMiA0IGwgMzEgNCBsIDMxIDUgbCAzMCA1IGwgMzAgMyBsIDI5IDMgbAogMjkgMiBsIDI4IDIgbCAyOCAxIGwgMzMgMSBsIDMzIDAgbCAyOCAwIGwgMjggMSBsIDI3IDEgbCAyNyAwIGwgMjYgMCBsIDI2IDEKIGwgMjUgMSBsIDI1IDIgbCAyMyAyIGwgMjMgMyBsIDIyIDMgbCAyMiAxIGwgMjQgMSBsIDI0IDAgbCAxNiAwIGwgMTYgMSBsIDE1CiAxIGwgMTUgMiBsIDE0IDIgbCAxNCAzIGwgMTYgMyBsIDE2IDIgbCAxNyAyIGwgMTcgMSBsIDIwIDEgbCAyMCAyIGwgMTggMiBsCiAxOCA1IGwgMjAgNSBsIDIwIDggbCAxOSA4IGwgMTkgMTAgbCAyMCAxMCBsIDIwIDExIGwgMTggMTEgbCAxOCA4IGwgMTcgOCBsCiAxNyA2IGwgMTYgNiBsIDE2IDggbCAxNyA4IGwgMTcgOSBsIDE2IDkgbCAxNiAxMCBsIDE0IDEwIGwgMTQgOSBsIDE1IDkgbCAxNQogNiBsIDE0IDYgbCAxNCA1IGwgMTcgNSBsIDE3IDQgbCAxNCA0IGwgMTQgNSBsIDEzIDUgbCAxMyA2IGwgMTIgNiBsIDEyIDQgbAogMTMgNCBsIDEzIDIgbCAxMiAyIGwgMTIgMSBsIDEzIDEgbCAxMyAwIGwgMTIgMCBsIDEyIDEgbCAxMSAxIGwgMTEgMCBsIHogMTAKIDEgbSAxMCAyIGwgMTEgMiBsIDExIDMgbCAxMCAzIGwgMTAgNSBsIDExIDUgbCAxMSAzIGwgMTIgMyBsIDEyIDIgbCAxMSAyIGwKIDExIDEgbCB6IDI1IDIgbSAyNSAzIGwgMjMgMyBsIDIzIDQgbCAyMiA0IGwgMjIgMyBsIDE5IDMgbCAxOSA0IGwgMjIgNCBsIDIyCiA1IGwgMjMgNSBsIDIzIDcgbCAyMiA3IGwgMjIgNiBsIDIxIDYgbCAyMSA3IGwgMjIgNyBsIDIyIDggbCAyMSA4IGwgMjEgOSBsCiAyMiA5IGwgMjIgMTAgbCAyMyAxMCBsIDIzIDEzIGwgMjIgMTMgbCAyMiAxMiBsIDIxIDEyIGwgMjEgMTEgbCAyMCAxMSBsIDIwCiAxMiBsIDE3IDEyIGwgMTcgMTMgbCAxNiAxMyBsIDE2IDExIGwgMTcgMTEgbCAxNyAxMCBsIDE2IDEwIGwgMTYgMTEgbCAxNCAxMQogbCAxNCAxMiBsIDE1IDEyIGwgMTUgMTMgbCAxNiAxMyBsIDE2IDE0IGwgMTggMTQgbCAxOCAxMyBsIDIxIDEzIGwgMjEgMTQgbAogMjIgMTQgbCAyMiAxNSBsIDIzIDE1IGwgMjMgMTYgbCAyOCAxNiBsIDI4IDE3IGwgMjQgMTcgbCAyNCAxOCBsIDIzIDE4IGwgMjMKIDE3IGwgMjIgMTcgbCAyMiAxNiBsIDIxIDE2IGwgMjEgMTggbCAxOSAxOCBsIDE5IDE5IGwgMjIgMTkgbCAyMiAyMCBsIDIxIDIwCiBsIDIxIDIyIGwgMTkgMjIgbCAxOSAyMyBsIDE3IDIzIGwgMTcgMjIgbCAxNSAyMiBsIDE1IDIzIGwgMTQgMjMgbCAxNCAyMiBsCiAxMyAyMiBsIDEzIDIzIGwgMTIgMjMgbCAxMiAyNiBsIDExIDI2IGwgMTEgMjUgbCAxMCAyNSBsIDEwIDI2IGwgOSAyNiBsIDkgMjQKIGwgMTAgMjQgbCAxMCAyMyBsIDkgMjMgbCA5IDIyIGwgNyAyMiBsIDcgMjEgbCA2IDIxIGwgNiAyMiBsIDUgMjIgbCA1IDIxIGwgNAogMjEgbCA0IDE5IGwgNSAxOSBsIDUgMTggbCA0IDE4IGwgNCAxNyBsIDYgMTcgbCA2IDE4IGwgNyAxOCBsIDcgMTcgbCA2IDE3IGwKIDYgMTYgbCA0IDE2IGwgNCAxNyBsIDMgMTcgbCAzIDE4IGwgMiAxOCBsIDIgMTkgbCAzIDE5IGwgMyAyMCBsIDIgMjAgbCAyIDIyCiBsIDMgMjIgbCAzIDIxIGwgNCAyMSBsIDQgMjMgbCAzIDIzIGwgMyAyNCBsIDIgMjQgbCAyIDIzIGwgMSAyMyBsIDEgMjQgbCAyCiAyNCBsIDIgMjcgbCAzIDI3IGwgMyAyOCBsIDQgMjggbCA0IDMwIGwgNSAzMCBsIDUgMzEgbCA2IDMxIGwgNiAzMiBsIDcgMzIgbAogNyAzMSBsIDggMzEgbCA4IDMwIGwgMTAgMzAgbCAxMCAzMSBsIDkgMzEgbCA5IDMyIGwgOCAzMiBsIDggMzMgbCAxMCAzMyBsIDEwCiAzMiBsIDExIDMyIGwgMTEgMzMgbCAxMiAzMyBsIDEyIDMxIGwgMTMgMzEgbCAxMyAzMiBsIDE0IDMyIGwgMTQgMzEgbCAxMyAzMQogbCAxMyAzMCBsIDEyIDMwIGwgMTIgMjkgbCAxNCAyOSBsIDE0IDMwIGwgMTUgMzAgbCAxNSAyOSBsIDE0IDI5IGwgMTQgMjggbAogMTcgMjggbCAxNyAyNyBsIDE0IDI3IGwgMTQgMjggbCAxMiAyOCBsIDEyIDI3IGwgMTMgMjcgbCAxMyAyNCBsIDE0IDI0IGwgMTQKIDI2IGwgMTYgMjYgbCAxNiAyNSBsIDE3IDI1IGwgMTcgMjQgbCAyMCAyNCBsIDIwIDI1IGwgMjEgMjUgbCAyMSAyNiBsIDIzIDI2CiBsIDIzIDI5IGwgMjQgMjkgbCAyNCAzMCBsIDIzIDMwIGwgMjMgMzEgbCAyMiAzMSBsIDIyIDMyIGwgMjAgMzIgbCAyMCAzMyBsCiAyMSAzMyBsIDIxIDM0IGwgMjIgMzQgbCAyMiAzNSBsIDI0IDM1IGwgMjQgMzYgbCAyNiAzNiBsIDI2IDM0IGwgMjggMzQgbCAyOAogMzMgbCAyOSAzMyBsIDI5IDM0IGwgMzIgMzQgbCAzMiAzMyBsIDMxIDMzIGwgMzEgMzIgbCAzMiAzMiBsIDMyIDMwIGwgMzAgMzAKIGwgMzAgMzEgbCAyOSAzMSBsIDI5IDMyIGwgMjcgMzIgbCAyNyAzMyBsIDI2IDMzIGwgMjYgMzQgbCAyNSAzNCBsIDI1IDMyIGwKIDI2IDMyIGwgMjYgMzEgbCAyNSAzMSBsIDI1IDI5IGwgMjQgMjkgbCAyNCAyNyBsIDI1IDI3IGwgMjUgMjggbCAyNiAyOCBsIDI2CiAzMCBsIDI4IDMwIGwgMjggMjkgbCAyNyAyOSBsIDI3IDI4IGwgMzAgMjggbCAzMCAyOSBsIDMxIDI5IGwgMzEgMjcgbCAzMiAyNwogbCAzMiAyNiBsIDMxIDI2IGwgMzEgMjcgbCAzMCAyNyBsIDMwIDI2IGwgMjkgMjYgbCAyOSAyNyBsIDI3IDI3IGwgMjcgMjggbAogMjYgMjggbCAyNiAyNiBsIDI4IDI2IGwgMjggMjUgbCAyNiAyNSBsIDI2IDI2IGwgMjUgMjYgbCAyNSAyNCBsIDI2IDI0IGwgMjYKIDIzIGwgMjcgMjMgbCAyNyAyMiBsIDI4IDIyIGwgMjggMjQgbCAzMCAyNCBsIDMwIDI1IGwgMzMgMjUgbCAzMyAyNyBsIDM0IDI3CiBsIDM0IDI4IGwgMzIgMjggbCAzMiAyOSBsIDM1IDI5IGwgMzUgMjcgbCAzNCAyNyBsIDM0IDI1IGwgMzUgMjUgbCAzNSAyNCBsCiAzNiAyNCBsIDM2IDIzIGwgMzUgMjMgbCAzNSAyNCBsIDMzIDI0IGwgMzMgMjMgbCAzNCAyMyBsIDM0IDIyIGwgMzMgMjIgbCAzMwogMjMgbCAzMiAyMyBsIDMyIDIyIGwgMzAgMjIgbCAzMCAyMSBsIDM1IDIxIGwgMzUgMjIgbCAzNiAyMiBsIDM2IDIxIGwgMzcgMjEKIGwgMzcgMjAgbCAzNSAyMCBsIDM1IDE5IGwgMzIgMTkgbCAzMiAxOCBsIDMxIDE4IGwgMzEgMTUgbCAzMyAxNSBsIDMzIDE2IGwKIDMyIDE2IGwgMzIgMTcgbCAzMyAxNyBsIDMzIDE2IGwgMzQgMTYgbCAzNCAxNyBsIDM1IDE3IGwgMzUgMTYgbCAzNCAxNiBsIDM0CiAxNSBsIDM1IDE1IGwgMzUgMTQgbCAzMCAxNCBsIDMwIDE1IGwgMjkgMTUgbCAyOSAxNCBsIDI4IDE0IGwgMjggMTMgbCAyOSAxMwogbCAyOSAxMiBsIDMwIDEyIGwgMzAgMTMgbCAzMSAxMyBsIDMxIDExIGwgMzIgMTEgbCAzMiAxMyBsIDM3IDEzIGwgMzcgMTIgbAogMzMgMTIgbCAzMyAxMSBsIDM1IDExIGwgMzUgMTAgbCAzNCAxMCBsIDM0IDkgbCAzMyA5IGwgMzMgMTEgbCAzMiAxMSBsIDMyIDEwCiBsIDMwIDEwIGwgMzAgOSBsIDI5IDkgbCAyOSAxMCBsIDMwIDEwIGwgMzAgMTEgbCAyOSAxMSBsIDI5IDEyIGwgMjggMTIgbCAyOAogMTMgbCAyNiAxMyBsIDI2IDE0IGwgMjggMTQgbCAyOCAxNSBsIDI1IDE1IGwgMjUgMTMgbCAyNCAxMyBsIDI0IDEyIGwgMjcgMTIKIGwgMjcgMTAgbCAyOCAxMCBsIDI4IDYgbCAyNyA2IGwgMjcgNSBsIDI4IDUgbCAyOCA0IGwgMjkgNCBsIDI5IDMgbCAyOCAzIGwKIDI4IDQgbCAyNyA0IGwgMjcgNSBsIDI2IDUgbCAyNiA0IGwgMjUgNCBsIDI1IDMgbCAyNiAzIGwgMjYgMiBsIHogMjMgNCBtIDIzCiA1IGwgMjQgNSBsIDI0IDQgbCB6IDI1IDUgbSAyNSA2IGwgMjQgNiBsIDI0IDcgbCAyMyA3IGwgMjMgOCBsIDIyIDggbCAyMiA5IGwKIDIzIDkgbCAyMyAxMCBsIDI0IDEwIGwgMjQgNyBsIDI1IDcgbCAyNSA2IGwgMjYgNiBsIDI2IDggbCAyNSA4IGwgMjUgOSBsIDI2CiA5IGwgMjYgOCBsIDI3IDggbCAyNyA2IGwgMjYgNiBsIDI2IDUgbCB6IDI5IDUgbSAyOSA4IGwgMzAgOCBsIDMwIDUgbCB6IDE4IDYKIG0gMTggNyBsIDE5IDcgbCAxOSA2IGwgeiAwIDggbSAwIDEyIGwgMSAxMiBsIDEgMTAgbCAzIDEwIGwgMyA5IGwgNSA5IGwgNSA4CiBsIHogNiA4IG0gNiA5IGwgMTEgOSBsIDExIDggbCB6IDM5IDggbSAzOSAxMCBsIDQxIDEwIGwgNDEgOSBsIDQwIDkgbCA0MCA4IGwKIHogNSAxMCBtIDUgMTEgbCA0IDExIGwgNCAxMyBsIDUgMTMgbCA1IDExIGwgNyAxMSBsIDcgMTAgbCB6IDI1IDEwIG0gMjUgMTEgbAogMjYgMTEgbCAyNiAxMCBsIHogMiAxMSBtIDIgMTIgbCAzIDEyIGwgMyAxMSBsIHogNDAgMTIgbSA0MCAxNCBsIDQxIDE0IGwgNDEKIDEyIGwgeiAxMiAxMyBtIDEyIDE0IGwgMTMgMTQgbCAxMyAxMyBsIHogMjMgMTMgbSAyMyAxNCBsIDI0IDE0IGwgMjQgMTMgbCB6CiAxNiAxNSBtIDE2IDE3IGwgMTcgMTcgbCAxNyAxNiBsIDE4IDE2IGwgMTggMTUgbCB6IDM2IDE1IG0gMzYgMTcgbCAzNyAxNyBsCiAzNyAxOCBsIDM2IDE4IGwgMzYgMTkgbCAzOCAxOSBsIDM4IDIwIGwgNDAgMjAgbCA0MCAxOSBsIDM5IDE5IGwgMzkgMTcgbCAzOAogMTcgbCAzOCAxNiBsIDM3IDE2IGwgMzcgMTUgbCB6IDI5IDE2IG0gMjkgMTcgbCAyOCAxNyBsIDI4IDE4IGwgMjcgMTggbCAyNwogMTkgbCAyNiAxOSBsIDI2IDIwIGwgMjQgMjAgbCAyNCAyMSBsIDIzIDIxIGwgMjMgMjIgbCAyMiAyMiBsIDIyIDIzIGwgMjEgMjMKIGwgMjEgMjQgbCAyMiAyNCBsIDIyIDI1IGwgMjMgMjUgbCAyMyAyNiBsIDI0IDI2IGwgMjQgMjMgbCAyNiAyMyBsIDI2IDIyIGwKIDI1IDIyIGwgMjUgMjEgbCAyOCAyMSBsIDI4IDIyIGwgMjkgMjIgbCAyOSAyMSBsIDMwIDIxIGwgMzAgMjAgbCAzMiAyMCBsIDMyCiAxOSBsIDMxIDE5IGwgMzEgMTggbCAzMCAxOCBsIDMwIDE2IGwgeiAxMCAxNyBtIDEwIDE4IGwgMTEgMTggbCAxMSAxNyBsIHogMwogMTggbSAzIDE5IGwgNCAxOSBsIDQgMTggbCB6IDIyIDE4IG0gMjIgMTkgbCAyMyAxOSBsIDIzIDE4IGwgeiAyOCAxOCBtIDI4IDE5CiBsIDI3IDE5IGwgMjcgMjAgbCAzMCAyMCBsIDMwIDE4IGwgeiA2IDIyIG0gNiAyMyBsIDUgMjMgbCA1IDI0IGwgMyAyNCBsIDMgMjcKIGwgNCAyNyBsIDQgMjUgbCA1IDI1IGwgNSAyNiBsIDYgMjYgbCA2IDI3IGwgNyAyNyBsIDcgMjYgbCA4IDI2IGwgOCAyNyBsIDkKIDI3IGwgOSAyNiBsIDggMjYgbCA4IDIzIGwgNyAyMyBsIDcgMjIgbCB6IDIzIDIyIG0gMjMgMjMgbCAyNCAyMyBsIDI0IDIyIGwgegogNiAyMyBtIDYgMjQgbCA3IDI0IGwgNyAyMyBsIHogMTYgMjMgbSAxNiAyNCBsIDE3IDI0IGwgMTcgMjMgbCB6IDMwIDIzIG0gMzAKIDI0IGwgMzEgMjQgbCAzMSAyMyBsIHogNiAyNSBtIDYgMjYgbCA3IDI2IGwgNyAyNSBsIHogMTAgMjcgbSAxMCAyOCBsIDExIDI4CiBsIDExIDI3IGwgeiA2IDI4IG0gNiAyOSBsIDUgMjkgbCA1IDMwIGwgNiAzMCBsIDYgMzEgbCA3IDMxIGwgNyAzMCBsIDYgMzAgbAogNiAyOSBsIDkgMjkgbCA5IDI4IGwgeiAxMCAyOSBtIDEwIDMwIGwgMTEgMzAgbCAxMSAyOSBsIHogMTYgMjkgbSAxNiAzMCBsIDE3CiAzMCBsIDE3IDI5IGwgeiAzNCAzMCBtIDM0IDMxIGwgMzMgMzEgbCAzMyAzMiBsIDM0IDMyIGwgMzQgMzEgbCAzNSAzMSBsIDM1CiAzMiBsIDM2IDMyIGwgMzYgMzAgbCB6IDI0IDMxIG0gMjQgMzIgbCAyNSAzMiBsIDI1IDMxIGwgeiAyMiAzMiBtIDIyIDM0IGwgMjQKIDM0IGwgMjQgMzMgbCAyMyAzMyBsIDIzIDMyIGwgeiAyOSAzMiBtIDI5IDMzIGwgMzAgMzMgbCAzMCAzMiBsIHogMTUgMzMgbSAxNQogMzQgbCAxNiAzNCBsIDE2IDMzIGwgeiAzMyAzMyBtIDMzIDM2IGwgMzYgMzYgbCAzNiAzMyBsIHogMzQgMzQgbSAzNCAzNSBsIDM1CiAzNSBsIDM1IDM0IGwgeiA4IDM2IG0gOCA0MSBsIDEwIDQxIGwgMTAgMzkgbCA5IDM5IGwgOSAzOCBsIDEwIDM4IGwgMTAgMzYgbAogeiA0MCAzNiBtIDQwIDM4IGwgNDEgMzggbCA0MSAzNiBsIHogMTIgMzkgbSAxMiA0MCBsIDE0IDQwIGwgMTQgMzkgbCB6IDE2IDM5CiBtIDE2IDQwIGwgMTcgNDAgbCAxNyA0MSBsIDE4IDQxIGwgMTggNDAgbCAxOSA0MCBsIDE5IDM5IGwgMTggMzkgbCAxOCA0MCBsCiAxNyA0MCBsIDE3IDM5IGwgeiAyOSA0MCBtIDI5IDQxIGwgMzAgNDEgbCAzMCA0MCBsIHogMCAwIG0gMCA3IGwgNyA3IGwgNyAwIGwKIHogMSAxIG0gMSA2IGwgNiA2IGwgNiAxIGwgeiAyIDIgbSAyIDUgbCA1IDUgbCA1IDIgbCB6IDM0IDAgbSAzNCA3IGwgNDEgNyBsCiA0MSAwIGwgeiAzNSAxIG0gMzUgNiBsIDQwIDYgbCA0MCAxIGwgeiAzNiAyIG0gMzYgNSBsIDM5IDUgbCAzOSAyIGwgeiAwIDM0IG0KIDAgNDEgbCA3IDQxIGwgNyAzNCBsIHogMSAzNSBtIDEgNDAgbCA2IDQwIGwgNiAzNSBsIHogMiAzNiBtIDIgMzkgbCA1IDM5IGwgNQogMzYgbCB6IDAgMCAwIHJnYiBmCiUlVFJBSUxFUgplbmQgcmVzdG9yZQolJUVPRg==', 'data:image/png;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgd2lkdGg9IjMwMCIgaGVpZ2h0PSIzMDAiIHZpZXdCb3g9IjAgMCAzMDAgMzAwIj48cmVjdCB4PSIwIiB5PSIwIiB3aWR0aD0iMzAwIiBoZWlnaHQ9IjMwMCIgZmlsbD0iI2ZmZmZmZiIvPjxnIHRyYW5zZm9ybT0ic2NhbGUoNy4zMTcpIj48ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgwLDApIj48cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik05IDBMOSAxTDggMUw4IDJMMTAgMkwxMCAzTDggM0w4IDRMOSA0TDkgNUw4IDVMOCA3TDkgN0w5IDZMMTAgNkwxMCA3TDExIDdMMTEgNkwxMiA2TDEyIDdMMTMgN0wxMyA2TDE0IDZMMTQgOEwxMyA4TDEzIDlMMTIgOUwxMiAxMUwxMyAxMUwxMyAxMkwxNCAxMkwxNCAxM0wxNSAxM0wxNSAxNUwxNCAxNUwxNCAxNkwxMyAxNkwxMyAxNUwxMiAxNUwxMiAxN0wxMSAxN0wxMSAxMUwxMCAxMUwxMCAxMEw5IDEwTDkgMTFMOCAxMUw4IDEyTDYgMTJMNiAxM0w4IDEzTDggMTJMOSAxMkw5IDEzTDEwIDEzTDEwIDE2TDkgMTZMOSAxOEwxMCAxOEwxMCAyMEwxMSAyMEwxMSAxOEwxMiAxOEwxMiAxOUwxMyAxOUwxMyAxN0wxNiAxN0wxNiAxOEwxNSAxOEwxNSAxOUwxNCAxOUwxNCAyMEwxNiAyMEwxNiAxOEwxNyAxOEwxNyAxN0wxOCAxN0wxOCAxNkwxOSAxNkwxOSAxNEwyMSAxNEwyMSAxNUwyMCAxNUwyMCAxN0wxOSAxN0wxOSAxOEwxOCAxOEwxOCAxOUwxOSAxOUwxOSAyMEwxOCAyMEwxOCAyMUwxOSAyMUwxOSAyMkwxNyAyMkwxNyAyMUwxMyAyMUwxMyAyMEwxMiAyMEwxMiAyMUwxMyAyMUwxMyAyMkwxMSAyMkwxMSAyM0wxMCAyM0wxMCAyMUw5IDIxTDkgMjBMOCAyMEw4IDIxTDcgMjFMNyAyMEw1IDIwTDUgMTlMOCAxOUw4IDE2TDYgMTZMNiAxNUw4IDE1TDggMTRMNCAxNEw0IDE1TDEgMTVMMSAxNEwzIDE0TDMgMTNMMSAxM0wxIDE0TDAgMTRMMCAxN0wxIDE3TDEgMThMMCAxOEwwIDIwTDEgMjBMMSAyMUwwIDIxTDAgMjRMMSAyNEwxIDI1TDAgMjVMMCAzM0wxIDMzTDEgMzBMMiAzMEwyIDI5TDEgMjlMMSAyN0wyIDI3TDIgMjhMMyAyOEwzIDMxTDQgMzFMNCAzM0w4IDMzTDggMzVMOSAzNUw5IDM0TDEyIDM0TDEyIDM2TDExIDM2TDExIDM3TDEzIDM3TDEzIDM0TDEyIDM0TDEyIDMzTDE0IDMzTDE0IDM0TDE1IDM0TDE1IDM1TDE0IDM1TDE0IDM2TDE1IDM2TDE1IDM3TDE0IDM3TDE0IDM4TDExIDM4TDExIDQxTDE1IDQxTDE1IDM4TDE3IDM4TDE3IDM3TDE2IDM3TDE2IDM2TDE3IDM2TDE3IDMzTDE4IDMzTDE4IDMyTDE3IDMyTDE3IDMzTDE2IDMzTDE2IDMxTDE4IDMxTDE4IDMwTDIxIDMwTDIxIDI5TDE3IDI5TDE3IDI4TDE5IDI4TDE5IDI3TDE4IDI3TDE4IDI2TDIwIDI2TDIwIDI3TDIxIDI3TDIxIDI4TDIyIDI4TDIyIDI5TDIzIDI5TDIzIDMwTDIyIDMwTDIyIDMxTDE5IDMxTDE5IDM0TDE4IDM0TDE4IDM1TDE5IDM1TDE5IDM0TDIwIDM0TDIwIDM2TDE4IDM2TDE4IDM3TDE5IDM3TDE5IDM4TDIwIDM4TDIwIDM2TDIyIDM2TDIyIDM3TDIxIDM3TDIxIDM4TDI0IDM4TDI0IDM3TDI1IDM3TDI1IDM4TDI2IDM4TDI2IDQwTDI1IDQwTDI1IDM5TDIwIDM5TDIwIDQwTDI0IDQwTDI0IDQxTDI2IDQxTDI2IDQwTDI4IDQwTDI4IDM4TDI2IDM4TDI2IDM3TDI4IDM3TDI4IDM2TDI5IDM2TDI5IDM3TDMwIDM3TDMwIDM4TDI5IDM4TDI5IDM5TDMyIDM5TDMyIDQwTDMzIDQwTDMzIDM5TDMyIDM5TDMyIDM4TDMxIDM4TDMxIDM3TDMwIDM3TDMwIDM2TDI5IDM2TDI5IDM1TDMxIDM1TDMxIDM2TDMyIDM2TDMyIDM3TDM3IDM3TDM3IDM4TDM2IDM4TDM2IDM5TDM1IDM5TDM1IDM4TDM0IDM4TDM0IDM5TDM1IDM5TDM1IDQxTDM2IDQxTDM2IDM5TDM3IDM5TDM3IDQxTDM5IDQxTDM5IDQwTDQwIDQwTDQwIDM5TDM5IDM5TDM5IDQwTDM4IDQwTDM4IDM3TDM5IDM3TDM5IDM2TDM4IDM2TDM4IDM3TDM3IDM3TDM3IDMyTDM4IDMyTDM4IDM1TDM5IDM1TDM5IDM0TDQxIDM0TDQxIDMzTDM5IDMzTDM5IDMyTDQwIDMyTDQwIDMxTDM5IDMxTDM5IDMyTDM4IDMyTDM4IDMwTDQxIDMwTDQxIDI4TDM3IDI4TDM3IDI5TDM2IDI5TDM2IDI2TDM3IDI2TDM3IDI3TDM5IDI3TDM5IDI2TDM3IDI2TDM3IDI1TDM2IDI1TDM2IDI0TDM3IDI0TDM3IDIzTDM2IDIzTDM2IDIyTDM4IDIyTDM4IDIzTDM5IDIzTDM5IDI0TDM4IDI0TDM4IDI1TDQwIDI1TDQwIDI2TDQxIDI2TDQxIDI0TDQwIDI0TDQwIDIzTDM5IDIzTDM5IDIxTDQwIDIxTDQwIDIyTDQxIDIyTDQxIDIxTDQwIDIxTDQwIDIwTDQxIDIwTDQxIDE5TDQwIDE5TDQwIDE4TDQxIDE4TDQxIDE3TDM5IDE3TDM5IDE2TDQwIDE2TDQwIDE1TDM5IDE1TDM5IDE2TDM4IDE2TDM4IDE0TDM3IDE0TDM3IDEzTDM5IDEzTDM5IDEyTDM4IDEyTDM4IDExTDM2IDExTDM2IDEwTDM4IDEwTDM4IDhMMzcgOEwzNyA5TDM2IDlMMzYgOEwzNSA4TDM1IDlMMzQgOUwzNCA4TDMzIDhMMzMgNkwzMiA2TDMyIDlMMzAgOUwzMCA4TDMxIDhMMzEgNUwzMiA1TDMyIDRMMzEgNEwzMSA1TDMwIDVMMzAgM0wyOSAzTDI5IDJMMjggMkwyOCAxTDMzIDFMMzMgMEwyOCAwTDI4IDFMMjcgMUwyNyAwTDI2IDBMMjYgMUwyNSAxTDI1IDJMMjMgMkwyMyAzTDIyIDNMMjIgMUwyNCAxTDI0IDBMMTYgMEwxNiAxTDE1IDFMMTUgMkwxNCAyTDE0IDNMMTYgM0wxNiAyTDE3IDJMMTcgMUwyMCAxTDIwIDJMMTggMkwxOCA1TDIwIDVMMjAgOEwxOSA4TDE5IDEwTDIwIDEwTDIwIDExTDE4IDExTDE4IDhMMTcgOEwxNyA2TDE2IDZMMTYgOEwxNyA4TDE3IDlMMTYgOUwxNiAxMEwxNCAxMEwxNCA5TDE1IDlMMTUgNkwxNCA2TDE0IDVMMTcgNUwxNyA0TDE0IDRMMTQgNUwxMyA1TDEzIDZMMTIgNkwxMiA0TDEzIDRMMTMgMkwxMiAyTDEyIDFMMTMgMUwxMyAwTDEyIDBMMTIgMUwxMSAxTDExIDBaTTEwIDFMMTAgMkwxMSAyTDExIDNMMTAgM0wxMCA1TDExIDVMMTEgM0wxMiAzTDEyIDJMMTEgMkwxMSAxWk0yNSAyTDI1IDNMMjMgM0wyMyA0TDIyIDRMMjIgM0wxOSAzTDE5IDRMMjIgNEwyMiA1TDIzIDVMMjMgN0wyMiA3TDIyIDZMMjEgNkwyMSA3TDIyIDdMMjIgOEwyMSA4TDIxIDlMMjIgOUwyMiAxMEwyMyAxMEwyMyAxM0wyMiAxM0wyMiAxMkwyMSAxMkwyMSAxMUwyMCAxMUwyMCAxMkwxNyAxMkwxNyAxM0wxNiAxM0wxNiAxMUwxNyAxMUwxNyAxMEwxNiAxMEwxNiAxMUwxNCAxMUwxNCAxMkwxNSAxMkwxNSAxM0wxNiAxM0wxNiAxNEwxOCAxNEwxOCAxM0wyMSAxM0wyMSAxNEwyMiAxNEwyMiAxNUwyMyAxNUwyMyAxNkwyOCAxNkwyOCAxN0wyNCAxN0wyNCAxOEwyMyAxOEwyMyAxN0wyMiAxN0wyMiAxNkwyMSAxNkwyMSAxOEwxOSAxOEwxOSAxOUwyMiAxOUwyMiAyMEwyMSAyMEwyMSAyMkwxOSAyMkwxOSAyM0wxNyAyM0wxNyAyMkwxNSAyMkwxNSAyM0wxNCAyM0wxNCAyMkwxMyAyMkwxMyAyM0wxMiAyM0wxMiAyNkwxMSAyNkwxMSAyNUwxMCAyNUwxMCAyNkw5IDI2TDkgMjRMMTAgMjRMMTAgMjNMOSAyM0w5IDIyTDcgMjJMNyAyMUw2IDIxTDYgMjJMNSAyMkw1IDIxTDQgMjFMNCAxOUw1IDE5TDUgMThMNCAxOEw0IDE3TDYgMTdMNiAxOEw3IDE4TDcgMTdMNiAxN0w2IDE2TDQgMTZMNCAxN0wzIDE3TDMgMThMMiAxOEwyIDE5TDMgMTlMMyAyMEwyIDIwTDIgMjJMMyAyMkwzIDIxTDQgMjFMNCAyM0wzIDIzTDMgMjRMMiAyNEwyIDIzTDEgMjNMMSAyNEwyIDI0TDIgMjdMMyAyN0wzIDI4TDQgMjhMNCAzMEw1IDMwTDUgMzFMNiAzMUw2IDMyTDcgMzJMNyAzMUw4IDMxTDggMzBMMTAgMzBMMTAgMzFMOSAzMUw5IDMyTDggMzJMOCAzM0wxMCAzM0wxMCAzMkwxMSAzMkwxMSAzM0wxMiAzM0wxMiAzMUwxMyAzMUwxMyAzMkwxNCAzMkwxNCAzMUwxMyAzMUwxMyAzMEwxMiAzMEwxMiAyOUwxNCAyOUwxNCAzMEwxNSAzMEwxNSAyOUwxNCAyOUwxNCAyOEwxNyAyOEwxNyAyN0wxNCAyN0wxNCAyOEwxMiAyOEwxMiAyN0wxMyAyN0wxMyAyNEwxNCAyNEwxNCAyNkwxNiAyNkwxNiAyNUwxNyAyNUwxNyAyNEwyMCAyNEwyMCAyNUwyMSAyNUwyMSAyNkwyMyAyNkwyMyAyOUwyNCAyOUwyNCAzMEwyMyAzMEwyMyAzMUwyMiAzMUwyMiAzMkwyMCAzMkwyMCAzM0wyMSAzM0wyMSAzNEwyMiAzNEwyMiAzNUwyNCAzNUwyNCAzNkwyNiAzNkwyNiAzNEwyOCAzNEwyOCAzM0wyOSAzM0wyOSAzNEwzMiAzNEwzMiAzM0wzMSAzM0wzMSAzMkwzMiAzMkwzMiAzMEwzMCAzMEwzMCAzMUwyOSAzMUwyOSAzMkwyNyAzMkwyNyAzM0wyNiAzM0wyNiAzNEwyNSAzNEwyNSAzMkwyNiAzMkwyNiAzMUwyNSAzMUwyNSAyOUwyNCAyOUwyNCAyN0wyNSAyN0wyNSAyOEwyNiAyOEwyNiAzMEwyOCAzMEwyOCAyOUwyNyAyOUwyNyAyOEwzMCAyOEwzMCAyOUwzMSAyOUwzMSAyN0wzMiAyN0wzMiAyNkwzMSAyNkwzMSAyN0wzMCAyN0wzMCAyNkwyOSAyNkwyOSAyN0wyNyAyN0wyNyAyOEwyNiAyOEwyNiAyNkwyOCAyNkwyOCAyNUwyNiAyNUwyNiAyNkwyNSAyNkwyNSAyNEwyNiAyNEwyNiAyM0wyNyAyM0wyNyAyMkwyOCAyMkwyOCAyNEwzMCAyNEwzMCAyNUwzMyAyNUwzMyAyN0wzNCAyN0wzNCAyOEwzMiAyOEwzMiAyOUwzNSAyOUwzNSAyN0wzNCAyN0wzNCAyNUwzNSAyNUwzNSAyNEwzNiAyNEwzNiAyM0wzNSAyM0wzNSAyNEwzMyAyNEwzMyAyM0wzNCAyM0wzNCAyMkwzMyAyMkwzMyAyM0wzMiAyM0wzMiAyMkwzMCAyMkwzMCAyMUwzNSAyMUwzNSAyMkwzNiAyMkwzNiAyMUwzNyAyMUwzNyAyMEwzNSAyMEwzNSAxOUwzMiAxOUwzMiAxOEwzMSAxOEwzMSAxNUwzMyAxNUwzMyAxNkwzMiAxNkwzMiAxN0wzMyAxN0wzMyAxNkwzNCAxNkwzNCAxN0wzNSAxN0wzNSAxNkwzNCAxNkwzNCAxNUwzNSAxNUwzNSAxNEwzMCAxNEwzMCAxNUwyOSAxNUwyOSAxNEwyOCAxNEwyOCAxM0wyOSAxM0wyOSAxMkwzMCAxMkwzMCAxM0wzMSAxM0wzMSAxMUwzMiAxMUwzMiAxM0wzNyAxM0wzNyAxMkwzMyAxMkwzMyAxMUwzNSAxMUwzNSAxMEwzNCAxMEwzNCA5TDMzIDlMMzMgMTFMMzIgMTFMMzIgMTBMMzAgMTBMMzAgOUwyOSA5TDI5IDEwTDMwIDEwTDMwIDExTDI5IDExTDI5IDEyTDI4IDEyTDI4IDEzTDI2IDEzTDI2IDE0TDI4IDE0TDI4IDE1TDI1IDE1TDI1IDEzTDI0IDEzTDI0IDEyTDI3IDEyTDI3IDEwTDI4IDEwTDI4IDZMMjcgNkwyNyA1TDI4IDVMMjggNEwyOSA0TDI5IDNMMjggM0wyOCA0TDI3IDRMMjcgNUwyNiA1TDI2IDRMMjUgNEwyNSAzTDI2IDNMMjYgMlpNMjMgNEwyMyA1TDI0IDVMMjQgNFpNMjUgNUwyNSA2TDI0IDZMMjQgN0wyMyA3TDIzIDhMMjIgOEwyMiA5TDIzIDlMMjMgMTBMMjQgMTBMMjQgN0wyNSA3TDI1IDZMMjYgNkwyNiA4TDI1IDhMMjUgOUwyNiA5TDI2IDhMMjcgOEwyNyA2TDI2IDZMMjYgNVpNMjkgNUwyOSA4TDMwIDhMMzAgNVpNMTggNkwxOCA3TDE5IDdMMTkgNlpNMCA4TDAgMTJMMSAxMkwxIDEwTDMgMTBMMyA5TDUgOUw1IDhaTTYgOEw2IDlMMTEgOUwxMSA4Wk0zOSA4TDM5IDEwTDQxIDEwTDQxIDlMNDAgOUw0MCA4Wk01IDEwTDUgMTFMNCAxMUw0IDEzTDUgMTNMNSAxMUw3IDExTDcgMTBaTTI1IDEwTDI1IDExTDI2IDExTDI2IDEwWk0yIDExTDIgMTJMMyAxMkwzIDExWk00MCAxMkw0MCAxNEw0MSAxNEw0MSAxMlpNMTIgMTNMMTIgMTRMMTMgMTRMMTMgMTNaTTIzIDEzTDIzIDE0TDI0IDE0TDI0IDEzWk0xNiAxNUwxNiAxN0wxNyAxN0wxNyAxNkwxOCAxNkwxOCAxNVpNMzYgMTVMMzYgMTdMMzcgMTdMMzcgMThMMzYgMThMMzYgMTlMMzggMTlMMzggMjBMNDAgMjBMNDAgMTlMMzkgMTlMMzkgMTdMMzggMTdMMzggMTZMMzcgMTZMMzcgMTVaTTI5IDE2TDI5IDE3TDI4IDE3TDI4IDE4TDI3IDE4TDI3IDE5TDI2IDE5TDI2IDIwTDI0IDIwTDI0IDIxTDIzIDIxTDIzIDIyTDIyIDIyTDIyIDIzTDIxIDIzTDIxIDI0TDIyIDI0TDIyIDI1TDIzIDI1TDIzIDI2TDI0IDI2TDI0IDIzTDI2IDIzTDI2IDIyTDI1IDIyTDI1IDIxTDI4IDIxTDI4IDIyTDI5IDIyTDI5IDIxTDMwIDIxTDMwIDIwTDMyIDIwTDMyIDE5TDMxIDE5TDMxIDE4TDMwIDE4TDMwIDE2Wk0xMCAxN0wxMCAxOEwxMSAxOEwxMSAxN1pNMyAxOEwzIDE5TDQgMTlMNCAxOFpNMjIgMThMMjIgMTlMMjMgMTlMMjMgMThaTTI4IDE4TDI4IDE5TDI3IDE5TDI3IDIwTDMwIDIwTDMwIDE4Wk02IDIyTDYgMjNMNSAyM0w1IDI0TDMgMjRMMyAyN0w0IDI3TDQgMjVMNSAyNUw1IDI2TDYgMjZMNiAyN0w3IDI3TDcgMjZMOCAyNkw4IDI3TDkgMjdMOSAyNkw4IDI2TDggMjNMNyAyM0w3IDIyWk0yMyAyMkwyMyAyM0wyNCAyM0wyNCAyMlpNNiAyM0w2IDI0TDcgMjRMNyAyM1pNMTYgMjNMMTYgMjRMMTcgMjRMMTcgMjNaTTMwIDIzTDMwIDI0TDMxIDI0TDMxIDIzWk02IDI1TDYgMjZMNyAyNkw3IDI1Wk0xMCAyN0wxMCAyOEwxMSAyOEwxMSAyN1pNNiAyOEw2IDI5TDUgMjlMNSAzMEw2IDMwTDYgMzFMNyAzMUw3IDMwTDYgMzBMNiAyOUw5IDI5TDkgMjhaTTEwIDI5TDEwIDMwTDExIDMwTDExIDI5Wk0xNiAyOUwxNiAzMEwxNyAzMEwxNyAyOVpNMzQgMzBMMzQgMzFMMzMgMzFMMzMgMzJMMzQgMzJMMzQgMzFMMzUgMzFMMzUgMzJMMzYgMzJMMzYgMzBaTTI0IDMxTDI0IDMyTDI1IDMyTDI1IDMxWk0yMiAzMkwyMiAzNEwyNCAzNEwyNCAzM0wyMyAzM0wyMyAzMlpNMjkgMzJMMjkgMzNMMzAgMzNMMzAgMzJaTTE1IDMzTDE1IDM0TDE2IDM0TDE2IDMzWk0zMyAzM0wzMyAzNkwzNiAzNkwzNiAzM1pNMzQgMzRMMzQgMzVMMzUgMzVMMzUgMzRaTTggMzZMOCA0MUwxMCA0MUwxMCAzOUw5IDM5TDkgMzhMMTAgMzhMMTAgMzZaTTQwIDM2TDQwIDM4TDQxIDM4TDQxIDM2Wk0xMiAzOUwxMiA0MEwxNCA0MEwxNCAzOVpNMTYgMzlMMTYgNDBMMTcgNDBMMTcgNDFMMTggNDFMMTggNDBMMTkgNDBMMTkgMzlMMTggMzlMMTggNDBMMTcgNDBMMTcgMzlaTTI5IDQwTDI5IDQxTDMwIDQxTDMwIDQwWk0wIDBMMCA3TDcgN0w3IDBaTTEgMUwxIDZMNiA2TDYgMVpNMiAyTDIgNUw1IDVMNSAyWk0zNCAwTDM0IDdMNDEgN0w0MSAwWk0zNSAxTDM1IDZMNDAgNkw0MCAxWk0zNiAyTDM2IDVMMzkgNUwzOSAyWk0wIDM0TDAgNDFMNyA0MUw3IDM0Wk0xIDM1TDEgNDBMNiA0MEw2IDM1Wk0yIDM2TDIgMzlMNSAzOUw1IDM2WiIgZmlsbD0iIzAwMDAwMCIvPjwvZz48L2c+PC9zdmc+Cg==', '2022-12-08 04:53:53', '2022-12-08 05:31:22'),
(4, 'https://portal.piaic.org/courses', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAAEsAQAAAABRBrPYAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0QAAd2KE6QAAAGBSURBVGje7ZlNrsMgDITZcWyuzA382oY4M4bwlnGksaKq0K/Z+IexKcWt2vcppfVzuTRh78K2y8PGq8yuN/tPwtJg5HezEAnx88TMTNg7sF7+9+knJHrBpbAXYFuffq1z4gvLisVjl4Grkrv369hZF3xhT2FBSnEpvlVc+AjLjOEXxgyt/3KZ8/fYF5YBQ0lsnXw6/nUaYVAEhGXEuG/1pXXuT6F0E2ZjeYSNsOexuzkDVOkPNjJ69j6e1MJyYLcGrQ0q4atcn4oag0RYKoycXiDTJ6E1DmJhmTGc6DIWynLrYx7l3e6xc53RwjJhcyn207a5it5gFcS2sKex2YnBmmN1xAa1SJDFwjJg5DtoduYYaLboiWKzIywZ5no43pzyBMPjJIguYUmwXXNa19hOhglLhq3n+a6gwg07vEdYNixexCzn/CuMbnZWN+zCsmBBO823sdDjNBhoWBeWGiPFO2G0f+4IS4gtnLit5KNL6sKSYWH6hyJ5M9tnLW1mwtJgf9t8vFvj1cdtAAAAAElFTkSuQmCC', 'data:image/png;base64,JSFQUy1BZG9iZS0zLjAgRVBTRi0zLjAKJSVDcmVhdG9yOiBCYWNvblFyQ29kZQolJUJvdW5kaW5nQm94OiAwIDAgMzAwIDMwMCAKJSVCZWdpblByb2xvZwpzYXZlCjUwIGRpY3QgYmVnaW4KL3EgeyBnc2F2ZSB9IGJpbmQgZGVmCi9RIHsgZ3Jlc3RvcmUgfSBiaW5kIGRlZgovcyB7IHNjYWxlIH0gYmluZCBkZWYKL3QgeyB0cmFuc2xhdGUgfSBiaW5kIGRlZgovciB7IHJvdGF0ZSB9IGJpbmQgZGVmCi9uIHsgbmV3cGF0aCB9IGJpbmQgZGVmCi9tIHsgbW92ZXRvIH0gYmluZCBkZWYKL2wgeyBsaW5ldG8gfSBiaW5kIGRlZgovYyB7IGN1cnZldG8gfSBiaW5kIGRlZgoveiB7IGNsb3NlcGF0aCB9IGJpbmQgZGVmCi9mIHsgZW9maWxsIH0gYmluZCBkZWYKL3JnYiB7IHNldHJnYmNvbG9yIH0gYmluZCBkZWYKL2NteWsgeyBzZXRjbXlrY29sb3IgfSBiaW5kIGRlZgovZ3JheSB7IHNldGdyYXkgfSBiaW5kIGRlZgolJUVuZFByb2xvZwoxIC0xIHMKMCAtMzAwIHQKMCAwIG0gMzAwIDAgbCAzMDAgMzAwIGwgMCAzMDAgbCB6IDEgMSAxIHJnYiBmCjEyIDEyIHMKMCAwIHQKbiA4IDAgbSA4IDQgbCA5IDQgbCA5IDMgbCAxMCAzIGwgMTAgMSBsIDEyIDEgbCAxMiAyIGwgMTQgMiBsIDE0IDMgbCAxMSAzIGwKIDExIDUgbCAxMCA1IGwgMTAgNyBsIDkgNyBsIDkgNSBsIDggNSBsIDggNyBsIDkgNyBsIDkgOSBsIDggOSBsIDggMTAgbCA1IDEwCiBsIDUgOSBsIDcgOSBsIDcgOCBsIDQgOCBsIDQgOSBsIDMgOSBsIDMgMTAgbCAxIDEwIGwgMSA5IGwgMiA5IGwgMiA4IGwgMCA4IGwKIDAgMTAgbCAxIDEwIGwgMSAxMSBsIDAgMTEgbCAwIDE0IGwgMSAxNCBsIDEgMTIgbCAyIDEyIGwgMiAxNCBsIDQgMTQgbCA0IDEzCiBsIDUgMTMgbCA1IDE1IGwgMiAxNSBsIDIgMTYgbCAwIDE2IGwgMCAxNyBsIDIgMTcgbCAyIDE2IGwgNSAxNiBsIDUgMTcgbCA3CiAxNyBsIDcgMTYgbCA4IDE2IGwgOCAxNSBsIDcgMTUgbCA3IDE0IGwgNiAxNCBsIDYgMTMgbCA3IDEzIGwgNyAxMiBsIDEwIDEyIGwKIDEwIDExIGwgMTIgMTEgbCAxMiAxMiBsIDExIDEyIGwgMTEgMTQgbCA5IDE0IGwgOSAxNSBsIDE1IDE1IGwgMTUgMTcgbCAxNCAxNwogbCAxNCAxOCBsIDEyIDE4IGwgMTIgMTcgbCAxMyAxNyBsIDEzIDE2IGwgMTIgMTYgbCAxMiAxNyBsIDExIDE3IGwgMTEgMTggbCA5CiAxOCBsIDkgMTcgbCA4IDE3IGwgOCAxOCBsIDkgMTggbCA5IDE5IGwgOCAxOSBsIDggMjEgbCA5IDIxIGwgOSAyMyBsIDggMjMgbAogOCAyNSBsIDkgMjUgbCA5IDI0IGwgMTAgMjQgbCAxMCAyMiBsIDExIDIyIGwgMTEgMjMgbCAxMiAyMyBsIDEyIDI1IGwgMTMgMjUKIGwgMTMgMjMgbCAxNCAyMyBsIDE0IDIxIGwgMTMgMjEgbCAxMyAxOSBsIDE0IDE5IGwgMTQgMjAgbCAxNSAyMCBsIDE1IDE3IGwKIDE2IDE3IGwgMTYgMjEgbCAxNSAyMSBsIDE1IDI1IGwgMTYgMjUgbCAxNiAyMyBsIDE3IDIzIGwgMTcgMjIgbCAxOCAyMiBsIDE4CiAyMyBsIDE5IDIzIGwgMTkgMjQgbCAxOCAyNCBsIDE4IDI1IGwgMTkgMjUgbCAxOSAyNCBsIDIyIDI0IGwgMjIgMjUgbCAyNSAyNQogbCAyNSAyNCBsIDI0IDI0IGwgMjQgMjIgbCAyMyAyMiBsIDIzIDIwIGwgMjQgMjAgbCAyNCAyMSBsIDI1IDIxIGwgMjUgMjAgbAogMjQgMjAgbCAyNCAxOSBsIDIxIDE5IGwgMjEgMTcgbCAyMyAxNyBsIDIzIDE2IGwgMjQgMTYgbCAyNCAxNSBsIDIzIDE1IGwgMjMKIDE0IGwgMjQgMTQgbCAyNCAxMyBsIDI1IDEzIGwgMjUgMTIgbCAyNCAxMiBsIDI0IDExIGwgMjMgMTEgbCAyMyAxMCBsIDI0IDEwCiBsIDI0IDkgbCAyNSA5IGwgMjUgOCBsIDIxIDggbCAyMSA5IGwgMjAgOSBsIDIwIDggbCAxOSA4IGwgMTkgOSBsIDIwIDkgbCAyMAogMTAgbCAyMSAxMCBsIDIxIDExIGwgMjIgMTEgbCAyMiAxMiBsIDIxIDEyIGwgMjEgMTMgbCAyMCAxMyBsIDIwIDE0IGwgMTkgMTQKIGwgMTkgMTUgbCAxOCAxNSBsIDE4IDEzIGwgMTkgMTMgbCAxOSAxMCBsIDE4IDEwIGwgMTggMTIgbCAxNyAxMiBsIDE3IDE0IGwKIDE2IDE0IGwgMTYgMTIgbCAxNSAxMiBsIDE1IDExIGwgMTcgMTEgbCAxNyA2IGwgMTYgNiBsIDE2IDcgbCAxNSA3IGwgMTUgNSBsCiAxNyA1IGwgMTcgMCBsIDEzIDAgbCAxMyAxIGwgMTIgMSBsIDEyIDAgbCAxMCAwIGwgMTAgMSBsIDkgMSBsIDkgMCBsIHogMTUgMQogbSAxNSAyIGwgMTYgMiBsIDE2IDEgbCB6IDE1IDMgbSAxNSA0IGwgMTYgNCBsIDE2IDMgbCB6IDEyIDQgbSAxMiA1IGwgMTEgNSBsCiAxMSA3IGwgMTAgNyBsIDEwIDggbCAxMSA4IGwgMTEgOSBsIDEyIDkgbCAxMiAxMCBsIDEzIDEwIGwgMTMgOSBsIDE2IDkgbCAxNgogOCBsIDE0IDggbCAxNCA2IGwgMTMgNiBsIDEzIDUgbCAxNCA1IGwgMTQgNCBsIHogMTIgNiBtIDEyIDcgbCAxMSA3IGwgMTEgOCBsCiAxMyA4IGwgMTMgNiBsIHogOSA5IG0gOSAxMSBsIDEwIDExIGwgMTAgOSBsIHogMjIgOSBtIDIyIDEwIGwgMjMgMTAgbCAyMyA5IGwKIHogNCAxMCBtIDQgMTEgbCAzIDExIGwgMyAxMyBsIDQgMTMgbCA0IDExIGwgNSAxMSBsIDUgMTMgbCA2IDEzIGwgNiAxMiBsIDcKIDEyIGwgNyAxMSBsIDUgMTEgbCA1IDEwIGwgeiAxNCAxMCBtIDE0IDExIGwgMTMgMTEgbCAxMyAxMyBsIDEyIDEzIGwgMTIgMTQgbAogMTQgMTQgbCAxNCAxMSBsIDE1IDExIGwgMTUgMTAgbCB6IDIxIDEzIG0gMjEgMTQgbCAyMyAxNCBsIDIzIDEzIGwgeiA1IDE1IG0KIDUgMTYgbCA3IDE2IGwgNyAxNSBsIHogMTYgMTUgbSAxNiAxNiBsIDE3IDE2IGwgMTcgMTUgbCB6IDIxIDE1IG0gMjEgMTYgbCAyMgogMTYgbCAyMiAxNSBsIHogMTcgMTcgbSAxNyAyMCBsIDIwIDIwIGwgMjAgMTcgbCB6IDE4IDE4IG0gMTggMTkgbCAxOSAxOSBsIDE5CiAxOCBsIHogMTAgMTkgbSAxMCAyMCBsIDEyIDIwIGwgMTIgMTkgbCB6IDE2IDIxIG0gMTYgMjIgbCAxNyAyMiBsIDE3IDIxIGwgegogMjAgMjEgbSAyMCAyMiBsIDE5IDIyIGwgMTkgMjMgbCAyMSAyMyBsIDIxIDIyIGwgMjIgMjIgbCAyMiAyMyBsIDIzIDIzIGwgMjMKIDIyIGwgMjIgMjIgbCAyMiAyMSBsIHogMCAwIG0gMCA3IGwgNyA3IGwgNyAwIGwgeiAxIDEgbSAxIDYgbCA2IDYgbCA2IDEgbCB6CiAyIDIgbSAyIDUgbCA1IDUgbCA1IDIgbCB6IDE4IDAgbSAxOCA3IGwgMjUgNyBsIDI1IDAgbCB6IDE5IDEgbSAxOSA2IGwgMjQgNgogbCAyNCAxIGwgeiAyMCAyIG0gMjAgNSBsIDIzIDUgbCAyMyAyIGwgeiAwIDE4IG0gMCAyNSBsIDcgMjUgbCA3IDE4IGwgeiAxIDE5CiBtIDEgMjQgbCA2IDI0IGwgNiAxOSBsIHogMiAyMCBtIDIgMjMgbCA1IDIzIGwgNSAyMCBsIHogMCAwIDAgcmdiIGYKJSVUUkFJTEVSCmVuZCByZXN0b3JlCiUlRU9G', 'data:image/png;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgd2lkdGg9IjMwMCIgaGVpZ2h0PSIzMDAiIHZpZXdCb3g9IjAgMCAzMDAgMzAwIj48cmVjdCB4PSIwIiB5PSIwIiB3aWR0aD0iMzAwIiBoZWlnaHQ9IjMwMCIgZmlsbD0iI2ZmZmZmZiIvPjxnIHRyYW5zZm9ybT0ic2NhbGUoMTIpIj48ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgwLDApIj48cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik04IDBMOCA0TDkgNEw5IDNMMTAgM0wxMCAxTDEyIDFMMTIgMkwxNCAyTDE0IDNMMTEgM0wxMSA1TDEwIDVMMTAgN0w5IDdMOSA1TDggNUw4IDdMOSA3TDkgOUw4IDlMOCAxMEw1IDEwTDUgOUw3IDlMNyA4TDQgOEw0IDlMMyA5TDMgMTBMMSAxMEwxIDlMMiA5TDIgOEwwIDhMMCAxMEwxIDEwTDEgMTFMMCAxMUwwIDE0TDEgMTRMMSAxMkwyIDEyTDIgMTRMNCAxNEw0IDEzTDUgMTNMNSAxNUwyIDE1TDIgMTZMMCAxNkwwIDE3TDIgMTdMMiAxNkw1IDE2TDUgMTdMNyAxN0w3IDE2TDggMTZMOCAxNUw3IDE1TDcgMTRMNiAxNEw2IDEzTDcgMTNMNyAxMkwxMCAxMkwxMCAxMUwxMiAxMUwxMiAxMkwxMSAxMkwxMSAxNEw5IDE0TDkgMTVMMTUgMTVMMTUgMTdMMTQgMTdMMTQgMThMMTIgMThMMTIgMTdMMTMgMTdMMTMgMTZMMTIgMTZMMTIgMTdMMTEgMTdMMTEgMThMOSAxOEw5IDE3TDggMTdMOCAxOEw5IDE4TDkgMTlMOCAxOUw4IDIxTDkgMjFMOSAyM0w4IDIzTDggMjVMOSAyNUw5IDI0TDEwIDI0TDEwIDIyTDExIDIyTDExIDIzTDEyIDIzTDEyIDI1TDEzIDI1TDEzIDIzTDE0IDIzTDE0IDIxTDEzIDIxTDEzIDE5TDE0IDE5TDE0IDIwTDE1IDIwTDE1IDE3TDE2IDE3TDE2IDIxTDE1IDIxTDE1IDI1TDE2IDI1TDE2IDIzTDE3IDIzTDE3IDIyTDE4IDIyTDE4IDIzTDE5IDIzTDE5IDI0TDE4IDI0TDE4IDI1TDE5IDI1TDE5IDI0TDIyIDI0TDIyIDI1TDI1IDI1TDI1IDI0TDI0IDI0TDI0IDIyTDIzIDIyTDIzIDIwTDI0IDIwTDI0IDIxTDI1IDIxTDI1IDIwTDI0IDIwTDI0IDE5TDIxIDE5TDIxIDE3TDIzIDE3TDIzIDE2TDI0IDE2TDI0IDE1TDIzIDE1TDIzIDE0TDI0IDE0TDI0IDEzTDI1IDEzTDI1IDEyTDI0IDEyTDI0IDExTDIzIDExTDIzIDEwTDI0IDEwTDI0IDlMMjUgOUwyNSA4TDIxIDhMMjEgOUwyMCA5TDIwIDhMMTkgOEwxOSA5TDIwIDlMMjAgMTBMMjEgMTBMMjEgMTFMMjIgMTFMMjIgMTJMMjEgMTJMMjEgMTNMMjAgMTNMMjAgMTRMMTkgMTRMMTkgMTVMMTggMTVMMTggMTNMMTkgMTNMMTkgMTBMMTggMTBMMTggMTJMMTcgMTJMMTcgMTRMMTYgMTRMMTYgMTJMMTUgMTJMMTUgMTFMMTcgMTFMMTcgNkwxNiA2TDE2IDdMMTUgN0wxNSA1TDE3IDVMMTcgMEwxMyAwTDEzIDFMMTIgMUwxMiAwTDEwIDBMMTAgMUw5IDFMOSAwWk0xNSAxTDE1IDJMMTYgMkwxNiAxWk0xNSAzTDE1IDRMMTYgNEwxNiAzWk0xMiA0TDEyIDVMMTEgNUwxMSA3TDEwIDdMMTAgOEwxMSA4TDExIDlMMTIgOUwxMiAxMEwxMyAxMEwxMyA5TDE2IDlMMTYgOEwxNCA4TDE0IDZMMTMgNkwxMyA1TDE0IDVMMTQgNFpNMTIgNkwxMiA3TDExIDdMMTEgOEwxMyA4TDEzIDZaTTkgOUw5IDExTDEwIDExTDEwIDlaTTIyIDlMMjIgMTBMMjMgMTBMMjMgOVpNNCAxMEw0IDExTDMgMTFMMyAxM0w0IDEzTDQgMTFMNSAxMUw1IDEzTDYgMTNMNiAxMkw3IDEyTDcgMTFMNSAxMUw1IDEwWk0xNCAxMEwxNCAxMUwxMyAxMUwxMyAxM0wxMiAxM0wxMiAxNEwxNCAxNEwxNCAxMUwxNSAxMUwxNSAxMFpNMjEgMTNMMjEgMTRMMjMgMTRMMjMgMTNaTTUgMTVMNSAxNkw3IDE2TDcgMTVaTTE2IDE1TDE2IDE2TDE3IDE2TDE3IDE1Wk0yMSAxNUwyMSAxNkwyMiAxNkwyMiAxNVpNMTcgMTdMMTcgMjBMMjAgMjBMMjAgMTdaTTE4IDE4TDE4IDE5TDE5IDE5TDE5IDE4Wk0xMCAxOUwxMCAyMEwxMiAyMEwxMiAxOVpNMTYgMjFMMTYgMjJMMTcgMjJMMTcgMjFaTTIwIDIxTDIwIDIyTDE5IDIyTDE5IDIzTDIxIDIzTDIxIDIyTDIyIDIyTDIyIDIzTDIzIDIzTDIzIDIyTDIyIDIyTDIyIDIxWk0wIDBMMCA3TDcgN0w3IDBaTTEgMUwxIDZMNiA2TDYgMVpNMiAyTDIgNUw1IDVMNSAyWk0xOCAwTDE4IDdMMjUgN0wyNSAwWk0xOSAxTDE5IDZMMjQgNkwyNCAxWk0yMCAyTDIwIDVMMjMgNUwyMyAyWk0wIDE4TDAgMjVMNyAyNUw3IDE4Wk0xIDE5TDEgMjRMNiAyNEw2IDE5Wk0yIDIwTDIgMjNMNSAyM0w1IDIwWiIgZmlsbD0iIzAwMDAwMCIvPjwvZz48L2c+PC9zdmc+Cg==', '2022-12-08 04:56:19', '2022-12-08 04:56:19'),
(5, 'https://portal.piaic.org/courses', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAAEsAQAAAABRBrPYAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0QAAd2KE6QAAAGBSURBVGje7ZlNrsMgDITZcWyuzA382oY4M4bwlnGksaKq0K/Z+IexKcWt2vcppfVzuTRh78K2y8PGq8yuN/tPwtJg5HezEAnx88TMTNg7sF7+9+knJHrBpbAXYFuffq1z4gvLisVjl4Grkrv369hZF3xhT2FBSnEpvlVc+AjLjOEXxgyt/3KZ8/fYF5YBQ0lsnXw6/nUaYVAEhGXEuG/1pXXuT6F0E2ZjeYSNsOexuzkDVOkPNjJ69j6e1MJyYLcGrQ0q4atcn4oag0RYKoycXiDTJ6E1DmJhmTGc6DIWynLrYx7l3e6xc53RwjJhcyn207a5it5gFcS2sKex2YnBmmN1xAa1SJDFwjJg5DtoduYYaLboiWKzIywZ5no43pzyBMPjJIguYUmwXXNa19hOhglLhq3n+a6gwg07vEdYNixexCzn/CuMbnZWN+zCsmBBO823sdDjNBhoWBeWGiPFO2G0f+4IS4gtnLit5KNL6sKSYWH6hyJ5M9tnLW1mwtJgf9t8vFvj1cdtAAAAAElFTkSuQmCC', 'data:image/png;base64,JSFQUy1BZG9iZS0zLjAgRVBTRi0zLjAKJSVDcmVhdG9yOiBCYWNvblFyQ29kZQolJUJvdW5kaW5nQm94OiAwIDAgMzAwIDMwMCAKJSVCZWdpblByb2xvZwpzYXZlCjUwIGRpY3QgYmVnaW4KL3EgeyBnc2F2ZSB9IGJpbmQgZGVmCi9RIHsgZ3Jlc3RvcmUgfSBiaW5kIGRlZgovcyB7IHNjYWxlIH0gYmluZCBkZWYKL3QgeyB0cmFuc2xhdGUgfSBiaW5kIGRlZgovciB7IHJvdGF0ZSB9IGJpbmQgZGVmCi9uIHsgbmV3cGF0aCB9IGJpbmQgZGVmCi9tIHsgbW92ZXRvIH0gYmluZCBkZWYKL2wgeyBsaW5ldG8gfSBiaW5kIGRlZgovYyB7IGN1cnZldG8gfSBiaW5kIGRlZgoveiB7IGNsb3NlcGF0aCB9IGJpbmQgZGVmCi9mIHsgZW9maWxsIH0gYmluZCBkZWYKL3JnYiB7IHNldHJnYmNvbG9yIH0gYmluZCBkZWYKL2NteWsgeyBzZXRjbXlrY29sb3IgfSBiaW5kIGRlZgovZ3JheSB7IHNldGdyYXkgfSBiaW5kIGRlZgolJUVuZFByb2xvZwoxIC0xIHMKMCAtMzAwIHQKMCAwIG0gMzAwIDAgbCAzMDAgMzAwIGwgMCAzMDAgbCB6IDEgMSAxIHJnYiBmCjEyIDEyIHMKMCAwIHQKbiA4IDAgbSA4IDQgbCA5IDQgbCA5IDMgbCAxMCAzIGwgMTAgMSBsIDEyIDEgbCAxMiAyIGwgMTQgMiBsIDE0IDMgbCAxMSAzIGwKIDExIDUgbCAxMCA1IGwgMTAgNyBsIDkgNyBsIDkgNSBsIDggNSBsIDggNyBsIDkgNyBsIDkgOSBsIDggOSBsIDggMTAgbCA1IDEwCiBsIDUgOSBsIDcgOSBsIDcgOCBsIDQgOCBsIDQgOSBsIDMgOSBsIDMgMTAgbCAxIDEwIGwgMSA5IGwgMiA5IGwgMiA4IGwgMCA4IGwKIDAgMTAgbCAxIDEwIGwgMSAxMSBsIDAgMTEgbCAwIDE0IGwgMSAxNCBsIDEgMTIgbCAyIDEyIGwgMiAxNCBsIDQgMTQgbCA0IDEzCiBsIDUgMTMgbCA1IDE1IGwgMiAxNSBsIDIgMTYgbCAwIDE2IGwgMCAxNyBsIDIgMTcgbCAyIDE2IGwgNSAxNiBsIDUgMTcgbCA3CiAxNyBsIDcgMTYgbCA4IDE2IGwgOCAxNSBsIDcgMTUgbCA3IDE0IGwgNiAxNCBsIDYgMTMgbCA3IDEzIGwgNyAxMiBsIDEwIDEyIGwKIDEwIDExIGwgMTIgMTEgbCAxMiAxMiBsIDExIDEyIGwgMTEgMTQgbCA5IDE0IGwgOSAxNSBsIDE1IDE1IGwgMTUgMTcgbCAxNCAxNwogbCAxNCAxOCBsIDEyIDE4IGwgMTIgMTcgbCAxMyAxNyBsIDEzIDE2IGwgMTIgMTYgbCAxMiAxNyBsIDExIDE3IGwgMTEgMTggbCA5CiAxOCBsIDkgMTcgbCA4IDE3IGwgOCAxOCBsIDkgMTggbCA5IDE5IGwgOCAxOSBsIDggMjEgbCA5IDIxIGwgOSAyMyBsIDggMjMgbAogOCAyNSBsIDkgMjUgbCA5IDI0IGwgMTAgMjQgbCAxMCAyMiBsIDExIDIyIGwgMTEgMjMgbCAxMiAyMyBsIDEyIDI1IGwgMTMgMjUKIGwgMTMgMjMgbCAxNCAyMyBsIDE0IDIxIGwgMTMgMjEgbCAxMyAxOSBsIDE0IDE5IGwgMTQgMjAgbCAxNSAyMCBsIDE1IDE3IGwKIDE2IDE3IGwgMTYgMjEgbCAxNSAyMSBsIDE1IDI1IGwgMTYgMjUgbCAxNiAyMyBsIDE3IDIzIGwgMTcgMjIgbCAxOCAyMiBsIDE4CiAyMyBsIDE5IDIzIGwgMTkgMjQgbCAxOCAyNCBsIDE4IDI1IGwgMTkgMjUgbCAxOSAyNCBsIDIyIDI0IGwgMjIgMjUgbCAyNSAyNQogbCAyNSAyNCBsIDI0IDI0IGwgMjQgMjIgbCAyMyAyMiBsIDIzIDIwIGwgMjQgMjAgbCAyNCAyMSBsIDI1IDIxIGwgMjUgMjAgbAogMjQgMjAgbCAyNCAxOSBsIDIxIDE5IGwgMjEgMTcgbCAyMyAxNyBsIDIzIDE2IGwgMjQgMTYgbCAyNCAxNSBsIDIzIDE1IGwgMjMKIDE0IGwgMjQgMTQgbCAyNCAxMyBsIDI1IDEzIGwgMjUgMTIgbCAyNCAxMiBsIDI0IDExIGwgMjMgMTEgbCAyMyAxMCBsIDI0IDEwCiBsIDI0IDkgbCAyNSA5IGwgMjUgOCBsIDIxIDggbCAyMSA5IGwgMjAgOSBsIDIwIDggbCAxOSA4IGwgMTkgOSBsIDIwIDkgbCAyMAogMTAgbCAyMSAxMCBsIDIxIDExIGwgMjIgMTEgbCAyMiAxMiBsIDIxIDEyIGwgMjEgMTMgbCAyMCAxMyBsIDIwIDE0IGwgMTkgMTQKIGwgMTkgMTUgbCAxOCAxNSBsIDE4IDEzIGwgMTkgMTMgbCAxOSAxMCBsIDE4IDEwIGwgMTggMTIgbCAxNyAxMiBsIDE3IDE0IGwKIDE2IDE0IGwgMTYgMTIgbCAxNSAxMiBsIDE1IDExIGwgMTcgMTEgbCAxNyA2IGwgMTYgNiBsIDE2IDcgbCAxNSA3IGwgMTUgNSBsCiAxNyA1IGwgMTcgMCBsIDEzIDAgbCAxMyAxIGwgMTIgMSBsIDEyIDAgbCAxMCAwIGwgMTAgMSBsIDkgMSBsIDkgMCBsIHogMTUgMQogbSAxNSAyIGwgMTYgMiBsIDE2IDEgbCB6IDE1IDMgbSAxNSA0IGwgMTYgNCBsIDE2IDMgbCB6IDEyIDQgbSAxMiA1IGwgMTEgNSBsCiAxMSA3IGwgMTAgNyBsIDEwIDggbCAxMSA4IGwgMTEgOSBsIDEyIDkgbCAxMiAxMCBsIDEzIDEwIGwgMTMgOSBsIDE2IDkgbCAxNgogOCBsIDE0IDggbCAxNCA2IGwgMTMgNiBsIDEzIDUgbCAxNCA1IGwgMTQgNCBsIHogMTIgNiBtIDEyIDcgbCAxMSA3IGwgMTEgOCBsCiAxMyA4IGwgMTMgNiBsIHogOSA5IG0gOSAxMSBsIDEwIDExIGwgMTAgOSBsIHogMjIgOSBtIDIyIDEwIGwgMjMgMTAgbCAyMyA5IGwKIHogNCAxMCBtIDQgMTEgbCAzIDExIGwgMyAxMyBsIDQgMTMgbCA0IDExIGwgNSAxMSBsIDUgMTMgbCA2IDEzIGwgNiAxMiBsIDcKIDEyIGwgNyAxMSBsIDUgMTEgbCA1IDEwIGwgeiAxNCAxMCBtIDE0IDExIGwgMTMgMTEgbCAxMyAxMyBsIDEyIDEzIGwgMTIgMTQgbAogMTQgMTQgbCAxNCAxMSBsIDE1IDExIGwgMTUgMTAgbCB6IDIxIDEzIG0gMjEgMTQgbCAyMyAxNCBsIDIzIDEzIGwgeiA1IDE1IG0KIDUgMTYgbCA3IDE2IGwgNyAxNSBsIHogMTYgMTUgbSAxNiAxNiBsIDE3IDE2IGwgMTcgMTUgbCB6IDIxIDE1IG0gMjEgMTYgbCAyMgogMTYgbCAyMiAxNSBsIHogMTcgMTcgbSAxNyAyMCBsIDIwIDIwIGwgMjAgMTcgbCB6IDE4IDE4IG0gMTggMTkgbCAxOSAxOSBsIDE5CiAxOCBsIHogMTAgMTkgbSAxMCAyMCBsIDEyIDIwIGwgMTIgMTkgbCB6IDE2IDIxIG0gMTYgMjIgbCAxNyAyMiBsIDE3IDIxIGwgegogMjAgMjEgbSAyMCAyMiBsIDE5IDIyIGwgMTkgMjMgbCAyMSAyMyBsIDIxIDIyIGwgMjIgMjIgbCAyMiAyMyBsIDIzIDIzIGwgMjMKIDIyIGwgMjIgMjIgbCAyMiAyMSBsIHogMCAwIG0gMCA3IGwgNyA3IGwgNyAwIGwgeiAxIDEgbSAxIDYgbCA2IDYgbCA2IDEgbCB6CiAyIDIgbSAyIDUgbCA1IDUgbCA1IDIgbCB6IDE4IDAgbSAxOCA3IGwgMjUgNyBsIDI1IDAgbCB6IDE5IDEgbSAxOSA2IGwgMjQgNgogbCAyNCAxIGwgeiAyMCAyIG0gMjAgNSBsIDIzIDUgbCAyMyAyIGwgeiAwIDE4IG0gMCAyNSBsIDcgMjUgbCA3IDE4IGwgeiAxIDE5CiBtIDEgMjQgbCA2IDI0IGwgNiAxOSBsIHogMiAyMCBtIDIgMjMgbCA1IDIzIGwgNSAyMCBsIHogMCAwIDAgcmdiIGYKJSVUUkFJTEVSCmVuZCByZXN0b3JlCiUlRU9G', 'data:image/png;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgd2lkdGg9IjMwMCIgaGVpZ2h0PSIzMDAiIHZpZXdCb3g9IjAgMCAzMDAgMzAwIj48cmVjdCB4PSIwIiB5PSIwIiB3aWR0aD0iMzAwIiBoZWlnaHQ9IjMwMCIgZmlsbD0iI2ZmZmZmZiIvPjxnIHRyYW5zZm9ybT0ic2NhbGUoMTIpIj48ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgwLDApIj48cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik04IDBMOCA0TDkgNEw5IDNMMTAgM0wxMCAxTDEyIDFMMTIgMkwxNCAyTDE0IDNMMTEgM0wxMSA1TDEwIDVMMTAgN0w5IDdMOSA1TDggNUw4IDdMOSA3TDkgOUw4IDlMOCAxMEw1IDEwTDUgOUw3IDlMNyA4TDQgOEw0IDlMMyA5TDMgMTBMMSAxMEwxIDlMMiA5TDIgOEwwIDhMMCAxMEwxIDEwTDEgMTFMMCAxMUwwIDE0TDEgMTRMMSAxMkwyIDEyTDIgMTRMNCAxNEw0IDEzTDUgMTNMNSAxNUwyIDE1TDIgMTZMMCAxNkwwIDE3TDIgMTdMMiAxNkw1IDE2TDUgMTdMNyAxN0w3IDE2TDggMTZMOCAxNUw3IDE1TDcgMTRMNiAxNEw2IDEzTDcgMTNMNyAxMkwxMCAxMkwxMCAxMUwxMiAxMUwxMiAxMkwxMSAxMkwxMSAxNEw5IDE0TDkgMTVMMTUgMTVMMTUgMTdMMTQgMTdMMTQgMThMMTIgMThMMTIgMTdMMTMgMTdMMTMgMTZMMTIgMTZMMTIgMTdMMTEgMTdMMTEgMThMOSAxOEw5IDE3TDggMTdMOCAxOEw5IDE4TDkgMTlMOCAxOUw4IDIxTDkgMjFMOSAyM0w4IDIzTDggMjVMOSAyNUw5IDI0TDEwIDI0TDEwIDIyTDExIDIyTDExIDIzTDEyIDIzTDEyIDI1TDEzIDI1TDEzIDIzTDE0IDIzTDE0IDIxTDEzIDIxTDEzIDE5TDE0IDE5TDE0IDIwTDE1IDIwTDE1IDE3TDE2IDE3TDE2IDIxTDE1IDIxTDE1IDI1TDE2IDI1TDE2IDIzTDE3IDIzTDE3IDIyTDE4IDIyTDE4IDIzTDE5IDIzTDE5IDI0TDE4IDI0TDE4IDI1TDE5IDI1TDE5IDI0TDIyIDI0TDIyIDI1TDI1IDI1TDI1IDI0TDI0IDI0TDI0IDIyTDIzIDIyTDIzIDIwTDI0IDIwTDI0IDIxTDI1IDIxTDI1IDIwTDI0IDIwTDI0IDE5TDIxIDE5TDIxIDE3TDIzIDE3TDIzIDE2TDI0IDE2TDI0IDE1TDIzIDE1TDIzIDE0TDI0IDE0TDI0IDEzTDI1IDEzTDI1IDEyTDI0IDEyTDI0IDExTDIzIDExTDIzIDEwTDI0IDEwTDI0IDlMMjUgOUwyNSA4TDIxIDhMMjEgOUwyMCA5TDIwIDhMMTkgOEwxOSA5TDIwIDlMMjAgMTBMMjEgMTBMMjEgMTFMMjIgMTFMMjIgMTJMMjEgMTJMMjEgMTNMMjAgMTNMMjAgMTRMMTkgMTRMMTkgMTVMMTggMTVMMTggMTNMMTkgMTNMMTkgMTBMMTggMTBMMTggMTJMMTcgMTJMMTcgMTRMMTYgMTRMMTYgMTJMMTUgMTJMMTUgMTFMMTcgMTFMMTcgNkwxNiA2TDE2IDdMMTUgN0wxNSA1TDE3IDVMMTcgMEwxMyAwTDEzIDFMMTIgMUwxMiAwTDEwIDBMMTAgMUw5IDFMOSAwWk0xNSAxTDE1IDJMMTYgMkwxNiAxWk0xNSAzTDE1IDRMMTYgNEwxNiAzWk0xMiA0TDEyIDVMMTEgNUwxMSA3TDEwIDdMMTAgOEwxMSA4TDExIDlMMTIgOUwxMiAxMEwxMyAxMEwxMyA5TDE2IDlMMTYgOEwxNCA4TDE0IDZMMTMgNkwxMyA1TDE0IDVMMTQgNFpNMTIgNkwxMiA3TDExIDdMMTEgOEwxMyA4TDEzIDZaTTkgOUw5IDExTDEwIDExTDEwIDlaTTIyIDlMMjIgMTBMMjMgMTBMMjMgOVpNNCAxMEw0IDExTDMgMTFMMyAxM0w0IDEzTDQgMTFMNSAxMUw1IDEzTDYgMTNMNiAxMkw3IDEyTDcgMTFMNSAxMUw1IDEwWk0xNCAxMEwxNCAxMUwxMyAxMUwxMyAxM0wxMiAxM0wxMiAxNEwxNCAxNEwxNCAxMUwxNSAxMUwxNSAxMFpNMjEgMTNMMjEgMTRMMjMgMTRMMjMgMTNaTTUgMTVMNSAxNkw3IDE2TDcgMTVaTTE2IDE1TDE2IDE2TDE3IDE2TDE3IDE1Wk0yMSAxNUwyMSAxNkwyMiAxNkwyMiAxNVpNMTcgMTdMMTcgMjBMMjAgMjBMMjAgMTdaTTE4IDE4TDE4IDE5TDE5IDE5TDE5IDE4Wk0xMCAxOUwxMCAyMEwxMiAyMEwxMiAxOVpNMTYgMjFMMTYgMjJMMTcgMjJMMTcgMjFaTTIwIDIxTDIwIDIyTDE5IDIyTDE5IDIzTDIxIDIzTDIxIDIyTDIyIDIyTDIyIDIzTDIzIDIzTDIzIDIyTDIyIDIyTDIyIDIxWk0wIDBMMCA3TDcgN0w3IDBaTTEgMUwxIDZMNiA2TDYgMVpNMiAyTDIgNUw1IDVMNSAyWk0xOCAwTDE4IDdMMjUgN0wyNSAwWk0xOSAxTDE5IDZMMjQgNkwyNCAxWk0yMCAyTDIwIDVMMjMgNUwyMyAyWk0wIDE4TDAgMjVMNyAyNUw3IDE4Wk0xIDE5TDEgMjRMNiAyNEw2IDE5Wk0yIDIwTDIgMjNMNSAyM0w1IDIwWiIgZmlsbD0iIzAwMDAwMCIvPjwvZz48L2c+PC9zdmc+Cg==', '2022-12-08 04:59:36', '2022-12-08 04:59:36');

-- --------------------------------------------------------

--
-- Table structure for table `wifis`
--

CREATE TABLE `wifis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `encryption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qrcode_png` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `qrcode_eps` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `qrcode_svg` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wifis`
--

INSERT INTO `wifis` (`id`, `encryption`, `title`, `password`, `qrcode_png`, `qrcode_eps`, `qrcode_svg`, `created_at`, `updated_at`) VALUES
(1, 'WPA2/WPA3-Personal', 'LINK 2', 'karachi786', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAAEsCAAAAABcFtGpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0QA/4ePzL8AAAu3SURBVHja7Z1/bJVXGcfv3eXSawuUKyWxjVtnGZRUiEhByUBMx7roEkbJ4gLJkqIsxijMadTYJv5hjG0mLrquLlHHZPunMy6xHX9tJZIlHSGmrclaltlOZiEpBGt/sJbbFtrrPz3Pc8x9OO953/e8t7fk+/z15Dnnec55P+97n5z3vudHLOZKBrIm6eKKjWSs8wiZyY0zb9+hSeUz4OoS74tBAAuwAAuwAAuwIIAFWMssq9yHnPsD6ydDRfojaQdqCg3WiH/3usu5ttlnWf9uwuT9+qLShurJ2PCi0r7PgbolWFJ/K839rTrv/xor5SfrgTzfqc+SNhSkFxtKckwLXj7+L/EKchYSPGABFmABFgSwHI7gr5mdUmk3jd9YCOV+82YI54lZc3m5LaxrFeZATS2m0qIW4cEtZ+NG0o7weJqLS41NJ7jiPyvCkD7Vai4fLc/Lu2GqSTDu3m122r/XMm1w8GPIWUjwgAVYEMACLMACrHv6dSeUTH3OXH7oT4LxoNnnqXsVVmzCXJwN4CMWT6v/4Pt2kW1nH36GyFmABVgQwAIswAIsjODzKH+WjK+S9vTqFQCrlKfEHOkntXed0orI9gp93RnRphz9Smk/6RSi1/1eab88LhT3s/HJlQArttnWWkXaiKe7bTFyFhI8YAEWBLAAC7Du4RH8f0MVrzRY4jwYTaqNpVNlxuKZMvdXwf1ttXWp9rjGlC2sdMsKu+V7nlhSFqxhNSJnIcEDFmABFgSwAAuwCnIEXxdlQ9aTht7fFGU3NrmCddl93+6oJ/fsIR470/ysA7zCoufhJWXuU+ydUd82Luxz1J/Lzp6sKCRuafNhRM5CggcswIIAFmAB1oobwUcgf5GMbzhv5tYbeYEVd7bj6WaaSjTIg/V+sw83/uCaJWVWH8GrrwbT/+a7u1Vpw3NKm9MWDbxG6jYqHnYFKxvlraj1gDWfzDGJsDwEKyyQ4AELsCCABViAVYgj+KkATqtpLHQz3DDtlmW9xU8kq7jFj3Q9xUmhtDRmMs7SiDeWotF2oD9ueZejTdZ/ap8grd26HRqUvif+B0/Lfj/8nTl4x5ElJav9kMY2qDeBLWRLjyuttZmMbSfz9G7Icqx2SZlpdx5760tKW2iP8hqQswALsAALsAALAliAFdHrThCnt9/27/Nt933fH8r7MclYGyBQy51cOS3WFCpOSsX6KXRk1CaE9QiB7vDhc2TycwpdbpxFseJpqigWt5H7XZ6shPXP2OPlMmEbPGEXZtHHLU+4roichQQPWIAFWIAFASyHI/izHl8kzkbYt+4MqTsiPZnrrQCweknjMyoaJ4RinrQSOyTEPHHMcrj3Gx4yPyQUv9zJ3BSsZK81gnXmYuly0t1CxTIR1kbz7Vun9hfyXD5v+4b1hQBPQa2rx+lB+rpjHR05CwkesAALsAALAlhBR/AzjoJynBJzMUtx3HcnZqVj2eLFlg16yPxtD1iVAbjw/jc8W7+dp7LcUUP4tVrF14Q4PeqssNk1UnAJ+nekONI8+MHtxkso4mb4P/IXmsM9L0Pqf/sxzbiojB2ij/bNQcm0WLFHFWc0YyZrEnGfop1CRXkRyZgxeAtyFhI8YAEWYAEWBLAAa5ledwLIAXNxvW2cn0nGxwN06BHSutbaeVx+xja2PglmRB2dPKad0MxzfHiJLr83beUVFgPCVq97vJb9KuXd+lC3rOvrStOOYpgsze2vJnQ52goLTUbLPJ6spCmmh+1uVrMkHf1AVJwFd60kkbOQ4AELsAALsCCA5WwEPzQkVDjHI8w1xkjXr/tv/V1Xl3HOt0f/uLn80iWlVdTQCL6H3Z81uw8Jp3RdoOlbV4+avbmdfdbFPULFfdYhJ0tN/WnmMwlOVxvjaGuk9zKsAHf0YdK8drBK0RppuZy+7mi22txdjvQ3lx10jnTI53IvchYSPGABFmABFgSwoh3BewkNgVaR11zWv7ePYjKmQoUsijuHtbaB1E62spH/quZdjmo8djli712Cbeq8MAbn4hjvwtn9qBB8jeCj9Xw9abTLkSafZp8Sc8+17x7SfJvRmFCurZFuImOVx72gKUf6GmnyFg/NaKBiDVu3sslrpLtoLbVY3JG1FM1nVChGzkKCByzAAizAggAWYEX+unOmS6pw2HmTU4cL4cJ//V4oWJ/wq0LLD5RWwcah+3OdPqBBbyd/sDhxilRaI32QFgMsaB+JMr6f9aTkEivyf+HjnYIxze8u1udI3+XFNWXbS6FinGz6B4uE/8lAqUiftxRyFhI8YAEWYAEWBLAiGMHrIg1vb9xQWikdw3Uha+ttlhvD+blc6559KG24o50V9gEPXz2m8IvHMnTbejc+TSp9hjjn4SN+sJBEnKhVpT4V6P+iS/0Vj2UQn6wamrR1LchN+4x63DyPEHk0wkfHPvYXpV2OkLOQ4AELsAALsCCA5W4Er82VTuapzdv5jph01I1V2jrZEbX1ZqLO7MT/oldXer045Yq4y1FdkMtVop32KwpPOdKaKbPtr9y1kawTmQzybPSEadFro1dpylGTVDEt7XLUhilHSPCABViABVgQwAKsqF93JOPYj1g/k1s8+Vx++vbT664jZr/pLNSIcdEAy5h9yGkl+qIBMtaZR/AN1s10TefKCWEEf5eD1diJ2p5j27zXwWquJCUdYlHivp0S196rVyNnIcEDFmABFmBBACuCEbwuffnuUV+BEbr9vhlWmsfbx6RvAU17jOGlw9a2cUjzXquzWoNdthe0TbA9xTOJaBejOEe82GoZ+9ouM6zUEx4BjOXilKOqqgA39bEwKwS+Yu74ReQsJHjAAizAggAWYC3zCF4Uadv1hH8XP+XGegnfYQJdzv+dNCCc9vslDuSxNecAzYNfz0Y6WO0taVgf22kOnhG23pT+7o11qcHmgrO/yUfVsQtXG6yfrL+T9upx98/1RTXv6lx9wf727u9DzkKCByzAAizAggAWYBXk6461PGcu/qG5+Me2zXR35wVWfJJ14zEGsfmMORJ56687LL0PKU0s7hG+ORzrNLdIXf9ol7FYlOe1YxmeFLpGrzv6k1Vqi1WchONDVEMzHqx9/CpKLG+fbdeQs5DgAQuwAAuwIIDlcgQ/6CrSZo/9Lwcti5PVti1+bFlvjnebiX8+FKztrmANSPN+OkjjQXbj14SK2rEMfzXG0c5v224uJhnmilX/KuB3w2/Q1x3NKJwo4XXkXpnavUheMl9MX3eOImchwQMWYEEAC7AAq1BG8BHHzxptcVuXWNZ/M+E6yca4CCvIVHXhYLV4lXQv2KjtcjSfzPXpvE/wqZc6yW0fMvZRCy4uWDhO84PSaTJWkMZHI+sSYJcjresDQjHPv4r1Ktu01uJ8rov+WSSjjNqB0nVUs9HjPk4ae45djpDgAQuwAAsCWIAFWAX+ujNxyuxUbRwPZn7hvxv9b7q/tOfzA2vWY/1wk7F0XvPmDZHoRaJE2ySJ9modN7e4Z0x4nfztC0JNbavW1vzAcifrhSUwG/yHSUg+6wXbQqRXg5wFWIAFWIAFWBDAKpxxliT2x01dLQxGw8sHa2aLubzhoNLObvEffef3lPaPdjKeFip+ZB7gf5l9ji/nk+Ul3yJYoby1bzLFwiSnZnOYR0i7gpyFBA9YgAVYgAUBLMBa4a87HL63VmnpULdP9J4grT8u1DxqOzt+Im5sMf8j+JLxUO47/pZrk0+h+1it5h0Mt4rk5yfxM0TOAizAAizAggAWYK3oETzLO+8obeMzSnvxFhUf3uo74iv/MZe/nB9Y5aNmpyAHAPB/3o0Eq+s8GfebvbtpIThPy+nhlRpdu5VWIbXY8dXciC9JHyzSl5R2ptn6ySovuF9AuV3xQizc9ZQjZyHBAxZgARZgQQArkkHplfy0ecXa6L7FB1zBqswPK22NNMs+qWZbTBiYk9TX5iJItElx+HuF9S5HOzhQTQQMaI30pLOQmawTGeCIVbZrpEVBzkKCByzAAizAggAWYEUj/wPKjBT5DT/nvAAAAABJRU5ErkJggg==', 'data:image/png;base64,JSFQUy1BZG9iZS0zLjAgRVBTRi0zLjAKJSVDcmVhdG9yOiBCYWNvblFyQ29kZQolJUJvdW5kaW5nQm94OiAwIDAgMzAwIDMwMCAKJSVCZWdpblByb2xvZwpzYXZlCjUwIGRpY3QgYmVnaW4KL3EgeyBnc2F2ZSB9IGJpbmQgZGVmCi9RIHsgZ3Jlc3RvcmUgfSBiaW5kIGRlZgovcyB7IHNjYWxlIH0gYmluZCBkZWYKL3QgeyB0cmFuc2xhdGUgfSBiaW5kIGRlZgovciB7IHJvdGF0ZSB9IGJpbmQgZGVmCi9uIHsgbmV3cGF0aCB9IGJpbmQgZGVmCi9tIHsgbW92ZXRvIH0gYmluZCBkZWYKL2wgeyBsaW5ldG8gfSBiaW5kIGRlZgovYyB7IGN1cnZldG8gfSBiaW5kIGRlZgoveiB7IGNsb3NlcGF0aCB9IGJpbmQgZGVmCi9mIHsgZW9maWxsIH0gYmluZCBkZWYKL3JnYiB7IHNldHJnYmNvbG9yIH0gYmluZCBkZWYKL2NteWsgeyBzZXRjbXlrY29sb3IgfSBiaW5kIGRlZgovZ3JheSB7IHNldGdyYXkgfSBiaW5kIGRlZgolJUVuZFByb2xvZwoxIC0xIHMKMCAtMzAwIHQKMCAwIG0gMzAwIDAgbCAzMDAgMzAwIGwgMCAzMDAgbCB6IDEgMSAxIHJnYiBmCjEwLjM0NSAxMC4zNDUgcwowIDAgdApuIDEwIDAgbSAxMCAyIGwgMTEgMiBsIDExIDAgbCB6IDEyIDAgbSAxMiAxIGwgMTMgMSBsIDEzIDIgbCAxMiAyIGwgMTIgNCBsCiAxMyA0IGwgMTMgNSBsIDExIDUgbCAxMSA2IGwgMTAgNiBsIDEwIDQgbCAxMSA0IGwgMTEgMyBsIDggMyBsIDggNCBsIDkgNCBsIDkKIDUgbCA4IDUgbCA4IDcgbCA5IDcgbCA5IDggbCA2IDggbCA2IDkgbCA1IDkgbCA1IDggbCAwIDggbCAwIDEzIGwgMSAxMyBsIDEKIDE0IGwgMiAxNCBsIDIgMTUgbCAxIDE1IGwgMSAxNiBsIDIgMTYgbCAyIDE3IGwgNSAxNyBsIDUgMTYgbCA0IDE2IGwgNCAxNSBsCiA1IDE1IGwgNSAxNCBsIDQgMTQgbCA0IDEzIGwgMyAxMyBsIDMgMTIgbCA0IDEyIGwgNCAxMCBsIDUgMTAgbCA1IDEyIGwgNiAxMgogbCA2IDEzIGwgNyAxMyBsIDcgMTQgbCA2IDE0IGwgNiAxNSBsIDcgMTUgbCA3IDE2IGwgNiAxNiBsIDYgMTcgbCA3IDE3IGwgNwogMTYgbCA4IDE2IGwgOCAxOCBsIDUgMTggbCA1IDE5IGwgMyAxOSBsIDMgMTggbCAyIDE4IGwgMiAxOSBsIDMgMTkgbCAzIDIwIGwKIDQgMjAgbCA0IDIxIGwgNyAyMSBsIDcgMjAgbCA1IDIwIGwgNSAxOSBsIDggMTkgbCA4IDIzIGwgOSAyMyBsIDkgMjQgbCA4IDI0CiBsIDggMjkgbCAxNSAyOSBsIDE1IDI4IGwgMTYgMjggbCAxNiAyNyBsIDE3IDI3IGwgMTcgMjYgbCAxOSAyNiBsIDE5IDI3IGwgMTgKIDI3IGwgMTggMjggbCAxOSAyOCBsIDE5IDI3IGwgMjAgMjcgbCAyMCAyOCBsIDIyIDI4IGwgMjIgMjkgbCAyMyAyOSBsIDIzIDI4CiBsIDIyIDI4IGwgMjIgMjcgbCAyNCAyNyBsIDI0IDI5IGwgMjYgMjkgbCAyNiAyNyBsIDI3IDI3IGwgMjcgMjggbCAyOCAyOCBsCiAyOCAyNiBsIDI5IDI2IGwgMjkgMjUgbCAyOCAyNSBsIDI4IDIzIGwgMjcgMjMgbCAyNyAyMCBsIDI1IDIwIGwgMjUgMTggbCAyNgogMTggbCAyNiAxNSBsIDI3IDE1IGwgMjcgMTQgbCAyOCAxNCBsIDI4IDEzIGwgMjcgMTMgbCAyNyAxMiBsIDI5IDEyIGwgMjkgMTEKIGwgMjcgMTEgbCAyNyAxMiBsIDI1IDEyIGwgMjUgMTMgbCAyNCAxMyBsIDI0IDE0IGwgMjUgMTQgbCAyNSAxMyBsIDI2IDEzIGwKIDI2IDE1IGwgMjQgMTUgbCAyNCAxNiBsIDIzIDE2IGwgMjMgMTcgbCAyNCAxNyBsIDI0IDE4IGwgMjMgMTggbCAyMyAxOSBsIDI0CiAxOSBsIDI0IDIwIGwgMjAgMjAgbCAyMCAyMSBsIDE5IDIxIGwgMTkgMjAgbCAxNyAyMCBsIDE3IDIxIGwgMTUgMjEgbCAxNSAxOQogbCAxOSAxOSBsIDE5IDE4IGwgMjEgMTggbCAyMSAxOSBsIDIyIDE5IGwgMjIgMTcgbCAxOSAxNyBsIDE5IDE4IGwgMTUgMTggbAogMTUgMTkgbCAxNCAxOSBsIDE0IDIwIGwgMTMgMjAgbCAxMyAxNyBsIDE2IDE3IGwgMTYgMTQgbCAxNSAxNCBsIDE1IDEzIGwgMTcKIDEzIGwgMTcgMTUgbCAxOSAxNSBsIDE5IDE0IGwgMjAgMTQgbCAyMCAxNiBsIDIyIDE2IGwgMjIgMTQgbCAyMSAxNCBsIDIxIDEyCiBsIDIwIDEyIGwgMjAgMTEgbCAxOCAxMSBsIDE4IDEyIGwgMTUgMTIgbCAxNSAxMSBsIDE2IDExIGwgMTYgMTAgbCAxNSAxMCBsCiAxNSAxMSBsIDE0IDExIGwgMTQgMTIgbCAxMyAxMiBsIDEzIDExIGwgMTEgMTEgbCAxMSA5IGwgMTIgOSBsIDEyIDEwIGwgMTMgMTAKIGwgMTMgOSBsIDE1IDkgbCAxNSA2IGwgMTYgNiBsIDE2IDcgbCAxNyA3IGwgMTcgNCBsIDE4IDQgbCAxOCA3IGwgMTkgNyBsIDE5CiA4IGwgMjAgOCBsIDIwIDkgbCAxOCA5IGwgMTggOCBsIDE2IDggbCAxNiA5IGwgMTcgOSBsIDE3IDEwIGwgMjEgMTAgbCAyMSA5IGwKIDIyIDkgbCAyMiA4IGwgMjAgOCBsIDIwIDcgbCAyMSA3IGwgMjEgNCBsIDIwIDQgbCAyMCAzIGwgMjEgMyBsIDIxIDAgbCAxNyAwCiBsIDE3IDIgbCAxOCAyIGwgMTggMyBsIDE2IDMgbCAxNiAxIGwgMTUgMSBsIDE1IDAgbCB6IDggMSBtIDggMiBsIDkgMiBsIDkgMQogbCB6IDE0IDEgbSAxNCAyIGwgMTMgMiBsIDEzIDMgbCAxNSAzIGwgMTUgMSBsIHogMTggMSBtIDE4IDIgbCAyMCAyIGwgMjAgMSBsCiB6IDE4IDMgbSAxOCA0IGwgMTkgNCBsIDE5IDMgbCB6IDE0IDQgbSAxNCA2IGwgMTMgNiBsIDEzIDcgbCAxMiA3IGwgMTIgNiBsCiAxMSA2IGwgMTEgNyBsIDEyIDcgbCAxMiA4IGwgMTQgOCBsIDE0IDYgbCAxNSA2IGwgMTUgNCBsIHogMTkgNSBtIDE5IDcgbCAyMAogNyBsIDIwIDUgbCB6IDkgNiBtIDkgNyBsIDEwIDcgbCAxMCA2IGwgeiAxMCA4IG0gMTAgOSBsIDkgOSBsIDkgMTAgbCA4IDEwIGwKIDggOSBsIDYgOSBsIDYgMTAgbCA4IDEwIGwgOCAxMSBsIDkgMTEgbCA5IDEyIGwgNyAxMiBsIDcgMTEgbCA2IDExIGwgNiAxMiBsCiA3IDEyIGwgNyAxMyBsIDkgMTMgbCA5IDEyIGwgMTEgMTIgbCAxMSAxMSBsIDEwIDExIGwgMTAgOSBsIDExIDkgbCAxMSA4IGwgegogMjMgOCBtIDIzIDExIGwgMjIgMTEgbCAyMiAxMiBsIDI0IDEyIGwgMjQgMTAgbCAyNSAxMCBsIDI1IDExIGwgMjYgMTEgbCAyNgogMTAgbCAyOCAxMCBsIDI4IDggbCAyNyA4IGwgMjcgOSBsIDI2IDkgbCAyNiA4IGwgMjUgOCBsIDI1IDkgbCAyNCA5IGwgMjQgOCBsCiB6IDIgOSBtIDIgMTAgbCAxIDEwIGwgMSAxMSBsIDMgMTEgbCAzIDEwIGwgNCAxMCBsIDQgOSBsIHogMjUgOSBtIDI1IDEwIGwgMjYKIDEwIGwgMjYgOSBsIHogMSAxMiBtIDEgMTMgbCAyIDEzIGwgMiAxMiBsIHogMTIgMTIgbSAxMiAxMyBsIDEzIDEzIGwgMTMgMTQgbAogMTQgMTQgbCAxNCAxNSBsIDEyIDE1IGwgMTIgMTQgbCAxMSAxNCBsIDExIDEzIGwgMTAgMTMgbCAxMCAxNCBsIDkgMTQgbCA5IDE1CiBsIDggMTUgbCA4IDE2IGwgMTEgMTYgbCAxMSAxNyBsIDEzIDE3IGwgMTMgMTYgbCAxNSAxNiBsIDE1IDE0IGwgMTQgMTQgbCAxNAogMTMgbCAxMyAxMyBsIDEzIDEyIGwgeiAxOSAxMiBtIDE5IDEzIGwgMTggMTMgbCAxOCAxNCBsIDE5IDE0IGwgMTkgMTMgbCAyMAogMTMgbCAyMCAxMiBsIHogMyAxNCBtIDMgMTUgbCAyIDE1IGwgMiAxNiBsIDMgMTYgbCAzIDE1IGwgNCAxNSBsIDQgMTQgbCB6IDEwCiAxNCBtIDEwIDE1IGwgMTEgMTUgbCAxMSAxNiBsIDEyIDE2IGwgMTIgMTUgbCAxMSAxNSBsIDExIDE0IGwgeiAyNCAxNiBtIDI0CiAxNyBsIDI1IDE3IGwgMjUgMTYgbCB6IDI3IDE2IG0gMjcgMTggbCAyOCAxOCBsIDI4IDE3IGwgMjkgMTcgbCAyOSAxNiBsIHogMAogMTcgbSAwIDIxIGwgMSAyMSBsIDEgMTcgbCB6IDkgMTggbSA5IDIxIGwgMTAgMjEgbCAxMCAyMiBsIDkgMjIgbCA5IDIzIGwgMTAKIDIzIGwgMTAgMjQgbCA5IDI0IGwgOSAyNiBsIDEwIDI2IGwgMTAgMjcgbCAxMSAyNyBsIDExIDI4IGwgMTIgMjggbCAxMiAyNyBsCiAxMyAyNyBsIDEzIDI4IGwgMTUgMjggbCAxNSAyNSBsIDIwIDI1IGwgMjAgMjYgbCAyMSAyNiBsIDIxIDI3IGwgMjIgMjcgbCAyMgogMjYgbCAyNCAyNiBsIDI0IDI1IGwgMjIgMjUgbCAyMiAyNiBsIDIxIDI2IGwgMjEgMjUgbCAyMCAyNSBsIDIwIDI0IGwgMTggMjQKIGwgMTggMjMgbCAxNyAyMyBsIDE3IDIyIGwgMTYgMjIgbCAxNiAyMyBsIDE1IDIzIGwgMTUgMjEgbCAxMyAyMSBsIDEzIDIwIGwKIDEyIDIwIGwgMTIgMTggbCAxMSAxOCBsIDExIDE5IGwgMTAgMTkgbCAxMCAxOCBsIHogMjggMTkgbSAyOCAyMCBsIDI5IDIwIGwKIDI5IDE5IGwgeiAxMCAyMCBtIDEwIDIxIGwgMTEgMjEgbCAxMSAyMiBsIDEwIDIyIGwgMTAgMjMgbCAxMSAyMyBsIDExIDI0IGwKIDEyIDI0IGwgMTIgMjMgbCAxMSAyMyBsIDExIDIyIGwgMTMgMjIgbCAxMyAyMyBsIDE0IDIzIGwgMTQgMjQgbCAxMyAyNCBsIDEzCiAyNSBsIDExIDI1IGwgMTEgMjYgbCAxNCAyNiBsIDE0IDI1IGwgMTUgMjUgbCAxNSAyMyBsIDE0IDIzIGwgMTQgMjIgbCAxMyAyMgogbCAxMyAyMSBsIDEyIDIxIGwgMTIgMjAgbCB6IDE4IDIxIG0gMTggMjIgbCAxOSAyMiBsIDE5IDIzIGwgMjAgMjMgbCAyMCAyMiBsCiAxOSAyMiBsIDE5IDIxIGwgeiAyMSAyMSBtIDIxIDI0IGwgMjQgMjQgbCAyNCAyMSBsIHogMjUgMjEgbSAyNSAyMyBsIDI2IDIzIGwKIDI2IDI2IGwgMjggMjYgbCAyOCAyNSBsIDI3IDI1IGwgMjcgMjMgbCAyNiAyMyBsIDI2IDIxIGwgeiAyMiAyMiBtIDIyIDIzIGwKIDIzIDIzIGwgMjMgMjIgbCB6IDE2IDIzIG0gMTYgMjQgbCAxNyAyNCBsIDE3IDIzIGwgeiAwIDAgbSAwIDcgbCA3IDcgbCA3IDAgbAogeiAxIDEgbSAxIDYgbCA2IDYgbCA2IDEgbCB6IDIgMiBtIDIgNSBsIDUgNSBsIDUgMiBsIHogMjIgMCBtIDIyIDcgbCAyOSA3IGwKIDI5IDAgbCB6IDIzIDEgbSAyMyA2IGwgMjggNiBsIDI4IDEgbCB6IDI0IDIgbSAyNCA1IGwgMjcgNSBsIDI3IDIgbCB6IDAgMjIgbQogMCAyOSBsIDcgMjkgbCA3IDIyIGwgeiAxIDIzIG0gMSAyOCBsIDYgMjggbCA2IDIzIGwgeiAyIDI0IG0gMiAyNyBsIDUgMjcgbCA1CiAyNCBsIHogMCAwIDAgcmdiIGYKJSVUUkFJTEVSCmVuZCByZXN0b3JlCiUlRU9G', 'data:image/png;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgd2lkdGg9IjMwMCIgaGVpZ2h0PSIzMDAiIHZpZXdCb3g9IjAgMCAzMDAgMzAwIj48cmVjdCB4PSIwIiB5PSIwIiB3aWR0aD0iMzAwIiBoZWlnaHQ9IjMwMCIgZmlsbD0iI2ZmZmZmZiIvPjxnIHRyYW5zZm9ybT0ic2NhbGUoMTAuMzQ1KSI+PGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMCwwKSI+PHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBkPSJNMTAgMEwxMCAyTDExIDJMMTEgMFpNMTIgMEwxMiAxTDEzIDFMMTMgMkwxMiAyTDEyIDRMMTMgNEwxMyA1TDExIDVMMTEgNkwxMCA2TDEwIDRMMTEgNEwxMSAzTDggM0w4IDRMOSA0TDkgNUw4IDVMOCA3TDkgN0w5IDhMNiA4TDYgOUw1IDlMNSA4TDAgOEwwIDEzTDEgMTNMMSAxNEwyIDE0TDIgMTVMMSAxNUwxIDE2TDIgMTZMMiAxN0w1IDE3TDUgMTZMNCAxNkw0IDE1TDUgMTVMNSAxNEw0IDE0TDQgMTNMMyAxM0wzIDEyTDQgMTJMNCAxMEw1IDEwTDUgMTJMNiAxMkw2IDEzTDcgMTNMNyAxNEw2IDE0TDYgMTVMNyAxNUw3IDE2TDYgMTZMNiAxN0w3IDE3TDcgMTZMOCAxNkw4IDE4TDUgMThMNSAxOUwzIDE5TDMgMThMMiAxOEwyIDE5TDMgMTlMMyAyMEw0IDIwTDQgMjFMNyAyMUw3IDIwTDUgMjBMNSAxOUw4IDE5TDggMjNMOSAyM0w5IDI0TDggMjRMOCAyOUwxNSAyOUwxNSAyOEwxNiAyOEwxNiAyN0wxNyAyN0wxNyAyNkwxOSAyNkwxOSAyN0wxOCAyN0wxOCAyOEwxOSAyOEwxOSAyN0wyMCAyN0wyMCAyOEwyMiAyOEwyMiAyOUwyMyAyOUwyMyAyOEwyMiAyOEwyMiAyN0wyNCAyN0wyNCAyOUwyNiAyOUwyNiAyN0wyNyAyN0wyNyAyOEwyOCAyOEwyOCAyNkwyOSAyNkwyOSAyNUwyOCAyNUwyOCAyM0wyNyAyM0wyNyAyMEwyNSAyMEwyNSAxOEwyNiAxOEwyNiAxNUwyNyAxNUwyNyAxNEwyOCAxNEwyOCAxM0wyNyAxM0wyNyAxMkwyOSAxMkwyOSAxMUwyNyAxMUwyNyAxMkwyNSAxMkwyNSAxM0wyNCAxM0wyNCAxNEwyNSAxNEwyNSAxM0wyNiAxM0wyNiAxNUwyNCAxNUwyNCAxNkwyMyAxNkwyMyAxN0wyNCAxN0wyNCAxOEwyMyAxOEwyMyAxOUwyNCAxOUwyNCAyMEwyMCAyMEwyMCAyMUwxOSAyMUwxOSAyMEwxNyAyMEwxNyAyMUwxNSAyMUwxNSAxOUwxOSAxOUwxOSAxOEwyMSAxOEwyMSAxOUwyMiAxOUwyMiAxN0wxOSAxN0wxOSAxOEwxNSAxOEwxNSAxOUwxNCAxOUwxNCAyMEwxMyAyMEwxMyAxN0wxNiAxN0wxNiAxNEwxNSAxNEwxNSAxM0wxNyAxM0wxNyAxNUwxOSAxNUwxOSAxNEwyMCAxNEwyMCAxNkwyMiAxNkwyMiAxNEwyMSAxNEwyMSAxMkwyMCAxMkwyMCAxMUwxOCAxMUwxOCAxMkwxNSAxMkwxNSAxMUwxNiAxMUwxNiAxMEwxNSAxMEwxNSAxMUwxNCAxMUwxNCAxMkwxMyAxMkwxMyAxMUwxMSAxMUwxMSA5TDEyIDlMMTIgMTBMMTMgMTBMMTMgOUwxNSA5TDE1IDZMMTYgNkwxNiA3TDE3IDdMMTcgNEwxOCA0TDE4IDdMMTkgN0wxOSA4TDIwIDhMMjAgOUwxOCA5TDE4IDhMMTYgOEwxNiA5TDE3IDlMMTcgMTBMMjEgMTBMMjEgOUwyMiA5TDIyIDhMMjAgOEwyMCA3TDIxIDdMMjEgNEwyMCA0TDIwIDNMMjEgM0wyMSAwTDE3IDBMMTcgMkwxOCAyTDE4IDNMMTYgM0wxNiAxTDE1IDFMMTUgMFpNOCAxTDggMkw5IDJMOSAxWk0xNCAxTDE0IDJMMTMgMkwxMyAzTDE1IDNMMTUgMVpNMTggMUwxOCAyTDIwIDJMMjAgMVpNMTggM0wxOCA0TDE5IDRMMTkgM1pNMTQgNEwxNCA2TDEzIDZMMTMgN0wxMiA3TDEyIDZMMTEgNkwxMSA3TDEyIDdMMTIgOEwxNCA4TDE0IDZMMTUgNkwxNSA0Wk0xOSA1TDE5IDdMMjAgN0wyMCA1Wk05IDZMOSA3TDEwIDdMMTAgNlpNMTAgOEwxMCA5TDkgOUw5IDEwTDggMTBMOCA5TDYgOUw2IDEwTDggMTBMOCAxMUw5IDExTDkgMTJMNyAxMkw3IDExTDYgMTFMNiAxMkw3IDEyTDcgMTNMOSAxM0w5IDEyTDExIDEyTDExIDExTDEwIDExTDEwIDlMMTEgOUwxMSA4Wk0yMyA4TDIzIDExTDIyIDExTDIyIDEyTDI0IDEyTDI0IDEwTDI1IDEwTDI1IDExTDI2IDExTDI2IDEwTDI4IDEwTDI4IDhMMjcgOEwyNyA5TDI2IDlMMjYgOEwyNSA4TDI1IDlMMjQgOUwyNCA4Wk0yIDlMMiAxMEwxIDEwTDEgMTFMMyAxMUwzIDEwTDQgMTBMNCA5Wk0yNSA5TDI1IDEwTDI2IDEwTDI2IDlaTTEgMTJMMSAxM0wyIDEzTDIgMTJaTTEyIDEyTDEyIDEzTDEzIDEzTDEzIDE0TDE0IDE0TDE0IDE1TDEyIDE1TDEyIDE0TDExIDE0TDExIDEzTDEwIDEzTDEwIDE0TDkgMTRMOSAxNUw4IDE1TDggMTZMMTEgMTZMMTEgMTdMMTMgMTdMMTMgMTZMMTUgMTZMMTUgMTRMMTQgMTRMMTQgMTNMMTMgMTNMMTMgMTJaTTE5IDEyTDE5IDEzTDE4IDEzTDE4IDE0TDE5IDE0TDE5IDEzTDIwIDEzTDIwIDEyWk0zIDE0TDMgMTVMMiAxNUwyIDE2TDMgMTZMMyAxNUw0IDE1TDQgMTRaTTEwIDE0TDEwIDE1TDExIDE1TDExIDE2TDEyIDE2TDEyIDE1TDExIDE1TDExIDE0Wk0yNCAxNkwyNCAxN0wyNSAxN0wyNSAxNlpNMjcgMTZMMjcgMThMMjggMThMMjggMTdMMjkgMTdMMjkgMTZaTTAgMTdMMCAyMUwxIDIxTDEgMTdaTTkgMThMOSAyMUwxMCAyMUwxMCAyMkw5IDIyTDkgMjNMMTAgMjNMMTAgMjRMOSAyNEw5IDI2TDEwIDI2TDEwIDI3TDExIDI3TDExIDI4TDEyIDI4TDEyIDI3TDEzIDI3TDEzIDI4TDE1IDI4TDE1IDI1TDIwIDI1TDIwIDI2TDIxIDI2TDIxIDI3TDIyIDI3TDIyIDI2TDI0IDI2TDI0IDI1TDIyIDI1TDIyIDI2TDIxIDI2TDIxIDI1TDIwIDI1TDIwIDI0TDE4IDI0TDE4IDIzTDE3IDIzTDE3IDIyTDE2IDIyTDE2IDIzTDE1IDIzTDE1IDIxTDEzIDIxTDEzIDIwTDEyIDIwTDEyIDE4TDExIDE4TDExIDE5TDEwIDE5TDEwIDE4Wk0yOCAxOUwyOCAyMEwyOSAyMEwyOSAxOVpNMTAgMjBMMTAgMjFMMTEgMjFMMTEgMjJMMTAgMjJMMTAgMjNMMTEgMjNMMTEgMjRMMTIgMjRMMTIgMjNMMTEgMjNMMTEgMjJMMTMgMjJMMTMgMjNMMTQgMjNMMTQgMjRMMTMgMjRMMTMgMjVMMTEgMjVMMTEgMjZMMTQgMjZMMTQgMjVMMTUgMjVMMTUgMjNMMTQgMjNMMTQgMjJMMTMgMjJMMTMgMjFMMTIgMjFMMTIgMjBaTTE4IDIxTDE4IDIyTDE5IDIyTDE5IDIzTDIwIDIzTDIwIDIyTDE5IDIyTDE5IDIxWk0yMSAyMUwyMSAyNEwyNCAyNEwyNCAyMVpNMjUgMjFMMjUgMjNMMjYgMjNMMjYgMjZMMjggMjZMMjggMjVMMjcgMjVMMjcgMjNMMjYgMjNMMjYgMjFaTTIyIDIyTDIyIDIzTDIzIDIzTDIzIDIyWk0xNiAyM0wxNiAyNEwxNyAyNEwxNyAyM1pNMCAwTDAgN0w3IDdMNyAwWk0xIDFMMSA2TDYgNkw2IDFaTTIgMkwyIDVMNSA1TDUgMlpNMjIgMEwyMiA3TDI5IDdMMjkgMFpNMjMgMUwyMyA2TDI4IDZMMjggMVpNMjQgMkwyNCA1TDI3IDVMMjcgMlpNMCAyMkwwIDI5TDcgMjlMNyAyMlpNMSAyM0wxIDI4TDYgMjhMNiAyM1pNMiAyNEwyIDI3TDUgMjdMNSAyNFoiIGZpbGw9IiMwMDAwMDAiLz48L2c+PC9nPjwvc3ZnPgo=', '2022-12-08 07:28:38', '2022-12-08 07:36:47'),
(2, 'WPA2/WPA3-Personal', 'LINK 1', 'karachi786', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAAEsCAAAAABcFtGpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0QA/4ePzL8AAAtXSURBVHja7Z1dbFxHFcd3s157sZM4i10kW9AUp4kj09BgJyJq06Bt6kpUJHZVERKpwilBiI+kCBAIW+IBFdYqIYK4oRK0KQ0vDqJSvc1T5ahRpW0VIcegOJHauLjYIAeZJLZDHK/trJcXz5yR9mju3HvnXq+t/3k6PmfOzNzfro9m9s5HJGJLhgo6yVDBDmlMOVQ5W1zPvHmHpkTMkK1HXBOBABZgARZgARZgQQALsJZZyuxXOfcH0o/5qukVqe1tKjVYo+7DUyPFttzzpH83pov+06LQrrVKY/tJoX2fKurnYHH93ajvb8MF98+4kf9m3R/yJ/VpqV3z0ouaqiJT3inG/SOOIWchwQMWYAEWYEEAy+II/ro+KJG00/hE3lf47ds+gidzen+dKazr9fqKOtM6b0Wa+eLWkfE+qR2k8TS5q7VNx6jgh/V+SB/v1vvH60KZGyY6GePOnfqgPY8apg2q/DByFhI8YAEWBLAAC7AAa1VPd3zJ9Gf1/rY/MsZ9+pgDqxVWZFLvLniIYd13xG/wl3ZIW/Ml/BsiZwEWYEEAC7AAC7Awgg9R/swZX5Pas+UrAFY1LYk5OCjVgfVCq5C2V+XbnVFlydGvhPaTPqb21O+F9ssjjHuQjM+sBFiRzabWBqmNOoabupGzkOABC7AggAVYgLWKR/A3fblXGix2HYwijVrvdK3WPVNr/ymov92mIY0Oz5gwhZVMr7CPfNf+JSVvDKsDOQsJHrAAC7AggAVYgFWSI/hUkA0ZLxq6vCnIbmyyBWvEft/uiW/uuTYaO8v1WXtph0X2kSVl7hMUPSvebby/21J/Rqx9s4KQqKHNhRE5CwkesAALAliABVgrbgQfgPyFM5613szds6HAilo78XSzXEp0hQbrg/oYavyBtUtKTh3Bi7cGd/5Jn+5WoQ3PCW1O2TRwRqoPSfewLViFID+KFgdY8/EiEwvLQbDDAgkesAALAliABVilOIKf9hBULsdCt/0N0+4allv8H2dlj/jhnqcyznirIzpjTo54Iwk52vb0wy2dcrTJ+Efto1I7ZdyOHJS+x/4GL7f9fvA7feW9B5eUgvKPdKNGzAS2SFvyltC6u6Sx51hIc0OSwy1Lyswp63VvfUlo+VNBPgNyFmABFmABFmBBAAuwAprueAl6+233Md+y3/c9vqKf5Iwt+ph7UnrImJZGp7Nu7xmKegudNCoLwrJcEF0+J01ubqErrmeRLXhaFmTdPTK8jL9kImb8b+xhchlz36L0Lvptx09B5CwkeMACLMACLAhguRnBv+Uv/pzevd9P3f2zIUEwZVBGi/kjA1Jjx+0DjO1Am8MAXzve+w0NmR9k3C/3McbUcVME6/Vuehxag5PsZwrWsnPD+/S3jq23fr7Qw16CWiw1/oB8u2NcOXIWEjxgARZgARYEsNyM4NU/ZoQSZ0+tlO6yCl9tzjC2yqjOy0qOu5YtWmnYoIPMLzjAojuA0/IIoDZagEUrc2jJUeoxaTyjbXwdHZRzhiuZFXeF5dZy4RS9QWrf5urh1sFf2abtWgVVTr+Rn+gy5pouFMtpcncy7l5+ulNc8A5bMCvc/Hywn2mRPaeomSnIbyK5UdBJGjkLCR6wAAuwAAsCWIC1TNMd9/KUw23MraYV/cxhlGx8GOjjUsusM4sY+aZp3fwimDRz4mmB3i7E5PdR2WExxBz1ustp269Q3m319Zllviw0ZVI7JfeWcPO8iNyiouywUGS81s83Kxp3KBD38JRxS/8gop68vVbiyFlI8IAFWIAFWBDACmIEf15qT7iuMn/BuOi7th7jvOuIwVt6/9WrQqtv0o/g1YG71vs+uR8WbxqmN3Als1LbbezOMgV3G1c5Va3reRfdSXC6UVuPtT3SjxiXTMg90rxfvt1RbC3FpxypM5ft8h5pn9/LR5GzkOABC7AAC7AggBXaCJ6Exj0JxmZPclpjwjyGcVdEQ4JFJ2FeE+vgbzpcjdYutTHmN/g15J6+wIzB27m2+7lZ11ompo/cNJGQpxwp8kmKqdI/xDovXK+J5Tg3HAoelQt3msk4wKzrYS/NaJduBZtccsTvkc7IvdSsu7dgKErMOONGzkKCByzAAizAggAWYC3TdMeD/PtpxviLEnvwX7/nARYt0n/leammfyC0+snimBpuYX/fIW7KEdEbZ11/1+PspgIP22NucR1Kjkd0s9Eyfoqqvw8hYevjjblfDJQI9PuWQM5CggcswAIswIIA1jKM4CcmguvGxHA4j2s8bP/gph7WXjri51NcvK3riTuepfG4UC632qk7xh1TFGkQSkF5BirJtf1mlx5WU1NI3+YnSqLuL3CnHCFnIcEDFmABFmBBAMveCH4h/DYXwq4xbqkbZeUOBWilywVTN7s4htzsKUcpL48rRLntlxVacqQ0U2uKKGVOkzvlSJFF5pSjo8xqnYxDM9mCDxlwqJxbctTJFUxypxz1YMkREjxgARZgARYEsAAr6OmOz/jntN7v+LpY4af/sf20heeswRqt0ZX8+tcY4+f1R7n+lTvlqEPe+rxPv/X8wz7Tp8jsZVBztySz3T3NPNmPaP1VOf/NqtJitbburcr+P0iV7ejycuQsJHjAAizAAiwIYAUwgs//XR9k/yIsRS6VGKGFy3pYEw4vAOhahpPy9t27h5iCL3DbcPV7jnNK2xnTB3qIsR2glUTyFKMo1Xix27Du6ztszQ2/IrWznPspf7U/6WeHwGOcka4QvIichQQPWIAFWBDAAqxlGMGbS95aybyfemIeOuRQZ8wLrGbGRrtst4wY9uetNn3lpjsSFtglUhkx2Mx7+fCPHGGM43Vi1N9sDivQqdpFse7qfGvJ/u995hJyFhI8YAEWYAEWBLAAq7SnO7wcMy34Q737x6b19PeHAis6RTpdYzDNGTm5zd3asIErOfCg1p1l3jkc7tP3XXb9ox1aNysvKtcyPMN0TU531G8WC6PalPV6xjbNFxV1zujdbv4rHBYaGVdpWhA5CwkesAALsAALAlhuxipXbNW0ucJXuOxHvNE05GPDcnN02kz0c75gbbMFa4hb90ObgeuFkujlopVrGd7U1qOsbNqmd0sZpoIN/yi5uSHJV4vfKMWYCyUcr9yrFacX8VvmK+XbnUPIWUjwgAVYEMACLMAqlRF8+E0qv0RHHfwORmN3xEN0obiTKqwGD+0wS46i+npm6D60yHy8OKZvDdOhVq6T1HabtkWlcnbDAi05SiaLZxzK1ciqjLo/X0jp+pBhyB2lxflit7oFfVYYlQulU7Jkh8PnOKXtBk45QoIHLMACLAhgARZglfh0Z/K4PqhROx6cfcF9NwbfsP9oL4YDK+ewf7hT6513iO44IVV5VustfcyuG8x08rcnmJLKUa3d4cAKWGpcR8S4kA2MLR9ox5GzAAuwAAuwAAsCWCU+zjK+b+pfpcFoeBlhndGfbdq+T2jntrivvPl7QvsbnVPKXZLwkX6A/0WKObKs3ywH+YaE5StaeSdTyaxy6tJX87jUxpCzkOABC7AAC7AggAVYq3C6k/T18bHRk1IbjDIlD5mujp+MaltcBlj7X/cTvf2dYht/C93HYjfvFX+7SH5+DP+GyFmABViABVgQwAKsVTeCJzl5V6pPb3Ud/ep/9f6Xw4FVN64P8nIBwIDcskB3QmfoYrU9+uh+uRGc9hFn6cVHZqfQaGOE8it775eKa3yJe2GRvCq017uMv1l1AXyN6oKMFu68z7brkLOQ4AELsAALsCCAFcigdCzIlsZ8uW21fb8tWBvt97JHag53te3WR9cz3taWYgSxHq4eel9hfMrRdqqoKYBPT+6RnlKM94Qx46XK2YIVGaIaG0z3SLOCnIUED1iABViABQEswApG/g9FFmmAap6MAAAAAABJRU5ErkJggg==', 'data:image/eps;base64,JSFQUy1BZG9iZS0zLjAgRVBTRi0zLjAKJSVDcmVhdG9yOiBCYWNvblFyQ29kZQolJUJvdW5kaW5nQm94OiAwIDAgMzAwIDMwMCAKJSVCZWdpblByb2xvZwpzYXZlCjUwIGRpY3QgYmVnaW4KL3EgeyBnc2F2ZSB9IGJpbmQgZGVmCi9RIHsgZ3Jlc3RvcmUgfSBiaW5kIGRlZgovcyB7IHNjYWxlIH0gYmluZCBkZWYKL3QgeyB0cmFuc2xhdGUgfSBiaW5kIGRlZgovciB7IHJvdGF0ZSB9IGJpbmQgZGVmCi9uIHsgbmV3cGF0aCB9IGJpbmQgZGVmCi9tIHsgbW92ZXRvIH0gYmluZCBkZWYKL2wgeyBsaW5ldG8gfSBiaW5kIGRlZgovYyB7IGN1cnZldG8gfSBiaW5kIGRlZgoveiB7IGNsb3NlcGF0aCB9IGJpbmQgZGVmCi9mIHsgZW9maWxsIH0gYmluZCBkZWYKL3JnYiB7IHNldHJnYmNvbG9yIH0gYmluZCBkZWYKL2NteWsgeyBzZXRjbXlrY29sb3IgfSBiaW5kIGRlZgovZ3JheSB7IHNldGdyYXkgfSBiaW5kIGRlZgolJUVuZFByb2xvZwoxIC0xIHMKMCAtMzAwIHQKMCAwIG0gMzAwIDAgbCAzMDAgMzAwIGwgMCAzMDAgbCB6IDEgMSAxIHJnYiBmCjEwLjM0NSAxMC4zNDUgcwowIDAgdApuIDEwIDAgbSAxMCAyIGwgMTEgMiBsIDExIDAgbCB6IDEyIDAgbSAxMiAxIGwgMTMgMSBsIDEzIDIgbCAxMiAyIGwgMTIgNCBsCiAxMyA0IGwgMTMgNSBsIDExIDUgbCAxMSA2IGwgMTAgNiBsIDEwIDQgbCAxMSA0IGwgMTEgMyBsIDggMyBsIDggNCBsIDkgNCBsIDkKIDUgbCA4IDUgbCA4IDcgbCA5IDcgbCA5IDggbCA2IDggbCA2IDkgbCA1IDkgbCA1IDggbCAwIDggbCAwIDkgbCAxIDkgbCAxIDEwCiBsIDAgMTAgbCAwIDE1IGwgMSAxNSBsIDEgMTYgbCAyIDE2IGwgMiAxNSBsIDMgMTUgbCAzIDE3IGwgMCAxNyBsIDAgMjEgbCAxCiAyMSBsIDEgMTggbCAzIDE4IGwgMyAxNyBsIDQgMTcgbCA0IDE4IGwgNiAxOCBsIDYgMTkgbCA3IDE5IGwgNyAyMCBsIDYgMjAgbAogNiAyMSBsIDggMjEgbCA4IDIzIGwgOSAyMyBsIDkgMjIgbCAxMCAyMiBsIDEwIDIxIGwgMTEgMjEgbCAxMSAyMiBsIDEzIDIyIGwKIDEzIDIzIGwgMTQgMjMgbCAxNCAyNCBsIDEzIDI0IGwgMTMgMjUgbCAxMSAyNSBsIDExIDI0IGwgMTIgMjQgbCAxMiAyMyBsIDExCiAyMyBsIDExIDI0IGwgOCAyNCBsIDggMjkgbCA5IDI5IGwgOSAyOCBsIDEwIDI4IGwgMTAgMjkgbCAxNSAyOSBsIDE1IDI4IGwgMTYKIDI4IGwgMTYgMjcgbCAxNyAyNyBsIDE3IDI2IGwgMTkgMjYgbCAxOSAyNyBsIDE4IDI3IGwgMTggMjggbCAxOSAyOCBsIDE5IDI3CiBsIDIwIDI3IGwgMjAgMjggbCAyMiAyOCBsIDIyIDI5IGwgMjMgMjkgbCAyMyAyOCBsIDIyIDI4IGwgMjIgMjcgbCAyNCAyNyBsCiAyNCAyOSBsIDI2IDI5IGwgMjYgMjcgbCAyNyAyNyBsIDI3IDI4IGwgMjggMjggbCAyOCAyNiBsIDI5IDI2IGwgMjkgMjUgbCAyOAogMjUgbCAyOCAyMyBsIDI3IDIzIGwgMjcgMjAgbCAyNSAyMCBsIDI1IDE4IGwgMjYgMTggbCAyNiAxNSBsIDI3IDE1IGwgMjcgMTQKIGwgMjggMTQgbCAyOCAxMyBsIDI3IDEzIGwgMjcgMTIgbCAyOSAxMiBsIDI5IDExIGwgMjcgMTEgbCAyNyAxMiBsIDI1IDEyIGwKIDI1IDEzIGwgMjQgMTMgbCAyNCAxNCBsIDI1IDE0IGwgMjUgMTMgbCAyNiAxMyBsIDI2IDE1IGwgMjQgMTUgbCAyNCAxNiBsIDIzCiAxNiBsIDIzIDE3IGwgMjQgMTcgbCAyNCAxOCBsIDIzIDE4IGwgMjMgMTkgbCAyNCAxOSBsIDI0IDIwIGwgMjAgMjAgbCAyMCAyMQogbCAxOSAyMSBsIDE5IDIwIGwgMTcgMjAgbCAxNyAyMSBsIDE1IDIxIGwgMTUgMTkgbCAxOSAxOSBsIDE5IDE4IGwgMjEgMTggbAogMjEgMTkgbCAyMiAxOSBsIDIyIDE3IGwgMTkgMTcgbCAxOSAxOCBsIDE1IDE4IGwgMTUgMTkgbCAxNCAxOSBsIDE0IDIwIGwgMTMKIDIwIGwgMTMgMTcgbCAxNiAxNyBsIDE2IDE0IGwgMTUgMTQgbCAxNSAxMyBsIDE3IDEzIGwgMTcgMTUgbCAxOSAxNSBsIDE5IDE0CiBsIDIwIDE0IGwgMjAgMTYgbCAyMiAxNiBsIDIyIDE0IGwgMjEgMTQgbCAyMSAxMiBsIDIwIDEyIGwgMjAgMTEgbCAxOCAxMSBsCiAxOCAxMiBsIDE2IDEyIGwgMTYgMTEgbCAxNyAxMSBsIDE3IDEwIGwgMjEgMTAgbCAyMSA5IGwgMjIgOSBsIDIyIDggbCAyMCA4IGwKIDIwIDcgbCAyMSA3IGwgMjEgNCBsIDIwIDQgbCAyMCAzIGwgMjEgMyBsIDIxIDAgbCAxNyAwIGwgMTcgMiBsIDE4IDIgbCAxOCAzCiBsIDE2IDMgbCAxNiAxIGwgMTUgMSBsIDE1IDAgbCB6IDggMSBtIDggMiBsIDkgMiBsIDkgMSBsIHogMTQgMSBtIDE0IDIgbCAxMwogMiBsIDEzIDMgbCAxNSAzIGwgMTUgMSBsIHogMTggMSBtIDE4IDIgbCAyMCAyIGwgMjAgMSBsIHogMTggMyBtIDE4IDQgbCAxNyA0CiBsIDE3IDcgbCAxNiA3IGwgMTYgNiBsIDE1IDYgbCAxNSA0IGwgMTQgNCBsIDE0IDYgbCAxMyA2IGwgMTMgNyBsIDEyIDcgbCAxMgogNiBsIDExIDYgbCAxMSA3IGwgMTIgNyBsIDEyIDggbCAxNCA4IGwgMTQgNiBsIDE1IDYgbCAxNSA5IGwgMTMgOSBsIDEzIDEwIGwKIDEyIDEwIGwgMTIgOSBsIDExIDkgbCAxMSA4IGwgMTAgOCBsIDEwIDkgbCA2IDkgbCA2IDEwIGwgNCAxMCBsIDQgMTEgbCAzIDExCiBsIDMgOSBsIDIgOSBsIDIgMTAgbCAxIDEwIGwgMSAxMSBsIDIgMTEgbCAyIDEzIGwgMyAxMyBsIDMgMTQgbCA0IDE0IGwgNCAxNgogbCA3IDE2IGwgNyAxNSBsIDUgMTUgbCA1IDE0IGwgOCAxNCBsIDggMTUgbCA5IDE1IGwgOSAxNCBsIDggMTQgbCA4IDEzIGwgOQogMTMgbCA5IDEyIGwgMTEgMTIgbCAxMSAxMSBsIDEzIDExIGwgMTMgMTIgbCAxMiAxMiBsIDEyIDEzIGwgMTMgMTMgbCAxMyAxNCBsCiAxNCAxNCBsIDE0IDE1IGwgMTIgMTUgbCAxMiAxNCBsIDExIDE0IGwgMTEgMTMgbCAxMCAxMyBsIDEwIDE1IGwgMTIgMTUgbCAxMgogMTYgbCAxMSAxNiBsIDExIDE3IGwgMTMgMTcgbCAxMyAxNiBsIDE1IDE2IGwgMTUgMTQgbCAxNCAxNCBsIDE0IDEzIGwgMTMgMTMKIGwgMTMgMTIgbCAxNCAxMiBsIDE0IDExIGwgMTUgMTEgbCAxNSAxMCBsIDE3IDEwIGwgMTcgOSBsIDE2IDkgbCAxNiA4IGwgMTggOAogbCAxOCA5IGwgMjAgOSBsIDIwIDggbCAxOSA4IGwgMTkgNyBsIDIwIDcgbCAyMCA1IGwgMTkgNSBsIDE5IDcgbCAxOCA3IGwgMTgKIDQgbCAxOSA0IGwgMTkgMyBsIHogOSA2IG0gOSA3IGwgMTAgNyBsIDEwIDYgbCB6IDIzIDggbSAyMyAxMSBsIDIyIDExIGwgMjIKIDEyIGwgMjQgMTIgbCAyNCAxMCBsIDI1IDEwIGwgMjUgMTEgbCAyNiAxMSBsIDI2IDEwIGwgMjggMTAgbCAyOCA4IGwgMjcgOCBsCiAyNyA5IGwgMjYgOSBsIDI2IDggbCAyNSA4IGwgMjUgOSBsIDI0IDkgbCAyNCA4IGwgeiAxMCA5IG0gMTAgMTEgbCAxMSAxMSBsCiAxMSA5IGwgeiAyNSA5IG0gMjUgMTAgbCAyNiAxMCBsIDI2IDkgbCB6IDYgMTAgbSA2IDExIGwgNyAxMSBsIDcgMTIgbCA2IDEyIGwKIDYgMTMgbCA3IDEzIGwgNyAxMiBsIDkgMTIgbCA5IDEwIGwgeiA0IDExIG0gNCAxMiBsIDUgMTIgbCA1IDExIGwgeiAxOSAxMiBtCiAxOSAxMyBsIDE4IDEzIGwgMTggMTQgbCAxOSAxNCBsIDE5IDEzIGwgMjAgMTMgbCAyMCAxMiBsIHogMjQgMTYgbSAyNCAxNyBsCiAyNSAxNyBsIDI1IDE2IGwgeiAyNyAxNiBtIDI3IDE4IGwgMjggMTggbCAyOCAxNyBsIDI5IDE3IGwgMjkgMTYgbCB6IDYgMTcgbQogNiAxOCBsIDcgMTggbCA3IDE3IGwgeiA4IDE3IG0gOCAyMSBsIDEwIDIxIGwgMTAgMjAgbCAxMiAyMCBsIDEyIDIxIGwgMTMgMjEKIGwgMTMgMjIgbCAxNCAyMiBsIDE0IDIzIGwgMTUgMjMgbCAxNSAyNSBsIDE0IDI1IGwgMTQgMjYgbCAxMSAyNiBsIDExIDI3IGwKIDEwIDI3IGwgMTAgMjggbCAxMiAyOCBsIDEyIDI3IGwgMTMgMjcgbCAxMyAyOCBsIDE1IDI4IGwgMTUgMjUgbCAyMCAyNSBsIDIwCiAyNiBsIDIxIDI2IGwgMjEgMjcgbCAyMiAyNyBsIDIyIDI2IGwgMjQgMjYgbCAyNCAyNSBsIDIyIDI1IGwgMjIgMjYgbCAyMSAyNgogbCAyMSAyNSBsIDIwIDI1IGwgMjAgMjQgbCAxOCAyNCBsIDE4IDIzIGwgMTcgMjMgbCAxNyAyMiBsIDE2IDIyIGwgMTYgMjMgbAogMTUgMjMgbCAxNSAyMSBsIDEzIDIxIGwgMTMgMjAgbCAxMiAyMCBsIDEyIDE4IGwgMTEgMTggbCAxMSAxOSBsIDkgMTkgbCA5IDE4CiBsIDEwIDE4IGwgMTAgMTcgbCB6IDIgMTkgbSAyIDIxIGwgMyAyMSBsIDMgMjAgbCA1IDIwIGwgNSAxOSBsIHogMjggMTkgbSAyOAogMjAgbCAyOSAyMCBsIDI5IDE5IGwgeiAxOCAyMSBtIDE4IDIyIGwgMTkgMjIgbCAxOSAyMyBsIDIwIDIzIGwgMjAgMjIgbCAxOQogMjIgbCAxOSAyMSBsIHogMjEgMjEgbSAyMSAyNCBsIDI0IDI0IGwgMjQgMjEgbCB6IDI1IDIxIG0gMjUgMjMgbCAyNiAyMyBsIDI2CiAyNiBsIDI4IDI2IGwgMjggMjUgbCAyNyAyNSBsIDI3IDIzIGwgMjYgMjMgbCAyNiAyMSBsIHogMjIgMjIgbSAyMiAyMyBsIDIzCiAyMyBsIDIzIDIyIGwgeiAxNiAyMyBtIDE2IDI0IGwgMTcgMjQgbCAxNyAyMyBsIHogMCAwIG0gMCA3IGwgNyA3IGwgNyAwIGwgegogMSAxIG0gMSA2IGwgNiA2IGwgNiAxIGwgeiAyIDIgbSAyIDUgbCA1IDUgbCA1IDIgbCB6IDIyIDAgbSAyMiA3IGwgMjkgNyBsIDI5CiAwIGwgeiAyMyAxIG0gMjMgNiBsIDI4IDYgbCAyOCAxIGwgeiAyNCAyIG0gMjQgNSBsIDI3IDUgbCAyNyAyIGwgeiAwIDIyIG0gMAogMjkgbCA3IDI5IGwgNyAyMiBsIHogMSAyMyBtIDEgMjggbCA2IDI4IGwgNiAyMyBsIHogMiAyNCBtIDIgMjcgbCA1IDI3IGwgNQogMjQgbCB6IDAgMCAwIHJnYiBmCiUlVFJBSUxFUgplbmQgcmVzdG9yZQolJUVPRg==', 'data:image/svg;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgd2lkdGg9IjMwMCIgaGVpZ2h0PSIzMDAiIHZpZXdCb3g9IjAgMCAzMDAgMzAwIj48cmVjdCB4PSIwIiB5PSIwIiB3aWR0aD0iMzAwIiBoZWlnaHQ9IjMwMCIgZmlsbD0iI2ZmZmZmZiIvPjxnIHRyYW5zZm9ybT0ic2NhbGUoMTAuMzQ1KSI+PGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMCwwKSI+PHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBkPSJNMTAgMEwxMCAyTDExIDJMMTEgMFpNMTIgMEwxMiAxTDEzIDFMMTMgMkwxMiAyTDEyIDRMMTMgNEwxMyA1TDExIDVMMTEgNkwxMCA2TDEwIDRMMTEgNEwxMSAzTDggM0w4IDRMOSA0TDkgNUw4IDVMOCA3TDkgN0w5IDhMNiA4TDYgOUw1IDlMNSA4TDAgOEwwIDlMMSA5TDEgMTBMMCAxMEwwIDE1TDEgMTVMMSAxNkwyIDE2TDIgMTVMMyAxNUwzIDE3TDAgMTdMMCAyMUwxIDIxTDEgMThMMyAxOEwzIDE3TDQgMTdMNCAxOEw2IDE4TDYgMTlMNyAxOUw3IDIwTDYgMjBMNiAyMUw4IDIxTDggMjNMOSAyM0w5IDIyTDEwIDIyTDEwIDIxTDExIDIxTDExIDIyTDEzIDIyTDEzIDIzTDE0IDIzTDE0IDI0TDEzIDI0TDEzIDI1TDExIDI1TDExIDI0TDEyIDI0TDEyIDIzTDExIDIzTDExIDI0TDggMjRMOCAyOUw5IDI5TDkgMjhMMTAgMjhMMTAgMjlMMTUgMjlMMTUgMjhMMTYgMjhMMTYgMjdMMTcgMjdMMTcgMjZMMTkgMjZMMTkgMjdMMTggMjdMMTggMjhMMTkgMjhMMTkgMjdMMjAgMjdMMjAgMjhMMjIgMjhMMjIgMjlMMjMgMjlMMjMgMjhMMjIgMjhMMjIgMjdMMjQgMjdMMjQgMjlMMjYgMjlMMjYgMjdMMjcgMjdMMjcgMjhMMjggMjhMMjggMjZMMjkgMjZMMjkgMjVMMjggMjVMMjggMjNMMjcgMjNMMjcgMjBMMjUgMjBMMjUgMThMMjYgMThMMjYgMTVMMjcgMTVMMjcgMTRMMjggMTRMMjggMTNMMjcgMTNMMjcgMTJMMjkgMTJMMjkgMTFMMjcgMTFMMjcgMTJMMjUgMTJMMjUgMTNMMjQgMTNMMjQgMTRMMjUgMTRMMjUgMTNMMjYgMTNMMjYgMTVMMjQgMTVMMjQgMTZMMjMgMTZMMjMgMTdMMjQgMTdMMjQgMThMMjMgMThMMjMgMTlMMjQgMTlMMjQgMjBMMjAgMjBMMjAgMjFMMTkgMjFMMTkgMjBMMTcgMjBMMTcgMjFMMTUgMjFMMTUgMTlMMTkgMTlMMTkgMThMMjEgMThMMjEgMTlMMjIgMTlMMjIgMTdMMTkgMTdMMTkgMThMMTUgMThMMTUgMTlMMTQgMTlMMTQgMjBMMTMgMjBMMTMgMTdMMTYgMTdMMTYgMTRMMTUgMTRMMTUgMTNMMTcgMTNMMTcgMTVMMTkgMTVMMTkgMTRMMjAgMTRMMjAgMTZMMjIgMTZMMjIgMTRMMjEgMTRMMjEgMTJMMjAgMTJMMjAgMTFMMTggMTFMMTggMTJMMTYgMTJMMTYgMTFMMTcgMTFMMTcgMTBMMjEgMTBMMjEgOUwyMiA5TDIyIDhMMjAgOEwyMCA3TDIxIDdMMjEgNEwyMCA0TDIwIDNMMjEgM0wyMSAwTDE3IDBMMTcgMkwxOCAyTDE4IDNMMTYgM0wxNiAxTDE1IDFMMTUgMFpNOCAxTDggMkw5IDJMOSAxWk0xNCAxTDE0IDJMMTMgMkwxMyAzTDE1IDNMMTUgMVpNMTggMUwxOCAyTDIwIDJMMjAgMVpNMTggM0wxOCA0TDE3IDRMMTcgN0wxNiA3TDE2IDZMMTUgNkwxNSA0TDE0IDRMMTQgNkwxMyA2TDEzIDdMMTIgN0wxMiA2TDExIDZMMTEgN0wxMiA3TDEyIDhMMTQgOEwxNCA2TDE1IDZMMTUgOUwxMyA5TDEzIDEwTDEyIDEwTDEyIDlMMTEgOUwxMSA4TDEwIDhMMTAgOUw2IDlMNiAxMEw0IDEwTDQgMTFMMyAxMUwzIDlMMiA5TDIgMTBMMSAxMEwxIDExTDIgMTFMMiAxM0wzIDEzTDMgMTRMNCAxNEw0IDE2TDcgMTZMNyAxNUw1IDE1TDUgMTRMOCAxNEw4IDE1TDkgMTVMOSAxNEw4IDE0TDggMTNMOSAxM0w5IDEyTDExIDEyTDExIDExTDEzIDExTDEzIDEyTDEyIDEyTDEyIDEzTDEzIDEzTDEzIDE0TDE0IDE0TDE0IDE1TDEyIDE1TDEyIDE0TDExIDE0TDExIDEzTDEwIDEzTDEwIDE1TDEyIDE1TDEyIDE2TDExIDE2TDExIDE3TDEzIDE3TDEzIDE2TDE1IDE2TDE1IDE0TDE0IDE0TDE0IDEzTDEzIDEzTDEzIDEyTDE0IDEyTDE0IDExTDE1IDExTDE1IDEwTDE3IDEwTDE3IDlMMTYgOUwxNiA4TDE4IDhMMTggOUwyMCA5TDIwIDhMMTkgOEwxOSA3TDIwIDdMMjAgNUwxOSA1TDE5IDdMMTggN0wxOCA0TDE5IDRMMTkgM1pNOSA2TDkgN0wxMCA3TDEwIDZaTTIzIDhMMjMgMTFMMjIgMTFMMjIgMTJMMjQgMTJMMjQgMTBMMjUgMTBMMjUgMTFMMjYgMTFMMjYgMTBMMjggMTBMMjggOEwyNyA4TDI3IDlMMjYgOUwyNiA4TDI1IDhMMjUgOUwyNCA5TDI0IDhaTTEwIDlMMTAgMTFMMTEgMTFMMTEgOVpNMjUgOUwyNSAxMEwyNiAxMEwyNiA5Wk02IDEwTDYgMTFMNyAxMUw3IDEyTDYgMTJMNiAxM0w3IDEzTDcgMTJMOSAxMkw5IDEwWk00IDExTDQgMTJMNSAxMkw1IDExWk0xOSAxMkwxOSAxM0wxOCAxM0wxOCAxNEwxOSAxNEwxOSAxM0wyMCAxM0wyMCAxMlpNMjQgMTZMMjQgMTdMMjUgMTdMMjUgMTZaTTI3IDE2TDI3IDE4TDI4IDE4TDI4IDE3TDI5IDE3TDI5IDE2Wk02IDE3TDYgMThMNyAxOEw3IDE3Wk04IDE3TDggMjFMMTAgMjFMMTAgMjBMMTIgMjBMMTIgMjFMMTMgMjFMMTMgMjJMMTQgMjJMMTQgMjNMMTUgMjNMMTUgMjVMMTQgMjVMMTQgMjZMMTEgMjZMMTEgMjdMMTAgMjdMMTAgMjhMMTIgMjhMMTIgMjdMMTMgMjdMMTMgMjhMMTUgMjhMMTUgMjVMMjAgMjVMMjAgMjZMMjEgMjZMMjEgMjdMMjIgMjdMMjIgMjZMMjQgMjZMMjQgMjVMMjIgMjVMMjIgMjZMMjEgMjZMMjEgMjVMMjAgMjVMMjAgMjRMMTggMjRMMTggMjNMMTcgMjNMMTcgMjJMMTYgMjJMMTYgMjNMMTUgMjNMMTUgMjFMMTMgMjFMMTMgMjBMMTIgMjBMMTIgMThMMTEgMThMMTEgMTlMOSAxOUw5IDE4TDEwIDE4TDEwIDE3Wk0yIDE5TDIgMjFMMyAyMUwzIDIwTDUgMjBMNSAxOVpNMjggMTlMMjggMjBMMjkgMjBMMjkgMTlaTTE4IDIxTDE4IDIyTDE5IDIyTDE5IDIzTDIwIDIzTDIwIDIyTDE5IDIyTDE5IDIxWk0yMSAyMUwyMSAyNEwyNCAyNEwyNCAyMVpNMjUgMjFMMjUgMjNMMjYgMjNMMjYgMjZMMjggMjZMMjggMjVMMjcgMjVMMjcgMjNMMjYgMjNMMjYgMjFaTTIyIDIyTDIyIDIzTDIzIDIzTDIzIDIyWk0xNiAyM0wxNiAyNEwxNyAyNEwxNyAyM1pNMCAwTDAgN0w3IDdMNyAwWk0xIDFMMSA2TDYgNkw2IDFaTTIgMkwyIDVMNSA1TDUgMlpNMjIgMEwyMiA3TDI5IDdMMjkgMFpNMjMgMUwyMyA2TDI4IDZMMjggMVpNMjQgMkwyNCA1TDI3IDVMMjcgMlpNMCAyMkwwIDI5TDcgMjlMNyAyMlpNMSAyM0wxIDI4TDYgMjhMNiAyM1pNMiAyNEwyIDI3TDUgMjdMNSAyNFoiIGZpbGw9IiMwMDAwMDAiLz48L2c+PC9nPjwvc3ZnPgo=', '2022-12-08 07:40:56', '2022-12-08 07:40:56'),
(3, 'WPA2/WPA3-Personal', 'LINK 1', 'karachi786', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAAEsCAAAAABcFtGpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0QA/4ePzL8AAAtXSURBVHja7Z1dbFxHFcd3s157sZM4i10kW9AUp4kj09BgJyJq06Bt6kpUJHZVERKpwilBiI+kCBAIW+IBFdYqIYK4oRK0KQ0vDqJSvc1T5ahRpW0VIcegOJHauLjYIAeZJLZDHK/trJcXz5yR9mju3HvnXq+t/3k6PmfOzNzfro9m9s5HJGJLhgo6yVDBDmlMOVQ5W1zPvHmHpkTMkK1HXBOBABZgARZgARZgQQALsJZZyuxXOfcH0o/5qukVqe1tKjVYo+7DUyPFttzzpH83pov+06LQrrVKY/tJoX2fKurnYHH93ajvb8MF98+4kf9m3R/yJ/VpqV3z0ouaqiJT3inG/SOOIWchwQMWYAEWYEEAy+II/ro+KJG00/hE3lf47ds+gidzen+dKazr9fqKOtM6b0Wa+eLWkfE+qR2k8TS5q7VNx6jgh/V+SB/v1vvH60KZGyY6GePOnfqgPY8apg2q/DByFhI8YAEWBLAAC7AAa1VPd3zJ9Gf1/rY/MsZ9+pgDqxVWZFLvLniIYd13xG/wl3ZIW/Ml/BsiZwEWYEEAC7AAC7Awgg9R/swZX5Pas+UrAFY1LYk5OCjVgfVCq5C2V+XbnVFlydGvhPaTPqb21O+F9ssjjHuQjM+sBFiRzabWBqmNOoabupGzkOABC7AggAVYgLWKR/A3fblXGix2HYwijVrvdK3WPVNr/ymov92mIY0Oz5gwhZVMr7CPfNf+JSVvDKsDOQsJHrAAC7AggAVYgFWSI/hUkA0ZLxq6vCnIbmyyBWvEft/uiW/uuTYaO8v1WXtph0X2kSVl7hMUPSvebby/21J/Rqx9s4KQqKHNhRE5CwkesAALAliABVgrbgQfgPyFM5613szds6HAilo78XSzXEp0hQbrg/oYavyBtUtKTh3Bi7cGd/5Jn+5WoQ3PCW1O2TRwRqoPSfewLViFID+KFgdY8/EiEwvLQbDDAgkesAALAliABVilOIKf9hBULsdCt/0N0+4allv8H2dlj/jhnqcyznirIzpjTo54Iwk52vb0wy2dcrTJ+Efto1I7ZdyOHJS+x/4GL7f9fvA7feW9B5eUgvKPdKNGzAS2SFvyltC6u6Sx51hIc0OSwy1Lyswp63VvfUlo+VNBPgNyFmABFmABFmBBAAuwAprueAl6+233Md+y3/c9vqKf5Iwt+ph7UnrImJZGp7Nu7xmKegudNCoLwrJcEF0+J01ubqErrmeRLXhaFmTdPTK8jL9kImb8b+xhchlz36L0Lvptx09B5CwkeMACLMACLAhguRnBv+Uv/pzevd9P3f2zIUEwZVBGi/kjA1Jjx+0DjO1Am8MAXzve+w0NmR9k3C/3McbUcVME6/Vuehxag5PsZwrWsnPD+/S3jq23fr7Qw16CWiw1/oB8u2NcOXIWEjxgARZgARYEsNyM4NU/ZoQSZ0+tlO6yCl9tzjC2yqjOy0qOu5YtWmnYoIPMLzjAojuA0/IIoDZagEUrc2jJUeoxaTyjbXwdHZRzhiuZFXeF5dZy4RS9QWrf5urh1sFf2abtWgVVTr+Rn+gy5pouFMtpcncy7l5+ulNc8A5bMCvc/Hywn2mRPaeomSnIbyK5UdBJGjkLCR6wAAuwAAsCWIC1TNMd9/KUw23MraYV/cxhlGx8GOjjUsusM4sY+aZp3fwimDRz4mmB3i7E5PdR2WExxBz1ustp269Q3m319Zllviw0ZVI7JfeWcPO8iNyiouywUGS81s83Kxp3KBD38JRxS/8gop68vVbiyFlI8IAFWIAFWBDACmIEf15qT7iuMn/BuOi7th7jvOuIwVt6/9WrQqtv0o/g1YG71vs+uR8WbxqmN3Als1LbbezOMgV3G1c5Va3reRfdSXC6UVuPtT3SjxiXTMg90rxfvt1RbC3FpxypM5ft8h5pn9/LR5GzkOABC7AAC7AggBXaCJ6Exj0JxmZPclpjwjyGcVdEQ4JFJ2FeE+vgbzpcjdYutTHmN/g15J6+wIzB27m2+7lZ11ompo/cNJGQpxwp8kmKqdI/xDovXK+J5Tg3HAoelQt3msk4wKzrYS/NaJduBZtccsTvkc7IvdSsu7dgKErMOONGzkKCByzAAizAggAWYC3TdMeD/PtpxviLEnvwX7/nARYt0n/leammfyC0+snimBpuYX/fIW7KEdEbZ11/1+PspgIP22NucR1Kjkd0s9Eyfoqqvw8hYevjjblfDJQI9PuWQM5CggcswAIswIIA1jKM4CcmguvGxHA4j2s8bP/gph7WXjri51NcvK3riTuepfG4UC632qk7xh1TFGkQSkF5BirJtf1mlx5WU1NI3+YnSqLuL3CnHCFnIcEDFmABFmBBAMveCH4h/DYXwq4xbqkbZeUOBWilywVTN7s4htzsKUcpL48rRLntlxVacqQ0U2uKKGVOkzvlSJFF5pSjo8xqnYxDM9mCDxlwqJxbctTJFUxypxz1YMkREjxgARZgARYEsAAr6OmOz/jntN7v+LpY4af/sf20heeswRqt0ZX8+tcY4+f1R7n+lTvlqEPe+rxPv/X8wz7Tp8jsZVBztySz3T3NPNmPaP1VOf/NqtJitbburcr+P0iV7ejycuQsJHjAAizAAiwIYAUwgs//XR9k/yIsRS6VGKGFy3pYEw4vAOhahpPy9t27h5iCL3DbcPV7jnNK2xnTB3qIsR2glUTyFKMo1Xix27Du6ztszQ2/IrWznPspf7U/6WeHwGOcka4QvIichQQPWIAFWBDAAqxlGMGbS95aybyfemIeOuRQZ8wLrGbGRrtst4wY9uetNn3lpjsSFtglUhkx2Mx7+fCPHGGM43Vi1N9sDivQqdpFse7qfGvJ/u995hJyFhI8YAEWYAEWBLAAq7SnO7wcMy34Q737x6b19PeHAis6RTpdYzDNGTm5zd3asIErOfCg1p1l3jkc7tP3XXb9ox1aNysvKtcyPMN0TU531G8WC6PalPV6xjbNFxV1zujdbv4rHBYaGVdpWhA5CwkesAALsAALAlhuxipXbNW0ucJXuOxHvNE05GPDcnN02kz0c75gbbMFa4hb90ObgeuFkujlopVrGd7U1qOsbNqmd0sZpoIN/yi5uSHJV4vfKMWYCyUcr9yrFacX8VvmK+XbnUPIWUjwgAVYEMACLMAqlRF8+E0qv0RHHfwORmN3xEN0obiTKqwGD+0wS46i+npm6D60yHy8OKZvDdOhVq6T1HabtkWlcnbDAi05SiaLZxzK1ciqjLo/X0jp+pBhyB2lxflit7oFfVYYlQulU7Jkh8PnOKXtBk45QoIHLMACLAhgARZglfh0Z/K4PqhROx6cfcF9NwbfsP9oL4YDK+ewf7hT6513iO44IVV5VustfcyuG8x08rcnmJLKUa3d4cAKWGpcR8S4kA2MLR9ox5GzAAuwAAuwAAsCWCU+zjK+b+pfpcFoeBlhndGfbdq+T2jntrivvPl7QvsbnVPKXZLwkX6A/0WKObKs3ywH+YaE5StaeSdTyaxy6tJX87jUxpCzkOABC7AAC7AggAVYq3C6k/T18bHRk1IbjDIlD5mujp+MaltcBlj7X/cTvf2dYht/C93HYjfvFX+7SH5+DP+GyFmABViABVgQwAKsVTeCJzl5V6pPb3Ud/ep/9f6Xw4FVN64P8nIBwIDcskB3QmfoYrU9+uh+uRGc9hFn6cVHZqfQaGOE8it775eKa3yJe2GRvCq017uMv1l1AXyN6oKMFu68z7brkLOQ4AELsAALsCCAFcigdCzIlsZ8uW21fb8tWBvt97JHag53te3WR9cz3taWYgSxHq4eel9hfMrRdqqoKYBPT+6RnlKM94Qx46XK2YIVGaIaG0z3SLOCnIUED1iABViABQEswApG/g9FFmmAap6MAAAAAABJRU5ErkJggg==', 'data:image/png;base64,JSFQUy1BZG9iZS0zLjAgRVBTRi0zLjAKJSVDcmVhdG9yOiBCYWNvblFyQ29kZQolJUJvdW5kaW5nQm94OiAwIDAgMzAwIDMwMCAKJSVCZWdpblByb2xvZwpzYXZlCjUwIGRpY3QgYmVnaW4KL3EgeyBnc2F2ZSB9IGJpbmQgZGVmCi9RIHsgZ3Jlc3RvcmUgfSBiaW5kIGRlZgovcyB7IHNjYWxlIH0gYmluZCBkZWYKL3QgeyB0cmFuc2xhdGUgfSBiaW5kIGRlZgovciB7IHJvdGF0ZSB9IGJpbmQgZGVmCi9uIHsgbmV3cGF0aCB9IGJpbmQgZGVmCi9tIHsgbW92ZXRvIH0gYmluZCBkZWYKL2wgeyBsaW5ldG8gfSBiaW5kIGRlZgovYyB7IGN1cnZldG8gfSBiaW5kIGRlZgoveiB7IGNsb3NlcGF0aCB9IGJpbmQgZGVmCi9mIHsgZW9maWxsIH0gYmluZCBkZWYKL3JnYiB7IHNldHJnYmNvbG9yIH0gYmluZCBkZWYKL2NteWsgeyBzZXRjbXlrY29sb3IgfSBiaW5kIGRlZgovZ3JheSB7IHNldGdyYXkgfSBiaW5kIGRlZgolJUVuZFByb2xvZwoxIC0xIHMKMCAtMzAwIHQKMCAwIG0gMzAwIDAgbCAzMDAgMzAwIGwgMCAzMDAgbCB6IDEgMSAxIHJnYiBmCjEwLjM0NSAxMC4zNDUgcwowIDAgdApuIDEwIDAgbSAxMCAyIGwgMTEgMiBsIDExIDAgbCB6IDEyIDAgbSAxMiAxIGwgMTMgMSBsIDEzIDIgbCAxMiAyIGwgMTIgNCBsCiAxMyA0IGwgMTMgNSBsIDExIDUgbCAxMSA2IGwgMTAgNiBsIDEwIDQgbCAxMSA0IGwgMTEgMyBsIDggMyBsIDggNCBsIDkgNCBsIDkKIDUgbCA4IDUgbCA4IDcgbCA5IDcgbCA5IDggbCA2IDggbCA2IDkgbCA1IDkgbCA1IDggbCAwIDggbCAwIDkgbCAxIDkgbCAxIDEwCiBsIDAgMTAgbCAwIDE1IGwgMSAxNSBsIDEgMTYgbCAyIDE2IGwgMiAxNSBsIDMgMTUgbCAzIDE3IGwgMCAxNyBsIDAgMjEgbCAxCiAyMSBsIDEgMTggbCAzIDE4IGwgMyAxNyBsIDQgMTcgbCA0IDE4IGwgNiAxOCBsIDYgMTkgbCA3IDE5IGwgNyAyMCBsIDYgMjAgbAogNiAyMSBsIDggMjEgbCA4IDIzIGwgOSAyMyBsIDkgMjIgbCAxMCAyMiBsIDEwIDIxIGwgMTEgMjEgbCAxMSAyMiBsIDEzIDIyIGwKIDEzIDIzIGwgMTQgMjMgbCAxNCAyNCBsIDEzIDI0IGwgMTMgMjUgbCAxMSAyNSBsIDExIDI0IGwgMTIgMjQgbCAxMiAyMyBsIDExCiAyMyBsIDExIDI0IGwgOCAyNCBsIDggMjkgbCA5IDI5IGwgOSAyOCBsIDEwIDI4IGwgMTAgMjkgbCAxNSAyOSBsIDE1IDI4IGwgMTYKIDI4IGwgMTYgMjcgbCAxNyAyNyBsIDE3IDI2IGwgMTkgMjYgbCAxOSAyNyBsIDE4IDI3IGwgMTggMjggbCAxOSAyOCBsIDE5IDI3CiBsIDIwIDI3IGwgMjAgMjggbCAyMiAyOCBsIDIyIDI5IGwgMjMgMjkgbCAyMyAyOCBsIDIyIDI4IGwgMjIgMjcgbCAyNCAyNyBsCiAyNCAyOSBsIDI2IDI5IGwgMjYgMjcgbCAyNyAyNyBsIDI3IDI4IGwgMjggMjggbCAyOCAyNiBsIDI5IDI2IGwgMjkgMjUgbCAyOAogMjUgbCAyOCAyMyBsIDI3IDIzIGwgMjcgMjAgbCAyNSAyMCBsIDI1IDE4IGwgMjYgMTggbCAyNiAxNSBsIDI3IDE1IGwgMjcgMTQKIGwgMjggMTQgbCAyOCAxMyBsIDI3IDEzIGwgMjcgMTIgbCAyOSAxMiBsIDI5IDExIGwgMjcgMTEgbCAyNyAxMiBsIDI1IDEyIGwKIDI1IDEzIGwgMjQgMTMgbCAyNCAxNCBsIDI1IDE0IGwgMjUgMTMgbCAyNiAxMyBsIDI2IDE1IGwgMjQgMTUgbCAyNCAxNiBsIDIzCiAxNiBsIDIzIDE3IGwgMjQgMTcgbCAyNCAxOCBsIDIzIDE4IGwgMjMgMTkgbCAyNCAxOSBsIDI0IDIwIGwgMjAgMjAgbCAyMCAyMQogbCAxOSAyMSBsIDE5IDIwIGwgMTcgMjAgbCAxNyAyMSBsIDE1IDIxIGwgMTUgMTkgbCAxOSAxOSBsIDE5IDE4IGwgMjEgMTggbAogMjEgMTkgbCAyMiAxOSBsIDIyIDE3IGwgMTkgMTcgbCAxOSAxOCBsIDE1IDE4IGwgMTUgMTkgbCAxNCAxOSBsIDE0IDIwIGwgMTMKIDIwIGwgMTMgMTcgbCAxNiAxNyBsIDE2IDE0IGwgMTUgMTQgbCAxNSAxMyBsIDE3IDEzIGwgMTcgMTUgbCAxOSAxNSBsIDE5IDE0CiBsIDIwIDE0IGwgMjAgMTYgbCAyMiAxNiBsIDIyIDE0IGwgMjEgMTQgbCAyMSAxMiBsIDIwIDEyIGwgMjAgMTEgbCAxOCAxMSBsCiAxOCAxMiBsIDE2IDEyIGwgMTYgMTEgbCAxNyAxMSBsIDE3IDEwIGwgMjEgMTAgbCAyMSA5IGwgMjIgOSBsIDIyIDggbCAyMCA4IGwKIDIwIDcgbCAyMSA3IGwgMjEgNCBsIDIwIDQgbCAyMCAzIGwgMjEgMyBsIDIxIDAgbCAxNyAwIGwgMTcgMiBsIDE4IDIgbCAxOCAzCiBsIDE2IDMgbCAxNiAxIGwgMTUgMSBsIDE1IDAgbCB6IDggMSBtIDggMiBsIDkgMiBsIDkgMSBsIHogMTQgMSBtIDE0IDIgbCAxMwogMiBsIDEzIDMgbCAxNSAzIGwgMTUgMSBsIHogMTggMSBtIDE4IDIgbCAyMCAyIGwgMjAgMSBsIHogMTggMyBtIDE4IDQgbCAxNyA0CiBsIDE3IDcgbCAxNiA3IGwgMTYgNiBsIDE1IDYgbCAxNSA0IGwgMTQgNCBsIDE0IDYgbCAxMyA2IGwgMTMgNyBsIDEyIDcgbCAxMgogNiBsIDExIDYgbCAxMSA3IGwgMTIgNyBsIDEyIDggbCAxNCA4IGwgMTQgNiBsIDE1IDYgbCAxNSA5IGwgMTMgOSBsIDEzIDEwIGwKIDEyIDEwIGwgMTIgOSBsIDExIDkgbCAxMSA4IGwgMTAgOCBsIDEwIDkgbCA2IDkgbCA2IDEwIGwgNCAxMCBsIDQgMTEgbCAzIDExCiBsIDMgOSBsIDIgOSBsIDIgMTAgbCAxIDEwIGwgMSAxMSBsIDIgMTEgbCAyIDEzIGwgMyAxMyBsIDMgMTQgbCA0IDE0IGwgNCAxNgogbCA3IDE2IGwgNyAxNSBsIDUgMTUgbCA1IDE0IGwgOCAxNCBsIDggMTUgbCA5IDE1IGwgOSAxNCBsIDggMTQgbCA4IDEzIGwgOQogMTMgbCA5IDEyIGwgMTEgMTIgbCAxMSAxMSBsIDEzIDExIGwgMTMgMTIgbCAxMiAxMiBsIDEyIDEzIGwgMTMgMTMgbCAxMyAxNCBsCiAxNCAxNCBsIDE0IDE1IGwgMTIgMTUgbCAxMiAxNCBsIDExIDE0IGwgMTEgMTMgbCAxMCAxMyBsIDEwIDE1IGwgMTIgMTUgbCAxMgogMTYgbCAxMSAxNiBsIDExIDE3IGwgMTMgMTcgbCAxMyAxNiBsIDE1IDE2IGwgMTUgMTQgbCAxNCAxNCBsIDE0IDEzIGwgMTMgMTMKIGwgMTMgMTIgbCAxNCAxMiBsIDE0IDExIGwgMTUgMTEgbCAxNSAxMCBsIDE3IDEwIGwgMTcgOSBsIDE2IDkgbCAxNiA4IGwgMTggOAogbCAxOCA5IGwgMjAgOSBsIDIwIDggbCAxOSA4IGwgMTkgNyBsIDIwIDcgbCAyMCA1IGwgMTkgNSBsIDE5IDcgbCAxOCA3IGwgMTgKIDQgbCAxOSA0IGwgMTkgMyBsIHogOSA2IG0gOSA3IGwgMTAgNyBsIDEwIDYgbCB6IDIzIDggbSAyMyAxMSBsIDIyIDExIGwgMjIKIDEyIGwgMjQgMTIgbCAyNCAxMCBsIDI1IDEwIGwgMjUgMTEgbCAyNiAxMSBsIDI2IDEwIGwgMjggMTAgbCAyOCA4IGwgMjcgOCBsCiAyNyA5IGwgMjYgOSBsIDI2IDggbCAyNSA4IGwgMjUgOSBsIDI0IDkgbCAyNCA4IGwgeiAxMCA5IG0gMTAgMTEgbCAxMSAxMSBsCiAxMSA5IGwgeiAyNSA5IG0gMjUgMTAgbCAyNiAxMCBsIDI2IDkgbCB6IDYgMTAgbSA2IDExIGwgNyAxMSBsIDcgMTIgbCA2IDEyIGwKIDYgMTMgbCA3IDEzIGwgNyAxMiBsIDkgMTIgbCA5IDEwIGwgeiA0IDExIG0gNCAxMiBsIDUgMTIgbCA1IDExIGwgeiAxOSAxMiBtCiAxOSAxMyBsIDE4IDEzIGwgMTggMTQgbCAxOSAxNCBsIDE5IDEzIGwgMjAgMTMgbCAyMCAxMiBsIHogMjQgMTYgbSAyNCAxNyBsCiAyNSAxNyBsIDI1IDE2IGwgeiAyNyAxNiBtIDI3IDE4IGwgMjggMTggbCAyOCAxNyBsIDI5IDE3IGwgMjkgMTYgbCB6IDYgMTcgbQogNiAxOCBsIDcgMTggbCA3IDE3IGwgeiA4IDE3IG0gOCAyMSBsIDEwIDIxIGwgMTAgMjAgbCAxMiAyMCBsIDEyIDIxIGwgMTMgMjEKIGwgMTMgMjIgbCAxNCAyMiBsIDE0IDIzIGwgMTUgMjMgbCAxNSAyNSBsIDE0IDI1IGwgMTQgMjYgbCAxMSAyNiBsIDExIDI3IGwKIDEwIDI3IGwgMTAgMjggbCAxMiAyOCBsIDEyIDI3IGwgMTMgMjcgbCAxMyAyOCBsIDE1IDI4IGwgMTUgMjUgbCAyMCAyNSBsIDIwCiAyNiBsIDIxIDI2IGwgMjEgMjcgbCAyMiAyNyBsIDIyIDI2IGwgMjQgMjYgbCAyNCAyNSBsIDIyIDI1IGwgMjIgMjYgbCAyMSAyNgogbCAyMSAyNSBsIDIwIDI1IGwgMjAgMjQgbCAxOCAyNCBsIDE4IDIzIGwgMTcgMjMgbCAxNyAyMiBsIDE2IDIyIGwgMTYgMjMgbAogMTUgMjMgbCAxNSAyMSBsIDEzIDIxIGwgMTMgMjAgbCAxMiAyMCBsIDEyIDE4IGwgMTEgMTggbCAxMSAxOSBsIDkgMTkgbCA5IDE4CiBsIDEwIDE4IGwgMTAgMTcgbCB6IDIgMTkgbSAyIDIxIGwgMyAyMSBsIDMgMjAgbCA1IDIwIGwgNSAxOSBsIHogMjggMTkgbSAyOAogMjAgbCAyOSAyMCBsIDI5IDE5IGwgeiAxOCAyMSBtIDE4IDIyIGwgMTkgMjIgbCAxOSAyMyBsIDIwIDIzIGwgMjAgMjIgbCAxOQogMjIgbCAxOSAyMSBsIHogMjEgMjEgbSAyMSAyNCBsIDI0IDI0IGwgMjQgMjEgbCB6IDI1IDIxIG0gMjUgMjMgbCAyNiAyMyBsIDI2CiAyNiBsIDI4IDI2IGwgMjggMjUgbCAyNyAyNSBsIDI3IDIzIGwgMjYgMjMgbCAyNiAyMSBsIHogMjIgMjIgbSAyMiAyMyBsIDIzCiAyMyBsIDIzIDIyIGwgeiAxNiAyMyBtIDE2IDI0IGwgMTcgMjQgbCAxNyAyMyBsIHogMCAwIG0gMCA3IGwgNyA3IGwgNyAwIGwgegogMSAxIG0gMSA2IGwgNiA2IGwgNiAxIGwgeiAyIDIgbSAyIDUgbCA1IDUgbCA1IDIgbCB6IDIyIDAgbSAyMiA3IGwgMjkgNyBsIDI5CiAwIGwgeiAyMyAxIG0gMjMgNiBsIDI4IDYgbCAyOCAxIGwgeiAyNCAyIG0gMjQgNSBsIDI3IDUgbCAyNyAyIGwgeiAwIDIyIG0gMAogMjkgbCA3IDI5IGwgNyAyMiBsIHogMSAyMyBtIDEgMjggbCA2IDI4IGwgNiAyMyBsIHogMiAyNCBtIDIgMjcgbCA1IDI3IGwgNQogMjQgbCB6IDAgMCAwIHJnYiBmCiUlVFJBSUxFUgplbmQgcmVzdG9yZQolJUVPRg==', 'data:image/png;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgd2lkdGg9IjMwMCIgaGVpZ2h0PSIzMDAiIHZpZXdCb3g9IjAgMCAzMDAgMzAwIj48cmVjdCB4PSIwIiB5PSIwIiB3aWR0aD0iMzAwIiBoZWlnaHQ9IjMwMCIgZmlsbD0iI2ZmZmZmZiIvPjxnIHRyYW5zZm9ybT0ic2NhbGUoMTAuMzQ1KSI+PGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMCwwKSI+PHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBkPSJNMTAgMEwxMCAyTDExIDJMMTEgMFpNMTIgMEwxMiAxTDEzIDFMMTMgMkwxMiAyTDEyIDRMMTMgNEwxMyA1TDExIDVMMTEgNkwxMCA2TDEwIDRMMTEgNEwxMSAzTDggM0w4IDRMOSA0TDkgNUw4IDVMOCA3TDkgN0w5IDhMNiA4TDYgOUw1IDlMNSA4TDAgOEwwIDlMMSA5TDEgMTBMMCAxMEwwIDE1TDEgMTVMMSAxNkwyIDE2TDIgMTVMMyAxNUwzIDE3TDAgMTdMMCAyMUwxIDIxTDEgMThMMyAxOEwzIDE3TDQgMTdMNCAxOEw2IDE4TDYgMTlMNyAxOUw3IDIwTDYgMjBMNiAyMUw4IDIxTDggMjNMOSAyM0w5IDIyTDEwIDIyTDEwIDIxTDExIDIxTDExIDIyTDEzIDIyTDEzIDIzTDE0IDIzTDE0IDI0TDEzIDI0TDEzIDI1TDExIDI1TDExIDI0TDEyIDI0TDEyIDIzTDExIDIzTDExIDI0TDggMjRMOCAyOUw5IDI5TDkgMjhMMTAgMjhMMTAgMjlMMTUgMjlMMTUgMjhMMTYgMjhMMTYgMjdMMTcgMjdMMTcgMjZMMTkgMjZMMTkgMjdMMTggMjdMMTggMjhMMTkgMjhMMTkgMjdMMjAgMjdMMjAgMjhMMjIgMjhMMjIgMjlMMjMgMjlMMjMgMjhMMjIgMjhMMjIgMjdMMjQgMjdMMjQgMjlMMjYgMjlMMjYgMjdMMjcgMjdMMjcgMjhMMjggMjhMMjggMjZMMjkgMjZMMjkgMjVMMjggMjVMMjggMjNMMjcgMjNMMjcgMjBMMjUgMjBMMjUgMThMMjYgMThMMjYgMTVMMjcgMTVMMjcgMTRMMjggMTRMMjggMTNMMjcgMTNMMjcgMTJMMjkgMTJMMjkgMTFMMjcgMTFMMjcgMTJMMjUgMTJMMjUgMTNMMjQgMTNMMjQgMTRMMjUgMTRMMjUgMTNMMjYgMTNMMjYgMTVMMjQgMTVMMjQgMTZMMjMgMTZMMjMgMTdMMjQgMTdMMjQgMThMMjMgMThMMjMgMTlMMjQgMTlMMjQgMjBMMjAgMjBMMjAgMjFMMTkgMjFMMTkgMjBMMTcgMjBMMTcgMjFMMTUgMjFMMTUgMTlMMTkgMTlMMTkgMThMMjEgMThMMjEgMTlMMjIgMTlMMjIgMTdMMTkgMTdMMTkgMThMMTUgMThMMTUgMTlMMTQgMTlMMTQgMjBMMTMgMjBMMTMgMTdMMTYgMTdMMTYgMTRMMTUgMTRMMTUgMTNMMTcgMTNMMTcgMTVMMTkgMTVMMTkgMTRMMjAgMTRMMjAgMTZMMjIgMTZMMjIgMTRMMjEgMTRMMjEgMTJMMjAgMTJMMjAgMTFMMTggMTFMMTggMTJMMTYgMTJMMTYgMTFMMTcgMTFMMTcgMTBMMjEgMTBMMjEgOUwyMiA5TDIyIDhMMjAgOEwyMCA3TDIxIDdMMjEgNEwyMCA0TDIwIDNMMjEgM0wyMSAwTDE3IDBMMTcgMkwxOCAyTDE4IDNMMTYgM0wxNiAxTDE1IDFMMTUgMFpNOCAxTDggMkw5IDJMOSAxWk0xNCAxTDE0IDJMMTMgMkwxMyAzTDE1IDNMMTUgMVpNMTggMUwxOCAyTDIwIDJMMjAgMVpNMTggM0wxOCA0TDE3IDRMMTcgN0wxNiA3TDE2IDZMMTUgNkwxNSA0TDE0IDRMMTQgNkwxMyA2TDEzIDdMMTIgN0wxMiA2TDExIDZMMTEgN0wxMiA3TDEyIDhMMTQgOEwxNCA2TDE1IDZMMTUgOUwxMyA5TDEzIDEwTDEyIDEwTDEyIDlMMTEgOUwxMSA4TDEwIDhMMTAgOUw2IDlMNiAxMEw0IDEwTDQgMTFMMyAxMUwzIDlMMiA5TDIgMTBMMSAxMEwxIDExTDIgMTFMMiAxM0wzIDEzTDMgMTRMNCAxNEw0IDE2TDcgMTZMNyAxNUw1IDE1TDUgMTRMOCAxNEw4IDE1TDkgMTVMOSAxNEw4IDE0TDggMTNMOSAxM0w5IDEyTDExIDEyTDExIDExTDEzIDExTDEzIDEyTDEyIDEyTDEyIDEzTDEzIDEzTDEzIDE0TDE0IDE0TDE0IDE1TDEyIDE1TDEyIDE0TDExIDE0TDExIDEzTDEwIDEzTDEwIDE1TDEyIDE1TDEyIDE2TDExIDE2TDExIDE3TDEzIDE3TDEzIDE2TDE1IDE2TDE1IDE0TDE0IDE0TDE0IDEzTDEzIDEzTDEzIDEyTDE0IDEyTDE0IDExTDE1IDExTDE1IDEwTDE3IDEwTDE3IDlMMTYgOUwxNiA4TDE4IDhMMTggOUwyMCA5TDIwIDhMMTkgOEwxOSA3TDIwIDdMMjAgNUwxOSA1TDE5IDdMMTggN0wxOCA0TDE5IDRMMTkgM1pNOSA2TDkgN0wxMCA3TDEwIDZaTTIzIDhMMjMgMTFMMjIgMTFMMjIgMTJMMjQgMTJMMjQgMTBMMjUgMTBMMjUgMTFMMjYgMTFMMjYgMTBMMjggMTBMMjggOEwyNyA4TDI3IDlMMjYgOUwyNiA4TDI1IDhMMjUgOUwyNCA5TDI0IDhaTTEwIDlMMTAgMTFMMTEgMTFMMTEgOVpNMjUgOUwyNSAxMEwyNiAxMEwyNiA5Wk02IDEwTDYgMTFMNyAxMUw3IDEyTDYgMTJMNiAxM0w3IDEzTDcgMTJMOSAxMkw5IDEwWk00IDExTDQgMTJMNSAxMkw1IDExWk0xOSAxMkwxOSAxM0wxOCAxM0wxOCAxNEwxOSAxNEwxOSAxM0wyMCAxM0wyMCAxMlpNMjQgMTZMMjQgMTdMMjUgMTdMMjUgMTZaTTI3IDE2TDI3IDE4TDI4IDE4TDI4IDE3TDI5IDE3TDI5IDE2Wk02IDE3TDYgMThMNyAxOEw3IDE3Wk04IDE3TDggMjFMMTAgMjFMMTAgMjBMMTIgMjBMMTIgMjFMMTMgMjFMMTMgMjJMMTQgMjJMMTQgMjNMMTUgMjNMMTUgMjVMMTQgMjVMMTQgMjZMMTEgMjZMMTEgMjdMMTAgMjdMMTAgMjhMMTIgMjhMMTIgMjdMMTMgMjdMMTMgMjhMMTUgMjhMMTUgMjVMMjAgMjVMMjAgMjZMMjEgMjZMMjEgMjdMMjIgMjdMMjIgMjZMMjQgMjZMMjQgMjVMMjIgMjVMMjIgMjZMMjEgMjZMMjEgMjVMMjAgMjVMMjAgMjRMMTggMjRMMTggMjNMMTcgMjNMMTcgMjJMMTYgMjJMMTYgMjNMMTUgMjNMMTUgMjFMMTMgMjFMMTMgMjBMMTIgMjBMMTIgMThMMTEgMThMMTEgMTlMOSAxOUw5IDE4TDEwIDE4TDEwIDE3Wk0yIDE5TDIgMjFMMyAyMUwzIDIwTDUgMjBMNSAxOVpNMjggMTlMMjggMjBMMjkgMjBMMjkgMTlaTTE4IDIxTDE4IDIyTDE5IDIyTDE5IDIzTDIwIDIzTDIwIDIyTDE5IDIyTDE5IDIxWk0yMSAyMUwyMSAyNEwyNCAyNEwyNCAyMVpNMjUgMjFMMjUgMjNMMjYgMjNMMjYgMjZMMjggMjZMMjggMjVMMjcgMjVMMjcgMjNMMjYgMjNMMjYgMjFaTTIyIDIyTDIyIDIzTDIzIDIzTDIzIDIyWk0xNiAyM0wxNiAyNEwxNyAyNEwxNyAyM1pNMCAwTDAgN0w3IDdMNyAwWk0xIDFMMSA2TDYgNkw2IDFaTTIgMkwyIDVMNSA1TDUgMlpNMjIgMEwyMiA3TDI5IDdMMjkgMFpNMjMgMUwyMyA2TDI4IDZMMjggMVpNMjQgMkwyNCA1TDI3IDVMMjcgMlpNMCAyMkwwIDI5TDcgMjlMNyAyMlpNMSAyM0wxIDI4TDYgMjhMNiAyM1pNMiAyNEwyIDI3TDUgMjdMNSAyNFoiIGZpbGw9IiMwMDAwMDAiLz48L2c+PC9nPjwvc3ZnPgo=', '2022-12-08 07:43:41', '2022-12-08 07:43:41');
INSERT INTO `wifis` (`id`, `encryption`, `title`, `password`, `qrcode_png`, `qrcode_eps`, `qrcode_svg`, `created_at`, `updated_at`) VALUES
(4, 'WPA2/WPA3-Personal', 'LINK 1', 'karachi786', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAAEsCAAAAABcFtGpAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAAmJLR0QA/4ePzL8AAAtXSURBVHja7Z1dbFxHFcd3s157sZM4i10kW9AUp4kj09BgJyJq06Bt6kpUJHZVERKpwilBiI+kCBAIW+IBFdYqIYK4oRK0KQ0vDqJSvc1T5ahRpW0VIcegOJHauLjYIAeZJLZDHK/trJcXz5yR9mju3HvnXq+t/3k6PmfOzNzfro9m9s5HJGJLhgo6yVDBDmlMOVQ5W1zPvHmHpkTMkK1HXBOBABZgARZgARZgQQALsJZZyuxXOfcH0o/5qukVqe1tKjVYo+7DUyPFttzzpH83pov+06LQrrVKY/tJoX2fKurnYHH93ajvb8MF98+4kf9m3R/yJ/VpqV3z0ouaqiJT3inG/SOOIWchwQMWYAEWYEEAy+II/ro+KJG00/hE3lf47ds+gidzen+dKazr9fqKOtM6b0Wa+eLWkfE+qR2k8TS5q7VNx6jgh/V+SB/v1vvH60KZGyY6GePOnfqgPY8apg2q/DByFhI8YAEWBLAAC7AAa1VPd3zJ9Gf1/rY/MsZ9+pgDqxVWZFLvLniIYd13xG/wl3ZIW/Ml/BsiZwEWYEEAC7AAC7Awgg9R/swZX5Pas+UrAFY1LYk5OCjVgfVCq5C2V+XbnVFlydGvhPaTPqb21O+F9ssjjHuQjM+sBFiRzabWBqmNOoabupGzkOABC7AggAVYgLWKR/A3fblXGix2HYwijVrvdK3WPVNr/ymov92mIY0Oz5gwhZVMr7CPfNf+JSVvDKsDOQsJHrAAC7AggAVYgFWSI/hUkA0ZLxq6vCnIbmyyBWvEft/uiW/uuTYaO8v1WXtph0X2kSVl7hMUPSvebby/21J/Rqx9s4KQqKHNhRE5CwkesAALAliABVgrbgQfgPyFM5613szds6HAilo78XSzXEp0hQbrg/oYavyBtUtKTh3Bi7cGd/5Jn+5WoQ3PCW1O2TRwRqoPSfewLViFID+KFgdY8/EiEwvLQbDDAgkesAALAliABVilOIKf9hBULsdCt/0N0+4allv8H2dlj/jhnqcyznirIzpjTo54Iwk52vb0wy2dcrTJ+Efto1I7ZdyOHJS+x/4GL7f9fvA7feW9B5eUgvKPdKNGzAS2SFvyltC6u6Sx51hIc0OSwy1Lyswp63VvfUlo+VNBPgNyFmABFmABFmBBAAuwAprueAl6+233Md+y3/c9vqKf5Iwt+ph7UnrImJZGp7Nu7xmKegudNCoLwrJcEF0+J01ubqErrmeRLXhaFmTdPTK8jL9kImb8b+xhchlz36L0Lvptx09B5CwkeMACLMACLAhguRnBv+Uv/pzevd9P3f2zIUEwZVBGi/kjA1Jjx+0DjO1Am8MAXzve+w0NmR9k3C/3McbUcVME6/Vuehxag5PsZwrWsnPD+/S3jq23fr7Qw16CWiw1/oB8u2NcOXIWEjxgARZgARYEsNyM4NU/ZoQSZ0+tlO6yCl9tzjC2yqjOy0qOu5YtWmnYoIPMLzjAojuA0/IIoDZagEUrc2jJUeoxaTyjbXwdHZRzhiuZFXeF5dZy4RS9QWrf5urh1sFf2abtWgVVTr+Rn+gy5pouFMtpcncy7l5+ulNc8A5bMCvc/Hywn2mRPaeomSnIbyK5UdBJGjkLCR6wAAuwAAsCWIC1TNMd9/KUw23MraYV/cxhlGx8GOjjUsusM4sY+aZp3fwimDRz4mmB3i7E5PdR2WExxBz1ustp269Q3m319Zllviw0ZVI7JfeWcPO8iNyiouywUGS81s83Kxp3KBD38JRxS/8gop68vVbiyFlI8IAFWIAFWBDACmIEf15qT7iuMn/BuOi7th7jvOuIwVt6/9WrQqtv0o/g1YG71vs+uR8WbxqmN3Als1LbbezOMgV3G1c5Va3reRfdSXC6UVuPtT3SjxiXTMg90rxfvt1RbC3FpxypM5ft8h5pn9/LR5GzkOABC7AAC7AggBXaCJ6Exj0JxmZPclpjwjyGcVdEQ4JFJ2FeE+vgbzpcjdYutTHmN/g15J6+wIzB27m2+7lZ11ompo/cNJGQpxwp8kmKqdI/xDovXK+J5Tg3HAoelQt3msk4wKzrYS/NaJduBZtccsTvkc7IvdSsu7dgKErMOONGzkKCByzAAizAggAWYC3TdMeD/PtpxviLEnvwX7/nARYt0n/leammfyC0+snimBpuYX/fIW7KEdEbZ11/1+PspgIP22NucR1Kjkd0s9Eyfoqqvw8hYevjjblfDJQI9PuWQM5CggcswAIswIIA1jKM4CcmguvGxHA4j2s8bP/gph7WXjri51NcvK3riTuepfG4UC632qk7xh1TFGkQSkF5BirJtf1mlx5WU1NI3+YnSqLuL3CnHCFnIcEDFmABFmBBAMveCH4h/DYXwq4xbqkbZeUOBWilywVTN7s4htzsKUcpL48rRLntlxVacqQ0U2uKKGVOkzvlSJFF5pSjo8xqnYxDM9mCDxlwqJxbctTJFUxypxz1YMkREjxgARZgARYEsAAr6OmOz/jntN7v+LpY4af/sf20heeswRqt0ZX8+tcY4+f1R7n+lTvlqEPe+rxPv/X8wz7Tp8jsZVBztySz3T3NPNmPaP1VOf/NqtJitbburcr+P0iV7ejycuQsJHjAAizAAiwIYAUwgs//XR9k/yIsRS6VGKGFy3pYEw4vAOhahpPy9t27h5iCL3DbcPV7jnNK2xnTB3qIsR2glUTyFKMo1Xix27Du6ztszQ2/IrWznPspf7U/6WeHwGOcka4QvIichQQPWIAFWBDAAqxlGMGbS95aybyfemIeOuRQZ8wLrGbGRrtst4wY9uetNn3lpjsSFtglUhkx2Mx7+fCPHGGM43Vi1N9sDivQqdpFse7qfGvJ/u995hJyFhI8YAEWYAEWBLAAq7SnO7wcMy34Q737x6b19PeHAis6RTpdYzDNGTm5zd3asIErOfCg1p1l3jkc7tP3XXb9ox1aNysvKtcyPMN0TU531G8WC6PalPV6xjbNFxV1zujdbv4rHBYaGVdpWhA5CwkesAALsAALAlhuxipXbNW0ucJXuOxHvNE05GPDcnN02kz0c75gbbMFa4hb90ObgeuFkujlopVrGd7U1qOsbNqmd0sZpoIN/yi5uSHJV4vfKMWYCyUcr9yrFacX8VvmK+XbnUPIWUjwgAVYEMACLMAqlRF8+E0qv0RHHfwORmN3xEN0obiTKqwGD+0wS46i+npm6D60yHy8OKZvDdOhVq6T1HabtkWlcnbDAi05SiaLZxzK1ciqjLo/X0jp+pBhyB2lxflit7oFfVYYlQulU7Jkh8PnOKXtBk45QoIHLMACLAhgARZglfh0Z/K4PqhROx6cfcF9NwbfsP9oL4YDK+ewf7hT6513iO44IVV5VustfcyuG8x08rcnmJLKUa3d4cAKWGpcR8S4kA2MLR9ox5GzAAuwAAuwAAsCWCU+zjK+b+pfpcFoeBlhndGfbdq+T2jntrivvPl7QvsbnVPKXZLwkX6A/0WKObKs3ywH+YaE5StaeSdTyaxy6tJX87jUxpCzkOABC7AAC7AggAVYq3C6k/T18bHRk1IbjDIlD5mujp+MaltcBlj7X/cTvf2dYht/C93HYjfvFX+7SH5+DP+GyFmABViABVgQwAKsVTeCJzl5V6pPb3Ud/ep/9f6Xw4FVN64P8nIBwIDcskB3QmfoYrU9+uh+uRGc9hFn6cVHZqfQaGOE8it775eKa3yJe2GRvCq017uMv1l1AXyN6oKMFu68z7brkLOQ4AELsAALsCCAFcigdCzIlsZ8uW21fb8tWBvt97JHag53te3WR9cz3taWYgSxHq4eel9hfMrRdqqoKYBPT+6RnlKM94Qx46XK2YIVGaIaG0z3SLOCnIUED1iABViABQEswApG/g9FFmmAap6MAAAAAABJRU5ErkJggg==', 'data:image/png;base64,JSFQUy1BZG9iZS0zLjAgRVBTRi0zLjAKJSVDcmVhdG9yOiBCYWNvblFyQ29kZQolJUJvdW5kaW5nQm94OiAwIDAgMzAwIDMwMCAKJSVCZWdpblByb2xvZwpzYXZlCjUwIGRpY3QgYmVnaW4KL3EgeyBnc2F2ZSB9IGJpbmQgZGVmCi9RIHsgZ3Jlc3RvcmUgfSBiaW5kIGRlZgovcyB7IHNjYWxlIH0gYmluZCBkZWYKL3QgeyB0cmFuc2xhdGUgfSBiaW5kIGRlZgovciB7IHJvdGF0ZSB9IGJpbmQgZGVmCi9uIHsgbmV3cGF0aCB9IGJpbmQgZGVmCi9tIHsgbW92ZXRvIH0gYmluZCBkZWYKL2wgeyBsaW5ldG8gfSBiaW5kIGRlZgovYyB7IGN1cnZldG8gfSBiaW5kIGRlZgoveiB7IGNsb3NlcGF0aCB9IGJpbmQgZGVmCi9mIHsgZW9maWxsIH0gYmluZCBkZWYKL3JnYiB7IHNldHJnYmNvbG9yIH0gYmluZCBkZWYKL2NteWsgeyBzZXRjbXlrY29sb3IgfSBiaW5kIGRlZgovZ3JheSB7IHNldGdyYXkgfSBiaW5kIGRlZgolJUVuZFByb2xvZwoxIC0xIHMKMCAtMzAwIHQKMCAwIG0gMzAwIDAgbCAzMDAgMzAwIGwgMCAzMDAgbCB6IDEgMSAxIHJnYiBmCjEwLjM0NSAxMC4zNDUgcwowIDAgdApuIDEwIDAgbSAxMCAyIGwgMTEgMiBsIDExIDAgbCB6IDEyIDAgbSAxMiAxIGwgMTMgMSBsIDEzIDIgbCAxMiAyIGwgMTIgNCBsCiAxMyA0IGwgMTMgNSBsIDExIDUgbCAxMSA2IGwgMTAgNiBsIDEwIDQgbCAxMSA0IGwgMTEgMyBsIDggMyBsIDggNCBsIDkgNCBsIDkKIDUgbCA4IDUgbCA4IDcgbCA5IDcgbCA5IDggbCA2IDggbCA2IDkgbCA1IDkgbCA1IDggbCAwIDggbCAwIDkgbCAxIDkgbCAxIDEwCiBsIDAgMTAgbCAwIDE1IGwgMSAxNSBsIDEgMTYgbCAyIDE2IGwgMiAxNSBsIDMgMTUgbCAzIDE3IGwgMCAxNyBsIDAgMjEgbCAxCiAyMSBsIDEgMTggbCAzIDE4IGwgMyAxNyBsIDQgMTcgbCA0IDE4IGwgNiAxOCBsIDYgMTkgbCA3IDE5IGwgNyAyMCBsIDYgMjAgbAogNiAyMSBsIDggMjEgbCA4IDIzIGwgOSAyMyBsIDkgMjIgbCAxMCAyMiBsIDEwIDIxIGwgMTEgMjEgbCAxMSAyMiBsIDEzIDIyIGwKIDEzIDIzIGwgMTQgMjMgbCAxNCAyNCBsIDEzIDI0IGwgMTMgMjUgbCAxMSAyNSBsIDExIDI0IGwgMTIgMjQgbCAxMiAyMyBsIDExCiAyMyBsIDExIDI0IGwgOCAyNCBsIDggMjkgbCA5IDI5IGwgOSAyOCBsIDEwIDI4IGwgMTAgMjkgbCAxNSAyOSBsIDE1IDI4IGwgMTYKIDI4IGwgMTYgMjcgbCAxNyAyNyBsIDE3IDI2IGwgMTkgMjYgbCAxOSAyNyBsIDE4IDI3IGwgMTggMjggbCAxOSAyOCBsIDE5IDI3CiBsIDIwIDI3IGwgMjAgMjggbCAyMiAyOCBsIDIyIDI5IGwgMjMgMjkgbCAyMyAyOCBsIDIyIDI4IGwgMjIgMjcgbCAyNCAyNyBsCiAyNCAyOSBsIDI2IDI5IGwgMjYgMjcgbCAyNyAyNyBsIDI3IDI4IGwgMjggMjggbCAyOCAyNiBsIDI5IDI2IGwgMjkgMjUgbCAyOAogMjUgbCAyOCAyMyBsIDI3IDIzIGwgMjcgMjAgbCAyNSAyMCBsIDI1IDE4IGwgMjYgMTggbCAyNiAxNSBsIDI3IDE1IGwgMjcgMTQKIGwgMjggMTQgbCAyOCAxMyBsIDI3IDEzIGwgMjcgMTIgbCAyOSAxMiBsIDI5IDExIGwgMjcgMTEgbCAyNyAxMiBsIDI1IDEyIGwKIDI1IDEzIGwgMjQgMTMgbCAyNCAxNCBsIDI1IDE0IGwgMjUgMTMgbCAyNiAxMyBsIDI2IDE1IGwgMjQgMTUgbCAyNCAxNiBsIDIzCiAxNiBsIDIzIDE3IGwgMjQgMTcgbCAyNCAxOCBsIDIzIDE4IGwgMjMgMTkgbCAyNCAxOSBsIDI0IDIwIGwgMjAgMjAgbCAyMCAyMQogbCAxOSAyMSBsIDE5IDIwIGwgMTcgMjAgbCAxNyAyMSBsIDE1IDIxIGwgMTUgMTkgbCAxOSAxOSBsIDE5IDE4IGwgMjEgMTggbAogMjEgMTkgbCAyMiAxOSBsIDIyIDE3IGwgMTkgMTcgbCAxOSAxOCBsIDE1IDE4IGwgMTUgMTkgbCAxNCAxOSBsIDE0IDIwIGwgMTMKIDIwIGwgMTMgMTcgbCAxNiAxNyBsIDE2IDE0IGwgMTUgMTQgbCAxNSAxMyBsIDE3IDEzIGwgMTcgMTUgbCAxOSAxNSBsIDE5IDE0CiBsIDIwIDE0IGwgMjAgMTYgbCAyMiAxNiBsIDIyIDE0IGwgMjEgMTQgbCAyMSAxMiBsIDIwIDEyIGwgMjAgMTEgbCAxOCAxMSBsCiAxOCAxMiBsIDE2IDEyIGwgMTYgMTEgbCAxNyAxMSBsIDE3IDEwIGwgMjEgMTAgbCAyMSA5IGwgMjIgOSBsIDIyIDggbCAyMCA4IGwKIDIwIDcgbCAyMSA3IGwgMjEgNCBsIDIwIDQgbCAyMCAzIGwgMjEgMyBsIDIxIDAgbCAxNyAwIGwgMTcgMiBsIDE4IDIgbCAxOCAzCiBsIDE2IDMgbCAxNiAxIGwgMTUgMSBsIDE1IDAgbCB6IDggMSBtIDggMiBsIDkgMiBsIDkgMSBsIHogMTQgMSBtIDE0IDIgbCAxMwogMiBsIDEzIDMgbCAxNSAzIGwgMTUgMSBsIHogMTggMSBtIDE4IDIgbCAyMCAyIGwgMjAgMSBsIHogMTggMyBtIDE4IDQgbCAxNyA0CiBsIDE3IDcgbCAxNiA3IGwgMTYgNiBsIDE1IDYgbCAxNSA0IGwgMTQgNCBsIDE0IDYgbCAxMyA2IGwgMTMgNyBsIDEyIDcgbCAxMgogNiBsIDExIDYgbCAxMSA3IGwgMTIgNyBsIDEyIDggbCAxNCA4IGwgMTQgNiBsIDE1IDYgbCAxNSA5IGwgMTMgOSBsIDEzIDEwIGwKIDEyIDEwIGwgMTIgOSBsIDExIDkgbCAxMSA4IGwgMTAgOCBsIDEwIDkgbCA2IDkgbCA2IDEwIGwgNCAxMCBsIDQgMTEgbCAzIDExCiBsIDMgOSBsIDIgOSBsIDIgMTAgbCAxIDEwIGwgMSAxMSBsIDIgMTEgbCAyIDEzIGwgMyAxMyBsIDMgMTQgbCA0IDE0IGwgNCAxNgogbCA3IDE2IGwgNyAxNSBsIDUgMTUgbCA1IDE0IGwgOCAxNCBsIDggMTUgbCA5IDE1IGwgOSAxNCBsIDggMTQgbCA4IDEzIGwgOQogMTMgbCA5IDEyIGwgMTEgMTIgbCAxMSAxMSBsIDEzIDExIGwgMTMgMTIgbCAxMiAxMiBsIDEyIDEzIGwgMTMgMTMgbCAxMyAxNCBsCiAxNCAxNCBsIDE0IDE1IGwgMTIgMTUgbCAxMiAxNCBsIDExIDE0IGwgMTEgMTMgbCAxMCAxMyBsIDEwIDE1IGwgMTIgMTUgbCAxMgogMTYgbCAxMSAxNiBsIDExIDE3IGwgMTMgMTcgbCAxMyAxNiBsIDE1IDE2IGwgMTUgMTQgbCAxNCAxNCBsIDE0IDEzIGwgMTMgMTMKIGwgMTMgMTIgbCAxNCAxMiBsIDE0IDExIGwgMTUgMTEgbCAxNSAxMCBsIDE3IDEwIGwgMTcgOSBsIDE2IDkgbCAxNiA4IGwgMTggOAogbCAxOCA5IGwgMjAgOSBsIDIwIDggbCAxOSA4IGwgMTkgNyBsIDIwIDcgbCAyMCA1IGwgMTkgNSBsIDE5IDcgbCAxOCA3IGwgMTgKIDQgbCAxOSA0IGwgMTkgMyBsIHogOSA2IG0gOSA3IGwgMTAgNyBsIDEwIDYgbCB6IDIzIDggbSAyMyAxMSBsIDIyIDExIGwgMjIKIDEyIGwgMjQgMTIgbCAyNCAxMCBsIDI1IDEwIGwgMjUgMTEgbCAyNiAxMSBsIDI2IDEwIGwgMjggMTAgbCAyOCA4IGwgMjcgOCBsCiAyNyA5IGwgMjYgOSBsIDI2IDggbCAyNSA4IGwgMjUgOSBsIDI0IDkgbCAyNCA4IGwgeiAxMCA5IG0gMTAgMTEgbCAxMSAxMSBsCiAxMSA5IGwgeiAyNSA5IG0gMjUgMTAgbCAyNiAxMCBsIDI2IDkgbCB6IDYgMTAgbSA2IDExIGwgNyAxMSBsIDcgMTIgbCA2IDEyIGwKIDYgMTMgbCA3IDEzIGwgNyAxMiBsIDkgMTIgbCA5IDEwIGwgeiA0IDExIG0gNCAxMiBsIDUgMTIgbCA1IDExIGwgeiAxOSAxMiBtCiAxOSAxMyBsIDE4IDEzIGwgMTggMTQgbCAxOSAxNCBsIDE5IDEzIGwgMjAgMTMgbCAyMCAxMiBsIHogMjQgMTYgbSAyNCAxNyBsCiAyNSAxNyBsIDI1IDE2IGwgeiAyNyAxNiBtIDI3IDE4IGwgMjggMTggbCAyOCAxNyBsIDI5IDE3IGwgMjkgMTYgbCB6IDYgMTcgbQogNiAxOCBsIDcgMTggbCA3IDE3IGwgeiA4IDE3IG0gOCAyMSBsIDEwIDIxIGwgMTAgMjAgbCAxMiAyMCBsIDEyIDIxIGwgMTMgMjEKIGwgMTMgMjIgbCAxNCAyMiBsIDE0IDIzIGwgMTUgMjMgbCAxNSAyNSBsIDE0IDI1IGwgMTQgMjYgbCAxMSAyNiBsIDExIDI3IGwKIDEwIDI3IGwgMTAgMjggbCAxMiAyOCBsIDEyIDI3IGwgMTMgMjcgbCAxMyAyOCBsIDE1IDI4IGwgMTUgMjUgbCAyMCAyNSBsIDIwCiAyNiBsIDIxIDI2IGwgMjEgMjcgbCAyMiAyNyBsIDIyIDI2IGwgMjQgMjYgbCAyNCAyNSBsIDIyIDI1IGwgMjIgMjYgbCAyMSAyNgogbCAyMSAyNSBsIDIwIDI1IGwgMjAgMjQgbCAxOCAyNCBsIDE4IDIzIGwgMTcgMjMgbCAxNyAyMiBsIDE2IDIyIGwgMTYgMjMgbAogMTUgMjMgbCAxNSAyMSBsIDEzIDIxIGwgMTMgMjAgbCAxMiAyMCBsIDEyIDE4IGwgMTEgMTggbCAxMSAxOSBsIDkgMTkgbCA5IDE4CiBsIDEwIDE4IGwgMTAgMTcgbCB6IDIgMTkgbSAyIDIxIGwgMyAyMSBsIDMgMjAgbCA1IDIwIGwgNSAxOSBsIHogMjggMTkgbSAyOAogMjAgbCAyOSAyMCBsIDI5IDE5IGwgeiAxOCAyMSBtIDE4IDIyIGwgMTkgMjIgbCAxOSAyMyBsIDIwIDIzIGwgMjAgMjIgbCAxOQogMjIgbCAxOSAyMSBsIHogMjEgMjEgbSAyMSAyNCBsIDI0IDI0IGwgMjQgMjEgbCB6IDI1IDIxIG0gMjUgMjMgbCAyNiAyMyBsIDI2CiAyNiBsIDI4IDI2IGwgMjggMjUgbCAyNyAyNSBsIDI3IDIzIGwgMjYgMjMgbCAyNiAyMSBsIHogMjIgMjIgbSAyMiAyMyBsIDIzCiAyMyBsIDIzIDIyIGwgeiAxNiAyMyBtIDE2IDI0IGwgMTcgMjQgbCAxNyAyMyBsIHogMCAwIG0gMCA3IGwgNyA3IGwgNyAwIGwgegogMSAxIG0gMSA2IGwgNiA2IGwgNiAxIGwgeiAyIDIgbSAyIDUgbCA1IDUgbCA1IDIgbCB6IDIyIDAgbSAyMiA3IGwgMjkgNyBsIDI5CiAwIGwgeiAyMyAxIG0gMjMgNiBsIDI4IDYgbCAyOCAxIGwgeiAyNCAyIG0gMjQgNSBsIDI3IDUgbCAyNyAyIGwgeiAwIDIyIG0gMAogMjkgbCA3IDI5IGwgNyAyMiBsIHogMSAyMyBtIDEgMjggbCA2IDI4IGwgNiAyMyBsIHogMiAyNCBtIDIgMjcgbCA1IDI3IGwgNQogMjQgbCB6IDAgMCAwIHJnYiBmCiUlVFJBSUxFUgplbmQgcmVzdG9yZQolJUVPRg==', 'data:image/png;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgd2lkdGg9IjMwMCIgaGVpZ2h0PSIzMDAiIHZpZXdCb3g9IjAgMCAzMDAgMzAwIj48cmVjdCB4PSIwIiB5PSIwIiB3aWR0aD0iMzAwIiBoZWlnaHQ9IjMwMCIgZmlsbD0iI2ZmZmZmZiIvPjxnIHRyYW5zZm9ybT0ic2NhbGUoMTAuMzQ1KSI+PGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMCwwKSI+PHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBkPSJNMTAgMEwxMCAyTDExIDJMMTEgMFpNMTIgMEwxMiAxTDEzIDFMMTMgMkwxMiAyTDEyIDRMMTMgNEwxMyA1TDExIDVMMTEgNkwxMCA2TDEwIDRMMTEgNEwxMSAzTDggM0w4IDRMOSA0TDkgNUw4IDVMOCA3TDkgN0w5IDhMNiA4TDYgOUw1IDlMNSA4TDAgOEwwIDlMMSA5TDEgMTBMMCAxMEwwIDE1TDEgMTVMMSAxNkwyIDE2TDIgMTVMMyAxNUwzIDE3TDAgMTdMMCAyMUwxIDIxTDEgMThMMyAxOEwzIDE3TDQgMTdMNCAxOEw2IDE4TDYgMTlMNyAxOUw3IDIwTDYgMjBMNiAyMUw4IDIxTDggMjNMOSAyM0w5IDIyTDEwIDIyTDEwIDIxTDExIDIxTDExIDIyTDEzIDIyTDEzIDIzTDE0IDIzTDE0IDI0TDEzIDI0TDEzIDI1TDExIDI1TDExIDI0TDEyIDI0TDEyIDIzTDExIDIzTDExIDI0TDggMjRMOCAyOUw5IDI5TDkgMjhMMTAgMjhMMTAgMjlMMTUgMjlMMTUgMjhMMTYgMjhMMTYgMjdMMTcgMjdMMTcgMjZMMTkgMjZMMTkgMjdMMTggMjdMMTggMjhMMTkgMjhMMTkgMjdMMjAgMjdMMjAgMjhMMjIgMjhMMjIgMjlMMjMgMjlMMjMgMjhMMjIgMjhMMjIgMjdMMjQgMjdMMjQgMjlMMjYgMjlMMjYgMjdMMjcgMjdMMjcgMjhMMjggMjhMMjggMjZMMjkgMjZMMjkgMjVMMjggMjVMMjggMjNMMjcgMjNMMjcgMjBMMjUgMjBMMjUgMThMMjYgMThMMjYgMTVMMjcgMTVMMjcgMTRMMjggMTRMMjggMTNMMjcgMTNMMjcgMTJMMjkgMTJMMjkgMTFMMjcgMTFMMjcgMTJMMjUgMTJMMjUgMTNMMjQgMTNMMjQgMTRMMjUgMTRMMjUgMTNMMjYgMTNMMjYgMTVMMjQgMTVMMjQgMTZMMjMgMTZMMjMgMTdMMjQgMTdMMjQgMThMMjMgMThMMjMgMTlMMjQgMTlMMjQgMjBMMjAgMjBMMjAgMjFMMTkgMjFMMTkgMjBMMTcgMjBMMTcgMjFMMTUgMjFMMTUgMTlMMTkgMTlMMTkgMThMMjEgMThMMjEgMTlMMjIgMTlMMjIgMTdMMTkgMTdMMTkgMThMMTUgMThMMTUgMTlMMTQgMTlMMTQgMjBMMTMgMjBMMTMgMTdMMTYgMTdMMTYgMTRMMTUgMTRMMTUgMTNMMTcgMTNMMTcgMTVMMTkgMTVMMTkgMTRMMjAgMTRMMjAgMTZMMjIgMTZMMjIgMTRMMjEgMTRMMjEgMTJMMjAgMTJMMjAgMTFMMTggMTFMMTggMTJMMTYgMTJMMTYgMTFMMTcgMTFMMTcgMTBMMjEgMTBMMjEgOUwyMiA5TDIyIDhMMjAgOEwyMCA3TDIxIDdMMjEgNEwyMCA0TDIwIDNMMjEgM0wyMSAwTDE3IDBMMTcgMkwxOCAyTDE4IDNMMTYgM0wxNiAxTDE1IDFMMTUgMFpNOCAxTDggMkw5IDJMOSAxWk0xNCAxTDE0IDJMMTMgMkwxMyAzTDE1IDNMMTUgMVpNMTggMUwxOCAyTDIwIDJMMjAgMVpNMTggM0wxOCA0TDE3IDRMMTcgN0wxNiA3TDE2IDZMMTUgNkwxNSA0TDE0IDRMMTQgNkwxMyA2TDEzIDdMMTIgN0wxMiA2TDExIDZMMTEgN0wxMiA3TDEyIDhMMTQgOEwxNCA2TDE1IDZMMTUgOUwxMyA5TDEzIDEwTDEyIDEwTDEyIDlMMTEgOUwxMSA4TDEwIDhMMTAgOUw2IDlMNiAxMEw0IDEwTDQgMTFMMyAxMUwzIDlMMiA5TDIgMTBMMSAxMEwxIDExTDIgMTFMMiAxM0wzIDEzTDMgMTRMNCAxNEw0IDE2TDcgMTZMNyAxNUw1IDE1TDUgMTRMOCAxNEw4IDE1TDkgMTVMOSAxNEw4IDE0TDggMTNMOSAxM0w5IDEyTDExIDEyTDExIDExTDEzIDExTDEzIDEyTDEyIDEyTDEyIDEzTDEzIDEzTDEzIDE0TDE0IDE0TDE0IDE1TDEyIDE1TDEyIDE0TDExIDE0TDExIDEzTDEwIDEzTDEwIDE1TDEyIDE1TDEyIDE2TDExIDE2TDExIDE3TDEzIDE3TDEzIDE2TDE1IDE2TDE1IDE0TDE0IDE0TDE0IDEzTDEzIDEzTDEzIDEyTDE0IDEyTDE0IDExTDE1IDExTDE1IDEwTDE3IDEwTDE3IDlMMTYgOUwxNiA4TDE4IDhMMTggOUwyMCA5TDIwIDhMMTkgOEwxOSA3TDIwIDdMMjAgNUwxOSA1TDE5IDdMMTggN0wxOCA0TDE5IDRMMTkgM1pNOSA2TDkgN0wxMCA3TDEwIDZaTTIzIDhMMjMgMTFMMjIgMTFMMjIgMTJMMjQgMTJMMjQgMTBMMjUgMTBMMjUgMTFMMjYgMTFMMjYgMTBMMjggMTBMMjggOEwyNyA4TDI3IDlMMjYgOUwyNiA4TDI1IDhMMjUgOUwyNCA5TDI0IDhaTTEwIDlMMTAgMTFMMTEgMTFMMTEgOVpNMjUgOUwyNSAxMEwyNiAxMEwyNiA5Wk02IDEwTDYgMTFMNyAxMUw3IDEyTDYgMTJMNiAxM0w3IDEzTDcgMTJMOSAxMkw5IDEwWk00IDExTDQgMTJMNSAxMkw1IDExWk0xOSAxMkwxOSAxM0wxOCAxM0wxOCAxNEwxOSAxNEwxOSAxM0wyMCAxM0wyMCAxMlpNMjQgMTZMMjQgMTdMMjUgMTdMMjUgMTZaTTI3IDE2TDI3IDE4TDI4IDE4TDI4IDE3TDI5IDE3TDI5IDE2Wk02IDE3TDYgMThMNyAxOEw3IDE3Wk04IDE3TDggMjFMMTAgMjFMMTAgMjBMMTIgMjBMMTIgMjFMMTMgMjFMMTMgMjJMMTQgMjJMMTQgMjNMMTUgMjNMMTUgMjVMMTQgMjVMMTQgMjZMMTEgMjZMMTEgMjdMMTAgMjdMMTAgMjhMMTIgMjhMMTIgMjdMMTMgMjdMMTMgMjhMMTUgMjhMMTUgMjVMMjAgMjVMMjAgMjZMMjEgMjZMMjEgMjdMMjIgMjdMMjIgMjZMMjQgMjZMMjQgMjVMMjIgMjVMMjIgMjZMMjEgMjZMMjEgMjVMMjAgMjVMMjAgMjRMMTggMjRMMTggMjNMMTcgMjNMMTcgMjJMMTYgMjJMMTYgMjNMMTUgMjNMMTUgMjFMMTMgMjFMMTMgMjBMMTIgMjBMMTIgMThMMTEgMThMMTEgMTlMOSAxOUw5IDE4TDEwIDE4TDEwIDE3Wk0yIDE5TDIgMjFMMyAyMUwzIDIwTDUgMjBMNSAxOVpNMjggMTlMMjggMjBMMjkgMjBMMjkgMTlaTTE4IDIxTDE4IDIyTDE5IDIyTDE5IDIzTDIwIDIzTDIwIDIyTDE5IDIyTDE5IDIxWk0yMSAyMUwyMSAyNEwyNCAyNEwyNCAyMVpNMjUgMjFMMjUgMjNMMjYgMjNMMjYgMjZMMjggMjZMMjggMjVMMjcgMjVMMjcgMjNMMjYgMjNMMjYgMjFaTTIyIDIyTDIyIDIzTDIzIDIzTDIzIDIyWk0xNiAyM0wxNiAyNEwxNyAyNEwxNyAyM1pNMCAwTDAgN0w3IDdMNyAwWk0xIDFMMSA2TDYgNkw2IDFaTTIgMkwyIDVMNSA1TDUgMlpNMjIgMEwyMiA3TDI5IDdMMjkgMFpNMjMgMUwyMyA2TDI4IDZMMjggMVpNMjQgMkwyNCA1TDI3IDVMMjcgMlpNMCAyMkwwIDI5TDcgMjlMNyAyMlpNMSAyM0wxIDI4TDYgMjhMNiAyM1pNMiAyNEwyIDI3TDUgMjdMNSAyNFoiIGZpbGw9IiMwMDAwMDAiLz48L2c+PC9nPjwvc3ZnPgo=', '2022-12-08 07:54:26', '2022-12-08 07:54:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `maps`
--
ALTER TABLE `maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `phonenumbers`
--
ALTER TABLE `phonenumbers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `websites`
--
ALTER TABLE `websites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wifis`
--
ALTER TABLE `wifis`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `maps`
--
ALTER TABLE `maps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phonenumbers`
--
ALTER TABLE `phonenumbers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `websites`
--
ALTER TABLE `websites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wifis`
--
ALTER TABLE `wifis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `research`
--
CREATE DATABASE IF NOT EXISTS `research` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `research`;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `BookID` int(225) NOT NULL,
  `BookName` varchar(40) NOT NULL,
  `BookDescription` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quizez`
--

CREATE TABLE `quizez` (
  `QuizeID` int(225) NOT NULL,
  `Subject` varchar(60) NOT NULL,
  `Time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `research_expert`
--

CREATE TABLE `research_expert` (
  `ResearcherID` int(225) NOT NULL,
  `ResearcherName` varchar(40) NOT NULL,
  `ContactNo` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(225) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Contact` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`BookID`);

--
-- Indexes for table `quizez`
--
ALTER TABLE `quizez`
  ADD PRIMARY KEY (`QuizeID`);

--
-- Indexes for table `research_expert`
--
ALTER TABLE `research_expert`
  ADD PRIMARY KEY (`ResearcherID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `BookID` int(225) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quizez`
--
ALTER TABLE `quizez`
  MODIFY `QuizeID` int(225) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `research_expert`
--
ALTER TABLE `research_expert`
  MODIFY `ResearcherID` int(225) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(225) NOT NULL AUTO_INCREMENT;
--
-- Database: `sakila`
--
CREATE DATABASE IF NOT EXISTS `sakila` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sakila`;

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `actor_id` smallint(5) UNSIGNED NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(25) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` smallint(5) UNSIGNED NOT NULL,
  `country` varchar(50) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `film_text`
--

CREATE TABLE `film_text` (
  `film_id` smallint(6) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `language_id` tinyint(3) UNSIGNED NOT NULL,
  `name` char(20) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`actor_id`),
  ADD KEY `idx_actor_last_name` (`last_name`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `film_text`
--
ALTER TABLE `film_text`
  ADD PRIMARY KEY (`film_id`);
ALTER TABLE `film_text` ADD FULLTEXT KEY `idx_title_description` (`title`,`description`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`language_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actor`
--
ALTER TABLE `actor`
  MODIFY `actor_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `language_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `tesla`
--
CREATE DATABASE IF NOT EXISTS `tesla` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tesla`;

-- --------------------------------------------------------

--
-- Table structure for table `add_car`
--

CREATE TABLE `add_car` (
  `Car_ID` int(10) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_car`
--

INSERT INTO `add_car` (`Car_ID`, `image`) VALUES
(1, 'Image/Darksiders-II.jpg'),
(2, 'Image/'),
(3, 'Image/Football-01.jpg'),
(4, 'Image/Darksiders-II.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `book_now`
--

CREATE TABLE `book_now` (
  `Book_ID` int(5) NOT NULL,
  `Name` varchar(80) NOT NULL,
  `Model` varchar(80) NOT NULL,
  `Color` varchar(80) NOT NULL,
  `Payment_Type` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_now`
--

INSERT INTO `book_now` (`Book_ID`, `Name`, `Model`, `Color`, `Payment_Type`) VALUES
(1, 'Saad', 'Tesla Model S', 'Red', 'Loan'),
(2, 'Saad', 'Tesla Model S', 'Red', 'Loan'),
(3, 'Saad', 'Tesla Model S', 'Red', 'Loan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_car`
--
ALTER TABLE `add_car`
  ADD PRIMARY KEY (`Car_ID`);

--
-- Indexes for table `book_now`
--
ALTER TABLE `book_now`
  ADD PRIMARY KEY (`Book_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_car`
--
ALTER TABLE `add_car`
  MODIFY `Car_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `book_now`
--
ALTER TABLE `book_now`
  MODIFY `Book_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `world`
--
CREATE DATABASE IF NOT EXISTS `world` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `world`;
--
-- Database: `world_x`
--
CREATE DATABASE IF NOT EXISTS `world_x` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `world_x`;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `ID` int(11) NOT NULL,
  `Name` char(35) NOT NULL DEFAULT '',
  `CountryCode` char(3) NOT NULL DEFAULT '',
  `District` char(20) NOT NULL DEFAULT '',
  `Info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`Info`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`ID`, `Name`, `CountryCode`, `District`, `Info`) VALUES
(1, 'Kabul', 'AFG', 'Kabol', '{\"Population\": 1780000}'),
(2, 'Qandahar', 'AFG', 'Qandahar', '{\"Population\": 237500}'),
(3, 'Herat', 'AFG', 'Herat', '{\"Population\": 186800}'),
(4, 'Mazar-e-Sharif', 'AFG', 'Balkh', '{\"Population\": 127800}'),
(5, 'Amsterdam', 'NLD', 'Noord-Holland', '{\"Population\": 731200}'),
(6, 'Rotterdam', 'NLD', 'Zuid-Holland', '{\"Population\": 593321}'),
(7, 'Haag', 'NLD', 'Zuid-Holland', '{\"Population\": 440900}'),
(8, 'Utrecht', 'NLD', 'Utrecht', '{\"Population\": 234323}'),
(9, 'Eindhoven', 'NLD', 'Noord-Brabant', '{\"Population\": 201843}'),
(10, 'Tilburg', 'NLD', 'Noord-Brabant', '{\"Population\": 193238}'),
(11, 'Groningen', 'NLD', 'Groningen', '{\"Population\": 172701}'),
(12, 'Breda', 'NLD', 'Noord-Brabant', '{\"Population\": 160398}'),
(13, 'Apeldoorn', 'NLD', 'Gelderland', '{\"Population\": 153491}'),
(14, 'Nijmegen', 'NLD', 'Gelderland', '{\"Population\": 152463}'),
(15, 'Enschede', 'NLD', 'Overijssel', '{\"Population\": 149544}'),
(16, 'Haarlem', 'NLD', 'Noord-Holland', '{\"Population\": 148772}'),
(17, 'Almere', 'NLD', 'Flevoland', '{\"Population\": 142465}'),
(18, 'Arnhem', 'NLD', 'Gelderland', '{\"Population\": 138020}'),
(19, 'Zaanstad', 'NLD', 'Noord-Holland', '{\"Population\": 135621}'),
(20, '´s-Hertogenbosch', 'NLD', 'Noord-Brabant', '{\"Population\": 129170}'),
(21, 'Amersfoort', 'NLD', 'Utrecht', '{\"Population\": 126270}'),
(22, 'Maastricht', 'NLD', 'Limburg', '{\"Population\": 122087}'),
(23, 'Dordrecht', 'NLD', 'Zuid-Holland', '{\"Population\": 119811}'),
(24, 'Leiden', 'NLD', 'Zuid-Holland', '{\"Population\": 117196}'),
(25, 'Haarlemmermeer', 'NLD', 'Noord-Holland', '{\"Population\": 110722}'),
(26, 'Zoetermeer', 'NLD', 'Zuid-Holland', '{\"Population\": 110214}'),
(27, 'Emmen', 'NLD', 'Drenthe', '{\"Population\": 105853}'),
(28, 'Zwolle', 'NLD', 'Overijssel', '{\"Population\": 105819}'),
(29, 'Ede', 'NLD', 'Gelderland', '{\"Population\": 101574}'),
(30, 'Delft', 'NLD', 'Zuid-Holland', '{\"Population\": 95268}'),
(31, 'Heerlen', 'NLD', 'Limburg', '{\"Population\": 95052}'),
(32, 'Alkmaar', 'NLD', 'Noord-Holland', '{\"Population\": 92713}'),
(33, 'Willemstad', 'ANT', 'Curaçao', '{\"Population\": 2345}'),
(34, 'Tirana', 'ALB', 'Tirana', '{\"Population\": 270000}'),
(35, 'Alger', 'DZA', 'Alger', '{\"Population\": 2168000}'),
(36, 'Oran', 'DZA', 'Oran', '{\"Population\": 609823}'),
(37, 'Constantine', 'DZA', 'Constantine', '{\"Population\": 443727}'),
(38, 'Annaba', 'DZA', 'Annaba', '{\"Population\": 222518}'),
(39, 'Batna', 'DZA', 'Batna', '{\"Population\": 183377}'),
(40, 'Sétif', 'DZA', 'Sétif', '{\"Population\": 179055}'),
(41, 'Sidi Bel Abbès', 'DZA', 'Sidi Bel Abbès', '{\"Population\": 153106}'),
(42, 'Skikda', 'DZA', 'Skikda', '{\"Population\": 128747}'),
(43, 'Biskra', 'DZA', 'Biskra', '{\"Population\": 128281}'),
(44, 'Blida (el-Boulaida)', 'DZA', 'Blida', '{\"Population\": 127284}'),
(45, 'Béjaïa', 'DZA', 'Béjaïa', '{\"Population\": 117162}'),
(46, 'Mostaganem', 'DZA', 'Mostaganem', '{\"Population\": 115212}'),
(47, 'Tébessa', 'DZA', 'Tébessa', '{\"Population\": 112007}'),
(48, 'Tlemcen (Tilimsen)', 'DZA', 'Tlemcen', '{\"Population\": 110242}'),
(49, 'Béchar', 'DZA', 'Béchar', '{\"Population\": 107311}'),
(50, 'Tiaret', 'DZA', 'Tiaret', '{\"Population\": 100118}'),
(51, 'Ech-Chleff (el-Asnam)', 'DZA', 'Chlef', '{\"Population\": 96794}'),
(52, 'Ghardaïa', 'DZA', 'Ghardaïa', '{\"Population\": 89415}'),
(53, 'Tafuna', 'ASM', 'Tutuila', '{\"Population\": 5200}'),
(54, 'Fagatogo', 'ASM', 'Tutuila', '{\"Population\": 2323}'),
(55, 'Andorra la Vella', 'AND', 'Andorra la Vella', '{\"Population\": 21189}'),
(56, 'Luanda', 'AGO', 'Luanda', '{\"Population\": 2022000}'),
(57, 'Huambo', 'AGO', 'Huambo', '{\"Population\": 163100}'),
(58, 'Lobito', 'AGO', 'Benguela', '{\"Population\": 130000}'),
(59, 'Benguela', 'AGO', 'Benguela', '{\"Population\": 128300}'),
(60, 'Namibe', 'AGO', 'Namibe', '{\"Population\": 118200}'),
(61, 'South Hill', 'AIA', '–', '{\"Population\": 961}'),
(62, 'The Valley', 'AIA', '–', '{\"Population\": 595}'),
(63, 'Saint John´s', 'ATG', 'St John', '{\"Population\": 24000}'),
(64, 'Dubai', 'ARE', 'Dubai', '{\"Population\": 669181}'),
(65, 'Abu Dhabi', 'ARE', 'Abu Dhabi', '{\"Population\": 398695}'),
(66, 'Sharja', 'ARE', 'Sharja', '{\"Population\": 320095}'),
(67, 'al-Ayn', 'ARE', 'Abu Dhabi', '{\"Population\": 225970}'),
(68, 'Ajman', 'ARE', 'Ajman', '{\"Population\": 114395}'),
(69, 'Buenos Aires', 'ARG', 'Distrito Federal', '{\"Population\": 2982146}'),
(70, 'La Matanza', 'ARG', 'Buenos Aires', '{\"Population\": 1266461}'),
(71, 'Córdoba', 'ARG', 'Córdoba', '{\"Population\": 1157507}'),
(72, 'Rosario', 'ARG', 'Santa Fé', '{\"Population\": 907718}'),
(73, 'Lomas de Zamora', 'ARG', 'Buenos Aires', '{\"Population\": 622013}'),
(74, 'Quilmes', 'ARG', 'Buenos Aires', '{\"Population\": 559249}'),
(75, 'Almirante Brown', 'ARG', 'Buenos Aires', '{\"Population\": 538918}'),
(76, 'La Plata', 'ARG', 'Buenos Aires', '{\"Population\": 521936}'),
(77, 'Mar del Plata', 'ARG', 'Buenos Aires', '{\"Population\": 512880}'),
(78, 'San Miguel de Tucumán', 'ARG', 'Tucumán', '{\"Population\": 470809}'),
(79, 'Lanús', 'ARG', 'Buenos Aires', '{\"Population\": 469735}'),
(80, 'Merlo', 'ARG', 'Buenos Aires', '{\"Population\": 463846}'),
(81, 'General San Martín', 'ARG', 'Buenos Aires', '{\"Population\": 422542}'),
(82, 'Salta', 'ARG', 'Salta', '{\"Population\": 367550}'),
(83, 'Moreno', 'ARG', 'Buenos Aires', '{\"Population\": 356993}'),
(84, 'Santa Fé', 'ARG', 'Santa Fé', '{\"Population\": 353063}'),
(85, 'Avellaneda', 'ARG', 'Buenos Aires', '{\"Population\": 353046}'),
(86, 'Tres de Febrero', 'ARG', 'Buenos Aires', '{\"Population\": 352311}'),
(87, 'Morón', 'ARG', 'Buenos Aires', '{\"Population\": 349246}'),
(88, 'Florencio Varela', 'ARG', 'Buenos Aires', '{\"Population\": 315432}'),
(89, 'San Isidro', 'ARG', 'Buenos Aires', '{\"Population\": 306341}'),
(90, 'Tigre', 'ARG', 'Buenos Aires', '{\"Population\": 296226}'),
(91, 'Malvinas Argentinas', 'ARG', 'Buenos Aires', '{\"Population\": 290335}'),
(92, 'Vicente López', 'ARG', 'Buenos Aires', '{\"Population\": 288341}'),
(93, 'Berazategui', 'ARG', 'Buenos Aires', '{\"Population\": 276916}'),
(94, 'Corrientes', 'ARG', 'Corrientes', '{\"Population\": 258103}'),
(95, 'San Miguel', 'ARG', 'Buenos Aires', '{\"Population\": 248700}'),
(96, 'Bahía Blanca', 'ARG', 'Buenos Aires', '{\"Population\": 239810}'),
(97, 'Esteban Echeverría', 'ARG', 'Buenos Aires', '{\"Population\": 235760}'),
(98, 'Resistencia', 'ARG', 'Chaco', '{\"Population\": 229212}'),
(99, 'José C. Paz', 'ARG', 'Buenos Aires', '{\"Population\": 221754}'),
(100, 'Paraná', 'ARG', 'Entre Rios', '{\"Population\": 207041}'),
(101, 'Godoy Cruz', 'ARG', 'Mendoza', '{\"Population\": 206998}'),
(102, 'Posadas', 'ARG', 'Misiones', '{\"Population\": 201273}'),
(103, 'Guaymallén', 'ARG', 'Mendoza', '{\"Population\": 200595}'),
(104, 'Santiago del Estero', 'ARG', 'Santiago del Estero', '{\"Population\": 189947}'),
(105, 'San Salvador de Jujuy', 'ARG', 'Jujuy', '{\"Population\": 178748}'),
(106, 'Hurlingham', 'ARG', 'Buenos Aires', '{\"Population\": 170028}'),
(107, 'Neuquén', 'ARG', 'Neuquén', '{\"Population\": 167296}'),
(108, 'Ituzaingó', 'ARG', 'Buenos Aires', '{\"Population\": 158197}'),
(109, 'San Fernando', 'ARG', 'Buenos Aires', '{\"Population\": 153036}'),
(110, 'Formosa', 'ARG', 'Formosa', '{\"Population\": 147636}'),
(111, 'Las Heras', 'ARG', 'Mendoza', '{\"Population\": 145823}'),
(112, 'La Rioja', 'ARG', 'La Rioja', '{\"Population\": 138117}'),
(113, 'San Fernando del Valle de Cata', 'ARG', 'Catamarca', '{\"Population\": 134935}'),
(114, 'Río Cuarto', 'ARG', 'Córdoba', '{\"Population\": 134355}'),
(115, 'Comodoro Rivadavia', 'ARG', 'Chubut', '{\"Population\": 124104}'),
(116, 'Mendoza', 'ARG', 'Mendoza', '{\"Population\": 123027}'),
(117, 'San Nicolás de los Arroyos', 'ARG', 'Buenos Aires', '{\"Population\": 119302}'),
(118, 'San Juan', 'ARG', 'San Juan', '{\"Population\": 119152}'),
(119, 'Escobar', 'ARG', 'Buenos Aires', '{\"Population\": 116675}'),
(120, 'Concordia', 'ARG', 'Entre Rios', '{\"Population\": 116485}'),
(121, 'Pilar', 'ARG', 'Buenos Aires', '{\"Population\": 113428}'),
(122, 'San Luis', 'ARG', 'San Luis', '{\"Population\": 110136}'),
(123, 'Ezeiza', 'ARG', 'Buenos Aires', '{\"Population\": 99578}'),
(124, 'San Rafael', 'ARG', 'Mendoza', '{\"Population\": 94651}'),
(125, 'Tandil', 'ARG', 'Buenos Aires', '{\"Population\": 91101}'),
(126, 'Yerevan', 'ARM', 'Yerevan', '{\"Population\": 1248700}'),
(127, 'Gjumri', 'ARM', 'Širak', '{\"Population\": 211700}'),
(128, 'Vanadzor', 'ARM', 'Lori', '{\"Population\": 172700}'),
(129, 'Oranjestad', 'ABW', '–', '{\"Population\": 29034}'),
(130, 'Sydney', 'AUS', 'New South Wales', '{\"Population\": 3276207}'),
(131, 'Melbourne', 'AUS', 'Victoria', '{\"Population\": 2865329}'),
(132, 'Brisbane', 'AUS', 'Queensland', '{\"Population\": 1291117}'),
(133, 'Perth', 'AUS', 'West Australia', '{\"Population\": 1096829}'),
(134, 'Adelaide', 'AUS', 'South Australia', '{\"Population\": 978100}'),
(135, 'Canberra', 'AUS', 'Capital Region', '{\"Population\": 322723}'),
(136, 'Gold Coast', 'AUS', 'Queensland', '{\"Population\": 311932}'),
(137, 'Newcastle', 'AUS', 'New South Wales', '{\"Population\": 270324}'),
(138, 'Central Coast', 'AUS', 'New South Wales', '{\"Population\": 227657}'),
(139, 'Wollongong', 'AUS', 'New South Wales', '{\"Population\": 219761}'),
(140, 'Hobart', 'AUS', 'Tasmania', '{\"Population\": 126118}'),
(141, 'Geelong', 'AUS', 'Victoria', '{\"Population\": 125382}'),
(142, 'Townsville', 'AUS', 'Queensland', '{\"Population\": 109914}'),
(143, 'Cairns', 'AUS', 'Queensland', '{\"Population\": 92273}'),
(144, 'Baku', 'AZE', 'Baki', '{\"Population\": 1787800}'),
(145, 'Gäncä', 'AZE', 'Gäncä', '{\"Population\": 299300}'),
(146, 'Sumqayit', 'AZE', 'Sumqayit', '{\"Population\": 283000}'),
(147, 'Mingäçevir', 'AZE', 'Mingäçevir', '{\"Population\": 93900}'),
(148, 'Nassau', 'BHS', 'New Providence', '{\"Population\": 172000}'),
(149, 'al-Manama', 'BHR', 'al-Manama', '{\"Population\": 148000}'),
(150, 'Dhaka', 'BGD', 'Dhaka', '{\"Population\": 3612850}'),
(151, 'Chittagong', 'BGD', 'Chittagong', '{\"Population\": 1392860}'),
(152, 'Khulna', 'BGD', 'Khulna', '{\"Population\": 663340}'),
(153, 'Rajshahi', 'BGD', 'Rajshahi', '{\"Population\": 294056}'),
(154, 'Narayanganj', 'BGD', 'Dhaka', '{\"Population\": 202134}'),
(155, 'Rangpur', 'BGD', 'Rajshahi', '{\"Population\": 191398}'),
(156, 'Mymensingh', 'BGD', 'Dhaka', '{\"Population\": 188713}'),
(157, 'Barisal', 'BGD', 'Barisal', '{\"Population\": 170232}'),
(158, 'Tungi', 'BGD', 'Dhaka', '{\"Population\": 168702}'),
(159, 'Jessore', 'BGD', 'Khulna', '{\"Population\": 139710}'),
(160, 'Comilla', 'BGD', 'Chittagong', '{\"Population\": 135313}'),
(161, 'Nawabganj', 'BGD', 'Rajshahi', '{\"Population\": 130577}'),
(162, 'Dinajpur', 'BGD', 'Rajshahi', '{\"Population\": 127815}'),
(163, 'Bogra', 'BGD', 'Rajshahi', '{\"Population\": 120170}'),
(164, 'Sylhet', 'BGD', 'Sylhet', '{\"Population\": 117396}'),
(165, 'Brahmanbaria', 'BGD', 'Chittagong', '{\"Population\": 109032}'),
(166, 'Tangail', 'BGD', 'Dhaka', '{\"Population\": 106004}'),
(167, 'Jamalpur', 'BGD', 'Dhaka', '{\"Population\": 103556}'),
(168, 'Pabna', 'BGD', 'Rajshahi', '{\"Population\": 103277}'),
(169, 'Naogaon', 'BGD', 'Rajshahi', '{\"Population\": 101266}'),
(170, 'Sirajganj', 'BGD', 'Rajshahi', '{\"Population\": 99669}'),
(171, 'Narsinghdi', 'BGD', 'Dhaka', '{\"Population\": 98342}'),
(172, 'Saidpur', 'BGD', 'Rajshahi', '{\"Population\": 96777}'),
(173, 'Gazipur', 'BGD', 'Dhaka', '{\"Population\": 96717}'),
(174, 'Bridgetown', 'BRB', 'St Michael', '{\"Population\": 6070}'),
(175, 'Antwerpen', 'BEL', 'Antwerpen', '{\"Population\": 446525}'),
(176, 'Gent', 'BEL', 'East Flanderi', '{\"Population\": 224180}'),
(177, 'Charleroi', 'BEL', 'Hainaut', '{\"Population\": 200827}'),
(178, 'Liège', 'BEL', 'Liège', '{\"Population\": 185639}'),
(179, 'Bruxelles [Brussel]', 'BEL', 'Bryssel', '{\"Population\": 133859}'),
(180, 'Brugge', 'BEL', 'West Flanderi', '{\"Population\": 116246}'),
(181, 'Schaerbeek', 'BEL', 'Bryssel', '{\"Population\": 105692}'),
(182, 'Namur', 'BEL', 'Namur', '{\"Population\": 105419}'),
(183, 'Mons', 'BEL', 'Hainaut', '{\"Population\": 90935}'),
(184, 'Belize City', 'BLZ', 'Belize City', '{\"Population\": 55810}'),
(185, 'Belmopan', 'BLZ', 'Cayo', '{\"Population\": 7105}'),
(186, 'Cotonou', 'BEN', 'Atlantique', '{\"Population\": 536827}'),
(187, 'Porto-Novo', 'BEN', 'Ouémé', '{\"Population\": 194000}'),
(188, 'Djougou', 'BEN', 'Atacora', '{\"Population\": 134099}'),
(189, 'Parakou', 'BEN', 'Borgou', '{\"Population\": 103577}'),
(190, 'Saint George', 'BMU', 'Saint George´s', '{\"Population\": 1800}'),
(191, 'Hamilton', 'BMU', 'Hamilton', '{\"Population\": 1200}'),
(192, 'Thimphu', 'BTN', 'Thimphu', '{\"Population\": 22000}'),
(193, 'Santa Cruz de la Sierra', 'BOL', 'Santa Cruz', '{\"Population\": 935361}'),
(194, 'La Paz', 'BOL', 'La Paz', '{\"Population\": 758141}'),
(195, 'El Alto', 'BOL', 'La Paz', '{\"Population\": 534466}'),
(196, 'Cochabamba', 'BOL', 'Cochabamba', '{\"Population\": 482800}'),
(197, 'Oruro', 'BOL', 'Oruro', '{\"Population\": 223553}'),
(198, 'Sucre', 'BOL', 'Chuquisaca', '{\"Population\": 178426}'),
(199, 'Potosí', 'BOL', 'Potosí', '{\"Population\": 140642}'),
(200, 'Tarija', 'BOL', 'Tarija', '{\"Population\": 125255}'),
(201, 'Sarajevo', 'BIH', 'Federaatio', '{\"Population\": 360000}'),
(202, 'Banja Luka', 'BIH', 'Republika Srpska', '{\"Population\": 143079}'),
(203, 'Zenica', 'BIH', 'Federaatio', '{\"Population\": 96027}'),
(204, 'Gaborone', 'BWA', 'Gaborone', '{\"Population\": 213017}'),
(205, 'Francistown', 'BWA', 'Francistown', '{\"Population\": 101805}'),
(206, 'São Paulo', 'BRA', 'São Paulo', '{\"Population\": 9968485}'),
(207, 'Rio de Janeiro', 'BRA', 'Rio de Janeiro', '{\"Population\": 5598953}'),
(208, 'Salvador', 'BRA', 'Bahia', '{\"Population\": 2302832}'),
(209, 'Belo Horizonte', 'BRA', 'Minas Gerais', '{\"Population\": 2139125}'),
(210, 'Fortaleza', 'BRA', 'Ceará', '{\"Population\": 2097757}'),
(211, 'Brasília', 'BRA', 'Distrito Federal', '{\"Population\": 1969868}'),
(212, 'Curitiba', 'BRA', 'Paraná', '{\"Population\": 1584232}'),
(213, 'Recife', 'BRA', 'Pernambuco', '{\"Population\": 1378087}'),
(214, 'Porto Alegre', 'BRA', 'Rio Grande do Sul', '{\"Population\": 1314032}'),
(215, 'Manaus', 'BRA', 'Amazonas', '{\"Population\": 1255049}'),
(216, 'Belém', 'BRA', 'Pará', '{\"Population\": 1186926}'),
(217, 'Guarulhos', 'BRA', 'São Paulo', '{\"Population\": 1095874}'),
(218, 'Goiânia', 'BRA', 'Goiás', '{\"Population\": 1056330}'),
(219, 'Campinas', 'BRA', 'São Paulo', '{\"Population\": 950043}'),
(220, 'São Gonçalo', 'BRA', 'Rio de Janeiro', '{\"Population\": 869254}'),
(221, 'Nova Iguaçu', 'BRA', 'Rio de Janeiro', '{\"Population\": 862225}'),
(222, 'São Luís', 'BRA', 'Maranhão', '{\"Population\": 837588}'),
(223, 'Maceió', 'BRA', 'Alagoas', '{\"Population\": 786288}'),
(224, 'Duque de Caxias', 'BRA', 'Rio de Janeiro', '{\"Population\": 746758}'),
(225, 'São Bernardo do Campo', 'BRA', 'São Paulo', '{\"Population\": 723132}'),
(226, 'Teresina', 'BRA', 'Piauí', '{\"Population\": 691942}'),
(227, 'Natal', 'BRA', 'Rio Grande do Norte', '{\"Population\": 688955}'),
(228, 'Osasco', 'BRA', 'São Paulo', '{\"Population\": 659604}'),
(229, 'Campo Grande', 'BRA', 'Mato Grosso do Sul', '{\"Population\": 649593}'),
(230, 'Santo André', 'BRA', 'São Paulo', '{\"Population\": 630073}'),
(231, 'João Pessoa', 'BRA', 'Paraíba', '{\"Population\": 584029}'),
(232, 'Jaboatão dos Guararapes', 'BRA', 'Pernambuco', '{\"Population\": 558680}'),
(233, 'Contagem', 'BRA', 'Minas Gerais', '{\"Population\": 520801}'),
(234, 'São José dos Campos', 'BRA', 'São Paulo', '{\"Population\": 515553}'),
(235, 'Uberlândia', 'BRA', 'Minas Gerais', '{\"Population\": 487222}'),
(236, 'Feira de Santana', 'BRA', 'Bahia', '{\"Population\": 479992}'),
(237, 'Ribeirão Preto', 'BRA', 'São Paulo', '{\"Population\": 473276}'),
(238, 'Sorocaba', 'BRA', 'São Paulo', '{\"Population\": 466823}'),
(239, 'Niterói', 'BRA', 'Rio de Janeiro', '{\"Population\": 459884}'),
(240, 'Cuiabá', 'BRA', 'Mato Grosso', '{\"Population\": 453813}'),
(241, 'Juiz de Fora', 'BRA', 'Minas Gerais', '{\"Population\": 450288}'),
(242, 'Aracaju', 'BRA', 'Sergipe', '{\"Population\": 445555}'),
(243, 'São João de Meriti', 'BRA', 'Rio de Janeiro', '{\"Population\": 440052}'),
(244, 'Londrina', 'BRA', 'Paraná', '{\"Population\": 432257}'),
(245, 'Joinville', 'BRA', 'Santa Catarina', '{\"Population\": 428011}'),
(246, 'Belford Roxo', 'BRA', 'Rio de Janeiro', '{\"Population\": 425194}'),
(247, 'Santos', 'BRA', 'São Paulo', '{\"Population\": 408748}'),
(248, 'Ananindeua', 'BRA', 'Pará', '{\"Population\": 400940}'),
(249, 'Campos dos Goytacazes', 'BRA', 'Rio de Janeiro', '{\"Population\": 398418}'),
(250, 'Mauá', 'BRA', 'São Paulo', '{\"Population\": 375055}'),
(251, 'Carapicuíba', 'BRA', 'São Paulo', '{\"Population\": 357552}'),
(252, 'Olinda', 'BRA', 'Pernambuco', '{\"Population\": 354732}'),
(253, 'Campina Grande', 'BRA', 'Paraíba', '{\"Population\": 352497}'),
(254, 'São José do Rio Preto', 'BRA', 'São Paulo', '{\"Population\": 351944}'),
(255, 'Caxias do Sul', 'BRA', 'Rio Grande do Sul', '{\"Population\": 349581}'),
(256, 'Moji das Cruzes', 'BRA', 'São Paulo', '{\"Population\": 339194}'),
(257, 'Diadema', 'BRA', 'São Paulo', '{\"Population\": 335078}'),
(258, 'Aparecida de Goiânia', 'BRA', 'Goiás', '{\"Population\": 324662}'),
(259, 'Piracicaba', 'BRA', 'São Paulo', '{\"Population\": 319104}'),
(260, 'Cariacica', 'BRA', 'Espírito Santo', '{\"Population\": 319033}'),
(261, 'Vila Velha', 'BRA', 'Espírito Santo', '{\"Population\": 318758}'),
(262, 'Pelotas', 'BRA', 'Rio Grande do Sul', '{\"Population\": 315415}'),
(263, 'Bauru', 'BRA', 'São Paulo', '{\"Population\": 313670}'),
(264, 'Porto Velho', 'BRA', 'Rondônia', '{\"Population\": 309750}'),
(265, 'Serra', 'BRA', 'Espírito Santo', '{\"Population\": 302666}'),
(266, 'Betim', 'BRA', 'Minas Gerais', '{\"Population\": 302108}'),
(267, 'Jundíaí', 'BRA', 'São Paulo', '{\"Population\": 296127}'),
(268, 'Canoas', 'BRA', 'Rio Grande do Sul', '{\"Population\": 294125}'),
(269, 'Franca', 'BRA', 'São Paulo', '{\"Population\": 290139}'),
(270, 'São Vicente', 'BRA', 'São Paulo', '{\"Population\": 286848}'),
(271, 'Maringá', 'BRA', 'Paraná', '{\"Population\": 286461}'),
(272, 'Montes Claros', 'BRA', 'Minas Gerais', '{\"Population\": 286058}'),
(273, 'Anápolis', 'BRA', 'Goiás', '{\"Population\": 282197}'),
(274, 'Florianópolis', 'BRA', 'Santa Catarina', '{\"Population\": 281928}'),
(275, 'Petrópolis', 'BRA', 'Rio de Janeiro', '{\"Population\": 279183}'),
(276, 'Itaquaquecetuba', 'BRA', 'São Paulo', '{\"Population\": 270874}'),
(277, 'Vitória', 'BRA', 'Espírito Santo', '{\"Population\": 270626}'),
(278, 'Ponta Grossa', 'BRA', 'Paraná', '{\"Population\": 268013}'),
(279, 'Rio Branco', 'BRA', 'Acre', '{\"Population\": 259537}'),
(280, 'Foz do Iguaçu', 'BRA', 'Paraná', '{\"Population\": 259425}'),
(281, 'Macapá', 'BRA', 'Amapá', '{\"Population\": 256033}'),
(282, 'Ilhéus', 'BRA', 'Bahia', '{\"Population\": 254970}'),
(283, 'Vitória da Conquista', 'BRA', 'Bahia', '{\"Population\": 253587}'),
(284, 'Uberaba', 'BRA', 'Minas Gerais', '{\"Population\": 249225}'),
(285, 'Paulista', 'BRA', 'Pernambuco', '{\"Population\": 248473}'),
(286, 'Limeira', 'BRA', 'São Paulo', '{\"Population\": 245497}'),
(287, 'Blumenau', 'BRA', 'Santa Catarina', '{\"Population\": 244379}'),
(288, 'Caruaru', 'BRA', 'Pernambuco', '{\"Population\": 244247}'),
(289, 'Santarém', 'BRA', 'Pará', '{\"Population\": 241771}'),
(290, 'Volta Redonda', 'BRA', 'Rio de Janeiro', '{\"Population\": 240315}'),
(291, 'Novo Hamburgo', 'BRA', 'Rio Grande do Sul', '{\"Population\": 239940}'),
(292, 'Caucaia', 'BRA', 'Ceará', '{\"Population\": 238738}'),
(293, 'Santa Maria', 'BRA', 'Rio Grande do Sul', '{\"Population\": 238473}'),
(294, 'Cascavel', 'BRA', 'Paraná', '{\"Population\": 237510}'),
(295, 'Guarujá', 'BRA', 'São Paulo', '{\"Population\": 237206}'),
(296, 'Ribeirão das Neves', 'BRA', 'Minas Gerais', '{\"Population\": 232685}'),
(297, 'Governador Valadares', 'BRA', 'Minas Gerais', '{\"Population\": 231724}'),
(298, 'Taubaté', 'BRA', 'São Paulo', '{\"Population\": 229130}'),
(299, 'Imperatriz', 'BRA', 'Maranhão', '{\"Population\": 224564}'),
(300, 'Gravataí', 'BRA', 'Rio Grande do Sul', '{\"Population\": 223011}'),
(301, 'Embu', 'BRA', 'São Paulo', '{\"Population\": 222223}'),
(302, 'Mossoró', 'BRA', 'Rio Grande do Norte', '{\"Population\": 214901}'),
(303, 'Várzea Grande', 'BRA', 'Mato Grosso', '{\"Population\": 214435}'),
(304, 'Petrolina', 'BRA', 'Pernambuco', '{\"Population\": 210540}'),
(305, 'Barueri', 'BRA', 'São Paulo', '{\"Population\": 208426}'),
(306, 'Viamão', 'BRA', 'Rio Grande do Sul', '{\"Population\": 207557}'),
(307, 'Ipatinga', 'BRA', 'Minas Gerais', '{\"Population\": 206338}'),
(308, 'Juazeiro', 'BRA', 'Bahia', '{\"Population\": 201073}'),
(309, 'Juazeiro do Norte', 'BRA', 'Ceará', '{\"Population\": 199636}'),
(310, 'Taboão da Serra', 'BRA', 'São Paulo', '{\"Population\": 197550}'),
(311, 'São José dos Pinhais', 'BRA', 'Paraná', '{\"Population\": 196884}'),
(312, 'Magé', 'BRA', 'Rio de Janeiro', '{\"Population\": 196147}'),
(313, 'Suzano', 'BRA', 'São Paulo', '{\"Population\": 195434}'),
(314, 'São Leopoldo', 'BRA', 'Rio Grande do Sul', '{\"Population\": 189258}'),
(315, 'Marília', 'BRA', 'São Paulo', '{\"Population\": 188691}'),
(316, 'São Carlos', 'BRA', 'São Paulo', '{\"Population\": 187122}'),
(317, 'Sumaré', 'BRA', 'São Paulo', '{\"Population\": 186205}'),
(318, 'Presidente Prudente', 'BRA', 'São Paulo', '{\"Population\": 185340}'),
(319, 'Divinópolis', 'BRA', 'Minas Gerais', '{\"Population\": 185047}'),
(320, 'Sete Lagoas', 'BRA', 'Minas Gerais', '{\"Population\": 182984}'),
(321, 'Rio Grande', 'BRA', 'Rio Grande do Sul', '{\"Population\": 182222}'),
(322, 'Itabuna', 'BRA', 'Bahia', '{\"Population\": 182148}'),
(323, 'Jequié', 'BRA', 'Bahia', '{\"Population\": 179128}'),
(324, 'Arapiraca', 'BRA', 'Alagoas', '{\"Population\": 178988}'),
(325, 'Colombo', 'BRA', 'Paraná', '{\"Population\": 177764}'),
(326, 'Americana', 'BRA', 'São Paulo', '{\"Population\": 177409}'),
(327, 'Alvorada', 'BRA', 'Rio Grande do Sul', '{\"Population\": 175574}'),
(328, 'Araraquara', 'BRA', 'São Paulo', '{\"Population\": 174381}'),
(329, 'Itaboraí', 'BRA', 'Rio de Janeiro', '{\"Population\": 173977}'),
(330, 'Santa Bárbara d´Oeste', 'BRA', 'São Paulo', '{\"Population\": 171657}'),
(331, 'Nova Friburgo', 'BRA', 'Rio de Janeiro', '{\"Population\": 170697}'),
(332, 'Jacareí', 'BRA', 'São Paulo', '{\"Population\": 170356}'),
(333, 'Araçatuba', 'BRA', 'São Paulo', '{\"Population\": 169303}'),
(334, 'Barra Mansa', 'BRA', 'Rio de Janeiro', '{\"Population\": 168953}'),
(335, 'Praia Grande', 'BRA', 'São Paulo', '{\"Population\": 168434}'),
(336, 'Marabá', 'BRA', 'Pará', '{\"Population\": 167795}'),
(337, 'Criciúma', 'BRA', 'Santa Catarina', '{\"Population\": 167661}'),
(338, 'Boa Vista', 'BRA', 'Roraima', '{\"Population\": 167185}'),
(339, 'Passo Fundo', 'BRA', 'Rio Grande do Sul', '{\"Population\": 166343}'),
(340, 'Dourados', 'BRA', 'Mato Grosso do Sul', '{\"Population\": 164716}'),
(341, 'Santa Luzia', 'BRA', 'Minas Gerais', '{\"Population\": 164704}'),
(342, 'Rio Claro', 'BRA', 'São Paulo', '{\"Population\": 163551}'),
(343, 'Maracanaú', 'BRA', 'Ceará', '{\"Population\": 162022}'),
(344, 'Guarapuava', 'BRA', 'Paraná', '{\"Population\": 160510}'),
(345, 'Rondonópolis', 'BRA', 'Mato Grosso', '{\"Population\": 155115}'),
(346, 'São José', 'BRA', 'Santa Catarina', '{\"Population\": 155105}'),
(347, 'Cachoeiro de Itapemirim', 'BRA', 'Espírito Santo', '{\"Population\": 155024}'),
(348, 'Nilópolis', 'BRA', 'Rio de Janeiro', '{\"Population\": 153383}'),
(349, 'Itapevi', 'BRA', 'São Paulo', '{\"Population\": 150664}'),
(350, 'Cabo de Santo Agostinho', 'BRA', 'Pernambuco', '{\"Population\": 149964}'),
(351, 'Camaçari', 'BRA', 'Bahia', '{\"Population\": 149146}'),
(352, 'Sobral', 'BRA', 'Ceará', '{\"Population\": 146005}'),
(353, 'Itajaí', 'BRA', 'Santa Catarina', '{\"Population\": 145197}'),
(354, 'Chapecó', 'BRA', 'Santa Catarina', '{\"Population\": 144158}'),
(355, 'Cotia', 'BRA', 'São Paulo', '{\"Population\": 140042}'),
(356, 'Lages', 'BRA', 'Santa Catarina', '{\"Population\": 139570}'),
(357, 'Ferraz de Vasconcelos', 'BRA', 'São Paulo', '{\"Population\": 139283}'),
(358, 'Indaiatuba', 'BRA', 'São Paulo', '{\"Population\": 135968}'),
(359, 'Hortolândia', 'BRA', 'São Paulo', '{\"Population\": 135755}'),
(360, 'Caxias', 'BRA', 'Maranhão', '{\"Population\": 133980}'),
(361, 'São Caetano do Sul', 'BRA', 'São Paulo', '{\"Population\": 133321}'),
(362, 'Itu', 'BRA', 'São Paulo', '{\"Population\": 132736}'),
(363, 'Nossa Senhora do Socorro', 'BRA', 'Sergipe', '{\"Population\": 131351}'),
(364, 'Parnaíba', 'BRA', 'Piauí', '{\"Population\": 129756}'),
(365, 'Poços de Caldas', 'BRA', 'Minas Gerais', '{\"Population\": 129683}'),
(366, 'Teresópolis', 'BRA', 'Rio de Janeiro', '{\"Population\": 128079}'),
(367, 'Barreiras', 'BRA', 'Bahia', '{\"Population\": 127801}'),
(368, 'Castanhal', 'BRA', 'Pará', '{\"Population\": 127634}'),
(369, 'Alagoinhas', 'BRA', 'Bahia', '{\"Population\": 126820}'),
(370, 'Itapecerica da Serra', 'BRA', 'São Paulo', '{\"Population\": 126672}'),
(371, 'Uruguaiana', 'BRA', 'Rio Grande do Sul', '{\"Population\": 126305}'),
(372, 'Paranaguá', 'BRA', 'Paraná', '{\"Population\": 126076}'),
(373, 'Ibirité', 'BRA', 'Minas Gerais', '{\"Population\": 125982}'),
(374, 'Timon', 'BRA', 'Maranhão', '{\"Population\": 125812}'),
(375, 'Luziânia', 'BRA', 'Goiás', '{\"Population\": 125597}'),
(376, 'Macaé', 'BRA', 'Rio de Janeiro', '{\"Population\": 125597}'),
(377, 'Teófilo Otoni', 'BRA', 'Minas Gerais', '{\"Population\": 124489}'),
(378, 'Moji-Guaçu', 'BRA', 'São Paulo', '{\"Population\": 123782}'),
(379, 'Palmas', 'BRA', 'Tocantins', '{\"Population\": 121919}'),
(380, 'Pindamonhangaba', 'BRA', 'São Paulo', '{\"Population\": 121904}'),
(381, 'Francisco Morato', 'BRA', 'São Paulo', '{\"Population\": 121197}'),
(382, 'Bagé', 'BRA', 'Rio Grande do Sul', '{\"Population\": 120793}'),
(383, 'Sapucaia do Sul', 'BRA', 'Rio Grande do Sul', '{\"Population\": 120217}'),
(384, 'Cabo Frio', 'BRA', 'Rio de Janeiro', '{\"Population\": 119503}'),
(385, 'Itapetininga', 'BRA', 'São Paulo', '{\"Population\": 119391}'),
(386, 'Patos de Minas', 'BRA', 'Minas Gerais', '{\"Population\": 119262}'),
(387, 'Camaragibe', 'BRA', 'Pernambuco', '{\"Population\": 118968}'),
(388, 'Bragança Paulista', 'BRA', 'São Paulo', '{\"Population\": 116929}'),
(389, 'Queimados', 'BRA', 'Rio de Janeiro', '{\"Population\": 115020}'),
(390, 'Araguaína', 'BRA', 'Tocantins', '{\"Population\": 114948}'),
(391, 'Garanhuns', 'BRA', 'Pernambuco', '{\"Population\": 114603}'),
(392, 'Vitória de Santo Antão', 'BRA', 'Pernambuco', '{\"Population\": 113595}'),
(393, 'Santa Rita', 'BRA', 'Paraíba', '{\"Population\": 113135}'),
(394, 'Barbacena', 'BRA', 'Minas Gerais', '{\"Population\": 113079}'),
(395, 'Abaetetuba', 'BRA', 'Pará', '{\"Population\": 111258}'),
(396, 'Jaú', 'BRA', 'São Paulo', '{\"Population\": 109965}'),
(397, 'Lauro de Freitas', 'BRA', 'Bahia', '{\"Population\": 109236}'),
(398, 'Franco da Rocha', 'BRA', 'São Paulo', '{\"Population\": 108964}'),
(399, 'Teixeira de Freitas', 'BRA', 'Bahia', '{\"Population\": 108441}'),
(400, 'Varginha', 'BRA', 'Minas Gerais', '{\"Population\": 108314}'),
(401, 'Ribeirão Pires', 'BRA', 'São Paulo', '{\"Population\": 108121}'),
(402, 'Sabará', 'BRA', 'Minas Gerais', '{\"Population\": 107781}'),
(403, 'Catanduva', 'BRA', 'São Paulo', '{\"Population\": 107761}'),
(404, 'Rio Verde', 'BRA', 'Goiás', '{\"Population\": 107755}'),
(405, 'Botucatu', 'BRA', 'São Paulo', '{\"Population\": 107663}'),
(406, 'Colatina', 'BRA', 'Espírito Santo', '{\"Population\": 107354}'),
(407, 'Santa Cruz do Sul', 'BRA', 'Rio Grande do Sul', '{\"Population\": 106734}'),
(408, 'Linhares', 'BRA', 'Espírito Santo', '{\"Population\": 106278}'),
(409, 'Apucarana', 'BRA', 'Paraná', '{\"Population\": 105114}'),
(410, 'Barretos', 'BRA', 'São Paulo', '{\"Population\": 104156}'),
(411, 'Guaratinguetá', 'BRA', 'São Paulo', '{\"Population\": 103433}'),
(412, 'Cachoeirinha', 'BRA', 'Rio Grande do Sul', '{\"Population\": 103240}'),
(413, 'Codó', 'BRA', 'Maranhão', '{\"Population\": 103153}'),
(414, 'Jaraguá do Sul', 'BRA', 'Santa Catarina', '{\"Population\": 102580}'),
(415, 'Cubatão', 'BRA', 'São Paulo', '{\"Population\": 102372}'),
(416, 'Itabira', 'BRA', 'Minas Gerais', '{\"Population\": 102217}'),
(417, 'Itaituba', 'BRA', 'Pará', '{\"Population\": 101320}'),
(418, 'Araras', 'BRA', 'São Paulo', '{\"Population\": 101046}'),
(419, 'Resende', 'BRA', 'Rio de Janeiro', '{\"Population\": 100627}'),
(420, 'Atibaia', 'BRA', 'São Paulo', '{\"Population\": 100356}'),
(421, 'Pouso Alegre', 'BRA', 'Minas Gerais', '{\"Population\": 100028}'),
(422, 'Toledo', 'BRA', 'Paraná', '{\"Population\": 99387}'),
(423, 'Crato', 'BRA', 'Ceará', '{\"Population\": 98965}'),
(424, 'Passos', 'BRA', 'Minas Gerais', '{\"Population\": 98570}'),
(425, 'Araguari', 'BRA', 'Minas Gerais', '{\"Population\": 98399}'),
(426, 'São José de Ribamar', 'BRA', 'Maranhão', '{\"Population\": 98318}'),
(427, 'Pinhais', 'BRA', 'Paraná', '{\"Population\": 98198}'),
(428, 'Sertãozinho', 'BRA', 'São Paulo', '{\"Population\": 98140}'),
(429, 'Conselheiro Lafaiete', 'BRA', 'Minas Gerais', '{\"Population\": 97507}'),
(430, 'Paulo Afonso', 'BRA', 'Bahia', '{\"Population\": 97291}'),
(431, 'Angra dos Reis', 'BRA', 'Rio de Janeiro', '{\"Population\": 96864}'),
(432, 'Eunápolis', 'BRA', 'Bahia', '{\"Population\": 96610}'),
(433, 'Salto', 'BRA', 'São Paulo', '{\"Population\": 96348}'),
(434, 'Ourinhos', 'BRA', 'São Paulo', '{\"Population\": 96291}'),
(435, 'Parnamirim', 'BRA', 'Rio Grande do Norte', '{\"Population\": 96210}'),
(436, 'Jacobina', 'BRA', 'Bahia', '{\"Population\": 96131}'),
(437, 'Coronel Fabriciano', 'BRA', 'Minas Gerais', '{\"Population\": 95933}'),
(438, 'Birigui', 'BRA', 'São Paulo', '{\"Population\": 94685}'),
(439, 'Tatuí', 'BRA', 'São Paulo', '{\"Population\": 93897}'),
(440, 'Ji-Paraná', 'BRA', 'Rondônia', '{\"Population\": 93346}'),
(441, 'Bacabal', 'BRA', 'Maranhão', '{\"Population\": 93121}'),
(442, 'Cametá', 'BRA', 'Pará', '{\"Population\": 92779}'),
(443, 'Guaíba', 'BRA', 'Rio Grande do Sul', '{\"Population\": 92224}'),
(444, 'São Lourenço da Mata', 'BRA', 'Pernambuco', '{\"Population\": 91999}'),
(445, 'Santana do Livramento', 'BRA', 'Rio Grande do Sul', '{\"Population\": 91779}'),
(446, 'Votorantim', 'BRA', 'São Paulo', '{\"Population\": 91777}'),
(447, 'Campo Largo', 'BRA', 'Paraná', '{\"Population\": 91203}'),
(448, 'Patos', 'BRA', 'Paraíba', '{\"Population\": 90519}'),
(449, 'Ituiutaba', 'BRA', 'Minas Gerais', '{\"Population\": 90507}'),
(450, 'Corumbá', 'BRA', 'Mato Grosso do Sul', '{\"Population\": 90111}'),
(451, 'Palhoça', 'BRA', 'Santa Catarina', '{\"Population\": 89465}'),
(452, 'Barra do Piraí', 'BRA', 'Rio de Janeiro', '{\"Population\": 89388}'),
(453, 'Bento Gonçalves', 'BRA', 'Rio Grande do Sul', '{\"Population\": 89254}'),
(454, 'Poá', 'BRA', 'São Paulo', '{\"Population\": 89236}'),
(455, 'Águas Lindas de Goiás', 'BRA', 'Goiás', '{\"Population\": 89200}'),
(456, 'London', 'GBR', 'England', '{\"Population\": 7285000}'),
(457, 'Birmingham', 'GBR', 'England', '{\"Population\": 1013000}'),
(458, 'Glasgow', 'GBR', 'Scotland', '{\"Population\": 619680}'),
(459, 'Liverpool', 'GBR', 'England', '{\"Population\": 461000}'),
(460, 'Edinburgh', 'GBR', 'Scotland', '{\"Population\": 450180}'),
(461, 'Sheffield', 'GBR', 'England', '{\"Population\": 431607}'),
(462, 'Manchester', 'GBR', 'England', '{\"Population\": 430000}'),
(463, 'Leeds', 'GBR', 'England', '{\"Population\": 424194}'),
(464, 'Bristol', 'GBR', 'England', '{\"Population\": 402000}'),
(465, 'Cardiff', 'GBR', 'Wales', '{\"Population\": 321000}'),
(466, 'Coventry', 'GBR', 'England', '{\"Population\": 304000}'),
(467, 'Leicester', 'GBR', 'England', '{\"Population\": 294000}'),
(468, 'Bradford', 'GBR', 'England', '{\"Population\": 289376}'),
(469, 'Belfast', 'GBR', 'North Ireland', '{\"Population\": 287500}'),
(470, 'Nottingham', 'GBR', 'England', '{\"Population\": 287000}'),
(471, 'Kingston upon Hull', 'GBR', 'England', '{\"Population\": 262000}'),
(472, 'Plymouth', 'GBR', 'England', '{\"Population\": 253000}'),
(473, 'Stoke-on-Trent', 'GBR', 'England', '{\"Population\": 252000}'),
(474, 'Wolverhampton', 'GBR', 'England', '{\"Population\": 242000}'),
(475, 'Derby', 'GBR', 'England', '{\"Population\": 236000}'),
(476, 'Swansea', 'GBR', 'Wales', '{\"Population\": 230000}'),
(477, 'Southampton', 'GBR', 'England', '{\"Population\": 216000}'),
(478, 'Aberdeen', 'GBR', 'Scotland', '{\"Population\": 213070}'),
(479, 'Northampton', 'GBR', 'England', '{\"Population\": 196000}'),
(480, 'Dudley', 'GBR', 'England', '{\"Population\": 192171}'),
(481, 'Portsmouth', 'GBR', 'England', '{\"Population\": 190000}'),
(482, 'Newcastle upon Tyne', 'GBR', 'England', '{\"Population\": 189150}'),
(483, 'Sunderland', 'GBR', 'England', '{\"Population\": 183310}'),
(484, 'Luton', 'GBR', 'England', '{\"Population\": 183000}'),
(485, 'Swindon', 'GBR', 'England', '{\"Population\": 180000}'),
(486, 'Southend-on-Sea', 'GBR', 'England', '{\"Population\": 176000}'),
(487, 'Walsall', 'GBR', 'England', '{\"Population\": 174739}'),
(488, 'Bournemouth', 'GBR', 'England', '{\"Population\": 162000}'),
(489, 'Peterborough', 'GBR', 'England', '{\"Population\": 156000}'),
(490, 'Brighton', 'GBR', 'England', '{\"Population\": 156124}'),
(491, 'Blackpool', 'GBR', 'England', '{\"Population\": 151000}'),
(492, 'Dundee', 'GBR', 'Scotland', '{\"Population\": 146690}'),
(493, 'West Bromwich', 'GBR', 'England', '{\"Population\": 146386}'),
(494, 'Reading', 'GBR', 'England', '{\"Population\": 148000}'),
(495, 'Oldbury/Smethwick (Warley)', 'GBR', 'England', '{\"Population\": 145542}'),
(496, 'Middlesbrough', 'GBR', 'England', '{\"Population\": 145000}'),
(497, 'Huddersfield', 'GBR', 'England', '{\"Population\": 143726}'),
(498, 'Oxford', 'GBR', 'England', '{\"Population\": 144000}'),
(499, 'Poole', 'GBR', 'England', '{\"Population\": 141000}'),
(500, 'Bolton', 'GBR', 'England', '{\"Population\": 139020}'),
(501, 'Blackburn', 'GBR', 'England', '{\"Population\": 140000}'),
(502, 'Newport', 'GBR', 'Wales', '{\"Population\": 139000}'),
(503, 'Preston', 'GBR', 'England', '{\"Population\": 135000}'),
(504, 'Stockport', 'GBR', 'England', '{\"Population\": 132813}'),
(505, 'Norwich', 'GBR', 'England', '{\"Population\": 124000}'),
(506, 'Rotherham', 'GBR', 'England', '{\"Population\": 121380}'),
(507, 'Cambridge', 'GBR', 'England', '{\"Population\": 121000}'),
(508, 'Watford', 'GBR', 'England', '{\"Population\": 113080}'),
(509, 'Ipswich', 'GBR', 'England', '{\"Population\": 114000}'),
(510, 'Slough', 'GBR', 'England', '{\"Population\": 112000}'),
(511, 'Exeter', 'GBR', 'England', '{\"Population\": 111000}'),
(512, 'Cheltenham', 'GBR', 'England', '{\"Population\": 106000}'),
(513, 'Gloucester', 'GBR', 'England', '{\"Population\": 107000}'),
(514, 'Saint Helens', 'GBR', 'England', '{\"Population\": 106293}'),
(515, 'Sutton Coldfield', 'GBR', 'England', '{\"Population\": 106001}'),
(516, 'York', 'GBR', 'England', '{\"Population\": 104425}'),
(517, 'Oldham', 'GBR', 'England', '{\"Population\": 103931}'),
(518, 'Basildon', 'GBR', 'England', '{\"Population\": 100924}'),
(519, 'Worthing', 'GBR', 'England', '{\"Population\": 100000}'),
(520, 'Chelmsford', 'GBR', 'England', '{\"Population\": 97451}'),
(521, 'Colchester', 'GBR', 'England', '{\"Population\": 96063}'),
(522, 'Crawley', 'GBR', 'England', '{\"Population\": 97000}'),
(523, 'Gillingham', 'GBR', 'England', '{\"Population\": 92000}'),
(524, 'Solihull', 'GBR', 'England', '{\"Population\": 94531}'),
(525, 'Rochdale', 'GBR', 'England', '{\"Population\": 94313}'),
(526, 'Birkenhead', 'GBR', 'England', '{\"Population\": 93087}'),
(527, 'Worcester', 'GBR', 'England', '{\"Population\": 95000}'),
(528, 'Hartlepool', 'GBR', 'England', '{\"Population\": 92000}'),
(529, 'Halifax', 'GBR', 'England', '{\"Population\": 91069}'),
(530, 'Woking/Byfleet', 'GBR', 'England', '{\"Population\": 92000}'),
(531, 'Southport', 'GBR', 'England', '{\"Population\": 90959}'),
(532, 'Maidstone', 'GBR', 'England', '{\"Population\": 90878}'),
(533, 'Eastbourne', 'GBR', 'England', '{\"Population\": 90000}'),
(534, 'Grimsby', 'GBR', 'England', '{\"Population\": 89000}'),
(535, 'Saint Helier', 'GBR', 'Jersey', '{\"Population\": 27523}'),
(536, 'Douglas', 'GBR', '–', '{\"Population\": 23487}'),
(537, 'Road Town', 'VGB', 'Tortola', '{\"Population\": 8000}'),
(538, 'Bandar Seri Begawan', 'BRN', 'Brunei and Muara', '{\"Population\": 21484}'),
(539, 'Sofija', 'BGR', 'Grad Sofija', '{\"Population\": 1122302}'),
(540, 'Plovdiv', 'BGR', 'Plovdiv', '{\"Population\": 342584}'),
(541, 'Varna', 'BGR', 'Varna', '{\"Population\": 299801}'),
(542, 'Burgas', 'BGR', 'Burgas', '{\"Population\": 195255}'),
(543, 'Ruse', 'BGR', 'Ruse', '{\"Population\": 166467}'),
(544, 'Stara Zagora', 'BGR', 'Haskovo', '{\"Population\": 147939}'),
(545, 'Pleven', 'BGR', 'Lovec', '{\"Population\": 121952}'),
(546, 'Sliven', 'BGR', 'Burgas', '{\"Population\": 105530}'),
(547, 'Dobric', 'BGR', 'Varna', '{\"Population\": 100399}'),
(548, 'Šumen', 'BGR', 'Varna', '{\"Population\": 94686}'),
(549, 'Ouagadougou', 'BFA', 'Kadiogo', '{\"Population\": 824000}'),
(550, 'Bobo-Dioulasso', 'BFA', 'Houet', '{\"Population\": 300000}'),
(551, 'Koudougou', 'BFA', 'Boulkiemdé', '{\"Population\": 105000}'),
(552, 'Bujumbura', 'BDI', 'Bujumbura', '{\"Population\": 300000}'),
(553, 'George Town', 'CYM', 'Grand Cayman', '{\"Population\": 19600}'),
(554, 'Santiago de Chile', 'CHL', 'Santiago', '{\"Population\": 4703954}'),
(555, 'Puente Alto', 'CHL', 'Santiago', '{\"Population\": 386236}'),
(556, 'Viña del Mar', 'CHL', 'Valparaíso', '{\"Population\": 312493}'),
(557, 'Valparaíso', 'CHL', 'Valparaíso', '{\"Population\": 293800}'),
(558, 'Talcahuano', 'CHL', 'Bíobío', '{\"Population\": 277752}'),
(559, 'Antofagasta', 'CHL', 'Antofagasta', '{\"Population\": 251429}'),
(560, 'San Bernardo', 'CHL', 'Santiago', '{\"Population\": 241910}'),
(561, 'Temuco', 'CHL', 'La Araucanía', '{\"Population\": 233041}'),
(562, 'Concepción', 'CHL', 'Bíobío', '{\"Population\": 217664}'),
(563, 'Rancagua', 'CHL', 'O´Higgins', '{\"Population\": 212977}'),
(564, 'Arica', 'CHL', 'Tarapacá', '{\"Population\": 189036}'),
(565, 'Talca', 'CHL', 'Maule', '{\"Population\": 187557}'),
(566, 'Chillán', 'CHL', 'Bíobío', '{\"Population\": 178182}'),
(567, 'Iquique', 'CHL', 'Tarapacá', '{\"Population\": 177892}'),
(568, 'Los Angeles', 'CHL', 'Bíobío', '{\"Population\": 158215}'),
(569, 'Puerto Montt', 'CHL', 'Los Lagos', '{\"Population\": 152194}'),
(570, 'Coquimbo', 'CHL', 'Coquimbo', '{\"Population\": 143353}'),
(571, 'Osorno', 'CHL', 'Los Lagos', '{\"Population\": 141468}'),
(572, 'La Serena', 'CHL', 'Coquimbo', '{\"Population\": 137409}'),
(573, 'Calama', 'CHL', 'Antofagasta', '{\"Population\": 137265}'),
(574, 'Valdivia', 'CHL', 'Los Lagos', '{\"Population\": 133106}'),
(575, 'Punta Arenas', 'CHL', 'Magallanes', '{\"Population\": 125631}'),
(576, 'Copiapó', 'CHL', 'Atacama', '{\"Population\": 120128}'),
(577, 'Quilpué', 'CHL', 'Valparaíso', '{\"Population\": 118857}'),
(578, 'Curicó', 'CHL', 'Maule', '{\"Population\": 115766}'),
(579, 'Ovalle', 'CHL', 'Coquimbo', '{\"Population\": 94854}'),
(580, 'Coronel', 'CHL', 'Bíobío', '{\"Population\": 93061}'),
(581, 'San Pedro de la Paz', 'CHL', 'Bíobío', '{\"Population\": 91684}'),
(582, 'Melipilla', 'CHL', 'Santiago', '{\"Population\": 91056}'),
(583, 'Avarua', 'COK', 'Rarotonga', '{\"Population\": 11900}'),
(584, 'San José', 'CRI', 'San José', '{\"Population\": 339131}'),
(585, 'Djibouti', 'DJI', 'Djibouti', '{\"Population\": 383000}'),
(586, 'Roseau', 'DMA', 'St George', '{\"Population\": 16243}'),
(587, 'Santo Domingo de Guzmán', 'DOM', 'Distrito Nacional', '{\"Population\": 1609966}'),
(588, 'Santiago de los Caballeros', 'DOM', 'Santiago', '{\"Population\": 365463}'),
(589, 'La Romana', 'DOM', 'La Romana', '{\"Population\": 140204}'),
(590, 'San Pedro de Macorís', 'DOM', 'San Pedro de Macorís', '{\"Population\": 124735}'),
(591, 'San Francisco de Macorís', 'DOM', 'Duarte', '{\"Population\": 108485}'),
(592, 'San Felipe de Puerto Plata', 'DOM', 'Puerto Plata', '{\"Population\": 89423}'),
(593, 'Guayaquil', 'ECU', 'Guayas', '{\"Population\": 2070040}'),
(594, 'Quito', 'ECU', 'Pichincha', '{\"Population\": 1573458}'),
(595, 'Cuenca', 'ECU', 'Azuay', '{\"Population\": 270353}'),
(596, 'Machala', 'ECU', 'El Oro', '{\"Population\": 210368}'),
(597, 'Santo Domingo de los Colorados', 'ECU', 'Pichincha', '{\"Population\": 202111}'),
(598, 'Portoviejo', 'ECU', 'Manabí', '{\"Population\": 176413}'),
(599, 'Ambato', 'ECU', 'Tungurahua', '{\"Population\": 169612}'),
(600, 'Manta', 'ECU', 'Manabí', '{\"Population\": 164739}'),
(601, 'Duran [Eloy Alfaro]', 'ECU', 'Guayas', '{\"Population\": 152514}'),
(602, 'Ibarra', 'ECU', 'Imbabura', '{\"Population\": 130643}'),
(603, 'Quevedo', 'ECU', 'Los Ríos', '{\"Population\": 129631}'),
(604, 'Milagro', 'ECU', 'Guayas', '{\"Population\": 124177}'),
(605, 'Loja', 'ECU', 'Loja', '{\"Population\": 123875}'),
(606, 'Ríobamba', 'ECU', 'Chimborazo', '{\"Population\": 123163}'),
(607, 'Esmeraldas', 'ECU', 'Esmeraldas', '{\"Population\": 123045}'),
(608, 'Cairo', 'EGY', 'Kairo', '{\"Population\": 6789479}'),
(609, 'Alexandria', 'EGY', 'Aleksandria', '{\"Population\": 3328196}'),
(610, 'Giza', 'EGY', 'Giza', '{\"Population\": 2221868}'),
(611, 'Shubra al-Khayma', 'EGY', 'al-Qalyubiya', '{\"Population\": 870716}'),
(612, 'Port Said', 'EGY', 'Port Said', '{\"Population\": 469533}'),
(613, 'Suez', 'EGY', 'Suez', '{\"Population\": 417610}'),
(614, 'al-Mahallat al-Kubra', 'EGY', 'al-Gharbiya', '{\"Population\": 395402}'),
(615, 'Tanta', 'EGY', 'al-Gharbiya', '{\"Population\": 371010}'),
(616, 'al-Mansura', 'EGY', 'al-Daqahliya', '{\"Population\": 369621}'),
(617, 'Luxor', 'EGY', 'Luxor', '{\"Population\": 360503}'),
(618, 'Asyut', 'EGY', 'Asyut', '{\"Population\": 343498}'),
(619, 'Bahtim', 'EGY', 'al-Qalyubiya', '{\"Population\": 275807}'),
(620, 'Zagazig', 'EGY', 'al-Sharqiya', '{\"Population\": 267351}'),
(621, 'al-Faiyum', 'EGY', 'al-Faiyum', '{\"Population\": 260964}'),
(622, 'Ismailia', 'EGY', 'Ismailia', '{\"Population\": 254477}'),
(623, 'Kafr al-Dawwar', 'EGY', 'al-Buhayra', '{\"Population\": 231978}'),
(624, 'Assuan', 'EGY', 'Assuan', '{\"Population\": 219017}'),
(625, 'Damanhur', 'EGY', 'al-Buhayra', '{\"Population\": 212203}'),
(626, 'al-Minya', 'EGY', 'al-Minya', '{\"Population\": 201360}'),
(627, 'Bani Suwayf', 'EGY', 'Bani Suwayf', '{\"Population\": 172032}'),
(628, 'Qina', 'EGY', 'Qina', '{\"Population\": 171275}'),
(629, 'Sawhaj', 'EGY', 'Sawhaj', '{\"Population\": 170125}'),
(630, 'Shibin al-Kawm', 'EGY', 'al-Minufiya', '{\"Population\": 159909}'),
(631, 'Bulaq al-Dakrur', 'EGY', 'Giza', '{\"Population\": 148787}'),
(632, 'Banha', 'EGY', 'al-Qalyubiya', '{\"Population\": 145792}'),
(633, 'Warraq al-Arab', 'EGY', 'Giza', '{\"Population\": 127108}'),
(634, 'Kafr al-Shaykh', 'EGY', 'Kafr al-Shaykh', '{\"Population\": 124819}'),
(635, 'Mallawi', 'EGY', 'al-Minya', '{\"Population\": 119283}'),
(636, 'Bilbays', 'EGY', 'al-Sharqiya', '{\"Population\": 113608}'),
(637, 'Mit Ghamr', 'EGY', 'al-Daqahliya', '{\"Population\": 101801}'),
(638, 'al-Arish', 'EGY', 'Shamal Sina', '{\"Population\": 100447}'),
(639, 'Talkha', 'EGY', 'al-Daqahliya', '{\"Population\": 97700}'),
(640, 'Qalyub', 'EGY', 'al-Qalyubiya', '{\"Population\": 97200}'),
(641, 'Jirja', 'EGY', 'Sawhaj', '{\"Population\": 95400}'),
(642, 'Idfu', 'EGY', 'Qina', '{\"Population\": 94200}'),
(643, 'al-Hawamidiya', 'EGY', 'Giza', '{\"Population\": 91700}'),
(644, 'Disuq', 'EGY', 'Kafr al-Shaykh', '{\"Population\": 91300}'),
(645, 'San Salvador', 'SLV', 'San Salvador', '{\"Population\": 415346}'),
(646, 'Santa Ana', 'SLV', 'Santa Ana', '{\"Population\": 139389}'),
(647, 'Mejicanos', 'SLV', 'San Salvador', '{\"Population\": 138800}'),
(648, 'Soyapango', 'SLV', 'San Salvador', '{\"Population\": 129800}'),
(649, 'San Miguel', 'SLV', 'San Miguel', '{\"Population\": 127696}'),
(650, 'Nueva San Salvador', 'SLV', 'La Libertad', '{\"Population\": 98400}'),
(651, 'Apopa', 'SLV', 'San Salvador', '{\"Population\": 88800}'),
(652, 'Asmara', 'ERI', 'Maekel', '{\"Population\": 431000}'),
(653, 'Madrid', 'ESP', 'Madrid', '{\"Population\": 2879052}'),
(654, 'Barcelona', 'ESP', 'Katalonia', '{\"Population\": 1503451}'),
(655, 'Valencia', 'ESP', 'Valencia', '{\"Population\": 739412}'),
(656, 'Sevilla', 'ESP', 'Andalusia', '{\"Population\": 701927}'),
(657, 'Zaragoza', 'ESP', 'Aragonia', '{\"Population\": 603367}'),
(658, 'Málaga', 'ESP', 'Andalusia', '{\"Population\": 530553}'),
(659, 'Bilbao', 'ESP', 'Baskimaa', '{\"Population\": 357589}'),
(660, 'Las Palmas de Gran Canaria', 'ESP', 'Canary Islands', '{\"Population\": 354757}'),
(661, 'Murcia', 'ESP', 'Murcia', '{\"Population\": 353504}'),
(662, 'Palma de Mallorca', 'ESP', 'Balears', '{\"Population\": 326993}'),
(663, 'Valladolid', 'ESP', 'Castilla and León', '{\"Population\": 319998}'),
(664, 'Córdoba', 'ESP', 'Andalusia', '{\"Population\": 311708}'),
(665, 'Vigo', 'ESP', 'Galicia', '{\"Population\": 283670}'),
(666, 'Alicante [Alacant]', 'ESP', 'Valencia', '{\"Population\": 272432}'),
(667, 'Gijón', 'ESP', 'Asturia', '{\"Population\": 267980}'),
(668, 'L´Hospitalet de Llobregat', 'ESP', 'Katalonia', '{\"Population\": 247986}'),
(669, 'Granada', 'ESP', 'Andalusia', '{\"Population\": 244767}'),
(670, 'A Coruña (La Coruña)', 'ESP', 'Galicia', '{\"Population\": 243402}'),
(671, 'Vitoria-Gasteiz', 'ESP', 'Baskimaa', '{\"Population\": 217154}'),
(672, 'Santa Cruz de Tenerife', 'ESP', 'Canary Islands', '{\"Population\": 213050}'),
(673, 'Badalona', 'ESP', 'Katalonia', '{\"Population\": 209635}'),
(674, 'Oviedo', 'ESP', 'Asturia', '{\"Population\": 200453}'),
(675, 'Móstoles', 'ESP', 'Madrid', '{\"Population\": 195351}'),
(676, 'Elche [Elx]', 'ESP', 'Valencia', '{\"Population\": 193174}'),
(677, 'Sabadell', 'ESP', 'Katalonia', '{\"Population\": 184859}'),
(678, 'Santander', 'ESP', 'Cantabria', '{\"Population\": 184165}'),
(679, 'Jerez de la Frontera', 'ESP', 'Andalusia', '{\"Population\": 182660}'),
(680, 'Pamplona [Iruña]', 'ESP', 'Navarra', '{\"Population\": 180483}'),
(681, 'Donostia-San Sebastián', 'ESP', 'Baskimaa', '{\"Population\": 179208}'),
(682, 'Cartagena', 'ESP', 'Murcia', '{\"Population\": 177709}'),
(683, 'Leganés', 'ESP', 'Madrid', '{\"Population\": 173163}'),
(684, 'Fuenlabrada', 'ESP', 'Madrid', '{\"Population\": 171173}'),
(685, 'Almería', 'ESP', 'Andalusia', '{\"Population\": 169027}'),
(686, 'Terrassa', 'ESP', 'Katalonia', '{\"Population\": 168695}'),
(687, 'Alcalá de Henares', 'ESP', 'Madrid', '{\"Population\": 164463}'),
(688, 'Burgos', 'ESP', 'Castilla and León', '{\"Population\": 162802}'),
(689, 'Salamanca', 'ESP', 'Castilla and León', '{\"Population\": 158720}'),
(690, 'Albacete', 'ESP', 'Kastilia-La Mancha', '{\"Population\": 147527}'),
(691, 'Getafe', 'ESP', 'Madrid', '{\"Population\": 145371}'),
(692, 'Cádiz', 'ESP', 'Andalusia', '{\"Population\": 142449}'),
(693, 'Alcorcón', 'ESP', 'Madrid', '{\"Population\": 142048}'),
(694, 'Huelva', 'ESP', 'Andalusia', '{\"Population\": 140583}'),
(695, 'León', 'ESP', 'Castilla and León', '{\"Population\": 139809}'),
(696, 'Castellón de la Plana [Castell', 'ESP', 'Valencia', '{\"Population\": 139712}'),
(697, 'Badajoz', 'ESP', 'Extremadura', '{\"Population\": 136613}'),
(698, '[San Cristóbal de] la Laguna', 'ESP', 'Canary Islands', '{\"Population\": 127945}'),
(699, 'Logroño', 'ESP', 'La Rioja', '{\"Population\": 127093}'),
(700, 'Santa Coloma de Gramenet', 'ESP', 'Katalonia', '{\"Population\": 120802}'),
(701, 'Tarragona', 'ESP', 'Katalonia', '{\"Population\": 113016}'),
(702, 'Lleida (Lérida)', 'ESP', 'Katalonia', '{\"Population\": 112207}'),
(703, 'Jaén', 'ESP', 'Andalusia', '{\"Population\": 109247}'),
(704, 'Ourense (Orense)', 'ESP', 'Galicia', '{\"Population\": 109120}'),
(705, 'Mataró', 'ESP', 'Katalonia', '{\"Population\": 104095}'),
(706, 'Algeciras', 'ESP', 'Andalusia', '{\"Population\": 103106}'),
(707, 'Marbella', 'ESP', 'Andalusia', '{\"Population\": 101144}'),
(708, 'Barakaldo', 'ESP', 'Baskimaa', '{\"Population\": 98212}'),
(709, 'Dos Hermanas', 'ESP', 'Andalusia', '{\"Population\": 94591}'),
(710, 'Santiago de Compostela', 'ESP', 'Galicia', '{\"Population\": 93745}'),
(711, 'Torrejón de Ardoz', 'ESP', 'Madrid', '{\"Population\": 92262}'),
(712, 'Cape Town', 'ZAF', 'Western Cape', '{\"Population\": 2352121}'),
(713, 'Soweto', 'ZAF', 'Gauteng', '{\"Population\": 904165}'),
(714, 'Johannesburg', 'ZAF', 'Gauteng', '{\"Population\": 756653}'),
(715, 'Port Elizabeth', 'ZAF', 'Eastern Cape', '{\"Population\": 752319}'),
(716, 'Pretoria', 'ZAF', 'Gauteng', '{\"Population\": 658630}'),
(717, 'Inanda', 'ZAF', 'KwaZulu-Natal', '{\"Population\": 634065}'),
(718, 'Durban', 'ZAF', 'KwaZulu-Natal', '{\"Population\": 566120}'),
(719, 'Vanderbijlpark', 'ZAF', 'Gauteng', '{\"Population\": 468931}'),
(720, 'Kempton Park', 'ZAF', 'Gauteng', '{\"Population\": 442633}'),
(721, 'Alberton', 'ZAF', 'Gauteng', '{\"Population\": 410102}'),
(722, 'Pinetown', 'ZAF', 'KwaZulu-Natal', '{\"Population\": 378810}'),
(723, 'Pietermaritzburg', 'ZAF', 'KwaZulu-Natal', '{\"Population\": 370190}'),
(724, 'Benoni', 'ZAF', 'Gauteng', '{\"Population\": 365467}'),
(725, 'Randburg', 'ZAF', 'Gauteng', '{\"Population\": 341288}'),
(726, 'Umlazi', 'ZAF', 'KwaZulu-Natal', '{\"Population\": 339233}'),
(727, 'Bloemfontein', 'ZAF', 'Free State', '{\"Population\": 334341}'),
(728, 'Vereeniging', 'ZAF', 'Gauteng', '{\"Population\": 328535}'),
(729, 'Wonderboom', 'ZAF', 'Gauteng', '{\"Population\": 283289}'),
(730, 'Roodepoort', 'ZAF', 'Gauteng', '{\"Population\": 279340}'),
(731, 'Boksburg', 'ZAF', 'Gauteng', '{\"Population\": 262648}'),
(732, 'Klerksdorp', 'ZAF', 'North West', '{\"Population\": 261911}'),
(733, 'Soshanguve', 'ZAF', 'Gauteng', '{\"Population\": 242727}'),
(734, 'Newcastle', 'ZAF', 'KwaZulu-Natal', '{\"Population\": 222993}'),
(735, 'East London', 'ZAF', 'Eastern Cape', '{\"Population\": 221047}'),
(736, 'Welkom', 'ZAF', 'Free State', '{\"Population\": 203296}'),
(737, 'Kimberley', 'ZAF', 'Northern Cape', '{\"Population\": 197254}'),
(738, 'Uitenhage', 'ZAF', 'Eastern Cape', '{\"Population\": 192120}'),
(739, 'Chatsworth', 'ZAF', 'KwaZulu-Natal', '{\"Population\": 189885}'),
(740, 'Mdantsane', 'ZAF', 'Eastern Cape', '{\"Population\": 182639}'),
(741, 'Krugersdorp', 'ZAF', 'Gauteng', '{\"Population\": 181503}'),
(742, 'Botshabelo', 'ZAF', 'Free State', '{\"Population\": 177971}'),
(743, 'Brakpan', 'ZAF', 'Gauteng', '{\"Population\": 171363}'),
(744, 'Witbank', 'ZAF', 'Mpumalanga', '{\"Population\": 167183}'),
(745, 'Oberholzer', 'ZAF', 'Gauteng', '{\"Population\": 164367}'),
(746, 'Germiston', 'ZAF', 'Gauteng', '{\"Population\": 164252}'),
(747, 'Springs', 'ZAF', 'Gauteng', '{\"Population\": 162072}'),
(748, 'Westonaria', 'ZAF', 'Gauteng', '{\"Population\": 159632}'),
(749, 'Randfontein', 'ZAF', 'Gauteng', '{\"Population\": 120838}'),
(750, 'Paarl', 'ZAF', 'Western Cape', '{\"Population\": 105768}');
INSERT INTO `city` (`ID`, `Name`, `CountryCode`, `District`, `Info`) VALUES
(751, 'Potchefstroom', 'ZAF', 'North West', '{\"Population\": 101817}'),
(752, 'Rustenburg', 'ZAF', 'North West', '{\"Population\": 97008}'),
(753, 'Nigel', 'ZAF', 'Gauteng', '{\"Population\": 96734}'),
(754, 'George', 'ZAF', 'Western Cape', '{\"Population\": 93818}'),
(755, 'Ladysmith', 'ZAF', 'KwaZulu-Natal', '{\"Population\": 89292}'),
(756, 'Addis Abeba', 'ETH', 'Addis Abeba', '{\"Population\": 2495000}'),
(757, 'Dire Dawa', 'ETH', 'Dire Dawa', '{\"Population\": 164851}'),
(758, 'Nazret', 'ETH', 'Oromia', '{\"Population\": 127842}'),
(759, 'Gonder', 'ETH', 'Amhara', '{\"Population\": 112249}'),
(760, 'Dese', 'ETH', 'Amhara', '{\"Population\": 97314}'),
(761, 'Mekele', 'ETH', 'Tigray', '{\"Population\": 96938}'),
(762, 'Bahir Dar', 'ETH', 'Amhara', '{\"Population\": 96140}'),
(763, 'Stanley', 'FLK', 'East Falkland', '{\"Population\": 1636}'),
(764, 'Suva', 'FJI', 'Central', '{\"Population\": 77366}'),
(765, 'Quezon', 'PHL', 'National Capital Reg', '{\"Population\": 2173831}'),
(766, 'Manila', 'PHL', 'National Capital Reg', '{\"Population\": 1581082}'),
(767, 'Kalookan', 'PHL', 'National Capital Reg', '{\"Population\": 1177604}'),
(768, 'Davao', 'PHL', 'Southern Mindanao', '{\"Population\": 1147116}'),
(769, 'Cebu', 'PHL', 'Central Visayas', '{\"Population\": 718821}'),
(770, 'Zamboanga', 'PHL', 'Western Mindanao', '{\"Population\": 601794}'),
(771, 'Pasig', 'PHL', 'National Capital Reg', '{\"Population\": 505058}'),
(772, 'Valenzuela', 'PHL', 'National Capital Reg', '{\"Population\": 485433}'),
(773, 'Las Piñas', 'PHL', 'National Capital Reg', '{\"Population\": 472780}'),
(774, 'Antipolo', 'PHL', 'Southern Tagalog', '{\"Population\": 470866}'),
(775, 'Taguig', 'PHL', 'National Capital Reg', '{\"Population\": 467375}'),
(776, 'Cagayan de Oro', 'PHL', 'Northern Mindanao', '{\"Population\": 461877}'),
(777, 'Parañaque', 'PHL', 'National Capital Reg', '{\"Population\": 449811}'),
(778, 'Makati', 'PHL', 'National Capital Reg', '{\"Population\": 444867}'),
(779, 'Bacolod', 'PHL', 'Western Visayas', '{\"Population\": 429076}'),
(780, 'General Santos', 'PHL', 'Southern Mindanao', '{\"Population\": 411822}'),
(781, 'Marikina', 'PHL', 'National Capital Reg', '{\"Population\": 391170}'),
(782, 'Dasmariñas', 'PHL', 'Southern Tagalog', '{\"Population\": 379520}'),
(783, 'Muntinlupa', 'PHL', 'National Capital Reg', '{\"Population\": 379310}'),
(784, 'Iloilo', 'PHL', 'Western Visayas', '{\"Population\": 365820}'),
(785, 'Pasay', 'PHL', 'National Capital Reg', '{\"Population\": 354908}'),
(786, 'Malabon', 'PHL', 'National Capital Reg', '{\"Population\": 338855}'),
(787, 'San José del Monte', 'PHL', 'Central Luzon', '{\"Population\": 315807}'),
(788, 'Bacoor', 'PHL', 'Southern Tagalog', '{\"Population\": 305699}'),
(789, 'Iligan', 'PHL', 'Central Mindanao', '{\"Population\": 285061}'),
(790, 'Calamba', 'PHL', 'Southern Tagalog', '{\"Population\": 281146}'),
(791, 'Mandaluyong', 'PHL', 'National Capital Reg', '{\"Population\": 278474}'),
(792, 'Butuan', 'PHL', 'Caraga', '{\"Population\": 267279}'),
(793, 'Angeles', 'PHL', 'Central Luzon', '{\"Population\": 263971}'),
(794, 'Tarlac', 'PHL', 'Central Luzon', '{\"Population\": 262481}'),
(795, 'Mandaue', 'PHL', 'Central Visayas', '{\"Population\": 259728}'),
(796, 'Baguio', 'PHL', 'CAR', '{\"Population\": 252386}'),
(797, 'Batangas', 'PHL', 'Southern Tagalog', '{\"Population\": 247588}'),
(798, 'Cainta', 'PHL', 'Southern Tagalog', '{\"Population\": 242511}'),
(799, 'San Pedro', 'PHL', 'Southern Tagalog', '{\"Population\": 231403}'),
(800, 'Navotas', 'PHL', 'National Capital Reg', '{\"Population\": 230403}'),
(801, 'Cabanatuan', 'PHL', 'Central Luzon', '{\"Population\": 222859}'),
(802, 'San Fernando', 'PHL', 'Central Luzon', '{\"Population\": 221857}'),
(803, 'Lipa', 'PHL', 'Southern Tagalog', '{\"Population\": 218447}'),
(804, 'Lapu-Lapu', 'PHL', 'Central Visayas', '{\"Population\": 217019}'),
(805, 'San Pablo', 'PHL', 'Southern Tagalog', '{\"Population\": 207927}'),
(806, 'Biñan', 'PHL', 'Southern Tagalog', '{\"Population\": 201186}'),
(807, 'Taytay', 'PHL', 'Southern Tagalog', '{\"Population\": 198183}'),
(808, 'Lucena', 'PHL', 'Southern Tagalog', '{\"Population\": 196075}'),
(809, 'Imus', 'PHL', 'Southern Tagalog', '{\"Population\": 195482}'),
(810, 'Olongapo', 'PHL', 'Central Luzon', '{\"Population\": 194260}'),
(811, 'Binangonan', 'PHL', 'Southern Tagalog', '{\"Population\": 187691}'),
(812, 'Santa Rosa', 'PHL', 'Southern Tagalog', '{\"Population\": 185633}'),
(813, 'Tagum', 'PHL', 'Southern Mindanao', '{\"Population\": 179531}'),
(814, 'Tacloban', 'PHL', 'Eastern Visayas', '{\"Population\": 178639}'),
(815, 'Malolos', 'PHL', 'Central Luzon', '{\"Population\": 175291}'),
(816, 'Mabalacat', 'PHL', 'Central Luzon', '{\"Population\": 171045}'),
(817, 'Cotabato', 'PHL', 'Central Mindanao', '{\"Population\": 163849}'),
(818, 'Meycauayan', 'PHL', 'Central Luzon', '{\"Population\": 163037}'),
(819, 'Puerto Princesa', 'PHL', 'Southern Tagalog', '{\"Population\": 161912}'),
(820, 'Legazpi', 'PHL', 'Bicol', '{\"Population\": 157010}'),
(821, 'Silang', 'PHL', 'Southern Tagalog', '{\"Population\": 156137}'),
(822, 'Ormoc', 'PHL', 'Eastern Visayas', '{\"Population\": 154297}'),
(823, 'San Carlos', 'PHL', 'Ilocos', '{\"Population\": 154264}'),
(824, 'Kabankalan', 'PHL', 'Western Visayas', '{\"Population\": 149769}'),
(825, 'Talisay', 'PHL', 'Central Visayas', '{\"Population\": 148110}'),
(826, 'Valencia', 'PHL', 'Northern Mindanao', '{\"Population\": 147924}'),
(827, 'Calbayog', 'PHL', 'Eastern Visayas', '{\"Population\": 147187}'),
(828, 'Santa Maria', 'PHL', 'Central Luzon', '{\"Population\": 144282}'),
(829, 'Pagadian', 'PHL', 'Western Mindanao', '{\"Population\": 142515}'),
(830, 'Cadiz', 'PHL', 'Western Visayas', '{\"Population\": 141954}'),
(831, 'Bago', 'PHL', 'Western Visayas', '{\"Population\": 141721}'),
(832, 'Toledo', 'PHL', 'Central Visayas', '{\"Population\": 141174}'),
(833, 'Naga', 'PHL', 'Bicol', '{\"Population\": 137810}'),
(834, 'San Mateo', 'PHL', 'Southern Tagalog', '{\"Population\": 135603}'),
(835, 'Panabo', 'PHL', 'Southern Mindanao', '{\"Population\": 133950}'),
(836, 'Koronadal', 'PHL', 'Southern Mindanao', '{\"Population\": 133786}'),
(837, 'Marawi', 'PHL', 'Central Mindanao', '{\"Population\": 131090}'),
(838, 'Dagupan', 'PHL', 'Ilocos', '{\"Population\": 130328}'),
(839, 'Sagay', 'PHL', 'Western Visayas', '{\"Population\": 129765}'),
(840, 'Roxas', 'PHL', 'Western Visayas', '{\"Population\": 126352}'),
(841, 'Lubao', 'PHL', 'Central Luzon', '{\"Population\": 125699}'),
(842, 'Digos', 'PHL', 'Southern Mindanao', '{\"Population\": 125171}'),
(843, 'San Miguel', 'PHL', 'Central Luzon', '{\"Population\": 123824}'),
(844, 'Malaybalay', 'PHL', 'Northern Mindanao', '{\"Population\": 123672}'),
(845, 'Tuguegarao', 'PHL', 'Cagayan Valley', '{\"Population\": 120645}'),
(846, 'Ilagan', 'PHL', 'Cagayan Valley', '{\"Population\": 119990}'),
(847, 'Baliuag', 'PHL', 'Central Luzon', '{\"Population\": 119675}'),
(848, 'Surigao', 'PHL', 'Caraga', '{\"Population\": 118534}'),
(849, 'San Carlos', 'PHL', 'Western Visayas', '{\"Population\": 118259}'),
(850, 'San Juan del Monte', 'PHL', 'National Capital Reg', '{\"Population\": 117680}'),
(851, 'Tanauan', 'PHL', 'Southern Tagalog', '{\"Population\": 117539}'),
(852, 'Concepcion', 'PHL', 'Central Luzon', '{\"Population\": 115171}'),
(853, 'Rodriguez (Montalban)', 'PHL', 'Southern Tagalog', '{\"Population\": 115167}'),
(854, 'Sariaya', 'PHL', 'Southern Tagalog', '{\"Population\": 114568}'),
(855, 'Malasiqui', 'PHL', 'Ilocos', '{\"Population\": 113190}'),
(856, 'General Mariano Alvarez', 'PHL', 'Southern Tagalog', '{\"Population\": 112446}'),
(857, 'Urdaneta', 'PHL', 'Ilocos', '{\"Population\": 111582}'),
(858, 'Hagonoy', 'PHL', 'Central Luzon', '{\"Population\": 111425}'),
(859, 'San Jose', 'PHL', 'Southern Tagalog', '{\"Population\": 111009}'),
(860, 'Polomolok', 'PHL', 'Southern Mindanao', '{\"Population\": 110709}'),
(861, 'Santiago', 'PHL', 'Cagayan Valley', '{\"Population\": 110531}'),
(862, 'Tanza', 'PHL', 'Southern Tagalog', '{\"Population\": 110517}'),
(863, 'Ozamis', 'PHL', 'Northern Mindanao', '{\"Population\": 110420}'),
(864, 'Mexico', 'PHL', 'Central Luzon', '{\"Population\": 109481}'),
(865, 'San Jose', 'PHL', 'Central Luzon', '{\"Population\": 108254}'),
(866, 'Silay', 'PHL', 'Western Visayas', '{\"Population\": 107722}'),
(867, 'General Trias', 'PHL', 'Southern Tagalog', '{\"Population\": 107691}'),
(868, 'Tabaco', 'PHL', 'Bicol', '{\"Population\": 107166}'),
(869, 'Cabuyao', 'PHL', 'Southern Tagalog', '{\"Population\": 106630}'),
(870, 'Calapan', 'PHL', 'Southern Tagalog', '{\"Population\": 105910}'),
(871, 'Mati', 'PHL', 'Southern Mindanao', '{\"Population\": 105908}'),
(872, 'Midsayap', 'PHL', 'Central Mindanao', '{\"Population\": 105760}'),
(873, 'Cauayan', 'PHL', 'Cagayan Valley', '{\"Population\": 103952}'),
(874, 'Gingoog', 'PHL', 'Northern Mindanao', '{\"Population\": 102379}'),
(875, 'Dumaguete', 'PHL', 'Central Visayas', '{\"Population\": 102265}'),
(876, 'San Fernando', 'PHL', 'Ilocos', '{\"Population\": 102082}'),
(877, 'Arayat', 'PHL', 'Central Luzon', '{\"Population\": 101792}'),
(878, 'Bayawan (Tulong)', 'PHL', 'Central Visayas', '{\"Population\": 101391}'),
(879, 'Kidapawan', 'PHL', 'Central Mindanao', '{\"Population\": 101205}'),
(880, 'Daraga (Locsin)', 'PHL', 'Bicol', '{\"Population\": 101031}'),
(881, 'Marilao', 'PHL', 'Central Luzon', '{\"Population\": 101017}'),
(882, 'Malita', 'PHL', 'Southern Mindanao', '{\"Population\": 100000}'),
(883, 'Dipolog', 'PHL', 'Western Mindanao', '{\"Population\": 99862}'),
(884, 'Cavite', 'PHL', 'Southern Tagalog', '{\"Population\": 99367}'),
(885, 'Danao', 'PHL', 'Central Visayas', '{\"Population\": 98781}'),
(886, 'Bislig', 'PHL', 'Caraga', '{\"Population\": 97860}'),
(887, 'Talavera', 'PHL', 'Central Luzon', '{\"Population\": 97329}'),
(888, 'Guagua', 'PHL', 'Central Luzon', '{\"Population\": 96858}'),
(889, 'Bayambang', 'PHL', 'Ilocos', '{\"Population\": 96609}'),
(890, 'Nasugbu', 'PHL', 'Southern Tagalog', '{\"Population\": 96113}'),
(891, 'Baybay', 'PHL', 'Eastern Visayas', '{\"Population\": 95630}'),
(892, 'Capas', 'PHL', 'Central Luzon', '{\"Population\": 95219}'),
(893, 'Sultan Kudarat', 'PHL', 'ARMM', '{\"Population\": 94861}'),
(894, 'Laoag', 'PHL', 'Ilocos', '{\"Population\": 94466}'),
(895, 'Bayugan', 'PHL', 'Caraga', '{\"Population\": 93623}'),
(896, 'Malungon', 'PHL', 'Southern Mindanao', '{\"Population\": 93232}'),
(897, 'Santa Cruz', 'PHL', 'Southern Tagalog', '{\"Population\": 92694}'),
(898, 'Sorsogon', 'PHL', 'Bicol', '{\"Population\": 92512}'),
(899, 'Candelaria', 'PHL', 'Southern Tagalog', '{\"Population\": 92429}'),
(900, 'Ligao', 'PHL', 'Bicol', '{\"Population\": 90603}'),
(901, 'Tórshavn', 'FRO', 'Streymoyar', '{\"Population\": 14542}'),
(902, 'Libreville', 'GAB', 'Estuaire', '{\"Population\": 419000}'),
(903, 'Serekunda', 'GMB', 'Kombo St Mary', '{\"Population\": 102600}'),
(904, 'Banjul', 'GMB', 'Banjul', '{\"Population\": 42326}'),
(905, 'Tbilisi', 'GEO', 'Tbilisi', '{\"Population\": 1235200}'),
(906, 'Kutaisi', 'GEO', 'Imereti', '{\"Population\": 240900}'),
(907, 'Rustavi', 'GEO', 'Kvemo Kartli', '{\"Population\": 155400}'),
(908, 'Batumi', 'GEO', 'Adzaria [Atšara]', '{\"Population\": 137700}'),
(909, 'Sohumi', 'GEO', 'Abhasia [Aphazeti]', '{\"Population\": 111700}'),
(910, 'Accra', 'GHA', 'Greater Accra', '{\"Population\": 1070000}'),
(911, 'Kumasi', 'GHA', 'Ashanti', '{\"Population\": 385192}'),
(912, 'Tamale', 'GHA', 'Northern', '{\"Population\": 151069}'),
(913, 'Tema', 'GHA', 'Greater Accra', '{\"Population\": 109975}'),
(914, 'Sekondi-Takoradi', 'GHA', 'Western', '{\"Population\": 103653}'),
(915, 'Gibraltar', 'GIB', '–', '{\"Population\": 27025}'),
(916, 'Saint George´s', 'GRD', 'St George', '{\"Population\": 4621}'),
(917, 'Nuuk', 'GRL', 'Kitaa', '{\"Population\": 13445}'),
(918, 'Les Abymes', 'GLP', 'Grande-Terre', '{\"Population\": 62947}'),
(919, 'Basse-Terre', 'GLP', 'Basse-Terre', '{\"Population\": 12433}'),
(920, 'Tamuning', 'GUM', '–', '{\"Population\": 9500}'),
(921, 'Agaña', 'GUM', '–', '{\"Population\": 1139}'),
(922, 'Ciudad de Guatemala', 'GTM', 'Guatemala', '{\"Population\": 823301}'),
(923, 'Mixco', 'GTM', 'Guatemala', '{\"Population\": 209791}'),
(924, 'Villa Nueva', 'GTM', 'Guatemala', '{\"Population\": 101295}'),
(925, 'Quetzaltenango', 'GTM', 'Quetzaltenango', '{\"Population\": 90801}'),
(926, 'Conakry', 'GIN', 'Conakry', '{\"Population\": 1090610}'),
(927, 'Bissau', 'GNB', 'Bissau', '{\"Population\": 241000}'),
(928, 'Georgetown', 'GUY', 'Georgetown', '{\"Population\": 254000}'),
(929, 'Port-au-Prince', 'HTI', 'Ouest', '{\"Population\": 884472}'),
(930, 'Carrefour', 'HTI', 'Ouest', '{\"Population\": 290204}'),
(931, 'Delmas', 'HTI', 'Ouest', '{\"Population\": 240429}'),
(932, 'Le-Cap-Haïtien', 'HTI', 'Nord', '{\"Population\": 102233}'),
(933, 'Tegucigalpa', 'HND', 'Distrito Central', '{\"Population\": 813900}'),
(934, 'San Pedro Sula', 'HND', 'Cortés', '{\"Population\": 383900}'),
(935, 'La Ceiba', 'HND', 'Atlántida', '{\"Population\": 89200}'),
(936, 'Kowloon and New Kowloon', 'HKG', 'Kowloon and New Kowl', '{\"Population\": 1987996}'),
(937, 'Victoria', 'HKG', 'Hongkong', '{\"Population\": 1312637}'),
(938, 'Longyearbyen', 'SJM', 'Länsimaa', '{\"Population\": 1438}'),
(939, 'Jakarta', 'IDN', 'Jakarta Raya', '{\"Population\": 9604900}'),
(940, 'Surabaya', 'IDN', 'East Java', '{\"Population\": 2663820}'),
(941, 'Bandung', 'IDN', 'West Java', '{\"Population\": 2429000}'),
(942, 'Medan', 'IDN', 'Sumatera Utara', '{\"Population\": 1843919}'),
(943, 'Palembang', 'IDN', 'Sumatera Selatan', '{\"Population\": 1222764}'),
(944, 'Tangerang', 'IDN', 'West Java', '{\"Population\": 1198300}'),
(945, 'Semarang', 'IDN', 'Central Java', '{\"Population\": 1104405}'),
(946, 'Ujung Pandang', 'IDN', 'Sulawesi Selatan', '{\"Population\": 1060257}'),
(947, 'Malang', 'IDN', 'East Java', '{\"Population\": 716862}'),
(948, 'Bandar Lampung', 'IDN', 'Lampung', '{\"Population\": 680332}'),
(949, 'Bekasi', 'IDN', 'West Java', '{\"Population\": 644300}'),
(950, 'Padang', 'IDN', 'Sumatera Barat', '{\"Population\": 534474}'),
(951, 'Surakarta', 'IDN', 'Central Java', '{\"Population\": 518600}'),
(952, 'Banjarmasin', 'IDN', 'Kalimantan Selatan', '{\"Population\": 482931}'),
(953, 'Pekan Baru', 'IDN', 'Riau', '{\"Population\": 438638}'),
(954, 'Denpasar', 'IDN', 'Bali', '{\"Population\": 435000}'),
(955, 'Yogyakarta', 'IDN', 'Yogyakarta', '{\"Population\": 418944}'),
(956, 'Pontianak', 'IDN', 'Kalimantan Barat', '{\"Population\": 409632}'),
(957, 'Samarinda', 'IDN', 'Kalimantan Timur', '{\"Population\": 399175}'),
(958, 'Jambi', 'IDN', 'Jambi', '{\"Population\": 385201}'),
(959, 'Depok', 'IDN', 'West Java', '{\"Population\": 365200}'),
(960, 'Cimahi', 'IDN', 'West Java', '{\"Population\": 344600}'),
(961, 'Balikpapan', 'IDN', 'Kalimantan Timur', '{\"Population\": 338752}'),
(962, 'Manado', 'IDN', 'Sulawesi Utara', '{\"Population\": 332288}'),
(963, 'Mataram', 'IDN', 'Nusa Tenggara Barat', '{\"Population\": 306600}'),
(964, 'Pekalongan', 'IDN', 'Central Java', '{\"Population\": 301504}'),
(965, 'Tegal', 'IDN', 'Central Java', '{\"Population\": 289744}'),
(966, 'Bogor', 'IDN', 'West Java', '{\"Population\": 285114}'),
(967, 'Ciputat', 'IDN', 'West Java', '{\"Population\": 270800}'),
(968, 'Pondokgede', 'IDN', 'West Java', '{\"Population\": 263200}'),
(969, 'Cirebon', 'IDN', 'West Java', '{\"Population\": 254406}'),
(970, 'Kediri', 'IDN', 'East Java', '{\"Population\": 253760}'),
(971, 'Ambon', 'IDN', 'Molukit', '{\"Population\": 249312}'),
(972, 'Jember', 'IDN', 'East Java', '{\"Population\": 218500}'),
(973, 'Cilacap', 'IDN', 'Central Java', '{\"Population\": 206900}'),
(974, 'Cimanggis', 'IDN', 'West Java', '{\"Population\": 205100}'),
(975, 'Pematang Siantar', 'IDN', 'Sumatera Utara', '{\"Population\": 203056}'),
(976, 'Purwokerto', 'IDN', 'Central Java', '{\"Population\": 202500}'),
(977, 'Ciomas', 'IDN', 'West Java', '{\"Population\": 187400}'),
(978, 'Tasikmalaya', 'IDN', 'West Java', '{\"Population\": 179800}'),
(979, 'Madiun', 'IDN', 'East Java', '{\"Population\": 171532}'),
(980, 'Bengkulu', 'IDN', 'Bengkulu', '{\"Population\": 146439}'),
(981, 'Karawang', 'IDN', 'West Java', '{\"Population\": 145000}'),
(982, 'Banda Aceh', 'IDN', 'Aceh', '{\"Population\": 143409}'),
(983, 'Palu', 'IDN', 'Sulawesi Tengah', '{\"Population\": 142800}'),
(984, 'Pasuruan', 'IDN', 'East Java', '{\"Population\": 134019}'),
(985, 'Kupang', 'IDN', 'Nusa Tenggara Timur', '{\"Population\": 129300}'),
(986, 'Tebing Tinggi', 'IDN', 'Sumatera Utara', '{\"Population\": 129300}'),
(987, 'Percut Sei Tuan', 'IDN', 'Sumatera Utara', '{\"Population\": 129000}'),
(988, 'Binjai', 'IDN', 'Sumatera Utara', '{\"Population\": 127222}'),
(989, 'Sukabumi', 'IDN', 'West Java', '{\"Population\": 125766}'),
(990, 'Waru', 'IDN', 'East Java', '{\"Population\": 124300}'),
(991, 'Pangkal Pinang', 'IDN', 'Sumatera Selatan', '{\"Population\": 124000}'),
(992, 'Magelang', 'IDN', 'Central Java', '{\"Population\": 123800}'),
(993, 'Blitar', 'IDN', 'East Java', '{\"Population\": 122600}'),
(994, 'Serang', 'IDN', 'West Java', '{\"Population\": 122400}'),
(995, 'Probolinggo', 'IDN', 'East Java', '{\"Population\": 120770}'),
(996, 'Cilegon', 'IDN', 'West Java', '{\"Population\": 117000}'),
(997, 'Cianjur', 'IDN', 'West Java', '{\"Population\": 114300}'),
(998, 'Ciparay', 'IDN', 'West Java', '{\"Population\": 111500}'),
(999, 'Lhokseumawe', 'IDN', 'Aceh', '{\"Population\": 109600}'),
(1000, 'Taman', 'IDN', 'East Java', '{\"Population\": 107000}'),
(1001, 'Depok', 'IDN', 'Yogyakarta', '{\"Population\": 106800}'),
(1002, 'Citeureup', 'IDN', 'West Java', '{\"Population\": 105100}'),
(1003, 'Pemalang', 'IDN', 'Central Java', '{\"Population\": 103500}'),
(1004, 'Klaten', 'IDN', 'Central Java', '{\"Population\": 103300}'),
(1005, 'Salatiga', 'IDN', 'Central Java', '{\"Population\": 103000}'),
(1006, 'Cibinong', 'IDN', 'West Java', '{\"Population\": 101300}'),
(1007, 'Palangka Raya', 'IDN', 'Kalimantan Tengah', '{\"Population\": 99693}'),
(1008, 'Mojokerto', 'IDN', 'East Java', '{\"Population\": 96626}'),
(1009, 'Purwakarta', 'IDN', 'West Java', '{\"Population\": 95900}'),
(1010, 'Garut', 'IDN', 'West Java', '{\"Population\": 95800}'),
(1011, 'Kudus', 'IDN', 'Central Java', '{\"Population\": 95300}'),
(1012, 'Kendari', 'IDN', 'Sulawesi Tenggara', '{\"Population\": 94800}'),
(1013, 'Jaya Pura', 'IDN', 'West Irian', '{\"Population\": 94700}'),
(1014, 'Gorontalo', 'IDN', 'Sulawesi Utara', '{\"Population\": 94058}'),
(1015, 'Majalaya', 'IDN', 'West Java', '{\"Population\": 93200}'),
(1016, 'Pondok Aren', 'IDN', 'West Java', '{\"Population\": 92700}'),
(1017, 'Jombang', 'IDN', 'East Java', '{\"Population\": 92600}'),
(1018, 'Sunggal', 'IDN', 'Sumatera Utara', '{\"Population\": 92300}'),
(1019, 'Batam', 'IDN', 'Riau', '{\"Population\": 91871}'),
(1020, 'Padang Sidempuan', 'IDN', 'Sumatera Utara', '{\"Population\": 91200}'),
(1021, 'Sawangan', 'IDN', 'West Java', '{\"Population\": 91100}'),
(1022, 'Banyuwangi', 'IDN', 'East Java', '{\"Population\": 89900}'),
(1023, 'Tanjung Pinang', 'IDN', 'Riau', '{\"Population\": 89900}'),
(1024, 'Mumbai (Bombay)', 'IND', 'Maharashtra', '{\"Population\": 10500000}'),
(1025, 'Delhi', 'IND', 'Delhi', '{\"Population\": 7206704}'),
(1026, 'Calcutta [Kolkata]', 'IND', 'West Bengali', '{\"Population\": 4399819}'),
(1027, 'Chennai (Madras)', 'IND', 'Tamil Nadu', '{\"Population\": 3841396}'),
(1028, 'Hyderabad', 'IND', 'Andhra Pradesh', '{\"Population\": 2964638}'),
(1029, 'Ahmedabad', 'IND', 'Gujarat', '{\"Population\": 2876710}'),
(1030, 'Bangalore', 'IND', 'Karnataka', '{\"Population\": 2660088}'),
(1031, 'Kanpur', 'IND', 'Uttar Pradesh', '{\"Population\": 1874409}'),
(1032, 'Nagpur', 'IND', 'Maharashtra', '{\"Population\": 1624752}'),
(1033, 'Lucknow', 'IND', 'Uttar Pradesh', '{\"Population\": 1619115}'),
(1034, 'Pune', 'IND', 'Maharashtra', '{\"Population\": 1566651}'),
(1035, 'Surat', 'IND', 'Gujarat', '{\"Population\": 1498817}'),
(1036, 'Jaipur', 'IND', 'Rajasthan', '{\"Population\": 1458483}'),
(1037, 'Indore', 'IND', 'Madhya Pradesh', '{\"Population\": 1091674}'),
(1038, 'Bhopal', 'IND', 'Madhya Pradesh', '{\"Population\": 1062771}'),
(1039, 'Ludhiana', 'IND', 'Punjab', '{\"Population\": 1042740}'),
(1040, 'Vadodara (Baroda)', 'IND', 'Gujarat', '{\"Population\": 1031346}'),
(1041, 'Kalyan', 'IND', 'Maharashtra', '{\"Population\": 1014557}'),
(1042, 'Madurai', 'IND', 'Tamil Nadu', '{\"Population\": 977856}'),
(1043, 'Haora (Howrah)', 'IND', 'West Bengali', '{\"Population\": 950435}'),
(1044, 'Varanasi (Benares)', 'IND', 'Uttar Pradesh', '{\"Population\": 929270}'),
(1045, 'Patna', 'IND', 'Bihar', '{\"Population\": 917243}'),
(1046, 'Srinagar', 'IND', 'Jammu and Kashmir', '{\"Population\": 892506}'),
(1047, 'Agra', 'IND', 'Uttar Pradesh', '{\"Population\": 891790}'),
(1048, 'Coimbatore', 'IND', 'Tamil Nadu', '{\"Population\": 816321}'),
(1049, 'Thane (Thana)', 'IND', 'Maharashtra', '{\"Population\": 803389}'),
(1050, 'Allahabad', 'IND', 'Uttar Pradesh', '{\"Population\": 792858}'),
(1051, 'Meerut', 'IND', 'Uttar Pradesh', '{\"Population\": 753778}'),
(1052, 'Vishakhapatnam', 'IND', 'Andhra Pradesh', '{\"Population\": 752037}'),
(1053, 'Jabalpur', 'IND', 'Madhya Pradesh', '{\"Population\": 741927}'),
(1054, 'Amritsar', 'IND', 'Punjab', '{\"Population\": 708835}'),
(1055, 'Faridabad', 'IND', 'Haryana', '{\"Population\": 703592}'),
(1056, 'Vijayawada', 'IND', 'Andhra Pradesh', '{\"Population\": 701827}'),
(1057, 'Gwalior', 'IND', 'Madhya Pradesh', '{\"Population\": 690765}'),
(1058, 'Jodhpur', 'IND', 'Rajasthan', '{\"Population\": 666279}'),
(1059, 'Nashik (Nasik)', 'IND', 'Maharashtra', '{\"Population\": 656925}'),
(1060, 'Hubli-Dharwad', 'IND', 'Karnataka', '{\"Population\": 648298}'),
(1061, 'Solapur (Sholapur)', 'IND', 'Maharashtra', '{\"Population\": 604215}'),
(1062, 'Ranchi', 'IND', 'Jharkhand', '{\"Population\": 599306}'),
(1063, 'Bareilly', 'IND', 'Uttar Pradesh', '{\"Population\": 587211}'),
(1064, 'Guwahati (Gauhati)', 'IND', 'Assam', '{\"Population\": 584342}'),
(1065, 'Shambajinagar (Aurangabad)', 'IND', 'Maharashtra', '{\"Population\": 573272}'),
(1066, 'Cochin (Kochi)', 'IND', 'Kerala', '{\"Population\": 564589}'),
(1067, 'Rajkot', 'IND', 'Gujarat', '{\"Population\": 559407}'),
(1068, 'Kota', 'IND', 'Rajasthan', '{\"Population\": 537371}'),
(1069, 'Thiruvananthapuram (Trivandrum', 'IND', 'Kerala', '{\"Population\": 524006}'),
(1070, 'Pimpri-Chinchwad', 'IND', 'Maharashtra', '{\"Population\": 517083}'),
(1071, 'Jalandhar (Jullundur)', 'IND', 'Punjab', '{\"Population\": 509510}'),
(1072, 'Gorakhpur', 'IND', 'Uttar Pradesh', '{\"Population\": 505566}'),
(1073, 'Chandigarh', 'IND', 'Chandigarh', '{\"Population\": 504094}'),
(1074, 'Mysore', 'IND', 'Karnataka', '{\"Population\": 480692}'),
(1075, 'Aligarh', 'IND', 'Uttar Pradesh', '{\"Population\": 480520}'),
(1076, 'Guntur', 'IND', 'Andhra Pradesh', '{\"Population\": 471051}'),
(1077, 'Jamshedpur', 'IND', 'Jharkhand', '{\"Population\": 460577}'),
(1078, 'Ghaziabad', 'IND', 'Uttar Pradesh', '{\"Population\": 454156}'),
(1079, 'Warangal', 'IND', 'Andhra Pradesh', '{\"Population\": 447657}'),
(1080, 'Raipur', 'IND', 'Chhatisgarh', '{\"Population\": 438639}'),
(1081, 'Moradabad', 'IND', 'Uttar Pradesh', '{\"Population\": 429214}'),
(1082, 'Durgapur', 'IND', 'West Bengali', '{\"Population\": 425836}'),
(1083, 'Amravati', 'IND', 'Maharashtra', '{\"Population\": 421576}'),
(1084, 'Calicut (Kozhikode)', 'IND', 'Kerala', '{\"Population\": 419831}'),
(1085, 'Bikaner', 'IND', 'Rajasthan', '{\"Population\": 416289}'),
(1086, 'Bhubaneswar', 'IND', 'Orissa', '{\"Population\": 411542}'),
(1087, 'Kolhapur', 'IND', 'Maharashtra', '{\"Population\": 406370}'),
(1088, 'Kataka (Cuttack)', 'IND', 'Orissa', '{\"Population\": 403418}'),
(1089, 'Ajmer', 'IND', 'Rajasthan', '{\"Population\": 402700}'),
(1090, 'Bhavnagar', 'IND', 'Gujarat', '{\"Population\": 402338}'),
(1091, 'Tiruchirapalli', 'IND', 'Tamil Nadu', '{\"Population\": 387223}'),
(1092, 'Bhilai', 'IND', 'Chhatisgarh', '{\"Population\": 386159}'),
(1093, 'Bhiwandi', 'IND', 'Maharashtra', '{\"Population\": 379070}'),
(1094, 'Saharanpur', 'IND', 'Uttar Pradesh', '{\"Population\": 374945}'),
(1095, 'Ulhasnagar', 'IND', 'Maharashtra', '{\"Population\": 369077}'),
(1096, 'Salem', 'IND', 'Tamil Nadu', '{\"Population\": 366712}'),
(1097, 'Ujjain', 'IND', 'Madhya Pradesh', '{\"Population\": 362266}'),
(1098, 'Malegaon', 'IND', 'Maharashtra', '{\"Population\": 342595}'),
(1099, 'Jamnagar', 'IND', 'Gujarat', '{\"Population\": 341637}'),
(1100, 'Bokaro Steel City', 'IND', 'Jharkhand', '{\"Population\": 333683}'),
(1101, 'Akola', 'IND', 'Maharashtra', '{\"Population\": 328034}'),
(1102, 'Belgaum', 'IND', 'Karnataka', '{\"Population\": 326399}'),
(1103, 'Rajahmundry', 'IND', 'Andhra Pradesh', '{\"Population\": 324851}'),
(1104, 'Nellore', 'IND', 'Andhra Pradesh', '{\"Population\": 316606}'),
(1105, 'Udaipur', 'IND', 'Rajasthan', '{\"Population\": 308571}'),
(1106, 'New Bombay', 'IND', 'Maharashtra', '{\"Population\": 307297}'),
(1107, 'Bhatpara', 'IND', 'West Bengali', '{\"Population\": 304952}'),
(1108, 'Gulbarga', 'IND', 'Karnataka', '{\"Population\": 304099}'),
(1109, 'New Delhi', 'IND', 'Delhi', '{\"Population\": 301297}'),
(1110, 'Jhansi', 'IND', 'Uttar Pradesh', '{\"Population\": 300850}'),
(1111, 'Gaya', 'IND', 'Bihar', '{\"Population\": 291675}'),
(1112, 'Kakinada', 'IND', 'Andhra Pradesh', '{\"Population\": 279980}'),
(1113, 'Dhule (Dhulia)', 'IND', 'Maharashtra', '{\"Population\": 278317}'),
(1114, 'Panihati', 'IND', 'West Bengali', '{\"Population\": 275990}'),
(1115, 'Nanded (Nander)', 'IND', 'Maharashtra', '{\"Population\": 275083}'),
(1116, 'Mangalore', 'IND', 'Karnataka', '{\"Population\": 273304}'),
(1117, 'Dehra Dun', 'IND', 'Uttaranchal', '{\"Population\": 270159}'),
(1118, 'Kamarhati', 'IND', 'West Bengali', '{\"Population\": 266889}'),
(1119, 'Davangere', 'IND', 'Karnataka', '{\"Population\": 266082}'),
(1120, 'Asansol', 'IND', 'West Bengali', '{\"Population\": 262188}'),
(1121, 'Bhagalpur', 'IND', 'Bihar', '{\"Population\": 253225}'),
(1122, 'Bellary', 'IND', 'Karnataka', '{\"Population\": 245391}'),
(1123, 'Barddhaman (Burdwan)', 'IND', 'West Bengali', '{\"Population\": 245079}'),
(1124, 'Rampur', 'IND', 'Uttar Pradesh', '{\"Population\": 243742}'),
(1125, 'Jalgaon', 'IND', 'Maharashtra', '{\"Population\": 242193}'),
(1126, 'Muzaffarpur', 'IND', 'Bihar', '{\"Population\": 241107}'),
(1127, 'Nizamabad', 'IND', 'Andhra Pradesh', '{\"Population\": 241034}'),
(1128, 'Muzaffarnagar', 'IND', 'Uttar Pradesh', '{\"Population\": 240609}'),
(1129, 'Patiala', 'IND', 'Punjab', '{\"Population\": 238368}'),
(1130, 'Shahjahanpur', 'IND', 'Uttar Pradesh', '{\"Population\": 237713}'),
(1131, 'Kurnool', 'IND', 'Andhra Pradesh', '{\"Population\": 236800}'),
(1132, 'Tiruppur (Tirupper)', 'IND', 'Tamil Nadu', '{\"Population\": 235661}'),
(1133, 'Rohtak', 'IND', 'Haryana', '{\"Population\": 233400}'),
(1134, 'South Dum Dum', 'IND', 'West Bengali', '{\"Population\": 232811}'),
(1135, 'Mathura', 'IND', 'Uttar Pradesh', '{\"Population\": 226691}'),
(1136, 'Chandrapur', 'IND', 'Maharashtra', '{\"Population\": 226105}'),
(1137, 'Barahanagar (Baranagar)', 'IND', 'West Bengali', '{\"Population\": 224821}'),
(1138, 'Darbhanga', 'IND', 'Bihar', '{\"Population\": 218391}'),
(1139, 'Siliguri (Shiliguri)', 'IND', 'West Bengali', '{\"Population\": 216950}'),
(1140, 'Raurkela', 'IND', 'Orissa', '{\"Population\": 215489}'),
(1141, 'Ambattur', 'IND', 'Tamil Nadu', '{\"Population\": 215424}'),
(1142, 'Panipat', 'IND', 'Haryana', '{\"Population\": 215218}'),
(1143, 'Firozabad', 'IND', 'Uttar Pradesh', '{\"Population\": 215128}'),
(1144, 'Ichalkaranji', 'IND', 'Maharashtra', '{\"Population\": 214950}'),
(1145, 'Jammu', 'IND', 'Jammu and Kashmir', '{\"Population\": 214737}'),
(1146, 'Ramagundam', 'IND', 'Andhra Pradesh', '{\"Population\": 214384}'),
(1147, 'Eluru', 'IND', 'Andhra Pradesh', '{\"Population\": 212866}'),
(1148, 'Brahmapur', 'IND', 'Orissa', '{\"Population\": 210418}'),
(1149, 'Alwar', 'IND', 'Rajasthan', '{\"Population\": 205086}'),
(1150, 'Pondicherry', 'IND', 'Pondicherry', '{\"Population\": 203065}'),
(1151, 'Thanjavur', 'IND', 'Tamil Nadu', '{\"Population\": 202013}'),
(1152, 'Bihar Sharif', 'IND', 'Bihar', '{\"Population\": 201323}'),
(1153, 'Tuticorin', 'IND', 'Tamil Nadu', '{\"Population\": 199854}'),
(1154, 'Imphal', 'IND', 'Manipur', '{\"Population\": 198535}'),
(1155, 'Latur', 'IND', 'Maharashtra', '{\"Population\": 197408}'),
(1156, 'Sagar', 'IND', 'Madhya Pradesh', '{\"Population\": 195346}'),
(1157, 'Farrukhabad-cum-Fatehgarh', 'IND', 'Uttar Pradesh', '{\"Population\": 194567}'),
(1158, 'Sangli', 'IND', 'Maharashtra', '{\"Population\": 193197}'),
(1159, 'Parbhani', 'IND', 'Maharashtra', '{\"Population\": 190255}'),
(1160, 'Nagar Coil', 'IND', 'Tamil Nadu', '{\"Population\": 190084}'),
(1161, 'Bijapur', 'IND', 'Karnataka', '{\"Population\": 186939}'),
(1162, 'Kukatpalle', 'IND', 'Andhra Pradesh', '{\"Population\": 185378}'),
(1163, 'Bally', 'IND', 'West Bengali', '{\"Population\": 184474}'),
(1164, 'Bhilwara', 'IND', 'Rajasthan', '{\"Population\": 183965}'),
(1165, 'Ratlam', 'IND', 'Madhya Pradesh', '{\"Population\": 183375}'),
(1166, 'Avadi', 'IND', 'Tamil Nadu', '{\"Population\": 183215}'),
(1167, 'Dindigul', 'IND', 'Tamil Nadu', '{\"Population\": 182477}'),
(1168, 'Ahmadnagar', 'IND', 'Maharashtra', '{\"Population\": 181339}'),
(1169, 'Bilaspur', 'IND', 'Chhatisgarh', '{\"Population\": 179833}'),
(1170, 'Shimoga', 'IND', 'Karnataka', '{\"Population\": 179258}'),
(1171, 'Kharagpur', 'IND', 'West Bengali', '{\"Population\": 177989}'),
(1172, 'Mira Bhayandar', 'IND', 'Maharashtra', '{\"Population\": 175372}'),
(1173, 'Vellore', 'IND', 'Tamil Nadu', '{\"Population\": 175061}'),
(1174, 'Jalna', 'IND', 'Maharashtra', '{\"Population\": 174985}'),
(1175, 'Burnpur', 'IND', 'West Bengali', '{\"Population\": 174933}'),
(1176, 'Anantapur', 'IND', 'Andhra Pradesh', '{\"Population\": 174924}'),
(1177, 'Allappuzha (Alleppey)', 'IND', 'Kerala', '{\"Population\": 174666}'),
(1178, 'Tirupati', 'IND', 'Andhra Pradesh', '{\"Population\": 174369}'),
(1179, 'Karnal', 'IND', 'Haryana', '{\"Population\": 173751}'),
(1180, 'Burhanpur', 'IND', 'Madhya Pradesh', '{\"Population\": 172710}'),
(1181, 'Hisar (Hissar)', 'IND', 'Haryana', '{\"Population\": 172677}'),
(1182, 'Tiruvottiyur', 'IND', 'Tamil Nadu', '{\"Population\": 172562}'),
(1183, 'Mirzapur-cum-Vindhyachal', 'IND', 'Uttar Pradesh', '{\"Population\": 169336}'),
(1184, 'Secunderabad', 'IND', 'Andhra Pradesh', '{\"Population\": 167461}'),
(1185, 'Nadiad', 'IND', 'Gujarat', '{\"Population\": 167051}'),
(1186, 'Dewas', 'IND', 'Madhya Pradesh', '{\"Population\": 164364}'),
(1187, 'Murwara (Katni)', 'IND', 'Madhya Pradesh', '{\"Population\": 163431}'),
(1188, 'Ganganagar', 'IND', 'Rajasthan', '{\"Population\": 161482}'),
(1189, 'Vizianagaram', 'IND', 'Andhra Pradesh', '{\"Population\": 160359}'),
(1190, 'Erode', 'IND', 'Tamil Nadu', '{\"Population\": 159232}'),
(1191, 'Machilipatnam (Masulipatam)', 'IND', 'Andhra Pradesh', '{\"Population\": 159110}'),
(1192, 'Bhatinda (Bathinda)', 'IND', 'Punjab', '{\"Population\": 159042}'),
(1193, 'Raichur', 'IND', 'Karnataka', '{\"Population\": 157551}'),
(1194, 'Agartala', 'IND', 'Tripura', '{\"Population\": 157358}'),
(1195, 'Arrah (Ara)', 'IND', 'Bihar', '{\"Population\": 157082}'),
(1196, 'Satna', 'IND', 'Madhya Pradesh', '{\"Population\": 156630}'),
(1197, 'Lalbahadur Nagar', 'IND', 'Andhra Pradesh', '{\"Population\": 155500}'),
(1198, 'Aizawl', 'IND', 'Mizoram', '{\"Population\": 155240}'),
(1199, 'Uluberia', 'IND', 'West Bengali', '{\"Population\": 155172}'),
(1200, 'Katihar', 'IND', 'Bihar', '{\"Population\": 154367}'),
(1201, 'Cuddalore', 'IND', 'Tamil Nadu', '{\"Population\": 153086}'),
(1202, 'Hugli-Chinsurah', 'IND', 'West Bengali', '{\"Population\": 151806}'),
(1203, 'Dhanbad', 'IND', 'Jharkhand', '{\"Population\": 151789}'),
(1204, 'Raiganj', 'IND', 'West Bengali', '{\"Population\": 151045}'),
(1205, 'Sambhal', 'IND', 'Uttar Pradesh', '{\"Population\": 150869}'),
(1206, 'Durg', 'IND', 'Chhatisgarh', '{\"Population\": 150645}'),
(1207, 'Munger (Monghyr)', 'IND', 'Bihar', '{\"Population\": 150112}'),
(1208, 'Kanchipuram', 'IND', 'Tamil Nadu', '{\"Population\": 150100}'),
(1209, 'North Dum Dum', 'IND', 'West Bengali', '{\"Population\": 149965}'),
(1210, 'Karimnagar', 'IND', 'Andhra Pradesh', '{\"Population\": 148583}'),
(1211, 'Bharatpur', 'IND', 'Rajasthan', '{\"Population\": 148519}'),
(1212, 'Sikar', 'IND', 'Rajasthan', '{\"Population\": 148272}'),
(1213, 'Hardwar (Haridwar)', 'IND', 'Uttaranchal', '{\"Population\": 147305}'),
(1214, 'Dabgram', 'IND', 'West Bengali', '{\"Population\": 147217}'),
(1215, 'Morena', 'IND', 'Madhya Pradesh', '{\"Population\": 147124}'),
(1216, 'Noida', 'IND', 'Uttar Pradesh', '{\"Population\": 146514}'),
(1217, 'Hapur', 'IND', 'Uttar Pradesh', '{\"Population\": 146262}'),
(1218, 'Bhusawal', 'IND', 'Maharashtra', '{\"Population\": 145143}'),
(1219, 'Khandwa', 'IND', 'Madhya Pradesh', '{\"Population\": 145133}'),
(1220, 'Yamuna Nagar', 'IND', 'Haryana', '{\"Population\": 144346}'),
(1221, 'Sonipat (Sonepat)', 'IND', 'Haryana', '{\"Population\": 143922}'),
(1222, 'Tenali', 'IND', 'Andhra Pradesh', '{\"Population\": 143726}'),
(1223, 'Raurkela Civil Township', 'IND', 'Orissa', '{\"Population\": 140408}'),
(1224, 'Kollam (Quilon)', 'IND', 'Kerala', '{\"Population\": 139852}'),
(1225, 'Kumbakonam', 'IND', 'Tamil Nadu', '{\"Population\": 139483}'),
(1226, 'Ingraj Bazar (English Bazar)', 'IND', 'West Bengali', '{\"Population\": 139204}'),
(1227, 'Timkur', 'IND', 'Karnataka', '{\"Population\": 138903}'),
(1228, 'Amroha', 'IND', 'Uttar Pradesh', '{\"Population\": 137061}'),
(1229, 'Serampore', 'IND', 'West Bengali', '{\"Population\": 137028}'),
(1230, 'Chapra', 'IND', 'Bihar', '{\"Population\": 136877}'),
(1231, 'Pali', 'IND', 'Rajasthan', '{\"Population\": 136842}'),
(1232, 'Maunath Bhanjan', 'IND', 'Uttar Pradesh', '{\"Population\": 136697}'),
(1233, 'Adoni', 'IND', 'Andhra Pradesh', '{\"Population\": 136182}'),
(1234, 'Jaunpur', 'IND', 'Uttar Pradesh', '{\"Population\": 136062}'),
(1235, 'Tirunelveli', 'IND', 'Tamil Nadu', '{\"Population\": 135825}'),
(1236, 'Bahraich', 'IND', 'Uttar Pradesh', '{\"Population\": 135400}'),
(1237, 'Gadag Betigeri', 'IND', 'Karnataka', '{\"Population\": 134051}'),
(1238, 'Proddatur', 'IND', 'Andhra Pradesh', '{\"Population\": 133914}'),
(1239, 'Chittoor', 'IND', 'Andhra Pradesh', '{\"Population\": 133462}'),
(1240, 'Barrackpur', 'IND', 'West Bengali', '{\"Population\": 133265}'),
(1241, 'Bharuch (Broach)', 'IND', 'Gujarat', '{\"Population\": 133102}'),
(1242, 'Naihati', 'IND', 'West Bengali', '{\"Population\": 132701}'),
(1243, 'Shillong', 'IND', 'Meghalaya', '{\"Population\": 131719}'),
(1244, 'Sambalpur', 'IND', 'Orissa', '{\"Population\": 131138}'),
(1245, 'Junagadh', 'IND', 'Gujarat', '{\"Population\": 130484}'),
(1246, 'Rae Bareli', 'IND', 'Uttar Pradesh', '{\"Population\": 129904}'),
(1247, 'Rewa', 'IND', 'Madhya Pradesh', '{\"Population\": 128981}'),
(1248, 'Gurgaon', 'IND', 'Haryana', '{\"Population\": 128608}'),
(1249, 'Khammam', 'IND', 'Andhra Pradesh', '{\"Population\": 127992}'),
(1250, 'Bulandshahr', 'IND', 'Uttar Pradesh', '{\"Population\": 127201}'),
(1251, 'Navsari', 'IND', 'Gujarat', '{\"Population\": 126089}'),
(1252, 'Malkajgiri', 'IND', 'Andhra Pradesh', '{\"Population\": 126066}'),
(1253, 'Midnapore (Medinipur)', 'IND', 'West Bengali', '{\"Population\": 125498}'),
(1254, 'Miraj', 'IND', 'Maharashtra', '{\"Population\": 125407}'),
(1255, 'Raj Nandgaon', 'IND', 'Chhatisgarh', '{\"Population\": 125371}'),
(1256, 'Alandur', 'IND', 'Tamil Nadu', '{\"Population\": 125244}'),
(1257, 'Puri', 'IND', 'Orissa', '{\"Population\": 125199}'),
(1258, 'Navadwip', 'IND', 'West Bengali', '{\"Population\": 125037}'),
(1259, 'Sirsa', 'IND', 'Haryana', '{\"Population\": 125000}'),
(1260, 'Korba', 'IND', 'Chhatisgarh', '{\"Population\": 124501}'),
(1261, 'Faizabad', 'IND', 'Uttar Pradesh', '{\"Population\": 124437}'),
(1262, 'Etawah', 'IND', 'Uttar Pradesh', '{\"Population\": 124072}'),
(1263, 'Pathankot', 'IND', 'Punjab', '{\"Population\": 123930}'),
(1264, 'Gandhinagar', 'IND', 'Gujarat', '{\"Population\": 123359}'),
(1265, 'Palghat (Palakkad)', 'IND', 'Kerala', '{\"Population\": 123289}'),
(1266, 'Veraval', 'IND', 'Gujarat', '{\"Population\": 123000}'),
(1267, 'Hoshiarpur', 'IND', 'Punjab', '{\"Population\": 122705}'),
(1268, 'Ambala', 'IND', 'Haryana', '{\"Population\": 122596}'),
(1269, 'Sitapur', 'IND', 'Uttar Pradesh', '{\"Population\": 121842}'),
(1270, 'Bhiwani', 'IND', 'Haryana', '{\"Population\": 121629}'),
(1271, 'Cuddapah', 'IND', 'Andhra Pradesh', '{\"Population\": 121463}'),
(1272, 'Bhimavaram', 'IND', 'Andhra Pradesh', '{\"Population\": 121314}'),
(1273, 'Krishnanagar', 'IND', 'West Bengali', '{\"Population\": 121110}'),
(1274, 'Chandannagar', 'IND', 'West Bengali', '{\"Population\": 120378}'),
(1275, 'Mandya', 'IND', 'Karnataka', '{\"Population\": 120265}'),
(1276, 'Dibrugarh', 'IND', 'Assam', '{\"Population\": 120127}'),
(1277, 'Nandyal', 'IND', 'Andhra Pradesh', '{\"Population\": 119813}'),
(1278, 'Balurghat', 'IND', 'West Bengali', '{\"Population\": 119796}'),
(1279, 'Neyveli', 'IND', 'Tamil Nadu', '{\"Population\": 118080}'),
(1280, 'Fatehpur', 'IND', 'Uttar Pradesh', '{\"Population\": 117675}'),
(1281, 'Mahbubnagar', 'IND', 'Andhra Pradesh', '{\"Population\": 116833}'),
(1282, 'Budaun', 'IND', 'Uttar Pradesh', '{\"Population\": 116695}'),
(1283, 'Porbandar', 'IND', 'Gujarat', '{\"Population\": 116671}'),
(1284, 'Silchar', 'IND', 'Assam', '{\"Population\": 115483}'),
(1285, 'Berhampore (Baharampur)', 'IND', 'West Bengali', '{\"Population\": 115144}'),
(1286, 'Purnea (Purnia)', 'IND', 'Jharkhand', '{\"Population\": 114912}'),
(1287, 'Bankura', 'IND', 'West Bengali', '{\"Population\": 114876}'),
(1288, 'Rajapalaiyam', 'IND', 'Tamil Nadu', '{\"Population\": 114202}'),
(1289, 'Titagarh', 'IND', 'West Bengali', '{\"Population\": 114085}'),
(1290, 'Halisahar', 'IND', 'West Bengali', '{\"Population\": 114028}'),
(1291, 'Hathras', 'IND', 'Uttar Pradesh', '{\"Population\": 113285}'),
(1292, 'Bhir (Bid)', 'IND', 'Maharashtra', '{\"Population\": 112434}'),
(1293, 'Pallavaram', 'IND', 'Tamil Nadu', '{\"Population\": 111866}'),
(1294, 'Anand', 'IND', 'Gujarat', '{\"Population\": 110266}'),
(1295, 'Mango', 'IND', 'Jharkhand', '{\"Population\": 110024}'),
(1296, 'Santipur', 'IND', 'West Bengali', '{\"Population\": 109956}'),
(1297, 'Bhind', 'IND', 'Madhya Pradesh', '{\"Population\": 109755}'),
(1298, 'Gondiya', 'IND', 'Maharashtra', '{\"Population\": 109470}'),
(1299, 'Tiruvannamalai', 'IND', 'Tamil Nadu', '{\"Population\": 109196}'),
(1300, 'Yeotmal (Yavatmal)', 'IND', 'Maharashtra', '{\"Population\": 108578}'),
(1301, 'Kulti-Barakar', 'IND', 'West Bengali', '{\"Population\": 108518}'),
(1302, 'Moga', 'IND', 'Punjab', '{\"Population\": 108304}'),
(1303, 'Shivapuri', 'IND', 'Madhya Pradesh', '{\"Population\": 108277}'),
(1304, 'Bidar', 'IND', 'Karnataka', '{\"Population\": 108016}'),
(1305, 'Guntakal', 'IND', 'Andhra Pradesh', '{\"Population\": 107592}'),
(1306, 'Unnao', 'IND', 'Uttar Pradesh', '{\"Population\": 107425}'),
(1307, 'Barasat', 'IND', 'West Bengali', '{\"Population\": 107365}'),
(1308, 'Tambaram', 'IND', 'Tamil Nadu', '{\"Population\": 107187}'),
(1309, 'Abohar', 'IND', 'Punjab', '{\"Population\": 107163}'),
(1310, 'Pilibhit', 'IND', 'Uttar Pradesh', '{\"Population\": 106605}'),
(1311, 'Valparai', 'IND', 'Tamil Nadu', '{\"Population\": 106523}'),
(1312, 'Gonda', 'IND', 'Uttar Pradesh', '{\"Population\": 106078}'),
(1313, 'Surendranagar', 'IND', 'Gujarat', '{\"Population\": 105973}'),
(1314, 'Qutubullapur', 'IND', 'Andhra Pradesh', '{\"Population\": 105380}'),
(1315, 'Beawar', 'IND', 'Rajasthan', '{\"Population\": 105363}'),
(1316, 'Hindupur', 'IND', 'Andhra Pradesh', '{\"Population\": 104651}'),
(1317, 'Gandhidham', 'IND', 'Gujarat', '{\"Population\": 104585}'),
(1318, 'Haldwani-cum-Kathgodam', 'IND', 'Uttaranchal', '{\"Population\": 104195}'),
(1319, 'Tellicherry (Thalassery)', 'IND', 'Kerala', '{\"Population\": 103579}'),
(1320, 'Wardha', 'IND', 'Maharashtra', '{\"Population\": 102985}'),
(1321, 'Rishra', 'IND', 'West Bengali', '{\"Population\": 102649}'),
(1322, 'Bhuj', 'IND', 'Gujarat', '{\"Population\": 102176}'),
(1323, 'Modinagar', 'IND', 'Uttar Pradesh', '{\"Population\": 101660}'),
(1324, 'Gudivada', 'IND', 'Andhra Pradesh', '{\"Population\": 101656}'),
(1325, 'Basirhat', 'IND', 'West Bengali', '{\"Population\": 101409}'),
(1326, 'Uttarpara-Kotrung', 'IND', 'West Bengali', '{\"Population\": 100867}'),
(1327, 'Ongole', 'IND', 'Andhra Pradesh', '{\"Population\": 100836}'),
(1328, 'North Barrackpur', 'IND', 'West Bengali', '{\"Population\": 100513}'),
(1329, 'Guna', 'IND', 'Madhya Pradesh', '{\"Population\": 100490}'),
(1330, 'Haldia', 'IND', 'West Bengali', '{\"Population\": 100347}'),
(1331, 'Habra', 'IND', 'West Bengali', '{\"Population\": 100223}'),
(1332, 'Kanchrapara', 'IND', 'West Bengali', '{\"Population\": 100194}'),
(1333, 'Tonk', 'IND', 'Rajasthan', '{\"Population\": 100079}'),
(1334, 'Champdani', 'IND', 'West Bengali', '{\"Population\": 98818}'),
(1335, 'Orai', 'IND', 'Uttar Pradesh', '{\"Population\": 98640}'),
(1336, 'Pudukkottai', 'IND', 'Tamil Nadu', '{\"Population\": 98619}'),
(1337, 'Sasaram', 'IND', 'Bihar', '{\"Population\": 98220}'),
(1338, 'Hazaribag', 'IND', 'Jharkhand', '{\"Population\": 97712}'),
(1339, 'Palayankottai', 'IND', 'Tamil Nadu', '{\"Population\": 97662}'),
(1340, 'Banda', 'IND', 'Uttar Pradesh', '{\"Population\": 97227}'),
(1341, 'Godhra', 'IND', 'Gujarat', '{\"Population\": 96813}'),
(1342, 'Hospet', 'IND', 'Karnataka', '{\"Population\": 96322}'),
(1343, 'Ashoknagar-Kalyangarh', 'IND', 'West Bengali', '{\"Population\": 96315}'),
(1344, 'Achalpur', 'IND', 'Maharashtra', '{\"Population\": 96216}'),
(1345, 'Patan', 'IND', 'Gujarat', '{\"Population\": 96109}'),
(1346, 'Mandasor', 'IND', 'Madhya Pradesh', '{\"Population\": 95758}'),
(1347, 'Damoh', 'IND', 'Madhya Pradesh', '{\"Population\": 95661}'),
(1348, 'Satara', 'IND', 'Maharashtra', '{\"Population\": 95133}'),
(1349, 'Meerut Cantonment', 'IND', 'Uttar Pradesh', '{\"Population\": 94876}'),
(1350, 'Dehri', 'IND', 'Bihar', '{\"Population\": 94526}'),
(1351, 'Delhi Cantonment', 'IND', 'Delhi', '{\"Population\": 94326}'),
(1352, 'Chhindwara', 'IND', 'Madhya Pradesh', '{\"Population\": 93731}'),
(1353, 'Bansberia', 'IND', 'West Bengali', '{\"Population\": 93447}'),
(1354, 'Nagaon', 'IND', 'Assam', '{\"Population\": 93350}'),
(1355, 'Kanpur Cantonment', 'IND', 'Uttar Pradesh', '{\"Population\": 93109}'),
(1356, 'Vidisha', 'IND', 'Madhya Pradesh', '{\"Population\": 92917}'),
(1357, 'Bettiah', 'IND', 'Bihar', '{\"Population\": 92583}'),
(1358, 'Purulia', 'IND', 'Jharkhand', '{\"Population\": 92574}'),
(1359, 'Hassan', 'IND', 'Karnataka', '{\"Population\": 90803}'),
(1360, 'Ambala Sadar', 'IND', 'Haryana', '{\"Population\": 90712}'),
(1361, 'Baidyabati', 'IND', 'West Bengali', '{\"Population\": 90601}'),
(1362, 'Morvi', 'IND', 'Gujarat', '{\"Population\": 90357}'),
(1363, 'Raigarh', 'IND', 'Chhatisgarh', '{\"Population\": 89166}'),
(1364, 'Vejalpur', 'IND', 'Gujarat', '{\"Population\": 89053}'),
(1365, 'Baghdad', 'IRQ', 'Baghdad', '{\"Population\": 4336000}'),
(1366, 'Mosul', 'IRQ', 'Ninawa', '{\"Population\": 879000}'),
(1367, 'Irbil', 'IRQ', 'Irbil', '{\"Population\": 485968}'),
(1368, 'Kirkuk', 'IRQ', 'al-Tamim', '{\"Population\": 418624}'),
(1369, 'Basra', 'IRQ', 'Basra', '{\"Population\": 406296}'),
(1370, 'al-Sulaymaniya', 'IRQ', 'al-Sulaymaniya', '{\"Population\": 364096}'),
(1371, 'al-Najaf', 'IRQ', 'al-Najaf', '{\"Population\": 309010}'),
(1372, 'Karbala', 'IRQ', 'Karbala', '{\"Population\": 296705}'),
(1373, 'al-Hilla', 'IRQ', 'Babil', '{\"Population\": 268834}'),
(1374, 'al-Nasiriya', 'IRQ', 'DhiQar', '{\"Population\": 265937}'),
(1375, 'al-Amara', 'IRQ', 'Maysan', '{\"Population\": 208797}'),
(1376, 'al-Diwaniya', 'IRQ', 'al-Qadisiya', '{\"Population\": 196519}'),
(1377, 'al-Ramadi', 'IRQ', 'al-Anbar', '{\"Population\": 192556}'),
(1378, 'al-Kut', 'IRQ', 'Wasit', '{\"Population\": 183183}'),
(1379, 'Baquba', 'IRQ', 'Diyala', '{\"Population\": 114516}'),
(1380, 'Teheran', 'IRN', 'Teheran', '{\"Population\": 6758845}'),
(1381, 'Mashhad', 'IRN', 'Khorasan', '{\"Population\": 1887405}'),
(1382, 'Esfahan', 'IRN', 'Esfahan', '{\"Population\": 1266072}'),
(1383, 'Tabriz', 'IRN', 'East Azerbaidzan', '{\"Population\": 1191043}'),
(1384, 'Shiraz', 'IRN', 'Fars', '{\"Population\": 1053025}'),
(1385, 'Karaj', 'IRN', 'Teheran', '{\"Population\": 940968}'),
(1386, 'Ahvaz', 'IRN', 'Khuzestan', '{\"Population\": 804980}'),
(1387, 'Qom', 'IRN', 'Qom', '{\"Population\": 777677}'),
(1388, 'Kermanshah', 'IRN', 'Kermanshah', '{\"Population\": 692986}'),
(1389, 'Urmia', 'IRN', 'West Azerbaidzan', '{\"Population\": 435200}'),
(1390, 'Zahedan', 'IRN', 'Sistan va Baluchesta', '{\"Population\": 419518}'),
(1391, 'Rasht', 'IRN', 'Gilan', '{\"Population\": 417748}'),
(1392, 'Hamadan', 'IRN', 'Hamadan', '{\"Population\": 401281}'),
(1393, 'Kerman', 'IRN', 'Kerman', '{\"Population\": 384991}'),
(1394, 'Arak', 'IRN', 'Markazi', '{\"Population\": 380755}'),
(1395, 'Ardebil', 'IRN', 'Ardebil', '{\"Population\": 340386}'),
(1396, 'Yazd', 'IRN', 'Yazd', '{\"Population\": 326776}'),
(1397, 'Qazvin', 'IRN', 'Qazvin', '{\"Population\": 291117}'),
(1398, 'Zanjan', 'IRN', 'Zanjan', '{\"Population\": 286295}'),
(1399, 'Sanandaj', 'IRN', 'Kordestan', '{\"Population\": 277808}'),
(1400, 'Bandar-e-Abbas', 'IRN', 'Hormozgan', '{\"Population\": 273578}'),
(1401, 'Khorramabad', 'IRN', 'Lorestan', '{\"Population\": 272815}'),
(1402, 'Eslamshahr', 'IRN', 'Teheran', '{\"Population\": 265450}'),
(1403, 'Borujerd', 'IRN', 'Lorestan', '{\"Population\": 217804}'),
(1404, 'Abadan', 'IRN', 'Khuzestan', '{\"Population\": 206073}'),
(1405, 'Dezful', 'IRN', 'Khuzestan', '{\"Population\": 202639}'),
(1406, 'Kashan', 'IRN', 'Esfahan', '{\"Population\": 201372}'),
(1407, 'Sari', 'IRN', 'Mazandaran', '{\"Population\": 195882}'),
(1408, 'Gorgan', 'IRN', 'Golestan', '{\"Population\": 188710}'),
(1409, 'Najafabad', 'IRN', 'Esfahan', '{\"Population\": 178498}'),
(1410, 'Sabzevar', 'IRN', 'Khorasan', '{\"Population\": 170738}'),
(1411, 'Khomeynishahr', 'IRN', 'Esfahan', '{\"Population\": 165888}'),
(1412, 'Amol', 'IRN', 'Mazandaran', '{\"Population\": 159092}'),
(1413, 'Neyshabur', 'IRN', 'Khorasan', '{\"Population\": 158847}'),
(1414, 'Babol', 'IRN', 'Mazandaran', '{\"Population\": 158346}'),
(1415, 'Khoy', 'IRN', 'West Azerbaidzan', '{\"Population\": 148944}'),
(1416, 'Malayer', 'IRN', 'Hamadan', '{\"Population\": 144373}'),
(1417, 'Bushehr', 'IRN', 'Bushehr', '{\"Population\": 143641}'),
(1418, 'Qaemshahr', 'IRN', 'Mazandaran', '{\"Population\": 143286}'),
(1419, 'Qarchak', 'IRN', 'Teheran', '{\"Population\": 142690}'),
(1420, 'Qods', 'IRN', 'Teheran', '{\"Population\": 138278}'),
(1421, 'Sirjan', 'IRN', 'Kerman', '{\"Population\": 135024}'),
(1422, 'Bojnurd', 'IRN', 'Khorasan', '{\"Population\": 134835}'),
(1423, 'Maragheh', 'IRN', 'East Azerbaidzan', '{\"Population\": 132318}'),
(1424, 'Birjand', 'IRN', 'Khorasan', '{\"Population\": 127608}'),
(1425, 'Ilam', 'IRN', 'Ilam', '{\"Population\": 126346}'),
(1426, 'Bukan', 'IRN', 'West Azerbaidzan', '{\"Population\": 120020}'),
(1427, 'Masjed-e-Soleyman', 'IRN', 'Khuzestan', '{\"Population\": 116883}'),
(1428, 'Saqqez', 'IRN', 'Kordestan', '{\"Population\": 115394}'),
(1429, 'Gonbad-e Qabus', 'IRN', 'Mazandaran', '{\"Population\": 111253}'),
(1430, 'Saveh', 'IRN', 'Qom', '{\"Population\": 111245}'),
(1431, 'Mahabad', 'IRN', 'West Azerbaidzan', '{\"Population\": 107799}'),
(1432, 'Varamin', 'IRN', 'Teheran', '{\"Population\": 107233}'),
(1433, 'Andimeshk', 'IRN', 'Khuzestan', '{\"Population\": 106923}'),
(1434, 'Khorramshahr', 'IRN', 'Khuzestan', '{\"Population\": 105636}'),
(1435, 'Shahrud', 'IRN', 'Semnan', '{\"Population\": 104765}'),
(1436, 'Marv Dasht', 'IRN', 'Fars', '{\"Population\": 103579}'),
(1437, 'Zabol', 'IRN', 'Sistan va Baluchesta', '{\"Population\": 100887}'),
(1438, 'Shahr-e Kord', 'IRN', 'Chaharmahal va Bakht', '{\"Population\": 100477}'),
(1439, 'Bandar-e Anzali', 'IRN', 'Gilan', '{\"Population\": 98500}'),
(1440, 'Rafsanjan', 'IRN', 'Kerman', '{\"Population\": 98300}'),
(1441, 'Marand', 'IRN', 'East Azerbaidzan', '{\"Population\": 96400}'),
(1442, 'Torbat-e Heydariyeh', 'IRN', 'Khorasan', '{\"Population\": 94600}'),
(1443, 'Jahrom', 'IRN', 'Fars', '{\"Population\": 94200}'),
(1444, 'Semnan', 'IRN', 'Semnan', '{\"Population\": 91045}'),
(1445, 'Miandoab', 'IRN', 'West Azerbaidzan', '{\"Population\": 90100}'),
(1446, 'Qomsheh', 'IRN', 'Esfahan', '{\"Population\": 89800}'),
(1447, 'Dublin', 'IRL', 'Leinster', '{\"Population\": 481854}'),
(1448, 'Cork', 'IRL', 'Munster', '{\"Population\": 127187}'),
(1449, 'Reykjavík', 'ISL', 'Höfuðborgarsvæði', '{\"Population\": 109184}'),
(1450, 'Jerusalem', 'ISR', 'Jerusalem', '{\"Population\": 633700}'),
(1451, 'Tel Aviv-Jaffa', 'ISR', 'Tel Aviv', '{\"Population\": 348100}'),
(1452, 'Haifa', 'ISR', 'Haifa', '{\"Population\": 265700}'),
(1453, 'Rishon Le Ziyyon', 'ISR', 'Ha Merkaz', '{\"Population\": 188200}'),
(1454, 'Beerseba', 'ISR', 'Ha Darom', '{\"Population\": 163700}'),
(1455, 'Holon', 'ISR', 'Tel Aviv', '{\"Population\": 163100}'),
(1456, 'Petah Tiqwa', 'ISR', 'Ha Merkaz', '{\"Population\": 159400}'),
(1457, 'Ashdod', 'ISR', 'Ha Darom', '{\"Population\": 155800}'),
(1458, 'Netanya', 'ISR', 'Ha Merkaz', '{\"Population\": 154900}'),
(1459, 'Bat Yam', 'ISR', 'Tel Aviv', '{\"Population\": 137000}'),
(1460, 'Bene Beraq', 'ISR', 'Tel Aviv', '{\"Population\": 133900}'),
(1461, 'Ramat Gan', 'ISR', 'Tel Aviv', '{\"Population\": 126900}'),
(1462, 'Ashqelon', 'ISR', 'Ha Darom', '{\"Population\": 92300}'),
(1463, 'Rehovot', 'ISR', 'Ha Merkaz', '{\"Population\": 90300}'),
(1464, 'Roma', 'ITA', 'Latium', '{\"Population\": 2643581}'),
(1465, 'Milano', 'ITA', 'Lombardia', '{\"Population\": 1300977}'),
(1466, 'Napoli', 'ITA', 'Campania', '{\"Population\": 1002619}'),
(1467, 'Torino', 'ITA', 'Piemonte', '{\"Population\": 903705}'),
(1468, 'Palermo', 'ITA', 'Sisilia', '{\"Population\": 683794}'),
(1469, 'Genova', 'ITA', 'Liguria', '{\"Population\": 636104}'),
(1470, 'Bologna', 'ITA', 'Emilia-Romagna', '{\"Population\": 381161}'),
(1471, 'Firenze', 'ITA', 'Toscana', '{\"Population\": 376662}'),
(1472, 'Catania', 'ITA', 'Sisilia', '{\"Population\": 337862}'),
(1473, 'Bari', 'ITA', 'Apulia', '{\"Population\": 331848}'),
(1474, 'Venezia', 'ITA', 'Veneto', '{\"Population\": 277305}'),
(1475, 'Messina', 'ITA', 'Sisilia', '{\"Population\": 259156}'),
(1476, 'Verona', 'ITA', 'Veneto', '{\"Population\": 255268}'),
(1477, 'Trieste', 'ITA', 'Friuli-Venezia Giuli', '{\"Population\": 216459}'),
(1478, 'Padova', 'ITA', 'Veneto', '{\"Population\": 211391}'),
(1479, 'Taranto', 'ITA', 'Apulia', '{\"Population\": 208214}'),
(1480, 'Brescia', 'ITA', 'Lombardia', '{\"Population\": 191317}'),
(1481, 'Reggio di Calabria', 'ITA', 'Calabria', '{\"Population\": 179617}'),
(1482, 'Modena', 'ITA', 'Emilia-Romagna', '{\"Population\": 176022}'),
(1483, 'Prato', 'ITA', 'Toscana', '{\"Population\": 172473}');
INSERT INTO `city` (`ID`, `Name`, `CountryCode`, `District`, `Info`) VALUES
(1484, 'Parma', 'ITA', 'Emilia-Romagna', '{\"Population\": 168717}'),
(1485, 'Cagliari', 'ITA', 'Sardinia', '{\"Population\": 165926}'),
(1486, 'Livorno', 'ITA', 'Toscana', '{\"Population\": 161673}'),
(1487, 'Perugia', 'ITA', 'Umbria', '{\"Population\": 156673}'),
(1488, 'Foggia', 'ITA', 'Apulia', '{\"Population\": 154891}'),
(1489, 'Reggio nell´ Emilia', 'ITA', 'Emilia-Romagna', '{\"Population\": 143664}'),
(1490, 'Salerno', 'ITA', 'Campania', '{\"Population\": 142055}'),
(1491, 'Ravenna', 'ITA', 'Emilia-Romagna', '{\"Population\": 138418}'),
(1492, 'Ferrara', 'ITA', 'Emilia-Romagna', '{\"Population\": 132127}'),
(1493, 'Rimini', 'ITA', 'Emilia-Romagna', '{\"Population\": 131062}'),
(1494, 'Syrakusa', 'ITA', 'Sisilia', '{\"Population\": 126282}'),
(1495, 'Sassari', 'ITA', 'Sardinia', '{\"Population\": 120803}'),
(1496, 'Monza', 'ITA', 'Lombardia', '{\"Population\": 119516}'),
(1497, 'Bergamo', 'ITA', 'Lombardia', '{\"Population\": 117837}'),
(1498, 'Pescara', 'ITA', 'Abruzzit', '{\"Population\": 115698}'),
(1499, 'Latina', 'ITA', 'Latium', '{\"Population\": 114099}'),
(1500, 'Vicenza', 'ITA', 'Veneto', '{\"Population\": 109738}'),
(1501, 'Terni', 'ITA', 'Umbria', '{\"Population\": 107770}'),
(1502, 'Forlì', 'ITA', 'Emilia-Romagna', '{\"Population\": 107475}'),
(1503, 'Trento', 'ITA', 'Trentino-Alto Adige', '{\"Population\": 104906}'),
(1504, 'Novara', 'ITA', 'Piemonte', '{\"Population\": 102037}'),
(1505, 'Piacenza', 'ITA', 'Emilia-Romagna', '{\"Population\": 98384}'),
(1506, 'Ancona', 'ITA', 'Marche', '{\"Population\": 98329}'),
(1507, 'Lecce', 'ITA', 'Apulia', '{\"Population\": 98208}'),
(1508, 'Bolzano', 'ITA', 'Trentino-Alto Adige', '{\"Population\": 97232}'),
(1509, 'Catanzaro', 'ITA', 'Calabria', '{\"Population\": 96700}'),
(1510, 'La Spezia', 'ITA', 'Liguria', '{\"Population\": 95504}'),
(1511, 'Udine', 'ITA', 'Friuli-Venezia Giuli', '{\"Population\": 94932}'),
(1512, 'Torre del Greco', 'ITA', 'Campania', '{\"Population\": 94505}'),
(1513, 'Andria', 'ITA', 'Apulia', '{\"Population\": 94443}'),
(1514, 'Brindisi', 'ITA', 'Apulia', '{\"Population\": 93454}'),
(1515, 'Giugliano in Campania', 'ITA', 'Campania', '{\"Population\": 93286}'),
(1516, 'Pisa', 'ITA', 'Toscana', '{\"Population\": 92379}'),
(1517, 'Barletta', 'ITA', 'Apulia', '{\"Population\": 91904}'),
(1518, 'Arezzo', 'ITA', 'Toscana', '{\"Population\": 91729}'),
(1519, 'Alessandria', 'ITA', 'Piemonte', '{\"Population\": 90289}'),
(1520, 'Cesena', 'ITA', 'Emilia-Romagna', '{\"Population\": 89852}'),
(1521, 'Pesaro', 'ITA', 'Marche', '{\"Population\": 88987}'),
(1522, 'Dili', 'TMP', 'Dili', '{\"Population\": 47900}'),
(1523, 'Wien', 'AUT', 'Wien', '{\"Population\": 1608144}'),
(1524, 'Graz', 'AUT', 'Steiermark', '{\"Population\": 240967}'),
(1525, 'Linz', 'AUT', 'North Austria', '{\"Population\": 188022}'),
(1526, 'Salzburg', 'AUT', 'Salzburg', '{\"Population\": 144247}'),
(1527, 'Innsbruck', 'AUT', 'Tiroli', '{\"Population\": 111752}'),
(1528, 'Klagenfurt', 'AUT', 'Kärnten', '{\"Population\": 91141}'),
(1529, 'Spanish Town', 'JAM', 'St. Catherine', '{\"Population\": 110379}'),
(1530, 'Kingston', 'JAM', 'St. Andrew', '{\"Population\": 103962}'),
(1531, 'Portmore', 'JAM', 'St. Andrew', '{\"Population\": 99799}'),
(1532, 'Tokyo', 'JPN', 'Tokyo-to', '{\"Population\": 7980230}'),
(1533, 'Jokohama [Yokohama]', 'JPN', 'Kanagawa', '{\"Population\": 3339594}'),
(1534, 'Osaka', 'JPN', 'Osaka', '{\"Population\": 2595674}'),
(1535, 'Nagoya', 'JPN', 'Aichi', '{\"Population\": 2154376}'),
(1536, 'Sapporo', 'JPN', 'Hokkaido', '{\"Population\": 1790886}'),
(1537, 'Kioto', 'JPN', 'Kyoto', '{\"Population\": 1461974}'),
(1538, 'Kobe', 'JPN', 'Hyogo', '{\"Population\": 1425139}'),
(1539, 'Fukuoka', 'JPN', 'Fukuoka', '{\"Population\": 1308379}'),
(1540, 'Kawasaki', 'JPN', 'Kanagawa', '{\"Population\": 1217359}'),
(1541, 'Hiroshima', 'JPN', 'Hiroshima', '{\"Population\": 1119117}'),
(1542, 'Kitakyushu', 'JPN', 'Fukuoka', '{\"Population\": 1016264}'),
(1543, 'Sendai', 'JPN', 'Miyagi', '{\"Population\": 989975}'),
(1544, 'Chiba', 'JPN', 'Chiba', '{\"Population\": 863930}'),
(1545, 'Sakai', 'JPN', 'Osaka', '{\"Population\": 797735}'),
(1546, 'Kumamoto', 'JPN', 'Kumamoto', '{\"Population\": 656734}'),
(1547, 'Okayama', 'JPN', 'Okayama', '{\"Population\": 624269}'),
(1548, 'Sagamihara', 'JPN', 'Kanagawa', '{\"Population\": 586300}'),
(1549, 'Hamamatsu', 'JPN', 'Shizuoka', '{\"Population\": 568796}'),
(1550, 'Kagoshima', 'JPN', 'Kagoshima', '{\"Population\": 549977}'),
(1551, 'Funabashi', 'JPN', 'Chiba', '{\"Population\": 545299}'),
(1552, 'Higashiosaka', 'JPN', 'Osaka', '{\"Population\": 517785}'),
(1553, 'Hachioji', 'JPN', 'Tokyo-to', '{\"Population\": 513451}'),
(1554, 'Niigata', 'JPN', 'Niigata', '{\"Population\": 497464}'),
(1555, 'Amagasaki', 'JPN', 'Hyogo', '{\"Population\": 481434}'),
(1556, 'Himeji', 'JPN', 'Hyogo', '{\"Population\": 475167}'),
(1557, 'Shizuoka', 'JPN', 'Shizuoka', '{\"Population\": 473854}'),
(1558, 'Urawa', 'JPN', 'Saitama', '{\"Population\": 469675}'),
(1559, 'Matsuyama', 'JPN', 'Ehime', '{\"Population\": 466133}'),
(1560, 'Matsudo', 'JPN', 'Chiba', '{\"Population\": 461126}'),
(1561, 'Kanazawa', 'JPN', 'Ishikawa', '{\"Population\": 455386}'),
(1562, 'Kawaguchi', 'JPN', 'Saitama', '{\"Population\": 452155}'),
(1563, 'Ichikawa', 'JPN', 'Chiba', '{\"Population\": 441893}'),
(1564, 'Omiya', 'JPN', 'Saitama', '{\"Population\": 441649}'),
(1565, 'Utsunomiya', 'JPN', 'Tochigi', '{\"Population\": 440353}'),
(1566, 'Oita', 'JPN', 'Oita', '{\"Population\": 433401}'),
(1567, 'Nagasaki', 'JPN', 'Nagasaki', '{\"Population\": 432759}'),
(1568, 'Yokosuka', 'JPN', 'Kanagawa', '{\"Population\": 430200}'),
(1569, 'Kurashiki', 'JPN', 'Okayama', '{\"Population\": 425103}'),
(1570, 'Gifu', 'JPN', 'Gifu', '{\"Population\": 408007}'),
(1571, 'Hirakata', 'JPN', 'Osaka', '{\"Population\": 403151}'),
(1572, 'Nishinomiya', 'JPN', 'Hyogo', '{\"Population\": 397618}'),
(1573, 'Toyonaka', 'JPN', 'Osaka', '{\"Population\": 396689}'),
(1574, 'Wakayama', 'JPN', 'Wakayama', '{\"Population\": 391233}'),
(1575, 'Fukuyama', 'JPN', 'Hiroshima', '{\"Population\": 376921}'),
(1576, 'Fujisawa', 'JPN', 'Kanagawa', '{\"Population\": 372840}'),
(1577, 'Asahikawa', 'JPN', 'Hokkaido', '{\"Population\": 364813}'),
(1578, 'Machida', 'JPN', 'Tokyo-to', '{\"Population\": 364197}'),
(1579, 'Nara', 'JPN', 'Nara', '{\"Population\": 362812}'),
(1580, 'Takatsuki', 'JPN', 'Osaka', '{\"Population\": 361747}'),
(1581, 'Iwaki', 'JPN', 'Fukushima', '{\"Population\": 361737}'),
(1582, 'Nagano', 'JPN', 'Nagano', '{\"Population\": 361391}'),
(1583, 'Toyohashi', 'JPN', 'Aichi', '{\"Population\": 360066}'),
(1584, 'Toyota', 'JPN', 'Aichi', '{\"Population\": 346090}'),
(1585, 'Suita', 'JPN', 'Osaka', '{\"Population\": 345750}'),
(1586, 'Takamatsu', 'JPN', 'Kagawa', '{\"Population\": 332471}'),
(1587, 'Koriyama', 'JPN', 'Fukushima', '{\"Population\": 330335}'),
(1588, 'Okazaki', 'JPN', 'Aichi', '{\"Population\": 328711}'),
(1589, 'Kawagoe', 'JPN', 'Saitama', '{\"Population\": 327211}'),
(1590, 'Tokorozawa', 'JPN', 'Saitama', '{\"Population\": 325809}'),
(1591, 'Toyama', 'JPN', 'Toyama', '{\"Population\": 325790}'),
(1592, 'Kochi', 'JPN', 'Kochi', '{\"Population\": 324710}'),
(1593, 'Kashiwa', 'JPN', 'Chiba', '{\"Population\": 320296}'),
(1594, 'Akita', 'JPN', 'Akita', '{\"Population\": 314440}'),
(1595, 'Miyazaki', 'JPN', 'Miyazaki', '{\"Population\": 303784}'),
(1596, 'Koshigaya', 'JPN', 'Saitama', '{\"Population\": 301446}'),
(1597, 'Naha', 'JPN', 'Okinawa', '{\"Population\": 299851}'),
(1598, 'Aomori', 'JPN', 'Aomori', '{\"Population\": 295969}'),
(1599, 'Hakodate', 'JPN', 'Hokkaido', '{\"Population\": 294788}'),
(1600, 'Akashi', 'JPN', 'Hyogo', '{\"Population\": 292253}'),
(1601, 'Yokkaichi', 'JPN', 'Mie', '{\"Population\": 288173}'),
(1602, 'Fukushima', 'JPN', 'Fukushima', '{\"Population\": 287525}'),
(1603, 'Morioka', 'JPN', 'Iwate', '{\"Population\": 287353}'),
(1604, 'Maebashi', 'JPN', 'Gumma', '{\"Population\": 284473}'),
(1605, 'Kasugai', 'JPN', 'Aichi', '{\"Population\": 282348}'),
(1606, 'Otsu', 'JPN', 'Shiga', '{\"Population\": 282070}'),
(1607, 'Ichihara', 'JPN', 'Chiba', '{\"Population\": 279280}'),
(1608, 'Yao', 'JPN', 'Osaka', '{\"Population\": 276421}'),
(1609, 'Ichinomiya', 'JPN', 'Aichi', '{\"Population\": 270828}'),
(1610, 'Tokushima', 'JPN', 'Tokushima', '{\"Population\": 269649}'),
(1611, 'Kakogawa', 'JPN', 'Hyogo', '{\"Population\": 266281}'),
(1612, 'Ibaraki', 'JPN', 'Osaka', '{\"Population\": 261020}'),
(1613, 'Neyagawa', 'JPN', 'Osaka', '{\"Population\": 257315}'),
(1614, 'Shimonoseki', 'JPN', 'Yamaguchi', '{\"Population\": 257263}'),
(1615, 'Yamagata', 'JPN', 'Yamagata', '{\"Population\": 255617}'),
(1616, 'Fukui', 'JPN', 'Fukui', '{\"Population\": 254818}'),
(1617, 'Hiratsuka', 'JPN', 'Kanagawa', '{\"Population\": 254207}'),
(1618, 'Mito', 'JPN', 'Ibaragi', '{\"Population\": 246559}'),
(1619, 'Sasebo', 'JPN', 'Nagasaki', '{\"Population\": 244240}'),
(1620, 'Hachinohe', 'JPN', 'Aomori', '{\"Population\": 242979}'),
(1621, 'Takasaki', 'JPN', 'Gumma', '{\"Population\": 239124}'),
(1622, 'Shimizu', 'JPN', 'Shizuoka', '{\"Population\": 239123}'),
(1623, 'Kurume', 'JPN', 'Fukuoka', '{\"Population\": 235611}'),
(1624, 'Fuji', 'JPN', 'Shizuoka', '{\"Population\": 231527}'),
(1625, 'Soka', 'JPN', 'Saitama', '{\"Population\": 222768}'),
(1626, 'Fuchu', 'JPN', 'Tokyo-to', '{\"Population\": 220576}'),
(1627, 'Chigasaki', 'JPN', 'Kanagawa', '{\"Population\": 216015}'),
(1628, 'Atsugi', 'JPN', 'Kanagawa', '{\"Population\": 212407}'),
(1629, 'Numazu', 'JPN', 'Shizuoka', '{\"Population\": 211382}'),
(1630, 'Ageo', 'JPN', 'Saitama', '{\"Population\": 209442}'),
(1631, 'Yamato', 'JPN', 'Kanagawa', '{\"Population\": 208234}'),
(1632, 'Matsumoto', 'JPN', 'Nagano', '{\"Population\": 206801}'),
(1633, 'Kure', 'JPN', 'Hiroshima', '{\"Population\": 206504}'),
(1634, 'Takarazuka', 'JPN', 'Hyogo', '{\"Population\": 205993}'),
(1635, 'Kasukabe', 'JPN', 'Saitama', '{\"Population\": 201838}'),
(1636, 'Chofu', 'JPN', 'Tokyo-to', '{\"Population\": 201585}'),
(1637, 'Odawara', 'JPN', 'Kanagawa', '{\"Population\": 200171}'),
(1638, 'Kofu', 'JPN', 'Yamanashi', '{\"Population\": 199753}'),
(1639, 'Kushiro', 'JPN', 'Hokkaido', '{\"Population\": 197608}'),
(1640, 'Kishiwada', 'JPN', 'Osaka', '{\"Population\": 197276}'),
(1641, 'Hitachi', 'JPN', 'Ibaragi', '{\"Population\": 196622}'),
(1642, 'Nagaoka', 'JPN', 'Niigata', '{\"Population\": 192407}'),
(1643, 'Itami', 'JPN', 'Hyogo', '{\"Population\": 190886}'),
(1644, 'Uji', 'JPN', 'Kyoto', '{\"Population\": 188735}'),
(1645, 'Suzuka', 'JPN', 'Mie', '{\"Population\": 184061}'),
(1646, 'Hirosaki', 'JPN', 'Aomori', '{\"Population\": 177522}'),
(1647, 'Ube', 'JPN', 'Yamaguchi', '{\"Population\": 175206}'),
(1648, 'Kodaira', 'JPN', 'Tokyo-to', '{\"Population\": 174984}'),
(1649, 'Takaoka', 'JPN', 'Toyama', '{\"Population\": 174380}'),
(1650, 'Obihiro', 'JPN', 'Hokkaido', '{\"Population\": 173685}'),
(1651, 'Tomakomai', 'JPN', 'Hokkaido', '{\"Population\": 171958}'),
(1652, 'Saga', 'JPN', 'Saga', '{\"Population\": 170034}'),
(1653, 'Sakura', 'JPN', 'Chiba', '{\"Population\": 168072}'),
(1654, 'Kamakura', 'JPN', 'Kanagawa', '{\"Population\": 167661}'),
(1655, 'Mitaka', 'JPN', 'Tokyo-to', '{\"Population\": 167268}'),
(1656, 'Izumi', 'JPN', 'Osaka', '{\"Population\": 166979}'),
(1657, 'Hino', 'JPN', 'Tokyo-to', '{\"Population\": 166770}'),
(1658, 'Hadano', 'JPN', 'Kanagawa', '{\"Population\": 166512}'),
(1659, 'Ashikaga', 'JPN', 'Tochigi', '{\"Population\": 165243}'),
(1660, 'Tsu', 'JPN', 'Mie', '{\"Population\": 164543}'),
(1661, 'Sayama', 'JPN', 'Saitama', '{\"Population\": 162472}'),
(1662, 'Yachiyo', 'JPN', 'Chiba', '{\"Population\": 161222}'),
(1663, 'Tsukuba', 'JPN', 'Ibaragi', '{\"Population\": 160768}'),
(1664, 'Tachikawa', 'JPN', 'Tokyo-to', '{\"Population\": 159430}'),
(1665, 'Kumagaya', 'JPN', 'Saitama', '{\"Population\": 157171}'),
(1666, 'Moriguchi', 'JPN', 'Osaka', '{\"Population\": 155941}'),
(1667, 'Otaru', 'JPN', 'Hokkaido', '{\"Population\": 155784}'),
(1668, 'Anjo', 'JPN', 'Aichi', '{\"Population\": 153823}'),
(1669, 'Narashino', 'JPN', 'Chiba', '{\"Population\": 152849}'),
(1670, 'Oyama', 'JPN', 'Tochigi', '{\"Population\": 152820}'),
(1671, 'Ogaki', 'JPN', 'Gifu', '{\"Population\": 151758}'),
(1672, 'Matsue', 'JPN', 'Shimane', '{\"Population\": 149821}'),
(1673, 'Kawanishi', 'JPN', 'Hyogo', '{\"Population\": 149794}'),
(1674, 'Hitachinaka', 'JPN', 'Tokyo-to', '{\"Population\": 148006}'),
(1675, 'Niiza', 'JPN', 'Saitama', '{\"Population\": 147744}'),
(1676, 'Nagareyama', 'JPN', 'Chiba', '{\"Population\": 147738}'),
(1677, 'Tottori', 'JPN', 'Tottori', '{\"Population\": 147523}'),
(1678, 'Tama', 'JPN', 'Ibaragi', '{\"Population\": 146712}'),
(1679, 'Iruma', 'JPN', 'Saitama', '{\"Population\": 145922}'),
(1680, 'Ota', 'JPN', 'Gumma', '{\"Population\": 145317}'),
(1681, 'Omuta', 'JPN', 'Fukuoka', '{\"Population\": 142889}'),
(1682, 'Komaki', 'JPN', 'Aichi', '{\"Population\": 139827}'),
(1683, 'Ome', 'JPN', 'Tokyo-to', '{\"Population\": 139216}'),
(1684, 'Kadoma', 'JPN', 'Osaka', '{\"Population\": 138953}'),
(1685, 'Yamaguchi', 'JPN', 'Yamaguchi', '{\"Population\": 138210}'),
(1686, 'Higashimurayama', 'JPN', 'Tokyo-to', '{\"Population\": 136970}'),
(1687, 'Yonago', 'JPN', 'Tottori', '{\"Population\": 136461}'),
(1688, 'Matsubara', 'JPN', 'Osaka', '{\"Population\": 135010}'),
(1689, 'Musashino', 'JPN', 'Tokyo-to', '{\"Population\": 134426}'),
(1690, 'Tsuchiura', 'JPN', 'Ibaragi', '{\"Population\": 134072}'),
(1691, 'Joetsu', 'JPN', 'Niigata', '{\"Population\": 133505}'),
(1692, 'Miyakonojo', 'JPN', 'Miyazaki', '{\"Population\": 133183}'),
(1693, 'Misato', 'JPN', 'Saitama', '{\"Population\": 132957}'),
(1694, 'Kakamigahara', 'JPN', 'Gifu', '{\"Population\": 131831}'),
(1695, 'Daito', 'JPN', 'Osaka', '{\"Population\": 130594}'),
(1696, 'Seto', 'JPN', 'Aichi', '{\"Population\": 130470}'),
(1697, 'Kariya', 'JPN', 'Aichi', '{\"Population\": 127969}'),
(1698, 'Urayasu', 'JPN', 'Chiba', '{\"Population\": 127550}'),
(1699, 'Beppu', 'JPN', 'Oita', '{\"Population\": 127486}'),
(1700, 'Niihama', 'JPN', 'Ehime', '{\"Population\": 127207}'),
(1701, 'Minoo', 'JPN', 'Osaka', '{\"Population\": 127026}'),
(1702, 'Fujieda', 'JPN', 'Shizuoka', '{\"Population\": 126897}'),
(1703, 'Abiko', 'JPN', 'Chiba', '{\"Population\": 126670}'),
(1704, 'Nobeoka', 'JPN', 'Miyazaki', '{\"Population\": 125547}'),
(1705, 'Tondabayashi', 'JPN', 'Osaka', '{\"Population\": 125094}'),
(1706, 'Ueda', 'JPN', 'Nagano', '{\"Population\": 124217}'),
(1707, 'Kashihara', 'JPN', 'Nara', '{\"Population\": 124013}'),
(1708, 'Matsusaka', 'JPN', 'Mie', '{\"Population\": 123582}'),
(1709, 'Isesaki', 'JPN', 'Gumma', '{\"Population\": 123285}'),
(1710, 'Zama', 'JPN', 'Kanagawa', '{\"Population\": 122046}'),
(1711, 'Kisarazu', 'JPN', 'Chiba', '{\"Population\": 121967}'),
(1712, 'Noda', 'JPN', 'Chiba', '{\"Population\": 121030}'),
(1713, 'Ishinomaki', 'JPN', 'Miyagi', '{\"Population\": 120963}'),
(1714, 'Fujinomiya', 'JPN', 'Shizuoka', '{\"Population\": 119714}'),
(1715, 'Kawachinagano', 'JPN', 'Osaka', '{\"Population\": 119666}'),
(1716, 'Imabari', 'JPN', 'Ehime', '{\"Population\": 119357}'),
(1717, 'Aizuwakamatsu', 'JPN', 'Fukushima', '{\"Population\": 119287}'),
(1718, 'Higashihiroshima', 'JPN', 'Hiroshima', '{\"Population\": 119166}'),
(1719, 'Habikino', 'JPN', 'Osaka', '{\"Population\": 118968}'),
(1720, 'Ebetsu', 'JPN', 'Hokkaido', '{\"Population\": 118805}'),
(1721, 'Hofu', 'JPN', 'Yamaguchi', '{\"Population\": 118751}'),
(1722, 'Kiryu', 'JPN', 'Gumma', '{\"Population\": 118326}'),
(1723, 'Okinawa', 'JPN', 'Okinawa', '{\"Population\": 117748}'),
(1724, 'Yaizu', 'JPN', 'Shizuoka', '{\"Population\": 117258}'),
(1725, 'Toyokawa', 'JPN', 'Aichi', '{\"Population\": 115781}'),
(1726, 'Ebina', 'JPN', 'Kanagawa', '{\"Population\": 115571}'),
(1727, 'Asaka', 'JPN', 'Saitama', '{\"Population\": 114815}'),
(1728, 'Higashikurume', 'JPN', 'Tokyo-to', '{\"Population\": 111666}'),
(1729, 'Ikoma', 'JPN', 'Nara', '{\"Population\": 111645}'),
(1730, 'Kitami', 'JPN', 'Hokkaido', '{\"Population\": 111295}'),
(1731, 'Koganei', 'JPN', 'Tokyo-to', '{\"Population\": 110969}'),
(1732, 'Iwatsuki', 'JPN', 'Saitama', '{\"Population\": 110034}'),
(1733, 'Mishima', 'JPN', 'Shizuoka', '{\"Population\": 109699}'),
(1734, 'Handa', 'JPN', 'Aichi', '{\"Population\": 108600}'),
(1735, 'Muroran', 'JPN', 'Hokkaido', '{\"Population\": 108275}'),
(1736, 'Komatsu', 'JPN', 'Ishikawa', '{\"Population\": 107937}'),
(1737, 'Yatsushiro', 'JPN', 'Kumamoto', '{\"Population\": 107661}'),
(1738, 'Iida', 'JPN', 'Nagano', '{\"Population\": 107583}'),
(1739, 'Tokuyama', 'JPN', 'Yamaguchi', '{\"Population\": 107078}'),
(1740, 'Kokubunji', 'JPN', 'Tokyo-to', '{\"Population\": 106996}'),
(1741, 'Akishima', 'JPN', 'Tokyo-to', '{\"Population\": 106914}'),
(1742, 'Iwakuni', 'JPN', 'Yamaguchi', '{\"Population\": 106647}'),
(1743, 'Kusatsu', 'JPN', 'Shiga', '{\"Population\": 106232}'),
(1744, 'Kuwana', 'JPN', 'Mie', '{\"Population\": 106121}'),
(1745, 'Sanda', 'JPN', 'Hyogo', '{\"Population\": 105643}'),
(1746, 'Hikone', 'JPN', 'Shiga', '{\"Population\": 105508}'),
(1747, 'Toda', 'JPN', 'Saitama', '{\"Population\": 103969}'),
(1748, 'Tajimi', 'JPN', 'Gifu', '{\"Population\": 103171}'),
(1749, 'Ikeda', 'JPN', 'Osaka', '{\"Population\": 102710}'),
(1750, 'Fukaya', 'JPN', 'Saitama', '{\"Population\": 102156}'),
(1751, 'Ise', 'JPN', 'Mie', '{\"Population\": 101732}'),
(1752, 'Sakata', 'JPN', 'Yamagata', '{\"Population\": 101651}'),
(1753, 'Kasuga', 'JPN', 'Fukuoka', '{\"Population\": 101344}'),
(1754, 'Kamagaya', 'JPN', 'Chiba', '{\"Population\": 100821}'),
(1755, 'Tsuruoka', 'JPN', 'Yamagata', '{\"Population\": 100713}'),
(1756, 'Hoya', 'JPN', 'Tokyo-to', '{\"Population\": 100313}'),
(1757, 'Nishio', 'JPN', 'Chiba', '{\"Population\": 100032}'),
(1758, 'Tokai', 'JPN', 'Aichi', '{\"Population\": 99738}'),
(1759, 'Inazawa', 'JPN', 'Aichi', '{\"Population\": 98746}'),
(1760, 'Sakado', 'JPN', 'Saitama', '{\"Population\": 98221}'),
(1761, 'Isehara', 'JPN', 'Kanagawa', '{\"Population\": 98123}'),
(1762, 'Takasago', 'JPN', 'Hyogo', '{\"Population\": 97632}'),
(1763, 'Fujimi', 'JPN', 'Saitama', '{\"Population\": 96972}'),
(1764, 'Urasoe', 'JPN', 'Okinawa', '{\"Population\": 96002}'),
(1765, 'Yonezawa', 'JPN', 'Yamagata', '{\"Population\": 95592}'),
(1766, 'Konan', 'JPN', 'Aichi', '{\"Population\": 95521}'),
(1767, 'Yamatokoriyama', 'JPN', 'Nara', '{\"Population\": 95165}'),
(1768, 'Maizuru', 'JPN', 'Kyoto', '{\"Population\": 94784}'),
(1769, 'Onomichi', 'JPN', 'Hiroshima', '{\"Population\": 93756}'),
(1770, 'Higashimatsuyama', 'JPN', 'Saitama', '{\"Population\": 93342}'),
(1771, 'Kimitsu', 'JPN', 'Chiba', '{\"Population\": 93216}'),
(1772, 'Isahaya', 'JPN', 'Nagasaki', '{\"Population\": 93058}'),
(1773, 'Kanuma', 'JPN', 'Tochigi', '{\"Population\": 93053}'),
(1774, 'Izumisano', 'JPN', 'Osaka', '{\"Population\": 92583}'),
(1775, 'Kameoka', 'JPN', 'Kyoto', '{\"Population\": 92398}'),
(1776, 'Mobara', 'JPN', 'Chiba', '{\"Population\": 91664}'),
(1777, 'Narita', 'JPN', 'Chiba', '{\"Population\": 91470}'),
(1778, 'Kashiwazaki', 'JPN', 'Niigata', '{\"Population\": 91229}'),
(1779, 'Tsuyama', 'JPN', 'Okayama', '{\"Population\": 91170}'),
(1780, 'Sanaa', 'YEM', 'Sanaa', '{\"Population\": 503600}'),
(1781, 'Aden', 'YEM', 'Aden', '{\"Population\": 398300}'),
(1782, 'Taizz', 'YEM', 'Taizz', '{\"Population\": 317600}'),
(1783, 'Hodeida', 'YEM', 'Hodeida', '{\"Population\": 298500}'),
(1784, 'al-Mukalla', 'YEM', 'Hadramawt', '{\"Population\": 122400}'),
(1785, 'Ibb', 'YEM', 'Ibb', '{\"Population\": 103300}'),
(1786, 'Amman', 'JOR', 'Amman', '{\"Population\": 1000000}'),
(1787, 'al-Zarqa', 'JOR', 'al-Zarqa', '{\"Population\": 389815}'),
(1788, 'Irbid', 'JOR', 'Irbid', '{\"Population\": 231511}'),
(1789, 'al-Rusayfa', 'JOR', 'al-Zarqa', '{\"Population\": 137247}'),
(1790, 'Wadi al-Sir', 'JOR', 'Amman', '{\"Population\": 89104}'),
(1791, 'Flying Fish Cove', 'CXR', '–', '{\"Population\": 700}'),
(1792, 'Beograd', 'YUG', 'Central Serbia', '{\"Population\": 1204000}'),
(1793, 'Novi Sad', 'YUG', 'Vojvodina', '{\"Population\": 179626}'),
(1794, 'Niš', 'YUG', 'Central Serbia', '{\"Population\": 175391}'),
(1795, 'Priština', 'YUG', 'Kosovo and Metohija', '{\"Population\": 155496}'),
(1796, 'Kragujevac', 'YUG', 'Central Serbia', '{\"Population\": 147305}'),
(1797, 'Podgorica', 'YUG', 'Montenegro', '{\"Population\": 135000}'),
(1798, 'Subotica', 'YUG', 'Vojvodina', '{\"Population\": 100386}'),
(1799, 'Prizren', 'YUG', 'Kosovo and Metohija', '{\"Population\": 92303}'),
(1800, 'Phnom Penh', 'KHM', 'Phnom Penh', '{\"Population\": 570155}'),
(1801, 'Battambang', 'KHM', 'Battambang', '{\"Population\": 129800}'),
(1802, 'Siem Reap', 'KHM', 'Siem Reap', '{\"Population\": 105100}'),
(1803, 'Douala', 'CMR', 'Littoral', '{\"Population\": 1448300}'),
(1804, 'Yaoundé', 'CMR', 'Centre', '{\"Population\": 1372800}'),
(1805, 'Garoua', 'CMR', 'Nord', '{\"Population\": 177000}'),
(1806, 'Maroua', 'CMR', 'Extrême-Nord', '{\"Population\": 143000}'),
(1807, 'Bamenda', 'CMR', 'Nord-Ouest', '{\"Population\": 138000}'),
(1808, 'Bafoussam', 'CMR', 'Ouest', '{\"Population\": 131000}'),
(1809, 'Nkongsamba', 'CMR', 'Littoral', '{\"Population\": 112454}'),
(1810, 'Montréal', 'CAN', 'Québec', '{\"Population\": 1016376}'),
(1811, 'Calgary', 'CAN', 'Alberta', '{\"Population\": 768082}'),
(1812, 'Toronto', 'CAN', 'Ontario', '{\"Population\": 688275}'),
(1813, 'North York', 'CAN', 'Ontario', '{\"Population\": 622632}'),
(1814, 'Winnipeg', 'CAN', 'Manitoba', '{\"Population\": 618477}'),
(1815, 'Edmonton', 'CAN', 'Alberta', '{\"Population\": 616306}'),
(1816, 'Mississauga', 'CAN', 'Ontario', '{\"Population\": 608072}'),
(1817, 'Scarborough', 'CAN', 'Ontario', '{\"Population\": 594501}'),
(1818, 'Vancouver', 'CAN', 'British Colombia', '{\"Population\": 514008}'),
(1819, 'Etobicoke', 'CAN', 'Ontario', '{\"Population\": 348845}'),
(1820, 'London', 'CAN', 'Ontario', '{\"Population\": 339917}'),
(1821, 'Hamilton', 'CAN', 'Ontario', '{\"Population\": 335614}'),
(1822, 'Ottawa', 'CAN', 'Ontario', '{\"Population\": 335277}'),
(1823, 'Laval', 'CAN', 'Québec', '{\"Population\": 330393}'),
(1824, 'Surrey', 'CAN', 'British Colombia', '{\"Population\": 304477}'),
(1825, 'Brampton', 'CAN', 'Ontario', '{\"Population\": 296711}'),
(1826, 'Windsor', 'CAN', 'Ontario', '{\"Population\": 207588}'),
(1827, 'Saskatoon', 'CAN', 'Saskatchewan', '{\"Population\": 193647}'),
(1828, 'Kitchener', 'CAN', 'Ontario', '{\"Population\": 189959}'),
(1829, 'Markham', 'CAN', 'Ontario', '{\"Population\": 189098}'),
(1830, 'Regina', 'CAN', 'Saskatchewan', '{\"Population\": 180400}'),
(1831, 'Burnaby', 'CAN', 'British Colombia', '{\"Population\": 179209}'),
(1832, 'Québec', 'CAN', 'Québec', '{\"Population\": 167264}'),
(1833, 'York', 'CAN', 'Ontario', '{\"Population\": 154980}'),
(1834, 'Richmond', 'CAN', 'British Colombia', '{\"Population\": 148867}'),
(1835, 'Vaughan', 'CAN', 'Ontario', '{\"Population\": 147889}'),
(1836, 'Burlington', 'CAN', 'Ontario', '{\"Population\": 145150}'),
(1837, 'Oshawa', 'CAN', 'Ontario', '{\"Population\": 140173}'),
(1838, 'Oakville', 'CAN', 'Ontario', '{\"Population\": 139192}'),
(1839, 'Saint Catharines', 'CAN', 'Ontario', '{\"Population\": 136216}'),
(1840, 'Longueuil', 'CAN', 'Québec', '{\"Population\": 127977}'),
(1841, 'Richmond Hill', 'CAN', 'Ontario', '{\"Population\": 116428}'),
(1842, 'Thunder Bay', 'CAN', 'Ontario', '{\"Population\": 115913}'),
(1843, 'Nepean', 'CAN', 'Ontario', '{\"Population\": 115100}'),
(1844, 'Cape Breton', 'CAN', 'Nova Scotia', '{\"Population\": 114733}'),
(1845, 'East York', 'CAN', 'Ontario', '{\"Population\": 114034}'),
(1846, 'Halifax', 'CAN', 'Nova Scotia', '{\"Population\": 113910}'),
(1847, 'Cambridge', 'CAN', 'Ontario', '{\"Population\": 109186}'),
(1848, 'Gloucester', 'CAN', 'Ontario', '{\"Population\": 107314}'),
(1849, 'Abbotsford', 'CAN', 'British Colombia', '{\"Population\": 105403}'),
(1850, 'Guelph', 'CAN', 'Ontario', '{\"Population\": 103593}'),
(1851, 'Saint John´s', 'CAN', 'Newfoundland', '{\"Population\": 101936}'),
(1852, 'Coquitlam', 'CAN', 'British Colombia', '{\"Population\": 101820}'),
(1853, 'Saanich', 'CAN', 'British Colombia', '{\"Population\": 101388}'),
(1854, 'Gatineau', 'CAN', 'Québec', '{\"Population\": 100702}'),
(1855, 'Delta', 'CAN', 'British Colombia', '{\"Population\": 95411}'),
(1856, 'Sudbury', 'CAN', 'Ontario', '{\"Population\": 92686}'),
(1857, 'Kelowna', 'CAN', 'British Colombia', '{\"Population\": 89442}'),
(1858, 'Barrie', 'CAN', 'Ontario', '{\"Population\": 89269}'),
(1859, 'Praia', 'CPV', 'São Tiago', '{\"Population\": 94800}'),
(1860, 'Almaty', 'KAZ', 'Almaty Qalasy', '{\"Population\": 1129400}'),
(1861, 'Qaraghandy', 'KAZ', 'Qaraghandy', '{\"Population\": 436900}'),
(1862, 'Shymkent', 'KAZ', 'South Kazakstan', '{\"Population\": 360100}'),
(1863, 'Taraz', 'KAZ', 'Taraz', '{\"Population\": 330100}'),
(1864, 'Astana', 'KAZ', 'Astana', '{\"Population\": 311200}'),
(1865, 'Öskemen', 'KAZ', 'East Kazakstan', '{\"Population\": 311000}'),
(1866, 'Pavlodar', 'KAZ', 'Pavlodar', '{\"Population\": 300500}'),
(1867, 'Semey', 'KAZ', 'East Kazakstan', '{\"Population\": 269600}'),
(1868, 'Aqtöbe', 'KAZ', 'Aqtöbe', '{\"Population\": 253100}'),
(1869, 'Qostanay', 'KAZ', 'Qostanay', '{\"Population\": 221400}'),
(1870, 'Petropavl', 'KAZ', 'North Kazakstan', '{\"Population\": 203500}'),
(1871, 'Oral', 'KAZ', 'West Kazakstan', '{\"Population\": 195500}'),
(1872, 'Temirtau', 'KAZ', 'Qaraghandy', '{\"Population\": 170500}'),
(1873, 'Qyzylorda', 'KAZ', 'Qyzylorda', '{\"Population\": 157400}'),
(1874, 'Aqtau', 'KAZ', 'Mangghystau', '{\"Population\": 143400}'),
(1875, 'Atyrau', 'KAZ', 'Atyrau', '{\"Population\": 142500}'),
(1876, 'Ekibastuz', 'KAZ', 'Pavlodar', '{\"Population\": 127200}'),
(1877, 'Kökshetau', 'KAZ', 'North Kazakstan', '{\"Population\": 123400}'),
(1878, 'Rudnyy', 'KAZ', 'Qostanay', '{\"Population\": 109500}'),
(1879, 'Taldyqorghan', 'KAZ', 'Almaty', '{\"Population\": 98000}'),
(1880, 'Zhezqazghan', 'KAZ', 'Qaraghandy', '{\"Population\": 90000}'),
(1881, 'Nairobi', 'KEN', 'Nairobi', '{\"Population\": 2290000}'),
(1882, 'Mombasa', 'KEN', 'Coast', '{\"Population\": 461753}'),
(1883, 'Kisumu', 'KEN', 'Nyanza', '{\"Population\": 192733}'),
(1884, 'Nakuru', 'KEN', 'Rift Valley', '{\"Population\": 163927}'),
(1885, 'Machakos', 'KEN', 'Eastern', '{\"Population\": 116293}'),
(1886, 'Eldoret', 'KEN', 'Rift Valley', '{\"Population\": 111882}'),
(1887, 'Meru', 'KEN', 'Eastern', '{\"Population\": 94947}'),
(1888, 'Nyeri', 'KEN', 'Central', '{\"Population\": 91258}'),
(1889, 'Bangui', 'CAF', 'Bangui', '{\"Population\": 524000}'),
(1890, 'Shanghai', 'CHN', 'Shanghai', '{\"Population\": 9696300}'),
(1891, 'Peking', 'CHN', 'Peking', '{\"Population\": 7472000}'),
(1892, 'Chongqing', 'CHN', 'Chongqing', '{\"Population\": 6351600}'),
(1893, 'Tianjin', 'CHN', 'Tianjin', '{\"Population\": 5286800}'),
(1894, 'Wuhan', 'CHN', 'Hubei', '{\"Population\": 4344600}'),
(1895, 'Harbin', 'CHN', 'Heilongjiang', '{\"Population\": 4289800}'),
(1896, 'Shenyang', 'CHN', 'Liaoning', '{\"Population\": 4265200}'),
(1897, 'Kanton [Guangzhou]', 'CHN', 'Guangdong', '{\"Population\": 4256300}'),
(1898, 'Chengdu', 'CHN', 'Sichuan', '{\"Population\": 3361500}'),
(1899, 'Nanking [Nanjing]', 'CHN', 'Jiangsu', '{\"Population\": 2870300}'),
(1900, 'Changchun', 'CHN', 'Jilin', '{\"Population\": 2812000}'),
(1901, 'Xi´an', 'CHN', 'Shaanxi', '{\"Population\": 2761400}'),
(1902, 'Dalian', 'CHN', 'Liaoning', '{\"Population\": 2697000}'),
(1903, 'Qingdao', 'CHN', 'Shandong', '{\"Population\": 2596000}'),
(1904, 'Jinan', 'CHN', 'Shandong', '{\"Population\": 2278100}'),
(1905, 'Hangzhou', 'CHN', 'Zhejiang', '{\"Population\": 2190500}'),
(1906, 'Zhengzhou', 'CHN', 'Henan', '{\"Population\": 2107200}'),
(1907, 'Shijiazhuang', 'CHN', 'Hebei', '{\"Population\": 2041500}'),
(1908, 'Taiyuan', 'CHN', 'Shanxi', '{\"Population\": 1968400}'),
(1909, 'Kunming', 'CHN', 'Yunnan', '{\"Population\": 1829500}'),
(1910, 'Changsha', 'CHN', 'Hunan', '{\"Population\": 1809800}'),
(1911, 'Nanchang', 'CHN', 'Jiangxi', '{\"Population\": 1691600}'),
(1912, 'Fuzhou', 'CHN', 'Fujian', '{\"Population\": 1593800}'),
(1913, 'Lanzhou', 'CHN', 'Gansu', '{\"Population\": 1565800}'),
(1914, 'Guiyang', 'CHN', 'Guizhou', '{\"Population\": 1465200}'),
(1915, 'Ningbo', 'CHN', 'Zhejiang', '{\"Population\": 1371200}'),
(1916, 'Hefei', 'CHN', 'Anhui', '{\"Population\": 1369100}'),
(1917, 'Urumtši [Ürümqi]', 'CHN', 'Xinxiang', '{\"Population\": 1310100}'),
(1918, 'Anshan', 'CHN', 'Liaoning', '{\"Population\": 1200000}'),
(1919, 'Fushun', 'CHN', 'Liaoning', '{\"Population\": 1200000}'),
(1920, 'Nanning', 'CHN', 'Guangxi', '{\"Population\": 1161800}'),
(1921, 'Zibo', 'CHN', 'Shandong', '{\"Population\": 1140000}'),
(1922, 'Qiqihar', 'CHN', 'Heilongjiang', '{\"Population\": 1070000}'),
(1923, 'Jilin', 'CHN', 'Jilin', '{\"Population\": 1040000}'),
(1924, 'Tangshan', 'CHN', 'Hebei', '{\"Population\": 1040000}'),
(1925, 'Baotou', 'CHN', 'Inner Mongolia', '{\"Population\": 980000}'),
(1926, 'Shenzhen', 'CHN', 'Guangdong', '{\"Population\": 950500}'),
(1927, 'Hohhot', 'CHN', 'Inner Mongolia', '{\"Population\": 916700}'),
(1928, 'Handan', 'CHN', 'Hebei', '{\"Population\": 840000}'),
(1929, 'Wuxi', 'CHN', 'Jiangsu', '{\"Population\": 830000}'),
(1930, 'Xuzhou', 'CHN', 'Jiangsu', '{\"Population\": 810000}'),
(1931, 'Datong', 'CHN', 'Shanxi', '{\"Population\": 800000}'),
(1932, 'Yichun', 'CHN', 'Heilongjiang', '{\"Population\": 800000}'),
(1933, 'Benxi', 'CHN', 'Liaoning', '{\"Population\": 770000}'),
(1934, 'Luoyang', 'CHN', 'Henan', '{\"Population\": 760000}'),
(1935, 'Suzhou', 'CHN', 'Jiangsu', '{\"Population\": 710000}'),
(1936, 'Xining', 'CHN', 'Qinghai', '{\"Population\": 700200}'),
(1937, 'Huainan', 'CHN', 'Anhui', '{\"Population\": 700000}'),
(1938, 'Jixi', 'CHN', 'Heilongjiang', '{\"Population\": 683885}'),
(1939, 'Daqing', 'CHN', 'Heilongjiang', '{\"Population\": 660000}'),
(1940, 'Fuxin', 'CHN', 'Liaoning', '{\"Population\": 640000}'),
(1941, 'Amoy [Xiamen]', 'CHN', 'Fujian', '{\"Population\": 627500}'),
(1942, 'Liuzhou', 'CHN', 'Guangxi', '{\"Population\": 610000}'),
(1943, 'Shantou', 'CHN', 'Guangdong', '{\"Population\": 580000}'),
(1944, 'Jinzhou', 'CHN', 'Liaoning', '{\"Population\": 570000}'),
(1945, 'Mudanjiang', 'CHN', 'Heilongjiang', '{\"Population\": 570000}'),
(1946, 'Yinchuan', 'CHN', 'Ningxia', '{\"Population\": 544500}'),
(1947, 'Changzhou', 'CHN', 'Jiangsu', '{\"Population\": 530000}'),
(1948, 'Zhangjiakou', 'CHN', 'Hebei', '{\"Population\": 530000}'),
(1949, 'Dandong', 'CHN', 'Liaoning', '{\"Population\": 520000}'),
(1950, 'Hegang', 'CHN', 'Heilongjiang', '{\"Population\": 520000}'),
(1951, 'Kaifeng', 'CHN', 'Henan', '{\"Population\": 510000}'),
(1952, 'Jiamusi', 'CHN', 'Heilongjiang', '{\"Population\": 493409}'),
(1953, 'Liaoyang', 'CHN', 'Liaoning', '{\"Population\": 492559}'),
(1954, 'Hengyang', 'CHN', 'Hunan', '{\"Population\": 487148}'),
(1955, 'Baoding', 'CHN', 'Hebei', '{\"Population\": 483155}'),
(1956, 'Hunjiang', 'CHN', 'Jilin', '{\"Population\": 482043}'),
(1957, 'Xinxiang', 'CHN', 'Henan', '{\"Population\": 473762}'),
(1958, 'Huangshi', 'CHN', 'Hubei', '{\"Population\": 457601}'),
(1959, 'Haikou', 'CHN', 'Hainan', '{\"Population\": 454300}'),
(1960, 'Yantai', 'CHN', 'Shandong', '{\"Population\": 452127}'),
(1961, 'Bengbu', 'CHN', 'Anhui', '{\"Population\": 449245}'),
(1962, 'Xiangtan', 'CHN', 'Hunan', '{\"Population\": 441968}'),
(1963, 'Weifang', 'CHN', 'Shandong', '{\"Population\": 428522}'),
(1964, 'Wuhu', 'CHN', 'Anhui', '{\"Population\": 425740}'),
(1965, 'Pingxiang', 'CHN', 'Jiangxi', '{\"Population\": 425579}'),
(1966, 'Yingkou', 'CHN', 'Liaoning', '{\"Population\": 421589}'),
(1967, 'Anyang', 'CHN', 'Henan', '{\"Population\": 420332}'),
(1968, 'Panzhihua', 'CHN', 'Sichuan', '{\"Population\": 415466}'),
(1969, 'Pingdingshan', 'CHN', 'Henan', '{\"Population\": 410775}'),
(1970, 'Xiangfan', 'CHN', 'Hubei', '{\"Population\": 410407}'),
(1971, 'Zhuzhou', 'CHN', 'Hunan', '{\"Population\": 409924}'),
(1972, 'Jiaozuo', 'CHN', 'Henan', '{\"Population\": 409100}'),
(1973, 'Wenzhou', 'CHN', 'Zhejiang', '{\"Population\": 401871}'),
(1974, 'Zhangjiang', 'CHN', 'Guangdong', '{\"Population\": 400997}'),
(1975, 'Zigong', 'CHN', 'Sichuan', '{\"Population\": 393184}'),
(1976, 'Shuangyashan', 'CHN', 'Heilongjiang', '{\"Population\": 386081}'),
(1977, 'Zaozhuang', 'CHN', 'Shandong', '{\"Population\": 380846}'),
(1978, 'Yakeshi', 'CHN', 'Inner Mongolia', '{\"Population\": 377869}'),
(1979, 'Yichang', 'CHN', 'Hubei', '{\"Population\": 371601}'),
(1980, 'Zhenjiang', 'CHN', 'Jiangsu', '{\"Population\": 368316}'),
(1981, 'Huaibei', 'CHN', 'Anhui', '{\"Population\": 366549}'),
(1982, 'Qinhuangdao', 'CHN', 'Hebei', '{\"Population\": 364972}'),
(1983, 'Guilin', 'CHN', 'Guangxi', '{\"Population\": 364130}'),
(1984, 'Liupanshui', 'CHN', 'Guizhou', '{\"Population\": 363954}'),
(1985, 'Panjin', 'CHN', 'Liaoning', '{\"Population\": 362773}'),
(1986, 'Yangquan', 'CHN', 'Shanxi', '{\"Population\": 362268}'),
(1987, 'Jinxi', 'CHN', 'Liaoning', '{\"Population\": 357052}'),
(1988, 'Liaoyuan', 'CHN', 'Jilin', '{\"Population\": 354141}'),
(1989, 'Lianyungang', 'CHN', 'Jiangsu', '{\"Population\": 354139}'),
(1990, 'Xianyang', 'CHN', 'Shaanxi', '{\"Population\": 352125}'),
(1991, 'Tai´an', 'CHN', 'Shandong', '{\"Population\": 350696}'),
(1992, 'Chifeng', 'CHN', 'Inner Mongolia', '{\"Population\": 350077}'),
(1993, 'Shaoguan', 'CHN', 'Guangdong', '{\"Population\": 350043}'),
(1994, 'Nantong', 'CHN', 'Jiangsu', '{\"Population\": 343341}'),
(1995, 'Leshan', 'CHN', 'Sichuan', '{\"Population\": 341128}'),
(1996, 'Baoji', 'CHN', 'Shaanxi', '{\"Population\": 337765}'),
(1997, 'Linyi', 'CHN', 'Shandong', '{\"Population\": 324720}'),
(1998, 'Tonghua', 'CHN', 'Jilin', '{\"Population\": 324600}'),
(1999, 'Siping', 'CHN', 'Jilin', '{\"Population\": 317223}'),
(2000, 'Changzhi', 'CHN', 'Shanxi', '{\"Population\": 317144}'),
(2001, 'Tengzhou', 'CHN', 'Shandong', '{\"Population\": 315083}'),
(2002, 'Chaozhou', 'CHN', 'Guangdong', '{\"Population\": 313469}'),
(2003, 'Yangzhou', 'CHN', 'Jiangsu', '{\"Population\": 312892}'),
(2004, 'Dongwan', 'CHN', 'Guangdong', '{\"Population\": 308669}'),
(2005, 'Ma´anshan', 'CHN', 'Anhui', '{\"Population\": 305421}'),
(2006, 'Foshan', 'CHN', 'Guangdong', '{\"Population\": 303160}'),
(2007, 'Yueyang', 'CHN', 'Hunan', '{\"Population\": 302800}'),
(2008, 'Xingtai', 'CHN', 'Hebei', '{\"Population\": 302789}'),
(2009, 'Changde', 'CHN', 'Hunan', '{\"Population\": 301276}'),
(2010, 'Shihezi', 'CHN', 'Xinxiang', '{\"Population\": 299676}'),
(2011, 'Yancheng', 'CHN', 'Jiangsu', '{\"Population\": 296831}'),
(2012, 'Jiujiang', 'CHN', 'Jiangxi', '{\"Population\": 291187}'),
(2013, 'Dongying', 'CHN', 'Shandong', '{\"Population\": 281728}'),
(2014, 'Shashi', 'CHN', 'Hubei', '{\"Population\": 281352}'),
(2015, 'Xintai', 'CHN', 'Shandong', '{\"Population\": 281248}'),
(2016, 'Jingdezhen', 'CHN', 'Jiangxi', '{\"Population\": 281183}'),
(2017, 'Tongchuan', 'CHN', 'Shaanxi', '{\"Population\": 280657}'),
(2018, 'Zhongshan', 'CHN', 'Guangdong', '{\"Population\": 278829}'),
(2019, 'Shiyan', 'CHN', 'Hubei', '{\"Population\": 273786}'),
(2020, 'Tieli', 'CHN', 'Heilongjiang', '{\"Population\": 265683}'),
(2021, 'Jining', 'CHN', 'Shandong', '{\"Population\": 265248}'),
(2022, 'Wuhai', 'CHN', 'Inner Mongolia', '{\"Population\": 264081}'),
(2023, 'Mianyang', 'CHN', 'Sichuan', '{\"Population\": 262947}'),
(2024, 'Luzhou', 'CHN', 'Sichuan', '{\"Population\": 262892}'),
(2025, 'Zunyi', 'CHN', 'Guizhou', '{\"Population\": 261862}'),
(2026, 'Shizuishan', 'CHN', 'Ningxia', '{\"Population\": 257862}'),
(2027, 'Neijiang', 'CHN', 'Sichuan', '{\"Population\": 256012}'),
(2028, 'Tongliao', 'CHN', 'Inner Mongolia', '{\"Population\": 255129}'),
(2029, 'Tieling', 'CHN', 'Liaoning', '{\"Population\": 254842}'),
(2030, 'Wafangdian', 'CHN', 'Liaoning', '{\"Population\": 251733}'),
(2031, 'Anqing', 'CHN', 'Anhui', '{\"Population\": 250718}'),
(2032, 'Shaoyang', 'CHN', 'Hunan', '{\"Population\": 247227}'),
(2033, 'Laiwu', 'CHN', 'Shandong', '{\"Population\": 246833}'),
(2034, 'Chengde', 'CHN', 'Hebei', '{\"Population\": 246799}'),
(2035, 'Tianshui', 'CHN', 'Gansu', '{\"Population\": 244974}'),
(2036, 'Nanyang', 'CHN', 'Henan', '{\"Population\": 243303}'),
(2037, 'Cangzhou', 'CHN', 'Hebei', '{\"Population\": 242708}'),
(2038, 'Yibin', 'CHN', 'Sichuan', '{\"Population\": 241019}'),
(2039, 'Huaiyin', 'CHN', 'Jiangsu', '{\"Population\": 239675}'),
(2040, 'Dunhua', 'CHN', 'Jilin', '{\"Population\": 235100}'),
(2041, 'Yanji', 'CHN', 'Jilin', '{\"Population\": 230892}'),
(2042, 'Jiangmen', 'CHN', 'Guangdong', '{\"Population\": 230587}'),
(2043, 'Tongling', 'CHN', 'Anhui', '{\"Population\": 228017}'),
(2044, 'Suihua', 'CHN', 'Heilongjiang', '{\"Population\": 227881}'),
(2045, 'Gongziling', 'CHN', 'Jilin', '{\"Population\": 226569}'),
(2046, 'Xiantao', 'CHN', 'Hubei', '{\"Population\": 222884}'),
(2047, 'Chaoyang', 'CHN', 'Liaoning', '{\"Population\": 222394}'),
(2048, 'Ganzhou', 'CHN', 'Jiangxi', '{\"Population\": 220129}'),
(2049, 'Huzhou', 'CHN', 'Zhejiang', '{\"Population\": 218071}'),
(2050, 'Baicheng', 'CHN', 'Jilin', '{\"Population\": 217987}'),
(2051, 'Shangzi', 'CHN', 'Heilongjiang', '{\"Population\": 215373}'),
(2052, 'Yangjiang', 'CHN', 'Guangdong', '{\"Population\": 215196}'),
(2053, 'Qitaihe', 'CHN', 'Heilongjiang', '{\"Population\": 214957}'),
(2054, 'Gejiu', 'CHN', 'Yunnan', '{\"Population\": 214294}'),
(2055, 'Jiangyin', 'CHN', 'Jiangsu', '{\"Population\": 213659}'),
(2056, 'Hebi', 'CHN', 'Henan', '{\"Population\": 212976}'),
(2057, 'Jiaxing', 'CHN', 'Zhejiang', '{\"Population\": 211526}'),
(2058, 'Wuzhou', 'CHN', 'Guangxi', '{\"Population\": 210452}'),
(2059, 'Meihekou', 'CHN', 'Jilin', '{\"Population\": 209038}'),
(2060, 'Xuchang', 'CHN', 'Henan', '{\"Population\": 208815}'),
(2061, 'Liaocheng', 'CHN', 'Shandong', '{\"Population\": 207844}'),
(2062, 'Haicheng', 'CHN', 'Liaoning', '{\"Population\": 205560}'),
(2063, 'Qianjiang', 'CHN', 'Hubei', '{\"Population\": 205504}'),
(2064, 'Baiyin', 'CHN', 'Gansu', '{\"Population\": 204970}'),
(2065, 'Bei´an', 'CHN', 'Heilongjiang', '{\"Population\": 204899}'),
(2066, 'Yixing', 'CHN', 'Jiangsu', '{\"Population\": 200824}'),
(2067, 'Laizhou', 'CHN', 'Shandong', '{\"Population\": 198664}'),
(2068, 'Qaramay', 'CHN', 'Xinxiang', '{\"Population\": 197602}'),
(2069, 'Acheng', 'CHN', 'Heilongjiang', '{\"Population\": 197595}'),
(2070, 'Dezhou', 'CHN', 'Shandong', '{\"Population\": 195485}'),
(2071, 'Nanping', 'CHN', 'Fujian', '{\"Population\": 195064}'),
(2072, 'Zhaoqing', 'CHN', 'Guangdong', '{\"Population\": 194784}'),
(2073, 'Beipiao', 'CHN', 'Liaoning', '{\"Population\": 194301}'),
(2074, 'Fengcheng', 'CHN', 'Jiangxi', '{\"Population\": 193784}'),
(2075, 'Fuyu', 'CHN', 'Jilin', '{\"Population\": 192981}'),
(2076, 'Xinyang', 'CHN', 'Henan', '{\"Population\": 192509}'),
(2077, 'Dongtai', 'CHN', 'Jiangsu', '{\"Population\": 192247}'),
(2078, 'Yuci', 'CHN', 'Shanxi', '{\"Population\": 191356}'),
(2079, 'Honghu', 'CHN', 'Hubei', '{\"Population\": 190772}'),
(2080, 'Ezhou', 'CHN', 'Hubei', '{\"Population\": 190123}'),
(2081, 'Heze', 'CHN', 'Shandong', '{\"Population\": 189293}'),
(2082, 'Daxian', 'CHN', 'Sichuan', '{\"Population\": 188101}'),
(2083, 'Linfen', 'CHN', 'Shanxi', '{\"Population\": 187309}'),
(2084, 'Tianmen', 'CHN', 'Hubei', '{\"Population\": 186332}'),
(2085, 'Yiyang', 'CHN', 'Hunan', '{\"Population\": 185818}'),
(2086, 'Quanzhou', 'CHN', 'Fujian', '{\"Population\": 185154}'),
(2087, 'Rizhao', 'CHN', 'Shandong', '{\"Population\": 185048}'),
(2088, 'Deyang', 'CHN', 'Sichuan', '{\"Population\": 182488}'),
(2089, 'Guangyuan', 'CHN', 'Sichuan', '{\"Population\": 182241}'),
(2090, 'Changshu', 'CHN', 'Jiangsu', '{\"Population\": 181805}'),
(2091, 'Zhangzhou', 'CHN', 'Fujian', '{\"Population\": 181424}'),
(2092, 'Hailar', 'CHN', 'Inner Mongolia', '{\"Population\": 180650}'),
(2093, 'Nanchong', 'CHN', 'Sichuan', '{\"Population\": 180273}'),
(2094, 'Jiutai', 'CHN', 'Jilin', '{\"Population\": 180130}'),
(2095, 'Zhaodong', 'CHN', 'Heilongjiang', '{\"Population\": 179976}'),
(2096, 'Shaoxing', 'CHN', 'Zhejiang', '{\"Population\": 179818}'),
(2097, 'Fuyang', 'CHN', 'Anhui', '{\"Population\": 179572}'),
(2098, 'Maoming', 'CHN', 'Guangdong', '{\"Population\": 178683}'),
(2099, 'Qujing', 'CHN', 'Yunnan', '{\"Population\": 178669}'),
(2100, 'Ghulja', 'CHN', 'Xinxiang', '{\"Population\": 177193}'),
(2101, 'Jiaohe', 'CHN', 'Jilin', '{\"Population\": 176367}'),
(2102, 'Puyang', 'CHN', 'Henan', '{\"Population\": 175988}'),
(2103, 'Huadian', 'CHN', 'Jilin', '{\"Population\": 175873}'),
(2104, 'Jiangyou', 'CHN', 'Sichuan', '{\"Population\": 175753}'),
(2105, 'Qashqar', 'CHN', 'Xinxiang', '{\"Population\": 174570}'),
(2106, 'Anshun', 'CHN', 'Guizhou', '{\"Population\": 174142}'),
(2107, 'Fuling', 'CHN', 'Sichuan', '{\"Population\": 173878}'),
(2108, 'Xinyu', 'CHN', 'Jiangxi', '{\"Population\": 173524}'),
(2109, 'Hanzhong', 'CHN', 'Shaanxi', '{\"Population\": 169930}'),
(2110, 'Danyang', 'CHN', 'Jiangsu', '{\"Population\": 169603}'),
(2111, 'Chenzhou', 'CHN', 'Hunan', '{\"Population\": 169400}'),
(2112, 'Xiaogan', 'CHN', 'Hubei', '{\"Population\": 166280}'),
(2113, 'Shangqiu', 'CHN', 'Henan', '{\"Population\": 164880}'),
(2114, 'Zhuhai', 'CHN', 'Guangdong', '{\"Population\": 164747}'),
(2115, 'Qingyuan', 'CHN', 'Guangdong', '{\"Population\": 164641}'),
(2116, 'Aqsu', 'CHN', 'Xinxiang', '{\"Population\": 164092}'),
(2117, 'Jining', 'CHN', 'Inner Mongolia', '{\"Population\": 163552}'),
(2118, 'Xiaoshan', 'CHN', 'Zhejiang', '{\"Population\": 162930}'),
(2119, 'Zaoyang', 'CHN', 'Hubei', '{\"Population\": 162198}'),
(2120, 'Xinghua', 'CHN', 'Jiangsu', '{\"Population\": 161910}'),
(2121, 'Hami', 'CHN', 'Xinxiang', '{\"Population\": 161315}'),
(2122, 'Huizhou', 'CHN', 'Guangdong', '{\"Population\": 161023}'),
(2123, 'Jinmen', 'CHN', 'Hubei', '{\"Population\": 160794}'),
(2124, 'Sanming', 'CHN', 'Fujian', '{\"Population\": 160691}'),
(2125, 'Ulanhot', 'CHN', 'Inner Mongolia', '{\"Population\": 159538}'),
(2126, 'Korla', 'CHN', 'Xinxiang', '{\"Population\": 159344}'),
(2127, 'Wanxian', 'CHN', 'Sichuan', '{\"Population\": 156823}'),
(2128, 'Rui´an', 'CHN', 'Zhejiang', '{\"Population\": 156468}'),
(2129, 'Zhoushan', 'CHN', 'Zhejiang', '{\"Population\": 156317}'),
(2130, 'Liangcheng', 'CHN', 'Shandong', '{\"Population\": 156307}'),
(2131, 'Jiaozhou', 'CHN', 'Shandong', '{\"Population\": 153364}'),
(2132, 'Taizhou', 'CHN', 'Jiangsu', '{\"Population\": 152442}'),
(2133, 'Suzhou', 'CHN', 'Anhui', '{\"Population\": 151862}'),
(2134, 'Yichun', 'CHN', 'Jiangxi', '{\"Population\": 151585}'),
(2135, 'Taonan', 'CHN', 'Jilin', '{\"Population\": 150168}'),
(2136, 'Pingdu', 'CHN', 'Shandong', '{\"Population\": 150123}'),
(2137, 'Ji´an', 'CHN', 'Jiangxi', '{\"Population\": 148583}'),
(2138, 'Longkou', 'CHN', 'Shandong', '{\"Population\": 148362}'),
(2139, 'Langfang', 'CHN', 'Hebei', '{\"Population\": 148105}'),
(2140, 'Zhoukou', 'CHN', 'Henan', '{\"Population\": 146288}'),
(2141, 'Suining', 'CHN', 'Sichuan', '{\"Population\": 146086}'),
(2142, 'Yulin', 'CHN', 'Guangxi', '{\"Population\": 144467}'),
(2143, 'Jinhua', 'CHN', 'Zhejiang', '{\"Population\": 144280}'),
(2144, 'Liu´an', 'CHN', 'Anhui', '{\"Population\": 144248}'),
(2145, 'Shuangcheng', 'CHN', 'Heilongjiang', '{\"Population\": 142659}'),
(2146, 'Suizhou', 'CHN', 'Hubei', '{\"Population\": 142302}'),
(2147, 'Ankang', 'CHN', 'Shaanxi', '{\"Population\": 142170}'),
(2148, 'Weinan', 'CHN', 'Shaanxi', '{\"Population\": 140169}'),
(2149, 'Longjing', 'CHN', 'Jilin', '{\"Population\": 139417}'),
(2150, 'Da´an', 'CHN', 'Jilin', '{\"Population\": 138963}'),
(2151, 'Lengshuijiang', 'CHN', 'Hunan', '{\"Population\": 137994}'),
(2152, 'Laiyang', 'CHN', 'Shandong', '{\"Population\": 137080}'),
(2153, 'Xianning', 'CHN', 'Hubei', '{\"Population\": 136811}'),
(2154, 'Dali', 'CHN', 'Yunnan', '{\"Population\": 136554}'),
(2155, 'Anda', 'CHN', 'Heilongjiang', '{\"Population\": 136446}'),
(2156, 'Jincheng', 'CHN', 'Shanxi', '{\"Population\": 136396}'),
(2157, 'Longyan', 'CHN', 'Fujian', '{\"Population\": 134481}'),
(2158, 'Xichang', 'CHN', 'Sichuan', '{\"Population\": 134419}'),
(2159, 'Wendeng', 'CHN', 'Shandong', '{\"Population\": 133910}'),
(2160, 'Hailun', 'CHN', 'Heilongjiang', '{\"Population\": 133565}'),
(2161, 'Binzhou', 'CHN', 'Shandong', '{\"Population\": 133555}'),
(2162, 'Linhe', 'CHN', 'Inner Mongolia', '{\"Population\": 133183}'),
(2163, 'Wuwei', 'CHN', 'Gansu', '{\"Population\": 133101}'),
(2164, 'Duyun', 'CHN', 'Guizhou', '{\"Population\": 132971}'),
(2165, 'Mishan', 'CHN', 'Heilongjiang', '{\"Population\": 132744}'),
(2166, 'Shangrao', 'CHN', 'Jiangxi', '{\"Population\": 132455}'),
(2167, 'Changji', 'CHN', 'Xinxiang', '{\"Population\": 132260}'),
(2168, 'Meixian', 'CHN', 'Guangdong', '{\"Population\": 132156}'),
(2169, 'Yushu', 'CHN', 'Jilin', '{\"Population\": 131861}'),
(2170, 'Tiefa', 'CHN', 'Liaoning', '{\"Population\": 131807}'),
(2171, 'Huai´an', 'CHN', 'Jiangsu', '{\"Population\": 131149}'),
(2172, 'Leiyang', 'CHN', 'Hunan', '{\"Population\": 130115}'),
(2173, 'Zalantun', 'CHN', 'Inner Mongolia', '{\"Population\": 130031}'),
(2174, 'Weihai', 'CHN', 'Shandong', '{\"Population\": 128888}'),
(2175, 'Loudi', 'CHN', 'Hunan', '{\"Population\": 128418}'),
(2176, 'Qingzhou', 'CHN', 'Shandong', '{\"Population\": 128258}'),
(2177, 'Qidong', 'CHN', 'Jiangsu', '{\"Population\": 126872}'),
(2178, 'Huaihua', 'CHN', 'Hunan', '{\"Population\": 126785}'),
(2179, 'Luohe', 'CHN', 'Henan', '{\"Population\": 126438}'),
(2180, 'Chuzhou', 'CHN', 'Anhui', '{\"Population\": 125341}'),
(2181, 'Kaiyuan', 'CHN', 'Liaoning', '{\"Population\": 124219}'),
(2182, 'Linqing', 'CHN', 'Shandong', '{\"Population\": 123958}'),
(2183, 'Chaohu', 'CHN', 'Anhui', '{\"Population\": 123676}'),
(2184, 'Laohekou', 'CHN', 'Hubei', '{\"Population\": 123366}'),
(2185, 'Dujiangyan', 'CHN', 'Sichuan', '{\"Population\": 123357}'),
(2186, 'Zhumadian', 'CHN', 'Henan', '{\"Population\": 123232}'),
(2187, 'Linchuan', 'CHN', 'Jiangxi', '{\"Population\": 121949}'),
(2188, 'Jiaonan', 'CHN', 'Shandong', '{\"Population\": 121397}'),
(2189, 'Sanmenxia', 'CHN', 'Henan', '{\"Population\": 120523}'),
(2190, 'Heyuan', 'CHN', 'Guangdong', '{\"Population\": 120101}'),
(2191, 'Manzhouli', 'CHN', 'Inner Mongolia', '{\"Population\": 120023}'),
(2192, 'Lhasa', 'CHN', 'Tibet', '{\"Population\": 120000}'),
(2193, 'Lianyuan', 'CHN', 'Hunan', '{\"Population\": 118858}'),
(2194, 'Kuytun', 'CHN', 'Xinxiang', '{\"Population\": 118553}'),
(2195, 'Puqi', 'CHN', 'Hubei', '{\"Population\": 117264}'),
(2196, 'Hongjiang', 'CHN', 'Hunan', '{\"Population\": 116188}'),
(2197, 'Qinzhou', 'CHN', 'Guangxi', '{\"Population\": 114586}'),
(2198, 'Renqiu', 'CHN', 'Hebei', '{\"Population\": 114256}'),
(2199, 'Yuyao', 'CHN', 'Zhejiang', '{\"Population\": 114065}'),
(2200, 'Guigang', 'CHN', 'Guangxi', '{\"Population\": 114025}'),
(2201, 'Kaili', 'CHN', 'Guizhou', '{\"Population\": 113958}'),
(2202, 'Yan´an', 'CHN', 'Shaanxi', '{\"Population\": 113277}'),
(2203, 'Beihai', 'CHN', 'Guangxi', '{\"Population\": 112673}'),
(2204, 'Xuangzhou', 'CHN', 'Anhui', '{\"Population\": 112673}'),
(2205, 'Quzhou', 'CHN', 'Zhejiang', '{\"Population\": 112373}'),
(2206, 'Yong´an', 'CHN', 'Fujian', '{\"Population\": 111762}'),
(2207, 'Zixing', 'CHN', 'Hunan', '{\"Population\": 110048}'),
(2208, 'Liyang', 'CHN', 'Jiangsu', '{\"Population\": 109520}'),
(2209, 'Yizheng', 'CHN', 'Jiangsu', '{\"Population\": 109268}'),
(2210, 'Yumen', 'CHN', 'Gansu', '{\"Population\": 109234}'),
(2211, 'Liling', 'CHN', 'Hunan', '{\"Population\": 108504}'),
(2212, 'Yuncheng', 'CHN', 'Shanxi', '{\"Population\": 108359}'),
(2213, 'Shanwei', 'CHN', 'Guangdong', '{\"Population\": 107847}'),
(2214, 'Cixi', 'CHN', 'Zhejiang', '{\"Population\": 107329}'),
(2215, 'Yuanjiang', 'CHN', 'Hunan', '{\"Population\": 107004}'),
(2216, 'Bozhou', 'CHN', 'Anhui', '{\"Population\": 106346}'),
(2217, 'Jinchang', 'CHN', 'Gansu', '{\"Population\": 105287}'),
(2218, 'Fu´an', 'CHN', 'Fujian', '{\"Population\": 105265}'),
(2219, 'Suqian', 'CHN', 'Jiangsu', '{\"Population\": 105021}'),
(2220, 'Shishou', 'CHN', 'Hubei', '{\"Population\": 104571}'),
(2221, 'Hengshui', 'CHN', 'Hebei', '{\"Population\": 104269}'),
(2222, 'Danjiangkou', 'CHN', 'Hubei', '{\"Population\": 103211}'),
(2223, 'Fujin', 'CHN', 'Heilongjiang', '{\"Population\": 103104}'),
(2224, 'Sanya', 'CHN', 'Hainan', '{\"Population\": 102820}'),
(2225, 'Guangshui', 'CHN', 'Hubei', '{\"Population\": 102770}'),
(2226, 'Huangshan', 'CHN', 'Anhui', '{\"Population\": 102628}'),
(2227, 'Xingcheng', 'CHN', 'Liaoning', '{\"Population\": 102384}'),
(2228, 'Zhucheng', 'CHN', 'Shandong', '{\"Population\": 102134}'),
(2229, 'Kunshan', 'CHN', 'Jiangsu', '{\"Population\": 102052}'),
(2230, 'Haining', 'CHN', 'Zhejiang', '{\"Population\": 100478}'),
(2231, 'Pingliang', 'CHN', 'Gansu', '{\"Population\": 99265}'),
(2232, 'Fuqing', 'CHN', 'Fujian', '{\"Population\": 99193}'),
(2233, 'Xinzhou', 'CHN', 'Shanxi', '{\"Population\": 98667}'),
(2234, 'Jieyang', 'CHN', 'Guangdong', '{\"Population\": 98531}'),
(2235, 'Zhangjiagang', 'CHN', 'Jiangsu', '{\"Population\": 97994}'),
(2236, 'Tong Xian', 'CHN', 'Peking', '{\"Population\": 97168}'),
(2237, 'Ya´an', 'CHN', 'Sichuan', '{\"Population\": 95900}'),
(2238, 'Jinzhou', 'CHN', 'Liaoning', '{\"Population\": 95761}'),
(2239, 'Emeishan', 'CHN', 'Sichuan', '{\"Population\": 94000}'),
(2240, 'Enshi', 'CHN', 'Hubei', '{\"Population\": 93056}'),
(2241, 'Bose', 'CHN', 'Guangxi', '{\"Population\": 93009}'),
(2242, 'Yuzhou', 'CHN', 'Henan', '{\"Population\": 92889}'),
(2243, 'Kaiyuan', 'CHN', 'Yunnan', '{\"Population\": 91999}'),
(2244, 'Tumen', 'CHN', 'Jilin', '{\"Population\": 91471}'),
(2245, 'Putian', 'CHN', 'Fujian', '{\"Population\": 91030}'),
(2246, 'Linhai', 'CHN', 'Zhejiang', '{\"Population\": 90870}'),
(2247, 'Xilin Hot', 'CHN', 'Inner Mongolia', '{\"Population\": 90646}'),
(2248, 'Shaowu', 'CHN', 'Fujian', '{\"Population\": 90286}'),
(2249, 'Junan', 'CHN', 'Shandong', '{\"Population\": 90222}'),
(2250, 'Huaying', 'CHN', 'Sichuan', '{\"Population\": 89400}'),
(2251, 'Pingyi', 'CHN', 'Shandong', '{\"Population\": 89373}'),
(2252, 'Huangyan', 'CHN', 'Zhejiang', '{\"Population\": 89288}'),
(2253, 'Bishkek', 'KGZ', 'Bishkek shaary', '{\"Population\": 589400}'),
(2254, 'Osh', 'KGZ', 'Osh', '{\"Population\": 222700}'),
(2255, 'Bikenibeu', 'KIR', 'South Tarawa', '{\"Population\": 5055}'),
(2256, 'Bairiki', 'KIR', 'South Tarawa', '{\"Population\": 2226}'),
(2257, 'Santafé de Bogotá', 'COL', 'Santafé de Bogotá', '{\"Population\": 6260862}'),
(2258, 'Cali', 'COL', 'Valle', '{\"Population\": 2077386}'),
(2259, 'Medellín', 'COL', 'Antioquia', '{\"Population\": 1861265}'),
(2260, 'Barranquilla', 'COL', 'Atlántico', '{\"Population\": 1223260}'),
(2261, 'Cartagena', 'COL', 'Bolívar', '{\"Population\": 805757}'),
(2262, 'Cúcuta', 'COL', 'Norte de Santander', '{\"Population\": 606932}'),
(2263, 'Bucaramanga', 'COL', 'Santander', '{\"Population\": 515555}'),
(2264, 'Ibagué', 'COL', 'Tolima', '{\"Population\": 393664}'),
(2265, 'Pereira', 'COL', 'Risaralda', '{\"Population\": 381725}'),
(2266, 'Santa Marta', 'COL', 'Magdalena', '{\"Population\": 359147}'),
(2267, 'Manizales', 'COL', 'Caldas', '{\"Population\": 337580}'),
(2268, 'Bello', 'COL', 'Antioquia', '{\"Population\": 333470}');
INSERT INTO `city` (`ID`, `Name`, `CountryCode`, `District`, `Info`) VALUES
(2269, 'Pasto', 'COL', 'Nariño', '{\"Population\": 332396}'),
(2270, 'Neiva', 'COL', 'Huila', '{\"Population\": 300052}'),
(2271, 'Soledad', 'COL', 'Atlántico', '{\"Population\": 295058}'),
(2272, 'Armenia', 'COL', 'Quindío', '{\"Population\": 288977}'),
(2273, 'Villavicencio', 'COL', 'Meta', '{\"Population\": 273140}'),
(2274, 'Soacha', 'COL', 'Cundinamarca', '{\"Population\": 272058}'),
(2275, 'Valledupar', 'COL', 'Cesar', '{\"Population\": 263247}'),
(2276, 'Montería', 'COL', 'Córdoba', '{\"Population\": 248245}'),
(2277, 'Itagüí', 'COL', 'Antioquia', '{\"Population\": 228985}'),
(2278, 'Palmira', 'COL', 'Valle', '{\"Population\": 226509}'),
(2279, 'Buenaventura', 'COL', 'Valle', '{\"Population\": 224336}'),
(2280, 'Floridablanca', 'COL', 'Santander', '{\"Population\": 221913}'),
(2281, 'Sincelejo', 'COL', 'Sucre', '{\"Population\": 220704}'),
(2282, 'Popayán', 'COL', 'Cauca', '{\"Population\": 200719}'),
(2283, 'Barrancabermeja', 'COL', 'Santander', '{\"Population\": 178020}'),
(2284, 'Dos Quebradas', 'COL', 'Risaralda', '{\"Population\": 159363}'),
(2285, 'Tuluá', 'COL', 'Valle', '{\"Population\": 152488}'),
(2286, 'Envigado', 'COL', 'Antioquia', '{\"Population\": 135848}'),
(2287, 'Cartago', 'COL', 'Valle', '{\"Population\": 125884}'),
(2288, 'Girardot', 'COL', 'Cundinamarca', '{\"Population\": 110963}'),
(2289, 'Buga', 'COL', 'Valle', '{\"Population\": 110699}'),
(2290, 'Tunja', 'COL', 'Boyacá', '{\"Population\": 109740}'),
(2291, 'Florencia', 'COL', 'Caquetá', '{\"Population\": 108574}'),
(2292, 'Maicao', 'COL', 'La Guajira', '{\"Population\": 108053}'),
(2293, 'Sogamoso', 'COL', 'Boyacá', '{\"Population\": 107728}'),
(2294, 'Giron', 'COL', 'Santander', '{\"Population\": 90688}'),
(2295, 'Moroni', 'COM', 'Njazidja', '{\"Population\": 36000}'),
(2296, 'Brazzaville', 'COG', 'Brazzaville', '{\"Population\": 950000}'),
(2297, 'Pointe-Noire', 'COG', 'Kouilou', '{\"Population\": 500000}'),
(2298, 'Kinshasa', 'COD', 'Kinshasa', '{\"Population\": 5064000}'),
(2299, 'Lubumbashi', 'COD', 'Shaba', '{\"Population\": 851381}'),
(2300, 'Mbuji-Mayi', 'COD', 'East Kasai', '{\"Population\": 806475}'),
(2301, 'Kolwezi', 'COD', 'Shaba', '{\"Population\": 417810}'),
(2302, 'Kisangani', 'COD', 'Haute-Zaïre', '{\"Population\": 417517}'),
(2303, 'Kananga', 'COD', 'West Kasai', '{\"Population\": 393030}'),
(2304, 'Likasi', 'COD', 'Shaba', '{\"Population\": 299118}'),
(2305, 'Bukavu', 'COD', 'South Kivu', '{\"Population\": 201569}'),
(2306, 'Kikwit', 'COD', 'Bandundu', '{\"Population\": 182142}'),
(2307, 'Tshikapa', 'COD', 'West Kasai', '{\"Population\": 180860}'),
(2308, 'Matadi', 'COD', 'Bas-Zaïre', '{\"Population\": 172730}'),
(2309, 'Mbandaka', 'COD', 'Equateur', '{\"Population\": 169841}'),
(2310, 'Mwene-Ditu', 'COD', 'East Kasai', '{\"Population\": 137459}'),
(2311, 'Boma', 'COD', 'Bas-Zaïre', '{\"Population\": 135284}'),
(2312, 'Uvira', 'COD', 'South Kivu', '{\"Population\": 115590}'),
(2313, 'Butembo', 'COD', 'North Kivu', '{\"Population\": 109406}'),
(2314, 'Goma', 'COD', 'North Kivu', '{\"Population\": 109094}'),
(2315, 'Kalemie', 'COD', 'Shaba', '{\"Population\": 101309}'),
(2316, 'Bantam', 'CCK', 'Home Island', '{\"Population\": 503}'),
(2317, 'West Island', 'CCK', 'West Island', '{\"Population\": 167}'),
(2318, 'Pyongyang', 'PRK', 'Pyongyang-si', '{\"Population\": 2484000}'),
(2319, 'Hamhung', 'PRK', 'Hamgyong N', '{\"Population\": 709730}'),
(2320, 'Chongjin', 'PRK', 'Hamgyong P', '{\"Population\": 582480}'),
(2321, 'Nampo', 'PRK', 'Nampo-si', '{\"Population\": 566200}'),
(2322, 'Sinuiju', 'PRK', 'Pyongan P', '{\"Population\": 326011}'),
(2323, 'Wonsan', 'PRK', 'Kangwon', '{\"Population\": 300148}'),
(2324, 'Phyongsong', 'PRK', 'Pyongan N', '{\"Population\": 272934}'),
(2325, 'Sariwon', 'PRK', 'Hwanghae P', '{\"Population\": 254146}'),
(2326, 'Haeju', 'PRK', 'Hwanghae N', '{\"Population\": 229172}'),
(2327, 'Kanggye', 'PRK', 'Chagang', '{\"Population\": 223410}'),
(2328, 'Kimchaek', 'PRK', 'Hamgyong P', '{\"Population\": 179000}'),
(2329, 'Hyesan', 'PRK', 'Yanggang', '{\"Population\": 178020}'),
(2330, 'Kaesong', 'PRK', 'Kaesong-si', '{\"Population\": 171500}'),
(2331, 'Seoul', 'KOR', 'Seoul', '{\"Population\": 9981619}'),
(2332, 'Pusan', 'KOR', 'Pusan', '{\"Population\": 3804522}'),
(2333, 'Inchon', 'KOR', 'Inchon', '{\"Population\": 2559424}'),
(2334, 'Taegu', 'KOR', 'Taegu', '{\"Population\": 2548568}'),
(2335, 'Taejon', 'KOR', 'Taejon', '{\"Population\": 1425835}'),
(2336, 'Kwangju', 'KOR', 'Kwangju', '{\"Population\": 1368341}'),
(2337, 'Ulsan', 'KOR', 'Kyongsangnam', '{\"Population\": 1084891}'),
(2338, 'Songnam', 'KOR', 'Kyonggi', '{\"Population\": 869094}'),
(2339, 'Puchon', 'KOR', 'Kyonggi', '{\"Population\": 779412}'),
(2340, 'Suwon', 'KOR', 'Kyonggi', '{\"Population\": 755550}'),
(2341, 'Anyang', 'KOR', 'Kyonggi', '{\"Population\": 591106}'),
(2342, 'Chonju', 'KOR', 'Chollabuk', '{\"Population\": 563153}'),
(2343, 'Chongju', 'KOR', 'Chungchongbuk', '{\"Population\": 531376}'),
(2344, 'Koyang', 'KOR', 'Kyonggi', '{\"Population\": 518282}'),
(2345, 'Ansan', 'KOR', 'Kyonggi', '{\"Population\": 510314}'),
(2346, 'Pohang', 'KOR', 'Kyongsangbuk', '{\"Population\": 508899}'),
(2347, 'Chang-won', 'KOR', 'Kyongsangnam', '{\"Population\": 481694}'),
(2348, 'Masan', 'KOR', 'Kyongsangnam', '{\"Population\": 441242}'),
(2349, 'Kwangmyong', 'KOR', 'Kyonggi', '{\"Population\": 350914}'),
(2350, 'Chonan', 'KOR', 'Chungchongnam', '{\"Population\": 330259}'),
(2351, 'Chinju', 'KOR', 'Kyongsangnam', '{\"Population\": 329886}'),
(2352, 'Iksan', 'KOR', 'Chollabuk', '{\"Population\": 322685}'),
(2353, 'Pyongtaek', 'KOR', 'Kyonggi', '{\"Population\": 312927}'),
(2354, 'Kumi', 'KOR', 'Kyongsangbuk', '{\"Population\": 311431}'),
(2355, 'Uijongbu', 'KOR', 'Kyonggi', '{\"Population\": 276111}'),
(2356, 'Kyongju', 'KOR', 'Kyongsangbuk', '{\"Population\": 272968}'),
(2357, 'Kunsan', 'KOR', 'Chollabuk', '{\"Population\": 266569}'),
(2358, 'Cheju', 'KOR', 'Cheju', '{\"Population\": 258511}'),
(2359, 'Kimhae', 'KOR', 'Kyongsangnam', '{\"Population\": 256370}'),
(2360, 'Sunchon', 'KOR', 'Chollanam', '{\"Population\": 249263}'),
(2361, 'Mokpo', 'KOR', 'Chollanam', '{\"Population\": 247452}'),
(2362, 'Yong-in', 'KOR', 'Kyonggi', '{\"Population\": 242643}'),
(2363, 'Wonju', 'KOR', 'Kang-won', '{\"Population\": 237460}'),
(2364, 'Kunpo', 'KOR', 'Kyonggi', '{\"Population\": 235233}'),
(2365, 'Chunchon', 'KOR', 'Kang-won', '{\"Population\": 234528}'),
(2366, 'Namyangju', 'KOR', 'Kyonggi', '{\"Population\": 229060}'),
(2367, 'Kangnung', 'KOR', 'Kang-won', '{\"Population\": 220403}'),
(2368, 'Chungju', 'KOR', 'Chungchongbuk', '{\"Population\": 205206}'),
(2369, 'Andong', 'KOR', 'Kyongsangbuk', '{\"Population\": 188443}'),
(2370, 'Yosu', 'KOR', 'Chollanam', '{\"Population\": 183596}'),
(2371, 'Kyongsan', 'KOR', 'Kyongsangbuk', '{\"Population\": 173746}'),
(2372, 'Paju', 'KOR', 'Kyonggi', '{\"Population\": 163379}'),
(2373, 'Yangsan', 'KOR', 'Kyongsangnam', '{\"Population\": 163351}'),
(2374, 'Ichon', 'KOR', 'Kyonggi', '{\"Population\": 155332}'),
(2375, 'Asan', 'KOR', 'Chungchongnam', '{\"Population\": 154663}'),
(2376, 'Koje', 'KOR', 'Kyongsangnam', '{\"Population\": 147562}'),
(2377, 'Kimchon', 'KOR', 'Kyongsangbuk', '{\"Population\": 147027}'),
(2378, 'Nonsan', 'KOR', 'Chungchongnam', '{\"Population\": 146619}'),
(2379, 'Kuri', 'KOR', 'Kyonggi', '{\"Population\": 142173}'),
(2380, 'Chong-up', 'KOR', 'Chollabuk', '{\"Population\": 139111}'),
(2381, 'Chechon', 'KOR', 'Chungchongbuk', '{\"Population\": 137070}'),
(2382, 'Sosan', 'KOR', 'Chungchongnam', '{\"Population\": 134746}'),
(2383, 'Shihung', 'KOR', 'Kyonggi', '{\"Population\": 133443}'),
(2384, 'Tong-yong', 'KOR', 'Kyongsangnam', '{\"Population\": 131717}'),
(2385, 'Kongju', 'KOR', 'Chungchongnam', '{\"Population\": 131229}'),
(2386, 'Yongju', 'KOR', 'Kyongsangbuk', '{\"Population\": 131097}'),
(2387, 'Chinhae', 'KOR', 'Kyongsangnam', '{\"Population\": 125997}'),
(2388, 'Sangju', 'KOR', 'Kyongsangbuk', '{\"Population\": 124116}'),
(2389, 'Poryong', 'KOR', 'Chungchongnam', '{\"Population\": 122604}'),
(2390, 'Kwang-yang', 'KOR', 'Chollanam', '{\"Population\": 122052}'),
(2391, 'Miryang', 'KOR', 'Kyongsangnam', '{\"Population\": 121501}'),
(2392, 'Hanam', 'KOR', 'Kyonggi', '{\"Population\": 115812}'),
(2393, 'Kimje', 'KOR', 'Chollabuk', '{\"Population\": 115427}'),
(2394, 'Yongchon', 'KOR', 'Kyongsangbuk', '{\"Population\": 113511}'),
(2395, 'Sachon', 'KOR', 'Kyongsangnam', '{\"Population\": 113494}'),
(2396, 'Uiwang', 'KOR', 'Kyonggi', '{\"Population\": 108788}'),
(2397, 'Naju', 'KOR', 'Chollanam', '{\"Population\": 107831}'),
(2398, 'Namwon', 'KOR', 'Chollabuk', '{\"Population\": 103544}'),
(2399, 'Tonghae', 'KOR', 'Kang-won', '{\"Population\": 95472}'),
(2400, 'Mun-gyong', 'KOR', 'Kyongsangbuk', '{\"Population\": 92239}'),
(2401, 'Athenai', 'GRC', 'Attika', '{\"Population\": 772072}'),
(2402, 'Thessaloniki', 'GRC', 'Central Macedonia', '{\"Population\": 383967}'),
(2403, 'Pireus', 'GRC', 'Attika', '{\"Population\": 182671}'),
(2404, 'Patras', 'GRC', 'West Greece', '{\"Population\": 153344}'),
(2405, 'Peristerion', 'GRC', 'Attika', '{\"Population\": 137288}'),
(2406, 'Herakleion', 'GRC', 'Crete', '{\"Population\": 116178}'),
(2407, 'Kallithea', 'GRC', 'Attika', '{\"Population\": 114233}'),
(2408, 'Larisa', 'GRC', 'Thessalia', '{\"Population\": 113090}'),
(2409, 'Zagreb', 'HRV', 'Grad Zagreb', '{\"Population\": 706770}'),
(2410, 'Split', 'HRV', 'Split-Dalmatia', '{\"Population\": 189388}'),
(2411, 'Rijeka', 'HRV', 'Primorje-Gorski Kota', '{\"Population\": 167964}'),
(2412, 'Osijek', 'HRV', 'Osijek-Baranja', '{\"Population\": 104761}'),
(2413, 'La Habana', 'CUB', 'La Habana', '{\"Population\": 2256000}'),
(2414, 'Santiago de Cuba', 'CUB', 'Santiago de Cuba', '{\"Population\": 433180}'),
(2415, 'Camagüey', 'CUB', 'Camagüey', '{\"Population\": 298726}'),
(2416, 'Holguín', 'CUB', 'Holguín', '{\"Population\": 249492}'),
(2417, 'Santa Clara', 'CUB', 'Villa Clara', '{\"Population\": 207350}'),
(2418, 'Guantánamo', 'CUB', 'Guantánamo', '{\"Population\": 205078}'),
(2419, 'Pinar del Río', 'CUB', 'Pinar del Río', '{\"Population\": 142100}'),
(2420, 'Bayamo', 'CUB', 'Granma', '{\"Population\": 141000}'),
(2421, 'Cienfuegos', 'CUB', 'Cienfuegos', '{\"Population\": 132770}'),
(2422, 'Victoria de las Tunas', 'CUB', 'Las Tunas', '{\"Population\": 132350}'),
(2423, 'Matanzas', 'CUB', 'Matanzas', '{\"Population\": 123273}'),
(2424, 'Manzanillo', 'CUB', 'Granma', '{\"Population\": 109350}'),
(2425, 'Sancti-Spíritus', 'CUB', 'Sancti-Spíritus', '{\"Population\": 100751}'),
(2426, 'Ciego de Ávila', 'CUB', 'Ciego de Ávila', '{\"Population\": 98505}'),
(2427, 'al-Salimiya', 'KWT', 'Hawalli', '{\"Population\": 130215}'),
(2428, 'Jalib al-Shuyukh', 'KWT', 'Hawalli', '{\"Population\": 102178}'),
(2429, 'Kuwait', 'KWT', 'al-Asima', '{\"Population\": 28859}'),
(2430, 'Nicosia', 'CYP', 'Nicosia', '{\"Population\": 195000}'),
(2431, 'Limassol', 'CYP', 'Limassol', '{\"Population\": 154400}'),
(2432, 'Vientiane', 'LAO', 'Viangchan', '{\"Population\": 531800}'),
(2433, 'Savannakhet', 'LAO', 'Savannakhet', '{\"Population\": 96652}'),
(2434, 'Riga', 'LVA', 'Riika', '{\"Population\": 764328}'),
(2435, 'Daugavpils', 'LVA', 'Daugavpils', '{\"Population\": 114829}'),
(2436, 'Liepaja', 'LVA', 'Liepaja', '{\"Population\": 89439}'),
(2437, 'Maseru', 'LSO', 'Maseru', '{\"Population\": 297000}'),
(2438, 'Beirut', 'LBN', 'Beirut', '{\"Population\": 1100000}'),
(2439, 'Tripoli', 'LBN', 'al-Shamal', '{\"Population\": 240000}'),
(2440, 'Monrovia', 'LBR', 'Montserrado', '{\"Population\": 850000}'),
(2441, 'Tripoli', 'LBY', 'Tripoli', '{\"Population\": 1682000}'),
(2442, 'Bengasi', 'LBY', 'Bengasi', '{\"Population\": 804000}'),
(2443, 'Misrata', 'LBY', 'Misrata', '{\"Population\": 121669}'),
(2444, 'al-Zawiya', 'LBY', 'al-Zawiya', '{\"Population\": 89338}'),
(2445, 'Schaan', 'LIE', 'Schaan', '{\"Population\": 5346}'),
(2446, 'Vaduz', 'LIE', 'Vaduz', '{\"Population\": 5043}'),
(2447, 'Vilnius', 'LTU', 'Vilna', '{\"Population\": 577969}'),
(2448, 'Kaunas', 'LTU', 'Kaunas', '{\"Population\": 412639}'),
(2449, 'Klaipeda', 'LTU', 'Klaipeda', '{\"Population\": 202451}'),
(2450, 'Šiauliai', 'LTU', 'Šiauliai', '{\"Population\": 146563}'),
(2451, 'Panevezys', 'LTU', 'Panevezys', '{\"Population\": 133695}'),
(2452, 'Luxembourg [Luxemburg/Lëtzebuerg]', 'LUX', 'Luxembourg', '{\"Population\": 80700}'),
(2453, 'El-Aaiún', 'ESH', 'El-Aaiún', '{\"Population\": 169000}'),
(2454, 'Macao', 'MAC', 'Macau', '{\"Population\": 437500}'),
(2455, 'Antananarivo', 'MDG', 'Antananarivo', '{\"Population\": 675669}'),
(2456, 'Toamasina', 'MDG', 'Toamasina', '{\"Population\": 127441}'),
(2457, 'Antsirabé', 'MDG', 'Antananarivo', '{\"Population\": 120239}'),
(2458, 'Mahajanga', 'MDG', 'Mahajanga', '{\"Population\": 100807}'),
(2459, 'Fianarantsoa', 'MDG', 'Fianarantsoa', '{\"Population\": 99005}'),
(2460, 'Skopje', 'MKD', 'Skopje', '{\"Population\": 444299}'),
(2461, 'Blantyre', 'MWI', 'Blantyre', '{\"Population\": 478155}'),
(2462, 'Lilongwe', 'MWI', 'Lilongwe', '{\"Population\": 435964}'),
(2463, 'Male', 'MDV', 'Maale', '{\"Population\": 71000}'),
(2464, 'Kuala Lumpur', 'MYS', 'Wilayah Persekutuan', '{\"Population\": 1297526}'),
(2465, 'Ipoh', 'MYS', 'Perak', '{\"Population\": 382853}'),
(2466, 'Johor Baharu', 'MYS', 'Johor', '{\"Population\": 328436}'),
(2467, 'Petaling Jaya', 'MYS', 'Selangor', '{\"Population\": 254350}'),
(2468, 'Kelang', 'MYS', 'Selangor', '{\"Population\": 243355}'),
(2469, 'Kuala Terengganu', 'MYS', 'Terengganu', '{\"Population\": 228119}'),
(2470, 'Pinang', 'MYS', 'Pulau Pinang', '{\"Population\": 219603}'),
(2471, 'Kota Bharu', 'MYS', 'Kelantan', '{\"Population\": 219582}'),
(2472, 'Kuantan', 'MYS', 'Pahang', '{\"Population\": 199484}'),
(2473, 'Taiping', 'MYS', 'Perak', '{\"Population\": 183261}'),
(2474, 'Seremban', 'MYS', 'Negeri Sembilan', '{\"Population\": 182869}'),
(2475, 'Kuching', 'MYS', 'Sarawak', '{\"Population\": 148059}'),
(2476, 'Sibu', 'MYS', 'Sarawak', '{\"Population\": 126381}'),
(2477, 'Sandakan', 'MYS', 'Sabah', '{\"Population\": 125841}'),
(2478, 'Alor Setar', 'MYS', 'Kedah', '{\"Population\": 124412}'),
(2479, 'Selayang Baru', 'MYS', 'Selangor', '{\"Population\": 124228}'),
(2480, 'Sungai Petani', 'MYS', 'Kedah', '{\"Population\": 114763}'),
(2481, 'Shah Alam', 'MYS', 'Selangor', '{\"Population\": 102019}'),
(2482, 'Bamako', 'MLI', 'Bamako', '{\"Population\": 809552}'),
(2483, 'Birkirkara', 'MLT', 'Outer Harbour', '{\"Population\": 21445}'),
(2484, 'Valletta', 'MLT', 'Inner Harbour', '{\"Population\": 7073}'),
(2485, 'Casablanca', 'MAR', 'Casablanca', '{\"Population\": 2940623}'),
(2486, 'Rabat', 'MAR', 'Rabat-Salé-Zammour-Z', '{\"Population\": 623457}'),
(2487, 'Marrakech', 'MAR', 'Marrakech-Tensift-Al', '{\"Population\": 621914}'),
(2488, 'Fès', 'MAR', 'Fès-Boulemane', '{\"Population\": 541162}'),
(2489, 'Tanger', 'MAR', 'Tanger-Tétouan', '{\"Population\": 521735}'),
(2490, 'Salé', 'MAR', 'Rabat-Salé-Zammour-Z', '{\"Population\": 504420}'),
(2491, 'Meknès', 'MAR', 'Meknès-Tafilalet', '{\"Population\": 460000}'),
(2492, 'Oujda', 'MAR', 'Oriental', '{\"Population\": 365382}'),
(2493, 'Kénitra', 'MAR', 'Gharb-Chrarda-Béni H', '{\"Population\": 292600}'),
(2494, 'Tétouan', 'MAR', 'Tanger-Tétouan', '{\"Population\": 277516}'),
(2495, 'Safi', 'MAR', 'Doukkala-Abda', '{\"Population\": 262300}'),
(2496, 'Agadir', 'MAR', 'Souss Massa-Draâ', '{\"Population\": 155244}'),
(2497, 'Mohammedia', 'MAR', 'Casablanca', '{\"Population\": 154706}'),
(2498, 'Khouribga', 'MAR', 'Chaouia-Ouardigha', '{\"Population\": 152090}'),
(2499, 'Beni-Mellal', 'MAR', 'Tadla-Azilal', '{\"Population\": 140212}'),
(2500, 'Témara', 'MAR', 'Rabat-Salé-Zammour-Z', '{\"Population\": 126303}'),
(2501, 'El Jadida', 'MAR', 'Doukkala-Abda', '{\"Population\": 119083}'),
(2502, 'Nador', 'MAR', 'Oriental', '{\"Population\": 112450}'),
(2503, 'Ksar el Kebir', 'MAR', 'Tanger-Tétouan', '{\"Population\": 107065}'),
(2504, 'Settat', 'MAR', 'Chaouia-Ouardigha', '{\"Population\": 96200}'),
(2505, 'Taza', 'MAR', 'Taza-Al Hoceima-Taou', '{\"Population\": 92700}'),
(2506, 'El Araich', 'MAR', 'Tanger-Tétouan', '{\"Population\": 90400}'),
(2507, 'Dalap-Uliga-Darrit', 'MHL', 'Majuro', '{\"Population\": 28000}'),
(2508, 'Fort-de-France', 'MTQ', 'Fort-de-France', '{\"Population\": 94050}'),
(2509, 'Nouakchott', 'MRT', 'Nouakchott', '{\"Population\": 667300}'),
(2510, 'Nouâdhibou', 'MRT', 'Dakhlet Nouâdhibou', '{\"Population\": 97600}'),
(2511, 'Port-Louis', 'MUS', 'Port-Louis', '{\"Population\": 138200}'),
(2512, 'Beau Bassin-Rose Hill', 'MUS', 'Plaines Wilhelms', '{\"Population\": 100616}'),
(2513, 'Vacoas-Phoenix', 'MUS', 'Plaines Wilhelms', '{\"Population\": 98464}'),
(2514, 'Mamoutzou', 'MYT', 'Mamoutzou', '{\"Population\": 12000}'),
(2515, 'Ciudad de México', 'MEX', 'Distrito Federal', '{\"Population\": 8591309}'),
(2516, 'Guadalajara', 'MEX', 'Jalisco', '{\"Population\": 1647720}'),
(2517, 'Ecatepec de Morelos', 'MEX', 'México', '{\"Population\": 1620303}'),
(2518, 'Puebla', 'MEX', 'Puebla', '{\"Population\": 1346176}'),
(2519, 'Nezahualcóyotl', 'MEX', 'México', '{\"Population\": 1224924}'),
(2520, 'Juárez', 'MEX', 'Chihuahua', '{\"Population\": 1217818}'),
(2521, 'Tijuana', 'MEX', 'Baja California', '{\"Population\": 1212232}'),
(2522, 'León', 'MEX', 'Guanajuato', '{\"Population\": 1133576}'),
(2523, 'Monterrey', 'MEX', 'Nuevo León', '{\"Population\": 1108499}'),
(2524, 'Zapopan', 'MEX', 'Jalisco', '{\"Population\": 1002239}'),
(2525, 'Naucalpan de Juárez', 'MEX', 'México', '{\"Population\": 857511}'),
(2526, 'Mexicali', 'MEX', 'Baja California', '{\"Population\": 764902}'),
(2527, 'Culiacán', 'MEX', 'Sinaloa', '{\"Population\": 744859}'),
(2528, 'Acapulco de Juárez', 'MEX', 'Guerrero', '{\"Population\": 721011}'),
(2529, 'Tlalnepantla de Baz', 'MEX', 'México', '{\"Population\": 720755}'),
(2530, 'Mérida', 'MEX', 'Yucatán', '{\"Population\": 703324}'),
(2531, 'Chihuahua', 'MEX', 'Chihuahua', '{\"Population\": 670208}'),
(2532, 'San Luis Potosí', 'MEX', 'San Luis Potosí', '{\"Population\": 669353}'),
(2533, 'Guadalupe', 'MEX', 'Nuevo León', '{\"Population\": 668780}'),
(2534, 'Toluca', 'MEX', 'México', '{\"Population\": 665617}'),
(2535, 'Aguascalientes', 'MEX', 'Aguascalientes', '{\"Population\": 643360}'),
(2536, 'Querétaro', 'MEX', 'Querétaro de Arteaga', '{\"Population\": 639839}'),
(2537, 'Morelia', 'MEX', 'Michoacán de Ocampo', '{\"Population\": 619958}'),
(2538, 'Hermosillo', 'MEX', 'Sonora', '{\"Population\": 608697}'),
(2539, 'Saltillo', 'MEX', 'Coahuila de Zaragoza', '{\"Population\": 577352}'),
(2540, 'Torreón', 'MEX', 'Coahuila de Zaragoza', '{\"Population\": 529093}'),
(2541, 'Centro (Villahermosa)', 'MEX', 'Tabasco', '{\"Population\": 519873}'),
(2542, 'San Nicolás de los Garza', 'MEX', 'Nuevo León', '{\"Population\": 495540}'),
(2543, 'Durango', 'MEX', 'Durango', '{\"Population\": 490524}'),
(2544, 'Chimalhuacán', 'MEX', 'México', '{\"Population\": 490245}'),
(2545, 'Tlaquepaque', 'MEX', 'Jalisco', '{\"Population\": 475472}'),
(2546, 'Atizapán de Zaragoza', 'MEX', 'México', '{\"Population\": 467262}'),
(2547, 'Veracruz', 'MEX', 'Veracruz', '{\"Population\": 457119}'),
(2548, 'Cuautitlán Izcalli', 'MEX', 'México', '{\"Population\": 452976}'),
(2549, 'Irapuato', 'MEX', 'Guanajuato', '{\"Population\": 440039}'),
(2550, 'Tuxtla Gutiérrez', 'MEX', 'Chiapas', '{\"Population\": 433544}'),
(2551, 'Tultitlán', 'MEX', 'México', '{\"Population\": 432411}'),
(2552, 'Reynosa', 'MEX', 'Tamaulipas', '{\"Population\": 419776}'),
(2553, 'Benito Juárez', 'MEX', 'Quintana Roo', '{\"Population\": 419276}'),
(2554, 'Matamoros', 'MEX', 'Tamaulipas', '{\"Population\": 416428}'),
(2555, 'Xalapa', 'MEX', 'Veracruz', '{\"Population\": 390058}'),
(2556, 'Celaya', 'MEX', 'Guanajuato', '{\"Population\": 382140}'),
(2557, 'Mazatlán', 'MEX', 'Sinaloa', '{\"Population\": 380265}'),
(2558, 'Ensenada', 'MEX', 'Baja California', '{\"Population\": 369573}'),
(2559, 'Ahome', 'MEX', 'Sinaloa', '{\"Population\": 358663}'),
(2560, 'Cajeme', 'MEX', 'Sonora', '{\"Population\": 355679}'),
(2561, 'Cuernavaca', 'MEX', 'Morelos', '{\"Population\": 337966}'),
(2562, 'Tonalá', 'MEX', 'Jalisco', '{\"Population\": 336109}'),
(2563, 'Valle de Chalco Solidaridad', 'MEX', 'México', '{\"Population\": 323113}'),
(2564, 'Nuevo Laredo', 'MEX', 'Tamaulipas', '{\"Population\": 310277}'),
(2565, 'Tepic', 'MEX', 'Nayarit', '{\"Population\": 305025}'),
(2566, 'Tampico', 'MEX', 'Tamaulipas', '{\"Population\": 294789}'),
(2567, 'Ixtapaluca', 'MEX', 'México', '{\"Population\": 293160}'),
(2568, 'Apodaca', 'MEX', 'Nuevo León', '{\"Population\": 282941}'),
(2569, 'Guasave', 'MEX', 'Sinaloa', '{\"Population\": 277201}'),
(2570, 'Gómez Palacio', 'MEX', 'Durango', '{\"Population\": 272806}'),
(2571, 'Tapachula', 'MEX', 'Chiapas', '{\"Population\": 271141}'),
(2572, 'Nicolás Romero', 'MEX', 'México', '{\"Population\": 269393}'),
(2573, 'Coatzacoalcos', 'MEX', 'Veracruz', '{\"Population\": 267037}'),
(2574, 'Uruapan', 'MEX', 'Michoacán de Ocampo', '{\"Population\": 265211}'),
(2575, 'Victoria', 'MEX', 'Tamaulipas', '{\"Population\": 262686}'),
(2576, 'Oaxaca de Juárez', 'MEX', 'Oaxaca', '{\"Population\": 256848}'),
(2577, 'Coacalco de Berriozábal', 'MEX', 'México', '{\"Population\": 252270}'),
(2578, 'Pachuca de Soto', 'MEX', 'Hidalgo', '{\"Population\": 244688}'),
(2579, 'General Escobedo', 'MEX', 'Nuevo León', '{\"Population\": 232961}'),
(2580, 'Salamanca', 'MEX', 'Guanajuato', '{\"Population\": 226864}'),
(2581, 'Santa Catarina', 'MEX', 'Nuevo León', '{\"Population\": 226573}'),
(2582, 'Tehuacán', 'MEX', 'Puebla', '{\"Population\": 225943}'),
(2583, 'Chalco', 'MEX', 'México', '{\"Population\": 222201}'),
(2584, 'Cárdenas', 'MEX', 'Tabasco', '{\"Population\": 216903}'),
(2585, 'Campeche', 'MEX', 'Campeche', '{\"Population\": 216735}'),
(2586, 'La Paz', 'MEX', 'México', '{\"Population\": 213045}'),
(2587, 'Othón P. Blanco (Chetumal)', 'MEX', 'Quintana Roo', '{\"Population\": 208014}'),
(2588, 'Texcoco', 'MEX', 'México', '{\"Population\": 203681}'),
(2589, 'La Paz', 'MEX', 'Baja California Sur', '{\"Population\": 196708}'),
(2590, 'Metepec', 'MEX', 'México', '{\"Population\": 194265}'),
(2591, 'Monclova', 'MEX', 'Coahuila de Zaragoza', '{\"Population\": 193657}'),
(2592, 'Huixquilucan', 'MEX', 'México', '{\"Population\": 193156}'),
(2593, 'Chilpancingo de los Bravo', 'MEX', 'Guerrero', '{\"Population\": 192509}'),
(2594, 'Puerto Vallarta', 'MEX', 'Jalisco', '{\"Population\": 183741}'),
(2595, 'Fresnillo', 'MEX', 'Zacatecas', '{\"Population\": 182744}'),
(2596, 'Ciudad Madero', 'MEX', 'Tamaulipas', '{\"Population\": 182012}'),
(2597, 'Soledad de Graciano Sánchez', 'MEX', 'San Luis Potosí', '{\"Population\": 179956}'),
(2598, 'San Juan del Río', 'MEX', 'Querétaro', '{\"Population\": 179300}'),
(2599, 'San Felipe del Progreso', 'MEX', 'México', '{\"Population\": 177330}'),
(2600, 'Córdoba', 'MEX', 'Veracruz', '{\"Population\": 176952}'),
(2601, 'Tecámac', 'MEX', 'México', '{\"Population\": 172410}'),
(2602, 'Ocosingo', 'MEX', 'Chiapas', '{\"Population\": 171495}'),
(2603, 'Carmen', 'MEX', 'Campeche', '{\"Population\": 171367}'),
(2604, 'Lázaro Cárdenas', 'MEX', 'Michoacán de Ocampo', '{\"Population\": 170878}'),
(2605, 'Jiutepec', 'MEX', 'Morelos', '{\"Population\": 170428}'),
(2606, 'Papantla', 'MEX', 'Veracruz', '{\"Population\": 170123}'),
(2607, 'Comalcalco', 'MEX', 'Tabasco', '{\"Population\": 164640}'),
(2608, 'Zamora', 'MEX', 'Michoacán de Ocampo', '{\"Population\": 161191}'),
(2609, 'Nogales', 'MEX', 'Sonora', '{\"Population\": 159103}'),
(2610, 'Huimanguillo', 'MEX', 'Tabasco', '{\"Population\": 158335}'),
(2611, 'Cuautla', 'MEX', 'Morelos', '{\"Population\": 153132}'),
(2612, 'Minatitlán', 'MEX', 'Veracruz', '{\"Population\": 152983}'),
(2613, 'Poza Rica de Hidalgo', 'MEX', 'Veracruz', '{\"Population\": 152678}'),
(2614, 'Ciudad Valles', 'MEX', 'San Luis Potosí', '{\"Population\": 146411}'),
(2615, 'Navolato', 'MEX', 'Sinaloa', '{\"Population\": 145396}'),
(2616, 'San Luis Río Colorado', 'MEX', 'Sonora', '{\"Population\": 145276}'),
(2617, 'Pénjamo', 'MEX', 'Guanajuato', '{\"Population\": 143927}'),
(2618, 'San Andrés Tuxtla', 'MEX', 'Veracruz', '{\"Population\": 142251}'),
(2619, 'Guanajuato', 'MEX', 'Guanajuato', '{\"Population\": 141215}'),
(2620, 'Navojoa', 'MEX', 'Sonora', '{\"Population\": 140495}'),
(2621, 'Zitácuaro', 'MEX', 'Michoacán de Ocampo', '{\"Population\": 137970}'),
(2622, 'Boca del Río', 'MEX', 'Veracruz-Llave', '{\"Population\": 135721}'),
(2623, 'Allende', 'MEX', 'Guanajuato', '{\"Population\": 134645}'),
(2624, 'Silao', 'MEX', 'Guanajuato', '{\"Population\": 134037}'),
(2625, 'Macuspana', 'MEX', 'Tabasco', '{\"Population\": 133795}'),
(2626, 'San Juan Bautista Tuxtepec', 'MEX', 'Oaxaca', '{\"Population\": 133675}'),
(2627, 'San Cristóbal de las Casas', 'MEX', 'Chiapas', '{\"Population\": 132317}'),
(2628, 'Valle de Santiago', 'MEX', 'Guanajuato', '{\"Population\": 130557}'),
(2629, 'Guaymas', 'MEX', 'Sonora', '{\"Population\": 130108}'),
(2630, 'Colima', 'MEX', 'Colima', '{\"Population\": 129454}'),
(2631, 'Dolores Hidalgo', 'MEX', 'Guanajuato', '{\"Population\": 128675}'),
(2632, 'Lagos de Moreno', 'MEX', 'Jalisco', '{\"Population\": 127949}'),
(2633, 'Piedras Negras', 'MEX', 'Coahuila de Zaragoza', '{\"Population\": 127898}'),
(2634, 'Altamira', 'MEX', 'Tamaulipas', '{\"Population\": 127490}'),
(2635, 'Túxpam', 'MEX', 'Veracruz', '{\"Population\": 126475}'),
(2636, 'San Pedro Garza García', 'MEX', 'Nuevo León', '{\"Population\": 126147}'),
(2637, 'Cuauhtémoc', 'MEX', 'Chihuahua', '{\"Population\": 124279}'),
(2638, 'Manzanillo', 'MEX', 'Colima', '{\"Population\": 124014}'),
(2639, 'Iguala de la Independencia', 'MEX', 'Guerrero', '{\"Population\": 123883}'),
(2640, 'Zacatecas', 'MEX', 'Zacatecas', '{\"Population\": 123700}'),
(2641, 'Tlajomulco de Zúñiga', 'MEX', 'Jalisco', '{\"Population\": 123220}'),
(2642, 'Tulancingo de Bravo', 'MEX', 'Hidalgo', '{\"Population\": 121946}'),
(2643, 'Zinacantepec', 'MEX', 'México', '{\"Population\": 121715}'),
(2644, 'San Martín Texmelucan', 'MEX', 'Puebla', '{\"Population\": 121093}'),
(2645, 'Tepatitlán de Morelos', 'MEX', 'Jalisco', '{\"Population\": 118948}'),
(2646, 'Martínez de la Torre', 'MEX', 'Veracruz', '{\"Population\": 118815}'),
(2647, 'Orizaba', 'MEX', 'Veracruz', '{\"Population\": 118488}'),
(2648, 'Apatzingán', 'MEX', 'Michoacán de Ocampo', '{\"Population\": 117849}'),
(2649, 'Atlixco', 'MEX', 'Puebla', '{\"Population\": 117019}'),
(2650, 'Delicias', 'MEX', 'Chihuahua', '{\"Population\": 116132}'),
(2651, 'Ixtlahuaca', 'MEX', 'México', '{\"Population\": 115548}'),
(2652, 'El Mante', 'MEX', 'Tamaulipas', '{\"Population\": 112453}'),
(2653, 'Lerdo', 'MEX', 'Durango', '{\"Population\": 112272}'),
(2654, 'Almoloya de Juárez', 'MEX', 'México', '{\"Population\": 110550}'),
(2655, 'Acámbaro', 'MEX', 'Guanajuato', '{\"Population\": 110487}'),
(2656, 'Acuña', 'MEX', 'Coahuila de Zaragoza', '{\"Population\": 110388}'),
(2657, 'Guadalupe', 'MEX', 'Zacatecas', '{\"Population\": 108881}'),
(2658, 'Huejutla de Reyes', 'MEX', 'Hidalgo', '{\"Population\": 108017}'),
(2659, 'Hidalgo', 'MEX', 'Michoacán de Ocampo', '{\"Population\": 106198}'),
(2660, 'Los Cabos', 'MEX', 'Baja California Sur', '{\"Population\": 105199}'),
(2661, 'Comitán de Domínguez', 'MEX', 'Chiapas', '{\"Population\": 104986}'),
(2662, 'Cunduacán', 'MEX', 'Tabasco', '{\"Population\": 104164}'),
(2663, 'Río Bravo', 'MEX', 'Tamaulipas', '{\"Population\": 103901}'),
(2664, 'Temapache', 'MEX', 'Veracruz', '{\"Population\": 102824}'),
(2665, 'Chilapa de Alvarez', 'MEX', 'Guerrero', '{\"Population\": 102716}'),
(2666, 'Hidalgo del Parral', 'MEX', 'Chihuahua', '{\"Population\": 100881}'),
(2667, 'San Francisco del Rincón', 'MEX', 'Guanajuato', '{\"Population\": 100149}'),
(2668, 'Taxco de Alarcón', 'MEX', 'Guerrero', '{\"Population\": 99907}'),
(2669, 'Zumpango', 'MEX', 'México', '{\"Population\": 99781}'),
(2670, 'San Pedro Cholula', 'MEX', 'Puebla', '{\"Population\": 99734}'),
(2671, 'Lerma', 'MEX', 'México', '{\"Population\": 99714}'),
(2672, 'Tecomán', 'MEX', 'Colima', '{\"Population\": 99296}'),
(2673, 'Las Margaritas', 'MEX', 'Chiapas', '{\"Population\": 97389}'),
(2674, 'Cosoleacaque', 'MEX', 'Veracruz', '{\"Population\": 97199}'),
(2675, 'San Luis de la Paz', 'MEX', 'Guanajuato', '{\"Population\": 96763}'),
(2676, 'José Azueta', 'MEX', 'Guerrero', '{\"Population\": 95448}'),
(2677, 'Santiago Ixcuintla', 'MEX', 'Nayarit', '{\"Population\": 95311}'),
(2678, 'San Felipe', 'MEX', 'Guanajuato', '{\"Population\": 95305}'),
(2679, 'Tejupilco', 'MEX', 'México', '{\"Population\": 94934}'),
(2680, 'Tantoyuca', 'MEX', 'Veracruz', '{\"Population\": 94709}'),
(2681, 'Salvatierra', 'MEX', 'Guanajuato', '{\"Population\": 94322}'),
(2682, 'Tultepec', 'MEX', 'México', '{\"Population\": 93364}'),
(2683, 'Temixco', 'MEX', 'Morelos', '{\"Population\": 92686}'),
(2684, 'Matamoros', 'MEX', 'Coahuila de Zaragoza', '{\"Population\": 91858}'),
(2685, 'Pánuco', 'MEX', 'Veracruz', '{\"Population\": 90551}'),
(2686, 'El Fuerte', 'MEX', 'Sinaloa', '{\"Population\": 89556}'),
(2687, 'Tierra Blanca', 'MEX', 'Veracruz', '{\"Population\": 89143}'),
(2688, 'Weno', 'FSM', 'Chuuk', '{\"Population\": 22000}'),
(2689, 'Palikir', 'FSM', 'Pohnpei', '{\"Population\": 8600}'),
(2690, 'Chisinau', 'MDA', 'Chisinau', '{\"Population\": 719900}'),
(2691, 'Tiraspol', 'MDA', 'Dnjestria', '{\"Population\": 194300}'),
(2692, 'Balti', 'MDA', 'Balti', '{\"Population\": 153400}'),
(2693, 'Bender (Tîghina)', 'MDA', 'Bender (Tîghina)', '{\"Population\": 125700}'),
(2694, 'Monte-Carlo', 'MCO', '–', '{\"Population\": 13154}'),
(2695, 'Monaco-Ville', 'MCO', '–', '{\"Population\": 1234}'),
(2696, 'Ulan Bator', 'MNG', 'Ulaanbaatar', '{\"Population\": 773700}'),
(2697, 'Plymouth', 'MSR', 'Plymouth', '{\"Population\": 2000}'),
(2698, 'Maputo', 'MOZ', 'Maputo', '{\"Population\": 1018938}'),
(2699, 'Matola', 'MOZ', 'Maputo', '{\"Population\": 424662}'),
(2700, 'Beira', 'MOZ', 'Sofala', '{\"Population\": 397368}'),
(2701, 'Nampula', 'MOZ', 'Nampula', '{\"Population\": 303346}'),
(2702, 'Chimoio', 'MOZ', 'Manica', '{\"Population\": 171056}'),
(2703, 'Naçala-Porto', 'MOZ', 'Nampula', '{\"Population\": 158248}'),
(2704, 'Quelimane', 'MOZ', 'Zambézia', '{\"Population\": 150116}'),
(2705, 'Mocuba', 'MOZ', 'Zambézia', '{\"Population\": 124700}'),
(2706, 'Tete', 'MOZ', 'Tete', '{\"Population\": 101984}'),
(2707, 'Xai-Xai', 'MOZ', 'Gaza', '{\"Population\": 99442}'),
(2708, 'Gurue', 'MOZ', 'Zambézia', '{\"Population\": 99300}'),
(2709, 'Maxixe', 'MOZ', 'Inhambane', '{\"Population\": 93985}'),
(2710, 'Rangoon (Yangon)', 'MMR', 'Rangoon [Yangon]', '{\"Population\": 3361700}'),
(2711, 'Mandalay', 'MMR', 'Mandalay', '{\"Population\": 885300}'),
(2712, 'Moulmein (Mawlamyine)', 'MMR', 'Mon', '{\"Population\": 307900}'),
(2713, 'Pegu (Bago)', 'MMR', 'Pegu [Bago]', '{\"Population\": 190900}'),
(2714, 'Bassein (Pathein)', 'MMR', 'Irrawaddy [Ayeyarwad', '{\"Population\": 183900}'),
(2715, 'Monywa', 'MMR', 'Sagaing', '{\"Population\": 138600}'),
(2716, 'Sittwe (Akyab)', 'MMR', 'Rakhine', '{\"Population\": 137600}'),
(2717, 'Taunggyi (Taunggye)', 'MMR', 'Shan', '{\"Population\": 131500}'),
(2718, 'Meikhtila', 'MMR', 'Mandalay', '{\"Population\": 129700}'),
(2719, 'Mergui (Myeik)', 'MMR', 'Tenasserim [Tanintha', '{\"Population\": 122700}'),
(2720, 'Lashio (Lasho)', 'MMR', 'Shan', '{\"Population\": 107600}'),
(2721, 'Prome (Pyay)', 'MMR', 'Pegu [Bago]', '{\"Population\": 105700}'),
(2722, 'Henzada (Hinthada)', 'MMR', 'Irrawaddy [Ayeyarwad', '{\"Population\": 104700}'),
(2723, 'Myingyan', 'MMR', 'Mandalay', '{\"Population\": 103600}'),
(2724, 'Tavoy (Dawei)', 'MMR', 'Tenasserim [Tanintha', '{\"Population\": 96800}'),
(2725, 'Pagakku (Pakokku)', 'MMR', 'Magwe [Magway]', '{\"Population\": 94800}'),
(2726, 'Windhoek', 'NAM', 'Khomas', '{\"Population\": 169000}'),
(2727, 'Yangor', 'NRU', '–', '{\"Population\": 4050}'),
(2728, 'Yaren', 'NRU', '–', '{\"Population\": 559}'),
(2729, 'Kathmandu', 'NPL', 'Central', '{\"Population\": 591835}'),
(2730, 'Biratnagar', 'NPL', 'Eastern', '{\"Population\": 157764}'),
(2731, 'Pokhara', 'NPL', 'Western', '{\"Population\": 146318}'),
(2732, 'Lalitapur', 'NPL', 'Central', '{\"Population\": 145847}'),
(2733, 'Birgunj', 'NPL', 'Central', '{\"Population\": 90639}'),
(2734, 'Managua', 'NIC', 'Managua', '{\"Population\": 959000}'),
(2735, 'León', 'NIC', 'León', '{\"Population\": 123865}'),
(2736, 'Chinandega', 'NIC', 'Chinandega', '{\"Population\": 97387}'),
(2737, 'Masaya', 'NIC', 'Masaya', '{\"Population\": 88971}'),
(2738, 'Niamey', 'NER', 'Niamey', '{\"Population\": 420000}'),
(2739, 'Zinder', 'NER', 'Zinder', '{\"Population\": 120892}'),
(2740, 'Maradi', 'NER', 'Maradi', '{\"Population\": 112965}'),
(2741, 'Lagos', 'NGA', 'Lagos', '{\"Population\": 1518000}'),
(2742, 'Ibadan', 'NGA', 'Oyo & Osun', '{\"Population\": 1432000}'),
(2743, 'Ogbomosho', 'NGA', 'Oyo & Osun', '{\"Population\": 730000}'),
(2744, 'Kano', 'NGA', 'Kano & Jigawa', '{\"Population\": 674100}'),
(2745, 'Oshogbo', 'NGA', 'Oyo & Osun', '{\"Population\": 476800}'),
(2746, 'Ilorin', 'NGA', 'Kwara & Kogi', '{\"Population\": 475800}'),
(2747, 'Abeokuta', 'NGA', 'Ogun', '{\"Population\": 427400}'),
(2748, 'Port Harcourt', 'NGA', 'Rivers & Bayelsa', '{\"Population\": 410000}'),
(2749, 'Zaria', 'NGA', 'Kaduna', '{\"Population\": 379200}'),
(2750, 'Ilesha', 'NGA', 'Oyo & Osun', '{\"Population\": 378400}'),
(2751, 'Onitsha', 'NGA', 'Anambra & Enugu & Eb', '{\"Population\": 371900}'),
(2752, 'Iwo', 'NGA', 'Oyo & Osun', '{\"Population\": 362000}'),
(2753, 'Ado-Ekiti', 'NGA', 'Ondo & Ekiti', '{\"Population\": 359400}'),
(2754, 'Abuja', 'NGA', 'Federal Capital Dist', '{\"Population\": 350100}'),
(2755, 'Kaduna', 'NGA', 'Kaduna', '{\"Population\": 342200}'),
(2756, 'Mushin', 'NGA', 'Lagos', '{\"Population\": 333200}'),
(2757, 'Maiduguri', 'NGA', 'Borno & Yobe', '{\"Population\": 320000}'),
(2758, 'Enugu', 'NGA', 'Anambra & Enugu & Eb', '{\"Population\": 316100}'),
(2759, 'Ede', 'NGA', 'Oyo & Osun', '{\"Population\": 307100}'),
(2760, 'Aba', 'NGA', 'Imo & Abia', '{\"Population\": 298900}'),
(2761, 'Ife', 'NGA', 'Oyo & Osun', '{\"Population\": 296800}'),
(2762, 'Ila', 'NGA', 'Oyo & Osun', '{\"Population\": 264000}'),
(2763, 'Oyo', 'NGA', 'Oyo & Osun', '{\"Population\": 256400}'),
(2764, 'Ikerre', 'NGA', 'Ondo & Ekiti', '{\"Population\": 244600}'),
(2765, 'Benin City', 'NGA', 'Edo & Delta', '{\"Population\": 229400}'),
(2766, 'Iseyin', 'NGA', 'Oyo & Osun', '{\"Population\": 217300}'),
(2767, 'Katsina', 'NGA', 'Katsina', '{\"Population\": 206500}'),
(2768, 'Jos', 'NGA', 'Plateau & Nassarawa', '{\"Population\": 206300}'),
(2769, 'Sokoto', 'NGA', 'Sokoto & Kebbi & Zam', '{\"Population\": 204900}'),
(2770, 'Ilobu', 'NGA', 'Oyo & Osun', '{\"Population\": 199000}'),
(2771, 'Offa', 'NGA', 'Kwara & Kogi', '{\"Population\": 197200}'),
(2772, 'Ikorodu', 'NGA', 'Lagos', '{\"Population\": 184900}'),
(2773, 'Ilawe-Ekiti', 'NGA', 'Ondo & Ekiti', '{\"Population\": 184500}'),
(2774, 'Owo', 'NGA', 'Ondo & Ekiti', '{\"Population\": 183500}'),
(2775, 'Ikirun', 'NGA', 'Oyo & Osun', '{\"Population\": 181400}'),
(2776, 'Shaki', 'NGA', 'Oyo & Osun', '{\"Population\": 174500}'),
(2777, 'Calabar', 'NGA', 'Cross River', '{\"Population\": 174400}'),
(2778, 'Ondo', 'NGA', 'Ondo & Ekiti', '{\"Population\": 173600}'),
(2779, 'Akure', 'NGA', 'Ondo & Ekiti', '{\"Population\": 162300}'),
(2780, 'Gusau', 'NGA', 'Sokoto & Kebbi & Zam', '{\"Population\": 158000}'),
(2781, 'Ijebu-Ode', 'NGA', 'Ogun', '{\"Population\": 156400}'),
(2782, 'Effon-Alaiye', 'NGA', 'Oyo & Osun', '{\"Population\": 153100}'),
(2783, 'Kumo', 'NGA', 'Bauchi & Gombe', '{\"Population\": 148000}'),
(2784, 'Shomolu', 'NGA', 'Lagos', '{\"Population\": 147700}'),
(2785, 'Oka-Akoko', 'NGA', 'Ondo & Ekiti', '{\"Population\": 142900}'),
(2786, 'Ikare', 'NGA', 'Ondo & Ekiti', '{\"Population\": 140800}'),
(2787, 'Sapele', 'NGA', 'Edo & Delta', '{\"Population\": 139200}'),
(2788, 'Deba Habe', 'NGA', 'Bauchi & Gombe', '{\"Population\": 138600}'),
(2789, 'Minna', 'NGA', 'Niger', '{\"Population\": 136900}'),
(2790, 'Warri', 'NGA', 'Edo & Delta', '{\"Population\": 126100}'),
(2791, 'Bida', 'NGA', 'Niger', '{\"Population\": 125500}'),
(2792, 'Ikire', 'NGA', 'Oyo & Osun', '{\"Population\": 123300}'),
(2793, 'Makurdi', 'NGA', 'Benue', '{\"Population\": 123100}'),
(2794, 'Lafia', 'NGA', 'Plateau & Nassarawa', '{\"Population\": 122500}'),
(2795, 'Inisa', 'NGA', 'Oyo & Osun', '{\"Population\": 119800}'),
(2796, 'Shagamu', 'NGA', 'Ogun', '{\"Population\": 117200}'),
(2797, 'Awka', 'NGA', 'Anambra & Enugu & Eb', '{\"Population\": 111200}'),
(2798, 'Gombe', 'NGA', 'Bauchi & Gombe', '{\"Population\": 107800}'),
(2799, 'Igboho', 'NGA', 'Oyo & Osun', '{\"Population\": 106800}'),
(2800, 'Ejigbo', 'NGA', 'Oyo & Osun', '{\"Population\": 105900}'),
(2801, 'Agege', 'NGA', 'Lagos', '{\"Population\": 105000}'),
(2802, 'Ise-Ekiti', 'NGA', 'Ondo & Ekiti', '{\"Population\": 103400}'),
(2803, 'Ugep', 'NGA', 'Cross River', '{\"Population\": 102600}'),
(2804, 'Epe', 'NGA', 'Lagos', '{\"Population\": 101000}'),
(2805, 'Alofi', 'NIU', '–', '{\"Population\": 682}'),
(2806, 'Kingston', 'NFK', '–', '{\"Population\": 800}'),
(2807, 'Oslo', 'NOR', 'Oslo', '{\"Population\": 508726}'),
(2808, 'Bergen', 'NOR', 'Hordaland', '{\"Population\": 230948}'),
(2809, 'Trondheim', 'NOR', 'Sør-Trøndelag', '{\"Population\": 150166}'),
(2810, 'Stavanger', 'NOR', 'Rogaland', '{\"Population\": 108848}'),
(2811, 'Bærum', 'NOR', 'Akershus', '{\"Population\": 101340}'),
(2812, 'Abidjan', 'CIV', 'Abidjan', '{\"Population\": 2500000}'),
(2813, 'Bouaké', 'CIV', 'Bouaké', '{\"Population\": 329850}'),
(2814, 'Yamoussoukro', 'CIV', 'Yamoussoukro', '{\"Population\": 130000}'),
(2815, 'Daloa', 'CIV', 'Daloa', '{\"Population\": 121842}'),
(2816, 'Korhogo', 'CIV', 'Korhogo', '{\"Population\": 109445}'),
(2817, 'al-Sib', 'OMN', 'Masqat', '{\"Population\": 155000}'),
(2818, 'Salala', 'OMN', 'Zufar', '{\"Population\": 131813}'),
(2819, 'Bawshar', 'OMN', 'Masqat', '{\"Population\": 107500}'),
(2820, 'Suhar', 'OMN', 'al-Batina', '{\"Population\": 90814}'),
(2821, 'Masqat', 'OMN', 'Masqat', '{\"Population\": 51969}'),
(2822, 'Karachi', 'PAK', 'Sindh', '{\"Population\": 9269265}'),
(2823, 'Lahore', 'PAK', 'Punjab', '{\"Population\": 5063499}'),
(2824, 'Faisalabad', 'PAK', 'Punjab', '{\"Population\": 1977246}'),
(2825, 'Rawalpindi', 'PAK', 'Punjab', '{\"Population\": 1406214}'),
(2826, 'Multan', 'PAK', 'Punjab', '{\"Population\": 1182441}'),
(2827, 'Hyderabad', 'PAK', 'Sindh', '{\"Population\": 1151274}'),
(2828, 'Gujranwala', 'PAK', 'Punjab', '{\"Population\": 1124749}'),
(2829, 'Peshawar', 'PAK', 'Nothwest Border Prov', '{\"Population\": 988005}'),
(2830, 'Quetta', 'PAK', 'Baluchistan', '{\"Population\": 560307}'),
(2831, 'Islamabad', 'PAK', 'Islamabad', '{\"Population\": 524500}'),
(2832, 'Sargodha', 'PAK', 'Punjab', '{\"Population\": 455360}'),
(2833, 'Sialkot', 'PAK', 'Punjab', '{\"Population\": 417597}'),
(2834, 'Bahawalpur', 'PAK', 'Punjab', '{\"Population\": 403408}'),
(2835, 'Sukkur', 'PAK', 'Sindh', '{\"Population\": 329176}'),
(2836, 'Jhang', 'PAK', 'Punjab', '{\"Population\": 292214}'),
(2837, 'Sheikhupura', 'PAK', 'Punjab', '{\"Population\": 271875}'),
(2838, 'Larkana', 'PAK', 'Sindh', '{\"Population\": 270366}'),
(2839, 'Gujrat', 'PAK', 'Punjab', '{\"Population\": 250121}'),
(2840, 'Mardan', 'PAK', 'Nothwest Border Prov', '{\"Population\": 244511}'),
(2841, 'Kasur', 'PAK', 'Punjab', '{\"Population\": 241649}'),
(2842, 'Rahim Yar Khan', 'PAK', 'Punjab', '{\"Population\": 228479}'),
(2843, 'Sahiwal', 'PAK', 'Punjab', '{\"Population\": 207388}'),
(2844, 'Okara', 'PAK', 'Punjab', '{\"Population\": 200901}'),
(2845, 'Wah', 'PAK', 'Punjab', '{\"Population\": 198400}'),
(2846, 'Dera Ghazi Khan', 'PAK', 'Punjab', '{\"Population\": 188100}'),
(2847, 'Mirpur Khas', 'PAK', 'Sind', '{\"Population\": 184500}'),
(2848, 'Nawabshah', 'PAK', 'Sind', '{\"Population\": 183100}'),
(2849, 'Mingora', 'PAK', 'Nothwest Border Prov', '{\"Population\": 174500}'),
(2850, 'Chiniot', 'PAK', 'Punjab', '{\"Population\": 169300}'),
(2851, 'Kamoke', 'PAK', 'Punjab', '{\"Population\": 151000}'),
(2852, 'Mandi Burewala', 'PAK', 'Punjab', '{\"Population\": 149900}'),
(2853, 'Jhelum', 'PAK', 'Punjab', '{\"Population\": 145800}'),
(2854, 'Sadiqabad', 'PAK', 'Punjab', '{\"Population\": 141500}'),
(2855, 'Jacobabad', 'PAK', 'Sind', '{\"Population\": 137700}'),
(2856, 'Shikarpur', 'PAK', 'Sind', '{\"Population\": 133300}'),
(2857, 'Khanewal', 'PAK', 'Punjab', '{\"Population\": 133000}'),
(2858, 'Hafizabad', 'PAK', 'Punjab', '{\"Population\": 130200}'),
(2859, 'Kohat', 'PAK', 'Nothwest Border Prov', '{\"Population\": 125300}'),
(2860, 'Muzaffargarh', 'PAK', 'Punjab', '{\"Population\": 121600}'),
(2861, 'Khanpur', 'PAK', 'Punjab', '{\"Population\": 117800}'),
(2862, 'Gojra', 'PAK', 'Punjab', '{\"Population\": 115000}'),
(2863, 'Bahawalnagar', 'PAK', 'Punjab', '{\"Population\": 109600}'),
(2864, 'Muridke', 'PAK', 'Punjab', '{\"Population\": 108600}'),
(2865, 'Pak Pattan', 'PAK', 'Punjab', '{\"Population\": 107800}'),
(2866, 'Abottabad', 'PAK', 'Nothwest Border Prov', '{\"Population\": 106000}'),
(2867, 'Tando Adam', 'PAK', 'Sind', '{\"Population\": 103400}'),
(2868, 'Jaranwala', 'PAK', 'Punjab', '{\"Population\": 103300}'),
(2869, 'Khairpur', 'PAK', 'Sind', '{\"Population\": 102200}'),
(2870, 'Chishtian Mandi', 'PAK', 'Punjab', '{\"Population\": 101700}'),
(2871, 'Daska', 'PAK', 'Punjab', '{\"Population\": 101500}'),
(2872, 'Dadu', 'PAK', 'Sind', '{\"Population\": 98600}'),
(2873, 'Mandi Bahauddin', 'PAK', 'Punjab', '{\"Population\": 97300}'),
(2874, 'Ahmadpur East', 'PAK', 'Punjab', '{\"Population\": 96000}'),
(2875, 'Kamalia', 'PAK', 'Punjab', '{\"Population\": 95300}'),
(2876, 'Khuzdar', 'PAK', 'Baluchistan', '{\"Population\": 93100}'),
(2877, 'Vihari', 'PAK', 'Punjab', '{\"Population\": 92300}'),
(2878, 'Dera Ismail Khan', 'PAK', 'Nothwest Border Prov', '{\"Population\": 90400}'),
(2879, 'Wazirabad', 'PAK', 'Punjab', '{\"Population\": 89700}'),
(2880, 'Nowshera', 'PAK', 'Nothwest Border Prov', '{\"Population\": 89400}'),
(2881, 'Koror', 'PLW', 'Koror', '{\"Population\": 12000}'),
(2882, 'Ciudad de Panamá', 'PAN', 'Panamá', '{\"Population\": 471373}'),
(2883, 'San Miguelito', 'PAN', 'San Miguelito', '{\"Population\": 315382}'),
(2884, 'Port Moresby', 'PNG', 'National Capital Dis', '{\"Population\": 247000}'),
(2885, 'Asunción', 'PRY', 'Asunción', '{\"Population\": 557776}'),
(2886, 'Ciudad del Este', 'PRY', 'Alto Paraná', '{\"Population\": 133881}'),
(2887, 'San Lorenzo', 'PRY', 'Central', '{\"Population\": 133395}'),
(2888, 'Lambaré', 'PRY', 'Central', '{\"Population\": 99681}'),
(2889, 'Fernando de la Mora', 'PRY', 'Central', '{\"Population\": 95287}'),
(2890, 'Lima', 'PER', 'Lima', '{\"Population\": 6464693}'),
(2891, 'Arequipa', 'PER', 'Arequipa', '{\"Population\": 762000}'),
(2892, 'Trujillo', 'PER', 'La Libertad', '{\"Population\": 652000}'),
(2893, 'Chiclayo', 'PER', 'Lambayeque', '{\"Population\": 517000}'),
(2894, 'Callao', 'PER', 'Callao', '{\"Population\": 424294}'),
(2895, 'Iquitos', 'PER', 'Loreto', '{\"Population\": 367000}'),
(2896, 'Chimbote', 'PER', 'Ancash', '{\"Population\": 336000}'),
(2897, 'Huancayo', 'PER', 'Junín', '{\"Population\": 327000}'),
(2898, 'Piura', 'PER', 'Piura', '{\"Population\": 325000}'),
(2899, 'Cusco', 'PER', 'Cusco', '{\"Population\": 291000}'),
(2900, 'Pucallpa', 'PER', 'Ucayali', '{\"Population\": 220866}'),
(2901, 'Tacna', 'PER', 'Tacna', '{\"Population\": 215683}'),
(2902, 'Ica', 'PER', 'Ica', '{\"Population\": 194820}'),
(2903, 'Sullana', 'PER', 'Piura', '{\"Population\": 147361}'),
(2904, 'Juliaca', 'PER', 'Puno', '{\"Population\": 142576}'),
(2905, 'Huánuco', 'PER', 'Huanuco', '{\"Population\": 129688}'),
(2906, 'Ayacucho', 'PER', 'Ayacucho', '{\"Population\": 118960}'),
(2907, 'Chincha Alta', 'PER', 'Ica', '{\"Population\": 110016}'),
(2908, 'Cajamarca', 'PER', 'Cajamarca', '{\"Population\": 108009}'),
(2909, 'Puno', 'PER', 'Puno', '{\"Population\": 101578}'),
(2910, 'Ventanilla', 'PER', 'Callao', '{\"Population\": 101056}'),
(2911, 'Castilla', 'PER', 'Piura', '{\"Population\": 90642}'),
(2912, 'Adamstown', 'PCN', '–', '{\"Population\": 42}'),
(2913, 'Garapan', 'MNP', 'Saipan', '{\"Population\": 9200}'),
(2914, 'Lisboa', 'PRT', 'Lisboa', '{\"Population\": 563210}'),
(2915, 'Porto', 'PRT', 'Porto', '{\"Population\": 273060}'),
(2916, 'Amadora', 'PRT', 'Lisboa', '{\"Population\": 122106}'),
(2917, 'Coímbra', 'PRT', 'Coímbra', '{\"Population\": 96100}'),
(2918, 'Braga', 'PRT', 'Braga', '{\"Population\": 90535}'),
(2919, 'San Juan', 'PRI', 'San Juan', '{\"Population\": 434374}'),
(2920, 'Bayamón', 'PRI', 'Bayamón', '{\"Population\": 224044}'),
(2921, 'Ponce', 'PRI', 'Ponce', '{\"Population\": 186475}'),
(2922, 'Carolina', 'PRI', 'Carolina', '{\"Population\": 186076}'),
(2923, 'Caguas', 'PRI', 'Caguas', '{\"Population\": 140502}'),
(2924, 'Arecibo', 'PRI', 'Arecibo', '{\"Population\": 100131}'),
(2925, 'Guaynabo', 'PRI', 'Guaynabo', '{\"Population\": 100053}'),
(2926, 'Mayagüez', 'PRI', 'Mayagüez', '{\"Population\": 98434}'),
(2927, 'Toa Baja', 'PRI', 'Toa Baja', '{\"Population\": 94085}'),
(2928, 'Warszawa', 'POL', 'Mazowieckie', '{\"Population\": 1615369}'),
(2929, 'Lódz', 'POL', 'Lodzkie', '{\"Population\": 800110}'),
(2930, 'Kraków', 'POL', 'Malopolskie', '{\"Population\": 738150}'),
(2931, 'Wroclaw', 'POL', 'Dolnoslaskie', '{\"Population\": 636765}'),
(2932, 'Poznan', 'POL', 'Wielkopolskie', '{\"Population\": 576899}'),
(2933, 'Gdansk', 'POL', 'Pomorskie', '{\"Population\": 458988}'),
(2934, 'Szczecin', 'POL', 'Zachodnio-Pomorskie', '{\"Population\": 416988}'),
(2935, 'Bydgoszcz', 'POL', 'Kujawsko-Pomorskie', '{\"Population\": 386855}'),
(2936, 'Lublin', 'POL', 'Lubelskie', '{\"Population\": 356251}'),
(2937, 'Katowice', 'POL', 'Slaskie', '{\"Population\": 345934}'),
(2938, 'Bialystok', 'POL', 'Podlaskie', '{\"Population\": 283937}'),
(2939, 'Czestochowa', 'POL', 'Slaskie', '{\"Population\": 257812}'),
(2940, 'Gdynia', 'POL', 'Pomorskie', '{\"Population\": 253521}'),
(2941, 'Sosnowiec', 'POL', 'Slaskie', '{\"Population\": 244102}'),
(2942, 'Radom', 'POL', 'Mazowieckie', '{\"Population\": 232262}'),
(2943, 'Kielce', 'POL', 'Swietokrzyskie', '{\"Population\": 212383}'),
(2944, 'Gliwice', 'POL', 'Slaskie', '{\"Population\": 212164}'),
(2945, 'Torun', 'POL', 'Kujawsko-Pomorskie', '{\"Population\": 206158}'),
(2946, 'Bytom', 'POL', 'Slaskie', '{\"Population\": 205560}'),
(2947, 'Zabrze', 'POL', 'Slaskie', '{\"Population\": 200177}'),
(2948, 'Bielsko-Biala', 'POL', 'Slaskie', '{\"Population\": 180307}'),
(2949, 'Olsztyn', 'POL', 'Warminsko-Mazurskie', '{\"Population\": 170904}'),
(2950, 'Rzeszów', 'POL', 'Podkarpackie', '{\"Population\": 162049}'),
(2951, 'Ruda Slaska', 'POL', 'Slaskie', '{\"Population\": 159665}'),
(2952, 'Rybnik', 'POL', 'Slaskie', '{\"Population\": 144582}'),
(2953, 'Walbrzych', 'POL', 'Dolnoslaskie', '{\"Population\": 136923}'),
(2954, 'Tychy', 'POL', 'Slaskie', '{\"Population\": 133178}'),
(2955, 'Dabrowa Górnicza', 'POL', 'Slaskie', '{\"Population\": 131037}'),
(2956, 'Plock', 'POL', 'Mazowieckie', '{\"Population\": 131011}'),
(2957, 'Elblag', 'POL', 'Warminsko-Mazurskie', '{\"Population\": 129782}'),
(2958, 'Opole', 'POL', 'Opolskie', '{\"Population\": 129553}'),
(2959, 'Gorzów Wielkopolski', 'POL', 'Lubuskie', '{\"Population\": 126019}'),
(2960, 'Wloclawek', 'POL', 'Kujawsko-Pomorskie', '{\"Population\": 123373}'),
(2961, 'Chorzów', 'POL', 'Slaskie', '{\"Population\": 121708}'),
(2962, 'Tarnów', 'POL', 'Malopolskie', '{\"Population\": 121494}'),
(2963, 'Zielona Góra', 'POL', 'Lubuskie', '{\"Population\": 118182}'),
(2964, 'Koszalin', 'POL', 'Zachodnio-Pomorskie', '{\"Population\": 112375}'),
(2965, 'Legnica', 'POL', 'Dolnoslaskie', '{\"Population\": 109335}'),
(2966, 'Kalisz', 'POL', 'Wielkopolskie', '{\"Population\": 106641}'),
(2967, 'Grudziadz', 'POL', 'Kujawsko-Pomorskie', '{\"Population\": 102434}'),
(2968, 'Slupsk', 'POL', 'Pomorskie', '{\"Population\": 102370}'),
(2969, 'Jastrzebie-Zdrój', 'POL', 'Slaskie', '{\"Population\": 102294}'),
(2970, 'Jaworzno', 'POL', 'Slaskie', '{\"Population\": 97929}'),
(2971, 'Jelenia Góra', 'POL', 'Dolnoslaskie', '{\"Population\": 93901}'),
(2972, 'Malabo', 'GNQ', 'Bioko', '{\"Population\": 40000}'),
(2973, 'Doha', 'QAT', 'Doha', '{\"Population\": 355000}'),
(2974, 'Paris', 'FRA', 'Île-de-France', '{\"Population\": 2125246}'),
(2975, 'Marseille', 'FRA', 'Provence-Alpes-Côte', '{\"Population\": 798430}'),
(2976, 'Lyon', 'FRA', 'Rhône-Alpes', '{\"Population\": 445452}'),
(2977, 'Toulouse', 'FRA', 'Midi-Pyrénées', '{\"Population\": 390350}'),
(2978, 'Nice', 'FRA', 'Provence-Alpes-Côte', '{\"Population\": 342738}'),
(2979, 'Nantes', 'FRA', 'Pays de la Loire', '{\"Population\": 270251}'),
(2980, 'Strasbourg', 'FRA', 'Alsace', '{\"Population\": 264115}'),
(2981, 'Montpellier', 'FRA', 'Languedoc-Roussillon', '{\"Population\": 225392}'),
(2982, 'Bordeaux', 'FRA', 'Aquitaine', '{\"Population\": 215363}'),
(2983, 'Rennes', 'FRA', 'Haute-Normandie', '{\"Population\": 206229}'),
(2984, 'Le Havre', 'FRA', 'Champagne-Ardenne', '{\"Population\": 190905}'),
(2985, 'Reims', 'FRA', 'Nord-Pas-de-Calais', '{\"Population\": 187206}'),
(2986, 'Lille', 'FRA', 'Rhône-Alpes', '{\"Population\": 184657}'),
(2987, 'St-Étienne', 'FRA', 'Bretagne', '{\"Population\": 180210}'),
(2988, 'Toulon', 'FRA', 'Provence-Alpes-Côte', '{\"Population\": 160639}'),
(2989, 'Grenoble', 'FRA', 'Rhône-Alpes', '{\"Population\": 153317}'),
(2990, 'Angers', 'FRA', 'Pays de la Loire', '{\"Population\": 151279}'),
(2991, 'Dijon', 'FRA', 'Bourgogne', '{\"Population\": 149867}'),
(2992, 'Brest', 'FRA', 'Bretagne', '{\"Population\": 149634}'),
(2993, 'Le Mans', 'FRA', 'Pays de la Loire', '{\"Population\": 146105}'),
(2994, 'Clermont-Ferrand', 'FRA', 'Auvergne', '{\"Population\": 137140}'),
(2995, 'Amiens', 'FRA', 'Picardie', '{\"Population\": 135501}'),
(2996, 'Aix-en-Provence', 'FRA', 'Provence-Alpes-Côte', '{\"Population\": 134222}'),
(2997, 'Limoges', 'FRA', 'Limousin', '{\"Population\": 133968}'),
(2998, 'Nîmes', 'FRA', 'Languedoc-Roussillon', '{\"Population\": 133424}'),
(2999, 'Tours', 'FRA', 'Centre', '{\"Population\": 132820}'),
(3000, 'Villeurbanne', 'FRA', 'Rhône-Alpes', '{\"Population\": 124215}'),
(3001, 'Metz', 'FRA', 'Lorraine', '{\"Population\": 123776}'),
(3002, 'Besançon', 'FRA', 'Franche-Comté', '{\"Population\": 117733}'),
(3003, 'Caen', 'FRA', 'Basse-Normandie', '{\"Population\": 113987}'),
(3004, 'Orléans', 'FRA', 'Centre', '{\"Population\": 113126}'),
(3005, 'Mulhouse', 'FRA', 'Alsace', '{\"Population\": 110359}'),
(3006, 'Rouen', 'FRA', 'Haute-Normandie', '{\"Population\": 106592}'),
(3007, 'Boulogne-Billancourt', 'FRA', 'Île-de-France', '{\"Population\": 106367}'),
(3008, 'Perpignan', 'FRA', 'Languedoc-Roussillon', '{\"Population\": 105115}'),
(3009, 'Nancy', 'FRA', 'Lorraine', '{\"Population\": 103605}'),
(3010, 'Roubaix', 'FRA', 'Nord-Pas-de-Calais', '{\"Population\": 96984}'),
(3011, 'Argenteuil', 'FRA', 'Île-de-France', '{\"Population\": 93961}'),
(3012, 'Tourcoing', 'FRA', 'Nord-Pas-de-Calais', '{\"Population\": 93540}'),
(3013, 'Montreuil', 'FRA', 'Île-de-France', '{\"Population\": 90674}'),
(3014, 'Cayenne', 'GUF', 'Cayenne', '{\"Population\": 50699}');
INSERT INTO `city` (`ID`, `Name`, `CountryCode`, `District`, `Info`) VALUES
(3015, 'Faaa', 'PYF', 'Tahiti', '{\"Population\": 25888}'),
(3016, 'Papeete', 'PYF', 'Tahiti', '{\"Population\": 25553}'),
(3017, 'Saint-Denis', 'REU', 'Saint-Denis', '{\"Population\": 131480}'),
(3018, 'Bucuresti', 'ROM', 'Bukarest', '{\"Population\": 2016131}'),
(3019, 'Iasi', 'ROM', 'Iasi', '{\"Population\": 348070}'),
(3020, 'Constanta', 'ROM', 'Constanta', '{\"Population\": 342264}'),
(3021, 'Cluj-Napoca', 'ROM', 'Cluj', '{\"Population\": 332498}'),
(3022, 'Galati', 'ROM', 'Galati', '{\"Population\": 330276}'),
(3023, 'Timisoara', 'ROM', 'Timis', '{\"Population\": 324304}'),
(3024, 'Brasov', 'ROM', 'Brasov', '{\"Population\": 314225}'),
(3025, 'Craiova', 'ROM', 'Dolj', '{\"Population\": 313530}'),
(3026, 'Ploiesti', 'ROM', 'Prahova', '{\"Population\": 251348}'),
(3027, 'Braila', 'ROM', 'Braila', '{\"Population\": 233756}'),
(3028, 'Oradea', 'ROM', 'Bihor', '{\"Population\": 222239}'),
(3029, 'Bacau', 'ROM', 'Bacau', '{\"Population\": 209235}'),
(3030, 'Pitesti', 'ROM', 'Arges', '{\"Population\": 187170}'),
(3031, 'Arad', 'ROM', 'Arad', '{\"Population\": 184408}'),
(3032, 'Sibiu', 'ROM', 'Sibiu', '{\"Population\": 169611}'),
(3033, 'Târgu Mures', 'ROM', 'Mures', '{\"Population\": 165153}'),
(3034, 'Baia Mare', 'ROM', 'Maramures', '{\"Population\": 149665}'),
(3035, 'Buzau', 'ROM', 'Buzau', '{\"Population\": 148372}'),
(3036, 'Satu Mare', 'ROM', 'Satu Mare', '{\"Population\": 130059}'),
(3037, 'Botosani', 'ROM', 'Botosani', '{\"Population\": 128730}'),
(3038, 'Piatra Neamt', 'ROM', 'Neamt', '{\"Population\": 125070}'),
(3039, 'Râmnicu Vâlcea', 'ROM', 'Vâlcea', '{\"Population\": 119741}'),
(3040, 'Suceava', 'ROM', 'Suceava', '{\"Population\": 118549}'),
(3041, 'Drobeta-Turnu Severin', 'ROM', 'Mehedinti', '{\"Population\": 117865}'),
(3042, 'Târgoviste', 'ROM', 'Dâmbovita', '{\"Population\": 98980}'),
(3043, 'Focsani', 'ROM', 'Vrancea', '{\"Population\": 98979}'),
(3044, 'Târgu Jiu', 'ROM', 'Gorj', '{\"Population\": 98524}'),
(3045, 'Tulcea', 'ROM', 'Tulcea', '{\"Population\": 96278}'),
(3046, 'Resita', 'ROM', 'Caras-Severin', '{\"Population\": 93976}'),
(3047, 'Kigali', 'RWA', 'Kigali', '{\"Population\": 286000}'),
(3048, 'Stockholm', 'SWE', 'Lisboa', '{\"Population\": 750348}'),
(3049, 'Gothenburg [Göteborg]', 'SWE', 'West Götanmaan län', '{\"Population\": 466990}'),
(3050, 'Malmö', 'SWE', 'Skåne län', '{\"Population\": 259579}'),
(3051, 'Uppsala', 'SWE', 'Uppsala län', '{\"Population\": 189569}'),
(3052, 'Linköping', 'SWE', 'East Götanmaan län', '{\"Population\": 133168}'),
(3053, 'Västerås', 'SWE', 'Västmanlands län', '{\"Population\": 126328}'),
(3054, 'Örebro', 'SWE', 'Örebros län', '{\"Population\": 124207}'),
(3055, 'Norrköping', 'SWE', 'East Götanmaan län', '{\"Population\": 122199}'),
(3056, 'Helsingborg', 'SWE', 'Skåne län', '{\"Population\": 117737}'),
(3057, 'Jönköping', 'SWE', 'Jönköpings län', '{\"Population\": 117095}'),
(3058, 'Umeå', 'SWE', 'Västerbottens län', '{\"Population\": 104512}'),
(3059, 'Lund', 'SWE', 'Skåne län', '{\"Population\": 98948}'),
(3060, 'Borås', 'SWE', 'West Götanmaan län', '{\"Population\": 96883}'),
(3061, 'Sundsvall', 'SWE', 'Västernorrlands län', '{\"Population\": 93126}'),
(3062, 'Gävle', 'SWE', 'Gävleborgs län', '{\"Population\": 90742}'),
(3063, 'Jamestown', 'SHN', 'Saint Helena', '{\"Population\": 1500}'),
(3064, 'Basseterre', 'KNA', 'St George Basseterre', '{\"Population\": 11600}'),
(3065, 'Castries', 'LCA', 'Castries', '{\"Population\": 2301}'),
(3066, 'Kingstown', 'VCT', 'St George', '{\"Population\": 17100}'),
(3067, 'Saint-Pierre', 'SPM', 'Saint-Pierre', '{\"Population\": 5808}'),
(3068, 'Berlin', 'DEU', 'Berliini', '{\"Population\": 3386667}'),
(3069, 'Hamburg', 'DEU', 'Hamburg', '{\"Population\": 1704735}'),
(3070, 'Munich [München]', 'DEU', 'Baijeri', '{\"Population\": 1194560}'),
(3071, 'Köln', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 962507}'),
(3072, 'Frankfurt am Main', 'DEU', 'Hessen', '{\"Population\": 643821}'),
(3073, 'Essen', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 599515}'),
(3074, 'Dortmund', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 590213}'),
(3075, 'Stuttgart', 'DEU', 'Baden-Württemberg', '{\"Population\": 582443}'),
(3076, 'Düsseldorf', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 568855}'),
(3077, 'Bremen', 'DEU', 'Bremen', '{\"Population\": 540330}'),
(3078, 'Duisburg', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 519793}'),
(3079, 'Hannover', 'DEU', 'Niedersachsen', '{\"Population\": 514718}'),
(3080, 'Leipzig', 'DEU', 'Saksi', '{\"Population\": 489532}'),
(3081, 'Nürnberg', 'DEU', 'Baijeri', '{\"Population\": 486628}'),
(3082, 'Dresden', 'DEU', 'Saksi', '{\"Population\": 476668}'),
(3083, 'Bochum', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 392830}'),
(3084, 'Wuppertal', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 368993}'),
(3085, 'Bielefeld', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 321125}'),
(3086, 'Mannheim', 'DEU', 'Baden-Württemberg', '{\"Population\": 307730}'),
(3087, 'Bonn', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 301048}'),
(3088, 'Gelsenkirchen', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 281979}'),
(3089, 'Karlsruhe', 'DEU', 'Baden-Württemberg', '{\"Population\": 277204}'),
(3090, 'Wiesbaden', 'DEU', 'Hessen', '{\"Population\": 268716}'),
(3091, 'Münster', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 264670}'),
(3092, 'Mönchengladbach', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 263697}'),
(3093, 'Chemnitz', 'DEU', 'Saksi', '{\"Population\": 263222}'),
(3094, 'Augsburg', 'DEU', 'Baijeri', '{\"Population\": 254867}'),
(3095, 'Halle/Saale', 'DEU', 'Anhalt Sachsen', '{\"Population\": 254360}'),
(3096, 'Braunschweig', 'DEU', 'Niedersachsen', '{\"Population\": 246322}'),
(3097, 'Aachen', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 243825}'),
(3098, 'Krefeld', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 241769}'),
(3099, 'Magdeburg', 'DEU', 'Anhalt Sachsen', '{\"Population\": 235073}'),
(3100, 'Kiel', 'DEU', 'Schleswig-Holstein', '{\"Population\": 233795}'),
(3101, 'Oberhausen', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 222349}'),
(3102, 'Lübeck', 'DEU', 'Schleswig-Holstein', '{\"Population\": 213326}'),
(3103, 'Hagen', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 205201}'),
(3104, 'Rostock', 'DEU', 'Mecklenburg-Vorpomme', '{\"Population\": 203279}'),
(3105, 'Freiburg im Breisgau', 'DEU', 'Baden-Württemberg', '{\"Population\": 202455}'),
(3106, 'Erfurt', 'DEU', 'Thüringen', '{\"Population\": 201267}'),
(3107, 'Kassel', 'DEU', 'Hessen', '{\"Population\": 196211}'),
(3108, 'Saarbrücken', 'DEU', 'Saarland', '{\"Population\": 183836}'),
(3109, 'Mainz', 'DEU', 'Rheinland-Pfalz', '{\"Population\": 183134}'),
(3110, 'Hamm', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 181804}'),
(3111, 'Herne', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 175661}'),
(3112, 'Mülheim an der Ruhr', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 173895}'),
(3113, 'Solingen', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 165583}'),
(3114, 'Osnabrück', 'DEU', 'Niedersachsen', '{\"Population\": 164539}'),
(3115, 'Ludwigshafen am Rhein', 'DEU', 'Rheinland-Pfalz', '{\"Population\": 163771}'),
(3116, 'Leverkusen', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 160841}'),
(3117, 'Oldenburg', 'DEU', 'Niedersachsen', '{\"Population\": 154125}'),
(3118, 'Neuss', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 149702}'),
(3119, 'Heidelberg', 'DEU', 'Baden-Württemberg', '{\"Population\": 139672}'),
(3120, 'Darmstadt', 'DEU', 'Hessen', '{\"Population\": 137776}'),
(3121, 'Paderborn', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 137647}'),
(3122, 'Potsdam', 'DEU', 'Brandenburg', '{\"Population\": 128983}'),
(3123, 'Würzburg', 'DEU', 'Baijeri', '{\"Population\": 127350}'),
(3124, 'Regensburg', 'DEU', 'Baijeri', '{\"Population\": 125236}'),
(3125, 'Recklinghausen', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 125022}'),
(3126, 'Göttingen', 'DEU', 'Niedersachsen', '{\"Population\": 124775}'),
(3127, 'Bremerhaven', 'DEU', 'Bremen', '{\"Population\": 122735}'),
(3128, 'Wolfsburg', 'DEU', 'Niedersachsen', '{\"Population\": 121954}'),
(3129, 'Bottrop', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 121097}'),
(3130, 'Remscheid', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 120125}'),
(3131, 'Heilbronn', 'DEU', 'Baden-Württemberg', '{\"Population\": 119526}'),
(3132, 'Pforzheim', 'DEU', 'Baden-Württemberg', '{\"Population\": 117227}'),
(3133, 'Offenbach am Main', 'DEU', 'Hessen', '{\"Population\": 116627}'),
(3134, 'Ulm', 'DEU', 'Baden-Württemberg', '{\"Population\": 116103}'),
(3135, 'Ingolstadt', 'DEU', 'Baijeri', '{\"Population\": 114826}'),
(3136, 'Gera', 'DEU', 'Thüringen', '{\"Population\": 114718}'),
(3137, 'Salzgitter', 'DEU', 'Niedersachsen', '{\"Population\": 112934}'),
(3138, 'Cottbus', 'DEU', 'Brandenburg', '{\"Population\": 110894}'),
(3139, 'Reutlingen', 'DEU', 'Baden-Württemberg', '{\"Population\": 110343}'),
(3140, 'Fürth', 'DEU', 'Baijeri', '{\"Population\": 109771}'),
(3141, 'Siegen', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 109225}'),
(3142, 'Koblenz', 'DEU', 'Rheinland-Pfalz', '{\"Population\": 108003}'),
(3143, 'Moers', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 106837}'),
(3144, 'Bergisch Gladbach', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 106150}'),
(3145, 'Zwickau', 'DEU', 'Saksi', '{\"Population\": 104146}'),
(3146, 'Hildesheim', 'DEU', 'Niedersachsen', '{\"Population\": 104013}'),
(3147, 'Witten', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 103384}'),
(3148, 'Schwerin', 'DEU', 'Mecklenburg-Vorpomme', '{\"Population\": 102878}'),
(3149, 'Erlangen', 'DEU', 'Baijeri', '{\"Population\": 100750}'),
(3150, 'Kaiserslautern', 'DEU', 'Rheinland-Pfalz', '{\"Population\": 100025}'),
(3151, 'Trier', 'DEU', 'Rheinland-Pfalz', '{\"Population\": 99891}'),
(3152, 'Jena', 'DEU', 'Thüringen', '{\"Population\": 99779}'),
(3153, 'Iserlohn', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 99474}'),
(3154, 'Gütersloh', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 95028}'),
(3155, 'Marl', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 93735}'),
(3156, 'Lünen', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 92044}'),
(3157, 'Düren', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 91092}'),
(3158, 'Ratingen', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 90951}'),
(3159, 'Velbert', 'DEU', 'Nordrhein-Westfalen', '{\"Population\": 89881}'),
(3160, 'Esslingen am Neckar', 'DEU', 'Baden-Württemberg', '{\"Population\": 89667}'),
(3161, 'Honiara', 'SLB', 'Honiara', '{\"Population\": 50100}'),
(3162, 'Lusaka', 'ZMB', 'Lusaka', '{\"Population\": 1317000}'),
(3163, 'Ndola', 'ZMB', 'Copperbelt', '{\"Population\": 329200}'),
(3164, 'Kitwe', 'ZMB', 'Copperbelt', '{\"Population\": 288600}'),
(3165, 'Kabwe', 'ZMB', 'Central', '{\"Population\": 154300}'),
(3166, 'Chingola', 'ZMB', 'Copperbelt', '{\"Population\": 142400}'),
(3167, 'Mufulira', 'ZMB', 'Copperbelt', '{\"Population\": 123900}'),
(3168, 'Luanshya', 'ZMB', 'Copperbelt', '{\"Population\": 118100}'),
(3169, 'Apia', 'WSM', 'Upolu', '{\"Population\": 35900}'),
(3170, 'Serravalle', 'SMR', 'Serravalle/Dogano', '{\"Population\": 4802}'),
(3171, 'San Marino', 'SMR', 'San Marino', '{\"Population\": 2294}'),
(3172, 'São Tomé', 'STP', 'Aqua Grande', '{\"Population\": 49541}'),
(3173, 'Riyadh', 'SAU', 'Riyadh', '{\"Population\": 3324000}'),
(3174, 'Jedda', 'SAU', 'Mekka', '{\"Population\": 2046300}'),
(3175, 'Mekka', 'SAU', 'Mekka', '{\"Population\": 965700}'),
(3176, 'Medina', 'SAU', 'Medina', '{\"Population\": 608300}'),
(3177, 'al-Dammam', 'SAU', 'al-Sharqiya', '{\"Population\": 482300}'),
(3178, 'al-Taif', 'SAU', 'Mekka', '{\"Population\": 416100}'),
(3179, 'Tabuk', 'SAU', 'Tabuk', '{\"Population\": 292600}'),
(3180, 'Burayda', 'SAU', 'al-Qasim', '{\"Population\": 248600}'),
(3181, 'al-Hufuf', 'SAU', 'al-Sharqiya', '{\"Population\": 225800}'),
(3182, 'al-Mubarraz', 'SAU', 'al-Sharqiya', '{\"Population\": 219100}'),
(3183, 'Khamis Mushayt', 'SAU', 'Asir', '{\"Population\": 217900}'),
(3184, 'Hail', 'SAU', 'Hail', '{\"Population\": 176800}'),
(3185, 'al-Kharj', 'SAU', 'Riad', '{\"Population\": 152100}'),
(3186, 'al-Khubar', 'SAU', 'al-Sharqiya', '{\"Population\": 141700}'),
(3187, 'Jubayl', 'SAU', 'al-Sharqiya', '{\"Population\": 140800}'),
(3188, 'Hafar al-Batin', 'SAU', 'al-Sharqiya', '{\"Population\": 137800}'),
(3189, 'al-Tuqba', 'SAU', 'al-Sharqiya', '{\"Population\": 125700}'),
(3190, 'Yanbu', 'SAU', 'Medina', '{\"Population\": 119800}'),
(3191, 'Abha', 'SAU', 'Asir', '{\"Population\": 112300}'),
(3192, 'Ara´ar', 'SAU', 'al-Khudud al-Samaliy', '{\"Population\": 108100}'),
(3193, 'al-Qatif', 'SAU', 'al-Sharqiya', '{\"Population\": 98900}'),
(3194, 'al-Hawiya', 'SAU', 'Mekka', '{\"Population\": 93900}'),
(3195, 'Unayza', 'SAU', 'Qasim', '{\"Population\": 91100}'),
(3196, 'Najran', 'SAU', 'Najran', '{\"Population\": 91000}'),
(3197, 'Pikine', 'SEN', 'Cap-Vert', '{\"Population\": 855287}'),
(3198, 'Dakar', 'SEN', 'Cap-Vert', '{\"Population\": 785071}'),
(3199, 'Thiès', 'SEN', 'Thiès', '{\"Population\": 248000}'),
(3200, 'Kaolack', 'SEN', 'Kaolack', '{\"Population\": 199000}'),
(3201, 'Ziguinchor', 'SEN', 'Ziguinchor', '{\"Population\": 192000}'),
(3202, 'Rufisque', 'SEN', 'Cap-Vert', '{\"Population\": 150000}'),
(3203, 'Saint-Louis', 'SEN', 'Saint-Louis', '{\"Population\": 132400}'),
(3204, 'Mbour', 'SEN', 'Thiès', '{\"Population\": 109300}'),
(3205, 'Diourbel', 'SEN', 'Diourbel', '{\"Population\": 99400}'),
(3206, 'Victoria', 'SYC', 'Mahé', '{\"Population\": 41000}'),
(3207, 'Freetown', 'SLE', 'Western', '{\"Population\": 850000}'),
(3208, 'Singapore', 'SGP', '–', '{\"Population\": 4017733}'),
(3209, 'Bratislava', 'SVK', 'Bratislava', '{\"Population\": 448292}'),
(3210, 'Košice', 'SVK', 'Východné Slovensko', '{\"Population\": 241874}'),
(3211, 'Prešov', 'SVK', 'Východné Slovensko', '{\"Population\": 93977}'),
(3212, 'Ljubljana', 'SVN', 'Osrednjeslovenska', '{\"Population\": 270986}'),
(3213, 'Maribor', 'SVN', 'Podravska', '{\"Population\": 115532}'),
(3214, 'Mogadishu', 'SOM', 'Banaadir', '{\"Population\": 997000}'),
(3215, 'Hargeysa', 'SOM', 'Woqooyi Galbeed', '{\"Population\": 90000}'),
(3216, 'Kismaayo', 'SOM', 'Jubbada Hoose', '{\"Population\": 90000}'),
(3217, 'Colombo', 'LKA', 'Western', '{\"Population\": 645000}'),
(3218, 'Dehiwala', 'LKA', 'Western', '{\"Population\": 203000}'),
(3219, 'Moratuwa', 'LKA', 'Western', '{\"Population\": 190000}'),
(3220, 'Jaffna', 'LKA', 'Northern', '{\"Population\": 149000}'),
(3221, 'Kandy', 'LKA', 'Central', '{\"Population\": 140000}'),
(3222, 'Sri Jayawardenepura Kotte', 'LKA', 'Western', '{\"Population\": 118000}'),
(3223, 'Negombo', 'LKA', 'Western', '{\"Population\": 100000}'),
(3224, 'Omdurman', 'SDN', 'Khartum', '{\"Population\": 1271403}'),
(3225, 'Khartum', 'SDN', 'Khartum', '{\"Population\": 947483}'),
(3226, 'Sharq al-Nil', 'SDN', 'Khartum', '{\"Population\": 700887}'),
(3227, 'Port Sudan', 'SDN', 'al-Bahr al-Ahmar', '{\"Population\": 308195}'),
(3228, 'Kassala', 'SDN', 'Kassala', '{\"Population\": 234622}'),
(3229, 'Obeid', 'SDN', 'Kurdufan al-Shamaliy', '{\"Population\": 229425}'),
(3230, 'Nyala', 'SDN', 'Darfur al-Janubiya', '{\"Population\": 227183}'),
(3231, 'Wad Madani', 'SDN', 'al-Jazira', '{\"Population\": 211362}'),
(3232, 'al-Qadarif', 'SDN', 'al-Qadarif', '{\"Population\": 191164}'),
(3233, 'Kusti', 'SDN', 'al-Bahr al-Abyad', '{\"Population\": 173599}'),
(3234, 'al-Fashir', 'SDN', 'Darfur al-Shamaliya', '{\"Population\": 141884}'),
(3235, 'Juba', 'SDN', 'Bahr al-Jabal', '{\"Population\": 114980}'),
(3236, 'Helsinki [Helsingfors]', 'FIN', 'Newmaa', '{\"Population\": 555474}'),
(3237, 'Espoo', 'FIN', 'Newmaa', '{\"Population\": 213271}'),
(3238, 'Tampere', 'FIN', 'Pirkanmaa', '{\"Population\": 195468}'),
(3239, 'Vantaa', 'FIN', 'Newmaa', '{\"Population\": 178471}'),
(3240, 'Turku [Åbo]', 'FIN', 'Varsinais-Suomi', '{\"Population\": 172561}'),
(3241, 'Oulu', 'FIN', 'Pohjois-Pohjanmaa', '{\"Population\": 120753}'),
(3242, 'Lahti', 'FIN', 'Päijät-Häme', '{\"Population\": 96921}'),
(3243, 'Paramaribo', 'SUR', 'Paramaribo', '{\"Population\": 112000}'),
(3244, 'Mbabane', 'SWZ', 'Hhohho', '{\"Population\": 61000}'),
(3245, 'Zürich', 'CHE', 'Zürich', '{\"Population\": 336800}'),
(3246, 'Geneve', 'CHE', 'Geneve', '{\"Population\": 173500}'),
(3247, 'Basel', 'CHE', 'Basel-Stadt', '{\"Population\": 166700}'),
(3248, 'Bern', 'CHE', 'Bern', '{\"Population\": 122700}'),
(3249, 'Lausanne', 'CHE', 'Vaud', '{\"Population\": 114500}'),
(3250, 'Damascus', 'SYR', 'Damascus', '{\"Population\": 1347000}'),
(3251, 'Aleppo', 'SYR', 'Aleppo', '{\"Population\": 1261983}'),
(3252, 'Hims', 'SYR', 'Hims', '{\"Population\": 507404}'),
(3253, 'Hama', 'SYR', 'Hama', '{\"Population\": 343361}'),
(3254, 'Latakia', 'SYR', 'Latakia', '{\"Population\": 264563}'),
(3255, 'al-Qamishliya', 'SYR', 'al-Hasaka', '{\"Population\": 144286}'),
(3256, 'Dayr al-Zawr', 'SYR', 'Dayr al-Zawr', '{\"Population\": 140459}'),
(3257, 'Jaramana', 'SYR', 'Damaskos', '{\"Population\": 138469}'),
(3258, 'Duma', 'SYR', 'Damaskos', '{\"Population\": 131158}'),
(3259, 'al-Raqqa', 'SYR', 'al-Raqqa', '{\"Population\": 108020}'),
(3260, 'Idlib', 'SYR', 'Idlib', '{\"Population\": 91081}'),
(3261, 'Dushanbe', 'TJK', 'Karotegin', '{\"Population\": 524000}'),
(3262, 'Khujand', 'TJK', 'Khujand', '{\"Population\": 161500}'),
(3263, 'Taipei', 'TWN', 'Taipei', '{\"Population\": 2641312}'),
(3264, 'Kaohsiung', 'TWN', 'Kaohsiung', '{\"Population\": 1475505}'),
(3265, 'Taichung', 'TWN', 'Taichung', '{\"Population\": 940589}'),
(3266, 'Tainan', 'TWN', 'Tainan', '{\"Population\": 728060}'),
(3267, 'Panchiao', 'TWN', 'Taipei', '{\"Population\": 523850}'),
(3268, 'Chungho', 'TWN', 'Taipei', '{\"Population\": 392176}'),
(3269, 'Keelung (Chilung)', 'TWN', 'Keelung', '{\"Population\": 385201}'),
(3270, 'Sanchung', 'TWN', 'Taipei', '{\"Population\": 380084}'),
(3271, 'Hsinchuang', 'TWN', 'Taipei', '{\"Population\": 365048}'),
(3272, 'Hsinchu', 'TWN', 'Hsinchu', '{\"Population\": 361958}'),
(3273, 'Chungli', 'TWN', 'Taoyuan', '{\"Population\": 318649}'),
(3274, 'Fengshan', 'TWN', 'Kaohsiung', '{\"Population\": 318562}'),
(3275, 'Taoyuan', 'TWN', 'Taoyuan', '{\"Population\": 316438}'),
(3276, 'Chiayi', 'TWN', 'Chiayi', '{\"Population\": 265109}'),
(3277, 'Hsintien', 'TWN', 'Taipei', '{\"Population\": 263603}'),
(3278, 'Changhwa', 'TWN', 'Changhwa', '{\"Population\": 227715}'),
(3279, 'Yungho', 'TWN', 'Taipei', '{\"Population\": 227700}'),
(3280, 'Tucheng', 'TWN', 'Taipei', '{\"Population\": 224897}'),
(3281, 'Pingtung', 'TWN', 'Pingtung', '{\"Population\": 214727}'),
(3282, 'Yungkang', 'TWN', 'Tainan', '{\"Population\": 193005}'),
(3283, 'Pingchen', 'TWN', 'Taoyuan', '{\"Population\": 188344}'),
(3284, 'Tali', 'TWN', 'Taichung', '{\"Population\": 171940}'),
(3285, 'Taiping', 'TWN', '', '{\"Population\": 165524}'),
(3286, 'Pate', 'TWN', 'Taoyuan', '{\"Population\": 161700}'),
(3287, 'Fengyuan', 'TWN', 'Taichung', '{\"Population\": 161032}'),
(3288, 'Luchou', 'TWN', 'Taipei', '{\"Population\": 160516}'),
(3289, 'Hsichuh', 'TWN', 'Taipei', '{\"Population\": 154976}'),
(3290, 'Shulin', 'TWN', 'Taipei', '{\"Population\": 151260}'),
(3291, 'Yuanlin', 'TWN', 'Changhwa', '{\"Population\": 126402}'),
(3292, 'Yangmei', 'TWN', 'Taoyuan', '{\"Population\": 126323}'),
(3293, 'Taliao', 'TWN', '', '{\"Population\": 115897}'),
(3294, 'Kueishan', 'TWN', '', '{\"Population\": 112195}'),
(3295, 'Tanshui', 'TWN', 'Taipei', '{\"Population\": 111882}'),
(3296, 'Taitung', 'TWN', 'Taitung', '{\"Population\": 111039}'),
(3297, 'Hualien', 'TWN', 'Hualien', '{\"Population\": 108407}'),
(3298, 'Nantou', 'TWN', 'Nantou', '{\"Population\": 104723}'),
(3299, 'Lungtan', 'TWN', 'Taipei', '{\"Population\": 103088}'),
(3300, 'Touliu', 'TWN', 'Yünlin', '{\"Population\": 98900}'),
(3301, 'Tsaotun', 'TWN', 'Nantou', '{\"Population\": 96800}'),
(3302, 'Kangshan', 'TWN', 'Kaohsiung', '{\"Population\": 92200}'),
(3303, 'Ilan', 'TWN', 'Ilan', '{\"Population\": 92000}'),
(3304, 'Miaoli', 'TWN', 'Miaoli', '{\"Population\": 90000}'),
(3305, 'Dar es Salaam', 'TZA', 'Dar es Salaam', '{\"Population\": 1747000}'),
(3306, 'Dodoma', 'TZA', 'Dodoma', '{\"Population\": 189000}'),
(3307, 'Mwanza', 'TZA', 'Mwanza', '{\"Population\": 172300}'),
(3308, 'Zanzibar', 'TZA', 'Zanzibar West', '{\"Population\": 157634}'),
(3309, 'Tanga', 'TZA', 'Tanga', '{\"Population\": 137400}'),
(3310, 'Mbeya', 'TZA', 'Mbeya', '{\"Population\": 130800}'),
(3311, 'Morogoro', 'TZA', 'Morogoro', '{\"Population\": 117800}'),
(3312, 'Arusha', 'TZA', 'Arusha', '{\"Population\": 102500}'),
(3313, 'Moshi', 'TZA', 'Kilimanjaro', '{\"Population\": 96800}'),
(3314, 'Tabora', 'TZA', 'Tabora', '{\"Population\": 92800}'),
(3315, 'København', 'DNK', 'København', '{\"Population\": 495699}'),
(3316, 'Århus', 'DNK', 'Århus', '{\"Population\": 284846}'),
(3317, 'Odense', 'DNK', 'Fyn', '{\"Population\": 183912}'),
(3318, 'Aalborg', 'DNK', 'Nordjylland', '{\"Population\": 161161}'),
(3319, 'Frederiksberg', 'DNK', 'Frederiksberg', '{\"Population\": 90327}'),
(3320, 'Bangkok', 'THA', 'Bangkok', '{\"Population\": 6320174}'),
(3321, 'Nonthaburi', 'THA', 'Nonthaburi', '{\"Population\": 292100}'),
(3322, 'Nakhon Ratchasima', 'THA', 'Nakhon Ratchasima', '{\"Population\": 181400}'),
(3323, 'Chiang Mai', 'THA', 'Chiang Mai', '{\"Population\": 171100}'),
(3324, 'Udon Thani', 'THA', 'Udon Thani', '{\"Population\": 158100}'),
(3325, 'Hat Yai', 'THA', 'Songkhla', '{\"Population\": 148632}'),
(3326, 'Khon Kaen', 'THA', 'Khon Kaen', '{\"Population\": 126500}'),
(3327, 'Pak Kret', 'THA', 'Nonthaburi', '{\"Population\": 126055}'),
(3328, 'Nakhon Sawan', 'THA', 'Nakhon Sawan', '{\"Population\": 123800}'),
(3329, 'Ubon Ratchathani', 'THA', 'Ubon Ratchathani', '{\"Population\": 116300}'),
(3330, 'Songkhla', 'THA', 'Songkhla', '{\"Population\": 94900}'),
(3331, 'Nakhon Pathom', 'THA', 'Nakhon Pathom', '{\"Population\": 94100}'),
(3332, 'Lomé', 'TGO', 'Maritime', '{\"Population\": 375000}'),
(3333, 'Fakaofo', 'TKL', 'Fakaofo', '{\"Population\": 300}'),
(3334, 'Nuku´alofa', 'TON', 'Tongatapu', '{\"Population\": 22400}'),
(3335, 'Chaguanas', 'TTO', 'Caroni', '{\"Population\": 56601}'),
(3336, 'Port-of-Spain', 'TTO', 'Port-of-Spain', '{\"Population\": 43396}'),
(3337, 'N´Djaména', 'TCD', 'Chari-Baguirmi', '{\"Population\": 530965}'),
(3338, 'Moundou', 'TCD', 'Logone Occidental', '{\"Population\": 99500}'),
(3339, 'Praha', 'CZE', 'Hlavní mesto Praha', '{\"Population\": 1181126}'),
(3340, 'Brno', 'CZE', 'Jizní Morava', '{\"Population\": 381862}'),
(3341, 'Ostrava', 'CZE', 'Severní Morava', '{\"Population\": 320041}'),
(3342, 'Plzen', 'CZE', 'Zapadní Cechy', '{\"Population\": 166759}'),
(3343, 'Olomouc', 'CZE', 'Severní Morava', '{\"Population\": 102702}'),
(3344, 'Liberec', 'CZE', 'Severní Cechy', '{\"Population\": 99155}'),
(3345, 'Ceské Budejovice', 'CZE', 'Jizní Cechy', '{\"Population\": 98186}'),
(3346, 'Hradec Králové', 'CZE', 'Východní Cechy', '{\"Population\": 98080}'),
(3347, 'Ústí nad Labem', 'CZE', 'Severní Cechy', '{\"Population\": 95491}'),
(3348, 'Pardubice', 'CZE', 'Východní Cechy', '{\"Population\": 91309}'),
(3349, 'Tunis', 'TUN', 'Tunis', '{\"Population\": 690600}'),
(3350, 'Sfax', 'TUN', 'Sfax', '{\"Population\": 257800}'),
(3351, 'Ariana', 'TUN', 'Ariana', '{\"Population\": 197000}'),
(3352, 'Ettadhamen', 'TUN', 'Ariana', '{\"Population\": 178600}'),
(3353, 'Sousse', 'TUN', 'Sousse', '{\"Population\": 145900}'),
(3354, 'Kairouan', 'TUN', 'Kairouan', '{\"Population\": 113100}'),
(3355, 'Biserta', 'TUN', 'Biserta', '{\"Population\": 108900}'),
(3356, 'Gabès', 'TUN', 'Gabès', '{\"Population\": 106600}'),
(3357, 'Istanbul', 'TUR', 'Istanbul', '{\"Population\": 8787958}'),
(3358, 'Ankara', 'TUR', 'Ankara', '{\"Population\": 3038159}'),
(3359, 'Izmir', 'TUR', 'Izmir', '{\"Population\": 2130359}'),
(3360, 'Adana', 'TUR', 'Adana', '{\"Population\": 1131198}'),
(3361, 'Bursa', 'TUR', 'Bursa', '{\"Population\": 1095842}'),
(3362, 'Gaziantep', 'TUR', 'Gaziantep', '{\"Population\": 789056}'),
(3363, 'Konya', 'TUR', 'Konya', '{\"Population\": 628364}'),
(3364, 'Mersin (Içel)', 'TUR', 'Içel', '{\"Population\": 587212}'),
(3365, 'Antalya', 'TUR', 'Antalya', '{\"Population\": 564914}'),
(3366, 'Diyarbakir', 'TUR', 'Diyarbakir', '{\"Population\": 479884}'),
(3367, 'Kayseri', 'TUR', 'Kayseri', '{\"Population\": 475657}'),
(3368, 'Eskisehir', 'TUR', 'Eskisehir', '{\"Population\": 470781}'),
(3369, 'Sanliurfa', 'TUR', 'Sanliurfa', '{\"Population\": 405905}'),
(3370, 'Samsun', 'TUR', 'Samsun', '{\"Population\": 339871}'),
(3371, 'Malatya', 'TUR', 'Malatya', '{\"Population\": 330312}'),
(3372, 'Gebze', 'TUR', 'Kocaeli', '{\"Population\": 264170}'),
(3373, 'Denizli', 'TUR', 'Denizli', '{\"Population\": 253848}'),
(3374, 'Sivas', 'TUR', 'Sivas', '{\"Population\": 246642}'),
(3375, 'Erzurum', 'TUR', 'Erzurum', '{\"Population\": 246535}'),
(3376, 'Tarsus', 'TUR', 'Adana', '{\"Population\": 246206}'),
(3377, 'Kahramanmaras', 'TUR', 'Kahramanmaras', '{\"Population\": 245772}'),
(3378, 'Elâzig', 'TUR', 'Elâzig', '{\"Population\": 228815}'),
(3379, 'Van', 'TUR', 'Van', '{\"Population\": 219319}'),
(3380, 'Sultanbeyli', 'TUR', 'Istanbul', '{\"Population\": 211068}'),
(3381, 'Izmit (Kocaeli)', 'TUR', 'Kocaeli', '{\"Population\": 210068}'),
(3382, 'Manisa', 'TUR', 'Manisa', '{\"Population\": 207148}'),
(3383, 'Batman', 'TUR', 'Batman', '{\"Population\": 203793}'),
(3384, 'Balikesir', 'TUR', 'Balikesir', '{\"Population\": 196382}'),
(3385, 'Sakarya (Adapazari)', 'TUR', 'Sakarya', '{\"Population\": 190641}'),
(3386, 'Iskenderun', 'TUR', 'Hatay', '{\"Population\": 153022}'),
(3387, 'Osmaniye', 'TUR', 'Osmaniye', '{\"Population\": 146003}'),
(3388, 'Çorum', 'TUR', 'Çorum', '{\"Population\": 145495}'),
(3389, 'Kütahya', 'TUR', 'Kütahya', '{\"Population\": 144761}'),
(3390, 'Hatay (Antakya)', 'TUR', 'Hatay', '{\"Population\": 143982}'),
(3391, 'Kirikkale', 'TUR', 'Kirikkale', '{\"Population\": 142044}'),
(3392, 'Adiyaman', 'TUR', 'Adiyaman', '{\"Population\": 141529}'),
(3393, 'Trabzon', 'TUR', 'Trabzon', '{\"Population\": 138234}'),
(3394, 'Ordu', 'TUR', 'Ordu', '{\"Population\": 133642}'),
(3395, 'Aydin', 'TUR', 'Aydin', '{\"Population\": 128651}'),
(3396, 'Usak', 'TUR', 'Usak', '{\"Population\": 128162}'),
(3397, 'Edirne', 'TUR', 'Edirne', '{\"Population\": 123383}'),
(3398, 'Çorlu', 'TUR', 'Tekirdag', '{\"Population\": 123300}'),
(3399, 'Isparta', 'TUR', 'Isparta', '{\"Population\": 121911}'),
(3400, 'Karabük', 'TUR', 'Karabük', '{\"Population\": 118285}'),
(3401, 'Kilis', 'TUR', 'Kilis', '{\"Population\": 118245}'),
(3402, 'Alanya', 'TUR', 'Antalya', '{\"Population\": 117300}'),
(3403, 'Kiziltepe', 'TUR', 'Mardin', '{\"Population\": 112000}'),
(3404, 'Zonguldak', 'TUR', 'Zonguldak', '{\"Population\": 111542}'),
(3405, 'Siirt', 'TUR', 'Siirt', '{\"Population\": 107100}'),
(3406, 'Viransehir', 'TUR', 'Sanliurfa', '{\"Population\": 106400}'),
(3407, 'Tekirdag', 'TUR', 'Tekirdag', '{\"Population\": 106077}'),
(3408, 'Karaman', 'TUR', 'Karaman', '{\"Population\": 104200}'),
(3409, 'Afyon', 'TUR', 'Afyon', '{\"Population\": 103984}'),
(3410, 'Aksaray', 'TUR', 'Aksaray', '{\"Population\": 102681}'),
(3411, 'Ceyhan', 'TUR', 'Adana', '{\"Population\": 102412}'),
(3412, 'Erzincan', 'TUR', 'Erzincan', '{\"Population\": 102304}'),
(3413, 'Bismil', 'TUR', 'Diyarbakir', '{\"Population\": 101400}'),
(3414, 'Nazilli', 'TUR', 'Aydin', '{\"Population\": 99900}'),
(3415, 'Tokat', 'TUR', 'Tokat', '{\"Population\": 99500}'),
(3416, 'Kars', 'TUR', 'Kars', '{\"Population\": 93000}'),
(3417, 'Inegöl', 'TUR', 'Bursa', '{\"Population\": 90500}'),
(3418, 'Bandirma', 'TUR', 'Balikesir', '{\"Population\": 90200}'),
(3419, 'Ashgabat', 'TKM', 'Ahal', '{\"Population\": 540600}'),
(3420, 'Chärjew', 'TKM', 'Lebap', '{\"Population\": 189200}'),
(3421, 'Dashhowuz', 'TKM', 'Dashhowuz', '{\"Population\": 141800}'),
(3422, 'Mary', 'TKM', 'Mary', '{\"Population\": 101000}'),
(3423, 'Cockburn Town', 'TCA', 'Grand Turk', '{\"Population\": 4800}'),
(3424, 'Funafuti', 'TUV', 'Funafuti', '{\"Population\": 4600}'),
(3425, 'Kampala', 'UGA', 'Central', '{\"Population\": 890800}'),
(3426, 'Kyiv', 'UKR', 'Kiova', '{\"Population\": 2624000}'),
(3427, 'Harkova [Harkiv]', 'UKR', 'Harkova', '{\"Population\": 1500000}'),
(3428, 'Dnipropetrovsk', 'UKR', 'Dnipropetrovsk', '{\"Population\": 1103000}'),
(3429, 'Donetsk', 'UKR', 'Donetsk', '{\"Population\": 1050000}'),
(3430, 'Odesa', 'UKR', 'Odesa', '{\"Population\": 1011000}'),
(3431, 'Zaporizzja', 'UKR', 'Zaporizzja', '{\"Population\": 848000}'),
(3432, 'Lviv', 'UKR', 'Lviv', '{\"Population\": 788000}'),
(3433, 'Kryvyi Rig', 'UKR', 'Dnipropetrovsk', '{\"Population\": 703000}'),
(3434, 'Mykolajiv', 'UKR', 'Mykolajiv', '{\"Population\": 508000}'),
(3435, 'Mariupol', 'UKR', 'Donetsk', '{\"Population\": 490000}'),
(3436, 'Lugansk', 'UKR', 'Lugansk', '{\"Population\": 469000}'),
(3437, 'Vinnytsja', 'UKR', 'Vinnytsja', '{\"Population\": 391000}'),
(3438, 'Makijivka', 'UKR', 'Donetsk', '{\"Population\": 384000}'),
(3439, 'Herson', 'UKR', 'Herson', '{\"Population\": 353000}'),
(3440, 'Sevastopol', 'UKR', 'Krim', '{\"Population\": 348000}'),
(3441, 'Simferopol', 'UKR', 'Krim', '{\"Population\": 339000}'),
(3442, 'Pultava [Poltava]', 'UKR', 'Pultava', '{\"Population\": 313000}'),
(3443, 'Tšernigiv', 'UKR', 'Tšernigiv', '{\"Population\": 313000}'),
(3444, 'Tšerkasy', 'UKR', 'Tšerkasy', '{\"Population\": 309000}'),
(3445, 'Gorlivka', 'UKR', 'Donetsk', '{\"Population\": 299000}'),
(3446, 'Zytomyr', 'UKR', 'Zytomyr', '{\"Population\": 297000}'),
(3447, 'Sumy', 'UKR', 'Sumy', '{\"Population\": 294000}'),
(3448, 'Dniprodzerzynsk', 'UKR', 'Dnipropetrovsk', '{\"Population\": 270000}'),
(3449, 'Kirovograd', 'UKR', 'Kirovograd', '{\"Population\": 265000}'),
(3450, 'Hmelnytskyi', 'UKR', 'Hmelnytskyi', '{\"Population\": 262000}'),
(3451, 'Tšernivtsi', 'UKR', 'Tšernivtsi', '{\"Population\": 259000}'),
(3452, 'Rivne', 'UKR', 'Rivne', '{\"Population\": 245000}'),
(3453, 'Krementšuk', 'UKR', 'Pultava', '{\"Population\": 239000}'),
(3454, 'Ivano-Frankivsk', 'UKR', 'Ivano-Frankivsk', '{\"Population\": 237000}'),
(3455, 'Ternopil', 'UKR', 'Ternopil', '{\"Population\": 236000}'),
(3456, 'Lutsk', 'UKR', 'Volynia', '{\"Population\": 217000}'),
(3457, 'Bila Tserkva', 'UKR', 'Kiova', '{\"Population\": 215000}'),
(3458, 'Kramatorsk', 'UKR', 'Donetsk', '{\"Population\": 186000}'),
(3459, 'Melitopol', 'UKR', 'Zaporizzja', '{\"Population\": 169000}'),
(3460, 'Kertš', 'UKR', 'Krim', '{\"Population\": 162000}'),
(3461, 'Nikopol', 'UKR', 'Dnipropetrovsk', '{\"Population\": 149000}'),
(3462, 'Berdjansk', 'UKR', 'Zaporizzja', '{\"Population\": 130000}'),
(3463, 'Pavlograd', 'UKR', 'Dnipropetrovsk', '{\"Population\": 127000}'),
(3464, 'Sjeverodonetsk', 'UKR', 'Lugansk', '{\"Population\": 127000}'),
(3465, 'Slovjansk', 'UKR', 'Donetsk', '{\"Population\": 127000}'),
(3466, 'Uzgorod', 'UKR', 'Taka-Karpatia', '{\"Population\": 127000}'),
(3467, 'Altševsk', 'UKR', 'Lugansk', '{\"Population\": 119000}'),
(3468, 'Lysytšansk', 'UKR', 'Lugansk', '{\"Population\": 116000}'),
(3469, 'Jevpatorija', 'UKR', 'Krim', '{\"Population\": 112000}'),
(3470, 'Kamjanets-Podilskyi', 'UKR', 'Hmelnytskyi', '{\"Population\": 109000}'),
(3471, 'Jenakijeve', 'UKR', 'Donetsk', '{\"Population\": 105000}'),
(3472, 'Krasnyi Lutš', 'UKR', 'Lugansk', '{\"Population\": 101000}'),
(3473, 'Stahanov', 'UKR', 'Lugansk', '{\"Population\": 101000}'),
(3474, 'Oleksandrija', 'UKR', 'Kirovograd', '{\"Population\": 99000}'),
(3475, 'Konotop', 'UKR', 'Sumy', '{\"Population\": 96000}'),
(3476, 'Kostjantynivka', 'UKR', 'Donetsk', '{\"Population\": 95000}'),
(3477, 'Berdytšiv', 'UKR', 'Zytomyr', '{\"Population\": 90000}'),
(3478, 'Izmajil', 'UKR', 'Odesa', '{\"Population\": 90000}'),
(3479, 'Šostka', 'UKR', 'Sumy', '{\"Population\": 90000}'),
(3480, 'Uman', 'UKR', 'Tšerkasy', '{\"Population\": 90000}'),
(3481, 'Brovary', 'UKR', 'Kiova', '{\"Population\": 89000}'),
(3482, 'Mukatševe', 'UKR', 'Taka-Karpatia', '{\"Population\": 89000}'),
(3483, 'Budapest', 'HUN', 'Budapest', '{\"Population\": 1811552}'),
(3484, 'Debrecen', 'HUN', 'Hajdú-Bihar', '{\"Population\": 203648}'),
(3485, 'Miskolc', 'HUN', 'Borsod-Abaúj-Zemplén', '{\"Population\": 172357}'),
(3486, 'Szeged', 'HUN', 'Csongrád', '{\"Population\": 158158}'),
(3487, 'Pécs', 'HUN', 'Baranya', '{\"Population\": 157332}'),
(3488, 'Györ', 'HUN', 'Györ-Moson-Sopron', '{\"Population\": 127119}'),
(3489, 'Nyiregyháza', 'HUN', 'Szabolcs-Szatmár-Ber', '{\"Population\": 112419}'),
(3490, 'Kecskemét', 'HUN', 'Bács-Kiskun', '{\"Population\": 105606}'),
(3491, 'Székesfehérvár', 'HUN', 'Fejér', '{\"Population\": 105119}'),
(3492, 'Montevideo', 'URY', 'Montevideo', '{\"Population\": 1236000}'),
(3493, 'Nouméa', 'NCL', '–', '{\"Population\": 76293}'),
(3494, 'Auckland', 'NZL', 'Auckland', '{\"Population\": 381800}'),
(3495, 'Christchurch', 'NZL', 'Canterbury', '{\"Population\": 324200}'),
(3496, 'Manukau', 'NZL', 'Auckland', '{\"Population\": 281800}'),
(3497, 'North Shore', 'NZL', 'Auckland', '{\"Population\": 187700}'),
(3498, 'Waitakere', 'NZL', 'Auckland', '{\"Population\": 170600}'),
(3499, 'Wellington', 'NZL', 'Wellington', '{\"Population\": 166700}'),
(3500, 'Dunedin', 'NZL', 'Dunedin', '{\"Population\": 119600}'),
(3501, 'Hamilton', 'NZL', 'Hamilton', '{\"Population\": 117100}'),
(3502, 'Lower Hutt', 'NZL', 'Wellington', '{\"Population\": 98100}'),
(3503, 'Toskent', 'UZB', 'Toskent Shahri', '{\"Population\": 2117500}'),
(3504, 'Namangan', 'UZB', 'Namangan', '{\"Population\": 370500}'),
(3505, 'Samarkand', 'UZB', 'Samarkand', '{\"Population\": 361800}'),
(3506, 'Andijon', 'UZB', 'Andijon', '{\"Population\": 318600}'),
(3507, 'Buhoro', 'UZB', 'Buhoro', '{\"Population\": 237100}'),
(3508, 'Karsi', 'UZB', 'Qashqadaryo', '{\"Population\": 194100}'),
(3509, 'Nukus', 'UZB', 'Karakalpakistan', '{\"Population\": 194100}'),
(3510, 'Kükon', 'UZB', 'Fargona', '{\"Population\": 190100}'),
(3511, 'Fargona', 'UZB', 'Fargona', '{\"Population\": 180500}'),
(3512, 'Circik', 'UZB', 'Toskent', '{\"Population\": 146400}'),
(3513, 'Margilon', 'UZB', 'Fargona', '{\"Population\": 140800}'),
(3514, 'Ürgenc', 'UZB', 'Khorazm', '{\"Population\": 138900}'),
(3515, 'Angren', 'UZB', 'Toskent', '{\"Population\": 128000}'),
(3516, 'Cizah', 'UZB', 'Cizah', '{\"Population\": 124800}'),
(3517, 'Navoi', 'UZB', 'Navoi', '{\"Population\": 116300}'),
(3518, 'Olmalik', 'UZB', 'Toskent', '{\"Population\": 114900}'),
(3519, 'Termiz', 'UZB', 'Surkhondaryo', '{\"Population\": 109500}'),
(3520, 'Minsk', 'BLR', 'Horad Minsk', '{\"Population\": 1674000}'),
(3521, 'Gomel', 'BLR', 'Gomel', '{\"Population\": 475000}'),
(3522, 'Mogiljov', 'BLR', 'Mogiljov', '{\"Population\": 356000}'),
(3523, 'Vitebsk', 'BLR', 'Vitebsk', '{\"Population\": 340000}'),
(3524, 'Grodno', 'BLR', 'Grodno', '{\"Population\": 302000}'),
(3525, 'Brest', 'BLR', 'Brest', '{\"Population\": 286000}'),
(3526, 'Bobruisk', 'BLR', 'Mogiljov', '{\"Population\": 221000}'),
(3527, 'Baranovitši', 'BLR', 'Brest', '{\"Population\": 167000}'),
(3528, 'Borisov', 'BLR', 'Minsk', '{\"Population\": 151000}'),
(3529, 'Pinsk', 'BLR', 'Brest', '{\"Population\": 130000}'),
(3530, 'Orša', 'BLR', 'Vitebsk', '{\"Population\": 124000}'),
(3531, 'Mozyr', 'BLR', 'Gomel', '{\"Population\": 110000}'),
(3532, 'Novopolotsk', 'BLR', 'Vitebsk', '{\"Population\": 106000}'),
(3533, 'Lida', 'BLR', 'Grodno', '{\"Population\": 101000}'),
(3534, 'Soligorsk', 'BLR', 'Minsk', '{\"Population\": 101000}'),
(3535, 'Molodetšno', 'BLR', 'Minsk', '{\"Population\": 97000}'),
(3536, 'Mata-Utu', 'WLF', 'Wallis', '{\"Population\": 1137}'),
(3537, 'Port-Vila', 'VUT', 'Shefa', '{\"Population\": 33700}'),
(3538, 'Città del Vaticano', 'VAT', '–', '{\"Population\": 455}'),
(3539, 'Caracas', 'VEN', 'Distrito Federal', '{\"Population\": 1975294}'),
(3540, 'Maracaíbo', 'VEN', 'Zulia', '{\"Population\": 1304776}'),
(3541, 'Barquisimeto', 'VEN', 'Lara', '{\"Population\": 877239}'),
(3542, 'Valencia', 'VEN', 'Carabobo', '{\"Population\": 794246}'),
(3543, 'Ciudad Guayana', 'VEN', 'Bolívar', '{\"Population\": 663713}'),
(3544, 'Petare', 'VEN', 'Miranda', '{\"Population\": 488868}'),
(3545, 'Maracay', 'VEN', 'Aragua', '{\"Population\": 444443}'),
(3546, 'Barcelona', 'VEN', 'Anzoátegui', '{\"Population\": 322267}'),
(3547, 'Maturín', 'VEN', 'Monagas', '{\"Population\": 319726}'),
(3548, 'San Cristóbal', 'VEN', 'Táchira', '{\"Population\": 319373}'),
(3549, 'Ciudad Bolívar', 'VEN', 'Bolívar', '{\"Population\": 301107}'),
(3550, 'Cumaná', 'VEN', 'Sucre', '{\"Population\": 293105}'),
(3551, 'Mérida', 'VEN', 'Mérida', '{\"Population\": 224887}'),
(3552, 'Cabimas', 'VEN', 'Zulia', '{\"Population\": 221329}'),
(3553, 'Barinas', 'VEN', 'Barinas', '{\"Population\": 217831}'),
(3554, 'Turmero', 'VEN', 'Aragua', '{\"Population\": 217499}'),
(3555, 'Baruta', 'VEN', 'Miranda', '{\"Population\": 207290}'),
(3556, 'Puerto Cabello', 'VEN', 'Carabobo', '{\"Population\": 187722}'),
(3557, 'Santa Ana de Coro', 'VEN', 'Falcón', '{\"Population\": 185766}'),
(3558, 'Los Teques', 'VEN', 'Miranda', '{\"Population\": 178784}'),
(3559, 'Punto Fijo', 'VEN', 'Falcón', '{\"Population\": 167215}'),
(3560, 'Guarenas', 'VEN', 'Miranda', '{\"Population\": 165889}'),
(3561, 'Acarigua', 'VEN', 'Portuguesa', '{\"Population\": 158954}'),
(3562, 'Puerto La Cruz', 'VEN', 'Anzoátegui', '{\"Population\": 155700}'),
(3563, 'Ciudad Losada', 'VEN', '', '{\"Population\": 134501}'),
(3564, 'Guacara', 'VEN', 'Carabobo', '{\"Population\": 131334}'),
(3565, 'Valera', 'VEN', 'Trujillo', '{\"Population\": 130281}'),
(3566, 'Guanare', 'VEN', 'Portuguesa', '{\"Population\": 125621}'),
(3567, 'Carúpano', 'VEN', 'Sucre', '{\"Population\": 119639}'),
(3568, 'Catia La Mar', 'VEN', 'Distrito Federal', '{\"Population\": 117012}'),
(3569, 'El Tigre', 'VEN', 'Anzoátegui', '{\"Population\": 116256}'),
(3570, 'Guatire', 'VEN', 'Miranda', '{\"Population\": 109121}'),
(3571, 'Calabozo', 'VEN', 'Guárico', '{\"Population\": 107146}'),
(3572, 'Pozuelos', 'VEN', 'Anzoátegui', '{\"Population\": 105690}'),
(3573, 'Ciudad Ojeda', 'VEN', 'Zulia', '{\"Population\": 99354}'),
(3574, 'Ocumare del Tuy', 'VEN', 'Miranda', '{\"Population\": 97168}'),
(3575, 'Valle de la Pascua', 'VEN', 'Guárico', '{\"Population\": 95927}'),
(3576, 'Araure', 'VEN', 'Portuguesa', '{\"Population\": 94269}'),
(3577, 'San Fernando de Apure', 'VEN', 'Apure', '{\"Population\": 93809}'),
(3578, 'San Felipe', 'VEN', 'Yaracuy', '{\"Population\": 90940}'),
(3579, 'El Limón', 'VEN', 'Aragua', '{\"Population\": 90000}'),
(3580, 'Moscow', 'RUS', 'Moscow (City)', '{\"Population\": 8389200}'),
(3581, 'St Petersburg', 'RUS', 'Pietari', '{\"Population\": 4694000}'),
(3582, 'Novosibirsk', 'RUS', 'Novosibirsk', '{\"Population\": 1398800}'),
(3583, 'Nizni Novgorod', 'RUS', 'Nizni Novgorod', '{\"Population\": 1357000}'),
(3584, 'Jekaterinburg', 'RUS', 'Sverdlovsk', '{\"Population\": 1266300}'),
(3585, 'Samara', 'RUS', 'Samara', '{\"Population\": 1156100}'),
(3586, 'Omsk', 'RUS', 'Omsk', '{\"Population\": 1148900}'),
(3587, 'Kazan', 'RUS', 'Tatarstan', '{\"Population\": 1101000}'),
(3588, 'Ufa', 'RUS', 'Baškortostan', '{\"Population\": 1091200}'),
(3589, 'Tšeljabinsk', 'RUS', 'Tšeljabinsk', '{\"Population\": 1083200}'),
(3590, 'Rostov-na-Donu', 'RUS', 'Rostov-na-Donu', '{\"Population\": 1012700}'),
(3591, 'Perm', 'RUS', 'Perm', '{\"Population\": 1009700}'),
(3592, 'Volgograd', 'RUS', 'Volgograd', '{\"Population\": 993400}'),
(3593, 'Voronez', 'RUS', 'Voronez', '{\"Population\": 907700}'),
(3594, 'Krasnojarsk', 'RUS', 'Krasnojarsk', '{\"Population\": 875500}'),
(3595, 'Saratov', 'RUS', 'Saratov', '{\"Population\": 874000}'),
(3596, 'Toljatti', 'RUS', 'Samara', '{\"Population\": 722900}'),
(3597, 'Uljanovsk', 'RUS', 'Uljanovsk', '{\"Population\": 667400}'),
(3598, 'Izevsk', 'RUS', 'Udmurtia', '{\"Population\": 652800}'),
(3599, 'Krasnodar', 'RUS', 'Krasnodar', '{\"Population\": 639000}'),
(3600, 'Jaroslavl', 'RUS', 'Jaroslavl', '{\"Population\": 616700}'),
(3601, 'Habarovsk', 'RUS', 'Habarovsk', '{\"Population\": 609400}'),
(3602, 'Vladivostok', 'RUS', 'Primorje', '{\"Population\": 606200}'),
(3603, 'Irkutsk', 'RUS', 'Irkutsk', '{\"Population\": 593700}'),
(3604, 'Barnaul', 'RUS', 'Altai', '{\"Population\": 580100}'),
(3605, 'Novokuznetsk', 'RUS', 'Kemerovo', '{\"Population\": 561600}'),
(3606, 'Penza', 'RUS', 'Penza', '{\"Population\": 532200}'),
(3607, 'Rjazan', 'RUS', 'Rjazan', '{\"Population\": 529900}'),
(3608, 'Orenburg', 'RUS', 'Orenburg', '{\"Population\": 523600}'),
(3609, 'Lipetsk', 'RUS', 'Lipetsk', '{\"Population\": 521000}'),
(3610, 'Nabereznyje Tšelny', 'RUS', 'Tatarstan', '{\"Population\": 514700}'),
(3611, 'Tula', 'RUS', 'Tula', '{\"Population\": 506100}'),
(3612, 'Tjumen', 'RUS', 'Tjumen', '{\"Population\": 503400}'),
(3613, 'Kemerovo', 'RUS', 'Kemerovo', '{\"Population\": 492700}'),
(3614, 'Astrahan', 'RUS', 'Astrahan', '{\"Population\": 486100}'),
(3615, 'Tomsk', 'RUS', 'Tomsk', '{\"Population\": 482100}'),
(3616, 'Kirov', 'RUS', 'Kirov', '{\"Population\": 466200}'),
(3617, 'Ivanovo', 'RUS', 'Ivanovo', '{\"Population\": 459200}'),
(3618, 'Tšeboksary', 'RUS', 'Tšuvassia', '{\"Population\": 459200}'),
(3619, 'Brjansk', 'RUS', 'Brjansk', '{\"Population\": 457400}'),
(3620, 'Tver', 'RUS', 'Tver', '{\"Population\": 454900}'),
(3621, 'Kursk', 'RUS', 'Kursk', '{\"Population\": 443500}'),
(3622, 'Magnitogorsk', 'RUS', 'Tšeljabinsk', '{\"Population\": 427900}'),
(3623, 'Kaliningrad', 'RUS', 'Kaliningrad', '{\"Population\": 424400}'),
(3624, 'Nizni Tagil', 'RUS', 'Sverdlovsk', '{\"Population\": 390900}'),
(3625, 'Murmansk', 'RUS', 'Murmansk', '{\"Population\": 376300}'),
(3626, 'Ulan-Ude', 'RUS', 'Burjatia', '{\"Population\": 370400}'),
(3627, 'Kurgan', 'RUS', 'Kurgan', '{\"Population\": 364700}'),
(3628, 'Arkangeli', 'RUS', 'Arkangeli', '{\"Population\": 361800}'),
(3629, 'Sotši', 'RUS', 'Krasnodar', '{\"Population\": 358600}'),
(3630, 'Smolensk', 'RUS', 'Smolensk', '{\"Population\": 353400}'),
(3631, 'Orjol', 'RUS', 'Orjol', '{\"Population\": 344500}'),
(3632, 'Stavropol', 'RUS', 'Stavropol', '{\"Population\": 343300}'),
(3633, 'Belgorod', 'RUS', 'Belgorod', '{\"Population\": 342000}'),
(3634, 'Kaluga', 'RUS', 'Kaluga', '{\"Population\": 339300}'),
(3635, 'Vladimir', 'RUS', 'Vladimir', '{\"Population\": 337100}'),
(3636, 'Mahatškala', 'RUS', 'Dagestan', '{\"Population\": 332800}'),
(3637, 'Tšerepovets', 'RUS', 'Vologda', '{\"Population\": 324400}'),
(3638, 'Saransk', 'RUS', 'Mordva', '{\"Population\": 314800}'),
(3639, 'Tambov', 'RUS', 'Tambov', '{\"Population\": 312000}'),
(3640, 'Vladikavkaz', 'RUS', 'North Ossetia-Alania', '{\"Population\": 310100}'),
(3641, 'Tšita', 'RUS', 'Tšita', '{\"Population\": 309900}'),
(3642, 'Vologda', 'RUS', 'Vologda', '{\"Population\": 302500}'),
(3643, 'Veliki Novgorod', 'RUS', 'Novgorod', '{\"Population\": 299500}'),
(3644, 'Komsomolsk-na-Amure', 'RUS', 'Habarovsk', '{\"Population\": 291600}'),
(3645, 'Kostroma', 'RUS', 'Kostroma', '{\"Population\": 288100}'),
(3646, 'Volzski', 'RUS', 'Volgograd', '{\"Population\": 286900}'),
(3647, 'Taganrog', 'RUS', 'Rostov-na-Donu', '{\"Population\": 284400}'),
(3648, 'Petroskoi', 'RUS', 'Karjala', '{\"Population\": 282100}'),
(3649, 'Bratsk', 'RUS', 'Irkutsk', '{\"Population\": 277600}'),
(3650, 'Dzerzinsk', 'RUS', 'Nizni Novgorod', '{\"Population\": 277100}'),
(3651, 'Surgut', 'RUS', 'Hanti-Mansia', '{\"Population\": 274900}'),
(3652, 'Orsk', 'RUS', 'Orenburg', '{\"Population\": 273900}'),
(3653, 'Sterlitamak', 'RUS', 'Baškortostan', '{\"Population\": 265200}'),
(3654, 'Angarsk', 'RUS', 'Irkutsk', '{\"Population\": 264700}'),
(3655, 'Joškar-Ola', 'RUS', 'Marinmaa', '{\"Population\": 249200}'),
(3656, 'Rybinsk', 'RUS', 'Jaroslavl', '{\"Population\": 239600}'),
(3657, 'Prokopjevsk', 'RUS', 'Kemerovo', '{\"Population\": 237300}'),
(3658, 'Niznevartovsk', 'RUS', 'Hanti-Mansia', '{\"Population\": 233900}'),
(3659, 'Naltšik', 'RUS', 'Kabardi-Balkaria', '{\"Population\": 233400}'),
(3660, 'Syktyvkar', 'RUS', 'Komi', '{\"Population\": 229700}'),
(3661, 'Severodvinsk', 'RUS', 'Arkangeli', '{\"Population\": 229300}'),
(3662, 'Bijsk', 'RUS', 'Altai', '{\"Population\": 225000}'),
(3663, 'Niznekamsk', 'RUS', 'Tatarstan', '{\"Population\": 223400}'),
(3664, 'Blagoveštšensk', 'RUS', 'Amur', '{\"Population\": 222000}'),
(3665, 'Šahty', 'RUS', 'Rostov-na-Donu', '{\"Population\": 221800}'),
(3666, 'Staryi Oskol', 'RUS', 'Belgorod', '{\"Population\": 213800}'),
(3667, 'Zelenograd', 'RUS', 'Moscow (City)', '{\"Population\": 207100}'),
(3668, 'Balakovo', 'RUS', 'Saratov', '{\"Population\": 206000}'),
(3669, 'Novorossijsk', 'RUS', 'Krasnodar', '{\"Population\": 203300}'),
(3670, 'Pihkova', 'RUS', 'Pihkova', '{\"Population\": 201500}'),
(3671, 'Zlatoust', 'RUS', 'Tšeljabinsk', '{\"Population\": 196900}'),
(3672, 'Jakutsk', 'RUS', 'Saha (Jakutia)', '{\"Population\": 195400}'),
(3673, 'Podolsk', 'RUS', 'Moskova', '{\"Population\": 194300}'),
(3674, 'Petropavlovsk-Kamtšatski', 'RUS', 'Kamtšatka', '{\"Population\": 194100}'),
(3675, 'Kamensk-Uralski', 'RUS', 'Sverdlovsk', '{\"Population\": 190600}'),
(3676, 'Engels', 'RUS', 'Saratov', '{\"Population\": 189000}'),
(3677, 'Syzran', 'RUS', 'Samara', '{\"Population\": 186900}'),
(3678, 'Grozny', 'RUS', 'Tšetšenia', '{\"Population\": 186000}'),
(3679, 'Novotšerkassk', 'RUS', 'Rostov-na-Donu', '{\"Population\": 184400}'),
(3680, 'Berezniki', 'RUS', 'Perm', '{\"Population\": 181900}'),
(3681, 'Juzno-Sahalinsk', 'RUS', 'Sahalin', '{\"Population\": 179200}'),
(3682, 'Volgodonsk', 'RUS', 'Rostov-na-Donu', '{\"Population\": 178200}'),
(3683, 'Abakan', 'RUS', 'Hakassia', '{\"Population\": 169200}'),
(3684, 'Maikop', 'RUS', 'Adygea', '{\"Population\": 167300}'),
(3685, 'Miass', 'RUS', 'Tšeljabinsk', '{\"Population\": 166200}'),
(3686, 'Armavir', 'RUS', 'Krasnodar', '{\"Population\": 164900}'),
(3687, 'Ljubertsy', 'RUS', 'Moskova', '{\"Population\": 163900}'),
(3688, 'Rubtsovsk', 'RUS', 'Altai', '{\"Population\": 162600}'),
(3689, 'Kovrov', 'RUS', 'Vladimir', '{\"Population\": 159900}'),
(3690, 'Nahodka', 'RUS', 'Primorje', '{\"Population\": 157700}'),
(3691, 'Ussurijsk', 'RUS', 'Primorje', '{\"Population\": 157300}'),
(3692, 'Salavat', 'RUS', 'Baškortostan', '{\"Population\": 156800}'),
(3693, 'Mytištši', 'RUS', 'Moskova', '{\"Population\": 155700}'),
(3694, 'Kolomna', 'RUS', 'Moskova', '{\"Population\": 150700}'),
(3695, 'Elektrostal', 'RUS', 'Moskova', '{\"Population\": 147000}'),
(3696, 'Murom', 'RUS', 'Vladimir', '{\"Population\": 142400}'),
(3697, 'Kolpino', 'RUS', 'Pietari', '{\"Population\": 141200}'),
(3698, 'Norilsk', 'RUS', 'Krasnojarsk', '{\"Population\": 140800}'),
(3699, 'Almetjevsk', 'RUS', 'Tatarstan', '{\"Population\": 140700}'),
(3700, 'Novomoskovsk', 'RUS', 'Tula', '{\"Population\": 138100}'),
(3701, 'Dimitrovgrad', 'RUS', 'Uljanovsk', '{\"Population\": 137000}'),
(3702, 'Pervouralsk', 'RUS', 'Sverdlovsk', '{\"Population\": 136100}'),
(3703, 'Himki', 'RUS', 'Moskova', '{\"Population\": 133700}'),
(3704, 'Balašiha', 'RUS', 'Moskova', '{\"Population\": 132900}'),
(3705, 'Nevinnomyssk', 'RUS', 'Stavropol', '{\"Population\": 132600}'),
(3706, 'Pjatigorsk', 'RUS', 'Stavropol', '{\"Population\": 132500}'),
(3707, 'Korolev', 'RUS', 'Moskova', '{\"Population\": 132400}'),
(3708, 'Serpuhov', 'RUS', 'Moskova', '{\"Population\": 132000}'),
(3709, 'Odintsovo', 'RUS', 'Moskova', '{\"Population\": 127400}'),
(3710, 'Orehovo-Zujevo', 'RUS', 'Moskova', '{\"Population\": 124900}'),
(3711, 'Kamyšin', 'RUS', 'Volgograd', '{\"Population\": 124600}'),
(3712, 'Novotšeboksarsk', 'RUS', 'Tšuvassia', '{\"Population\": 123400}'),
(3713, 'Tšerkessk', 'RUS', 'Karatšai-Tšerkessia', '{\"Population\": 121700}'),
(3714, 'Atšinsk', 'RUS', 'Krasnojarsk', '{\"Population\": 121600}'),
(3715, 'Magadan', 'RUS', 'Magadan', '{\"Population\": 121000}'),
(3716, 'Mitšurinsk', 'RUS', 'Tambov', '{\"Population\": 120700}'),
(3717, 'Kislovodsk', 'RUS', 'Stavropol', '{\"Population\": 120400}'),
(3718, 'Jelets', 'RUS', 'Lipetsk', '{\"Population\": 119400}'),
(3719, 'Seversk', 'RUS', 'Tomsk', '{\"Population\": 118600}'),
(3720, 'Noginsk', 'RUS', 'Moskova', '{\"Population\": 117200}'),
(3721, 'Velikije Luki', 'RUS', 'Pihkova', '{\"Population\": 116300}'),
(3722, 'Novokuibyševsk', 'RUS', 'Samara', '{\"Population\": 116200}'),
(3723, 'Neftekamsk', 'RUS', 'Baškortostan', '{\"Population\": 115700}'),
(3724, 'Leninsk-Kuznetski', 'RUS', 'Kemerovo', '{\"Population\": 113800}'),
(3725, 'Oktjabrski', 'RUS', 'Baškortostan', '{\"Population\": 111500}'),
(3726, 'Sergijev Posad', 'RUS', 'Moskova', '{\"Population\": 111100}'),
(3727, 'Arzamas', 'RUS', 'Nizni Novgorod', '{\"Population\": 110700}'),
(3728, 'Kiseljovsk', 'RUS', 'Kemerovo', '{\"Population\": 110000}'),
(3729, 'Novotroitsk', 'RUS', 'Orenburg', '{\"Population\": 109600}'),
(3730, 'Obninsk', 'RUS', 'Kaluga', '{\"Population\": 108300}'),
(3731, 'Kansk', 'RUS', 'Krasnojarsk', '{\"Population\": 107400}'),
(3732, 'Glazov', 'RUS', 'Udmurtia', '{\"Population\": 106300}'),
(3733, 'Solikamsk', 'RUS', 'Perm', '{\"Population\": 106000}'),
(3734, 'Sarapul', 'RUS', 'Udmurtia', '{\"Population\": 105700}'),
(3735, 'Ust-Ilimsk', 'RUS', 'Irkutsk', '{\"Population\": 105200}'),
(3736, 'Štšolkovo', 'RUS', 'Moskova', '{\"Population\": 104900}'),
(3737, 'Mezduretšensk', 'RUS', 'Kemerovo', '{\"Population\": 104400}'),
(3738, 'Usolje-Sibirskoje', 'RUS', 'Irkutsk', '{\"Population\": 103500}'),
(3739, 'Elista', 'RUS', 'Kalmykia', '{\"Population\": 103300}'),
(3740, 'Novošahtinsk', 'RUS', 'Rostov-na-Donu', '{\"Population\": 101900}'),
(3741, 'Votkinsk', 'RUS', 'Udmurtia', '{\"Population\": 101700}'),
(3742, 'Kyzyl', 'RUS', 'Tyva', '{\"Population\": 101100}'),
(3743, 'Serov', 'RUS', 'Sverdlovsk', '{\"Population\": 100400}'),
(3744, 'Zelenodolsk', 'RUS', 'Tatarstan', '{\"Population\": 100200}'),
(3745, 'Zeleznodoroznyi', 'RUS', 'Moskova', '{\"Population\": 100100}'),
(3746, 'Kinešma', 'RUS', 'Ivanovo', '{\"Population\": 100000}'),
(3747, 'Kuznetsk', 'RUS', 'Penza', '{\"Population\": 98200}'),
(3748, 'Uhta', 'RUS', 'Komi', '{\"Population\": 98000}'),
(3749, 'Jessentuki', 'RUS', 'Stavropol', '{\"Population\": 97900}'),
(3750, 'Tobolsk', 'RUS', 'Tjumen', '{\"Population\": 97600}'),
(3751, 'Neftejugansk', 'RUS', 'Hanti-Mansia', '{\"Population\": 97400}'),
(3752, 'Bataisk', 'RUS', 'Rostov-na-Donu', '{\"Population\": 97300}'),
(3753, 'Nojabrsk', 'RUS', 'Yamalin Nenetsia', '{\"Population\": 97300}'),
(3754, 'Balašov', 'RUS', 'Saratov', '{\"Population\": 97100}'),
(3755, 'Zeleznogorsk', 'RUS', 'Kursk', '{\"Population\": 96900}'),
(3756, 'Zukovski', 'RUS', 'Moskova', '{\"Population\": 96500}'),
(3757, 'Anzero-Sudzensk', 'RUS', 'Kemerovo', '{\"Population\": 96100}'),
(3758, 'Bugulma', 'RUS', 'Tatarstan', '{\"Population\": 94100}'),
(3759, 'Zeleznogorsk', 'RUS', 'Krasnojarsk', '{\"Population\": 94000}'),
(3760, 'Novouralsk', 'RUS', 'Sverdlovsk', '{\"Population\": 93300}'),
(3761, 'Puškin', 'RUS', 'Pietari', '{\"Population\": 92900}'),
(3762, 'Vorkuta', 'RUS', 'Komi', '{\"Population\": 92600}'),
(3763, 'Derbent', 'RUS', 'Dagestan', '{\"Population\": 92300}'),
(3764, 'Kirovo-Tšepetsk', 'RUS', 'Kirov', '{\"Population\": 91600}'),
(3765, 'Krasnogorsk', 'RUS', 'Moskova', '{\"Population\": 91000}'),
(3766, 'Klin', 'RUS', 'Moskova', '{\"Population\": 90000}'),
(3767, 'Tšaikovski', 'RUS', 'Perm', '{\"Population\": 90000}'),
(3768, 'Novyi Urengoi', 'RUS', 'Yamalin Nenetsia', '{\"Population\": 89800}');
INSERT INTO `city` (`ID`, `Name`, `CountryCode`, `District`, `Info`) VALUES
(3769, 'Ho Chi Minh City', 'VNM', 'Ho Chi Minh City', '{\"Population\": 3980000}'),
(3770, 'Hanoi', 'VNM', 'Hanoi', '{\"Population\": 1410000}'),
(3771, 'Haiphong', 'VNM', 'Haiphong', '{\"Population\": 783133}'),
(3772, 'Da Nang', 'VNM', 'Quang Nam-Da Nang', '{\"Population\": 382674}'),
(3773, 'Biên Hoa', 'VNM', 'Dong Nai', '{\"Population\": 282095}'),
(3774, 'Nha Trang', 'VNM', 'Khanh Hoa', '{\"Population\": 221331}'),
(3775, 'Hue', 'VNM', 'Thua Thien-Hue', '{\"Population\": 219149}'),
(3776, 'Can Tho', 'VNM', 'Can Tho', '{\"Population\": 215587}'),
(3777, 'Cam Pha', 'VNM', 'Quang Binh', '{\"Population\": 209086}'),
(3778, 'Nam Dinh', 'VNM', 'Nam Ha', '{\"Population\": 171699}'),
(3779, 'Quy Nhon', 'VNM', 'Binh Dinh', '{\"Population\": 163385}'),
(3780, 'Vung Tau', 'VNM', 'Ba Ria-Vung Tau', '{\"Population\": 145145}'),
(3781, 'Rach Gia', 'VNM', 'Kien Giang', '{\"Population\": 141132}'),
(3782, 'Long Xuyen', 'VNM', 'An Giang', '{\"Population\": 132681}'),
(3783, 'Thai Nguyen', 'VNM', 'Bac Thai', '{\"Population\": 127643}'),
(3784, 'Hong Gai', 'VNM', 'Quang Ninh', '{\"Population\": 127484}'),
(3785, 'Phan Thiêt', 'VNM', 'Binh Thuan', '{\"Population\": 114236}'),
(3786, 'Cam Ranh', 'VNM', 'Khanh Hoa', '{\"Population\": 114041}'),
(3787, 'Vinh', 'VNM', 'Nghe An', '{\"Population\": 112455}'),
(3788, 'My Tho', 'VNM', 'Tien Giang', '{\"Population\": 108404}'),
(3789, 'Da Lat', 'VNM', 'Lam Dong', '{\"Population\": 106409}'),
(3790, 'Buon Ma Thuot', 'VNM', 'Dac Lac', '{\"Population\": 97044}'),
(3791, 'Tallinn', 'EST', 'Harjumaa', '{\"Population\": 403981}'),
(3792, 'Tartu', 'EST', 'Tartumaa', '{\"Population\": 101246}'),
(3793, 'New York', 'USA', 'New York', '{\"Population\": 8008278}'),
(3794, 'Los Angeles', 'USA', 'California', '{\"Population\": 3694820}'),
(3795, 'Chicago', 'USA', 'Illinois', '{\"Population\": 2896016}'),
(3796, 'Houston', 'USA', 'Texas', '{\"Population\": 1953631}'),
(3797, 'Philadelphia', 'USA', 'Pennsylvania', '{\"Population\": 1517550}'),
(3798, 'Phoenix', 'USA', 'Arizona', '{\"Population\": 1321045}'),
(3799, 'San Diego', 'USA', 'California', '{\"Population\": 1223400}'),
(3800, 'Dallas', 'USA', 'Texas', '{\"Population\": 1188580}'),
(3801, 'San Antonio', 'USA', 'Texas', '{\"Population\": 1144646}'),
(3802, 'Detroit', 'USA', 'Michigan', '{\"Population\": 951270}'),
(3803, 'San Jose', 'USA', 'California', '{\"Population\": 894943}'),
(3804, 'Indianapolis', 'USA', 'Indiana', '{\"Population\": 791926}'),
(3805, 'San Francisco', 'USA', 'California', '{\"Population\": 776733}'),
(3806, 'Jacksonville', 'USA', 'Florida', '{\"Population\": 735167}'),
(3807, 'Columbus', 'USA', 'Ohio', '{\"Population\": 711470}'),
(3808, 'Austin', 'USA', 'Texas', '{\"Population\": 656562}'),
(3809, 'Baltimore', 'USA', 'Maryland', '{\"Population\": 651154}'),
(3810, 'Memphis', 'USA', 'Tennessee', '{\"Population\": 650100}'),
(3811, 'Milwaukee', 'USA', 'Wisconsin', '{\"Population\": 596974}'),
(3812, 'Boston', 'USA', 'Massachusetts', '{\"Population\": 589141}'),
(3813, 'Washington', 'USA', 'District of Columbia', '{\"Population\": 572059}'),
(3814, 'Nashville-Davidson', 'USA', 'Tennessee', '{\"Population\": 569891}'),
(3815, 'El Paso', 'USA', 'Texas', '{\"Population\": 563662}'),
(3816, 'Seattle', 'USA', 'Washington', '{\"Population\": 563374}'),
(3817, 'Denver', 'USA', 'Colorado', '{\"Population\": 554636}'),
(3818, 'Charlotte', 'USA', 'North Carolina', '{\"Population\": 540828}'),
(3819, 'Fort Worth', 'USA', 'Texas', '{\"Population\": 534694}'),
(3820, 'Portland', 'USA', 'Oregon', '{\"Population\": 529121}'),
(3821, 'Oklahoma City', 'USA', 'Oklahoma', '{\"Population\": 506132}'),
(3822, 'Tucson', 'USA', 'Arizona', '{\"Population\": 486699}'),
(3823, 'New Orleans', 'USA', 'Louisiana', '{\"Population\": 484674}'),
(3824, 'Las Vegas', 'USA', 'Nevada', '{\"Population\": 478434}'),
(3825, 'Cleveland', 'USA', 'Ohio', '{\"Population\": 478403}'),
(3826, 'Long Beach', 'USA', 'California', '{\"Population\": 461522}'),
(3827, 'Albuquerque', 'USA', 'New Mexico', '{\"Population\": 448607}'),
(3828, 'Kansas City', 'USA', 'Missouri', '{\"Population\": 441545}'),
(3829, 'Fresno', 'USA', 'California', '{\"Population\": 427652}'),
(3830, 'Virginia Beach', 'USA', 'Virginia', '{\"Population\": 425257}'),
(3831, 'Atlanta', 'USA', 'Georgia', '{\"Population\": 416474}'),
(3832, 'Sacramento', 'USA', 'California', '{\"Population\": 407018}'),
(3833, 'Oakland', 'USA', 'California', '{\"Population\": 399484}'),
(3834, 'Mesa', 'USA', 'Arizona', '{\"Population\": 396375}'),
(3835, 'Tulsa', 'USA', 'Oklahoma', '{\"Population\": 393049}'),
(3836, 'Omaha', 'USA', 'Nebraska', '{\"Population\": 390007}'),
(3837, 'Minneapolis', 'USA', 'Minnesota', '{\"Population\": 382618}'),
(3838, 'Honolulu', 'USA', 'Hawaii', '{\"Population\": 371657}'),
(3839, 'Miami', 'USA', 'Florida', '{\"Population\": 362470}'),
(3840, 'Colorado Springs', 'USA', 'Colorado', '{\"Population\": 360890}'),
(3841, 'Saint Louis', 'USA', 'Missouri', '{\"Population\": 348189}'),
(3842, 'Wichita', 'USA', 'Kansas', '{\"Population\": 344284}'),
(3843, 'Santa Ana', 'USA', 'California', '{\"Population\": 337977}'),
(3844, 'Pittsburgh', 'USA', 'Pennsylvania', '{\"Population\": 334563}'),
(3845, 'Arlington', 'USA', 'Texas', '{\"Population\": 332969}'),
(3846, 'Cincinnati', 'USA', 'Ohio', '{\"Population\": 331285}'),
(3847, 'Anaheim', 'USA', 'California', '{\"Population\": 328014}'),
(3848, 'Toledo', 'USA', 'Ohio', '{\"Population\": 313619}'),
(3849, 'Tampa', 'USA', 'Florida', '{\"Population\": 303447}'),
(3850, 'Buffalo', 'USA', 'New York', '{\"Population\": 292648}'),
(3851, 'Saint Paul', 'USA', 'Minnesota', '{\"Population\": 287151}'),
(3852, 'Corpus Christi', 'USA', 'Texas', '{\"Population\": 277454}'),
(3853, 'Aurora', 'USA', 'Colorado', '{\"Population\": 276393}'),
(3854, 'Raleigh', 'USA', 'North Carolina', '{\"Population\": 276093}'),
(3855, 'Newark', 'USA', 'New Jersey', '{\"Population\": 273546}'),
(3856, 'Lexington-Fayette', 'USA', 'Kentucky', '{\"Population\": 260512}'),
(3857, 'Anchorage', 'USA', 'Alaska', '{\"Population\": 260283}'),
(3858, 'Louisville', 'USA', 'Kentucky', '{\"Population\": 256231}'),
(3859, 'Riverside', 'USA', 'California', '{\"Population\": 255166}'),
(3860, 'Saint Petersburg', 'USA', 'Florida', '{\"Population\": 248232}'),
(3861, 'Bakersfield', 'USA', 'California', '{\"Population\": 247057}'),
(3862, 'Stockton', 'USA', 'California', '{\"Population\": 243771}'),
(3863, 'Birmingham', 'USA', 'Alabama', '{\"Population\": 242820}'),
(3864, 'Jersey City', 'USA', 'New Jersey', '{\"Population\": 240055}'),
(3865, 'Norfolk', 'USA', 'Virginia', '{\"Population\": 234403}'),
(3866, 'Baton Rouge', 'USA', 'Louisiana', '{\"Population\": 227818}'),
(3867, 'Hialeah', 'USA', 'Florida', '{\"Population\": 226419}'),
(3868, 'Lincoln', 'USA', 'Nebraska', '{\"Population\": 225581}'),
(3869, 'Greensboro', 'USA', 'North Carolina', '{\"Population\": 223891}'),
(3870, 'Plano', 'USA', 'Texas', '{\"Population\": 222030}'),
(3871, 'Rochester', 'USA', 'New York', '{\"Population\": 219773}'),
(3872, 'Glendale', 'USA', 'Arizona', '{\"Population\": 218812}'),
(3873, 'Akron', 'USA', 'Ohio', '{\"Population\": 217074}'),
(3874, 'Garland', 'USA', 'Texas', '{\"Population\": 215768}'),
(3875, 'Madison', 'USA', 'Wisconsin', '{\"Population\": 208054}'),
(3876, 'Fort Wayne', 'USA', 'Indiana', '{\"Population\": 205727}'),
(3877, 'Fremont', 'USA', 'California', '{\"Population\": 203413}'),
(3878, 'Scottsdale', 'USA', 'Arizona', '{\"Population\": 202705}'),
(3879, 'Montgomery', 'USA', 'Alabama', '{\"Population\": 201568}'),
(3880, 'Shreveport', 'USA', 'Louisiana', '{\"Population\": 200145}'),
(3881, 'Augusta-Richmond County', 'USA', 'Georgia', '{\"Population\": 199775}'),
(3882, 'Lubbock', 'USA', 'Texas', '{\"Population\": 199564}'),
(3883, 'Chesapeake', 'USA', 'Virginia', '{\"Population\": 199184}'),
(3884, 'Mobile', 'USA', 'Alabama', '{\"Population\": 198915}'),
(3885, 'Des Moines', 'USA', 'Iowa', '{\"Population\": 198682}'),
(3886, 'Grand Rapids', 'USA', 'Michigan', '{\"Population\": 197800}'),
(3887, 'Richmond', 'USA', 'Virginia', '{\"Population\": 197790}'),
(3888, 'Yonkers', 'USA', 'New York', '{\"Population\": 196086}'),
(3889, 'Spokane', 'USA', 'Washington', '{\"Population\": 195629}'),
(3890, 'Glendale', 'USA', 'California', '{\"Population\": 194973}'),
(3891, 'Tacoma', 'USA', 'Washington', '{\"Population\": 193556}'),
(3892, 'Irving', 'USA', 'Texas', '{\"Population\": 191615}'),
(3893, 'Huntington Beach', 'USA', 'California', '{\"Population\": 189594}'),
(3894, 'Modesto', 'USA', 'California', '{\"Population\": 188856}'),
(3895, 'Durham', 'USA', 'North Carolina', '{\"Population\": 187035}'),
(3896, 'Columbus', 'USA', 'Georgia', '{\"Population\": 186291}'),
(3897, 'Orlando', 'USA', 'Florida', '{\"Population\": 185951}'),
(3898, 'Boise City', 'USA', 'Idaho', '{\"Population\": 185787}'),
(3899, 'Winston-Salem', 'USA', 'North Carolina', '{\"Population\": 185776}'),
(3900, 'San Bernardino', 'USA', 'California', '{\"Population\": 185401}'),
(3901, 'Jackson', 'USA', 'Mississippi', '{\"Population\": 184256}'),
(3902, 'Little Rock', 'USA', 'Arkansas', '{\"Population\": 183133}'),
(3903, 'Salt Lake City', 'USA', 'Utah', '{\"Population\": 181743}'),
(3904, 'Reno', 'USA', 'Nevada', '{\"Population\": 180480}'),
(3905, 'Newport News', 'USA', 'Virginia', '{\"Population\": 180150}'),
(3906, 'Chandler', 'USA', 'Arizona', '{\"Population\": 176581}'),
(3907, 'Laredo', 'USA', 'Texas', '{\"Population\": 176576}'),
(3908, 'Henderson', 'USA', 'Nevada', '{\"Population\": 175381}'),
(3909, 'Arlington', 'USA', 'Virginia', '{\"Population\": 174838}'),
(3910, 'Knoxville', 'USA', 'Tennessee', '{\"Population\": 173890}'),
(3911, 'Amarillo', 'USA', 'Texas', '{\"Population\": 173627}'),
(3912, 'Providence', 'USA', 'Rhode Island', '{\"Population\": 173618}'),
(3913, 'Chula Vista', 'USA', 'California', '{\"Population\": 173556}'),
(3914, 'Worcester', 'USA', 'Massachusetts', '{\"Population\": 172648}'),
(3915, 'Oxnard', 'USA', 'California', '{\"Population\": 170358}'),
(3916, 'Dayton', 'USA', 'Ohio', '{\"Population\": 166179}'),
(3917, 'Garden Grove', 'USA', 'California', '{\"Population\": 165196}'),
(3918, 'Oceanside', 'USA', 'California', '{\"Population\": 161029}'),
(3919, 'Tempe', 'USA', 'Arizona', '{\"Population\": 158625}'),
(3920, 'Huntsville', 'USA', 'Alabama', '{\"Population\": 158216}'),
(3921, 'Ontario', 'USA', 'California', '{\"Population\": 158007}'),
(3922, 'Chattanooga', 'USA', 'Tennessee', '{\"Population\": 155554}'),
(3923, 'Fort Lauderdale', 'USA', 'Florida', '{\"Population\": 152397}'),
(3924, 'Springfield', 'USA', 'Massachusetts', '{\"Population\": 152082}'),
(3925, 'Springfield', 'USA', 'Missouri', '{\"Population\": 151580}'),
(3926, 'Santa Clarita', 'USA', 'California', '{\"Population\": 151088}'),
(3927, 'Salinas', 'USA', 'California', '{\"Population\": 151060}'),
(3928, 'Tallahassee', 'USA', 'Florida', '{\"Population\": 150624}'),
(3929, 'Rockford', 'USA', 'Illinois', '{\"Population\": 150115}'),
(3930, 'Pomona', 'USA', 'California', '{\"Population\": 149473}'),
(3931, 'Metairie', 'USA', 'Louisiana', '{\"Population\": 149428}'),
(3932, 'Paterson', 'USA', 'New Jersey', '{\"Population\": 149222}'),
(3933, 'Overland Park', 'USA', 'Kansas', '{\"Population\": 149080}'),
(3934, 'Santa Rosa', 'USA', 'California', '{\"Population\": 147595}'),
(3935, 'Syracuse', 'USA', 'New York', '{\"Population\": 147306}'),
(3936, 'Kansas City', 'USA', 'Kansas', '{\"Population\": 146866}'),
(3937, 'Hampton', 'USA', 'Virginia', '{\"Population\": 146437}'),
(3938, 'Lakewood', 'USA', 'Colorado', '{\"Population\": 144126}'),
(3939, 'Vancouver', 'USA', 'Washington', '{\"Population\": 143560}'),
(3940, 'Irvine', 'USA', 'California', '{\"Population\": 143072}'),
(3941, 'Aurora', 'USA', 'Illinois', '{\"Population\": 142990}'),
(3942, 'Moreno Valley', 'USA', 'California', '{\"Population\": 142381}'),
(3943, 'Pasadena', 'USA', 'California', '{\"Population\": 141674}'),
(3944, 'Hayward', 'USA', 'California', '{\"Population\": 140030}'),
(3945, 'Brownsville', 'USA', 'Texas', '{\"Population\": 139722}'),
(3946, 'Bridgeport', 'USA', 'Connecticut', '{\"Population\": 139529}'),
(3947, 'Hollywood', 'USA', 'Florida', '{\"Population\": 139357}'),
(3948, 'Warren', 'USA', 'Michigan', '{\"Population\": 138247}'),
(3949, 'Torrance', 'USA', 'California', '{\"Population\": 137946}'),
(3950, 'Eugene', 'USA', 'Oregon', '{\"Population\": 137893}'),
(3951, 'Pembroke Pines', 'USA', 'Florida', '{\"Population\": 137427}'),
(3952, 'Salem', 'USA', 'Oregon', '{\"Population\": 136924}'),
(3953, 'Pasadena', 'USA', 'Texas', '{\"Population\": 133936}'),
(3954, 'Escondido', 'USA', 'California', '{\"Population\": 133559}'),
(3955, 'Sunnyvale', 'USA', 'California', '{\"Population\": 131760}'),
(3956, 'Savannah', 'USA', 'Georgia', '{\"Population\": 131510}'),
(3957, 'Fontana', 'USA', 'California', '{\"Population\": 128929}'),
(3958, 'Orange', 'USA', 'California', '{\"Population\": 128821}'),
(3959, 'Naperville', 'USA', 'Illinois', '{\"Population\": 128358}'),
(3960, 'Alexandria', 'USA', 'Virginia', '{\"Population\": 128283}'),
(3961, 'Rancho Cucamonga', 'USA', 'California', '{\"Population\": 127743}'),
(3962, 'Grand Prairie', 'USA', 'Texas', '{\"Population\": 127427}'),
(3963, 'East Los Angeles', 'USA', 'California', '{\"Population\": 126379}'),
(3964, 'Fullerton', 'USA', 'California', '{\"Population\": 126003}'),
(3965, 'Corona', 'USA', 'California', '{\"Population\": 124966}'),
(3966, 'Flint', 'USA', 'Michigan', '{\"Population\": 124943}'),
(3967, 'Paradise', 'USA', 'Nevada', '{\"Population\": 124682}'),
(3968, 'Mesquite', 'USA', 'Texas', '{\"Population\": 124523}'),
(3969, 'Sterling Heights', 'USA', 'Michigan', '{\"Population\": 124471}'),
(3970, 'Sioux Falls', 'USA', 'South Dakota', '{\"Population\": 123975}'),
(3971, 'New Haven', 'USA', 'Connecticut', '{\"Population\": 123626}'),
(3972, 'Topeka', 'USA', 'Kansas', '{\"Population\": 122377}'),
(3973, 'Concord', 'USA', 'California', '{\"Population\": 121780}'),
(3974, 'Evansville', 'USA', 'Indiana', '{\"Population\": 121582}'),
(3975, 'Hartford', 'USA', 'Connecticut', '{\"Population\": 121578}'),
(3976, 'Fayetteville', 'USA', 'North Carolina', '{\"Population\": 121015}'),
(3977, 'Cedar Rapids', 'USA', 'Iowa', '{\"Population\": 120758}'),
(3978, 'Elizabeth', 'USA', 'New Jersey', '{\"Population\": 120568}'),
(3979, 'Lansing', 'USA', 'Michigan', '{\"Population\": 119128}'),
(3980, 'Lancaster', 'USA', 'California', '{\"Population\": 118718}'),
(3981, 'Fort Collins', 'USA', 'Colorado', '{\"Population\": 118652}'),
(3982, 'Coral Springs', 'USA', 'Florida', '{\"Population\": 117549}'),
(3983, 'Stamford', 'USA', 'Connecticut', '{\"Population\": 117083}'),
(3984, 'Thousand Oaks', 'USA', 'California', '{\"Population\": 117005}'),
(3985, 'Vallejo', 'USA', 'California', '{\"Population\": 116760}'),
(3986, 'Palmdale', 'USA', 'California', '{\"Population\": 116670}'),
(3987, 'Columbia', 'USA', 'South Carolina', '{\"Population\": 116278}'),
(3988, 'El Monte', 'USA', 'California', '{\"Population\": 115965}'),
(3989, 'Abilene', 'USA', 'Texas', '{\"Population\": 115930}'),
(3990, 'North Las Vegas', 'USA', 'Nevada', '{\"Population\": 115488}'),
(3991, 'Ann Arbor', 'USA', 'Michigan', '{\"Population\": 114024}'),
(3992, 'Beaumont', 'USA', 'Texas', '{\"Population\": 113866}'),
(3993, 'Waco', 'USA', 'Texas', '{\"Population\": 113726}'),
(3994, 'Macon', 'USA', 'Georgia', '{\"Population\": 113336}'),
(3995, 'Independence', 'USA', 'Missouri', '{\"Population\": 113288}'),
(3996, 'Peoria', 'USA', 'Illinois', '{\"Population\": 112936}'),
(3997, 'Inglewood', 'USA', 'California', '{\"Population\": 112580}'),
(3998, 'Springfield', 'USA', 'Illinois', '{\"Population\": 111454}'),
(3999, 'Simi Valley', 'USA', 'California', '{\"Population\": 111351}'),
(4000, 'Lafayette', 'USA', 'Louisiana', '{\"Population\": 110257}'),
(4001, 'Gilbert', 'USA', 'Arizona', '{\"Population\": 109697}'),
(4002, 'Carrollton', 'USA', 'Texas', '{\"Population\": 109576}'),
(4003, 'Bellevue', 'USA', 'Washington', '{\"Population\": 109569}'),
(4004, 'West Valley City', 'USA', 'Utah', '{\"Population\": 108896}'),
(4005, 'Clarksville', 'USA', 'Tennessee', '{\"Population\": 108787}'),
(4006, 'Costa Mesa', 'USA', 'California', '{\"Population\": 108724}'),
(4007, 'Peoria', 'USA', 'Arizona', '{\"Population\": 108364}'),
(4008, 'South Bend', 'USA', 'Indiana', '{\"Population\": 107789}'),
(4009, 'Downey', 'USA', 'California', '{\"Population\": 107323}'),
(4010, 'Waterbury', 'USA', 'Connecticut', '{\"Population\": 107271}'),
(4011, 'Manchester', 'USA', 'New Hampshire', '{\"Population\": 107006}'),
(4012, 'Allentown', 'USA', 'Pennsylvania', '{\"Population\": 106632}'),
(4013, 'McAllen', 'USA', 'Texas', '{\"Population\": 106414}'),
(4014, 'Joliet', 'USA', 'Illinois', '{\"Population\": 106221}'),
(4015, 'Lowell', 'USA', 'Massachusetts', '{\"Population\": 105167}'),
(4016, 'Provo', 'USA', 'Utah', '{\"Population\": 105166}'),
(4017, 'West Covina', 'USA', 'California', '{\"Population\": 105080}'),
(4018, 'Wichita Falls', 'USA', 'Texas', '{\"Population\": 104197}'),
(4019, 'Erie', 'USA', 'Pennsylvania', '{\"Population\": 103717}'),
(4020, 'Daly City', 'USA', 'California', '{\"Population\": 103621}'),
(4021, 'Citrus Heights', 'USA', 'California', '{\"Population\": 103455}'),
(4022, 'Norwalk', 'USA', 'California', '{\"Population\": 103298}'),
(4023, 'Gary', 'USA', 'Indiana', '{\"Population\": 102746}'),
(4024, 'Berkeley', 'USA', 'California', '{\"Population\": 102743}'),
(4025, 'Santa Clara', 'USA', 'California', '{\"Population\": 102361}'),
(4026, 'Green Bay', 'USA', 'Wisconsin', '{\"Population\": 102313}'),
(4027, 'Cape Coral', 'USA', 'Florida', '{\"Population\": 102286}'),
(4028, 'Arvada', 'USA', 'Colorado', '{\"Population\": 102153}'),
(4029, 'Pueblo', 'USA', 'Colorado', '{\"Population\": 102121}'),
(4030, 'Sandy', 'USA', 'Utah', '{\"Population\": 101853}'),
(4031, 'Athens-Clarke County', 'USA', 'Georgia', '{\"Population\": 101489}'),
(4032, 'Cambridge', 'USA', 'Massachusetts', '{\"Population\": 101355}'),
(4033, 'Westminster', 'USA', 'Colorado', '{\"Population\": 100940}'),
(4034, 'San Buenaventura', 'USA', 'California', '{\"Population\": 100916}'),
(4035, 'Portsmouth', 'USA', 'Virginia', '{\"Population\": 100565}'),
(4036, 'Livonia', 'USA', 'Michigan', '{\"Population\": 100545}'),
(4037, 'Burbank', 'USA', 'California', '{\"Population\": 100316}'),
(4038, 'Clearwater', 'USA', 'Florida', '{\"Population\": 99936}'),
(4039, 'Midland', 'USA', 'Texas', '{\"Population\": 98293}'),
(4040, 'Davenport', 'USA', 'Iowa', '{\"Population\": 98256}'),
(4041, 'Mission Viejo', 'USA', 'California', '{\"Population\": 98049}'),
(4042, 'Miami Beach', 'USA', 'Florida', '{\"Population\": 97855}'),
(4043, 'Sunrise Manor', 'USA', 'Nevada', '{\"Population\": 95362}'),
(4044, 'New Bedford', 'USA', 'Massachusetts', '{\"Population\": 94780}'),
(4045, 'El Cajon', 'USA', 'California', '{\"Population\": 94578}'),
(4046, 'Norman', 'USA', 'Oklahoma', '{\"Population\": 94193}'),
(4047, 'Richmond', 'USA', 'California', '{\"Population\": 94100}'),
(4048, 'Albany', 'USA', 'New York', '{\"Population\": 93994}'),
(4049, 'Brockton', 'USA', 'Massachusetts', '{\"Population\": 93653}'),
(4050, 'Roanoke', 'USA', 'Virginia', '{\"Population\": 93357}'),
(4051, 'Billings', 'USA', 'Montana', '{\"Population\": 92988}'),
(4052, 'Compton', 'USA', 'California', '{\"Population\": 92864}'),
(4053, 'Gainesville', 'USA', 'Florida', '{\"Population\": 92291}'),
(4054, 'Fairfield', 'USA', 'California', '{\"Population\": 92256}'),
(4055, 'Arden-Arcade', 'USA', 'California', '{\"Population\": 92040}'),
(4056, 'San Mateo', 'USA', 'California', '{\"Population\": 91799}'),
(4057, 'Visalia', 'USA', 'California', '{\"Population\": 91762}'),
(4058, 'Boulder', 'USA', 'Colorado', '{\"Population\": 91238}'),
(4059, 'Cary', 'USA', 'North Carolina', '{\"Population\": 91213}'),
(4060, 'Santa Monica', 'USA', 'California', '{\"Population\": 91084}'),
(4061, 'Fall River', 'USA', 'Massachusetts', '{\"Population\": 90555}'),
(4062, 'Kenosha', 'USA', 'Wisconsin', '{\"Population\": 89447}'),
(4063, 'Elgin', 'USA', 'Illinois', '{\"Population\": 89408}'),
(4064, 'Odessa', 'USA', 'Texas', '{\"Population\": 89293}'),
(4065, 'Carson', 'USA', 'California', '{\"Population\": 89089}'),
(4066, 'Charleston', 'USA', 'South Carolina', '{\"Population\": 89063}'),
(4067, 'Charlotte Amalie', 'VIR', 'St Thomas', '{\"Population\": 13000}'),
(4068, 'Harare', 'ZWE', 'Harare', '{\"Population\": 1410000}'),
(4069, 'Bulawayo', 'ZWE', 'Bulawayo', '{\"Population\": 621742}'),
(4070, 'Chitungwiza', 'ZWE', 'Harare', '{\"Population\": 274912}'),
(4071, 'Mount Darwin', 'ZWE', 'Harare', '{\"Population\": 164362}'),
(4072, 'Mutare', 'ZWE', 'Manicaland', '{\"Population\": 131367}'),
(4073, 'Gweru', 'ZWE', 'Midlands', '{\"Population\": 128037}'),
(4074, 'Gaza', 'PSE', 'Gaza', '{\"Population\": 353632}'),
(4075, 'Khan Yunis', 'PSE', 'Khan Yunis', '{\"Population\": 123175}'),
(4076, 'Hebron', 'PSE', 'Hebron', '{\"Population\": 119401}'),
(4077, 'Jabaliya', 'PSE', 'North Gaza', '{\"Population\": 113901}'),
(4078, 'Nablus', 'PSE', 'Nablus', '{\"Population\": 100231}'),
(4079, 'Rafah', 'PSE', 'Rafah', '{\"Population\": 92020}');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `Code` char(3) NOT NULL DEFAULT '',
  `Name` char(52) NOT NULL DEFAULT '',
  `Capital` int(11) DEFAULT NULL,
  `Code2` char(2) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`Code`, `Name`, `Capital`, `Code2`) VALUES
('ABW', 'Aruba', 129, 'AW'),
('AFG', 'Afghanistan', 1, 'AF'),
('AGO', 'Angola', 56, 'AO'),
('AIA', 'Anguilla', 62, 'AI'),
('ALB', 'Albania', 34, 'AL'),
('AND', 'Andorra', 55, 'AD'),
('ANT', 'Netherlands Antilles', 33, 'AN'),
('ARE', 'United Arab Emirates', 65, 'AE'),
('ARG', 'Argentina', 69, 'AR'),
('ARM', 'Armenia', 126, 'AM'),
('ASM', 'American Samoa', 54, 'AS'),
('ATA', 'Antarctica', NULL, 'AQ'),
('ATF', 'French Southern territories', NULL, 'TF'),
('ATG', 'Antigua and Barbuda', 63, 'AG'),
('AUS', 'Australia', 135, 'AU'),
('AUT', 'Austria', 1523, 'AT'),
('AZE', 'Azerbaijan', 144, 'AZ'),
('BDI', 'Burundi', 552, 'BI'),
('BEL', 'Belgium', 179, 'BE'),
('BEN', 'Benin', 187, 'BJ'),
('BFA', 'Burkina Faso', 549, 'BF'),
('BGD', 'Bangladesh', 150, 'BD'),
('BGR', 'Bulgaria', 539, 'BG'),
('BHR', 'Bahrain', 149, 'BH'),
('BHS', 'Bahamas', 148, 'BS'),
('BIH', 'Bosnia and Herzegovina', 201, 'BA'),
('BLR', 'Belarus', 3520, 'BY'),
('BLZ', 'Belize', 185, 'BZ'),
('BMU', 'Bermuda', 191, 'BM'),
('BOL', 'Bolivia', 194, 'BO'),
('BRA', 'Brazil', 211, 'BR'),
('BRB', 'Barbados', 174, 'BB'),
('BRN', 'Brunei', 538, 'BN'),
('BTN', 'Bhutan', 192, 'BT'),
('BVT', 'Bouvet Island', NULL, 'BV'),
('BWA', 'Botswana', 204, 'BW'),
('CAF', 'Central African Republic', 1889, 'CF'),
('CAN', 'Canada', 1822, 'CA'),
('CCK', 'Cocos (Keeling) Islands', 2317, 'CC'),
('CHE', 'Switzerland', 3248, 'CH'),
('CHL', 'Chile', 554, 'CL'),
('CHN', 'China', 1891, 'CN'),
('CIV', 'Côte dIvoire', 2814, 'CI'),
('CMR', 'Cameroon', 1804, 'CM'),
('COD', 'Congo, The Democratic Republic of the', 2298, 'CD'),
('COG', 'Congo', 2296, 'CG'),
('COK', 'Cook Islands', 583, 'CK'),
('COL', 'Colombia', 2257, 'CO'),
('COM', 'Comoros', 2295, 'KM'),
('CPV', 'Cape Verde', 1859, 'CV'),
('CRI', 'Costa Rica', 584, 'CR'),
('CUB', 'Cuba', 2413, 'CU'),
('CXR', 'Christmas Island', 1791, 'CX'),
('CYM', 'Cayman Islands', 553, 'KY'),
('CYP', 'Cyprus', 2430, 'CY'),
('CZE', 'Czech Republic', 3339, 'CZ'),
('DEU', 'Germany', 3068, 'DE'),
('DJI', 'Djibouti', 585, 'DJ'),
('DMA', 'Dominica', 586, 'DM'),
('DNK', 'Denmark', 3315, 'DK'),
('DOM', 'Dominican Republic', 587, 'DO'),
('DZA', 'Algeria', 35, 'DZ'),
('ECU', 'Ecuador', 594, 'EC'),
('EGY', 'Egypt', 608, 'EG'),
('ERI', 'Eritrea', 652, 'ER'),
('ESH', 'Western Sahara', 2453, 'EH'),
('ESP', 'Spain', 653, 'ES'),
('EST', 'Estonia', 3791, 'EE'),
('ETH', 'Ethiopia', 756, 'ET'),
('FIN', 'Finland', 3236, 'FI'),
('FJI', 'Fiji Islands', 764, 'FJ'),
('FLK', 'Falkland Islands', 763, 'FK'),
('FRA', 'France', 2974, 'FR'),
('FRO', 'Faroe Islands', 901, 'FO'),
('FSM', 'Micronesia, Federated States of', 2689, 'FM'),
('GAB', 'Gabon', 902, 'GA'),
('GBR', 'United Kingdom', 456, 'GB'),
('GEO', 'Georgia', 905, 'GE'),
('GHA', 'Ghana', 910, 'GH'),
('GIB', 'Gibraltar', 915, 'GI'),
('GIN', 'Guinea', 926, 'GN'),
('GLP', 'Guadeloupe', 919, 'GP'),
('GMB', 'Gambia', 904, 'GM'),
('GNB', 'Guinea-Bissau', 927, 'GW'),
('GNQ', 'Equatorial Guinea', 2972, 'GQ'),
('GRC', 'Greece', 2401, 'GR'),
('GRD', 'Grenada', 916, 'GD'),
('GRL', 'Greenland', 917, 'GL'),
('GTM', 'Guatemala', 922, 'GT'),
('GUF', 'French Guiana', 3014, 'GF'),
('GUM', 'Guam', 921, 'GU'),
('GUY', 'Guyana', 928, 'GY'),
('HKG', 'Hong Kong', 937, 'HK'),
('HMD', 'Heard Island and McDonald Islands', NULL, 'HM'),
('HND', 'Honduras', 933, 'HN'),
('HRV', 'Croatia', 2409, 'HR'),
('HTI', 'Haiti', 929, 'HT'),
('HUN', 'Hungary', 3483, 'HU'),
('IDN', 'Indonesia', 939, 'ID'),
('IND', 'India', 1109, 'IN'),
('IOT', 'British Indian Ocean Territory', NULL, 'IO'),
('IRL', 'Ireland', 1447, 'IE'),
('IRN', 'Iran', 1380, 'IR'),
('IRQ', 'Iraq', 1365, 'IQ'),
('ISL', 'Iceland', 1449, 'IS'),
('ISR', 'Israel', 1450, 'IL'),
('ITA', 'Italy', 1464, 'IT'),
('JAM', 'Jamaica', 1530, 'JM'),
('JOR', 'Jordan', 1786, 'JO'),
('JPN', 'Japan', 1532, 'JP'),
('KAZ', 'Kazakstan', 1864, 'KZ'),
('KEN', 'Kenya', 1881, 'KE'),
('KGZ', 'Kyrgyzstan', 2253, 'KG'),
('KHM', 'Cambodia', 1800, 'KH'),
('KIR', 'Kiribati', 2256, 'KI'),
('KNA', 'Saint Kitts and Nevis', 3064, 'KN'),
('KOR', 'South Korea', 2331, 'KR'),
('KWT', 'Kuwait', 2429, 'KW'),
('LAO', 'Laos', 2432, 'LA'),
('LBN', 'Lebanon', 2438, 'LB'),
('LBR', 'Liberia', 2440, 'LR'),
('LBY', 'Libyan Arab Jamahiriya', 2441, 'LY'),
('LCA', 'Saint Lucia', 3065, 'LC'),
('LIE', 'Liechtenstein', 2446, 'LI'),
('LKA', 'Sri Lanka', 3217, 'LK'),
('LSO', 'Lesotho', 2437, 'LS'),
('LTU', 'Lithuania', 2447, 'LT'),
('LUX', 'Luxembourg', 2452, 'LU'),
('LVA', 'Latvia', 2434, 'LV'),
('MAC', 'Macao', 2454, 'MO'),
('MAR', 'Morocco', 2486, 'MA'),
('MCO', 'Monaco', 2695, 'MC'),
('MDA', 'Moldova', 2690, 'MD'),
('MDG', 'Madagascar', 2455, 'MG'),
('MDV', 'Maldives', 2463, 'MV'),
('MEX', 'Mexico', 2515, 'MX'),
('MHL', 'Marshall Islands', 2507, 'MH'),
('MKD', 'Macedonia', 2460, 'MK'),
('MLI', 'Mali', 2482, 'ML'),
('MLT', 'Malta', 2484, 'MT'),
('MMR', 'Myanmar', 2710, 'MM'),
('MNG', 'Mongolia', 2696, 'MN'),
('MNP', 'Northern Mariana Islands', 2913, 'MP'),
('MOZ', 'Mozambique', 2698, 'MZ'),
('MRT', 'Mauritania', 2509, 'MR'),
('MSR', 'Montserrat', 2697, 'MS'),
('MTQ', 'Martinique', 2508, 'MQ'),
('MUS', 'Mauritius', 2511, 'MU'),
('MWI', 'Malawi', 2462, 'MW'),
('MYS', 'Malaysia', 2464, 'MY'),
('MYT', 'Mayotte', 2514, 'YT'),
('NAM', 'Namibia', 2726, 'NA'),
('NCL', 'New Caledonia', 3493, 'NC'),
('NER', 'Niger', 2738, 'NE'),
('NFK', 'Norfolk Island', 2806, 'NF'),
('NGA', 'Nigeria', 2754, 'NG'),
('NIC', 'Nicaragua', 2734, 'NI'),
('NIU', 'Niue', 2805, 'NU'),
('NLD', 'Netherlands', 5, 'NL'),
('NOR', 'Norway', 2807, 'NO'),
('NPL', 'Nepal', 2729, 'NP'),
('NRU', 'Nauru', 2728, 'NR'),
('NZL', 'New Zealand', 3499, 'NZ'),
('OMN', 'Oman', 2821, 'OM'),
('PAK', 'Pakistan', 2831, 'PK'),
('PAN', 'Panama', 2882, 'PA'),
('PCN', 'Pitcairn', 2912, 'PN'),
('PER', 'Peru', 2890, 'PE'),
('PHL', 'Philippines', 766, 'PH'),
('PLW', 'Palau', 2881, 'PW'),
('PNG', 'Papua New Guinea', 2884, 'PG'),
('POL', 'Poland', 2928, 'PL'),
('PRI', 'Puerto Rico', 2919, 'PR'),
('PRK', 'North Korea', 2318, 'KP'),
('PRT', 'Portugal', 2914, 'PT'),
('PRY', 'Paraguay', 2885, 'PY'),
('PSE', 'Palestine', 4074, 'PS'),
('PYF', 'French Polynesia', 3016, 'PF'),
('QAT', 'Qatar', 2973, 'QA'),
('REU', 'Réunion', 3017, 'RE'),
('ROM', 'Romania', 3018, 'RO'),
('RUS', 'Russian Federation', 3580, 'RU'),
('RWA', 'Rwanda', 3047, 'RW'),
('SAU', 'Saudi Arabia', 3173, 'SA'),
('SDN', 'Sudan', 3225, 'SD'),
('SEN', 'Senegal', 3198, 'SN'),
('SGP', 'Singapore', 3208, 'SG'),
('SGS', 'South Georgia and the South Sandwich Islands', NULL, 'GS'),
('SHN', 'Saint Helena', 3063, 'SH'),
('SJM', 'Svalbard and Jan Mayen', 938, 'SJ'),
('SLB', 'Solomon Islands', 3161, 'SB'),
('SLE', 'Sierra Leone', 3207, 'SL'),
('SLV', 'El Salvador', 645, 'SV'),
('SMR', 'San Marino', 3171, 'SM'),
('SOM', 'Somalia', 3214, 'SO'),
('SPM', 'Saint Pierre and Miquelon', 3067, 'PM'),
('STP', 'Sao Tome and Principe', 3172, 'ST'),
('SUR', 'Suriname', 3243, 'SR'),
('SVK', 'Slovakia', 3209, 'SK'),
('SVN', 'Slovenia', 3212, 'SI'),
('SWE', 'Sweden', 3048, 'SE'),
('SWZ', 'Swaziland', 3244, 'SZ'),
('SYC', 'Seychelles', 3206, 'SC'),
('SYR', 'Syria', 3250, 'SY'),
('TCA', 'Turks and Caicos Islands', 3423, 'TC'),
('TCD', 'Chad', 3337, 'TD'),
('TGO', 'Togo', 3332, 'TG'),
('THA', 'Thailand', 3320, 'TH'),
('TJK', 'Tajikistan', 3261, 'TJ'),
('TKL', 'Tokelau', 3333, 'TK'),
('TKM', 'Turkmenistan', 3419, 'TM'),
('TMP', 'East Timor', 1522, 'TP'),
('TON', 'Tonga', 3334, 'TO'),
('TTO', 'Trinidad and Tobago', 3336, 'TT'),
('TUN', 'Tunisia', 3349, 'TN'),
('TUR', 'Turkey', 3358, 'TR'),
('TUV', 'Tuvalu', 3424, 'TV'),
('TWN', 'Taiwan', 3263, 'TW'),
('TZA', 'Tanzania', 3306, 'TZ'),
('UGA', 'Uganda', 3425, 'UG'),
('UKR', 'Ukraine', 3426, 'UA'),
('UMI', 'United States Minor Outlying Islands', NULL, 'UM'),
('URY', 'Uruguay', 3492, 'UY'),
('USA', 'United States', 3813, 'US'),
('UZB', 'Uzbekistan', 3503, 'UZ'),
('VAT', 'Holy See (Vatican City State)', 3538, 'VA'),
('VCT', 'Saint Vincent and the Grenadines', 3066, 'VC'),
('VEN', 'Venezuela', 3539, 'VE'),
('VGB', 'Virgin Islands, British', 537, 'VG'),
('VIR', 'Virgin Islands, U.S.', 4067, 'VI'),
('VNM', 'Vietnam', 3770, 'VN'),
('VUT', 'Vanuatu', 3537, 'VU'),
('WLF', 'Wallis and Futuna', 3536, 'WF'),
('WSM', 'Samoa', 3169, 'WS'),
('YEM', 'Yemen', 1780, 'YE'),
('YUG', 'Yugoslavia', 1792, 'YU'),
('ZAF', 'South Africa', 716, 'ZA'),
('ZMB', 'Zambia', 3162, 'ZM'),
('ZWE', 'Zimbabwe', 4068, 'ZW');

-- --------------------------------------------------------

--
-- Table structure for table `countrylanguage`
--

CREATE TABLE `countrylanguage` (
  `CountryCode` char(3) NOT NULL DEFAULT '',
  `Language` char(30) NOT NULL DEFAULT '',
  `IsOfficial` enum('T','F') NOT NULL DEFAULT 'F',
  `Percentage` decimal(4,1) NOT NULL DEFAULT 0.0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `countrylanguage`
--

INSERT INTO `countrylanguage` (`CountryCode`, `Language`, `IsOfficial`, `Percentage`) VALUES
('ABW', 'Dutch', 'T', '5.3'),
('ABW', 'English', 'F', '9.5'),
('ABW', 'Papiamento', 'F', '76.7'),
('ABW', 'Spanish', 'F', '7.4'),
('AFG', 'Balochi', 'F', '0.9'),
('AFG', 'Dari', 'T', '32.1'),
('AFG', 'Pashto', 'T', '52.4'),
('AFG', 'Turkmenian', 'F', '1.9'),
('AFG', 'Uzbek', 'F', '8.8'),
('AGO', 'Ambo', 'F', '2.4'),
('AGO', 'Chokwe', 'F', '4.2'),
('AGO', 'Kongo', 'F', '13.2'),
('AGO', 'Luchazi', 'F', '2.4'),
('AGO', 'Luimbe-nganguela', 'F', '5.4'),
('AGO', 'Luvale', 'F', '3.6'),
('AGO', 'Mbundu', 'F', '21.6'),
('AGO', 'Nyaneka-nkhumbi', 'F', '5.4'),
('AGO', 'Ovimbundu', 'F', '37.2'),
('AIA', 'English', 'T', '0.0'),
('ALB', 'Albaniana', 'T', '97.9'),
('ALB', 'Greek', 'F', '1.8'),
('ALB', 'Macedonian', 'F', '0.1'),
('AND', 'Catalan', 'T', '32.3'),
('AND', 'French', 'F', '6.2'),
('AND', 'Portuguese', 'F', '10.8'),
('AND', 'Spanish', 'F', '44.6'),
('ANT', 'Dutch', 'T', '0.0'),
('ANT', 'English', 'F', '7.8'),
('ANT', 'Papiamento', 'T', '86.2'),
('ARE', 'Arabic', 'T', '42.0'),
('ARE', 'Hindi', 'F', '0.0'),
('ARG', 'Indian Languages', 'F', '0.3'),
('ARG', 'Italian', 'F', '1.7'),
('ARG', 'Spanish', 'T', '96.8'),
('ARM', 'Armenian', 'T', '93.4'),
('ARM', 'Azerbaijani', 'F', '2.6'),
('ASM', 'English', 'T', '3.1'),
('ASM', 'Samoan', 'T', '90.6'),
('ASM', 'Tongan', 'F', '3.1'),
('ATG', 'Creole English', 'F', '95.7'),
('ATG', 'English', 'T', '0.0'),
('AUS', 'Arabic', 'F', '1.0'),
('AUS', 'Canton Chinese', 'F', '1.1'),
('AUS', 'English', 'T', '81.2'),
('AUS', 'German', 'F', '0.6'),
('AUS', 'Greek', 'F', '1.6'),
('AUS', 'Italian', 'F', '2.2'),
('AUS', 'Serbo-Croatian', 'F', '0.6'),
('AUS', 'Vietnamese', 'F', '0.8'),
('AUT', 'Czech', 'F', '0.2'),
('AUT', 'German', 'T', '92.0'),
('AUT', 'Hungarian', 'F', '0.4'),
('AUT', 'Polish', 'F', '0.2'),
('AUT', 'Romanian', 'F', '0.2'),
('AUT', 'Serbo-Croatian', 'F', '2.2'),
('AUT', 'Slovene', 'F', '0.4'),
('AUT', 'Turkish', 'F', '1.5'),
('AZE', 'Armenian', 'F', '2.0'),
('AZE', 'Azerbaijani', 'T', '89.0'),
('AZE', 'Lezgian', 'F', '2.3'),
('AZE', 'Russian', 'F', '3.0'),
('BDI', 'French', 'T', '0.0'),
('BDI', 'Kirundi', 'T', '98.1'),
('BDI', 'Swahili', 'F', '0.0'),
('BEL', 'Arabic', 'F', '1.6'),
('BEL', 'Dutch', 'T', '59.2'),
('BEL', 'French', 'T', '32.6'),
('BEL', 'German', 'T', '1.0'),
('BEL', 'Italian', 'F', '2.4'),
('BEL', 'Turkish', 'F', '0.9'),
('BEN', 'Adja', 'F', '11.1'),
('BEN', 'Aizo', 'F', '8.7'),
('BEN', 'Bariba', 'F', '8.7'),
('BEN', 'Fon', 'F', '39.8'),
('BEN', 'Ful', 'F', '5.6'),
('BEN', 'Joruba', 'F', '12.2'),
('BEN', 'Somba', 'F', '6.7'),
('BFA', 'Busansi', 'F', '3.5'),
('BFA', 'Dagara', 'F', '3.1'),
('BFA', 'Dyula', 'F', '2.6'),
('BFA', 'Ful', 'F', '9.7'),
('BFA', 'Gurma', 'F', '5.7'),
('BFA', 'Mossi', 'F', '50.2'),
('BGD', 'Bengali', 'T', '97.7'),
('BGD', 'Chakma', 'F', '0.4'),
('BGD', 'Garo', 'F', '0.1'),
('BGD', 'Khasi', 'F', '0.1'),
('BGD', 'Marma', 'F', '0.2'),
('BGD', 'Santhali', 'F', '0.1'),
('BGD', 'Tripuri', 'F', '0.1'),
('BGR', 'Bulgariana', 'T', '83.2'),
('BGR', 'Macedonian', 'F', '2.6'),
('BGR', 'Romani', 'F', '3.7'),
('BGR', 'Turkish', 'F', '9.4'),
('BHR', 'Arabic', 'T', '67.7'),
('BHR', 'English', 'F', '0.0'),
('BHS', 'Creole English', 'F', '89.7'),
('BHS', 'Creole French', 'F', '10.3'),
('BIH', 'Serbo-Croatian', 'T', '99.2'),
('BLR', 'Belorussian', 'T', '65.6'),
('BLR', 'Polish', 'F', '0.6'),
('BLR', 'Russian', 'T', '32.0'),
('BLR', 'Ukrainian', 'F', '1.3'),
('BLZ', 'English', 'T', '50.8'),
('BLZ', 'Garifuna', 'F', '6.8'),
('BLZ', 'Maya Languages', 'F', '9.6'),
('BLZ', 'Spanish', 'F', '31.6'),
('BMU', 'English', 'T', '100.0'),
('BOL', 'Aimará', 'T', '3.2'),
('BOL', 'Guaraní', 'F', '0.1'),
('BOL', 'Ketšua', 'T', '8.1'),
('BOL', 'Spanish', 'T', '87.7'),
('BRA', 'German', 'F', '0.5'),
('BRA', 'Indian Languages', 'F', '0.2'),
('BRA', 'Italian', 'F', '0.4'),
('BRA', 'Japanese', 'F', '0.4'),
('BRA', 'Portuguese', 'T', '97.5'),
('BRB', 'Bajan', 'F', '95.1'),
('BRB', 'English', 'T', '0.0'),
('BRN', 'Chinese', 'F', '9.3'),
('BRN', 'English', 'F', '3.1'),
('BRN', 'Malay', 'T', '45.5'),
('BRN', 'Malay-English', 'F', '28.8'),
('BTN', 'Asami', 'F', '15.2'),
('BTN', 'Dzongkha', 'T', '50.0'),
('BTN', 'Nepali', 'F', '34.8'),
('BWA', 'Khoekhoe', 'F', '2.5'),
('BWA', 'Ndebele', 'F', '1.3'),
('BWA', 'San', 'F', '3.5'),
('BWA', 'Shona', 'F', '12.3'),
('BWA', 'Tswana', 'F', '75.5'),
('CAF', 'Banda', 'F', '23.5'),
('CAF', 'Gbaya', 'F', '23.8'),
('CAF', 'Mandjia', 'F', '14.8'),
('CAF', 'Mbum', 'F', '6.4'),
('CAF', 'Ngbaka', 'F', '7.5'),
('CAF', 'Sara', 'F', '6.4'),
('CAN', 'Chinese', 'F', '2.5'),
('CAN', 'Dutch', 'F', '0.5'),
('CAN', 'English', 'T', '60.4'),
('CAN', 'Eskimo Languages', 'F', '0.1'),
('CAN', 'French', 'T', '23.4'),
('CAN', 'German', 'F', '1.6'),
('CAN', 'Italian', 'F', '1.7'),
('CAN', 'Polish', 'F', '0.7'),
('CAN', 'Portuguese', 'F', '0.7'),
('CAN', 'Punjabi', 'F', '0.7'),
('CAN', 'Spanish', 'F', '0.7'),
('CAN', 'Ukrainian', 'F', '0.6'),
('CCK', 'English', 'T', '0.0'),
('CCK', 'Malay', 'F', '0.0'),
('CHE', 'French', 'T', '19.2'),
('CHE', 'German', 'T', '63.6'),
('CHE', 'Italian', 'T', '7.7'),
('CHE', 'Romansh', 'T', '0.6'),
('CHL', 'Aimará', 'F', '0.5'),
('CHL', 'Araucan', 'F', '9.6'),
('CHL', 'Rapa nui', 'F', '0.2'),
('CHL', 'Spanish', 'T', '89.7'),
('CHN', 'Chinese', 'T', '92.0'),
('CHN', 'Dong', 'F', '0.2'),
('CHN', 'Hui', 'F', '0.8'),
('CHN', 'Mantšu', 'F', '0.9'),
('CHN', 'Miao', 'F', '0.7'),
('CHN', 'Mongolian', 'F', '0.4'),
('CHN', 'Puyi', 'F', '0.2'),
('CHN', 'Tibetan', 'F', '0.4'),
('CHN', 'Tujia', 'F', '0.5'),
('CHN', 'Uighur', 'F', '0.6'),
('CHN', 'Yi', 'F', '0.6'),
('CHN', 'Zhuang', 'F', '1.4'),
('CIV', 'Akan', 'F', '30.0'),
('CIV', 'Gur', 'F', '11.7'),
('CIV', 'Kru', 'F', '10.5'),
('CIV', 'Malinke', 'F', '11.4'),
('CIV', '[South]Mande', 'F', '7.7'),
('CMR', 'Bamileke-bamum', 'F', '18.6'),
('CMR', 'Duala', 'F', '10.9'),
('CMR', 'Fang', 'F', '19.7'),
('CMR', 'Ful', 'F', '9.6'),
('CMR', 'Maka', 'F', '4.9'),
('CMR', 'Mandara', 'F', '5.7'),
('CMR', 'Masana', 'F', '3.9'),
('CMR', 'Tikar', 'F', '7.4'),
('COD', 'Boa', 'F', '2.3'),
('COD', 'Chokwe', 'F', '1.8'),
('COD', 'Kongo', 'F', '16.0'),
('COD', 'Luba', 'F', '18.0'),
('COD', 'Mongo', 'F', '13.5'),
('COD', 'Ngala and Bangi', 'F', '5.8'),
('COD', 'Rundi', 'F', '3.8'),
('COD', 'Rwanda', 'F', '10.3'),
('COD', 'Teke', 'F', '2.7'),
('COD', 'Zande', 'F', '6.1'),
('COG', 'Kongo', 'F', '51.5'),
('COG', 'Mbete', 'F', '4.8'),
('COG', 'Mboshi', 'F', '11.4'),
('COG', 'Punu', 'F', '2.9'),
('COG', 'Sango', 'F', '2.6'),
('COG', 'Teke', 'F', '17.3'),
('COK', 'English', 'F', '0.0'),
('COK', 'Maori', 'T', '0.0'),
('COL', 'Arawakan', 'F', '0.1'),
('COL', 'Caribbean', 'F', '0.1'),
('COL', 'Chibcha', 'F', '0.4'),
('COL', 'Creole English', 'F', '0.1'),
('COL', 'Spanish', 'T', '99.0'),
('COM', 'Comorian', 'T', '75.0'),
('COM', 'Comorian-Arabic', 'F', '1.6'),
('COM', 'Comorian-French', 'F', '12.9'),
('COM', 'Comorian-madagassi', 'F', '5.5'),
('COM', 'Comorian-Swahili', 'F', '0.5'),
('CPV', 'Crioulo', 'F', '100.0'),
('CPV', 'Portuguese', 'T', '0.0'),
('CRI', 'Chibcha', 'F', '0.3'),
('CRI', 'Chinese', 'F', '0.2'),
('CRI', 'Creole English', 'F', '2.0'),
('CRI', 'Spanish', 'T', '97.5'),
('CUB', 'Spanish', 'T', '100.0'),
('CXR', 'Chinese', 'F', '0.0'),
('CXR', 'English', 'T', '0.0'),
('CYM', 'English', 'T', '0.0'),
('CYP', 'Greek', 'T', '74.1'),
('CYP', 'Turkish', 'T', '22.4'),
('CZE', 'Czech', 'T', '81.2'),
('CZE', 'German', 'F', '0.5'),
('CZE', 'Hungarian', 'F', '0.2'),
('CZE', 'Moravian', 'F', '12.9'),
('CZE', 'Polish', 'F', '0.6'),
('CZE', 'Romani', 'F', '0.3'),
('CZE', 'Silesiana', 'F', '0.4'),
('CZE', 'Slovak', 'F', '3.1'),
('DEU', 'German', 'T', '91.3'),
('DEU', 'Greek', 'F', '0.4'),
('DEU', 'Italian', 'F', '0.7'),
('DEU', 'Polish', 'F', '0.3'),
('DEU', 'Southern Slavic Languages', 'F', '1.4'),
('DEU', 'Turkish', 'F', '2.6'),
('DJI', 'Afar', 'F', '34.8'),
('DJI', 'Arabic', 'T', '10.6'),
('DJI', 'Somali', 'F', '43.9'),
('DMA', 'Creole English', 'F', '100.0'),
('DMA', 'Creole French', 'F', '0.0'),
('DNK', 'Arabic', 'F', '0.7'),
('DNK', 'Danish', 'T', '93.5'),
('DNK', 'English', 'F', '0.3'),
('DNK', 'German', 'F', '0.5'),
('DNK', 'Norwegian', 'F', '0.3'),
('DNK', 'Swedish', 'F', '0.3'),
('DNK', 'Turkish', 'F', '0.8'),
('DOM', 'Creole French', 'F', '2.0'),
('DOM', 'Spanish', 'T', '98.0'),
('DZA', 'Arabic', 'T', '86.0'),
('DZA', 'Berberi', 'F', '14.0'),
('ECU', 'Ketšua', 'F', '7.0'),
('ECU', 'Spanish', 'T', '93.0'),
('EGY', 'Arabic', 'T', '98.8'),
('EGY', 'Sinaberberi', 'F', '0.0'),
('ERI', 'Afar', 'F', '4.3'),
('ERI', 'Bilin', 'F', '3.0'),
('ERI', 'Hadareb', 'F', '3.8'),
('ERI', 'Saho', 'F', '3.0'),
('ERI', 'Tigre', 'F', '31.7'),
('ERI', 'Tigrinja', 'T', '49.1'),
('ESH', 'Arabic', 'T', '100.0'),
('ESP', 'Basque', 'F', '1.6'),
('ESP', 'Catalan', 'F', '16.9'),
('ESP', 'Galecian', 'F', '6.4'),
('ESP', 'Spanish', 'T', '74.4'),
('EST', 'Belorussian', 'F', '1.4'),
('EST', 'Estonian', 'T', '65.3'),
('EST', 'Finnish', 'F', '0.7'),
('EST', 'Russian', 'F', '27.8'),
('EST', 'Ukrainian', 'F', '2.8'),
('ETH', 'Amhara', 'F', '30.0'),
('ETH', 'Gurage', 'F', '4.7'),
('ETH', 'Oromo', 'F', '31.0'),
('ETH', 'Sidamo', 'F', '3.2'),
('ETH', 'Somali', 'F', '4.1'),
('ETH', 'Tigrinja', 'F', '7.2'),
('ETH', 'Walaita', 'F', '2.8'),
('FIN', 'Estonian', 'F', '0.2'),
('FIN', 'Finnish', 'T', '92.7'),
('FIN', 'Russian', 'F', '0.4'),
('FIN', 'Saame', 'F', '0.0'),
('FIN', 'Swedish', 'T', '5.7'),
('FJI', 'Fijian', 'T', '50.8'),
('FJI', 'Hindi', 'F', '43.7'),
('FLK', 'English', 'T', '0.0'),
('FRA', 'Arabic', 'F', '2.5'),
('FRA', 'French', 'T', '93.6'),
('FRA', 'Italian', 'F', '0.4'),
('FRA', 'Portuguese', 'F', '1.2'),
('FRA', 'Spanish', 'F', '0.4'),
('FRA', 'Turkish', 'F', '0.4'),
('FRO', 'Danish', 'T', '0.0'),
('FRO', 'Faroese', 'T', '100.0'),
('FSM', 'Kosrean', 'F', '7.3'),
('FSM', 'Mortlock', 'F', '7.6'),
('FSM', 'Pohnpei', 'F', '23.8'),
('FSM', 'Trukese', 'F', '41.6'),
('FSM', 'Wolea', 'F', '3.7'),
('FSM', 'Yap', 'F', '5.8'),
('GAB', 'Fang', 'F', '35.8'),
('GAB', 'Mbete', 'F', '13.8'),
('GAB', 'Mpongwe', 'F', '14.6'),
('GAB', 'Punu-sira-nzebi', 'F', '17.1'),
('GBR', 'English', 'T', '97.3'),
('GBR', 'Gaeli', 'F', '0.1'),
('GBR', 'Kymri', 'F', '0.9'),
('GEO', 'Abhyasi', 'F', '1.7'),
('GEO', 'Armenian', 'F', '6.8'),
('GEO', 'Azerbaijani', 'F', '5.5'),
('GEO', 'Georgiana', 'T', '71.7'),
('GEO', 'Osseetti', 'F', '2.4'),
('GEO', 'Russian', 'F', '8.8'),
('GHA', 'Akan', 'F', '52.4'),
('GHA', 'Ewe', 'F', '11.9'),
('GHA', 'Ga-adangme', 'F', '7.8'),
('GHA', 'Gurma', 'F', '3.3'),
('GHA', 'Joruba', 'F', '1.3'),
('GHA', 'Mossi', 'F', '15.8'),
('GIB', 'Arabic', 'F', '7.4'),
('GIB', 'English', 'T', '88.9'),
('GIN', 'Ful', 'F', '38.6'),
('GIN', 'Kissi', 'F', '6.0'),
('GIN', 'Kpelle', 'F', '4.6'),
('GIN', 'Loma', 'F', '2.3'),
('GIN', 'Malinke', 'F', '23.2'),
('GIN', 'Susu', 'F', '11.0'),
('GIN', 'Yalunka', 'F', '2.9'),
('GLP', 'Creole French', 'F', '95.0'),
('GLP', 'French', 'T', '0.0'),
('GMB', 'Diola', 'F', '9.2'),
('GMB', 'Ful', 'F', '16.2'),
('GMB', 'Malinke', 'F', '34.1'),
('GMB', 'Soninke', 'F', '7.6'),
('GMB', 'Wolof', 'F', '12.6'),
('GNB', 'Balante', 'F', '14.6'),
('GNB', 'Crioulo', 'F', '36.4'),
('GNB', 'Ful', 'F', '16.6'),
('GNB', 'Malinke', 'F', '6.9'),
('GNB', 'Mandyako', 'F', '4.9'),
('GNB', 'Portuguese', 'T', '8.1'),
('GNQ', 'Bubi', 'F', '8.7'),
('GNQ', 'Fang', 'F', '84.8'),
('GRC', 'Greek', 'T', '98.5'),
('GRC', 'Turkish', 'F', '0.9'),
('GRD', 'Creole English', 'F', '100.0'),
('GRL', 'Danish', 'T', '12.5'),
('GRL', 'Greenlandic', 'T', '87.5'),
('GTM', 'Cakchiquel', 'F', '8.9'),
('GTM', 'Kekchí', 'F', '4.9'),
('GTM', 'Mam', 'F', '2.7'),
('GTM', 'Quiché', 'F', '10.1'),
('GTM', 'Spanish', 'T', '64.7'),
('GUF', 'Creole French', 'F', '94.3'),
('GUF', 'Indian Languages', 'F', '1.9'),
('GUM', 'Chamorro', 'T', '29.6'),
('GUM', 'English', 'T', '37.5'),
('GUM', 'Japanese', 'F', '2.0'),
('GUM', 'Korean', 'F', '3.3'),
('GUM', 'Philippene Languages', 'F', '19.7'),
('GUY', 'Arawakan', 'F', '1.4'),
('GUY', 'Caribbean', 'F', '2.2'),
('GUY', 'Creole English', 'F', '96.4'),
('HKG', 'Canton Chinese', 'F', '88.7'),
('HKG', 'Chiu chau', 'F', '1.4'),
('HKG', 'English', 'T', '2.2'),
('HKG', 'Fukien', 'F', '1.9'),
('HKG', 'Hakka', 'F', '1.6'),
('HND', 'Creole English', 'F', '0.2'),
('HND', 'Garifuna', 'F', '1.3'),
('HND', 'Miskito', 'F', '0.2'),
('HND', 'Spanish', 'T', '97.2'),
('HRV', 'Serbo-Croatian', 'T', '95.9'),
('HRV', 'Slovene', 'F', '0.0'),
('HTI', 'French', 'T', '0.0'),
('HTI', 'Haiti Creole', 'F', '100.0'),
('HUN', 'German', 'F', '0.4'),
('HUN', 'Hungarian', 'T', '98.5'),
('HUN', 'Romani', 'F', '0.5'),
('HUN', 'Romanian', 'F', '0.1'),
('HUN', 'Serbo-Croatian', 'F', '0.2'),
('HUN', 'Slovak', 'F', '0.1'),
('IDN', 'Bali', 'F', '1.7'),
('IDN', 'Banja', 'F', '1.8'),
('IDN', 'Batakki', 'F', '2.2'),
('IDN', 'Bugi', 'F', '2.2'),
('IDN', 'Javanese', 'F', '39.4'),
('IDN', 'Madura', 'F', '4.3'),
('IDN', 'Malay', 'T', '12.1'),
('IDN', 'Minangkabau', 'F', '2.4'),
('IDN', 'Sunda', 'F', '15.8'),
('IND', 'Asami', 'F', '1.5'),
('IND', 'Bengali', 'F', '8.2'),
('IND', 'Gujarati', 'F', '4.8'),
('IND', 'Hindi', 'T', '39.9'),
('IND', 'Kannada', 'F', '3.9'),
('IND', 'Malajalam', 'F', '3.6'),
('IND', 'Marathi', 'F', '7.4'),
('IND', 'Orija', 'F', '3.3'),
('IND', 'Punjabi', 'F', '2.8'),
('IND', 'Tamil', 'F', '6.3'),
('IND', 'Telugu', 'F', '7.8'),
('IND', 'Urdu', 'F', '5.1'),
('IRL', 'English', 'T', '98.4'),
('IRL', 'Irish', 'T', '1.6'),
('IRN', 'Arabic', 'F', '2.2'),
('IRN', 'Azerbaijani', 'F', '16.8'),
('IRN', 'Bakhtyari', 'F', '1.7'),
('IRN', 'Balochi', 'F', '2.3'),
('IRN', 'Gilaki', 'F', '5.3'),
('IRN', 'Kurdish', 'F', '9.1'),
('IRN', 'Luri', 'F', '4.3'),
('IRN', 'Mazandarani', 'F', '3.6'),
('IRN', 'Persian', 'T', '45.7'),
('IRN', 'Turkmenian', 'F', '1.6'),
('IRQ', 'Arabic', 'T', '77.2'),
('IRQ', 'Assyrian', 'F', '0.8'),
('IRQ', 'Azerbaijani', 'F', '1.7'),
('IRQ', 'Kurdish', 'F', '19.0'),
('IRQ', 'Persian', 'F', '0.8'),
('ISL', 'English', 'F', '0.0'),
('ISL', 'Icelandic', 'T', '95.7'),
('ISR', 'Arabic', 'T', '18.0'),
('ISR', 'Hebrew', 'T', '63.1'),
('ISR', 'Russian', 'F', '8.9'),
('ITA', 'Albaniana', 'F', '0.2'),
('ITA', 'French', 'F', '0.5'),
('ITA', 'Friuli', 'F', '1.2'),
('ITA', 'German', 'F', '0.5'),
('ITA', 'Italian', 'T', '94.1'),
('ITA', 'Romani', 'F', '0.2'),
('ITA', 'Sardinian', 'F', '2.7'),
('ITA', 'Slovene', 'F', '0.2'),
('JAM', 'Creole English', 'F', '94.2'),
('JAM', 'Hindi', 'F', '1.9'),
('JOR', 'Arabic', 'T', '97.9'),
('JOR', 'Armenian', 'F', '1.0'),
('JOR', 'Circassian', 'F', '1.0'),
('JPN', 'Ainu', 'F', '0.0'),
('JPN', 'Chinese', 'F', '0.2'),
('JPN', 'English', 'F', '0.1'),
('JPN', 'Japanese', 'T', '99.1'),
('JPN', 'Korean', 'F', '0.5'),
('JPN', 'Philippene Languages', 'F', '0.1'),
('KAZ', 'German', 'F', '3.1'),
('KAZ', 'Kazakh', 'T', '46.0'),
('KAZ', 'Russian', 'F', '34.7'),
('KAZ', 'Tatar', 'F', '2.0'),
('KAZ', 'Ukrainian', 'F', '5.0'),
('KAZ', 'Uzbek', 'F', '2.3'),
('KEN', 'Gusii', 'F', '6.1'),
('KEN', 'Kalenjin', 'F', '10.8'),
('KEN', 'Kamba', 'F', '11.2'),
('KEN', 'Kikuyu', 'F', '20.9'),
('KEN', 'Luhya', 'F', '13.8'),
('KEN', 'Luo', 'F', '12.8'),
('KEN', 'Masai', 'F', '1.6'),
('KEN', 'Meru', 'F', '5.5'),
('KEN', 'Nyika', 'F', '4.8'),
('KEN', 'Turkana', 'F', '1.4'),
('KGZ', 'Kazakh', 'F', '0.8'),
('KGZ', 'Kirgiz', 'T', '59.7'),
('KGZ', 'Russian', 'T', '16.2'),
('KGZ', 'Tadzhik', 'F', '0.8'),
('KGZ', 'Tatar', 'F', '1.3'),
('KGZ', 'Ukrainian', 'F', '1.7'),
('KGZ', 'Uzbek', 'F', '14.1'),
('KHM', 'Chinese', 'F', '3.1'),
('KHM', 'Khmer', 'T', '88.6'),
('KHM', 'Tšam', 'F', '2.4'),
('KHM', 'Vietnamese', 'F', '5.5'),
('KIR', 'Kiribati', 'T', '98.9'),
('KIR', 'Tuvalu', 'F', '0.5'),
('KNA', 'Creole English', 'F', '100.0'),
('KNA', 'English', 'T', '0.0'),
('KOR', 'Chinese', 'F', '0.1'),
('KOR', 'Korean', 'T', '99.9'),
('KWT', 'Arabic', 'T', '78.1'),
('KWT', 'English', 'F', '0.0'),
('LAO', 'Lao', 'T', '67.2'),
('LAO', 'Lao-Soung', 'F', '5.2'),
('LAO', 'Mon-khmer', 'F', '16.5'),
('LAO', 'Thai', 'F', '7.8'),
('LBN', 'Arabic', 'T', '93.0'),
('LBN', 'Armenian', 'F', '5.9'),
('LBN', 'French', 'F', '0.0'),
('LBR', 'Bassa', 'F', '13.7'),
('LBR', 'Gio', 'F', '7.9'),
('LBR', 'Grebo', 'F', '8.9'),
('LBR', 'Kpelle', 'F', '19.5'),
('LBR', 'Kru', 'F', '7.2'),
('LBR', 'Loma', 'F', '5.8'),
('LBR', 'Malinke', 'F', '5.1'),
('LBR', 'Mano', 'F', '7.2'),
('LBY', 'Arabic', 'T', '96.0'),
('LBY', 'Berberi', 'F', '1.0'),
('LCA', 'Creole French', 'F', '80.0'),
('LCA', 'English', 'T', '20.0'),
('LIE', 'German', 'T', '89.0'),
('LIE', 'Italian', 'F', '2.5'),
('LIE', 'Turkish', 'F', '2.5'),
('LKA', 'Mixed Languages', 'F', '19.6'),
('LKA', 'Singali', 'T', '60.3'),
('LKA', 'Tamil', 'T', '19.6'),
('LSO', 'English', 'T', '0.0'),
('LSO', 'Sotho', 'T', '85.0'),
('LSO', 'Zulu', 'F', '15.0'),
('LTU', 'Belorussian', 'F', '1.4'),
('LTU', 'Lithuanian', 'T', '81.6'),
('LTU', 'Polish', 'F', '7.0'),
('LTU', 'Russian', 'F', '8.1'),
('LTU', 'Ukrainian', 'F', '1.1'),
('LUX', 'French', 'T', '4.2'),
('LUX', 'German', 'T', '2.3'),
('LUX', 'Italian', 'F', '4.6'),
('LUX', 'Luxembourgish', 'T', '64.4'),
('LUX', 'Portuguese', 'F', '13.0'),
('LVA', 'Belorussian', 'F', '4.1'),
('LVA', 'Latvian', 'T', '55.1'),
('LVA', 'Lithuanian', 'F', '1.2'),
('LVA', 'Polish', 'F', '2.1'),
('LVA', 'Russian', 'F', '32.5'),
('LVA', 'Ukrainian', 'F', '2.9'),
('MAC', 'Canton Chinese', 'F', '85.6'),
('MAC', 'English', 'F', '0.5'),
('MAC', 'Mandarin Chinese', 'F', '1.2'),
('MAC', 'Portuguese', 'T', '2.3'),
('MAR', 'Arabic', 'T', '65.0'),
('MAR', 'Berberi', 'F', '33.0'),
('MCO', 'English', 'F', '6.5'),
('MCO', 'French', 'T', '41.9'),
('MCO', 'Italian', 'F', '16.1'),
('MCO', 'Monegasque', 'F', '16.1'),
('MDA', 'Bulgariana', 'F', '1.6'),
('MDA', 'Gagauzi', 'F', '3.2'),
('MDA', 'Romanian', 'T', '61.9'),
('MDA', 'Russian', 'F', '23.2'),
('MDA', 'Ukrainian', 'F', '8.6'),
('MDG', 'French', 'T', '0.0'),
('MDG', 'Malagasy', 'T', '98.9'),
('MDV', 'Dhivehi', 'T', '100.0'),
('MDV', 'English', 'F', '0.0'),
('MEX', 'Mixtec', 'F', '0.6'),
('MEX', 'Náhuatl', 'F', '1.8'),
('MEX', 'Otomí', 'F', '0.4'),
('MEX', 'Spanish', 'T', '92.1'),
('MEX', 'Yucatec', 'F', '1.1'),
('MEX', 'Zapotec', 'F', '0.6'),
('MHL', 'English', 'T', '0.0'),
('MHL', 'Marshallese', 'T', '96.8'),
('MKD', 'Albaniana', 'F', '22.9'),
('MKD', 'Macedonian', 'T', '66.5'),
('MKD', 'Romani', 'F', '2.3'),
('MKD', 'Serbo-Croatian', 'F', '2.0'),
('MKD', 'Turkish', 'F', '4.0'),
('MLI', 'Bambara', 'F', '31.8'),
('MLI', 'Ful', 'F', '13.9'),
('MLI', 'Senufo and Minianka', 'F', '12.0'),
('MLI', 'Songhai', 'F', '6.9'),
('MLI', 'Soninke', 'F', '8.7'),
('MLI', 'Tamashek', 'F', '7.3'),
('MLT', 'English', 'T', '2.1'),
('MLT', 'Maltese', 'T', '95.8'),
('MMR', 'Burmese', 'T', '69.0'),
('MMR', 'Chin', 'F', '2.2'),
('MMR', 'Kachin', 'F', '1.4'),
('MMR', 'Karen', 'F', '6.2'),
('MMR', 'Kayah', 'F', '0.4'),
('MMR', 'Mon', 'F', '2.4'),
('MMR', 'Rakhine', 'F', '4.5'),
('MMR', 'Shan', 'F', '8.5'),
('MNG', 'Bajad', 'F', '1.9'),
('MNG', 'Buryat', 'F', '1.7'),
('MNG', 'Dariganga', 'F', '1.4'),
('MNG', 'Dorbet', 'F', '2.7'),
('MNG', 'Kazakh', 'F', '5.9'),
('MNG', 'Mongolian', 'T', '78.8'),
('MNP', 'Carolinian', 'F', '4.8'),
('MNP', 'Chamorro', 'F', '30.0'),
('MNP', 'Chinese', 'F', '7.1'),
('MNP', 'English', 'T', '4.8'),
('MNP', 'Korean', 'F', '6.5'),
('MNP', 'Philippene Languages', 'F', '34.1'),
('MOZ', 'Chuabo', 'F', '5.7'),
('MOZ', 'Lomwe', 'F', '7.8'),
('MOZ', 'Makua', 'F', '27.8'),
('MOZ', 'Marendje', 'F', '3.5'),
('MOZ', 'Nyanja', 'F', '3.3'),
('MOZ', 'Ronga', 'F', '3.7'),
('MOZ', 'Sena', 'F', '9.4'),
('MOZ', 'Shona', 'F', '6.5'),
('MOZ', 'Tsonga', 'F', '12.4'),
('MOZ', 'Tswa', 'F', '6.0'),
('MRT', 'Ful', 'F', '1.2'),
('MRT', 'Hassaniya', 'F', '81.7'),
('MRT', 'Soninke', 'F', '2.7'),
('MRT', 'Tukulor', 'F', '5.4'),
('MRT', 'Wolof', 'F', '6.6'),
('MRT', 'Zenaga', 'F', '1.2'),
('MSR', 'English', 'T', '0.0'),
('MTQ', 'Creole French', 'F', '96.6'),
('MTQ', 'French', 'T', '0.0'),
('MUS', 'Bhojpuri', 'F', '21.1'),
('MUS', 'Creole French', 'F', '70.6'),
('MUS', 'French', 'F', '3.4'),
('MUS', 'Hindi', 'F', '1.2'),
('MUS', 'Marathi', 'F', '0.7'),
('MUS', 'Tamil', 'F', '0.8'),
('MWI', 'Chichewa', 'T', '58.3'),
('MWI', 'Lomwe', 'F', '18.4'),
('MWI', 'Ngoni', 'F', '6.7'),
('MWI', 'Yao', 'F', '13.2'),
('MYS', 'Chinese', 'F', '9.0'),
('MYS', 'Dusun', 'F', '1.1'),
('MYS', 'English', 'F', '1.6'),
('MYS', 'Iban', 'F', '2.8'),
('MYS', 'Malay', 'T', '58.4'),
('MYS', 'Tamil', 'F', '3.9'),
('MYT', 'French', 'T', '20.3'),
('MYT', 'Mahoré', 'F', '41.9'),
('MYT', 'Malagasy', 'F', '16.1'),
('NAM', 'Afrikaans', 'F', '9.5'),
('NAM', 'Caprivi', 'F', '4.7'),
('NAM', 'German', 'F', '0.9'),
('NAM', 'Herero', 'F', '8.0'),
('NAM', 'Kavango', 'F', '9.7'),
('NAM', 'Nama', 'F', '12.4'),
('NAM', 'Ovambo', 'F', '50.7'),
('NAM', 'San', 'F', '1.9'),
('NCL', 'French', 'T', '34.3'),
('NCL', 'Malenasian Languages', 'F', '45.4'),
('NCL', 'Polynesian Languages', 'F', '11.6'),
('NER', 'Ful', 'F', '9.7'),
('NER', 'Hausa', 'F', '53.1'),
('NER', 'Kanuri', 'F', '4.4'),
('NER', 'Songhai-zerma', 'F', '21.2'),
('NER', 'Tamashek', 'F', '10.4'),
('NFK', 'English', 'T', '0.0'),
('NGA', 'Bura', 'F', '1.6'),
('NGA', 'Edo', 'F', '3.3'),
('NGA', 'Ful', 'F', '11.3'),
('NGA', 'Hausa', 'F', '21.1'),
('NGA', 'Ibibio', 'F', '5.6'),
('NGA', 'Ibo', 'F', '18.1'),
('NGA', 'Ijo', 'F', '1.8'),
('NGA', 'Joruba', 'F', '21.4'),
('NGA', 'Kanuri', 'F', '4.1'),
('NGA', 'Tiv', 'F', '2.3'),
('NIC', 'Creole English', 'F', '0.5'),
('NIC', 'Miskito', 'F', '1.6'),
('NIC', 'Spanish', 'T', '97.6'),
('NIC', 'Sumo', 'F', '0.2'),
('NIU', 'English', 'T', '0.0'),
('NIU', 'Niue', 'F', '0.0'),
('NLD', 'Arabic', 'F', '0.9'),
('NLD', 'Dutch', 'T', '95.6'),
('NLD', 'Fries', 'F', '3.7'),
('NLD', 'Turkish', 'F', '0.8'),
('NOR', 'Danish', 'F', '0.4'),
('NOR', 'English', 'F', '0.5'),
('NOR', 'Norwegian', 'T', '96.6'),
('NOR', 'Saame', 'F', '0.0'),
('NOR', 'Swedish', 'F', '0.3'),
('NPL', 'Bhojpuri', 'F', '7.5'),
('NPL', 'Hindi', 'F', '3.0'),
('NPL', 'Maithili', 'F', '11.9'),
('NPL', 'Nepali', 'T', '50.4'),
('NPL', 'Newari', 'F', '3.7'),
('NPL', 'Tamang', 'F', '4.9'),
('NPL', 'Tharu', 'F', '5.4'),
('NRU', 'Chinese', 'F', '8.5'),
('NRU', 'English', 'T', '7.5'),
('NRU', 'Kiribati', 'F', '17.9'),
('NRU', 'Nauru', 'T', '57.5'),
('NRU', 'Tuvalu', 'F', '8.5'),
('NZL', 'English', 'T', '87.0'),
('NZL', 'Maori', 'F', '4.3'),
('OMN', 'Arabic', 'T', '76.7'),
('OMN', 'Balochi', 'F', '0.0'),
('PAK', 'Balochi', 'F', '3.0'),
('PAK', 'Brahui', 'F', '1.2'),
('PAK', 'Hindko', 'F', '2.4'),
('PAK', 'Pashto', 'F', '13.1'),
('PAK', 'Punjabi', 'F', '48.2'),
('PAK', 'Saraiki', 'F', '9.8'),
('PAK', 'Sindhi', 'F', '11.8'),
('PAK', 'Urdu', 'T', '7.6'),
('PAN', 'Arabic', 'F', '0.6'),
('PAN', 'Creole English', 'F', '14.0'),
('PAN', 'Cuna', 'F', '2.0'),
('PAN', 'Embera', 'F', '0.6'),
('PAN', 'Guaymí', 'F', '5.3'),
('PAN', 'Spanish', 'T', '76.8'),
('PCN', 'Pitcairnese', 'F', '0.0'),
('PER', 'Aimará', 'T', '2.3'),
('PER', 'Ketšua', 'T', '16.4'),
('PER', 'Spanish', 'T', '79.8'),
('PHL', 'Bicol', 'F', '5.7'),
('PHL', 'Cebuano', 'F', '23.3'),
('PHL', 'Hiligaynon', 'F', '9.1'),
('PHL', 'Ilocano', 'F', '9.3'),
('PHL', 'Maguindanao', 'F', '1.4'),
('PHL', 'Maranao', 'F', '1.3'),
('PHL', 'Pampango', 'F', '3.0'),
('PHL', 'Pangasinan', 'F', '1.8'),
('PHL', 'Pilipino', 'T', '29.3'),
('PHL', 'Waray-waray', 'F', '3.8'),
('PLW', 'Chinese', 'F', '1.6'),
('PLW', 'English', 'T', '3.2'),
('PLW', 'Palau', 'T', '82.2'),
('PLW', 'Philippene Languages', 'F', '9.2'),
('PNG', 'Malenasian Languages', 'F', '20.0'),
('PNG', 'Papuan Languages', 'F', '78.1'),
('POL', 'Belorussian', 'F', '0.5'),
('POL', 'German', 'F', '1.3'),
('POL', 'Polish', 'T', '97.6'),
('POL', 'Ukrainian', 'F', '0.6'),
('PRI', 'English', 'F', '47.4'),
('PRI', 'Spanish', 'T', '51.3'),
('PRK', 'Chinese', 'F', '0.1'),
('PRK', 'Korean', 'T', '99.9'),
('PRT', 'Portuguese', 'T', '99.0'),
('PRY', 'German', 'F', '0.9'),
('PRY', 'Guaraní', 'T', '40.1'),
('PRY', 'Portuguese', 'F', '3.2'),
('PRY', 'Spanish', 'T', '55.1'),
('PSE', 'Arabic', 'F', '95.9'),
('PSE', 'Hebrew', 'F', '4.1'),
('PYF', 'Chinese', 'F', '2.9'),
('PYF', 'French', 'T', '40.8'),
('PYF', 'Tahitian', 'F', '46.4'),
('QAT', 'Arabic', 'T', '40.7'),
('QAT', 'Urdu', 'F', '0.0'),
('REU', 'Chinese', 'F', '2.8'),
('REU', 'Comorian', 'F', '2.8'),
('REU', 'Creole French', 'F', '91.5'),
('REU', 'Malagasy', 'F', '1.4'),
('REU', 'Tamil', 'F', '0.0'),
('ROM', 'German', 'F', '0.4'),
('ROM', 'Hungarian', 'F', '7.2'),
('ROM', 'Romani', 'T', '0.7'),
('ROM', 'Romanian', 'T', '90.7'),
('ROM', 'Serbo-Croatian', 'F', '0.1'),
('ROM', 'Ukrainian', 'F', '0.3'),
('RUS', 'Avarian', 'F', '0.4'),
('RUS', 'Bashkir', 'F', '0.7'),
('RUS', 'Belorussian', 'F', '0.3'),
('RUS', 'Chechen', 'F', '0.6'),
('RUS', 'Chuvash', 'F', '0.9'),
('RUS', 'Kazakh', 'F', '0.4'),
('RUS', 'Mari', 'F', '0.4'),
('RUS', 'Mordva', 'F', '0.5'),
('RUS', 'Russian', 'T', '86.6'),
('RUS', 'Tatar', 'F', '3.2'),
('RUS', 'Udmur', 'F', '0.3'),
('RUS', 'Ukrainian', 'F', '1.3'),
('RWA', 'French', 'T', '0.0'),
('RWA', 'Rwanda', 'T', '100.0'),
('SAU', 'Arabic', 'T', '95.0'),
('SDN', 'Arabic', 'T', '49.4'),
('SDN', 'Bari', 'F', '2.5'),
('SDN', 'Beja', 'F', '6.4'),
('SDN', 'Chilluk', 'F', '1.7'),
('SDN', 'Dinka', 'F', '11.5'),
('SDN', 'Fur', 'F', '2.1'),
('SDN', 'Lotuko', 'F', '1.5'),
('SDN', 'Nubian Languages', 'F', '8.1'),
('SDN', 'Nuer', 'F', '4.9'),
('SDN', 'Zande', 'F', '2.7'),
('SEN', 'Diola', 'F', '5.0'),
('SEN', 'Ful', 'F', '21.7'),
('SEN', 'Malinke', 'F', '3.8'),
('SEN', 'Serer', 'F', '12.5'),
('SEN', 'Soninke', 'F', '1.3'),
('SEN', 'Wolof', 'T', '48.1'),
('SGP', 'Chinese', 'T', '77.1'),
('SGP', 'Malay', 'T', '14.1'),
('SGP', 'Tamil', 'T', '7.4'),
('SHN', 'English', 'T', '0.0'),
('SJM', 'Norwegian', 'T', '0.0'),
('SJM', 'Russian', 'F', '0.0'),
('SLB', 'Malenasian Languages', 'F', '85.6'),
('SLB', 'Papuan Languages', 'F', '8.6'),
('SLB', 'Polynesian Languages', 'F', '3.8'),
('SLE', 'Bullom-sherbro', 'F', '3.8'),
('SLE', 'Ful', 'F', '3.8'),
('SLE', 'Kono-vai', 'F', '5.1'),
('SLE', 'Kuranko', 'F', '3.4'),
('SLE', 'Limba', 'F', '8.3'),
('SLE', 'Mende', 'F', '34.8'),
('SLE', 'Temne', 'F', '31.8'),
('SLE', 'Yalunka', 'F', '3.4'),
('SLV', 'Nahua', 'F', '0.0'),
('SLV', 'Spanish', 'T', '100.0'),
('SMR', 'Italian', 'T', '100.0'),
('SOM', 'Arabic', 'T', '0.0'),
('SOM', 'Somali', 'T', '98.3'),
('SPM', 'French', 'T', '0.0'),
('STP', 'Crioulo', 'F', '86.3'),
('STP', 'French', 'F', '0.7'),
('SUR', 'Hindi', 'F', '0.0'),
('SUR', 'Sranantonga', 'F', '81.0'),
('SVK', 'Czech and Moravian', 'F', '1.1'),
('SVK', 'Hungarian', 'F', '10.5'),
('SVK', 'Romani', 'F', '1.7'),
('SVK', 'Slovak', 'T', '85.6'),
('SVK', 'Ukrainian and Russian', 'F', '0.6'),
('SVN', 'Hungarian', 'F', '0.5'),
('SVN', 'Serbo-Croatian', 'F', '7.9'),
('SVN', 'Slovene', 'T', '87.9'),
('SWE', 'Arabic', 'F', '0.8'),
('SWE', 'Finnish', 'F', '2.4'),
('SWE', 'Norwegian', 'F', '0.5'),
('SWE', 'Southern Slavic Languages', 'F', '1.3'),
('SWE', 'Spanish', 'F', '0.6'),
('SWE', 'Swedish', 'T', '89.5'),
('SWZ', 'Swazi', 'T', '89.9'),
('SWZ', 'Zulu', 'F', '2.0'),
('SYC', 'English', 'T', '3.8'),
('SYC', 'French', 'T', '1.3'),
('SYC', 'Seselwa', 'F', '91.3'),
('SYR', 'Arabic', 'T', '90.0'),
('SYR', 'Kurdish', 'F', '9.0'),
('TCA', 'English', 'T', '0.0'),
('TCD', 'Arabic', 'T', '12.3'),
('TCD', 'Gorane', 'F', '6.2'),
('TCD', 'Hadjarai', 'F', '6.7'),
('TCD', 'Kanem-bornu', 'F', '9.0'),
('TCD', 'Mayo-kebbi', 'F', '11.5'),
('TCD', 'Ouaddai', 'F', '8.7'),
('TCD', 'Sara', 'F', '27.7'),
('TCD', 'Tandjile', 'F', '6.5'),
('TGO', 'Ane', 'F', '5.7'),
('TGO', 'Ewe', 'T', '23.2'),
('TGO', 'Gurma', 'F', '3.4'),
('TGO', 'Kabyé', 'T', '13.8'),
('TGO', 'Kotokoli', 'F', '5.7'),
('TGO', 'Moba', 'F', '5.4'),
('TGO', 'Naudemba', 'F', '4.1'),
('TGO', 'Watyi', 'F', '10.3'),
('THA', 'Chinese', 'F', '12.1'),
('THA', 'Khmer', 'F', '1.3'),
('THA', 'Kuy', 'F', '1.1'),
('THA', 'Lao', 'F', '26.9'),
('THA', 'Malay', 'F', '3.6'),
('THA', 'Thai', 'T', '52.6'),
('TJK', 'Russian', 'F', '9.7'),
('TJK', 'Tadzhik', 'T', '62.2'),
('TJK', 'Uzbek', 'F', '23.2'),
('TKL', 'English', 'T', '0.0'),
('TKL', 'Tokelau', 'F', '0.0'),
('TKM', 'Kazakh', 'F', '2.0'),
('TKM', 'Russian', 'F', '6.7'),
('TKM', 'Turkmenian', 'T', '76.7'),
('TKM', 'Uzbek', 'F', '9.2'),
('TMP', 'Portuguese', 'T', '0.0'),
('TMP', 'Sunda', 'F', '0.0'),
('TON', 'English', 'T', '0.0'),
('TON', 'Tongan', 'T', '98.3'),
('TTO', 'Creole English', 'F', '2.9'),
('TTO', 'English', 'F', '93.5'),
('TTO', 'Hindi', 'F', '3.4'),
('TUN', 'Arabic', 'T', '69.9'),
('TUN', 'Arabic-French', 'F', '26.3'),
('TUN', 'Arabic-French-English', 'F', '3.2'),
('TUR', 'Arabic', 'F', '1.4'),
('TUR', 'Kurdish', 'F', '10.6'),
('TUR', 'Turkish', 'T', '87.6'),
('TUV', 'English', 'T', '0.0'),
('TUV', 'Kiribati', 'F', '7.5'),
('TUV', 'Tuvalu', 'T', '92.5'),
('TWN', 'Ami', 'F', '0.6'),
('TWN', 'Atayal', 'F', '0.4'),
('TWN', 'Hakka', 'F', '11.0'),
('TWN', 'Mandarin Chinese', 'T', '20.1'),
('TWN', 'Min', 'F', '66.7'),
('TWN', 'Paiwan', 'F', '0.3'),
('TZA', 'Chaga and Pare', 'F', '4.9'),
('TZA', 'Gogo', 'F', '3.9'),
('TZA', 'Ha', 'F', '3.5'),
('TZA', 'Haya', 'F', '5.9'),
('TZA', 'Hehet', 'F', '6.9'),
('TZA', 'Luguru', 'F', '4.9'),
('TZA', 'Makonde', 'F', '5.9'),
('TZA', 'Nyakusa', 'F', '5.4'),
('TZA', 'Nyamwesi', 'F', '21.1'),
('TZA', 'Shambala', 'F', '4.3'),
('TZA', 'Swahili', 'T', '8.8'),
('UGA', 'Acholi', 'F', '4.4'),
('UGA', 'Ganda', 'F', '18.1'),
('UGA', 'Gisu', 'F', '4.5'),
('UGA', 'Kiga', 'F', '8.3'),
('UGA', 'Lango', 'F', '5.9'),
('UGA', 'Lugbara', 'F', '4.7'),
('UGA', 'Nkole', 'F', '10.7'),
('UGA', 'Rwanda', 'F', '3.2'),
('UGA', 'Soga', 'F', '8.2'),
('UGA', 'Teso', 'F', '6.0'),
('UKR', 'Belorussian', 'F', '0.3'),
('UKR', 'Bulgariana', 'F', '0.3'),
('UKR', 'Hungarian', 'F', '0.3'),
('UKR', 'Polish', 'F', '0.1'),
('UKR', 'Romanian', 'F', '0.7'),
('UKR', 'Russian', 'F', '32.9'),
('UKR', 'Ukrainian', 'T', '64.7'),
('UMI', 'English', 'T', '0.0'),
('URY', 'Spanish', 'T', '95.7'),
('USA', 'Chinese', 'F', '0.6'),
('USA', 'English', 'T', '86.2'),
('USA', 'French', 'F', '0.7'),
('USA', 'German', 'F', '0.7'),
('USA', 'Italian', 'F', '0.6'),
('USA', 'Japanese', 'F', '0.2'),
('USA', 'Korean', 'F', '0.3'),
('USA', 'Polish', 'F', '0.3'),
('USA', 'Portuguese', 'F', '0.2'),
('USA', 'Spanish', 'F', '7.5'),
('USA', 'Tagalog', 'F', '0.4'),
('USA', 'Vietnamese', 'F', '0.2'),
('UZB', 'Karakalpak', 'F', '2.0'),
('UZB', 'Kazakh', 'F', '3.8'),
('UZB', 'Russian', 'F', '10.9'),
('UZB', 'Tadzhik', 'F', '4.4'),
('UZB', 'Tatar', 'F', '1.8'),
('UZB', 'Uzbek', 'T', '72.6'),
('VAT', 'Italian', 'T', '0.0'),
('VCT', 'Creole English', 'F', '99.1'),
('VCT', 'English', 'T', '0.0'),
('VEN', 'Goajiro', 'F', '0.4'),
('VEN', 'Spanish', 'T', '96.9'),
('VEN', 'Warrau', 'F', '0.1'),
('VGB', 'English', 'T', '0.0'),
('VIR', 'English', 'T', '81.7'),
('VIR', 'French', 'F', '2.5'),
('VIR', 'Spanish', 'F', '13.3'),
('VNM', 'Chinese', 'F', '1.4'),
('VNM', 'Khmer', 'F', '1.4'),
('VNM', 'Man', 'F', '0.7'),
('VNM', 'Miao', 'F', '0.9'),
('VNM', 'Muong', 'F', '1.5'),
('VNM', 'Nung', 'F', '1.1'),
('VNM', 'Thai', 'F', '1.6'),
('VNM', 'Tho', 'F', '1.8'),
('VNM', 'Vietnamese', 'T', '86.8'),
('VUT', 'Bislama', 'T', '56.6'),
('VUT', 'English', 'T', '28.3'),
('VUT', 'French', 'T', '14.2'),
('WLF', 'Futuna', 'F', '0.0'),
('WLF', 'Wallis', 'F', '0.0'),
('WSM', 'English', 'T', '0.6'),
('WSM', 'Samoan', 'T', '47.5'),
('WSM', 'Samoan-English', 'F', '52.0'),
('YEM', 'Arabic', 'T', '99.6'),
('YEM', 'Soqutri', 'F', '0.0'),
('YUG', 'Albaniana', 'F', '16.5'),
('YUG', 'Hungarian', 'F', '3.4'),
('YUG', 'Macedonian', 'F', '0.5'),
('YUG', 'Romani', 'F', '1.4'),
('YUG', 'Serbo-Croatian', 'T', '75.2'),
('YUG', 'Slovak', 'F', '0.7'),
('ZAF', 'Afrikaans', 'T', '14.3'),
('ZAF', 'English', 'T', '8.5'),
('ZAF', 'Ndebele', 'F', '1.5'),
('ZAF', 'Northsotho', 'F', '9.1'),
('ZAF', 'Southsotho', 'F', '7.6'),
('ZAF', 'Swazi', 'F', '2.5'),
('ZAF', 'Tsonga', 'F', '4.3'),
('ZAF', 'Tswana', 'F', '8.1'),
('ZAF', 'Venda', 'F', '2.2'),
('ZAF', 'Xhosa', 'T', '17.7'),
('ZAF', 'Zulu', 'T', '22.7'),
('ZMB', 'Bemba', 'F', '29.7'),
('ZMB', 'Chewa', 'F', '5.7'),
('ZMB', 'Lozi', 'F', '6.4'),
('ZMB', 'Nsenga', 'F', '4.3'),
('ZMB', 'Nyanja', 'F', '7.8'),
('ZMB', 'Tongan', 'F', '11.0'),
('ZWE', 'English', 'T', '2.2'),
('ZWE', 'Ndebele', 'F', '16.2'),
('ZWE', 'Nyanja', 'F', '2.2'),
('ZWE', 'Shona', 'F', '72.1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`Code`);

--
-- Indexes for table `countrylanguage`
--
ALTER TABLE `countrylanguage`
  ADD PRIMARY KEY (`CountryCode`,`Language`),
  ADD KEY `CountryCode` (`CountryCode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4080;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `countrylanguage`
--
ALTER TABLE `countrylanguage`
  ADD CONSTRAINT `countrylanguage_ibfk_1` FOREIGN KEY (`CountryCode`) REFERENCES `country` (`Code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
