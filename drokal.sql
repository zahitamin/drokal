-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2018 at 12:01 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `drokal`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `type_id`, `created_at`, `updated_at`) VALUES
(1, 'Tudung', 1, NULL, '2018-12-10 14:58:54');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `created_at`, `updated_at`, `country_id`) VALUES
(1, 'Rigoberto Harris PhD', '2018-12-10 11:43:34', '2018-12-10 11:43:34', 1),
(2, 'Rigoberto Harris PhD', '2018-12-10 11:43:34', '2018-12-10 11:43:34', 52),
(3, 'Rigoberto Harris PhD', '2018-12-10 11:43:34', '2018-12-10 11:43:34', 53),
(4, 'Rigoberto Harris PhD', '2018-12-10 11:43:34', '2018-12-10 11:43:34', 54),
(5, 'Rigoberto Harris PhD', '2018-12-10 11:43:35', '2018-12-10 11:43:35', 55),
(6, 'Rigoberto Harris PhD', '2018-12-10 11:43:35', '2018-12-10 11:43:35', 56),
(7, 'Rigoberto Harris PhD', '2018-12-10 11:43:35', '2018-12-10 11:43:35', 57),
(8, 'Rigoberto Harris PhD', '2018-12-10 11:43:35', '2018-12-10 11:43:35', 58),
(9, 'Rigoberto Harris PhD', '2018-12-10 11:43:35', '2018-12-10 11:43:35', 59),
(10, 'Rigoberto Harris PhD', '2018-12-10 11:43:35', '2018-12-10 11:43:35', 60),
(11, 'Rigoberto Harris PhD', '2018-12-10 11:43:35', '2018-12-10 11:43:35', 61),
(12, 'Rigoberto Harris PhD', '2018-12-10 11:43:35', '2018-12-10 11:43:35', 62),
(13, 'Rigoberto Harris PhD', '2018-12-10 11:43:35', '2018-12-10 11:43:35', 63),
(14, 'Rigoberto Harris PhD', '2018-12-10 11:43:35', '2018-12-10 11:43:35', 64),
(15, 'Rigoberto Harris PhD', '2018-12-10 11:43:35', '2018-12-10 11:43:35', 65),
(16, 'Rigoberto Harris PhD', '2018-12-10 11:43:35', '2018-12-10 11:43:35', 66),
(17, 'Rigoberto Harris PhD', '2018-12-10 11:43:35', '2018-12-10 11:43:35', 67),
(18, 'Rigoberto Harris PhD', '2018-12-10 11:43:35', '2018-12-10 11:43:35', 68),
(19, 'Rigoberto Harris PhD', '2018-12-10 11:43:35', '2018-12-10 11:43:35', 69),
(20, 'Rigoberto Harris PhD', '2018-12-10 11:43:35', '2018-12-10 11:43:35', 70),
(21, 'Rigoberto Harris PhD', '2018-12-10 11:43:35', '2018-12-10 11:43:35', 71),
(22, 'Rigoberto Harris PhD', '2018-12-10 11:43:35', '2018-12-10 11:43:35', 72),
(23, 'Rigoberto Harris PhD', '2018-12-10 11:43:36', '2018-12-10 11:43:36', 73),
(24, 'Rigoberto Harris PhD', '2018-12-10 11:43:36', '2018-12-10 11:43:36', 74),
(25, 'Rigoberto Harris PhD', '2018-12-10 11:43:36', '2018-12-10 11:43:36', 75),
(26, 'Rigoberto Harris PhD', '2018-12-10 11:43:36', '2018-12-10 11:43:36', 76),
(27, 'Rigoberto Harris PhD', '2018-12-10 11:43:36', '2018-12-10 11:43:36', 77),
(28, 'Rigoberto Harris PhD', '2018-12-10 11:43:36', '2018-12-10 11:43:36', 78),
(29, 'Rigoberto Harris PhD', '2018-12-10 11:43:36', '2018-12-10 11:43:36', 79),
(30, 'Rigoberto Harris PhD', '2018-12-10 11:43:36', '2018-12-10 11:43:36', 80),
(31, 'Rigoberto Harris PhD', '2018-12-10 11:43:36', '2018-12-10 11:43:36', 81),
(32, 'Rigoberto Harris PhD', '2018-12-10 11:43:36', '2018-12-10 11:43:36', 82),
(33, 'Rigoberto Harris PhD', '2018-12-10 11:43:36', '2018-12-10 11:43:36', 83),
(34, 'Rigoberto Harris PhD', '2018-12-10 11:43:36', '2018-12-10 11:43:36', 84),
(35, 'Rigoberto Harris PhD', '2018-12-10 11:43:36', '2018-12-10 11:43:36', 85),
(36, 'Rigoberto Harris PhD', '2018-12-10 11:43:36', '2018-12-10 11:43:36', 86),
(37, 'Rigoberto Harris PhD', '2018-12-10 11:43:36', '2018-12-10 11:43:36', 87),
(38, 'Rigoberto Harris PhD', '2018-12-10 11:43:36', '2018-12-10 11:43:36', 88),
(39, 'Rigoberto Harris PhD', '2018-12-10 11:43:36', '2018-12-10 11:43:36', 89),
(40, 'Rigoberto Harris PhD', '2018-12-10 11:43:36', '2018-12-10 11:43:36', 90),
(41, 'Rigoberto Harris PhD', '2018-12-10 11:43:36', '2018-12-10 11:43:36', 91),
(42, 'Rigoberto Harris PhD', '2018-12-10 11:43:37', '2018-12-10 11:43:37', 92),
(43, 'Rigoberto Harris PhD', '2018-12-10 11:43:37', '2018-12-10 11:43:37', 93),
(44, 'Rigoberto Harris PhD', '2018-12-10 11:43:37', '2018-12-10 11:43:37', 94),
(45, 'Rigoberto Harris PhD', '2018-12-10 11:43:37', '2018-12-10 11:43:37', 95),
(46, 'Rigoberto Harris PhD', '2018-12-10 11:43:37', '2018-12-10 11:43:37', 96),
(47, 'Rigoberto Harris PhD', '2018-12-10 11:43:37', '2018-12-10 11:43:37', 97),
(48, 'Rigoberto Harris PhD', '2018-12-10 11:43:37', '2018-12-10 11:43:37', 98),
(49, 'Rigoberto Harris PhD', '2018-12-10 11:43:37', '2018-12-10 11:43:37', 99),
(50, 'Rigoberto Harris PhD', '2018-12-10 11:43:37', '2018-12-10 11:43:37', 100);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `content`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Bạn đã tạo shop thành công. hãy bắt đầu đăng sản phẩm của mình. Vui lòng không phản hồi email này.', 'support@lazada.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Viola Harber', '2018-12-10 11:43:28', '2018-12-10 11:43:28'),
(2, 'Santiago Purdy', '2018-12-10 11:43:28', '2018-12-10 11:43:28'),
(3, 'Kyla Collier', '2018-12-10 11:43:28', '2018-12-10 11:43:28'),
(4, 'Arnaldo Schmitt', '2018-12-10 11:43:28', '2018-12-10 11:43:28'),
(5, 'Mr. Johathan Daugherty', '2018-12-10 11:43:28', '2018-12-10 11:43:28'),
(6, 'Nayeli Mitchell', '2018-12-10 11:43:28', '2018-12-10 11:43:28'),
(7, 'Hal Kris PhD', '2018-12-10 11:43:28', '2018-12-10 11:43:28'),
(8, 'Jayne Lehner DVM', '2018-12-10 11:43:28', '2018-12-10 11:43:28'),
(9, 'Camden Boyle', '2018-12-10 11:43:29', '2018-12-10 11:43:29'),
(10, 'Macy O\'Keefe', '2018-12-10 11:43:29', '2018-12-10 11:43:29'),
(11, 'Anthony Romaguera', '2018-12-10 11:43:29', '2018-12-10 11:43:29'),
(12, 'Hank Crist', '2018-12-10 11:43:29', '2018-12-10 11:43:29'),
(13, 'Prof. Roscoe Auer', '2018-12-10 11:43:29', '2018-12-10 11:43:29'),
(14, 'Mohammed Davis DVM', '2018-12-10 11:43:29', '2018-12-10 11:43:29'),
(15, 'Mr. Lew Reichel', '2018-12-10 11:43:29', '2018-12-10 11:43:29'),
(16, 'Mr. Derick D\'Amore II', '2018-12-10 11:43:29', '2018-12-10 11:43:29'),
(17, 'Prof. Tristian Ondricka', '2018-12-10 11:43:29', '2018-12-10 11:43:29'),
(18, 'Dwight Hilpert', '2018-12-10 11:43:29', '2018-12-10 11:43:29'),
(19, 'Elian Little', '2018-12-10 11:43:29', '2018-12-10 11:43:29'),
(20, 'Margot Davis', '2018-12-10 11:43:29', '2018-12-10 11:43:29'),
(21, 'Hester Romaguera', '2018-12-10 11:43:29', '2018-12-10 11:43:29'),
(22, 'Rebekah Schaefer', '2018-12-10 11:43:29', '2018-12-10 11:43:29'),
(23, 'Mrs. Cora Ankunding Sr.', '2018-12-10 11:43:29', '2018-12-10 11:43:29'),
(24, 'Steve Steuber', '2018-12-10 11:43:29', '2018-12-10 11:43:29'),
(25, 'Princess Hamill', '2018-12-10 11:43:29', '2018-12-10 11:43:29'),
(26, 'Blanche Stroman', '2018-12-10 11:43:29', '2018-12-10 11:43:29'),
(27, 'Josie Botsford', '2018-12-10 11:43:29', '2018-12-10 11:43:29'),
(28, 'Edythe Anderson Jr.', '2018-12-10 11:43:30', '2018-12-10 11:43:30'),
(29, 'Vladimir Goldner', '2018-12-10 11:43:30', '2018-12-10 11:43:30'),
(30, 'Virgie Terry', '2018-12-10 11:43:30', '2018-12-10 11:43:30'),
(31, 'Mr. Raheem Simonis DVM', '2018-12-10 11:43:30', '2018-12-10 11:43:30'),
(32, 'Jeramie Dietrich', '2018-12-10 11:43:30', '2018-12-10 11:43:30'),
(33, 'Jaquelin Haley', '2018-12-10 11:43:30', '2018-12-10 11:43:30'),
(34, 'Oliver Strosin', '2018-12-10 11:43:30', '2018-12-10 11:43:30'),
(35, 'Mr. Kurt Zulauf IV', '2018-12-10 11:43:30', '2018-12-10 11:43:30'),
(36, 'Alana Feeney V', '2018-12-10 11:43:30', '2018-12-10 11:43:30'),
(37, 'Harley Block Sr.', '2018-12-10 11:43:30', '2018-12-10 11:43:30'),
(38, 'Dr. Queenie Torp', '2018-12-10 11:43:30', '2018-12-10 11:43:30'),
(39, 'Dr. Daron Ward', '2018-12-10 11:43:30', '2018-12-10 11:43:30'),
(40, 'Janelle Thompson', '2018-12-10 11:43:30', '2018-12-10 11:43:30'),
(41, 'Sebastian Klocko', '2018-12-10 11:43:30', '2018-12-10 11:43:30'),
(42, 'Miss Virginia Boehm', '2018-12-10 11:43:30', '2018-12-10 11:43:30'),
(43, 'Lina Maggio', '2018-12-10 11:43:30', '2018-12-10 11:43:30'),
(44, 'Jalen Crist', '2018-12-10 11:43:30', '2018-12-10 11:43:30'),
(45, 'Prof. Barton Corwin PhD', '2018-12-10 11:43:30', '2018-12-10 11:43:30'),
(46, 'Samir Keeling', '2018-12-10 11:43:30', '2018-12-10 11:43:30'),
(47, 'Rafael Dach', '2018-12-10 11:43:30', '2018-12-10 11:43:30'),
(48, 'Toby Lang II', '2018-12-10 11:43:31', '2018-12-10 11:43:31'),
(49, 'Abagail Nader', '2018-12-10 11:43:31', '2018-12-10 11:43:31'),
(50, 'Waylon Rowe', '2018-12-10 11:43:31', '2018-12-10 11:43:31'),
(51, 'Elinore Stroman', '2018-12-10 11:43:31', '2018-12-10 11:43:31'),
(52, 'Norene Volkman', '2018-12-10 11:43:31', '2018-12-10 11:43:31'),
(53, 'Ms. Kayla Hirthe MD', '2018-12-10 11:43:32', '2018-12-10 11:43:32'),
(54, 'Mr. Raul Schimmel DVM', '2018-12-10 11:43:32', '2018-12-10 11:43:32'),
(55, 'Ms. Maggie Bashirian V', '2018-12-10 11:43:32', '2018-12-10 11:43:32'),
(56, 'Fidel D\'Amore', '2018-12-10 11:43:32', '2018-12-10 11:43:32'),
(57, 'Lila Hyatt PhD', '2018-12-10 11:43:32', '2018-12-10 11:43:32'),
(58, 'Garrett Pagac', '2018-12-10 11:43:32', '2018-12-10 11:43:32'),
(59, 'Blanca Kiehn V', '2018-12-10 11:43:32', '2018-12-10 11:43:32'),
(60, 'Shyann Schneider', '2018-12-10 11:43:32', '2018-12-10 11:43:32'),
(61, 'Jay Spinka', '2018-12-10 11:43:32', '2018-12-10 11:43:32'),
(62, 'Lenora Morar', '2018-12-10 11:43:32', '2018-12-10 11:43:32'),
(63, 'Opal Corkery', '2018-12-10 11:43:32', '2018-12-10 11:43:32'),
(64, 'Mrs. Gwen Klein DVM', '2018-12-10 11:43:32', '2018-12-10 11:43:32'),
(65, 'Carolina Morar I', '2018-12-10 11:43:32', '2018-12-10 11:43:32'),
(66, 'Newell Stanton', '2018-12-10 11:43:32', '2018-12-10 11:43:32'),
(67, 'Darion Bayer', '2018-12-10 11:43:32', '2018-12-10 11:43:32'),
(68, 'Dillan Kertzmann', '2018-12-10 11:43:32', '2018-12-10 11:43:32'),
(69, 'Lafayette Zulauf MD', '2018-12-10 11:43:33', '2018-12-10 11:43:33'),
(70, 'Prof. Miller Glover III', '2018-12-10 11:43:33', '2018-12-10 11:43:33'),
(71, 'Nick Jast', '2018-12-10 11:43:33', '2018-12-10 11:43:33'),
(72, 'Delbert Champlin', '2018-12-10 11:43:33', '2018-12-10 11:43:33'),
(73, 'Otilia Keeling', '2018-12-10 11:43:33', '2018-12-10 11:43:33'),
(74, 'Cloyd Fritsch DDS', '2018-12-10 11:43:33', '2018-12-10 11:43:33'),
(75, 'Mr. Jack Moen', '2018-12-10 11:43:33', '2018-12-10 11:43:33'),
(76, 'Ed Senger', '2018-12-10 11:43:33', '2018-12-10 11:43:33'),
(77, 'Garland Beier', '2018-12-10 11:43:33', '2018-12-10 11:43:33'),
(78, 'Kaitlin Wehner', '2018-12-10 11:43:33', '2018-12-10 11:43:33'),
(79, 'Maiya Davis', '2018-12-10 11:43:33', '2018-12-10 11:43:33'),
(80, 'Mr. Rosario Wehner', '2018-12-10 11:43:33', '2018-12-10 11:43:33'),
(81, 'Blanca Gottlieb', '2018-12-10 11:43:33', '2018-12-10 11:43:33'),
(82, 'Ida Boyer IV', '2018-12-10 11:43:33', '2018-12-10 11:43:33'),
(83, 'Dale Hoeger', '2018-12-10 11:43:33', '2018-12-10 11:43:33'),
(84, 'Prof. Peggie Yundt III', '2018-12-10 11:43:34', '2018-12-10 11:43:34'),
(85, 'Ms. Stephany Oberbrunner DVM', '2018-12-10 11:43:34', '2018-12-10 11:43:34'),
(86, 'Leda Hammes', '2018-12-10 11:43:34', '2018-12-10 11:43:34'),
(87, 'Chelsie Raynor', '2018-12-10 11:43:34', '2018-12-10 11:43:34'),
(88, 'Prof. Dejah Quigley', '2018-12-10 11:43:34', '2018-12-10 11:43:34'),
(89, 'Ms. Sadye Krajcik V', '2018-12-10 11:43:34', '2018-12-10 11:43:34'),
(90, 'Lindsey O\'Keefe Jr.', '2018-12-10 11:43:34', '2018-12-10 11:43:34'),
(91, 'Beverly D\'Amore', '2018-12-10 11:43:34', '2018-12-10 11:43:34'),
(92, 'Mrs. Birdie Bechtelar', '2018-12-10 11:43:34', '2018-12-10 11:43:34'),
(93, 'Fidel Schuster', '2018-12-10 11:43:34', '2018-12-10 11:43:34'),
(94, 'Mrs. Dora Ruecker III', '2018-12-10 11:43:34', '2018-12-10 11:43:34'),
(95, 'Eryn Runolfsdottir', '2018-12-10 11:43:34', '2018-12-10 11:43:34'),
(96, 'Prof. Renee Kuphal', '2018-12-10 11:43:34', '2018-12-10 11:43:34'),
(97, 'Dr. Vernice Mueller Jr.', '2018-12-10 11:43:34', '2018-12-10 11:43:34'),
(98, 'Kaitlyn Erdman', '2018-12-10 11:43:34', '2018-12-10 11:43:34'),
(99, 'Caroline Oberbrunner DDS', '2018-12-10 11:43:34', '2018-12-10 11:43:34'),
(100, 'Eduardo Muller', '2018-12-10 11:43:34', '2018-12-10 11:43:34');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `city_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Cẩm Lệ', NULL, NULL),
(2, 3, 'Hải Châu', NULL, NULL),
(3, 3, 'Hòa Vang', NULL, NULL),
(4, 3, 'Hoàng Sa', NULL, NULL),
(5, 3, 'Liên Chiểu', NULL, NULL),
(6, 3, 'Ngũ Hành Sơn', NULL, NULL),
(7, 3, 'Sơn Trà', NULL, NULL),
(8, 3, 'Thanh Khê', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_04_19_153944_create_products_table', 1),
(4, '2017_05_04_051025_create_type_table', 1),
(5, '2017_05_04_112830_create_countries_table', 1),
(6, '2017_05_04_113558_create_cities_table', 1),
(7, '2017_05_04_123741_create_addresses_table', 1),
(8, '2017_05_05_102043_create_shop-assignment_table', 1),
(9, '2017_05_05_164904_create_shop_image_table', 1),
(10, '2017_05_06_105345_create_shops_table', 1),
(11, '2017_05_06_130158_create_categories_table', 1),
(12, '2017_05_08_025322_update2_users_table', 1),
(13, '2017_05_08_031851_create_order_products_table', 1),
(14, '2017_05_08_064821_create_product_images_table', 1),
(15, '2017_05_08_072914_create_orders_table', 1),
(16, '2017_05_08_073235_remove_name_column_users_table', 1),
(17, '2017_05_08_123841_create_roles_table', 1),
(18, '2017_05_08_125303_create_assignments_table', 1),
(19, '2017_05_08_130412_create_contacts_table', 1),
(20, '2017_05_08_133633_create_districts_table', 1),
(21, '2017_05_08_172525_update_cities_table', 1),
(22, '2017_05_09_033721_create_productimages_references_table', 1),
(23, '2017_05_09_035923_create_orderproduct_references_table', 1),
(24, '2017_05_09_053408_create_references_shops_table', 1),
(25, '2017_05_09_111500_create_products_references_table', 1),
(26, '2017_05_09_111552_create_categories_references_table', 1),
(27, '2017_05_09_113924_create-relationship-for-assignments-table', 1),
(28, '2017_05_09_114013_create_orders_references_table', 1),
(29, '2017_05_10_020945_create_relationship_for_addresses_table', 1),
(30, '2017_05_10_023647_create_foreign_for_districts_table', 1),
(31, '2017_05_10_031928_create_foreign_for_cities_table', 1),
(32, '2017_05_10_094533_create_references_shopimages_table', 1),
(33, '2017_05_10_095758_create_references_shopassignments_table', 1),
(34, '2017_05_11_020808_update_data_type_price_column_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `shipping_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `shipping_name`, `shipping_address`, `shipping_phone`, `shipping_email`, `country_id`, `city_id`, `district_id`, `status`, `created_at`, `updated_at`) VALUES
(784577775, 5, 'heheh', 'hheehe', 'hehehe', 'eheheh@heheh.com', 20, 1, 1, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 784577775, 1, '47.00', 2, '2018-12-10 14:20:17', '2018-12-10 14:20:17');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `description`, `price`, `quantity`, `category_id`, `shop_id`, `created_at`, `updated_at`) VALUES
(1, 'Tudung', '2018-12-10-035040-tudungjpg', 'tudung cantik', '47.00', 4, 1, 1, '2018-12-10 11:50:40', '2018-12-10 11:50:40');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'ini untuk admin drokal', NULL, '2018-12-10 14:51:02'),
(2, 'Pembekal', 'ini untuk pembekal', NULL, '2018-12-10 14:51:28'),
(3, 'Dropshipper', 'ini untuk dropshipper', '2018-12-10 14:51:45', '2018-12-10 14:51:45');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `name`, `user_id`, `type_id`, `city_id`, `district_id`, `country_id`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cait Store', 4, 1, 17, 8, 17, 'hehehe', '2018-12-10-034952-cait-storejpg', 0, '2018-12-10 11:49:52', '2018-12-10 11:49:52'),
(2, 'mobile', 5, 1, 1, 1, 1, 'test', '2018-12-10-035417-mobilejpg', 0, '2018-12-10 11:54:18', '2018-12-10 11:54:18');

-- --------------------------------------------------------

--
-- Table structure for table `shop_assignments`
--

CREATE TABLE `shop_assignments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_assignments`
--

INSERT INTO `shop_assignments` (`id`, `name`, `user_id`, `shop_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'Zahit', 4, 1, 1, '2018-12-09 08:00:00', '2018-12-09 08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `shop_images`
--

CREATE TABLE `shop_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `shop_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Bisnes Pakaian', NULL, '2018-12-10 14:58:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(10) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `district_id` int(10) UNSIGNED DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role_id`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `phone_number`, `date_of_birth`, `city_id`, `country_id`, `district_id`, `address`, `avatar`) VALUES
(2, 'hoanhthanh02hbc@gmail.com', '$2y$10$4tV6m4JQswASsxpUXGDdfuOtQLoEFTzSMrwlHAiSRc67oXMpFd6US', NULL, NULL, NULL, NULL, 'Vân', 'Nguyễn', '0905058325', '1987-07-08', 3, 1, 2, '02 Hồ Biểu Chánh, Hòa Cường Nam', 'VanNguyen'),
(3, 'dunghtk87@gmail.com', '$2y$10$fVWmzUzRYNDpyHSW/9hk4OrmbkrWOy39u4IFz0xM.6NJdnCjPw9hy', NULL, NULL, NULL, NULL, 'Dung', 'Hương Trần Kiều', '0905366366', '1987-07-07', 3, 1, 2, '24 Phan Đăng Lưu', 'DungHuongTranKieu'),
(4, 'zahitamin@gmail.com', '$2y$10$HBIDrtVTZ7AWIlWo97SFMe12XnMvz8AllaD4uXEtiRtwMj7D4NC5a', 1, 'PTXb7MR5TUtVOOjyVTvFDBMf0LGLrsCfKuQOoRQutlvznQeCrGQMwUNHQuoP', '2018-12-10 11:48:00', '2018-12-10 12:00:24', 'zahit', 'amin', '601126200408', '1998-09-19', 19, 18, 5, '185 lorong merbau 1', NULL),
(5, 'labeyla2016@gmail.com', '$2y$10$fn8ACL0mjISuk8PXMg7qV.JnSeJQNuot50B6FVaAbud5OPCAjfCAC', 2, 'yby4P987i3lesEOCEX30wZzc4VqZG0WBp8jNQWwPMyNpbaKIv0XYu7BFuSY2', '2018-12-10 11:53:32', '2018-12-10 12:00:45', 'labeyla', 'labeyla', '601126200408', '1998-09-19', 1, 1, 1, '185 lorong merbau 1', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`),
  ADD KEY `addresses_country_id_foreign` (`country_id`),
  ADD KEY `addresses_city_id_foreign` (`city_id`),
  ADD KEY `addresses_district_id_foreign` (`district_id`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assignments_role_id_foreign` (`role_id`),
  ADD KEY `assignments_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_type_id_foreign` (`type_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_country_id_foreign` (`country_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districts_city_id_foreign` (`city_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_country_id_foreign` (`country_id`),
  ADD KEY `orders_city_id_foreign` (`city_id`),
  ADD KEY `orders_district_id_foreign` (`district_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_order_id_foreign` (`order_id`),
  ADD KEY `order_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_shop_id_foreign` (`shop_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shops_user_id_foreign` (`user_id`),
  ADD KEY `shops_type_id_foreign` (`type_id`),
  ADD KEY `shops_city_id_foreign` (`city_id`),
  ADD KEY `shops_district_id_foreign` (`district_id`),
  ADD KEY `shops_country_id_foreign` (`country_id`);

--
-- Indexes for table `shop_assignments`
--
ALTER TABLE `shop_assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_assignments_user_id_foreign` (`user_id`),
  ADD KEY `shop_assignments_shop_id_foreign` (`shop_id`),
  ADD KEY `shop_assignments_role_id_foreign` (`role_id`);

--
-- Indexes for table `shop_images`
--
ALTER TABLE `shop_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_images_shop_id_foreign` (`shop_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
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
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=784577776;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shop_assignments`
--
ALTER TABLE `shop_assignments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shop_images`
--
ALTER TABLE `shop_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `addresses_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `addresses_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assignments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shops`
--
ALTER TABLE `shops`
  ADD CONSTRAINT `shops_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shops_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shops_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shops_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shops_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shop_assignments`
--
ALTER TABLE `shop_assignments`
  ADD CONSTRAINT `shop_assignments_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shop_assignments_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shop_assignments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shop_images`
--
ALTER TABLE `shop_images`
  ADD CONSTRAINT `shop_images_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
