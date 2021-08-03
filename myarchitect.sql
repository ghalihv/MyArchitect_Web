-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 03, 2021 at 03:18 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myarchitect`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_model`
--

CREATE TABLE `category_model` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_model`
--

INSERT INTO `category_model` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'minimalis', 'minimalis', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(2, 'klasik', 'klasik', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(3, 'skandinavia', 'skandinavia', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(4, 'industril', 'industril', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(5, 'tradisional', 'tradisional', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(6, 'modern', 'modern', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(7, 'asian', 'asian', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(8, 'kontemporer', 'kontemporer', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(9, 'tropical', 'tropical', '2021-08-03 03:51:38', '2021-08-03 03:51:38');

-- --------------------------------------------------------

--
-- Table structure for table `category_type`
--

CREATE TABLE `category_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_type`
--

INSERT INTO `category_type` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'rumah tinggal', 'rumah-tinggal', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(2, 'villa', 'villa', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(3, 'cafe', 'cafe', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(4, 'kantor', 'kantor', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(5, 'apartemen', 'apartemen', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(6, 'restoran', 'restoran', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(7, 'ruang serba guna', 'ruang-serba-guna', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(8, 'lapangan futsal', 'lapangan-futsal', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(9, 'unfinished', 'unfinished', '2021-08-03 03:51:38', '2021-08-03 03:51:38');

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'pria', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(2, 'wanita', '2021-08-03 03:51:38', '2021-08-03 03:51:38');

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
(3, '2021_04_19_010901_create_order_table', 1),
(4, '2021_04_19_013551_create_role_table', 1),
(5, '2021_04_19_013748_create_status_table', 1),
(6, '2021_04_22_204533_create_portofolio_table', 1),
(7, '2021_04_22_204551_create_review_table', 1),
(8, '2021_04_24_011742_create_gender_table', 1),
(9, '2021_04_24_020207_create_category_type_table', 1),
(10, '2021_04_24_020244_create_category_model_table', 1),
(11, '2021_07_02_162703_create_progres_table', 1),
(12, '2021_07_02_163600_create_prices_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portofolio_id` bigint(20) NOT NULL,
  `price_id` bigint(20) NOT NULL,
  `wa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `portofolio_id`, `price_id`, `wa`, `area`, `address`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 2, '085767113554', '1250', 'Jakarta Timur', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(2, 4, 1, 1, '085698765456', 'Jakarta', 'Villa taman bandara', '2021-08-03 03:57:36', '2021-08-03 03:57:36');

-- --------------------------------------------------------

--
-- Table structure for table `portofolio`
--

CREATE TABLE `portofolio` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `category_type_id` bigint(20) NOT NULL,
  `category_model_id` bigint(20) NOT NULL,
  `luasbangunan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasiprojek` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portofolio`
--

INSERT INTO `portofolio` (`id`, `project`, `user_id`, `category_type_id`, `category_model_id`, `luasbangunan`, `lokasiprojek`, `url_video`, `url_image`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'Desain Rumah Sederhana', 3, 1, 1, '6x6', NULL, NULL, NULL, 'Desain rumah tinggal ini disebut dengan rumah tipe 36 biasanya mempunyai 2 kamar tidur, 1 ruang tamu, dapur dan kamar mandi', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(2, 'Premium Joglo House', 5, 1, 3, '45', NULL, NULL, NULL, 'Waktu pengerjaan selama 5 hari, dengan hasil Denah Layout, tampak setiap sisi (beserta jenis material) dan visualisasi 3D view.', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(3, 'Room Coffee', 6, 3, 9, '133', NULL, NULL, NULL, 'Konsep desain cafe unfinished mengkombinasikan dengan metal dan kayu, dengan konsep dinding yang tidak mencapai finish.', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(4, 'E-House', 7, 1, 6, '85', NULL, NULL, NULL, 'Desain dengan cladding dan finishing tembok yang sederhana, penggunaan material menggunakan logam, kaca dan baja.', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(5, 'Kantor Xyz', 8, 4, 6, '100', NULL, NULL, NULL, 'Desain kantor xyz dirancang agar dapat penempatan ruang yang sesuai dan atmosfer ruang yang bisa beradaptasi untuk berbagai pihak yang terjalin di kantor ini.', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(6, 'Premium Tropical House', 9, 1, 9, '-', NULL, NULL, NULL, 'Sebuah cluster rumah tinggal dengan memakai konsep tropical house yang terlihat sangat berkarakter.', '2021-08-03 03:51:38', '2021-08-03 03:51:38');

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `user_id`, `name`, `price`, `desc`, `created_at`, `updated_at`) VALUES
(1, '3', 'Paket Murah', '30.000.000', 'Hal-hal yang tidak sesuai diluar tanggung jawab saya', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(2, '3', 'Paket Sedang', '60.000.000', 'Hal-hal yang anda inginkan adalah tanggung jawab saya', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(3, '3', 'Paket Mahal', '100.000.000', 'Hal-hal yang anda inginkan adalah prioritas saya', '2021-08-03 03:51:38', '2021-08-03 03:51:38');

-- --------------------------------------------------------

--
-- Table structure for table `progres`
--

CREATE TABLE `progres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `progres`
--

INSERT INTO `progres` (`id`, `user_id`, `order_id`, `name`, `image`, `note`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'Desain dalam tahap pembuatan', 'step-1.jpg', 'Desain tanpa perbaikan', '2021-08-03 03:51:39', '2021-08-03 03:51:39'),
(2, 3, 1, 'Desain sudah selesai dibuat', 'step-2.jpg', 'Desain tanpa perbaikan', '2021-08-03 03:51:39', '2021-08-03 03:51:39'),
(3, 3, 1, 'Rumah sudah selesai dibuat', 'step-3.jpg', 'Desain tanpa perbaikan', '2021-08-03 03:51:39', '2021-08-03 03:51:39');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `portofolio_id` bigint(20) NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `user_id`, `portofolio_id`, `comment`, `star`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 'Mantap Desainnya memuaskan', 5, '2021-08-03 03:51:39', '2021-08-03 03:51:39');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-08-03 03:51:37', '2021-08-03 03:51:37'),
(2, 'arsitek', '2021-08-03 03:51:37', '2021-08-03 03:51:37'),
(3, 'client', '2021-08-03 03:51:37', '2021-08-03 03:51:37');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'active', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(2, 'non-active', '2021-08-03 03:51:38', '2021-08-03 03:51:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `status_id` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender_id` bigint(20) DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role_id`, `status_id`, `email`, `url_avatar`, `phone`, `address`, `city`, `gender_id`, `desc`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Alyssa Noveria Salsabila', 1, 1, 'ichaalyssa28@gmail.com', 'admin.png', NULL, NULL, NULL, 2, NULL, NULL, '$2y$10$8Alx4z/LURLO2sRDxvLs/.tpxfUuYAHibnxEMkshFaNNKYRhvige6', 'XHfgbRtQ27LLb6d7qiur2YRNaox4c952utZxfFyNsMr7qYDOW8iuKANoJ8wU', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(2, 'Abdurrahman Grahadi Maulana', 1, 1, 'grahadim178@gmail.com', 'admin.png', NULL, NULL, NULL, 1, NULL, NULL, '$2y$10$gKiHdPJu53uvcPZR/SRqQeI3oCF6Aazm9ukyFsj2SGItfY4blCz1C', 'uy5eZw1gdHcT9r09VZKT1y0a20cRSLri8okPabDTGZ5qT31iuus46RtjnSPE', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(3, 'Abdurrahman GM', 2, 1, 'grahadim00@gmail.com', 'freelancer.png', NULL, NULL, NULL, 1, NULL, NULL, '$2y$10$TTX2pDCYNRpxQOD980/IY.OQnurAKKxh.tvoJjughSgAKcAtY8.pq', 'yzZqSDZHt6bgjnsX8N7YmcwuQvAMLBJE6x2V1Xt6cWywNc0Vp8ZWjaN6atix', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(4, 'Hadoy', 3, 1, 'grahadim232@gmail.com', 'freelancer.png', '085767113554', NULL, NULL, 1, NULL, NULL, '$2y$10$ahVbpJe.ydB8c2X6SbYXQOIZ5ZAKIBwxDoioqLLcagTBpi5nnttp.', 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xMC4wLjIuMjo4MDAwXC9hcGlcL2xvZ2luIiwiaWF0IjoxNjI3OTg4MDAzLCJleHAiOjE2Mjc5OTE2MDMsIm5iZiI6MTYyNzk4ODAwMywianRpIjoiZFFRT3VXUUR0cU9tSm5LcSIsInN1YiI6NCwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.97mEsL5nIsJg8k3W95DuL-LQaXgu6trq5gaBcukOaPM', '2021-08-03 03:51:38', '2021-08-03 03:53:23'),
(5, 'Arifin Obara', 2, 2, 'arifin.obara07@gmail.com', 'freelancer.png', NULL, NULL, NULL, 1, NULL, NULL, '$2y$10$AmhKeNDUnEYmqfvqTo8LYeMYlJWcin2VlCsG16ccwO0tSXtl.hZS2', 'gpvsK71plLNtKsNi4XkYX2K4f88A8zbd1h4QirN79tKyHC1IkyLz6mpuK3gO', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(6, 'Muhammad Igun', 2, 2, 'm.igun123@gmail.com', 'freelancer.png', NULL, NULL, NULL, 1, NULL, NULL, '$2y$10$Gw2490c1hzPxswsUT5U/KO.tX9Tt9404Dqk6vuEmM.jlKC1LLsKVC', 'kndcE4LHPNFg0xsG41mAHOQBvyRt8X2Tv66eKVUsAE4IuJLNDNOGZBEVIWtb', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(7, 'Bambang Yesaya', 2, 2, 'bambangyesaya@gmail.com', 'freelancer.png', NULL, NULL, NULL, 1, NULL, NULL, '$2y$10$AKtvC43Wnu.9bASkSY7RvuaiuKvyQsfJ3TGX8WFHewUFTuHBF7/pO', '2eOAyQqiK2u9maBljxix1LBdMmVjAPzFld6kNGwzdmwKq9wxdiygVPN45pzy', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(8, 'Bombom Architect', 2, 2, 'fajrian0810@gmail.com', 'freelancer.png', NULL, NULL, NULL, 1, NULL, NULL, '$2y$10$FCnlN7G0ECly4v8g6S.oFucGkFO3O0z.Qvv7qH9Wq4xuLfQ8hUZ4W', 'RKGw72Cq0p8qa3k7rk8YktoMStfp3BJmlBWg31ESwJ91qHkqyFPPQaAUUqoM', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(9, 'Mega Istiani', 2, 2, 'Megaistiani84@gmail.com', 'freelancer.png', NULL, NULL, NULL, 2, NULL, NULL, '$2y$10$QVt621cIvKVl6Aq88EVOFe/rGYcPmY.yIfOCbsYSUqNcr8rlOkj/a', 'rhvZeA1wLmUWe3QAQR7qvoIcZUAiT9Le1ssI4zTuQHZbgQvLsKDskp3pqOi9', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(10, 'Sherina Febryanti', 3, 2, 'sherinafebryanti@gmail.com', 'user.png', NULL, NULL, NULL, 2, NULL, NULL, '$2y$10$60ChfSDrFriSp04PraUU6.UX4xaawHicJXC4I3S634ve.F.XKIySC', 'ofiV2rcut0CcO6OOSXO46bVol1nvQNZYJLDImuAMJOJRmxLpEMU3mNuVAcIU', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(11, 'M. Permana Dolar', 3, 2, 'dolay100998@gmail.com', 'user.png', NULL, NULL, NULL, 1, NULL, NULL, '$2y$10$NsFQ4XY2cSYb45CFyhLSaupurENuYI478FykxXQiKakGxFGlMyZf.', '31zHgqcN48nsDMQC563DNWuho1v3BslTQFfk1OOemN2sQpQfmlmdPy6SbiXy', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(12, 'Novan Saputra', 3, 2, 'sapnovan@gmail.com', 'user.png', NULL, NULL, NULL, 1, NULL, NULL, '$2y$10$iaSb/ptfeG3dqGa6sYOulu1CYH6/s.w692Q1NoEKzsQQrrZGEDTOy', 'C5YeUVS5jFDtoZdIl3PzErcTsqiuX5XnupqWMaWWdpd2snKbLlFnbsl2OYMy', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(13, 'M. Galih Briantoro', 3, 2, 'galihtor05@gmail.com', 'user.png', NULL, NULL, NULL, 1, NULL, NULL, '$2y$10$0F1lc9RTvxpK27YfT2/FheyiDQz1Jea4v2Yib/gnLtElIgbRWp1b.', 'CyGK7kF8Y7pDy5VvxiB6TUVMtt9JwCfY7CTbLp243tYzCtSX1PCDXSM7NzN5', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(14, 'Fitri Kartikasari', 3, 2, 'fitrikartikasari24@gmail.com', 'user.png', NULL, NULL, NULL, 2, NULL, NULL, '$2y$10$PnLw0O01.CePztdNqCJgg.DcNgJ9l1ApTpR6c4F4Jy9gIAmQo.PYS', 'pA62aQt0gnXqnuAftLRiMB67XJuiwebihgdOglO7QGLWzI5qEQpnENCbfSAu', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(15, 'Admin', 1, 1, 'admin@test.com', 'admin.png', NULL, NULL, NULL, 1, NULL, NULL, '$2y$10$YkxoMlpcHGWWKm4rwe9RB.j19mfD5lpFOO/3MCrX72PoU7QFgxFDy', 'Xf1n7keDte3m64Q6QQ5XNYKQ2Pdi1KDJldd125rg6OLJK5Zn4gt1giJScXgG', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(16, 'Freelancer', 2, 1, 'freelancer@test.com', 'admin.png', NULL, NULL, NULL, 2, NULL, NULL, '$2y$10$0rpnyDOPy9eOQUyuqkAEWuS4vg7P10XYBGBMpjhpwFdQDLjofkAVm', 'VAqRFtZWnNUEffxdb5fbhLnWY4iiCOwn80YobNYFOpeKfwD62UB11iMol8di', '2021-08-03 03:51:38', '2021-08-03 03:51:38'),
(17, 'Customer', 3, 1, 'user@test.com', 'admin.png', '085767113554', NULL, NULL, 2, NULL, NULL, '$2y$10$lFXF40ObvFS46eOCUdY1c.60yQ2iDNfBE/VyC9w5Yc65yGRrYLvSG', 'oRGk45dalU1S5aB8swkMTcKOto9266ee7f0S8yvIwJZA0wJlTrgFqJXCKyUp', '2021-08-03 03:51:38', '2021-08-03 03:51:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_model`
--
ALTER TABLE `category_model`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_model_title_unique` (`title`),
  ADD UNIQUE KEY `category_model_slug_unique` (`slug`);

--
-- Indexes for table `category_type`
--
ALTER TABLE `category_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_type_title_unique` (`title`),
  ADD UNIQUE KEY `category_type_slug_unique` (`slug`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portofolio`
--
ALTER TABLE `portofolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `progres`
--
ALTER TABLE `progres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
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
-- AUTO_INCREMENT for table `category_model`
--
ALTER TABLE `category_model`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `category_type`
--
ALTER TABLE `category_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `portofolio`
--
ALTER TABLE `portofolio`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `progres`
--
ALTER TABLE `progres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
