-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 28, 2022 at 10:30 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clerance`
--

-- --------------------------------------------------------

--
-- Table structure for table `clerances`
--

CREATE TABLE `clerances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `requested_from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'student',
  `library_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `police_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `guard_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `procter_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `hmr_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clerances`
--

INSERT INTO `clerances` (`id`, `user_id`, `requested_from`, `library_status`, `police_status`, `guard_status`, `procter_status`, `hmr_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'student', 'aproved', 'aproved', 'pending', 'aproved', 'pending', '2022-05-20 10:01:36', '2022-05-25 08:38:02'),
(2, 1, 'student', 'aproved', 'aproved', 'pending', 'aproved', 'pending', '2022-05-20 10:08:05', '2022-05-25 08:40:56'),
(3, 7, 'student', 'pending', 'aproved', 'pending', 'aproved', 'pending', '2022-05-20 14:53:28', '2022-05-25 08:40:57'),
(4, 7, 'student', 'aproved', 'aproved', 'pending', 'declined', 'pending', '2022-05-20 15:04:41', '2022-05-25 08:40:51'),
(5, 7, 'student', 'pending', 'aproved', 'pending', 'aproved', 'pending', '2022-05-20 15:04:56', '2022-05-25 08:40:51'),
(6, 7, 'student', 'pending', 'aproved', 'pending', 'pending', 'pending', '2022-05-25 08:31:38', '2022-05-25 08:40:52'),
(7, 4, 'employee', 'pending', 'pending', 'pending', 'pending', 'aproved', '2022-05-27 10:59:44', '2022-05-27 11:34:59'),
(8, 4, 'employee', 'pending', 'pending', 'pending', 'pending', 'pending', '2022-05-27 11:35:31', '2022-05-27 11:35:31'),
(9, 4, 'employee', 'pending', 'pending', 'pending', 'pending', 'pending', '2022-05-27 11:35:33', '2022-05-27 11:35:33');

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
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2022_05_16_043117_create_permission_tables', 1),
(10, '2022_05_20_121652_create_clerances_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 8),
(4, 'App\\Models\\User', 1),
(5, 'App\\Models\\User', 1),
(6, 'App\\Models\\User', 3),
(6, 'App\\Models\\User', 4),
(6, 'App\\Models\\User', 5),
(6, 'App\\Models\\User', 6),
(6, 'App\\Models\\User', 7),
(6, 'App\\Models\\User', 8),
(9, 'App\\Models\\User', 8),
(10, 'App\\Models\\User', 8);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 8),
(5, 'App\\Models\\User', 4);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'assign-role', 'web', '2022-05-20 08:59:05', '2022-05-20 08:59:05'),
(2, 'give-permission', 'web', '2022-05-20 08:59:19', '2022-05-20 08:59:19'),
(3, 'sing-clerance', 'web', '2022-05-20 08:59:35', '2022-05-20 08:59:35'),
(4, 'delete-user', 'web', '2022-05-20 08:59:56', '2022-05-20 08:59:56'),
(5, 'update-user', 'web', '2022-05-20 09:00:03', '2022-05-20 09:00:03'),
(6, 'request-clereance', 'web', '2022-05-20 13:47:54', '2022-05-20 13:47:54'),
(7, 'manage-user', 'web', '2022-05-20 13:49:53', '2022-05-20 13:49:53'),
(8, 'manage-roles', 'web', '2022-05-20 13:59:11', '2022-05-20 13:59:11'),
(9, 'manage-employee', 'web', '2022-05-26 04:54:42', '2022-05-26 04:54:42'),
(10, 'update-employee', 'web', '2022-05-26 04:56:42', '2022-05-26 04:56:42');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2022-05-20 08:57:33', '2022-05-20 08:57:33'),
(2, 'librarian', 'web', '2022-05-20 08:57:46', '2022-05-20 08:57:46'),
(3, 'police', 'web', '2022-05-20 08:58:01', '2022-05-20 08:58:01'),
(4, 'HMR', 'web', '2022-05-20 08:58:09', '2022-05-20 08:58:09'),
(5, 'employee', 'web', '2022-05-20 09:00:25', '2022-05-20 09:00:25'),
(8, 'student', 'web', '2022-05-26 04:14:17', '2022-05-26 04:14:17'),
(9, 'registrar', 'web', '2022-05-26 04:14:36', '2022-05-26 04:14:36'),
(10, 'instructor', 'web', '2022-05-26 04:14:50', '2022-05-26 04:14:50'),
(11, 'procter', 'web', '2022-05-26 04:15:33', '2022-05-26 04:15:33'),
(12, 'cafeteria', 'web', '2022-05-26 04:16:03', '2022-05-26 04:16:03');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 9),
(2, 1),
(2, 4),
(3, 2),
(3, 3),
(3, 4),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(4, 1),
(5, 1),
(5, 4),
(6, 5),
(6, 8),
(7, 1),
(7, 4),
(7, 9),
(8, 1),
(8, 9);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `phone`, `profile`, `location`, `about`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'A/ur14678/10', 'admin@gmail.com', NULL, '$2y$10$E2iOdhcL9lBvc6v/W1DJkO2nvr7bgkh/m01BDIrmKXNDEBF6NuyRm', '0987654345', '/OBQSuFybJOmuOCTdCk0GqL40ami2Og5KsEN0fsY1.jpg', 'Bole', NULL, NULL, '2022-05-20 08:51:52', '2022-05-27 12:14:55'),
(2, 'Librarian', 'A/ur54656/10', 'lib@gmail.com', NULL, '$2y$10$ivMGXiIOB8I3lJPTMuyZs.rzFY.mxRdgTDdZnS0foFN0ZwS4wIta2', '0912345678', NULL, '', NULL, NULL, '2022-05-20 08:53:51', '2022-05-20 08:53:51'),
(3, 'Police', 'police1234', 'pol@gmail.com', NULL, '$2y$10$1t5Qiz63XqKHPGlmuPQ9sOIwoK1eJq88rS7g39KUz0f/hABiVA9M.', '0954545454', NULL, '', NULL, NULL, '2022-05-20 08:54:39', '2022-05-20 08:54:39'),
(4, 'Employee', 'emp@gmail.com', 'emp@gmail.com', NULL, '$2y$10$nv..Va1yzs9aVdeHtpXuK.6iVpkzvoD.Dmpo8KoHkEMOPd6qS2cNS', '0954657875', NULL, '', NULL, NULL, '2022-05-20 08:55:41', '2022-05-20 08:55:41'),
(5, 'HMR', 'HMR123', 'hmr@gmai.com', NULL, '$2y$10$VU5Wy64il5SiV8Vi3Pi21up1SdExBV2jq42yzPoEXA5CgdJjVSLti', '0987676545', NULL, '', NULL, NULL, '2022-05-20 08:56:37', '2022-05-20 08:56:37'),
(6, 'Procter', 'procter123', 'pro@gmail.com', NULL, '$2y$10$VU5Wy64il5SiV8Vi3Pi21up1SdExBV2jq42yzPoEXA5CgdJjVSLti', '0934567778', '/profile/BjBtjOyyaiZexXJl02Ns5SD6Prgp0OsYRU6XyfGI.png', 'addis', NULL, NULL, '2022-05-20 13:52:13', '2022-05-20 14:37:15'),
(7, 'Nesru', 'nesren', 'nesrusadik@gmail.com', NULL, '$2y$10$moDUJFnoNldnXXoSBp9r8.1eH01YJURiQYLA6.4bNExe6t8hiIpsa', '0934343433', NULL, NULL, NULL, NULL, '2022-05-20 14:53:17', '2022-05-20 14:53:17'),
(8, 'Human', 'hmr1232', 'humanres@gmail.com', NULL, '$2y$10$y7OtN/5BqO6.5h65Tc/QMONaNDLrqNOSOwBfE.Z80FDgqfqvM2JtO', '0965656565', '/profile/suE5xMPKmVpMs0f55uBGKpna740fSXguuYfZKtCI.png', NULL, NULL, NULL, '2022-05-27 11:12:53', '2022-05-27 11:12:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clerances`
--
ALTER TABLE `clerances`
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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT for table `clerances`
--
ALTER TABLE `clerances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
