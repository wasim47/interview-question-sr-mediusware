-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2022 at 06:23 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `interview_mediusware`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_post` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_category_id` bigint(20) UNSIGNED NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_tags`
--

CREATE TABLE `blog_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(6, '2020_08_28_072131_create_blog_categories_table', 3),
(7, '2020_08_28_072234_create_blogs_table', 3),
(8, '2020_08_28_103502_create_variants_table', 3),
(10, '2020_08_28_104103_create_blog_tags_table', 3),
(14, '2020_08_28_063029_create_products_table', 4),
(15, '2020_08_28_103644_create_product_images_table', 4),
(16, '2020_08_31_065549_create_product_variants_table', 4),
(17, '2020_08_31_073704_create_product_variant_prices_table', 4),
(18, '2020_08_31_081510_create_product_variant_price_relation_table', 4);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `sku`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Product Name', 'asdflasdf', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)', '2020-08-31 02:18:53', '2020-08-31 02:18:53'),
(2, 'Product Two', 'adfsadfsasf', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)', '2020-08-31 09:25:57', '2020-08-31 09:25:57'),
(3, 'Product Three', 'afdafdfasdfasasdf', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)', '2020-08-31 10:21:29', '2020-08-31 10:21:29'),
(4, 'Product Four', 'afdafdfasdfasasdfadsf', 'adsfadft is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)', '2020-08-31 10:21:44', '2020-08-31 10:21:44'),
(5, 'T-Shirt', 't-shirt', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)', '2020-08-31 10:37:15', '2020-08-31 10:37:15'),
(6, 'T-Shirt RED', 't-shirt-red', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)', '2020-08-31 10:38:17', '2020-08-31 10:38:17'),
(7, 'Formal Shirt', 'formal-shirt', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)', '2020-08-31 10:38:39', '2020-08-31 10:38:39'),
(8, 'dfd', 'fdf', 'dfdfdf', '2021-11-13 08:15:45', '2021-11-13 08:15:45'),
(9, 'wasim', '65456', 'dfdfdf', '2021-11-13 08:15:59', '2021-11-13 08:15:59'),
(10, 'df dfd', 'f df', 'ad fdfdf', '2021-11-13 08:16:30', '2021-11-13 08:16:30'),
(21, 'Product Name', '3951', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)', '2021-11-13 08:31:42', '2021-11-13 08:31:42'),
(22, 'Product Name', '3651', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)', '2021-11-13 08:31:44', '2021-11-13 08:31:44'),
(23, 'Product Name', '90022', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)', '2021-11-13 08:38:24', '2021-11-13 08:38:24'),
(24, 'Product Name', '37523', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)', '2021-11-13 08:42:41', '2021-11-13 08:42:41'),
(25, 'Product Name', '49424', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)', '2021-11-13 08:42:42', '2021-11-13 08:42:42'),
(26, 'Product Name', '43725', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)', '2021-11-13 08:42:43', '2021-11-13 08:42:43'),
(27, 'Product Name', '41426', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)', '2021-11-13 08:42:44', '2021-11-13 08:42:44'),
(28, 'Product Name', '69626', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)', '2021-11-13 08:42:44', '2021-11-13 08:42:44'),
(29, 'Product Name', '61126', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)', '2021-11-13 08:42:45', '2021-11-13 08:42:45'),
(30, 'Product Name', '60326', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)', '2021-11-13 08:42:45', '2021-11-13 08:42:45'),
(31, 'Product Name', '56526', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)', '2021-11-13 08:42:45', '2021-11-13 08:42:45'),
(32, 'Product Name', '33626', 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)', '2021-11-13 08:42:45', '2021-11-13 08:42:45'),
(33, 'Shirts', '', NULL, '2021-11-13 11:43:31', '2021-11-13 11:43:31'),
(37, 'Men\'s Watch for smartness', '45789', 'Pictures, abstract symbols, materials, and colors are among the ingredients with which a designer or engineer works. To design is to discover relationships and to make arrangements and rearrangements among these ingredients.', '2021-11-13 12:50:31', '2021-11-13 12:50:31'),
(38, 'Shirts', '4879', 'Men\'s shirts for winter', '2021-11-14 17:59:01', '2021-11-14 17:59:01'),
(39, 'df df', '578', NULL, '2021-11-14 18:16:34', '2021-11-14 18:16:34'),
(41, 'df df', '57812', NULL, '2021-11-14 18:17:26', '2021-11-14 18:17:26'),
(42, 'Blager', '78410', 'Men\'s winter Blager', '2021-11-14 18:29:02', '2021-11-14 18:29:02'),
(43, 'Full sleeve Shirts', '123123', 'Full sleeve Shirts', '2021-11-14 18:46:19', '2021-11-14 18:46:19'),
(47, 'df df', '546', 'df df', '2021-11-14 19:01:52', '2021-11-14 19:01:52'),
(48, 'T-Shirts', '455000', 'dfd', '2021-11-16 09:10:44', '2021-11-16 09:10:44'),
(49, 'Women Dress', '4567489', 'Women Dress', '2021-11-16 09:25:46', '2021-11-16 09:25:46'),
(50, 'Women Dress', '45674890', 'Women Dress', '2021-11-16 09:25:54', '2021-11-16 09:25:54'),
(54, 'Women Dress', '4500145', 'Women Dress', '2021-11-16 09:29:28', '2021-11-16 09:29:28'),
(56, 'Women Dress', '45001450', 'Women Dress', '2021-11-16 09:29:50', '2021-11-16 09:29:50'),
(58, 'Women Dress', '4500145011', 'Women Dress', '2021-11-16 09:30:48', '2021-11-16 09:30:48'),
(59, 'Women Dress', '45001450110', 'Women Dress', '2021-11-16 09:32:17', '2021-11-16 09:32:17'),
(60, 'Women Dress', '11045', 'Women Dress', '2021-11-16 09:33:07', '2021-11-16 09:33:07'),
(61, 'Women Dress', '11045001', 'Women Dress', '2021-11-16 09:45:15', '2021-11-16 09:45:15'),
(62, 'Women Dress', '110450012', 'Women Dress', '2021-11-16 09:47:01', '2021-11-16 09:47:01'),
(63, 'fddf', '343', NULL, '2021-11-16 09:56:09', '2021-11-16 09:56:09'),
(64, 'Test Items', '1104500120', NULL, '2021-11-16 10:11:03', '2021-11-16 10:11:03'),
(65, 'Tetdf', '11045001211', NULL, '2021-11-16 10:13:08', '2021-11-16 10:13:08'),
(66, 'eteed', '3433', NULL, '2021-11-16 10:13:49', '2021-11-16 10:13:49'),
(67, 'Shirts', 'S456', 'Test', '2022-11-05 11:19:24', '2022-11-05 11:19:24'),
(68, 'Shirts', '53367', 'Test', '2022-11-05 11:19:40', '2022-11-05 11:19:40'),
(69, 'Shirt Items', '789E', 'Test products', '2022-11-05 11:22:27', '2022-11-05 11:22:27');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `variant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variant_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `variant`, `variant_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'red', 1, 1, '2020-08-30 20:18:53', '2020-08-30 20:18:53'),
(2, 'green', 1, 1, '2020-08-30 20:18:53', '2020-08-30 20:18:53'),
(3, 'blue', 1, 1, '2020-08-30 20:18:53', '2020-08-30 20:18:53'),
(4, 'xl', 2, 1, '2020-08-30 20:18:53', '2020-08-30 20:18:53'),
(5, 'sm', 2, 1, '2020-08-30 20:18:53', '2020-08-30 20:18:53'),
(6, 'm', 2, 1, '2020-08-30 20:18:53', '2020-08-30 20:18:53'),
(7, 'XL', 2, 2, '2020-08-31 03:25:57', '2020-08-31 03:25:57'),
(8, 'L', 2, 2, '2020-08-31 03:25:57', '2020-08-31 03:25:57'),
(9, 'red', 1, 2, '2020-08-31 03:25:57', '2020-08-31 03:25:57'),
(10, 'green', 1, 2, '2020-08-31 03:25:57', '2020-08-31 03:25:57'),
(11, 'blue', 1, 2, '2020-08-31 03:25:57', '2020-08-31 03:25:57'),
(12, 'red', 1, 3, '2020-08-31 04:21:29', '2020-08-31 04:21:29'),
(13, 'green', 1, 3, '2020-08-31 04:21:30', '2020-08-31 04:21:30'),
(14, 'xl', 2, 3, '2020-08-31 04:21:30', '2020-08-31 04:21:30'),
(15, 'l', 2, 3, '2020-08-31 04:21:30', '2020-08-31 04:21:30'),
(16, 'm', 2, 3, '2020-08-31 04:21:30', '2020-08-31 04:21:30'),
(17, 'v-nick', 6, 3, '2020-08-31 04:21:30', '2020-08-31 04:21:30'),
(18, 'o-nick', 6, 3, '2020-08-31 04:21:30', '2020-08-31 04:21:30'),
(19, 'red', 1, 4, '2020-08-31 04:21:44', '2020-08-31 04:21:44'),
(20, 'green', 1, 4, '2020-08-31 04:21:44', '2020-08-31 04:21:44'),
(21, 'xl', 2, 4, '2020-08-31 04:21:44', '2020-08-31 04:21:44'),
(22, 'l', 2, 4, '2020-08-31 04:21:44', '2020-08-31 04:21:44'),
(23, 'm', 2, 4, '2020-08-31 04:21:44', '2020-08-31 04:21:44'),
(24, 'v-nick', 6, 4, '2020-08-31 04:21:44', '2020-08-31 04:21:44'),
(25, 'o-nick', 6, 4, '2020-08-31 04:21:44', '2020-08-31 04:21:44'),
(26, 'red', 1, 5, '2020-08-31 04:37:15', '2020-08-31 04:37:15'),
(27, 'green', 1, 5, '2020-08-31 04:37:15', '2020-08-31 04:37:15'),
(28, 'xl', 2, 5, '2020-08-31 04:37:15', '2020-08-31 04:37:15'),
(29, 'l', 2, 5, '2020-08-31 04:37:15', '2020-08-31 04:37:15'),
(30, 'm', 2, 5, '2020-08-31 04:37:15', '2020-08-31 04:37:15'),
(31, 'v-nick', 6, 5, '2020-08-31 04:37:15', '2020-08-31 04:37:15'),
(32, 'o-nick', 6, 5, '2020-08-31 04:37:15', '2020-08-31 04:37:15'),
(33, 'red', 1, 6, '2020-08-31 04:38:17', '2020-08-31 04:38:17'),
(34, 'green', 1, 6, '2020-08-31 04:38:17', '2020-08-31 04:38:17'),
(35, 'xl', 2, 6, '2020-08-31 04:38:18', '2020-08-31 04:38:18'),
(36, 'l', 2, 6, '2020-08-31 04:38:18', '2020-08-31 04:38:18'),
(37, 'm', 2, 6, '2020-08-31 04:38:18', '2020-08-31 04:38:18'),
(38, 'v-nick', 6, 6, '2020-08-31 04:38:18', '2020-08-31 04:38:18'),
(39, 'o-nick', 6, 6, '2020-08-31 04:38:18', '2020-08-31 04:38:18'),
(40, 'red', 1, 7, '2020-08-31 04:38:39', '2020-08-31 04:38:39'),
(41, 'green', 1, 7, '2020-08-31 04:38:39', '2020-08-31 04:38:39'),
(42, 'xl', 2, 7, '2020-08-31 04:38:39', '2020-08-31 04:38:39'),
(43, 'l', 2, 7, '2020-08-31 04:38:39', '2020-08-31 04:38:39'),
(44, 'm', 2, 7, '2020-08-31 04:38:39', '2020-08-31 04:38:39'),
(45, 'v-nick', 6, 7, '2020-08-31 04:38:39', '2020-08-31 04:38:39'),
(46, 'o-nick', 6, 7, '2020-08-31 04:38:39', '2020-08-31 04:38:39'),
(47, 'Sky', 1, 37, NULL, NULL),
(48, 'Red', 1, 38, NULL, NULL),
(49, 'Black', 1, 42, NULL, NULL),
(50, 'XL', 2, 42, NULL, NULL),
(51, 'Cotton', 6, 42, NULL, NULL),
(52, 'red', 1, 58, NULL, NULL),
(53, 'green', 1, 58, NULL, NULL),
(54, 'blue', 1, 58, NULL, NULL),
(55, 'm', 2, 58, NULL, NULL),
(56, 'L', 2, 58, NULL, NULL),
(57, 'S', 2, 58, NULL, NULL),
(58, 'Cotton', 6, 58, NULL, NULL),
(59, 'moslin', 6, 58, NULL, NULL),
(60, 'red', 1, 59, NULL, NULL),
(61, 'm', 2, 59, NULL, NULL),
(62, 'Cotton', 6, 59, NULL, NULL),
(63, 'red', 1, 60, NULL, NULL),
(64, 'm', 2, 60, NULL, NULL),
(65, 'Cotton', 6, 60, NULL, NULL),
(66, 'm', 2, 61, NULL, NULL),
(67, 'L', 2, 61, NULL, NULL),
(68, 'S', 2, 61, NULL, NULL),
(69, 'l', 2, 61, NULL, NULL),
(70, 'Cotton', 6, 61, NULL, NULL),
(71, 'moslin', 6, 61, NULL, NULL),
(72, 'red', 1, 61, NULL, NULL),
(73, 'green', 1, 61, NULL, NULL),
(74, 'blue', 1, 61, NULL, NULL),
(75, 'm', 2, 62, NULL, NULL),
(76, 'L', 2, 62, NULL, NULL),
(77, 'S', 2, 62, NULL, NULL),
(78, 'l', 2, 62, NULL, NULL),
(79, 'Cotton', 6, 62, NULL, NULL),
(80, 'moslin', 6, 62, NULL, NULL),
(81, 'red', 1, 62, NULL, NULL),
(82, 'green', 1, 62, NULL, NULL),
(83, 'blue', 1, 62, NULL, NULL),
(84, 'Red', 1, 69, NULL, NULL),
(85, 'Green', 1, 69, NULL, NULL),
(86, 'Blue', 1, 69, NULL, NULL),
(87, 'XL', 2, 69, NULL, NULL),
(88, 'L', 2, 69, NULL, NULL),
(89, 'M', 2, 69, NULL, NULL),
(90, 'Cutton', 6, 69, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_prices`
--

CREATE TABLE `product_variant_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_one` bigint(20) UNSIGNED DEFAULT NULL,
  `product_variant_two` bigint(20) UNSIGNED DEFAULT NULL,
  `product_variant_three` bigint(20) UNSIGNED DEFAULT NULL,
  `price` double NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variant_prices`
--

INSERT INTO `product_variant_prices` (`id`, `product_variant_one`, `product_variant_two`, `product_variant_three`, `price`, `stock`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 4, NULL, 150, 150, 1, '2020-08-31 02:18:53', '2020-08-31 02:18:53'),
(2, 1, 5, NULL, 15, 54, 1, '2020-08-31 02:18:53', '2020-08-31 02:18:53'),
(3, 1, 6, NULL, 56, 546, 1, '2020-08-31 02:18:53', '2020-08-31 02:18:53'),
(4, 2, 4, NULL, 54, 45, 1, '2020-08-31 02:18:53', '2020-08-31 02:18:53'),
(5, 2, 5, NULL, 45, 45, 1, '2020-08-31 02:18:53', '2020-08-31 02:18:53'),
(6, 2, 6, NULL, 454, 45, 1, '2020-08-31 02:18:53', '2020-08-31 02:18:53'),
(7, 3, 4, NULL, 45, 54, 1, '2020-08-31 02:18:53', '2020-08-31 02:18:53'),
(8, 3, 5, NULL, 54, 54, 1, '2020-08-31 02:18:53', '2020-08-31 02:18:53'),
(9, 3, 6, NULL, 54, 545, 1, '2020-08-31 02:18:53', '2020-08-31 02:18:53'),
(10, 4, 1, NULL, 150, 150, 2, '2020-08-31 09:25:57', '2020-08-31 09:25:57'),
(11, 4, 2, NULL, 15, 15, 2, '2020-08-31 09:25:57', '2020-08-31 09:25:57'),
(12, 4, 3, NULL, 15, 15, 2, '2020-08-31 09:25:57', '2020-08-31 09:25:57'),
(13, 8, 1, NULL, 15, 15, 2, '2020-08-31 09:25:57', '2020-08-31 09:25:57'),
(14, 8, 2, NULL, 15, 15, 2, '2020-08-31 09:25:57', '2020-08-31 09:25:57'),
(15, 8, 3, NULL, 51, 515, 2, '2020-08-31 09:25:57', '2020-08-31 09:25:57'),
(16, 1, 4, 17, 0, 0, 3, '2020-08-31 10:21:30', '2020-08-31 10:21:30'),
(17, 1, 4, 18, 0, 0, 3, '2020-08-31 10:21:30', '2020-08-31 10:21:30'),
(18, 1, 8, 17, 0, 0, 3, '2020-08-31 10:21:30', '2020-08-31 10:21:30'),
(19, 1, 8, 18, 0, 0, 3, '2020-08-31 10:21:30', '2020-08-31 10:21:30'),
(20, 1, 6, 17, 0, 0, 3, '2020-08-31 10:21:30', '2020-08-31 10:21:30'),
(21, 1, 6, 18, 0, 0, 3, '2020-08-31 10:21:30', '2020-08-31 10:21:30'),
(22, 2, 4, 17, 0, 0, 3, '2020-08-31 10:21:30', '2020-08-31 10:21:30'),
(23, 2, 4, 18, 0, 0, 3, '2020-08-31 10:21:30', '2020-08-31 10:21:30'),
(24, 2, 8, 17, 0, 0, 3, '2020-08-31 10:21:30', '2020-08-31 10:21:30'),
(25, 2, 8, 18, 0, 0, 3, '2020-08-31 10:21:30', '2020-08-31 10:21:30'),
(26, 2, 6, 17, 0, 0, 3, '2020-08-31 10:21:30', '2020-08-31 10:21:30'),
(27, 2, 6, 18, 0, 0, 3, '2020-08-31 10:21:30', '2020-08-31 10:21:30'),
(28, 1, 4, 17, 0, 0, 4, '2020-08-31 10:21:44', '2020-08-31 10:21:44'),
(29, 1, 4, 18, 0, 0, 4, '2020-08-31 10:21:44', '2020-08-31 10:21:44'),
(30, 1, 8, 17, 0, 0, 4, '2020-08-31 10:21:44', '2020-08-31 10:21:44'),
(31, 1, 8, 18, 0, 0, 4, '2020-08-31 10:21:44', '2020-08-31 10:21:44'),
(32, 1, 6, 17, 0, 0, 4, '2020-08-31 10:21:44', '2020-08-31 10:21:44'),
(33, 1, 6, 18, 0, 0, 4, '2020-08-31 10:21:44', '2020-08-31 10:21:44'),
(34, 2, 4, 17, 0, 0, 4, '2020-08-31 10:21:45', '2020-08-31 10:21:45'),
(35, 2, 4, 18, 0, 0, 4, '2020-08-31 10:21:45', '2020-08-31 10:21:45'),
(36, 2, 8, 17, 0, 0, 4, '2020-08-31 10:21:45', '2020-08-31 10:21:45'),
(37, 2, 8, 18, 0, 0, 4, '2020-08-31 10:21:45', '2020-08-31 10:21:45'),
(38, 2, 6, 17, 0, 0, 4, '2020-08-31 10:21:45', '2020-08-31 10:21:45'),
(39, 2, 6, 18, 0, 0, 4, '2020-08-31 10:21:45', '2020-08-31 10:21:45'),
(40, 1, 4, 17, 0, 0, 5, '2020-08-31 10:37:15', '2020-08-31 10:37:15'),
(41, 1, 4, 18, 0, 0, 5, '2020-08-31 10:37:15', '2020-08-31 10:37:15'),
(42, 1, 8, 17, 0, 0, 5, '2020-08-31 10:37:15', '2020-08-31 10:37:15'),
(43, 1, 8, 18, 0, 0, 5, '2020-08-31 10:37:15', '2020-08-31 10:37:15'),
(44, 1, 6, 17, 0, 0, 5, '2020-08-31 10:37:15', '2020-08-31 10:37:15'),
(45, 1, 6, 18, 0, 0, 5, '2020-08-31 10:37:15', '2020-08-31 10:37:15'),
(46, 2, 4, 17, 0, 0, 5, '2020-08-31 10:37:15', '2020-08-31 10:37:15'),
(47, 2, 4, 18, 0, 0, 5, '2020-08-31 10:37:15', '2020-08-31 10:37:15'),
(48, 2, 8, 17, 0, 0, 5, '2020-08-31 10:37:15', '2020-08-31 10:37:15'),
(49, 2, 8, 18, 0, 0, 5, '2020-08-31 10:37:15', '2020-08-31 10:37:15'),
(50, 2, 6, 17, 0, 0, 5, '2020-08-31 10:37:15', '2020-08-31 10:37:15'),
(51, 2, 6, 18, 0, 0, 5, '2020-08-31 10:37:15', '2020-08-31 10:37:15'),
(52, 1, 4, 17, 0, 0, 6, '2020-08-31 10:38:18', '2020-08-31 10:38:18'),
(53, 1, 4, 18, 0, 0, 6, '2020-08-31 10:38:18', '2020-08-31 10:38:18'),
(54, 1, 8, 17, 0, 0, 6, '2020-08-31 10:38:18', '2020-08-31 10:38:18'),
(55, 1, 8, 18, 0, 0, 6, '2020-08-31 10:38:18', '2020-08-31 10:38:18'),
(56, 1, 6, 17, 0, 0, 6, '2020-08-31 10:38:18', '2020-08-31 10:38:18'),
(57, 1, 6, 18, 0, 0, 6, '2020-08-31 10:38:18', '2020-08-31 10:38:18'),
(58, 2, 4, 17, 0, 0, 6, '2020-08-31 10:38:18', '2020-08-31 10:38:18'),
(59, 2, 4, 18, 0, 0, 6, '2020-08-31 10:38:18', '2020-08-31 10:38:18'),
(60, 2, 8, 17, 0, 0, 6, '2020-08-31 10:38:18', '2020-08-31 10:38:18'),
(61, 2, 8, 18, 0, 0, 6, '2020-08-31 10:38:18', '2020-08-31 10:38:18'),
(62, 2, 6, 17, 0, 0, 6, '2020-08-31 10:38:18', '2020-08-31 10:38:18'),
(63, 2, 6, 18, 0, 0, 6, '2020-08-31 10:38:18', '2020-08-31 10:38:18'),
(64, 1, 4, 17, 0, 0, 7, '2020-08-31 10:38:39', '2020-08-31 10:38:39'),
(65, 1, 4, 18, 0, 0, 7, '2020-08-31 10:38:39', '2020-08-31 10:38:39'),
(66, 1, 8, 17, 0, 0, 7, '2020-08-31 10:38:39', '2020-08-31 10:38:39'),
(67, 1, 8, 18, 0, 0, 7, '2020-08-31 10:38:39', '2020-08-31 10:38:39'),
(68, 1, 6, 17, 0, 0, 7, '2020-08-31 10:38:40', '2020-08-31 10:38:40'),
(69, 1, 6, 18, 0, 0, 7, '2020-08-31 10:38:40', '2020-08-31 10:38:40'),
(70, 2, 4, 17, 0, 0, 7, '2020-08-31 10:38:40', '2020-08-31 10:38:40'),
(71, 2, 4, 18, 0, 0, 7, '2020-08-31 10:38:40', '2020-08-31 10:38:40'),
(72, 2, 8, 17, 0, 0, 7, '2020-08-31 10:38:40', '2020-08-31 10:38:40'),
(73, 2, 8, 18, 0, 0, 7, '2020-08-31 10:38:40', '2020-08-31 10:38:40'),
(74, 2, 6, 17, 0, 0, 7, '2020-08-31 10:38:40', '2020-08-31 10:38:40'),
(75, 2, 6, 18, 0, 0, 7, '2020-08-31 10:38:40', '2020-08-31 10:38:40'),
(76, 1, 4, NULL, 150, 150, 21, '2021-11-13 08:31:42', '2021-11-13 08:31:42'),
(77, 1, 4, NULL, 150, 150, 22, '2021-11-13 08:31:44', '2021-11-13 08:31:44'),
(78, 1, 4, NULL, 150, 150, 23, '2021-11-13 08:38:24', '2021-11-13 08:38:24'),
(79, 1, 4, NULL, 150, 150, 24, '2021-11-13 08:42:41', '2021-11-13 08:42:41'),
(80, 1, 4, NULL, 150, 150, 25, '2021-11-13 08:42:42', '2021-11-13 08:42:42'),
(81, 1, 4, NULL, 150, 150, 26, '2021-11-13 08:42:43', '2021-11-13 08:42:43'),
(82, 1, 4, NULL, 150, 150, 27, '2021-11-13 08:42:44', '2021-11-13 08:42:44'),
(83, 1, 4, NULL, 150, 150, 28, '2021-11-13 08:42:44', '2021-11-13 08:42:44'),
(84, 1, 4, NULL, 150, 150, 29, '2021-11-13 08:42:45', '2021-11-13 08:42:45'),
(85, 1, 4, NULL, 150, 150, 30, '2021-11-13 08:42:45', '2021-11-13 08:42:45'),
(86, 1, 4, NULL, 150, 150, 31, '2021-11-13 08:42:45', '2021-11-13 08:42:45'),
(87, 1, 4, NULL, 150, 150, 32, '2021-11-13 08:42:45', '2021-11-13 08:42:45'),
(88, 49, 49, 49, 1500, 10, 1, NULL, NULL),
(89, 49, 49, 49, 1500, 10, 1, NULL, NULL),
(90, 49, 49, 49, 1500, 10, 1, NULL, NULL),
(91, 49, 49, 49, 1500, 10, 1, NULL, NULL),
(92, 49, 49, 49, 1500, 10, 1, NULL, NULL),
(93, 49, 49, 49, 1500, 10, 1, NULL, NULL),
(94, 49, 49, 49, 1500, 10, 1, NULL, NULL),
(95, 49, 49, 49, 1500, 10, 1, NULL, NULL),
(96, 49, 49, 49, 1500, 10, 1, NULL, NULL),
(97, 49, 49, 49, 1500, 10, 1, NULL, NULL),
(98, 49, 49, 49, 1500, 10, 1, NULL, NULL),
(99, 49, 49, 49, 1500, 10, 1, NULL, NULL),
(100, 49, 49, 49, 1500, 10, 1, NULL, NULL),
(101, 49, 49, 49, 1500, 10, 1, NULL, NULL),
(102, 49, 49, 49, 1500, 10, 1, NULL, NULL),
(103, 49, 49, 49, 1500, 10, 1, NULL, NULL),
(104, 49, 49, 49, 1500, 10, 1, NULL, NULL),
(105, 49, 49, 49, 1500, 10, 1, NULL, NULL),
(106, 49, 49, 49, 1500, 10, 1, NULL, NULL),
(107, 49, 49, 49, 1500, 10, 1, NULL, NULL),
(108, 49, 49, 49, 1500, 10, 1, NULL, NULL),
(109, 49, 49, 49, 1500, 10, 1, NULL, NULL),
(110, 49, 49, 49, 1500, 10, 1, NULL, NULL),
(111, 49, 49, 49, 1500, 10, 1, NULL, NULL),
(112, 60, 60, 60, 500, 5, 1, NULL, NULL),
(113, 60, 60, 60, 500, 5, 1, NULL, NULL),
(114, 60, 60, 60, 500, 5, 1, NULL, NULL),
(115, 60, 60, 60, 5004, 5, 1, NULL, NULL),
(116, 60, 60, 60, 500, 5, 1, NULL, NULL),
(117, 60, 60, 60, 500, 5, 1, NULL, NULL),
(118, 60, 60, 60, 500, 5, 1, NULL, NULL),
(119, 60, 60, 60, 2500, 6, 1, NULL, NULL),
(120, 60, 60, 60, 1500, 47, 1, NULL, NULL),
(121, 60, 60, 60, 500, 89, 1, NULL, NULL),
(122, 60, 60, 60, 5000, 1, 1, NULL, NULL),
(123, 60, 60, 60, 5008, 4, 1, NULL, NULL),
(124, 60, 60, 60, 5700, 6, 1, NULL, NULL),
(125, 60, 60, 60, 5080, 89, 1, NULL, NULL),
(126, 60, 60, 60, 5040, 4, 1, NULL, NULL),
(127, 60, 60, 60, 5000, 6, 1, NULL, NULL),
(128, 60, 60, 60, 1500, 3, 1, NULL, NULL),
(129, 60, 60, 60, 5070, 7, 1, NULL, NULL),
(130, 60, 60, 60, 500, 5, 1, NULL, NULL),
(131, 60, 60, 60, 500, 5, 1, NULL, NULL),
(132, 60, 60, 60, 500, 5, 1, NULL, NULL),
(133, 60, 60, 60, 5004, 5, 1, NULL, NULL),
(134, 60, 60, 60, 500, 5, 1, NULL, NULL),
(135, 60, 60, 60, 500, 5, 1, NULL, NULL),
(136, 60, 60, 60, 500, 5, 1, NULL, NULL),
(137, 60, 60, 60, 2500, 6, 1, NULL, NULL),
(138, 60, 60, 60, 1500, 47, 1, NULL, NULL),
(139, 60, 60, 60, 500, 89, 1, NULL, NULL),
(140, 60, 60, 60, 5000, 1, 1, NULL, NULL),
(141, 60, 60, 60, 5008, 4, 1, NULL, NULL),
(142, 60, 60, 60, 5700, 6, 1, NULL, NULL),
(143, 60, 60, 60, 5080, 89, 1, NULL, NULL),
(144, 60, 60, 60, 5040, 4, 1, NULL, NULL),
(145, 60, 60, 60, 5000, 6, 1, NULL, NULL),
(146, 60, 60, 60, 1500, 3, 1, NULL, NULL),
(147, 60, 60, 60, 5070, 7, 1, NULL, NULL),
(148, 60, 60, 60, 500, 5, 1, NULL, NULL),
(149, 60, 60, 60, 500, 5, 1, NULL, NULL),
(150, 60, 60, 60, 500, 5, 1, NULL, NULL),
(151, 60, 60, 60, 5004, 5, 1, NULL, NULL),
(152, 60, 60, 60, 500, 5, 1, NULL, NULL),
(153, 60, 60, 60, 500, 5, 1, NULL, NULL),
(154, 60, 60, 60, 500, 5, 1, NULL, NULL),
(155, 60, 60, 60, 2500, 6, 1, NULL, NULL),
(156, 60, 60, 60, 1500, 47, 1, NULL, NULL),
(157, 60, 60, 60, 500, 89, 1, NULL, NULL),
(158, 60, 60, 60, 5000, 1, 1, NULL, NULL),
(159, 60, 60, 60, 5008, 4, 1, NULL, NULL),
(160, 60, 60, 60, 5700, 6, 1, NULL, NULL),
(161, 60, 60, 60, 5080, 89, 1, NULL, NULL),
(162, 60, 60, 60, 5040, 4, 1, NULL, NULL),
(163, 60, 60, 60, 5000, 6, 1, NULL, NULL),
(164, 60, 60, 60, 1500, 3, 1, NULL, NULL),
(165, 60, 60, 60, 5070, 7, 1, NULL, NULL),
(166, 63, 63, 63, 500, 5, 60, NULL, NULL),
(167, 63, 63, 63, 500, 5, 60, NULL, NULL),
(168, 63, 63, 63, 500, 5, 60, NULL, NULL),
(169, 63, 63, 63, 5004, 5, 60, NULL, NULL),
(170, 63, 63, 63, 500, 5, 60, NULL, NULL),
(171, 63, 63, 63, 500, 5, 60, NULL, NULL),
(172, 63, 63, 63, 500, 5, 60, NULL, NULL),
(173, 63, 63, 63, 2500, 6, 60, NULL, NULL),
(174, 63, 63, 63, 1500, 47, 60, NULL, NULL),
(175, 63, 63, 63, 500, 89, 60, NULL, NULL),
(176, 63, 63, 63, 5000, 1, 60, NULL, NULL),
(177, 63, 63, 63, 5008, 4, 60, NULL, NULL),
(178, 63, 63, 63, 5700, 6, 60, NULL, NULL),
(179, 63, 63, 63, 5080, 89, 60, NULL, NULL),
(180, 63, 63, 63, 5040, 4, 60, NULL, NULL),
(181, 63, 63, 63, 5000, 6, 60, NULL, NULL),
(182, 63, 63, 63, 1500, 3, 60, NULL, NULL),
(183, 63, 63, 63, 5070, 7, 60, NULL, NULL),
(184, 63, 63, 63, 500, 5, 60, NULL, NULL),
(185, 63, 63, 63, 500, 5, 60, NULL, NULL),
(186, 63, 63, 63, 500, 5, 60, NULL, NULL),
(187, 63, 63, 63, 5004, 5, 60, NULL, NULL),
(188, 63, 63, 63, 500, 5, 60, NULL, NULL),
(189, 63, 63, 63, 500, 5, 60, NULL, NULL),
(190, 63, 63, 63, 500, 5, 60, NULL, NULL),
(191, 63, 63, 63, 2500, 6, 60, NULL, NULL),
(192, 63, 63, 63, 1500, 47, 60, NULL, NULL),
(193, 63, 63, 63, 500, 89, 60, NULL, NULL),
(194, 63, 63, 63, 5000, 1, 60, NULL, NULL),
(195, 63, 63, 63, 5008, 4, 60, NULL, NULL),
(196, 63, 63, 63, 5700, 6, 60, NULL, NULL),
(197, 63, 63, 63, 5080, 89, 60, NULL, NULL),
(198, 63, 63, 63, 5040, 4, 60, NULL, NULL),
(199, 63, 63, 63, 5000, 6, 60, NULL, NULL),
(200, 63, 63, 63, 1500, 3, 60, NULL, NULL),
(201, 63, 63, 63, 5070, 7, 60, NULL, NULL),
(202, 63, 63, 63, 500, 5, 60, NULL, NULL),
(203, 63, 63, 63, 500, 5, 60, NULL, NULL),
(204, 63, 63, 63, 500, 5, 60, NULL, NULL),
(205, 63, 63, 63, 5004, 5, 60, NULL, NULL),
(206, 63, 63, 63, 500, 5, 60, NULL, NULL),
(207, 63, 63, 63, 500, 5, 60, NULL, NULL),
(208, 63, 63, 63, 500, 5, 60, NULL, NULL),
(209, 63, 63, 63, 2500, 6, 60, NULL, NULL),
(210, 63, 63, 63, 1500, 47, 60, NULL, NULL),
(211, 63, 63, 63, 500, 89, 60, NULL, NULL),
(212, 63, 63, 63, 5000, 1, 60, NULL, NULL),
(213, 63, 63, 63, 5008, 4, 60, NULL, NULL),
(214, 63, 63, 63, 5700, 6, 60, NULL, NULL),
(215, 63, 63, 63, 5080, 89, 60, NULL, NULL),
(216, 63, 63, 63, 5040, 4, 60, NULL, NULL),
(217, 63, 63, 63, 5000, 6, 60, NULL, NULL),
(218, 63, 63, 63, 1500, 3, 60, NULL, NULL),
(219, 63, 63, 63, 5070, 7, 60, NULL, NULL),
(220, 66, 66, 66, 500, 7, 61, NULL, NULL),
(221, 66, 66, 66, 500, 7, 61, NULL, NULL),
(222, 66, 66, 66, 500, 6, 61, NULL, NULL),
(223, 66, 66, 66, 500, 5, 61, NULL, NULL),
(224, 66, 66, 66, 500, 3, 61, NULL, NULL),
(225, 66, 66, 66, 500, 6, 61, NULL, NULL),
(226, 69, 69, 69, 500, 5, 61, NULL, NULL),
(227, 69, 69, 69, 500, 4, 61, NULL, NULL),
(228, 69, 69, 69, 500, 3, 61, NULL, NULL),
(229, 69, 69, 69, 500, 9, 61, NULL, NULL),
(230, 69, 69, 69, 500, 8, 61, NULL, NULL),
(231, 69, 69, 69, 500, 7, 61, NULL, NULL),
(232, 68, 68, 68, 500, 6, 61, NULL, NULL),
(233, 68, 68, 68, 500, 5, 61, NULL, NULL),
(234, 68, 68, 68, 500, 4, 61, NULL, NULL),
(235, 68, 68, 68, 500, 40, 61, NULL, NULL),
(236, 68, 68, 68, 500, 3, 61, NULL, NULL),
(237, 68, 68, 68, 500, 2, 61, NULL, NULL),
(238, 69, 69, 69, 500, 7, 61, NULL, NULL),
(239, 69, 69, 69, 500, 8, 61, NULL, NULL),
(240, 69, 69, 69, 500, 5, 61, NULL, NULL),
(241, 69, 69, 69, 500, 6, 61, NULL, NULL),
(242, 69, 69, 69, 500, 4, 61, NULL, NULL),
(243, 69, 69, 69, 500, 6, 61, NULL, NULL),
(244, 75, 79, 81, 500, 7, 62, NULL, NULL),
(245, 75, 79, 82, 500, 7, 62, NULL, NULL),
(246, 75, 79, 83, 500, 6, 62, NULL, NULL),
(247, 75, 80, 81, 500, 5, 62, NULL, NULL),
(248, 75, 80, 82, 500, 3, 62, NULL, NULL),
(249, 75, 80, 83, 500, 6, 62, NULL, NULL),
(250, 78, 79, 81, 500, 5, 62, NULL, NULL),
(251, 78, 79, 82, 500, 4, 62, NULL, NULL),
(252, 78, 79, 83, 500, 3, 62, NULL, NULL),
(253, 78, 80, 81, 500, 9, 62, NULL, NULL),
(254, 78, 80, 82, 500, 8, 62, NULL, NULL),
(255, 78, 80, 83, 500, 7, 62, NULL, NULL),
(256, 77, 79, 81, 500, 6, 62, NULL, NULL),
(257, 77, 79, 82, 500, 5, 62, NULL, NULL),
(258, 77, 79, 83, 500, 4, 62, NULL, NULL),
(259, 77, 80, 81, 500, 40, 62, NULL, NULL),
(260, 77, 80, 82, 500, 3, 62, NULL, NULL),
(261, 77, 80, 83, 500, 2, 62, NULL, NULL),
(262, 78, 79, 81, 500, 7, 62, NULL, NULL),
(263, 78, 79, 82, 500, 8, 62, NULL, NULL),
(264, 78, 79, 83, 500, 5, 62, NULL, NULL),
(265, 78, 80, 81, 500, 6, 62, NULL, NULL),
(266, 78, 80, 82, 500, 4, 62, NULL, NULL),
(267, 78, 80, 83, 500, 6, 62, NULL, NULL),
(268, 84, 87, 90, 100, 10, 69, NULL, NULL),
(269, 84, 88, 90, 100, 20, 69, NULL, NULL),
(270, 84, 89, 90, 100, 15, 69, NULL, NULL),
(271, 85, 87, 90, 120, 12, 69, NULL, NULL),
(272, 85, 88, 90, 130, 13, 69, NULL, NULL),
(273, 85, 89, 90, 140, 14, 69, NULL, NULL),
(274, 86, 87, 90, 150, 15, 69, NULL, NULL),
(275, 86, 88, 90, 160, 16, 69, NULL, NULL),
(276, 86, 89, 90, 170, 17, 69, NULL, NULL);

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mohammad Wasim', 'wasim.html@gmail.com', NULL, '$2a$12$1GHHHbVZweFcBW7a3pE.GuFIq9od/.Zm3ShNPJMrCjv5WKttvteiG', NULL, '2020-08-28 00:03:42', '2020-08-28 00:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variants`
--

INSERT INTO `variants` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Color', 'asdfadsf', NULL, '2020-08-31 08:53:32'),
(2, 'Size', 'adfsasdf', NULL, '2020-08-31 08:54:28'),
(6, 'Style', 'Description', '2020-08-31 09:46:24', '2020-08-31 09:46:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_blog_category_id_foreign` (`blog_category_id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_categories_slug_unique` (`slug`);

--
-- Indexes for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_tags_blog_id_foreign` (`blog_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variants_variant_id_foreign` (`variant_id`),
  ADD KEY `product_variants_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_variant_prices`
--
ALTER TABLE `product_variant_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variant_prices_product_id_foreign` (`product_id`),
  ADD KEY `product_variant_prices_product_variant_one_foreign` (`product_variant_one`),
  ADD KEY `product_variant_prices_product_variant_two_foreign` (`product_variant_two`),
  ADD KEY `product_variant_prices_product_variant_three_foreign` (`product_variant_three`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `variants_title_unique` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `product_variant_prices`
--
ALTER TABLE `product_variant_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_blog_category_id_foreign` FOREIGN KEY (`blog_category_id`) REFERENCES `blog_categories` (`id`);

--
-- Constraints for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD CONSTRAINT `blog_tags_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`);

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `product_variants_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_variants_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_variant_prices`
--
ALTER TABLE `product_variant_prices`
  ADD CONSTRAINT `product_variant_prices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_variant_prices_product_variant_one_foreign` FOREIGN KEY (`product_variant_one`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_variant_prices_product_variant_three_foreign` FOREIGN KEY (`product_variant_three`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_variant_prices_product_variant_two_foreign` FOREIGN KEY (`product_variant_two`) REFERENCES `product_variants` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
