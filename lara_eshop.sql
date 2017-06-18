-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2017 at 05:20 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara_eshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `best_seller_parts`
--

CREATE TABLE `best_seller_parts` (
  `id` int(10) UNSIGNED NOT NULL,
  `image_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_alt` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `best_seller_parts`
--

INSERT INTO `best_seller_parts` (`id`, `image_link`, `image`, `image_alt`, `title_link`, `title`, `created_at`, `updated_at`) VALUES
(1, '#', '1.jpg', 'Praesent tempor sem sodales', '#', 'Praesent tempor sem', NULL, NULL),
(2, '#', '2.jpg', 'Luctus quam ultrices rutrum', '#', 'Luctus quam ultrices rutrum', NULL, NULL),
(3, '#', '3.jpg', 'Fusce id molestie massa', '#', 'Fusce id molestie massa', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `billing_details`
--

CREATE TABLE `billing_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  `address_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billing_details`
--

INSERT INTO `billing_details` (`id`, `first_name`, `last_name`, `email_address`, `telephone`, `fax`, `company`, `company_id`, `address_1`, `address_2`, `city`, `post_code`, `country`, `region`, `comments`, `s_id`, `created_at`, `updated_at`) VALUES
(1, 'sdfdasfdsa', 'fsadfsadf', 'pathan@gmail.com', 'sdfsdf', 'sdfasdfs', 'fsdfsdf', 23, 'dsafsdf', 'safsadf', 'sadfasdf', 'sdfsf', '2', '3515', 'sdfasdfsadf', '8mtP4Jn6mWgWCTj1DJux3taH2CEZ07RCv2P0gYjo', '2017-06-02 08:27:33', '2017-06-02 08:27:33'),
(2, 'sdaf', 'asdf', 'pathan@gmail.com', 'asdf', 'afasdfasdf', 'asdfasd', 32, 'sdfas', 'fasdfas', 'dfasfa', 'sdfasdfsafd', '5', '3514', 'safasdfadsf', '8mtP4Jn6mWgWCTj1DJux3taH2CEZ07RCv2P0gYjo', '2017-06-02 09:12:18', '2017-06-02 09:12:18'),
(3, 'sdfsd', 'fsdfdsaf', 'pathan@gmail.com', 'sdfsd', 'sdfsdf', 'sfsd', 323, 'sdfsadf', 'asdfsa', 'dfasdfs', 'sdfsadf', '1', '3514', 'sfasfd', '8mtP4Jn6mWgWCTj1DJux3taH2CEZ07RCv2P0gYjo', '2017-06-02 09:14:25', '2017-06-02 09:14:25'),
(4, 'asdfas', 'dfasdf', 'pathan@gmail.com', '3rasf', 'sdafasdf', 'asdfasdf', 525, 'dsfas', 'dfasf', 'asfdasdf', 'afsdfas', '1', '3513', 'sfasdfasdf', '8mtP4Jn6mWgWCTj1DJux3taH2CEZ07RCv2P0gYjo', '2017-06-02 09:22:58', '2017-06-02 09:22:58'),
(5, 'sadfds', 'fdsf', 'pathan@gmail.com', 'sdfs', 'dsfs', 'dsfsdf', 23, 'sdafs', 'saf', 'sdfs', 'sfsdf', '4', '3514', 'dsfdsfasf', '8mtP4Jn6mWgWCTj1DJux3taH2CEZ07RCv2P0gYjo', '2017-06-02 09:24:11', '2017-06-02 09:24:11'),
(6, 'dsafas', 'fsfasdf', 'pathan@gmail.com', 'sdfsf', 'sdafasdf', 'sdfdasf', 32, 'sadfdas', 'fsdfasf', 'sdfsdf', 'sdfsadf', '1', '3514', 'asfasdfasf', '8mtP4Jn6mWgWCTj1DJux3taH2CEZ07RCv2P0gYjo', '2017-06-02 09:25:02', '2017-06-02 09:25:02'),
(7, 'adsfasf', 'sdfasdf', 'pathan@gmail.com', 'sdfasfas', 'fasfsf', 'sdfsdf', 23, 'sdfsf', 'sdfdasf', 'sfasdf', 'asdfdsaf', '1', '3514', 'sdfasdfasf', '8mtP4Jn6mWgWCTj1DJux3taH2CEZ07RCv2P0gYjo', '2017-06-02 09:31:17', '2017-06-02 09:31:17'),
(8, 'gfdgd', 'sdfgsdfg', 'pathan@gmail.com', 'dfsgsdfg', 'dfsgsdf', 'dsfgsdfg', 34, 'fdgfsdg', 'dsfgfdsg', 'dfgfds', 'gdfsgdfsg', '1', '3516', 'dsfgdsfgdfsg', '8mtP4Jn6mWgWCTj1DJux3taH2CEZ07RCv2P0gYjo', '2017-06-02 09:34:32', '2017-06-02 09:34:32'),
(9, 'dsfasdf', 'sdfsdf', 'pathan@gmail.com', 'sdafasdf', 'sdfsdf', 'dsafasdf', 24, 'sdfasfas', 'fdasfasdf', 'sfsadf', 'sdfdsf', '5', '3514', 'sdfasfdasf', '8mtP4Jn6mWgWCTj1DJux3taH2CEZ07RCv2P0gYjo', '2017-06-02 09:36:41', '2017-06-02 09:36:41'),
(10, 'sadfasdf', 'sadfasdf', 'pathan@gmail.com', 'sdfsdfs', 'sadfdasf', 'sdfsdf', 42, 'sdfsfs', 'fsdfasdfsdfsadf', 'sdfsf', 'sdfsd', '4', '3514', 'sdfsdfsaf', '8mtP4Jn6mWgWCTj1DJux3taH2CEZ07RCv2P0gYjo', '2017-06-02 09:42:07', '2017-06-02 09:42:07'),
(11, 'adsfas', 'fsafsa', 'pathan@gmail.com', 'sadfdasf', 'sfdsadf', 'safasd', 24, 'asdfasdf', 'asfdas', 'fsadfas', 'fsfasdf', '1', '3514', 'sdfasfdsaf', '8mtP4Jn6mWgWCTj1DJux3taH2CEZ07RCv2P0gYjo', '2017-06-02 09:43:52', '2017-06-02 09:43:52'),
(12, 'asdfasdfas', 'sdfasf', 'pathan@gmail.com', 'asdfdas', 'fsadf', 'sdfas', 32, 'asdfasf', 'sdafsad', 'fsadfdsaf', '2ref', '2', '3515', 'sadfasf', 'VEEEj2ZjuRvEVYOvL1ALBX72MItTyiXdPvOPp1Je', '2017-06-04 11:15:14', '2017-06-04 11:15:14'),
(13, 'sadfasf', 'sdfsdaf', 'pathan@gmail.com', 'asdfasdf', 'sdfasdf', 'asdfsa', 323, 'asdfas', 'sfsadf', 'sfsdf', 'sdfsdf', '3', '3514', NULL, 'VEEEj2ZjuRvEVYOvL1ALBX72MItTyiXdPvOPp1Je', '2017-06-04 11:18:18', '2017-06-04 11:18:18');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `s_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `s_id`, `product_code`, `product_name`, `price`, `quantity`, `image`, `option2`, `option1`, `created_at`, `updated_at`) VALUES
(57, 'aJVRX4zXWI86CV4cuMhINivVJMHSmmCjvx6s25sM', 'wom-5', 'jss', '55', '1', 'bootstrap-women-ware5.jpg', NULL, NULL, '2017-06-15 01:05:22', '2017-06-15 01:20:26'),
(58, 'UieCb4eV5KOh3hTCGU9TiOqZRX2In1kuYBU6Oe3Z', 'dfsg', 'gsdgw', '74', '5', '3.jpg', NULL, NULL, '2017-06-17 07:58:38', '2017-06-17 07:58:38');

-- --------------------------------------------------------

--
-- Table structure for table `feature_products`
--

CREATE TABLE `feature_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `available_products` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feature_products`
--

INSERT INTO `feature_products` (`id`, `slider_image`, `title`, `category`, `price`, `created_at`, `updated_at`, `product_code`, `available_products`) VALUES
(1, '1.jpg', 'adsfds', 'hadsf', '12', NULL, NULL, 'dfsg', 1),
(2, '2.jpg', 'jdf', 'haa', '32', NULL, NULL, 'sdfg', 23),
(3, '3.jpg', 'gsdgw', 'dsgdfg', '74', NULL, NULL, 'dfsg', 54),
(4, '4.jpg', 'jsd', 'srhj', '54', NULL, NULL, 'dsfg3', 53),
(5, '5.jpg', 'gfd', 'hsd', '66', NULL, NULL, 'hs', 75),
(6, '6.jpg', 'ghsdh', 'sdfgsdfg', '85', NULL, NULL, 'gfdsd', 99),
(7, '7.jpg', 'fas', 'uhaa', '99', NULL, NULL, 'jg', 23),
(8, '8.jpg', 'fd', 'had', '74', NULL, NULL, 'gssd', 62);

-- --------------------------------------------------------

--
-- Table structure for table `feature_product_variations`
--

CREATE TABLE `feature_product_variations` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feature_product_variations`
--

INSERT INTO `feature_product_variations` (`id`, `image`, `feature_product_id`, `created_at`, `updated_at`) VALUES
(1, '2.jpg', 1, NULL, NULL),
(2, '3.jpg', 1, NULL, NULL),
(3, '4.jpg', 1, NULL, NULL),
(4, '4.jpg', 1, NULL, NULL),
(5, '2.jpg', 2, NULL, NULL),
(6, '3.jpg', 2, NULL, NULL),
(7, '4.jpg', 2, NULL, NULL),
(8, '5.jpg', 2, NULL, NULL),
(9, '2.jpg', 3, NULL, NULL),
(10, '3.jpg', 3, NULL, NULL),
(11, '4.jpg', 3, NULL, NULL),
(12, '5.jpg', 3, NULL, NULL),
(13, '2.jpg', 4, NULL, NULL),
(14, '3.jpg', 4, NULL, NULL),
(15, '4.jpg', 4, NULL, NULL),
(16, '5.jpg', 4, NULL, NULL),
(17, '2.jpg', 5, NULL, NULL),
(18, '3.jpg', 5, NULL, NULL),
(19, '4.jpg', 5, NULL, NULL),
(20, '5.jpg', 5, NULL, NULL),
(21, '2.jpg', 6, NULL, NULL),
(22, '3.jpg', 6, NULL, NULL),
(23, '4.jpg', 6, NULL, NULL),
(24, '5.jpg', 6, NULL, NULL),
(25, '2.jpg', 7, NULL, NULL),
(26, '3.jpg', 7, NULL, NULL),
(27, '4.jpg', 7, NULL, NULL),
(28, '5.jpg', 7, NULL, NULL),
(29, '2.jpg', 8, NULL, NULL),
(30, '3.jpg', 8, NULL, NULL),
(31, '4.jpg', 8, NULL, NULL),
(32, '5.jpg', 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `latest_products`
--

CREATE TABLE `latest_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `available_products` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `latest_products`
--

INSERT INTO `latest_products` (`id`, `slider_image`, `title`, `category`, `price`, `created_at`, `updated_at`, `product_code`, `available_products`) VALUES
(1, 'bootstrap-women-ware1.jpg', 'hds', 'dgd', '11', NULL, NULL, 'wom-1', 6),
(2, 'bootstrap-women-ware2.jpg', 'gsd', 'sgdsgd', '22', NULL, NULL, 'wom-2', 33),
(3, 'bootstrap-women-ware3.jpg', 'jt', 'sit', '33', NULL, NULL, 'wom-3', 12),
(4, 'bootstrap-women-ware4.jpg', 'dr', 'js', '44', NULL, NULL, 'wom-4', 5),
(5, 'bootstrap-women-ware5.jpg', 'jss', 'ds', '55', NULL, NULL, 'wom-5', 9),
(6, 'bootstrap-women-ware6.jpg', 'jsrs', 'sjss', '66', NULL, NULL, 'wom-6', 21),
(7, 'bootstrap-women-ware3.jpg', 'jsf', 'dsh', '77', NULL, NULL, 'wom-7', 43),
(8, 'bootstrap-women-ware5.jpg', 'j5rea', 'ds', '88', NULL, NULL, 'wom-8', 18);

-- --------------------------------------------------------

--
-- Table structure for table `manufactures`
--

CREATE TABLE `manufactures` (
  `id` int(10) UNSIGNED NOT NULL,
  `image_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_alt` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufactures`
--

INSERT INTO `manufactures` (`id`, `image_link`, `image_alt`, `image_name`, `created_at`, `updated_at`) VALUES
(1, '#', 'set', '1.png', NULL, NULL),
(2, '#', 'lorem', '2.png', NULL, NULL),
(3, '#', 'ipsum', '3.png', NULL, NULL),
(4, '#', 'dolor', '4.png', NULL, NULL),
(5, '#', 'hatesa', '14.png', NULL, NULL),
(6, '#', 'hddd', '35.png', NULL, NULL);

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
(3, '2017_04_21_110348_create_photos_table', 2),
(4, '2017_04_22_171011_create_site_infos_table', 3),
(5, '2017_04_24_081755_create_feature_products_table', 4),
(6, '2017_04_25_040232_create_latest_products_table', 5),
(7, '2017_04_25_055549_create_services_table', 6),
(8, '2017_04_25_060737_create_manufactures_table', 7),
(10, '2017_04_26_074114_create_related_latest_products_table', 8),
(11, '2017_04_26_105849_create_product_variations_table', 9),
(12, '2017_04_27_105934_add_column_product_code_to_latest_products', 10),
(13, '2017_04_27_110434_add_column_available_product_to_latest_products', 11),
(15, '2017_04_27_112431_create_carts_table', 12),
(16, '2017_04_27_175811_add_column_description_to_carts', 13),
(17, '2017_06_02_114919_create_billing_details_table', 14),
(18, '2017_06_02_145900_create_ordered_products_table', 15),
(19, '2017_06_12_104452_create_related_featured_products_table', 16),
(20, '2017_06_13_151903_create_feature_product_variations_table', 17),
(21, '2017_06_13_182407_add_column_product_code_to_feature_products', 18),
(22, '2017_06_13_182451_add_column_available_products_to_feature_products', 18),
(23, '2017_06_14_171754_create_randomize_product_sliders_table', 19),
(24, '2017_06_14_180326_create_best_seller_parts_table', 20),
(25, '2017_06_14_185605_add_column_product_code_to_related_featured_products', 21),
(26, '2017_06_14_185742_add_column_available_products_to_related_featured_products', 21);

-- --------------------------------------------------------

--
-- Table structure for table `ordered_products`
--

CREATE TABLE `ordered_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `s_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ordered_products`
--

INSERT INTO `ordered_products` (`id`, `s_id`, `product_code`, `product_name`, `price`, `quantity`, `image`, `created_at`, `updated_at`) VALUES
(2, '8mtP4Jn6mWgWCTj1DJux3taH2CEZ07RCv2P0gYjo', 'wom-1', 'hds', '11', '6', 'bootstrap-women-ware1.jpg', '2017-06-02 09:36:41', '2017-06-02 09:36:41'),
(3, '8mtP4Jn6mWgWCTj1DJux3taH2CEZ07RCv2P0gYjo', 'wom-2', 'gsd', '22', '2', 'bootstrap-women-ware2.jpg', '2017-06-02 09:36:41', '2017-06-02 09:36:41'),
(4, '8mtP4Jn6mWgWCTj1DJux3taH2CEZ07RCv2P0gYjo', 'wom-1', 'hds', '11', '6', 'bootstrap-women-ware1.jpg', '2017-06-02 09:42:07', '2017-06-02 09:42:07'),
(5, '8mtP4Jn6mWgWCTj1DJux3taH2CEZ07RCv2P0gYjo', 'wom-1', 'hds', '11', '6', 'bootstrap-women-ware1.jpg', '2017-06-02 09:43:52', '2017-06-02 09:43:52'),
(6, '8mtP4Jn6mWgWCTj1DJux3taH2CEZ07RCv2P0gYjo', 'wom-2', 'gsd', '22', '2', 'bootstrap-women-ware2.jpg', '2017-06-02 09:43:52', '2017-06-02 09:43:52'),
(7, 'VEEEj2ZjuRvEVYOvL1ALBX72MItTyiXdPvOPp1Je', 'wom-1', 'hds', '11', '3', 'bootstrap-women-ware1.jpg', '2017-06-04 11:18:19', '2017-06-04 11:18:19');

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
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `image_name`, `Description_1`, `Description_2`, `created_at`, `updated_at`) VALUES
(1, 'banner-1.jpg', NULL, NULL, NULL, NULL),
(2, 'banner-2.jpg', 'Mid season sale', 'Up to 50% Off', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_variations`
--

CREATE TABLE `product_variations` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latest_product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variations`
--

INSERT INTO `product_variations` (`id`, `image`, `latest_product_id`, `created_at`, `updated_at`) VALUES
(5, '2.jpg', 1, NULL, NULL),
(6, '3.jpg', 1, NULL, NULL),
(7, '4.jpg', 1, NULL, NULL),
(8, '5.jpg', 1, NULL, NULL),
(9, '2.jpg', 2, NULL, NULL),
(10, '3.jpg', 2, NULL, NULL),
(11, '4.jpg', 2, NULL, NULL),
(12, '5.jpg', 2, NULL, NULL),
(13, '2.jpg', 3, NULL, NULL),
(14, '3.jpg', 3, NULL, NULL),
(15, '4.jpg', 3, NULL, NULL),
(16, '5.jpg', 3, NULL, NULL),
(17, '2.jpg', 4, NULL, NULL),
(18, '3.jpg', 4, NULL, NULL),
(19, '4.jpg', 4, NULL, NULL),
(20, '5.jpg', 4, NULL, NULL),
(21, '2.jpg', 5, NULL, NULL),
(22, '3.jpg', 5, NULL, NULL),
(23, '4.jpg', 5, NULL, NULL),
(24, '5.jpg', 5, NULL, NULL),
(25, '2.jpg', 6, NULL, NULL),
(26, '3.jpg', 6, NULL, NULL),
(27, '4.jpg', 6, NULL, NULL),
(28, '5.jpg', 6, NULL, NULL),
(29, '2.jpg', 7, NULL, NULL),
(30, '3.jpg', 7, NULL, NULL),
(31, '4.jpg', 7, NULL, NULL),
(32, '5.jpg', 7, NULL, NULL),
(33, '2.jpg', 8, NULL, NULL),
(34, '3.jpg', 8, NULL, NULL),
(35, '4.jpg', 8, NULL, NULL),
(36, '5.jpg', 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `randomize_product_sliders`
--

CREATE TABLE `randomize_product_sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `image_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `randomize_product_sliders`
--

INSERT INTO `randomize_product_sliders` (`id`, `image_link`, `image`, `title_link`, `title`, `category_link`, `category`, `price`, `created_at`, `updated_at`) VALUES
(1, '#', '7.jpg', '#', 'Fusce id molestie massa', '#', 'Suspendisse aliquet', 261, NULL, NULL),
(2, '#', '8.jpg', '#', 'Tempor sem sodales', '#', 'rna nec lectus mollis', 134, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `related_featured_products`
--

CREATE TABLE `related_featured_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `available_products` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `related_featured_products`
--

INSERT INTO `related_featured_products` (`id`, `slider_image`, `title`, `category`, `price`, `feature_product_id`, `created_at`, `updated_at`, `product_code`, `available_products`) VALUES
(1, '1.jpg', 'dSFAS', 'FSDFASDF2', '23', 1, NULL, NULL, 'dsf', 23),
(2, '2.jpg', 'ASDF', 'ASDF', '23', 1, NULL, NULL, 'sdfh', 3240),
(3, '3.jpg', 'ASDFAS', 'SA', '53', 1, NULL, NULL, 'sdfgdfs', 3240),
(4, '4.jpg', 'SDFAS', 'ASDF', '11', 1, NULL, NULL, 'je', 2343240),
(5, '5.jpg', 'ADSF', 'AAS21', '324', 1, NULL, NULL, 'hw', 3240),
(6, '6.jpg', 'asdfdasf', 'asdfas', '31', 1, NULL, NULL, 'shs', 3240),
(14, '1.jpg', 'rwer', 'wer', '23', 2, NULL, NULL, 'ysd', 430),
(15, '2.jpg', 'asdfas', 'sfadf', '23', 2, NULL, NULL, 'uweds', 3450),
(16, '3.jpg', 'sadfas', 'asdfas', '42', 2, NULL, NULL, 'uef', 3450),
(17, '4.jpg', 'sfasdf', 'asdfasdf', '42', 2, NULL, NULL, 'usf', 730),
(18, '5.jpg', 'asfdasfasdf', 'asdf', '42', 2, NULL, NULL, 'usfu', 3450),
(19, '6.jpg', 'sdfda', 'as', '42', 2, NULL, NULL, 'uwf', 340),
(20, '1.jpg', 'rwer', 'wer', '23', 3, NULL, NULL, 'uwsf', 6436),
(21, '2.jpg', 'asdfas', 'sfadf', '23', 3, NULL, NULL, 'uwcv', 630),
(22, '3.jpg', 'sadfas', 'asdfas', '42', 3, NULL, NULL, 'uwef', 3460),
(23, '4.jpg', 'sfasdf', 'asdfasdf', '42', 3, NULL, NULL, 'it', 6340),
(24, '5.jpg', 'asfdasfasdf', 'asdf', '42', 3, NULL, NULL, 'uwea', 730),
(25, '6.jpg', 'sdfda', 'as', '42', 3, NULL, NULL, 'rrrrrrr', 730),
(26, '1.jpg', 'rwer', 'wer', '23', 4, NULL, NULL, 'yyyyyyyyyyy', 70),
(27, '2.jpg', 'asdfas', 'sfadf', '23', 4, NULL, NULL, 'ywes', 730),
(28, '3.jpg', 'sadfas', 'asdfas', '42', 4, NULL, NULL, 'sdfg', 845),
(29, '4.jpg', 'sfasdf', 'asdfasdf', '42', 4, NULL, NULL, 'sdfgsd', 70),
(30, '5.jpg', 'asfdasfasdf', 'asdf', '42', 4, NULL, NULL, 'jwsd', 80),
(31, '6.jpg', 'sdfda', 'as', '42', 4, NULL, NULL, 'uwrsdfgb', 990),
(32, '1.jpg', 'rwer', 'wer', '23', 5, NULL, NULL, 'w', 630),
(33, '2.jpg', 'asdfas', 'sfadf', '23', 5, NULL, NULL, 'resd', 730),
(34, '3.jpg', 'sadfas', 'asdfas', '42', 5, NULL, NULL, 'uwrg', 830),
(35, '4.jpg', 'sfasdf', 'asdfasdf', '42', 5, NULL, NULL, 'yursdg', 990),
(36, '5.jpg', 'asfdasfasdf', 'asdf', '42', 5, NULL, NULL, 'usds', 830),
(37, '6.jpg', 'sdfda', 'as', '42', 5, NULL, NULL, 'uwrsgf', 220),
(38, '1.jpg', 'rwer', 'wer', '23', 6, NULL, NULL, 'iwrs', 220),
(39, '2.jpg', 'asdfas', 'sfadf', '23', 6, NULL, NULL, 'iwsdf', 730),
(40, '3.jpg', 'sadfas', 'asdfas', '42', 6, NULL, NULL, 'iwrsg', 3454),
(41, '4.jpg', 'sfasdf', 'asdfasdf', '42', 6, NULL, NULL, 'iwuresgs', 565),
(42, '5.jpg', 'asfdasfasdf', 'asdf', '42', 6, NULL, NULL, 'iwrsb', 4564),
(43, '6.jpg', 'sdfda', 'as', '42', 6, NULL, NULL, 'isrgs', 4565),
(44, '1.jpg', 'rwer', 'wer', '23', 7, NULL, NULL, 'iwrsg', 456),
(45, '2.jpg', 'asdfas', 'sfadf', '23', 7, NULL, NULL, 'iwrsg', 456),
(46, '3.jpg', 'sadfas', 'asdfas', '42', 7, NULL, NULL, 'uwrsdg', 56),
(47, '4.jpg', 'sfasdf', 'asdfasdf', '42', 7, NULL, NULL, 'iwrsgsdh', 456),
(48, '5.jpg', 'asfdasfasdf', 'asdf', '42', 7, NULL, NULL, 'uwsgfg', 456),
(49, '6.jpg', 'sdfda', 'as', '42', 7, NULL, NULL, 'shjsth', 456),
(50, '1.jpg', 'rwer', 'wer', '23', 8, NULL, NULL, 'sdg', 385),
(51, '2.jpg', 'asdfas', 'sfadf', '23', 8, NULL, NULL, 'jsdfg', 935),
(52, '3.jpg', 'sadfas', 'asdfas', '42', 8, NULL, NULL, 'sjthdsfgsfh', 3578),
(53, '4.jpg', 'sfasdf', 'asdfasdf', '42', 8, NULL, NULL, 'kwrjtsf', 93),
(54, '5.jpg', 'asfdasfasdf', 'asdf', '42', 8, NULL, NULL, 'jshf', 3583),
(55, '6.jpg', 'sdfda', 'as', '42', 8, NULL, NULL, 'shdfg', 385343);

-- --------------------------------------------------------

--
-- Table structure for table `related_latest_products`
--

CREATE TABLE `related_latest_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latest_product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `related_latest_products`
--

INSERT INTO `related_latest_products` (`id`, `slider_image`, `title`, `category`, `price`, `latest_product_id`, `created_at`, `updated_at`) VALUES
(7, '1.jpg', 'bcxvbxc', 'bxcbxc', '11', 1, NULL, NULL),
(8, '2.jpg', 'dfshdf', 'dfshdsh', '22', 1, NULL, NULL),
(9, '3.jpg', 'hasdsdf', 'sdfsadf', '33', 1, NULL, NULL),
(10, '4.jpg', 'hasd', 'sdas', '44', 1, NULL, NULL),
(11, '5.jpg', 'hadga', 'asdf', '55', 1, NULL, NULL),
(12, '6.jpg', 'hasas', 'add', '66', 1, NULL, NULL),
(13, '1.jpg', 'sdfgdsf', 'gsdfgsdfg', '34', 2, NULL, NULL),
(14, '2.jpg', 'asdfasdf', 'asdfdas', '43', 2, NULL, NULL),
(15, '3.jpg', 'sdfgds', 'dsfgdsfg', '43', 2, NULL, NULL),
(16, '4.jpg', 'sadfas', 'dfasfas', '34', 2, NULL, NULL),
(17, '5.jpg', 'asdfas', 'fasdfasf', '234', 2, NULL, NULL),
(18, '6.jpg', 'asdfas', 'fasfsa', '42', 2, NULL, NULL),
(33, '1.jpg', 'asdf', 'asdfas', '23', 3, NULL, NULL),
(34, '2.jpg', 'asdf', 'sadfas2', '23', 3, NULL, NULL),
(35, '3.jpg', 'sadf', 'sadf', '52', 3, NULL, NULL),
(36, '4.jpg', 'sadf', 'sadf', '53', 3, NULL, NULL),
(37, '5.jpg', 'asdf', 'asdf', '42', 3, NULL, NULL),
(38, '6.jpg', 'asdf', 'asdf', '64', 3, NULL, NULL),
(39, '1.jpg', 'fgdsf', 'asdfas', '34', 4, NULL, NULL),
(40, '2.jpg', 'adfasf', 'sdf', '53', 4, NULL, NULL),
(41, '3.jpg', 'sadfa', 'sdfasdf', '42', 4, NULL, NULL),
(42, '4.jpg', 'sdf', 'asdfasdf', '42', 4, NULL, NULL),
(43, '5.jpg', 'sdaf', 'asdf', '23', 4, NULL, NULL),
(44, '6.jpg', 'sdfasfasdfas', 'asdfdasf', '4d', 4, NULL, NULL),
(45, '1.jpg', 'sdf', 'asdfsa', '42', 5, NULL, NULL),
(46, '2.jpg', 'sdfas', 'dfdsfas', '23', 5, NULL, NULL),
(47, '3.jpg', 'asdfasdasdfsa', 'sdaf', '23', 5, NULL, NULL),
(48, '4.jpg', 'sadf', 'sdfsad', '42', 5, NULL, NULL),
(49, '5.jpg', 'asdf', 'asdf', '42', 5, NULL, NULL),
(50, '6.jpg', 'sdfasdfsd', 'sdfasf', '42', 5, NULL, NULL),
(51, '1.jpg', 'sdf', 'sdfa', '224', 6, NULL, NULL),
(52, '2.jpg', 'fsadfsdf', 'sdfas', '42', 6, NULL, NULL),
(53, '3.jpg', 'dfasd', 'sdf', '42', 6, NULL, NULL),
(54, '4.jpg', 'sdfasf', 'asdf', '53', 6, NULL, NULL),
(55, '5.jpg', 'sdf', 'sadf', '34', 6, NULL, NULL),
(56, '6.jpg', 'sdaf', 'sdf', '23', 6, NULL, NULL),
(57, '1.jpg', 'fsdf', 'fsda', '234', 7, NULL, NULL),
(58, '2.jpg', 'asdf', 'sadf', '42', 7, NULL, NULL),
(59, '3.jpg', 'sadfs', 'asdf', '43', 7, NULL, NULL),
(60, '4.jpg', 'adsf', 'vz', '34', 7, NULL, NULL),
(61, '5.jpg', 'asdf', 'sadf', '3', 7, NULL, NULL),
(62, '6.jpg', 'dasf', 'asdf', '23', 7, NULL, NULL),
(63, '1.jpg', 'asdf', 'sdfas', '23', 8, NULL, NULL),
(64, '2.jpg', 'sdf', 'sdf', '42', 8, NULL, NULL),
(65, '3.jpg', 'e23fs', 'sdf', '42', 8, NULL, NULL),
(66, '4.jpg', 'sdf', 'sdfas', '64', 8, NULL, NULL),
(67, '5.jpg', 'adsf', 'sadfs', '34', 8, NULL, NULL),
(68, '6.jpg', 'sadfsd', 'sdfas', '42', 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `image`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'feature_img_2.png', '<h4>MODERN <strong>DESIGN</strong></h4>', 'Lorem Ipsum is simply dummy text of the printing and printing industry unknown printer.', NULL, NULL),
(2, 'feature_img_1.png', '<h4>FREE <strong>SHIPPING</strong></h4>', 'Lorem Ipsum is simply dummy text of the printing and printing industry unknown printer.', NULL, NULL),
(3, 'feature_img_3.png', '<h4>24/7 LIVE <strong>SUPPORT</strong></h4>', 'Lorem Ipsum is simply dummy text of the printing and printing industry unknown printer.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_infos`
--

CREATE TABLE `site_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright_text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_infos`
--

INSERT INTO `site_infos` (`id`, `logo`, `title`, `copyright_text`, `created_at`, `updated_at`) VALUES
(1, 'logo.png', 'Bootstrap E-commerce Templates', 'Copyright 2017 developed by <a href="https://fb.com/jahidul.haque.pathan">Jahid</a> |  All right reserved.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$1om82oXysvAWlCJ4vKgYrutY5XIG4zsh0WAoqNJHhXEqrWOclrYVm', 'admin', 'imio5GGp9QzuiCmZpXqvqtHfsUUOtnyOyQf7FePwX5Sm6g6M2Gy3UagdpwqP', '2017-04-20 23:22:45', '2017-04-20 23:22:45'),
(2, 'jahid', 'jahid@gmail.com', '$2y$10$yl68wBZ85KgTcUlw/V71puF/XzMy8KzQpHNngxM40iUxPtzNrZeYy', NULL, 'nYbZHOoEfQd0fEmL671EszucJFFvTAjlouWXFzzhykIOsO1M6fs66fZCbN7f', '2017-04-20 23:23:47', '2017-04-20 23:23:47'),
(3, 'sadasd', 'jahidulpathan@gmail.com', '$2y$10$ElTwVAfiscddmeBF9vm4KOPRIXHl/UEIEGnJHouDOxdcn5wiS.r1.', NULL, 'Ax72m225V0zcOvHEITEWxr6UozcZKNivit4cYInkEfEVM49g4TLL0bmmReZv', '2017-05-01 01:18:24', '2017-05-01 01:18:24'),
(4, 'asdasd', 'adminsdfasdf@gmail.com', '$2y$10$mbNOOzTvL4JYXOn942XzkuD9r/QaTExEwsDCNqjKgTtE0J9y6DzLm', NULL, 'D6uLdoaQcEt5PAFs77RcMLrxsgOr9zSvQukSkajgum5EHDMNIOhCJnAxFqjz', '2017-05-01 01:27:59', '2017-05-01 01:27:59'),
(5, 'fsdsdfdg', 'admdfgsdfgsdinsdfasdf@gmail.com', '$2y$10$aloVi4jPrauV.7GfWgwhGO/EzyEH7r/cYeSe15n4zi2snN8qGdXAm', NULL, 'mr6QEAXo5BM3nC05m4XPAcQs0AgtJuvaAnTSUDDQMGtd4hWDLhJAI1wkyQGo', '2017-05-01 01:33:00', '2017-05-01 01:33:00'),
(6, 'pathan', 'pathan@gmail.com', '$2y$10$S9vO/1pag6qp.QRYtXS9ZuEG4QI7BqacOFCH.orgYr3B0UxjhjIiy', NULL, 'HmcvUdlpoLjkyJ56OsGu7WxT9WzOT8Y2v68Sw3CniqdDSsCFNFZnV71bABIn', '2017-05-01 01:37:18', '2017-05-01 01:37:18'),
(7, 'fsdfsdfsdfsdf', 'patsdfsdfsdfhan@gmail.com', '$2y$10$8TQ86bBBwKUY7Pw98cTLM.E6NbDCdBSUmj8W1kLo0E7AoXWxZUJpy', NULL, 'YhnWRpSUqre2xYUmd6aIfMfUb0NS7Hyup0dIpDcvCazpKxkmC5atcyliP4UC', '2017-05-02 11:40:24', '2017-05-02 11:40:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `best_seller_parts`
--
ALTER TABLE `best_seller_parts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing_details`
--
ALTER TABLE `billing_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feature_products`
--
ALTER TABLE `feature_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feature_product_variations`
--
ALTER TABLE `feature_product_variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feature_product_variations_feature_product_id_foreign` (`feature_product_id`);

--
-- Indexes for table `latest_products`
--
ALTER TABLE `latest_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufactures`
--
ALTER TABLE `manufactures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordered_products`
--
ALTER TABLE `ordered_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `photos_image_name_unique` (`image_name`),
  ADD UNIQUE KEY `photos_description_2_unique` (`Description_2`),
  ADD UNIQUE KEY `photos_description_1_unique` (`Description_1`);

--
-- Indexes for table `product_variations`
--
ALTER TABLE `product_variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variations_latest_product_id_foreign` (`latest_product_id`);

--
-- Indexes for table `randomize_product_sliders`
--
ALTER TABLE `randomize_product_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `related_featured_products`
--
ALTER TABLE `related_featured_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `related_featured_products_feature_product_id_foreign` (`feature_product_id`);

--
-- Indexes for table `related_latest_products`
--
ALTER TABLE `related_latest_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `related_latest_products_latest_product_id_foreign` (`latest_product_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_infos`
--
ALTER TABLE `site_infos`
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
-- AUTO_INCREMENT for table `best_seller_parts`
--
ALTER TABLE `best_seller_parts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `billing_details`
--
ALTER TABLE `billing_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `feature_products`
--
ALTER TABLE `feature_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `feature_product_variations`
--
ALTER TABLE `feature_product_variations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `latest_products`
--
ALTER TABLE `latest_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `manufactures`
--
ALTER TABLE `manufactures`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `ordered_products`
--
ALTER TABLE `ordered_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `product_variations`
--
ALTER TABLE `product_variations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `randomize_product_sliders`
--
ALTER TABLE `randomize_product_sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `related_featured_products`
--
ALTER TABLE `related_featured_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `related_latest_products`
--
ALTER TABLE `related_latest_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `site_infos`
--
ALTER TABLE `site_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `feature_product_variations`
--
ALTER TABLE `feature_product_variations`
  ADD CONSTRAINT `feature_product_variations_feature_product_id_foreign` FOREIGN KEY (`feature_product_id`) REFERENCES `feature_products` (`id`);

--
-- Constraints for table `product_variations`
--
ALTER TABLE `product_variations`
  ADD CONSTRAINT `product_variations_latest_product_id_foreign` FOREIGN KEY (`latest_product_id`) REFERENCES `latest_products` (`id`);

--
-- Constraints for table `related_featured_products`
--
ALTER TABLE `related_featured_products`
  ADD CONSTRAINT `related_featured_products_feature_product_id_foreign` FOREIGN KEY (`feature_product_id`) REFERENCES `feature_products` (`id`);

--
-- Constraints for table `related_latest_products`
--
ALTER TABLE `related_latest_products`
  ADD CONSTRAINT `related_latest_products_latest_product_id_foreign` FOREIGN KEY (`latest_product_id`) REFERENCES `latest_products` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
