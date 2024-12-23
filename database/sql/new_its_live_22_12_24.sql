-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 22, 2024 at 01:21 PM
-- Server version: 5.7.42
-- PHP Version: 8.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_its`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `photo`, `role_id`, `password`, `email_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'superadmin@gmail.com', '01629552892', '1631023655pexels-moose-photos-1036627.jpg', 0, '$2y$10$ueg2eIH267Xy2S2pnb.YHOWcBUuKma7unpHq6TbWEtEYsORmRqv3K', NULL, '2018-02-28 23:27:08', '2021-12-04 05:04:55'),
(2, 'test', 'test@gmail.com', '09000000', 'BhTv1584160189Brooklyn99-310x310.jpg', 1, '$2y$10$cl6qNdVuAhzJyaaLACVxGOQhlYf7n/UgLrwW0vx9QDGlZyKGM97mm', NULL, '2021-12-05 10:24:50', '2021-12-05 10:24:50'),
(3, 'Product Entry User', 'user@gmail.com', '01955181028', '2024_12_09_050344_72633796.png', 2, '$2y$10$ueg2eIH267Xy2S2pnb.YHOWcBUuKma7unpHq6TbWEtEYsORmRqv3K', NULL, '2024-12-08 22:56:32', '2024-12-08 23:03:44');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `item_id`, `name`, `keyword`, `created_at`, `updated_at`) VALUES
(2, 523, 'Color', 'color', NULL, NULL),
(3, 524, 'Color', 'color', NULL, NULL),
(8, 529, 'Color', 'color', NULL, NULL),
(13, 534, 'Color', 'color', NULL, NULL),
(16, 537, 'Color', 'color', NULL, NULL),
(23, 544, 'Color', 'color', NULL, NULL),
(26, 559, 'Color', 'color', NULL, NULL),
(27, 560, 'Color', 'color', NULL, NULL),
(28, 561, 'Color', 'color', NULL, NULL),
(29, 562, 'Color', 'color', NULL, NULL),
(36, 569, 'Color', 'color', NULL, NULL),
(37, 570, 'Color', 'color', NULL, NULL),
(38, 571, 'Color', 'color', NULL, NULL),
(47, 580, 'Color', 'color', NULL, NULL),
(56, 523, 'Size', 'size', NULL, NULL),
(57, 524, 'Size', 'size', NULL, NULL),
(62, 529, 'Size', 'size', NULL, NULL),
(67, 534, 'Size', 'size', NULL, NULL),
(70, 537, 'Size', 'size', NULL, NULL),
(77, 544, 'Size', 'size', NULL, NULL),
(80, 559, 'Size', 'size', NULL, NULL),
(81, 560, 'Size', 'size', NULL, NULL),
(82, 561, 'Size', 'size', NULL, NULL),
(83, 562, 'Size', 'size', NULL, NULL),
(90, 569, 'Size', 'size', NULL, NULL),
(91, 570, 'Size', 'size', NULL, NULL),
(92, 571, 'Size', 'size', NULL, NULL),
(101, 580, 'Size', 'size', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_options`
--

CREATE TABLE `attribute_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT '0',
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'unlimited'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_options`
--

INSERT INTO `attribute_options` (`id`, `attribute_id`, `name`, `price`, `keyword`, `created_at`, `updated_at`, `stock`) VALUES
(221, 2, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(222, 2, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(223, 2, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(224, 2, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(225, 3, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(226, 3, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(227, 3, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(228, 3, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(245, 8, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(246, 8, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(247, 8, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(248, 8, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(265, 13, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(266, 13, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(267, 13, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(268, 13, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(277, 16, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(278, 16, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(279, 16, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(280, 16, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(305, 23, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(306, 23, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(307, 23, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(308, 23, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(317, 26, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(318, 26, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(319, 26, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(320, 26, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(321, 27, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(322, 27, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(323, 27, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(324, 27, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(325, 28, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(326, 28, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(327, 28, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(328, 28, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(329, 29, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(330, 29, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(331, 29, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(332, 29, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(357, 36, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(358, 36, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(359, 36, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(360, 36, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(361, 37, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(362, 37, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(363, 37, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(364, 37, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(365, 38, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(366, 38, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(367, 38, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(368, 38, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(401, 47, 'Red', 5, 'red', NULL, NULL, 'unlimited'),
(402, 47, 'Blue', 6, 'blue', NULL, NULL, 'unlimited'),
(403, 47, 'Black', 7, 'bed', NULL, NULL, 'unlimited'),
(404, 47, 'Pink', 8, 'pink', NULL, NULL, 'unlimited'),
(1082, 56, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1083, 57, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1088, 62, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1093, 67, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1096, 70, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1103, 77, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1106, 80, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1107, 81, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1108, 82, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1109, 83, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1116, 90, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1117, 91, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1118, 92, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1119, 101, 'M', 5, 'm', NULL, NULL, 'unlimited'),
(1128, 56, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1129, 57, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1134, 62, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1139, 67, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1142, 70, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1149, 77, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1152, 80, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1153, 81, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1154, 82, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1155, 83, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1162, 90, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1163, 91, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1164, 92, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1165, 101, 'L', 6, 'L', NULL, NULL, 'unlimited'),
(1174, 56, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1175, 57, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1180, 62, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1185, 67, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1188, 70, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1195, 77, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1198, 80, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1199, 81, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1200, 82, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1201, 83, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1208, 90, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1209, 91, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1210, 92, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1211, 101, 'XL', 7, 'xl', NULL, NULL, 'unlimited'),
(1220, 56, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited'),
(1221, 57, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited'),
(1226, 62, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited'),
(1231, 67, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited'),
(1234, 70, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited'),
(1241, 77, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited'),
(1244, 80, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited'),
(1245, 81, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited'),
(1246, 82, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited'),
(1247, 83, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited'),
(1254, 90, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited'),
(1255, 91, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited'),
(1256, 92, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited'),
(1257, 101, 'XXL', 7, 'xxl', NULL, NULL, 'unlimited');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `subtitle`, `url`, `image`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Shein Womens Clothing 2021 Summer Fashion Design Clothing Manufacturer Lantern Long Sleeve', '45% OFF', '#', '163172091306.jpg', ' Banner 1', 1, NULL, NULL),
(2, 'Casual Minimalist Tie Waist women clothing Denim Halter Midi Pencil Sling Dresses', '70% OFF', '#', '163172090805.jpg', 'Banner 2', 1, NULL, NULL),
(3, 'Top Sale High Quality Newest Designs Custom Women Clothing Wholesale from China Dresses', '60% OFF', '#', '163172090304.jpg', 'Banner 3', 1, NULL, NULL),
(5, '2021 Summer Women Clothing Ropa Sexy Lady Cut Out Halter Mini Dresses', '50% OFF', '#', '163172089704.jpg', 'Banner 4', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bcategories`
--

CREATE TABLE `bcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bcategories`
--

INSERT INTO `bcategories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ALARM SYSTEM', 'alarm', 1, NULL, NULL),
(2, 'PARKING ACCESS SYSTEM', 'parking', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  `is_popular` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `photo`, `status`, `is_popular`, `created_at`, `updated_at`) VALUES
(7, 'Adidas', 'Adidas', '1632336527add.png', 1, 1, NULL, NULL),
(8, 'Lavie', 'Lavie', '1632336517leves.jpg', 1, 1, NULL, NULL),
(9, 'Skyart', 'Skyart', '1632336538skyart.png', 1, 1, NULL, NULL),
(10, 'Nike', 'Nike', '1632336489nike.jpg', 1, 1, NULL, NULL),
(11, 'Samsung', 'Samsung', '1632336479samsung.png', 1, 1, NULL, NULL),
(14, 'Yamaha', 'Yamaha', '1632336551yamaha.png', 1, 1, NULL, NULL),
(15, 'H.M', 'HM', '1632336576hm.jpg', 1, 1, NULL, NULL),
(16, 'Loreal', 'Loreal', '1632336591lora.jpg', 1, 1, NULL, NULL),
(19, 'Ascis', 'Ascis', '1632336642ascis.jpg', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `campaign_items`
--

CREATE TABLE `campaign_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT '1',
  `is_feature` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaign_items`
--

INSERT INTO `campaign_items` (`id`, `item_id`, `status`, `is_feature`, `created_at`, `updated_at`) VALUES
(33, 559, 1, 1, NULL, NULL),
(34, 543, 1, 1, NULL, NULL),
(35, 545, 1, 1, NULL, NULL),
(37, 534, 1, 1, NULL, NULL),
(39, 540, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_descriptions` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) DEFAULT '1',
  `is_feature` tinyint(4) DEFAULT '1',
  `serial` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `photo`, `meta_keywords`, `meta_descriptions`, `status`, `is_feature`, `serial`, `created_at`, `updated_at`) VALUES
(18, 'IDTech', 'IDTech', '2024_12_07_123709_93401342.png', '[{\"value\":\"women\"}]', 'Women Clothing', 1, 1, 9, NULL, NULL),
(19, 'GPS', 'GPS', '2024_12_07_123629_87674555.jpg', '[{\"value\":\"men\"}]', 'men', 1, 1, 8, NULL, NULL),
(21, 'Electronics', 'Electronics', '1629616270computer.jpg', NULL, NULL, 1, 1, 7, NULL, NULL),
(22, 'Accessories', 'Accessories', '2024_12_07_123539_48570238.jpg', NULL, NULL, 1, 1, 6, NULL, NULL),
(23, 'Others', 'Others', '2024_12_07_123522_99525673.jpg', NULL, NULL, 1, 1, 5, NULL, NULL),
(24, 'UVSS', 'UVSS', '2024_12_07_123505_12108038.png', NULL, NULL, 1, 1, 4, NULL, NULL),
(25, 'CCTV', 'CCTV', '2024_12_07_123356_90087713.png', NULL, NULL, 1, 1, 3, NULL, NULL),
(26, 'Access Control', 'Access-Control', '2024_12_07_123320_19485324.png', NULL, NULL, 1, 1, 2, NULL, NULL),
(27, 'Barrier Gate / AutoGate', 'Barrier-Gate---AutoGate', '2024_12_07_123243_97837172.jpg', NULL, NULL, 1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chield_categories`
--

CREATE TABLE `chield_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', NULL, NULL),
(2, 'Albania', NULL, NULL),
(3, 'Algeria', NULL, NULL),
(4, 'American Samoa', NULL, NULL),
(5, 'Andorra', NULL, NULL),
(6, 'Angola', NULL, NULL),
(7, 'Anguilla', NULL, NULL),
(8, 'Antarctica', NULL, NULL),
(9, 'Antigua and Barbuda', NULL, NULL),
(10, 'Argentina', NULL, NULL),
(11, 'Armenia', NULL, NULL),
(12, 'Aruba', NULL, NULL),
(13, 'Australia', NULL, NULL),
(14, 'Austria', NULL, NULL),
(15, 'Azerbaijan', NULL, NULL),
(16, 'Bahamas', NULL, NULL),
(17, 'Bahrain', NULL, NULL),
(18, 'Bangladesh', NULL, NULL),
(19, 'Barbados', NULL, NULL),
(20, 'Belarus', NULL, NULL),
(21, 'Belgium', NULL, NULL),
(22, 'Belize', NULL, NULL),
(23, 'Benin', NULL, NULL),
(24, 'Bermuda', NULL, NULL),
(25, 'Bhutan', NULL, NULL),
(26, 'Bolivia', NULL, NULL),
(27, 'Bosnia and Herzegovina', NULL, NULL),
(28, 'Botswana', NULL, NULL),
(29, 'Bouvet Island', NULL, NULL),
(30, 'Brazil', NULL, NULL),
(31, 'British Indian Ocean Territory', NULL, NULL),
(32, 'Brunei Darussalam', NULL, NULL),
(33, 'Bulgaria', NULL, NULL),
(34, 'Burkina Faso', NULL, NULL),
(35, 'Burundi', NULL, NULL),
(36, 'Cambodia', NULL, NULL),
(37, 'Cameroon', NULL, NULL),
(38, 'Canada', NULL, NULL),
(39, 'Cape Verde', NULL, NULL),
(40, 'Cayman Islands', NULL, NULL),
(41, 'Central African Republic', NULL, NULL),
(42, 'Chad', NULL, NULL),
(43, 'Chile', NULL, NULL),
(44, 'China', NULL, NULL),
(45, 'Christmas Island', NULL, NULL),
(46, 'Cocos (Keeling) Islands', NULL, NULL),
(47, 'Colombia', NULL, NULL),
(48, 'Comoros', NULL, NULL),
(49, 'Democratic Republic of the Congo', NULL, NULL),
(50, 'Republic of Congo', NULL, NULL),
(51, 'Cook Islands', NULL, NULL),
(52, 'Costa Rica', NULL, NULL),
(53, 'Croatia (Hrvatska)', NULL, NULL),
(54, 'Cuba', NULL, NULL),
(55, 'Cyprus', NULL, NULL),
(56, 'Czech Republic', NULL, NULL),
(57, 'Denmark', NULL, NULL),
(58, 'Djibouti', NULL, NULL),
(59, 'Dominica', NULL, NULL),
(60, 'Dominican Republic', NULL, NULL),
(61, 'East Timor', NULL, NULL),
(62, 'Ecuador', NULL, NULL),
(63, 'Egypt', NULL, NULL),
(64, 'El Salvador', NULL, NULL),
(65, 'Equatorial Guinea', NULL, NULL),
(66, 'Eritrea', NULL, NULL),
(67, 'Estonia', NULL, NULL),
(68, 'Ethiopia', NULL, NULL),
(69, 'Falkland Islands (Malvinas)', NULL, NULL),
(70, 'Faroe Islands', NULL, NULL),
(71, 'Fiji', NULL, NULL),
(72, 'Finland', NULL, NULL),
(73, 'France', NULL, NULL),
(74, 'France, Metropolitan', NULL, NULL),
(75, 'French Guiana', NULL, NULL),
(76, 'French Polynesia', NULL, NULL),
(77, 'French Southern Territories', NULL, NULL),
(78, 'Gabon', NULL, NULL),
(79, 'Gambia', NULL, NULL),
(80, 'Georgia', NULL, NULL),
(81, 'Germany', NULL, NULL),
(82, 'Ghana', NULL, NULL),
(83, 'Gibraltar', NULL, NULL),
(84, 'Guernsey', NULL, NULL),
(85, 'Greece', NULL, NULL),
(86, 'Greenland', NULL, NULL),
(87, 'Grenada', NULL, NULL),
(88, 'Guadeloupe', NULL, NULL),
(89, 'Guam', NULL, NULL),
(90, 'Guatemala', NULL, NULL),
(91, 'Guinea', NULL, NULL),
(92, 'Guinea-Bissau', NULL, NULL),
(93, 'Guyana', NULL, NULL),
(94, 'Haiti', NULL, NULL),
(95, 'Heard and Mc Donald Islands', NULL, NULL),
(96, 'Honduras', NULL, NULL),
(97, 'Hong Kong', NULL, NULL),
(98, 'Hungary', NULL, NULL),
(99, 'Iceland', NULL, NULL),
(100, 'India', NULL, NULL),
(101, 'Isle of Man', NULL, NULL),
(102, 'Indonesia', NULL, NULL),
(103, 'Iran (Islamic Republic of)', NULL, NULL),
(104, 'Iraq', NULL, NULL),
(105, 'Ireland', NULL, NULL),
(106, 'Israel', NULL, NULL),
(107, 'Italy', NULL, NULL),
(108, 'Ivory Coast', NULL, NULL),
(109, 'Jersey', NULL, NULL),
(110, 'Jamaica', NULL, NULL),
(111, 'Japan', NULL, NULL),
(112, 'Jordan', NULL, NULL),
(113, 'Kazakhstan', NULL, NULL),
(114, 'Kenya', NULL, NULL),
(115, 'Kiribati', NULL, NULL),
(116, 'Korea, Democratic People\'s Republic of', NULL, NULL),
(118, 'Kosovo', NULL, NULL),
(119, 'Kuwait', NULL, NULL),
(120, 'Kyrgyzstan', NULL, NULL),
(121, 'Lao People\'s Democratic Republic', NULL, NULL),
(122, 'Latvia', NULL, NULL),
(123, 'Lebanon', NULL, NULL),
(124, 'Lesotho', NULL, NULL),
(125, 'Liberia', NULL, NULL),
(126, 'Libyan Arab Jamahiriya', NULL, NULL),
(127, 'Liechtenstein', NULL, NULL),
(128, 'Lithuania', NULL, NULL),
(129, 'Luxembourg', NULL, NULL),
(130, 'Macau', NULL, NULL),
(131, 'North Macedonia', NULL, NULL),
(132, 'Madagascar', NULL, NULL),
(133, 'Malawi', NULL, NULL),
(134, 'Malaysia', NULL, NULL),
(135, 'Maldives', NULL, NULL),
(136, 'Mali', NULL, NULL),
(137, 'Malta', NULL, NULL),
(138, 'Marshall Islands', NULL, NULL),
(139, 'Martinique', NULL, NULL),
(140, 'Mauritania', NULL, NULL),
(141, 'Mauritius', NULL, NULL),
(142, 'Mayotte', NULL, NULL),
(143, 'Mexico', NULL, NULL),
(144, 'Micronesia, Federated States of', NULL, NULL),
(145, 'Moldova, Republic of', NULL, NULL),
(146, 'Monaco', NULL, NULL),
(147, 'Mongolia', NULL, NULL),
(148, 'Montenegro', NULL, NULL),
(149, 'Montserrat', NULL, NULL),
(150, 'Morocco', NULL, NULL),
(151, 'Mozambique', NULL, NULL),
(152, 'Myanmar', NULL, NULL),
(153, 'Namibia', NULL, NULL),
(154, 'Nauru', NULL, NULL),
(155, 'Nepal', NULL, NULL),
(156, 'Netherlands', NULL, NULL),
(157, 'Netherlands Antilles', NULL, NULL),
(158, 'New Caledonia', NULL, NULL),
(159, 'New Zealand', NULL, NULL),
(160, 'Nicaragua', NULL, NULL),
(161, 'Niger', NULL, NULL),
(162, 'Nigeria', NULL, NULL),
(163, 'Niue', NULL, NULL),
(164, 'Norfolk Island', NULL, NULL),
(165, 'Northern Mariana Islands', NULL, NULL),
(166, 'Norway', NULL, NULL),
(167, 'Oman', NULL, NULL),
(168, 'Pakistan', NULL, NULL),
(169, 'Palau', NULL, NULL),
(170, 'Palestine', NULL, NULL),
(171, 'Panama', NULL, NULL),
(172, 'Papua New Guinea', NULL, NULL),
(173, 'Paraguay', NULL, NULL),
(174, 'Peru', NULL, NULL),
(175, 'Philippines', NULL, NULL),
(176, 'Pitcairn', NULL, NULL),
(177, 'Poland', NULL, NULL),
(178, 'Portugal', NULL, NULL),
(179, 'Puerto Rico', NULL, NULL),
(180, 'Qatar', NULL, NULL),
(181, 'Reunion', NULL, NULL),
(182, 'Romania', NULL, NULL),
(183, 'Russian Federation', NULL, NULL),
(184, 'Rwanda', NULL, NULL),
(185, 'Saint Kitts and Nevis', NULL, NULL),
(186, 'Saint Lucia', NULL, NULL),
(187, 'Saint Vincent and the Grenadines', NULL, NULL),
(188, 'Samoa', NULL, NULL),
(189, 'San Marino', NULL, NULL),
(190, 'Sao Tome and Principe', NULL, NULL),
(191, 'Saudi Arabia', NULL, NULL),
(192, 'Senegal', NULL, NULL),
(193, 'Serbia', NULL, NULL),
(194, 'Seychelles', NULL, NULL),
(195, 'Sierra Leone', NULL, NULL),
(196, 'Singapore', NULL, NULL),
(197, 'Slovakia', NULL, NULL),
(198, 'Slovenia', NULL, NULL),
(199, 'Solomon Islands', NULL, NULL),
(200, 'Somalia', NULL, NULL),
(201, 'South Africa', NULL, NULL),
(202, 'South Georgia South Sandwich Islands', NULL, NULL),
(203, 'South Sudan', NULL, NULL),
(204, 'Spain', NULL, NULL),
(205, 'Sri Lanka', NULL, NULL),
(206, 'St. Helena', NULL, NULL),
(207, 'St. Pierre and Miquelon', NULL, NULL),
(208, 'Sudan', NULL, NULL),
(209, 'Suriname', NULL, NULL),
(210, 'Svalbard and Jan Mayen Islands', NULL, NULL),
(211, 'Swaziland', NULL, NULL),
(212, 'Sweden', NULL, NULL),
(213, 'Switzerland', NULL, NULL),
(214, 'Syrian Arab Republic', NULL, NULL),
(215, 'Taiwan', NULL, NULL),
(216, 'Tajikistan', NULL, NULL),
(217, 'Tanzania, United Republic of', NULL, NULL),
(218, 'Thailand', NULL, NULL),
(219, 'Togo', NULL, NULL),
(220, 'Tokelau', NULL, NULL),
(221, 'Tonga', NULL, NULL),
(222, 'Trinidad and Tobago', NULL, NULL),
(223, 'Tunisia', NULL, NULL),
(224, 'Turkey', NULL, NULL),
(225, 'Turkmenistan', NULL, NULL),
(226, 'Turks and Caicos Islands', NULL, NULL),
(227, 'Tuvalu', NULL, NULL),
(228, 'Uganda', NULL, NULL),
(229, 'Ukraine', NULL, NULL),
(230, 'United Arab Emirates', NULL, NULL),
(231, 'United Kingdom', NULL, NULL),
(232, 'United States', NULL, NULL),
(233, 'United States minor outlying islands', NULL, NULL),
(234, 'Uruguay', NULL, NULL),
(235, 'Uzbekistan', NULL, NULL),
(236, 'Vanuatu', NULL, NULL),
(237, 'Vatican City State', NULL, NULL),
(238, 'Venezuela', NULL, NULL),
(239, 'Vietnam', NULL, NULL),
(240, 'Virgin Islands (British)', NULL, NULL),
(241, 'Virgin Islands (U.S.)', NULL, NULL),
(242, 'Wallis and Futuna Islands', NULL, NULL),
(243, 'Western Sahara', NULL, NULL),
(244, 'Yemen', NULL, NULL),
(245, 'Zambia', NULL, NULL),
(246, 'Zimbabwe', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` double DEFAULT NULL,
  `is_default` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `sign`, `value`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'USD', '$', 1, 1, NULL, NULL),
(6, 'EUR', '€', 0.89, 0, NULL, NULL),
(7, 'INR', '₹', 74, 0, NULL, NULL),
(8, 'BDT', '৳', 84, 0, NULL, NULL),
(9, 'NGN', '₦', 411, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci,
  `body` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `type`, `subject`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Order', 'Your Have Successfully Placed The Order', '<p>Hello {user_name},</p><p>Your Order Has Been Placed Successfilly.<br>Your Order Number is {transaction_number}.<br></p>', NULL, NULL),
(2, 'Registration', 'Welcome To Omnimart', '<p>Hello ; {user_name},</p><p>You have successfully registered to {site_title}, We wish you will have a wonderful experience using our service.</p><p>Thank You .<br></p>', NULL, NULL),
(3, 'New Order Admin', 'New Order', '<p>You Got a order, Transaction number {transaction_number}</p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `extra_settings`
--

CREATE TABLE `extra_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_t4_slider` tinyint(4) DEFAULT '1',
  `is_t4_featured_banner` tinyint(4) DEFAULT '1',
  `is_t4_specialpick` tinyint(4) DEFAULT '1',
  `is_t4_3_column_banner_first` tinyint(4) DEFAULT '1',
  `is_t4_flashdeal` tinyint(4) DEFAULT '1',
  `is_t4_3_column_banner_second` tinyint(4) DEFAULT '1',
  `is_t4_popular_category` tinyint(4) DEFAULT '1',
  `is_t4_2_column_banner` tinyint(4) DEFAULT '1',
  `is_t4_blog_section` tinyint(4) DEFAULT '1',
  `is_t4_brand_section` tinyint(4) DEFAULT '1',
  `is_t4_service_section` tinyint(4) DEFAULT '1',
  `is_t3_slider` tinyint(4) DEFAULT '1',
  `is_t3_service_section` tinyint(4) DEFAULT '1',
  `is_t3_3_column_banner_first` tinyint(4) DEFAULT '1',
  `is_t3_popular_category` tinyint(4) DEFAULT '1',
  `is_t3_flashdeal` tinyint(4) DEFAULT '1',
  `is_t3_3_column_banner_second` tinyint(4) DEFAULT '1',
  `is_t3_pecialpick` tinyint(4) DEFAULT '1',
  `is_t3_brand_section` tinyint(4) DEFAULT '1',
  `is_t3_2_column_banner` tinyint(4) DEFAULT '1',
  `is_t3_blog_section` tinyint(4) DEFAULT '1',
  `is_t2_slider` tinyint(4) DEFAULT '1',
  `is_t2_service_section` tinyint(4) DEFAULT '1',
  `is_t2_3_column_banner_first` tinyint(4) DEFAULT '1',
  `is_t2_flashdeal` tinyint(4) DEFAULT '1',
  `is_t2_new_product` tinyint(4) DEFAULT '1',
  `is_t2_3_column_banner_second` tinyint(4) DEFAULT '1',
  `is_t2_featured_product` tinyint(4) DEFAULT '1',
  `is_t2_bestseller_product` tinyint(4) DEFAULT '1',
  `is_t2_toprated_product` tinyint(4) DEFAULT '1',
  `is_t2_2_column_banner` tinyint(4) DEFAULT '1',
  `is_t2_blog_section` tinyint(4) DEFAULT '1',
  `is_t2_brand_section` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_t1_falsh` tinyint(4) DEFAULT '1',
  `is_t2_falsh` tinyint(4) DEFAULT '1',
  `is_t3_falsh` tinyint(4) DEFAULT '1',
  `is_t4_falsh` tinyint(4) DEFAULT '1',
  `is_t2_three_column_category` tinyint(4) DEFAULT '1',
  `is_t3_three_column_category` tinyint(4) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extra_settings`
--

INSERT INTO `extra_settings` (`id`, `is_t4_slider`, `is_t4_featured_banner`, `is_t4_specialpick`, `is_t4_3_column_banner_first`, `is_t4_flashdeal`, `is_t4_3_column_banner_second`, `is_t4_popular_category`, `is_t4_2_column_banner`, `is_t4_blog_section`, `is_t4_brand_section`, `is_t4_service_section`, `is_t3_slider`, `is_t3_service_section`, `is_t3_3_column_banner_first`, `is_t3_popular_category`, `is_t3_flashdeal`, `is_t3_3_column_banner_second`, `is_t3_pecialpick`, `is_t3_brand_section`, `is_t3_2_column_banner`, `is_t3_blog_section`, `is_t2_slider`, `is_t2_service_section`, `is_t2_3_column_banner_first`, `is_t2_flashdeal`, `is_t2_new_product`, `is_t2_3_column_banner_second`, `is_t2_featured_product`, `is_t2_bestseller_product`, `is_t2_toprated_product`, `is_t2_2_column_banner`, `is_t2_blog_section`, `is_t2_brand_section`, `created_at`, `updated_at`, `is_t1_falsh`, `is_t2_falsh`, `is_t3_falsh`, `is_t4_falsh`, `is_t2_three_column_category`, `is_t3_three_column_category`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, NULL, NULL, 1, 1, 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_descriptions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `category_id`, `title`, `details`, `meta_keywords`, `meta_descriptions`, `created_at`, `updated_at`) VALUES
(15, 1, 'How can I purchase it ?', 'Voluptatibus enim, aut natus sint porro veniam atque obcaecati ullam, consequatur laboriosam laborum corrupti autem fugit', NULL, NULL, NULL, NULL),
(25, 1, 'Anim pariatur cliche reprehenderit ?', 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus.', NULL, NULL, NULL, NULL),
(27, 1, 'Smartphones in Every Day Life ?', 'afdads', '[{\"value\":\"ad\"},{\"value\":\"fd\"}]', 'dfa', NULL, NULL),
(28, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing  ?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', NULL, NULL, NULL, NULL),
(29, 3, 'But I must explain to you how all this mistaken idea ?', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, cons', NULL, NULL, NULL, NULL),
(30, 3, 'Where does it come from ?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.', NULL, NULL, NULL, NULL),
(31, 4, 'Where can I get some ?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.', NULL, NULL, NULL, NULL),
(32, 4, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, NULL, NULL, NULL),
(33, 4, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', NULL, NULL, NULL, NULL),
(34, 4, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', NULL, NULL, NULL, NULL),
(35, 5, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', NULL, NULL, NULL, NULL),
(36, 5, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, NULL, NULL, NULL),
(37, 5, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', NULL, NULL, NULL, NULL),
(38, 6, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', NULL, NULL, NULL, NULL),
(39, 6, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, NULL, NULL, NULL),
(40, 6, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', NULL, NULL, NULL, NULL),
(41, 7, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', NULL, NULL, NULL, NULL),
(42, 7, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, NULL, NULL, NULL),
(43, 7, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fcategories`
--

CREATE TABLE `fcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_descriptions` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fcategories`
--

INSERT INTO `fcategories` (`id`, `name`, `text`, `slug`, `meta_keywords`, `meta_descriptions`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Electronics !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Electronics-', NULL, NULL, 1, NULL, NULL),
(3, 'Poroduct Delevery !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Poroduct-Delevery-', '[{\"value\":\"a\"},{\"value\":\"b\"},{\"value\":\"c\"}]', 'It is a long established fact that a r', 1, NULL, NULL),
(4, 'Discount Policy !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Discount-Policy-', NULL, NULL, 1, NULL, NULL),
(5, 'Vat Information !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Vat-Information-', NULL, NULL, 1, NULL, NULL),
(6, 'Coupon  Information !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Coupon--Information-', NULL, NULL, 1, NULL, NULL),
(7, 'Offer Information !', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born', 'Offer-Information-', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `item_id`, `photo`, `created_at`, `updated_at`) VALUES
(28, 545, '1634490675H349db6b6a70c4604b507c446a7b06ae5k.jpg', NULL, NULL),
(29, 545, '1634490675HTB1BqH4aIfrK1RkSmLyq6xGApXaJ.jpg', NULL, NULL),
(30, 545, '1634490675U02280db692c8449a91b8886b5a9f043fI.jpg', NULL, NULL),
(31, 543, '1634490719H220c85b541d145789e167a4b23787dd5h.jpg', NULL, NULL),
(32, 543, '1634490719Ha04a8a2d450544c9a80996bcdd70c543b.jpg', NULL, NULL),
(33, 543, '1634490719Hcb62dec2d6a241fc90ce2bb04059684em.jpg', NULL, NULL),
(34, 540, '1634490735H220c85b541d145789e167a4b23787dd5h.jpg', NULL, NULL),
(35, 540, '1634490735H624bc94495584b2384c07e2db9f2bdfcd.jpg', NULL, NULL),
(36, 540, '1634490735Ha04a8a2d450544c9a80996bcdd70c543b.jpg', NULL, NULL),
(37, 541, '1634490748H220c85b541d145789e167a4b23787dd5h.jpg', NULL, NULL),
(38, 541, '1634490748H624bc94495584b2384c07e2db9f2bdfcd.jpg', NULL, NULL),
(39, 541, '1634490748Hcb62dec2d6a241fc90ce2bb04059684em.jpg', NULL, NULL),
(46, 542, '1634490838H624bc94495584b2384c07e2db9f2bdfcd.jpg', NULL, NULL),
(47, 542, '1634490838Ha04a8a2d450544c9a80996bcdd70c543b.jpg', NULL, NULL),
(48, 542, '1634490838Hcb62dec2d6a241fc90ce2bb04059684em.jpg', NULL, NULL),
(79, 523, 'bZ7iScreenshot 2021-11-23 at 10.31.36 PM.png', NULL, NULL),
(80, 569, '2024_12_07_125545_20194343.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_cutomizes`
--

CREATE TABLE `home_cutomizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_first` text COLLATE utf8mb4_unicode_ci,
  `banner_secend` text COLLATE utf8mb4_unicode_ci,
  `banner_third` text COLLATE utf8mb4_unicode_ci,
  `popular_category` text COLLATE utf8mb4_unicode_ci,
  `two_column_category` text COLLATE utf8mb4_unicode_ci,
  `feature_category` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `home_page4` text COLLATE utf8mb4_unicode_ci,
  `home_4_popular_category` text COLLATE utf8mb4_unicode_ci,
  `hero_banner` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_cutomizes`
--

INSERT INTO `home_cutomizes` (`id`, `banner_first`, `banner_secend`, `banner_third`, `popular_category`, `two_column_category`, `feature_category`, `created_at`, `updated_at`, `home_page4`, `home_4_popular_category`, `hero_banner`) VALUES
(1, '{\"title1\":\"Watch\",\"subtitle1\":\"50% OFF\",\"firsturl1\":\"#\",\"title2\":\"Drone\",\"subtitle2\":\"40% OFF\",\"firsturl2\":\"#\",\"title3\":\"Phone\",\"subtitle3\":\"30% OFF\",\"firsturl3\":\"#\",\"img1\":\"16365336391.jpg\",\"img2\":\"16365336392.jpg\",\"img3\":\"16365336393.jpg\"}', '{\"title1\":\"Watch\",\"subtitle1\":\"50% OFF\",\"url1\":\"#\",\"title2\":\"Man\",\"subtitle2\":\"40% OFF\",\"url2\":\"#\",\"title3\":\"Headphone\",\"subtitle3\":\"60% OFF\",\"url3\":\"#\",\"img1\":\"16365342794.jpg\",\"img2\":\"16365342795.jpg\",\"img3\":\"16365342796.jpg\"}', '{\"title1\":\"Watch\",\"subtitle1\":\"50% OFF\",\"url1\":\"#\",\"title2\":\"Headphones\",\"subtitle2\":\"40% OFF\",\"url2\":\"#\",\"img1\":\"1636534291b22.jpg\",\"img2\":\"1636534291b11.jpg\"}', '{\"popular_title\":\"Popular Categories\",\"category_id1\":\"22\",\"subcategory_id1\":null,\"childcategory_id1\":null,\"category_id2\":\"26\",\"subcategory_id2\":null,\"childcategory_id2\":null,\"category_id3\":\"25\",\"subcategory_id3\":null,\"childcategory_id3\":null,\"category_id4\":\"24\",\"subcategory_id4\":null,\"childcategory_id4\":null}', '{\"category_id1\":\"26\",\"subcategory_id1\":null,\"childcategory_id1\":null,\"category_id2\":\"22\",\"subcategory_id2\":null,\"childcategory_id2\":null,\"category_id3\":\"21\",\"subcategory_id3\":null,\"childcategory_id3\":null}', '{\"feature_title\":\"Featured Categories\",\"category_id1\":\"21\",\"subcategory_id1\":null,\"childcategory_id1\":null,\"category_id2\":\"22\",\"subcategory_id2\":null,\"childcategory_id2\":null,\"category_id3\":\"24\",\"subcategory_id3\":null,\"childcategory_id3\":null,\"category_id4\":\"26\",\"subcategory_id4\":null,\"childcategory_id4\":null}', NULL, NULL, '{\"label1\":\"FORMAL\",\"url1\":\"#\",\"label2\":\"LIMITEN EDITION\",\"url2\":\"#\",\"label3\":\"WOMEN\'S COLLECTION\",\"url3\":\"#\",\"label4\":\"SMART CASUALS\",\"url4\":\"#\",\"label5\":\"POLO\",\"url5\":\"#\",\"img1\":\"16368975771.jpg\",\"img2\":\"16368975772.jpg\",\"img3\":\"16368975773.jpg\",\"img4\":\"16368975774.jpg\",\"img5\":\"16368975775.jpg\"}', '[\"18\",\"19\",\"21\",\"27\"]', '{\"title1\":\"Watch\",\"subtitle1\":\"50% OFF\",\"url1\":\"#\",\"title2\":\"Man\",\"subtitle2\":\"40% OFF\",\"url2\":\"#\",\"img1\":\"ONMF222.jpg\",\"img2\":\"24gX1111.jpg\"}');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) DEFAULT '0',
  `subcategory_id` int(11) DEFAULT '0',
  `childcategory_id` int(11) DEFAULT '0',
  `tax_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT '0',
  `name` text COLLATE utf8mb4_unicode_ci,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `video` text COLLATE utf8mb4_unicode_ci,
  `sort_details` text COLLATE utf8mb4_unicode_ci,
  `specification_name` text COLLATE utf8mb4_unicode_ci,
  `specification_description` text COLLATE utf8mb4_unicode_ci,
  `is_specification` tinyint(4) DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_price` double DEFAULT '0',
  `previous_price` double DEFAULT '0',
  `is_price_show` tinyint(4) DEFAULT '1',
  `stock` int(11) DEFAULT '0',
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) DEFAULT '1',
  `is_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci,
  `file_type` enum('file','link') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `license_name` text COLLATE utf8mb4_unicode_ci,
  `license_key` text COLLATE utf8mb4_unicode_ci,
  `item_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'normal',
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affiliate_link` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `category_id`, `subcategory_id`, `childcategory_id`, `tax_id`, `brand_id`, `name`, `slug`, `sku`, `tags`, `video`, `sort_details`, `specification_name`, `specification_description`, `is_specification`, `details`, `photo`, `discount_price`, `previous_price`, `is_price_show`, `stock`, `meta_keywords`, `meta_description`, `status`, `is_type`, `date`, `file`, `link`, `file_type`, `created_at`, `updated_at`, `license_name`, `license_key`, `item_type`, `thumbnail`, `affiliate_link`) VALUES
(524, 18, NULL, NULL, 3, NULL, '505R', '505R', '65dVy8J8Uo1', '', NULL, '- 125KHz Contactless RF Card Access Controller.\r\n- Serial Number Read only.\r\n- Dual Function for Access Control and Time & Attendance.\r\n- Dynamic Control of Memory up to 50,000 Users / up to 50,000 Event Buffers.\r\n- Standalone / RS-232 / RS-422.\r\n- Dual Tamper Switches.', NULL, NULL, 0, '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\">- 125KHz Contactless RF Card Access Controller.</span><br style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\">- Serial Number Read only.</span><br style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\">- Dual Function for Access Control and Time &amp; Attendance.</span><br style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\">- Dynamic Control of Memory up to 50,000 Users / up to 50,000 Event Buffers.</span><br style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\">- Standalone / RS-232 / RS-422.</span><br style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\">- Dual Tamper Switches.</span>', '2024_12_07_014835_12060681.jpg', 134.83, 189.78, 0, 199, '', NULL, 1, 'feature', NULL, '', '', NULL, '2021-09-30 09:48:38', '2024-12-08 23:11:00', NULL, NULL, 'normal', 'H4xJv0PR.jpg', NULL),
(529, 18, NULL, NULL, 3, NULL, 'IP Finger 007', 'IP-Finger-007', '65dVy8J8Uo224z', '', NULL, '- Dual Function for Access Control and Time & Attendance\r\n- 1,000 / 2,000 / 4,000 Fingerprint Users / 26,000 Event Buffers\r\n- ID only Function for Fingerprint Unregisterable Person\r\n- High Protection from Scratch and ESD (Electro Static Discharge)\r\n- High Quality Optical Sensor\r\n- Dual Tamper Switches', NULL, NULL, 0, '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\">- Dual Function for Access Control and Time &amp; Attendance</span><br style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\">- 1,000 / 2,000 / 4,000 Fingerprint Users / 26,000 Event Buffers</span><br style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\">- ID only Function for Fingerprint Unregisterable Person</span><br style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\">- High Protection from Scratch and ESD (Electro Static Discharge)</span><br style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\">- High Quality Optical Sensor</span><br style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\">- Dual Tamper Switches</span>', '2024_12_07_014708_24866610.png', 134.83, 189.78, 0, 199, '', NULL, 1, 'feature', NULL, '', '', NULL, '2021-09-30 09:48:38', '2024-12-08 23:10:32', NULL, NULL, 'normal', 'TWGboDnj.png', NULL),
(534, 18, NULL, NULL, 3, NULL, 'LONG RANGE READER', 'LONG-RANGE-READER', '65dVy8J8Uo25gg3e23', '', NULL, '- The tag of the registered vehicle is stored in the memory to prevent overlapping identification of tags.\r\n- Eliminates multiple readings as it only reads the vehicle’s tag that approaching the sensor (loop coil).\r\n- Identifies 30 cards per second, which is suitable for logistic tracking when RF tags are attached to the logistics.\r\n- Includes 90° one-directional antenna for stable long range identification. 360° omni-directional antenna is also available for asset tracking and personal tracking.', NULL, NULL, 0, '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\">- The tag of the registered vehicle is stored in the memory to prevent overlapping identification of tags.</span><br style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\">- Eliminates multiple readings as it only reads the vehicle’s tag that approaching the sensor (loop coil).</span><br style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\">- Identifies 30 cards per second, which is suitable for logistic tracking when RF tags are attached to the logistics.</span><br style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\">- Includes 90° one-directional antenna for stable long range identification. 360° omni-directional antenna is also available for asset tracking and personal tracking.</span>', '2024_12_07_014506_51232221.jpg', 59.55, 0, 0, 197, '', NULL, 1, 'feature', '', '', '', NULL, '2021-09-30 09:48:38', '2024-12-08 23:10:19', NULL, NULL, 'normal', 'ZmUK7OoH.jpg', NULL),
(537, 26, NULL, NULL, 3, NULL, 'VG1 – TIME ATTENDANCE & DOOR ACCESS', 'VG1-–-TIME-ATTENDANCE---DOOR-ACCESS', '65dVy8J8Uo25gg3e6sf', '', NULL, 'VG1 is fingerprint time attendance system with simple access control. Vigilance VG1 is optimized to be affordable biometric attendance clock system. Vigilance fingerprint reader support 3000 template and 100,000 event memory.\r\n\r\nVigilance fingerprint system offer a fully integrated hardware and software time attendance solution suitable for multi shift small offices and factory.', NULL, NULL, 0, '<div class=\"row\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif;\"><h4 class=\"heading4 animated fadeInUp time3\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 20px; padding: 0px 0px 5px; transition-delay: 1s; text-transform: uppercase; border-bottom: 1px solid rgb(242, 242, 242);\"><span class=\"maintext blueborder\" style=\"border-bottom: 2px solid rgb(63, 0, 255); padding: 0px 0px 5px;\"><a href=\"https://its.com.bd/VG1-TIME-ATTENDANCE&amp;DOOR-ACCESS-VIGILANCE-FINGERPRINT-(access-control).php#\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: black; cursor: pointer; transition: 0.2s;\">How does Vigilance fingerprint access control work?</a></span></h4><p class=\"details_para\" style=\"margin: 1em 0px; line-height: 20px; font-size: 15px;\">Vigilance VG1fingerprint time attendance reader is to replace traditional punch card terminal. All clocking is validated with fingerprint scanning to ensure 100% authenticity. Employee cannot punch card on behalf of co-worker to compromise the attendance calculation.<br><br>For entry, EM lock will release the door when fingerprint reader verifies a valid fingerprint. LCD screen display access status. For exit, user will just need to press push button. Additional Vigilance exit fingerprint reader VG120 can be added as OUT reader is user desired further more security.<br><br>All event data will be sent to the PC. Access raw data can be exported out as text file for more advanced manipulation from third party time attendance software. This is a value added solution; user can have more security into their office and at the same time be able to monitor employee time attendance more accurately (no more buddy punching problem).</p></div><div class=\"row\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif;\"><h4 class=\"heading4 animated fadeInUp time3\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 20px; padding: 0px 0px 5px; transition-delay: 1s; text-transform: uppercase; border-bottom: 1px solid rgb(242, 242, 242);\"><span class=\"maintext blueborder\" style=\"border-bottom: 2px solid rgb(63, 0, 255); padding: 0px 0px 5px;\"><a href=\"https://its.com.bd/VG1-TIME-ATTENDANCE&amp;DOOR-ACCESS-VIGILANCE-FINGERPRINT-(access-control).php#\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: black; cursor: pointer; transition: 0.2s;\">What is the benefit of Vigilance fingerprint access control system?</a></span></h4><p class=\"details_para\" style=\"margin: 1em 0px; line-height: 20px; font-size: 15px;\">-No more buddy punching as fingerprint can uniquely identify each person<br>-Save time and no error – Vigilance VAMS software automated time attendance calculation<br>-Save cost – no need to stock up punch cards<br>-All clocking time is stored in database – easy for search &amp; review<br>-Easy integration with 3rd party time attendance software<br>-Flexible multi shift<br>-Attendance report can review work time, overtime, late, early and long lunch and help improve employee punctuality<br>-Connects direct to PC via TCPIP network<br></p></div><div class=\"row\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif;\"><div class=\"col-lg-6 col-xs-12 col-sm-6\" style=\"float: left; width: 585px;\"><h4 class=\"heading4 animated fadeInUp time3\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 20px; padding: 0px 0px 5px; transition-delay: 1s; text-transform: uppercase; border-bottom: 1px solid rgb(242, 242, 242);\"><span class=\"maintext blueborder\" style=\"border-bottom: 2px solid rgb(63, 0, 255); padding: 0px 0px 5px;\"><a href=\"https://its.com.bd/VG1-TIME-ATTENDANCE&amp;DOOR-ACCESS-VIGILANCE-FINGERPRINT-(access-control).php#\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: black; cursor: pointer; transition: 0.2s;\">Ordering info::</a></span></h4><table class=\"table table-striped details_para\" style=\"border-spacing: 0px; width: 555px; margin-bottom: 20px; color: black; line-height: 20px; font-size: 15px;\"><tbody><tr class=\"info\"><th style=\"text-align: left; line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(217, 237, 247);\">Quantity</th><th style=\"text-align: left; line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(217, 237, 247);\">Equipment</th></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">1 pcs</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">VG880 Vigilance fingerprint reader</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">1 pcs</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">VAMS Vigilanca time attendance and access control software</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">1 pcs</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">Electromagnetic lock 600 lbs</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">1 pcs</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">SP1 EM lock surge protector</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">1 pcs</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">Exit push button</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">1 pcs</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">NVS1215A power adapter 12V, 1.5A</td></tr></tbody></table></div></div>', '2024_12_07_021531_90351648.jpg', 53.93, 100, 0, 199, '', NULL, 1, 'new', '', '', '', NULL, '2021-09-30 09:48:38', '2024-12-08 23:10:11', NULL, NULL, 'normal', 'yKadsAjC.jpg', NULL),
(540, 21, 12, NULL, 2, NULL, 'UMIDIGI A9 Pro Android Mobile Phone 4g 48MP Quad Camera 6.3\" FHD+ Full Screen 6GB RAM', 'UMIDIGI-A--Pro-Android-Mobile-Phone--g---MP-Quad-Camera------FHD--Full-Screen--GB-RAM', '65dVy8J8Uo25gg3e34r45fdg', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1634134938Hcb62dec2d6a241fc90ce2bb04059684em.jpg', 1573.03, 1910.11, 1, 197, '', NULL, 1, 'flash_deal', '02/02/2022', '', '', NULL, '2021-09-30 09:48:38', '2022-01-07 08:36:07', NULL, NULL, 'normal', '1634134938VjgHcb62dec2d6a241fc90ce2bb04059684em.jpg', NULL),
(541, 21, 12, NULL, 2, NULL, 'Hot Selling s10+ Unlocked 8+16MP 8 Core Dual SIM 4G+64G Cheap Smart Phone 5.8 inch', 'Hot-Selling-s----Unlocked-----MP---Core-Dual-SIM--G---G-Cheap-Smart-Phone-----inch', '65dVy8J8Uo25gg3e6sf456fgh', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1634134920Ha04a8a2d450544c9a80996bcdd70c543b.jpg', 134.83, 189.78, 1, 199, '', NULL, 1, 'top', '', '', '', NULL, '2021-09-30 09:48:38', '2021-10-13 08:22:00', NULL, NULL, 'normal', '16341349201T0Ha04a8a2d450544c9a80996bcdd70c543b.jpg', NULL),
(542, 21, 12, NULL, 2, NULL, 'Cheap Price Mobile Phones i13 Pro 6.6inch FHD Big Screen Smart Phone 12+512GB', 'Cheap-Price-Mobile-Phones-i---Pro----inch-FHD-Big-Screen-Smart-Phone-------GB', '65dVy8J8Uo25gg3e23f4fdgh', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1634134904H220c85b541d145789e167a4b23787dd5h.jpg', 1235.96, 1460.67, 1, 199, '', NULL, 1, 'flash_deal', '02/02/2022', '', '', NULL, '2021-09-30 09:48:38', '2021-10-16 12:01:27', NULL, NULL, 'normal', '1634134904Sy7H220c85b541d145789e167a4b23787dd5h.jpg', NULL),
(543, 21, 12, NULL, 2, NULL, 'New product 2019 Refurbished used smart phone for I phone XS MAX XR 64GB 256GB 4G', 'New-product------Refurbished-used-smart-phone-for-I-phone-XS-MAX-XR---GB----GB--G', '65dVy8J8Uo25gg3e23ty6ge4', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1634134888H624bc94495584b2384c07e2db9f2bdfcd.jpg', 932.58, 1348.31, 1, 199, '', NULL, 1, 'new', '02/02/2022', '', '', NULL, '2021-09-30 09:48:38', '2021-10-13 08:21:28', NULL, NULL, 'normal', '1634134888WQ3H624bc94495584b2384c07e2db9f2bdfcd.jpg', NULL),
(544, 21, 13, NULL, 2, NULL, 'Wholesale Price 1.3 Mega HD DV SLR Camera, 2.4 inch LCD Full HD 720P Recording, EIS, Supply Drops', 'Wholesale-Price-----Mega-HD-DV-SLR-Camera------inch-LCD-Full-HD----P-Recording--EIS--Supply-Drops', '65dVy8J8Uo2gfd7', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1634134872HTB1BqH4aIfrK1RkSmLyq6xGApXaJ.jpg', 146.07, 167.3, 1, 199, '', NULL, 1, 'top', '', '', '', NULL, '2021-09-30 09:48:38', '2021-10-13 08:21:12', NULL, NULL, 'normal', '1634134872KxvHTB1BqH4aIfrK1RkSmLyq6xGApXaJ.jpg', NULL),
(545, 21, 13, NULL, 2, NULL, 'Dropshipping EIS 2.4 inch LCD Full HD 720P Recording 1.3 Mega HD DV SLR Camera', 'Dropshipping-EIS-----inch-LCD-Full-HD----P-Recording-----Mega-HD-DV-SLR-Camera', '65dVy8J8Uo1dfg87', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1634134831H75345266923349e280d5f5e5fd5c71e5a.jpg', 134.83, 189.78, 1, 199, '', NULL, 1, 'flash_deal', '02/02/2022', '', '', NULL, '2021-09-30 09:48:38', '2021-10-13 08:20:31', NULL, NULL, 'normal', '1634134831EzTH75345266923349e280d5f5e5fd5c71e5a.jpg', NULL),
(546, 21, NULL, NULL, 2, NULL, 'DC-7200 DSLR support 32G sd card video camera 33 Mega pixels digital camera dslr HD professional', 'DC------DSLR-support---G-sd-card-video-camera----Mega-pixels-digital-camera-dslr-HD-professional', '65dVy8J8Uo22cvh9', 'women,dresses', 'https://www.youtube.com/watch?v=6ZVEAXmupEo', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '1634134811H349db6b6a70c4604b507c446a7b06ae5k.jpg', 1352.81, 0, 0, 199, '', NULL, 1, 'new', '', '', '', NULL, '2021-09-30 09:48:38', '2024-12-08 23:09:58', NULL, NULL, 'normal', '1634134811DFfH349db6b6a70c4604b507c446a7b06ae5k.jpg', NULL),
(559, 26, NULL, NULL, 3, NULL, 'SOYALETEGRA SVMS – VISITOR MANAGEMENT SYSTEM', 'SOYALETEGRA-SVMS-–-VISITOR-MANAGEMENT-SYSTEM', '65dVy8Jzx45gt', 'women,dresses', NULL, 'SoyalEtegra Visitor Management Software (SVMS) is to monitor and manage visitor. Each visitor check in and check out records will be recorded inside S VMS software for reporting and tracking purpose. Visitor management allows you to assign security level and badges to visitor. CCTV integration will capture pictures of visitor as optional visual evidence.', '[\"Product Type:\",\"Material:\",\"Lining Material:\",\"Fabric Type:\",\"Technics:\",\"Decoration:\",\"Size:\"]', '[\"Velvet elegant sleeveless evening dress\",\"Polyester \\/ Spandex\",\"Polyester\",\"Fleece\",\"Plain dyed\",\"Sequins\",\"S\\/M\\/L\"]', 1, '<div class=\"row\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif;\"><h4 class=\"heading4 animated fadeInUp time3\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 20px; padding: 0px 0px 5px; transition-delay: 1s; text-transform: uppercase; border-bottom: 1px solid rgb(242, 242, 242);\"><span class=\"maintext blueborder\" style=\"border-bottom: 2px solid rgb(63, 0, 255); padding: 0px 0px 5px;\"><a href=\"https://its.com.bd/SOYALETEGRA-SVMS-VISITOR-MANAGEMENT-SYSTEM-SOYAL-SOFTWARE-(access-control).php#\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: black; cursor: pointer; transition: 0.2s;\">Benefits:</a></span></h4><p class=\"details_para\" style=\"margin: 1em 0px; line-height: 20px; font-size: 15px;\">-Photographic records of visitors.<br>-Restricted access to visitors to any particular department or area.<br>-Monitoring the visitors and their activities in the company.<br>-Prescheduled appointments by officers can be stored and makes the visitor pass issuing easy.<br>-Software can be integrated with existing security / access control systems, such as Barcode system, Smart card, stripe card based Time and Attendance system etc.<br></p></div><div class=\"row\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif;\"><h4 class=\"heading4 animated fadeInUp time3\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 20px; padding: 0px 0px 5px; transition-delay: 1s; text-transform: uppercase; border-bottom: 1px solid rgb(242, 242, 242);\"><span class=\"maintext blueborder\" style=\"border-bottom: 2px solid rgb(63, 0, 255); padding: 0px 0px 5px;\"><a href=\"https://its.com.bd/SOYALETEGRA-SVMS-VISITOR-MANAGEMENT-SYSTEM-SOYAL-SOFTWARE-(access-control).php#\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: black; cursor: pointer; transition: 0.2s;\">Product Overview:</a></span></h4><p class=\"details_para\" style=\"margin: 1em 0px; line-height: 20px; font-size: 15px;\">The objective of VMS is to monitor, manage and audit visitor traffic using customized VMS software as a standalone system. VMS lets you define user security levels, designate access areas, badge visitors and then track those visitors. With VMS, the proposed system records everyone and vehicle that enters and exits the building.<br><br>Soyal Etegra VMS support the following application function:<br>-Easy check in<br>-Fast check out<br>-CCTV picture capture<br></p></div><div class=\"row\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif;\"><div class=\"col-lg-6 col-xs-12 col-sm-6\" style=\"float: left; width: 585px;\"><h4 class=\"heading4 animated fadeInUp time3\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 20px; padding: 0px 0px 5px; transition-delay: 1s; text-transform: uppercase; border-bottom: 1px solid rgb(242, 242, 242);\"><span class=\"maintext blueborder\" style=\"border-bottom: 2px solid rgb(63, 0, 255); padding: 0px 0px 5px;\"><a href=\"https://its.com.bd/SOYALETEGRA-SVMS-VISITOR-MANAGEMENT-SYSTEM-SOYAL-SOFTWARE-(access-control).php#\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: black; cursor: pointer; transition: 0.2s;\">Easy check in:</a></span></h4><p class=\"details_para\" style=\"margin: 1em 0px; line-height: 20px; font-size: 15px;\">You could select what field you want to enter. Software able extract all info from Mycard and save you the trouble of entering visitor info.<br><br><img src=\"https://its.com.bd/img/Visitor-check-in.jpg\" class=\"img-responsive imageleft\" alt=\"Visitor-check-in\" style=\"border: 1px solid rgb(231, 231, 231); max-width: 100%; height: auto; display: block; margin: 0px 10px 10px 0px; float: left; padding: 5px;\"></p></div><div class=\"col-lg-6 col-xs-12 col-sm-6\" style=\"float: left; width: 585px;\"><h4 class=\"heading4 animated fadeInUp time3\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 20px; padding: 0px 0px 5px; transition-delay: 1s; text-transform: uppercase; border-bottom: 1px solid rgb(242, 242, 242);\"><span class=\"maintext blueborder\" style=\"border-bottom: 2px solid rgb(63, 0, 255); padding: 0px 0px 5px;\"><a href=\"https://its.com.bd/SOYALETEGRA-SVMS-VISITOR-MANAGEMENT-SYSTEM-SOYAL-SOFTWARE-(access-control).php#\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: black; cursor: pointer; transition: 0.2s;\">Fast check out:</a></span></h4><p class=\"details_para\" style=\"margin: 1em 0px; line-height: 20px; font-size: 15px;\">Select the visitor and check them out instantly.<br><br><img src=\"https://its.com.bd/img/Visitor-check-out.jpg\" class=\"img-responsive imageleft\" alt=\"Visitor-check-out\" style=\"border: 1px solid rgb(231, 231, 231); max-width: 100%; height: auto; display: block; margin: 0px 10px 10px 0px; float: left; padding: 5px;\"></p></div></div><div class=\"row\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif;\"><div class=\"col-lg-6 col-xs-12 col-sm-6\" style=\"float: left; width: 585px;\"><h4 class=\"heading4 animated fadeInUp time3\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 20px; padding: 0px 0px 5px; transition-delay: 1s; text-transform: uppercase; border-bottom: 1px solid rgb(242, 242, 242);\"><span class=\"maintext blueborder\" style=\"border-bottom: 2px solid rgb(63, 0, 255); padding: 0px 0px 5px;\"><a href=\"https://its.com.bd/SOYALETEGRA-SVMS-VISITOR-MANAGEMENT-SYSTEM-SOYAL-SOFTWARE-(access-control).php#\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: black; cursor: pointer; transition: 0.2s;\">CCTV picture capture:</a></span></h4><p class=\"details_para\" style=\"margin: 1em 0px; line-height: 20px; font-size: 15px;\">Visual evidence for all visitors ensure better security audit.<br><br><img src=\"https://its.com.bd/img/cctv-picture-capture.jpg\" class=\"img-responsive imageleft\" alt=\"cctv-picture\" style=\"border: 1px solid rgb(231, 231, 231); max-width: 100%; height: auto; display: block; margin: 0px 10px 10px 0px; float: left; padding: 5px;\"></p></div><div class=\"col-lg-6 col-xs-12 col-sm-6\" style=\"float: left; width: 585px;\"><h4 class=\"heading4 animated fadeInUp time3\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 20px; padding: 0px 0px 5px; transition-delay: 1s; text-transform: uppercase; border-bottom: 1px solid rgb(242, 242, 242);\"><span class=\"maintext blueborder\" style=\"border-bottom: 2px solid rgb(63, 0, 255); padding: 0px 0px 5px;\"><a href=\"https://its.com.bd/SOYALETEGRA-SVMS-VISITOR-MANAGEMENT-SYSTEM-SOYAL-SOFTWARE-(access-control).php#\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: black; cursor: pointer; transition: 0.2s;\">Check in process flow:</a></span></h4><p class=\"details_para\" style=\"margin: 1em 0px; line-height: 20px; font-size: 15px;\"><img src=\"https://its.com.bd/img/mykad_flow_chart.jpg\" class=\"img-responsive imageleft\" alt=\"mykad_flow_chart\" style=\"border: 1px solid rgb(231, 231, 231); max-width: 100%; height: auto; display: block; margin: 0px 10px 10px 0px; float: left; padding: 5px;\"><img src=\"https://its.com.bd/img/soyal_etegra_vms_buildings.jpg\" class=\"img-responsive imageleft\" alt=\"soyal_etegra_vms_buildings\" style=\"border: 1px solid rgb(231, 231, 231); max-width: 100%; height: auto; display: block; margin: 0px 10px 10px 0px; float: left; padding: 5px;\"></p></div></div>', '2024_12_07_021330_68849931.jpg', 1352.81, 0, 0, 199, '', NULL, 1, 'new', '', '', '', NULL, '2021-09-30 09:48:39', '2024-12-08 23:09:52', NULL, NULL, 'normal', '07BqvbV9.jpg', NULL);
INSERT INTO `items` (`id`, `category_id`, `subcategory_id`, `childcategory_id`, `tax_id`, `brand_id`, `name`, `slug`, `sku`, `tags`, `video`, `sort_details`, `specification_name`, `specification_description`, `is_specification`, `details`, `photo`, `discount_price`, `previous_price`, `is_price_show`, `stock`, `meta_keywords`, `meta_description`, `status`, `is_type`, `date`, `file`, `link`, `file_type`, `created_at`, `updated_at`, `license_name`, `license_key`, `item_type`, `thumbnail`, `affiliate_link`) VALUES
(560, 26, NULL, NULL, 3, NULL, 'AR725H – SOYAL TOUCH PANEL READER', 'AR725H-–-SOYAL-TOUCH-PANEL-READER', '65dVy8Jtt5rde5', '', NULL, 'Illuminated touch panel for easier recognition of buttons especially during night operation. Elegant design with glossy housing to choose for a modern look to your premises.', NULL, NULL, 0, '<div class=\"row\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif;\"><h4 class=\"heading4 animated fadeInUp time3\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 20px; padding: 0px 0px 5px; transition-delay: 1s; text-transform: uppercase; border-bottom: 1px solid rgb(242, 242, 242);\"><span class=\"maintext blueborder\" style=\"border-bottom: 2px solid rgb(63, 0, 255); padding: 0px 0px 5px;\"><a href=\"https://its.com.bd/AR725H-SOYAL-TOUCH-PANEL-READER-CARD-CONTROLLER-READER-(SOYAL-CONTROLLER-READER)-(access-control).php#\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: black; cursor: pointer; transition: 0.2s;\">Description:</a></span></h4><p class=\"details_para\" style=\"margin: 1em 0px; line-height: 20px; font-size: 15px;\">Intelligently shifting from stand-alone or networking mode while system disconnected. Support 3000 users and 1500 event log.</p></div><div class=\"row\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif;\"><h4 class=\"heading4 animated fadeInUp time3\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 20px; padding: 0px 0px 5px; transition-delay: 1s; text-transform: uppercase; border-bottom: 1px solid rgb(242, 242, 242);\"><span class=\"maintext blueborder\" style=\"border-bottom: 2px solid rgb(63, 0, 255); padding: 0px 0px 5px;\"><a href=\"https://its.com.bd/AR725H-SOYAL-TOUCH-PANEL-READER-CARD-CONTROLLER-READER-(SOYAL-CONTROLLER-READER)-(access-control).php#\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: black; cursor: pointer; transition: 0.2s;\">General feature:</a></span></h4><p class=\"details_para\" style=\"margin: 1em 0px; line-height: 20px; font-size: 15px;\">-DirectPC technology allow direct interface to PC<br>-Support standard 125Khz EM or mifare 13.56MHz card<br>-Alarm function (tamper / door open too long / force unauthorized entry)<br>-Compact smaller design to effectively blend with any decoration<br></p></div><div class=\"row\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif;\"><h4 class=\"heading4 animated fadeInUp time3\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 20px; padding: 0px 0px 5px; transition-delay: 1s; text-transform: uppercase; border-bottom: 1px solid rgb(242, 242, 242);\"><span class=\"maintext blueborder\" style=\"border-bottom: 2px solid rgb(63, 0, 255); padding: 0px 0px 5px;\"><a href=\"https://its.com.bd/AR725H-SOYAL-TOUCH-PANEL-READER-CARD-CONTROLLER-READER-(SOYAL-CONTROLLER-READER)-(access-control).php#\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: black; cursor: pointer; transition: 0.2s;\">Application:</a></span></h4><p class=\"details_para\" style=\"margin: 1em 0px; line-height: 20px; font-size: 15px;\">-Door access control<br>-Turnstile access control<br>-Time attendance function<br>-Car park access control<br>-Elevator access control<br></p></div><div class=\"row\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif;\"><h4 class=\"heading4 animated fadeInUp time3\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 20px; padding: 0px 0px 5px; transition-delay: 1s; text-transform: uppercase; border-bottom: 1px solid rgb(242, 242, 242);\"><span class=\"maintext blueborder\" style=\"border-bottom: 2px solid rgb(63, 0, 255); padding: 0px 0px 5px;\"><a href=\"https://its.com.bd/AR725H-SOYAL-TOUCH-PANEL-READER-CARD-CONTROLLER-READER-(SOYAL-CONTROLLER-READER)-(access-control).php#\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: black; cursor: pointer; transition: 0.2s;\">Special Feature:</a></span></h4><p class=\"details_para\" style=\"margin: 1em 0px; line-height: 20px; font-size: 15px;\">-Supporting WG port for anti-pass-back function<br>-User capacity: 3,000; Event log: 1,500<br>-Built-in Watchdog to prevent system from hanging<br>-Including the input of door contact, offering the alarm system of both door opening too long and being forced to open<br>-11 sets of Time Zone for various accessing in network<br></p></div><div class=\"row\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif;\"><h4 class=\"heading4 animated fadeInUp time3\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 20px; padding: 0px 0px 5px; transition-delay: 1s; text-transform: uppercase; border-bottom: 1px solid rgb(242, 242, 242);\"><span class=\"maintext blueborder\" style=\"border-bottom: 2px solid rgb(63, 0, 255); padding: 0px 0px 5px;\"><a href=\"https://its.com.bd/AR725H-SOYAL-TOUCH-PANEL-READER-CARD-CONTROLLER-READER-(SOYAL-CONTROLLER-READER)-(access-control).php#\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: black; cursor: pointer; transition: 0.2s;\">Standard Feature:</a></span></h4><p class=\"details_para\" style=\"margin: 1em 0px; line-height: 20px; font-size: 15px;\">-Coordinating with softwares for further application on access control, time attendance, payroll, and door/sensor image-monitor function<br>-Flexible to integrate with other equipments<br>-Illuminative Keys, 1 bi-color LED and 1 beeper for identification<br></p></div><div class=\"row\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif;\"><div class=\"col-lg-6 col-xs-12 col-sm-6\" style=\"float: left; width: 585px;\"><h4 class=\"heading4 animated fadeInUp time3\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 20px; padding: 0px 0px 5px; transition-delay: 1s; text-transform: uppercase; border-bottom: 1px solid rgb(242, 242, 242);\"><span class=\"maintext blueborder\" style=\"border-bottom: 2px solid rgb(63, 0, 255); padding: 0px 0px 5px;\"><a href=\"https://its.com.bd/AR725H-SOYAL-TOUCH-PANEL-READER-CARD-CONTROLLER-READER-(SOYAL-CONTROLLER-READER)-(access-control).php#\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: black; cursor: pointer; transition: 0.2s;\">Standard Feature:</a></span></h4><table class=\"table table-striped details_para\" style=\"border-spacing: 0px; width: 555px; margin-bottom: 20px; color: black; line-height: 20px; font-size: 15px;\"><tbody><tr class=\"info\"><th style=\"text-align: left; line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(217, 237, 247);\">Standard feature</th><th style=\"text-align: left; line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(217, 237, 247);\">Operating mode</th><th style=\"text-align: left; line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(217, 237, 247);\"></th><th style=\"text-align: left; line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(217, 237, 247);\"></th></tr><tr class=\"info\"><th style=\"text-align: left; line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(217, 237, 247);\"></th><th style=\"text-align: left; line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(217, 237, 247);\">M4</th><th style=\"text-align: left; line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(217, 237, 247);\">M6</th><th style=\"text-align: left; line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(217, 237, 247);\">M8</th></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">Card users</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">3000</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">65536. Card number use card code only</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">3000</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">Memory transaction</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">1500</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">NONE</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">1500</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">Time zone</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">11 sets</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">NONE</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">11 sets</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">Holiday (per year)</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">120 days</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">NONE</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">120 days</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">Door group</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">NONE</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">NONE</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">NONE</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">Anti-passback</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">YES</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">NONE</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">YES</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">Access mode</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">Card only Card + pin User num + pin</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">Card only</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">Card only Card + pin pin only</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">Time attendance</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">First-IN-Last-OUT</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">and</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">Time duty based</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">Alarm function (tamper, force entrance, door open too long)</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">YES</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">NO</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">YES</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">Duress function</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">YES</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">NO</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">YES</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">DirectPC software support</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">YES</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">NO</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">YES</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">Programming method</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">LCD &amp; keypad or 701 software</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">Keypad only</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">LCD &amp; keypad or 701 software</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">Multi reader networking under 716 controller</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">YES</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">NO</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">YES</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">External Wiegand port for anti-passback function</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">1 Port</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">NO</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">1 Port</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">Push button input</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">YES</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">YES</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">YES</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">Lift control</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">32 floors<br>1024 users</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">NO</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">32 floors<br>1024 users</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">User expiry<br>date Start-end<br>End only</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">None</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">None</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">None</td></tr></tbody></table></div><div class=\"col-lg-6 col-xs-12 col-sm-6\" style=\"float: left; width: 585px;\"><h4 class=\"heading4 animated fadeInUp time3\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 20px; padding: 0px 0px 5px; transition-delay: 1s; text-transform: uppercase; border-bottom: 1px solid rgb(242, 242, 242);\"><span class=\"maintext blueborder\" style=\"border-bottom: 2px solid rgb(63, 0, 255); padding: 0px 0px 5px;\"><a href=\"https://its.com.bd/AR725H-SOYAL-TOUCH-PANEL-READER-CARD-CONTROLLER-READER-(SOYAL-CONTROLLER-READER)-(access-control).php#\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: black; cursor: pointer; transition: 0.2s;\">Parameter:</a></span></h4><table class=\"table table-striped details_para\" style=\"border-spacing: 0px; width: 555px; margin-bottom: 20px; color: black; line-height: 20px; font-size: 15px;\"><tbody><tr class=\"info\"><th style=\"text-align: left; line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(217, 237, 247);\">Specification</th><th style=\"text-align: left; line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(217, 237, 247);\">Description</th></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">RF reading frequency</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">125 KHz</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">Reading range</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">5 – 15 cm</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">Relay output</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">Lock Relay</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">Lock Relay Time</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">Toggle, 0.1-600 sec</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">Alarm Time</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">Toggle, 1-600 sec</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">Door unlock time interval</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">Pre-set time 0.1 to 600 sec</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">Serial port</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">TTL (4800bps, N, 8, 1)</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">Power consumption</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">Less than 3W.</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">Dimension (mm)</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">110 (L) x 79 (W) x 26 (H)</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">Weight</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">110 ±10 g</td></tr><tr></tr></tbody></table></div></div><div class=\"row\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif;\"><div class=\"col-lg-6 col-xs-12 col-sm-6\" style=\"float: left; width: 585px;\"><h4 class=\"heading4 animated fadeInUp time3\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 20px; padding: 0px 0px 5px; transition-delay: 1s; text-transform: uppercase; border-bottom: 1px solid rgb(242, 242, 242);\"><span class=\"maintext blueborder\" style=\"border-bottom: 2px solid rgb(63, 0, 255); padding: 0px 0px 5px;\"><a href=\"https://its.com.bd/AR725H-SOYAL-TOUCH-PANEL-READER-CARD-CONTROLLER-READER-(SOYAL-CONTROLLER-READER)-(access-control).php#\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: black; cursor: pointer; transition: 0.2s;\">Ordering info::</a></span></h4><table class=\"table table-striped details_para\" style=\"border-spacing: 0px; width: 555px; margin-bottom: 20px; color: black; line-height: 20px; font-size: 15px;\"><tbody><tr class=\"info\"><th style=\"text-align: left; line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(217, 237, 247);\">Model</th><th style=\"text-align: left; line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(217, 237, 247);\">Description</th></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">AR725H</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">EM 125 Khz</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">AR725H_1356</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">Mifare 13.56 Mhz</td></tr><tr></tr></tbody></table></div></div>', '2024_12_07_020911_42397963.png', 1352.81, 1893.26, 0, 199, '', NULL, 1, 'new', '', '', '', NULL, '2021-09-30 09:48:39', '2024-12-08 23:09:45', NULL, NULL, 'normal', 'gdMOT4NQ.png', NULL),
(561, 19, NULL, NULL, 3, NULL, 'eXplorist 400 GPS Receiver', 'eXplorist-400-GPS-Receiver', '65dVy8Jzxsd', '', NULL, '- Built-in background map (8 MB)\r\n- High-definition grayscale display\r\n- Preloaded points of interest\r\n- Rugged design, rubber-protected\r\n- 8 MB of usable memory\r\n- Superior tracking with 14 parallel channels', NULL, NULL, 0, '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\">- Built-in background map (8 MB)</span><br style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\">- High-definition grayscale display</span><br style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\">- Preloaded points of interest</span><br style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\">- Rugged design, rubber-protected</span><br style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\">- 8 MB of usable memory</span><br style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\">- Superior tracking with 14 parallel channels</span>', '2024_12_07_011013_44632072.png', 1352.81, 1893.26, 0, 199, '', NULL, 1, 'feature', '', '', '', NULL, '2021-09-30 09:48:39', '2024-12-08 23:09:38', NULL, NULL, 'normal', 'TYAgXJ0k.png', NULL),
(562, 26, NULL, NULL, 3, NULL, 'CP1 – Budget Single Lane Standalone', 'CP1-–-Budget-Single-Lane-Standalone', '65dVy8Jzxdty', '', NULL, 'CP1 is a low budget standalone parking access control for guard house barrier gate system. CP1 car park access control can support up to 1024 users without anti-passback function. CP1 can run standalone without any PC software. CP1 parking card access system is ideal for low budget apartment, gated community and commercial building with simplest standalone function.', NULL, NULL, 0, '<div class=\"row\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif;\"><h4 class=\"heading4 animated fadeInUp time3\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 20px; padding: 0px 0px 5px; transition-delay: 1s; text-transform: uppercase; border-bottom: 1px solid rgb(242, 242, 242);\"><span class=\"maintext blueborder\" style=\"border-bottom: 2px solid rgb(63, 0, 255); padding: 0px 0px 5px;\"><a href=\"https://its.com.bd/CP-one-BUDGET-SINGLE-LANE-STANDALONE-(car-parking-access)-(soyal-access-package-system)-(access-control).php#\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: black; cursor: pointer; transition: 0.2s;\">How does standalone parking access control work?:</a></span></h4><p class=\"details_para\" style=\"margin: 1em 0px; line-height: 20px; font-size: 15px;\">Support up to 1024 cards. During entry or exit, flash the proximity card in front of the reader (installed inside the gooseneck). Upon identity verification, the reader will trigger the barrier gate to open. CP1 can run standalone without any software. When running as a standalone parking access system, all user number and card number must be recorded on paper for future maintenance purpose.<br><br>Alternatively multiple CP1 can be linked together to Soyal701 basic software. All user profile can be recorded into Soyal701 software. User can add/delete user in software and download changed into controller. Soyal701 provide user friendly interface for user profile maintenance. After updating user changes, PC can be unplugged from CP1. CP2 shall continue to run standalone without requiring any software connection.</p></div><div class=\"row\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif;\"><h4 class=\"heading4 animated fadeInUp time3\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 20px; padding: 0px 0px 5px; transition-delay: 1s; text-transform: uppercase; border-bottom: 1px solid rgb(242, 242, 242);\"><span class=\"maintext blueborder\" style=\"border-bottom: 2px solid rgb(63, 0, 255); padding: 0px 0px 5px;\"><a href=\"https://its.com.bd/CP-one-BUDGET-SINGLE-LANE-STANDALONE-(car-parking-access)-(soyal-access-package-system)-(access-control).php#\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: black; cursor: pointer; transition: 0.2s;\">What is benefit of standalone parking access control?:</a></span></h4><p class=\"details_para\" style=\"margin: 1em 0px; line-height: 20px; font-size: 15px;\">-Standalone parking access control can run without PC software for site with small numbers of tenant.<br>-Prevention is better than cure. It is better to block unauthorized visitor right at the entrance rather than trying to catch them after they are inside the premise. Filtering out unauthorized visitor from the very beginning will effectively reduce internal security threat.<br>-Software allowed detailed access activity report for audit in the event of crime<br>-Immediately deny entry to tenant that did not pay monthly maintenance service fees. Effectively improve service fees collection rate.<br>-Immediately deny entry to tenant that has been black listed to declined access permission</p></div><div class=\"row\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif;\"><div class=\"col-lg-6 col-xs-12 col-sm-6\" style=\"float: left; width: 585px;\"><h4 class=\"heading4 animated fadeInUp time3\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 20px; padding: 0px 0px 5px; transition-delay: 1s; text-transform: uppercase; border-bottom: 1px solid rgb(242, 242, 242);\"><span class=\"maintext blueborder\" style=\"border-bottom: 2px solid rgb(63, 0, 255); padding: 0px 0px 5px;\"><a href=\"https://its.com.bd/CP-one-BUDGET-SINGLE-LANE-STANDALONE-(car-parking-access)-(soyal-access-package-system)-(access-control).php#\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: black; cursor: pointer; transition: 0.2s;\">Ordering info::</a></span></h4><table class=\"table table-striped details_para\" style=\"border-spacing: 0px; width: 555px; margin-bottom: 20px; color: black; line-height: 20px; font-size: 15px;\"><tbody><tr class=\"info\"><th style=\"text-align: left; line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(217, 237, 247);\">Quantity</th><th style=\"text-align: left; line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(217, 237, 247);\">Equipment</th></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">1 pcs</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">SOYAL AR721HV3 controller reader</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">1 pcs</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">MAG BR518 barrier gate w/ loop detector</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">1 pcs</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">Gooseneck (w/ epoxy painting)</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">1 pcs</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221); background-color: rgb(249, 249, 249);\">NVS1230P power supply with backup battery</td></tr><tr><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">10 pcs</td><td style=\"line-height: 1.42857; vertical-align: top; border-top: 1px solid rgb(221, 221, 221);\">CDS18 , 1.8mm 125Khz proximity card</td></tr></tbody></table></div><div class=\"col-lg-6 col-xs-12 col-sm-6\" style=\"float: left; width: 585px;\"><h4 class=\"heading4 animated fadeInUp time3\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 20px; padding: 0px 0px 5px; transition-delay: 1s; text-transform: uppercase; border-bottom: 1px solid rgb(242, 242, 242);\"><span class=\"maintext blueborder\" style=\"border-bottom: 2px solid rgb(63, 0, 255); padding: 0px 0px 5px;\"><a href=\"https://its.com.bd/CP-one-BUDGET-SINGLE-LANE-STANDALONE-(car-parking-access)-(soyal-access-package-system)-(access-control).php#\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: black; cursor: pointer; transition: 0.2s;\">Optional accessories to add on:</a></span></h4><p class=\"details_para\" style=\"margin: 1em 0px; line-height: 20px; font-size: 15px;\">-Add surge protector to eliminate risk of equipment damage by lightning surge<br>-Add push button for manually open barrier gate<br>-Add ARRep485 repeater if wiring from guard house to office is longer than 200m.</p><h4 class=\"heading4 animated fadeInUp time3\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 20px; margin-left: 0px; font-size: 20px; padding: 0px 0px 5px; transition-delay: 1s; text-transform: uppercase; border-bottom: 1px solid rgb(242, 242, 242);\"><span class=\"maintext blueborder\" style=\"border-bottom: 2px solid rgb(63, 0, 255); padding: 0px 0px 5px;\"><a href=\"https://its.com.bd/CP-one-BUDGET-SINGLE-LANE-STANDALONE-(car-parking-access)-(soyal-access-package-system)-(access-control).php#\" style=\"background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: black; cursor: pointer; transition: 0.2s;\">Recommendation::</a></span></h4><p class=\"details_para\" style=\"margin: 1em 0px; line-height: 20px; font-size: 15px;\">-For hacking underneath road, recommended to use Unitronic RS422 data cable for better reliability.<br>-Recomended to use MAG Barrier gate for maximum compatibility and reliablity</p></div></div>', '2024_12_07_015750_41203731.jpg', 1352.81, 1893.26, 0, 199, '', NULL, 1, 'flash_deal', '02/02/2022', '', '', NULL, '2021-09-30 09:48:39', '2024-12-08 23:09:26', NULL, NULL, 'normal', 'xrDVqHCt.jpg', NULL),
(569, 22, NULL, NULL, 3, NULL, 'Walk-through Metal Detector (Indoor)', 'Walk-through-Metal-Detector--Indoor-', '65dVy8Jt45xsrr', '', NULL, '- 6/12/18 pinpoint zones precisely identify multiple target locations from head to toe.', NULL, NULL, 0, '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px; font-weight: 700;\">- 6/12/18 pinpoint zones precisely identify multiple target locations from head to toe.</span><br style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px; font-weight: 700;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px; font-weight: 700;\">- Advance broadband detection technology: can detect ferrous and non-ferrous articles.</span><br style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px; font-weight: 700;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px; font-weight: 700;\">- Shock proof to avoid false alarm.</span><br style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px; font-weight: 700;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px; font-weight: 700;\">- Sound and LED light alarm</span><br style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px; font-weight: 700;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px; font-weight: 700;\">- With remote controller</span><br style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px; font-weight: 700;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px; font-weight: 700;\">- Modular structure to easy after service.</span>', '2024_12_07_125545_26272607.jpg', 1352.81, 1893.26, 0, 199, '', NULL, 1, 'new', '', '', '', NULL, '2021-09-30 09:48:39', '2024-12-08 23:09:20', NULL, NULL, 'normal', 't4WZXHGG.jpg', NULL),
(570, 22, NULL, NULL, 3, NULL, 'HAWK-XTS 2500 NON-LINEAR JUNCTION DETECTOR', 'HAWK-XTS-2500-NON-LINEAR-JUNCTION-DETECTOR', '65dVy8Jrt546gcsw', '', NULL, '- The Hawk XTS-2500 is a portable, simple to use advanced Electronic Device Detector, also known as a Non-Linear Junction Detector (NLJD).', NULL, NULL, 0, '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\">- The Hawk XTS-2500 is a portable, simple to use advanced Electronic Device Detector, also known as a Non-Linear Junction Detector (NLJD).</span><br style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\">- The Hawk XTS-2500 is capable of locating and confirming the presence of electronic components found in devices, regardless whether they are switched on or off.</span><br style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\">- The Hawk XTS-2500 gives both audible and visual alarms to allow the searcher to conduct searches in a covert environment.</span>', '2024_12_07_125820_65694025.jpg', 1352.81, 1893.26, 0, 199, '', NULL, 1, 'new', '', '', '', NULL, '2021-09-30 09:48:39', '2024-12-08 23:04:34', NULL, NULL, 'normal', 'QoQNHBM1.jpg', NULL),
(571, 22, NULL, NULL, 3, NULL, 'NJE-4000 [ORION Non-Linear Junction Evaluator]', 'NJE-4000--ORION-Non-Linear-Junction-Evaluator-', '65dVy8Jrtxew', '', NULL, 'NJE-4000 [ORION Non-Linear Junction Evaluator]', NULL, NULL, 0, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '2024_12_07_125941_32185759.jpg', 1352.81, 1893.26, 0, 199, '', NULL, 1, 'new', '', '', '', NULL, '2021-09-30 09:48:39', '2024-12-08 23:09:14', NULL, NULL, 'normal', 'sm3YjEol.jpg', NULL),
(580, 22, NULL, NULL, 3, NULL, 'NEW ORION 2.4 HX NON LINEAR JUNCTION DETECTOR', 'NEW-ORION-2-4-HX-NON-LINEAR-JUNCTION-DETECTOR', '65dVy8Jrtfdg4', '', NULL, 'NEW ORION 2.4 HX NON LINEAR JUNCTION DETECTOR', NULL, NULL, 0, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '2024_12_07_010040_39195313.jpg', 1352.81, 1893.26, 0, 197, '', NULL, 1, 'new', NULL, '', '', NULL, '2021-09-30 09:48:39', '2024-12-08 23:09:06', NULL, NULL, 'normal', 'xUFzb4YX.jpg', NULL),
(593, 21, NULL, NULL, 3, 7, 'Test Product', 'Test-Product', 'dGu512Vusu', 'test', NULL, 'Test Desc', '[\"Color\"]', '[\"Red\"]', 1, '<p>Test DescTest DescTest DescTest DescTest DescTest Desc</p>', '2024_12_07_015350_80407325.gif', 100, 120, 0, 10000, '', NULL, 1, 'undefine', NULL, NULL, NULL, NULL, '2024-11-16 01:26:58', '2024-12-07 07:53:50', NULL, NULL, 'normal', 'ZRxDn1yT.gif', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `file`, `name`, `is_default`, `rtl`, `created_at`, `updated_at`, `type`) VALUES
(1, 'English', '1647794127lN7PfPAc.json', '1647794127lN7PfPAc', 1, 0, NULL, NULL, 'Website'),
(2, 'Arabic', '1647792286wzAqXQOx.json', '1647792286wzAqXQOx', 0, 1, NULL, NULL, 'Website'),
(3, 'English', '1647794074eEeCbfDD.json', '1647794074eEeCbfDD', 1, 0, NULL, NULL, 'Dashboard'),
(4, 'Arabic', '1638870927JMqjbCXv.json', '1638870927JMqjbCXv', 0, 1, NULL, NULL, 'Dashboard');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `ticket_id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'test', '2021-12-03 06:33:29', '2021-12-03 06:33:29');

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
(1, '2021_08_21_073142_create_admins_table', 1),
(2, '2021_08_21_073507_create_users_table', 1),
(3, '2021_09_20_144419_create_items_table', 1),
(4, '2021_09_20_151605_create_settings_table', 1),
(5, '2021_09_21_073848_create_attributes_table', 1),
(6, '2021_09_21_073951_create_attribute_options_table', 1),
(7, '2021_09_21_074028_create_banners_table', 1),
(8, '2021_09_21_074231_create_bcategories_table', 1),
(9, '2021_09_21_074309_create_brands_table', 1),
(10, '2021_09_21_074412_create_campaign_items_table', 1),
(11, '2021_09_21_074536_create_categories_table', 1),
(12, '2021_09_21_074744_create_chield_categories_table', 1),
(13, '2021_09_21_074952_create_countries_table', 1),
(14, '2021_09_21_075024_create_currencies_table', 1),
(15, '2021_09_21_075231_create_email_templates_table', 1),
(16, '2021_09_21_075346_create_faqs_table', 1),
(17, '2021_09_21_075642_create_fcategories_table', 1),
(18, '2021_09_21_080223_create_galleries_table', 1),
(19, '2021_09_21_080320_create_home_cutomizes_table', 1),
(20, '2021_09_21_080454_create_languages_table', 1),
(21, '2021_09_21_080652_create_messages_table', 1),
(22, '2021_09_21_080805_create_notifications_table', 1),
(23, '2021_09_21_090957_create_orders_table', 1),
(25, '2021_09_21_092255_create_payment_settings_table', 1),
(26, '2021_09_21_092722_create_posts_table', 1),
(27, '2021_09_21_092801_create_promo_codes_table', 1),
(28, '2021_09_21_093709_create_reviews_table', 1),
(29, '2021_09_21_093833_create_roles_table', 1),
(30, '2021_09_21_094020_create_services_table', 1),
(31, '2021_09_21_094413_create_shipping_services_table', 1),
(32, '2021_09_21_094517_create_sliders_table', 1),
(33, '2021_09_21_094630_create_socials_table', 1),
(34, '2021_09_21_094739_create_subcategories_table', 1),
(35, '2021_09_21_094831_create_subscribers_table', 1),
(36, '2021_09_21_094903_create_taxes_table', 1),
(37, '2021_09_21_095021_create_tickets_table', 1),
(38, '2021_09_21_095605_create_track_orders_table', 1),
(39, '2021_09_21_095650_create_transactions_table', 1),
(40, '2021_09_21_095836_create_wishlists_table', 1),
(41, '2021_09_21_091316_create_pages_table', 2),
(42, '2021_09_22_095954_add_extra_visibility_to_settings_table', 3),
(43, '2021_09_29_075836_add_theme_to_settings_table', 4),
(44, '2021_09_30_103035_google_chapcha_to_settings__table', 5),
(45, '2021_10_04_141643_add_currency_deraction_to_settings_table', 6),
(46, '2021_10_08_135417_add_theme_field_to_sliders_table', 7),
(51, '2021_10_09_153059_license_to_items_table', 8),
(56, '2021_10_09_173004_remove_item_type_to_items_table', 9),
(57, '2021_10_09_173038_set_item_type_to_items_table', 9),
(58, '2021_10_10_051502_add_scrript_to_settings_table', 10),
(59, '2021_10_10_142339_thumbnail_to_items_table', 11),
(61, '2021_10_10_163455_home_page4_to_home_cutomizes_table', 12),
(62, '2021_10_11_090243_create_extra_settings_table', 13),
(63, '2021_10_12_145150_add_home4populer_category_to_home_cutomizes_table', 14),
(64, '2021_10_13_100048_create_sitemaps_table', 15),
(65, '2021_10_15_140708_add_type_to_promo_codes_table', 16),
(66, '2021_10_15_163958_add_announcement_link_to_settings_table', 17),
(68, '2021_11_21_143624_add_shop_extra_field_to_settings_table', 19),
(69, '2021_11_20_105052_add_stock_to_attribute_options_table', 20),
(71, '2021_11_21_151422_add_home_page_title_to_settings_table', 21),
(72, '2021_11_23_141528_add_type_to_languages_table', 22),
(73, '2021_11_23_144810_add_privacy_terms_to_settings_table', 23),
(74, '2021_11_23_182026_add_guest_checkout_to_settings_table', 24),
(76, '2021_11_24_144859_add_guest_hero_banner_to_home_cutomizes_table', 25),
(77, '2021_11_26_163222_add_affiliate_link_to_items_table', 26),
(78, '2021_11_27_113624_add_css_field_to_settings_table', 27),
(79, '2021_12_05_161222_add_flash_section_to_extra_settings_table', 28),
(82, '2021_12_05_165840_add_popup_field_to_settings_table', 29),
(83, '2021_12_06_141255_add_3column_section_to_extra_settings_table', 30),
(84, '2022_01_03_141239_add_currency_seperator_to_settings_table', 31),
(85, '2022_01_04_142738_create_states_table', 32),
(86, '2022_01_04_145532_add_state_id_to_users_table', 33),
(88, '2022_01_04_161647_add_state_id_to_orders_table', 34),
(89, '2022_01_06_155345_add_disqus_to_settings_table', 35),
(90, '2022_01_16_143429_add_type_to_states_table', 36),
(91, '2022_01_16_153254_add_state_to_orders_table', 37),
(92, '2022_03_01_162121_add_is_decemial_to_settings_table', 38),
(93, '2022_03_20_154807_update_column_to_home_cutomizes_table', 39),
(94, '2023_10_10_151706_order_mail_settings_table', 40),
(95, '2023_10_10_151706_ticket_mail_settings_table', 40);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_read` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `order_id`, `user_id`, `is_read`, `created_at`, `updated_at`) VALUES
(1, NULL, 9, 0, '2024-12-05 18:46:32', '2024-12-05 18:46:32');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci,
  `currency_sign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` text COLLATE utf8mb4_unicode_ci,
  `shipping` text COLLATE utf8mb4_unicode_ci,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txnid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` double NOT NULL DEFAULT '0',
  `charge_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_info` text COLLATE utf8mb4_unicode_ci,
  `billing_info` text COLLATE utf8mb4_unicode_ci,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state_price` double DEFAULT '0',
  `state` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `currency_sign`, `currency_value`, `discount`, `shipping`, `payment_method`, `txnid`, `tax`, `charge_id`, `transaction_number`, `order_status`, `shipping_info`, `billing_info`, `payment_status`, `created_at`, `updated_at`, `state_price`, `state`) VALUES
(122, 0, '{\"535-Red,M\":{\"options_id\":[269,1094],\"attribute\":{\"names\":[\"Color\",\"Size\"],\"option_name\":[\"Red\",\"M\"],\"option_price\":[5,5]},\"attribute_price\":10,\"name\":\"2021 Summer Women Clothing Ropa Sexy Lady Cut Out Halter Mini Dresses\",\"slug\":\"-----Summer-Women-Clothing-Ropa-Sexy-Lady-Cut-Out-Halter-Mini-Dresses\",\"qty\":\"1\",\"price\":144.830000000000012505552149377763271331787109375,\"main_price\":134.830000000000012505552149377763271331787109375,\"photo\":\"1634135320H408d7d7e37b4437297de600584c1af1fL.jpg\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', '$', '1', '[]', '{\"id\":1,\"title\":\"Free Delevery\",\"price\":0,\"minimum_price\":1000,\"is_condition\":1,\"status\":1,\"created_at\":null,\"updated_at\":null}', 'Cash On Delivery', NULL, 1.3483, NULL, 'zNF5gDbPnM', 'Pending', '{\"ship_first_name\":\"showrav\",\"ship_last_name\":\"Hasan\",\"ship_email\":\"teacher@gmail.com\",\"ship_phone\":\"01728332009\",\"ship_company\":null,\"ship_address1\":\"Munshinogor,Delduar,Tangail,Dhaka,Bangladesh\",\"ship_address2\":null,\"ship_zip\":\"1234\",\"ship_city\":\"Tangail...\",\"ship_country\":\"Bangladesh\"}', '{\"_token\":\"QOD5MKmJWvK28KB8O9k913pbovZvrzIHs89Ac2KK\",\"bill_first_name\":\"showrav\",\"bill_last_name\":\"Hasan\",\"bill_email\":\"teacher@gmail.com\",\"bill_phone\":\"01728332009\",\"bill_company\":null,\"bill_address1\":\"Munshinogor,Delduar,Tangail,Dhaka,Bangladesh\",\"bill_address2\":null,\"bill_zip\":\"1234\",\"bill_city\":\"Tangail...\",\"bill_country\":\"Bangladesh\",\"same_ship_address\":\"on\"}', 'Unpaid', '2022-01-16 09:37:45', '2022-01-16 09:37:45', 14.483, '{\"id\":6,\"name\":\"India\",\"price\":10,\"status\":1,\"type\":\"fixed\"}'),
(123, 1, '{\"587-Red,M\":{\"options_id\":[429,1126],\"attribute\":{\"names\":[\"Color\",\"Size\"],\"option_name\":[\"Red\",\"M\"],\"option_price\":[5,5]},\"attribute_price\":10,\"name\":\"New French Elegant White Bubble Sleeve Party Dress Casual A-Line Dresses, Long Sleeve Dresses\",\"slug\":\"0AENew-French-Elegant-White-Bubble-Sleeve-Party-Dress-Casual-ALine-Dresses-Long-Sleeve-DressesnC\",\"qty\":\"1\",\"price\":344.82999999999998408384271897375583648681640625,\"main_price\":334.82999999999998408384271897375583648681640625,\"photo\":\"1634134144H03667d1e3ae44be08f32b72d840db095J.jpg\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', '$', '1', '[]', '{\"id\":1,\"title\":\"Free Delevery\",\"price\":0,\"minimum_price\":1000,\"is_condition\":1,\"status\":1,\"created_at\":null,\"updated_at\":null}', 'Stripe', 'txn_3KIb9QH3jdWvr8gE1Ph1bOxa', 3.3483, 'ch_3KIb9QH3jdWvr8gE1d2Ivr4f', 'ZN6ve2FsBf', 'Pending', '{\"ship_first_name\":\"Alex\",\"ship_last_name\":\"Smith\",\"ship_email\":\"user@gmail.com\",\"ship_phone\":\"01728332009\",\"ship_company\":null,\"ship_address1\":\"472 Clark Street,  Bay Shore, New York\",\"ship_address2\":null,\"ship_zip\":\"3444\",\"ship_city\":\"New York\",\"ship_country\":\"United States\"}', '{\"_token\":\"QOD5MKmJWvK28KB8O9k913pbovZvrzIHs89Ac2KK\",\"bill_first_name\":\"Alex\",\"bill_last_name\":\"Smith\",\"bill_email\":\"user@gmail.com\",\"bill_phone\":\"01728332009\",\"bill_company\":null,\"bill_address1\":\"472 Clark Street,  Bay Shore, New York\",\"bill_address2\":null,\"bill_zip\":\"3444\",\"bill_city\":\"New York\",\"bill_country\":\"United States\",\"same_ship_address\":\"on\"}', 'Paid', '2022-01-16 10:00:15', '2022-01-16 10:00:15', 34.483, '{\"id\":6,\"name\":\"India\",\"price\":10,\"status\":1,\"type\":\"percentage\"}'),
(124, 1, '{\"534-Red,M\":{\"options_id\":[265,1093],\"attribute\":{\"names\":[\"Color\",\"Size\"],\"option_name\":[\"Red\",\"M\"],\"option_price\":[5,5]},\"attribute_price\":10,\"name\":\"Top Sale High Quality Newest Designs Custom Women Clothing Wholesale from China Dresses\",\"slug\":\"Top-Sale-High-Quality-Newest-Designs-Custom-Women-Clothing-Wholesale-from-China-Dresses\",\"qty\":\"1\",\"price\":69.5499999999999971578290569595992565155029296875,\"main_price\":59.5499999999999971578290569595992565155029296875,\"photo\":\"1634135337H948b3bef197c492d999473dffa5303f9P.jpg\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', '$', '1', '[]', '{\"id\":1,\"title\":\"Free Delevery\",\"price\":0,\"minimum_price\":1000,\"is_condition\":1,\"status\":1,\"created_at\":null,\"updated_at\":null}', 'Cash On Delivery', NULL, 0.5955, NULL, 'GPt4RZ0RCq', 'Pending', '{\"ship_first_name\":\"Alex\",\"ship_last_name\":\"Smith\",\"ship_email\":\"user@gmail.com\",\"ship_phone\":\"01728332009\",\"ship_company\":null,\"ship_address1\":\"472 Clark Street,  Bay Shore, New York\",\"ship_address2\":null,\"ship_zip\":\"3444\",\"ship_city\":\"New York\",\"ship_country\":\"United States\"}', '{\"_token\":\"QOD5MKmJWvK28KB8O9k913pbovZvrzIHs89Ac2KK\",\"bill_first_name\":\"Alex\",\"bill_last_name\":\"Smith\",\"bill_email\":\"user@gmail.com\",\"bill_phone\":\"01728332009\",\"bill_company\":null,\"bill_address1\":\"472 Clark Street,  Bay Shore, New York\",\"bill_address2\":null,\"bill_zip\":\"3444\",\"bill_city\":\"New York\",\"bill_country\":\"United States\",\"same_ship_address\":\"on\"}', 'Unpaid', '2022-01-16 10:03:35', '2022-01-16 10:03:35', 6.955, '{\"id\":6,\"name\":\"India\",\"price\":10,\"status\":1,\"type\":\"percentage\"}'),
(125, 1, '{\"534-Red,M\":{\"options_id\":[265,1093],\"attribute\":{\"names\":[\"Color\",\"Size\"],\"option_name\":[\"Red\",\"M\"],\"option_price\":[5,5]},\"attribute_price\":10,\"name\":\"Top Sale High Quality Newest Designs Custom Women Clothing Wholesale from China Dresses\",\"slug\":\"Top-Sale-High-Quality-Newest-Designs-Custom-Women-Clothing-Wholesale-from-China-Dresses\",\"qty\":\"1\",\"price\":69.5499999999999971578290569595992565155029296875,\"main_price\":59.5499999999999971578290569595992565155029296875,\"photo\":\"1634135337H948b3bef197c492d999473dffa5303f9P.jpg\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', '$', '1', '[]', '{\"id\":2,\"title\":\"Delivery\",\"price\":20,\"minimum_price\":0,\"is_condition\":0,\"status\":1,\"created_at\":null,\"updated_at\":null}', 'Cash On Delivery', NULL, 0.5955, NULL, '0HGakDhxlW', 'In Progress', '{\"ship_first_name\":\"Alex\",\"ship_last_name\":\"Smith\",\"ship_email\":\"user@gmail.com\",\"ship_phone\":\"01728332009\",\"ship_company\":null,\"ship_address1\":\"472 Clark Street,  Bay Shore, New York\",\"ship_address2\":null,\"ship_zip\":\"3444\",\"ship_city\":\"New York\",\"ship_country\":\"United States\"}', '{\"_token\":\"QOD5MKmJWvK28KB8O9k913pbovZvrzIHs89Ac2KK\",\"bill_first_name\":\"Alex\",\"bill_last_name\":\"Smith\",\"bill_email\":\"user@gmail.com\",\"bill_phone\":\"01728332009\",\"bill_company\":null,\"bill_address1\":\"472 Clark Street,  Bay Shore, New York\",\"bill_address2\":null,\"bill_zip\":\"3444\",\"bill_city\":\"New York\",\"bill_country\":\"United States\",\"same_ship_address\":\"on\"}', 'Unpaid', '2022-01-16 10:08:36', '2022-02-28 08:24:36', 6.955, '{\"id\":6,\"name\":\"India\",\"price\":10,\"status\":1,\"type\":\"percentage\"}'),
(126, 1, '{\"587-Pink,XXL\":{\"options_id\":[432,1264],\"attribute\":{\"names\":[\"Color\",\"Size\"],\"option_name\":[\"Pink\",\"XXL\"],\"option_price\":[8,7]},\"attribute_price\":15,\"name\":\"New French Elegant White Bubble Sleeve Party Dress Casual A-Line Dresses, Long Sleeve Dresses\",\"slug\":\"0AENew-French-Elegant-White-Bubble-Sleeve-Party-Dress-Casual-ALine-Dresses-Long-Sleeve-DressesnC\",\"qty\":\"2\",\"price\":344.82999999999998408384271897375583648681640625,\"main_price\":334.82999999999998408384271897375583648681640625,\"photo\":\"1634134144H03667d1e3ae44be08f32b72d840db095J.jpg\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', '$', '1', '[]', '{\"id\":2,\"title\":\"Delivery\",\"price\":20,\"minimum_price\":0,\"is_condition\":0,\"status\":1,\"created_at\":null,\"updated_at\":null}', 'Stripe', 'txn_3KIcZsH3jdWvr8gE1xCmNaNe', 3.3483, 'ch_3KIcZsH3jdWvr8gE1g4sD0jO', 'Ffr4zOVXnf', 'Delivered', '{\"ship_first_name\":\"Alex\",\"ship_last_name\":\"Smith\",\"ship_email\":\"user@gmail.com\",\"ship_phone\":\"01728332009\",\"ship_company\":null,\"ship_address1\":\"472 Clark Street,  Bay Shore, New York\",\"ship_address2\":null,\"ship_zip\":\"3444\",\"ship_city\":\"New York\",\"ship_country\":\"United States\"}', '{\"_token\":\"72BuSB7wcI55oScnzMJaMuCK0ZBFOdNoLGTqPuI0\",\"bill_first_name\":\"Alex\",\"bill_last_name\":\"Smith\",\"bill_email\":\"user@gmail.com\",\"bill_phone\":\"01728332009\",\"bill_company\":null,\"bill_address1\":\"472 Clark Street,  Bay Shore, New York\",\"bill_address2\":null,\"bill_zip\":\"3444\",\"bill_city\":\"New York\",\"bill_country\":\"United States\",\"same_ship_address\":\"on\"}', 'Paid', '2022-01-16 11:31:41', '2022-01-17 03:59:27', 68.466, '{\"id\":6,\"name\":\"India\",\"price\":10,\"status\":1,\"type\":\"percentage\"}'),
(127, 1, '{\"587-Pink,XXL\":{\"options_id\":[432,1264],\"attribute\":{\"names\":[\"Color\",\"Size\"],\"option_name\":[\"Pink\",\"XXL\"],\"option_price\":[8,7]},\"attribute_price\":15,\"name\":\"New French Elegant White Bubble Sleeve Party Dress Casual A-Line Dresses, Long Sleeve Dresses\",\"slug\":\"0AENew-French-Elegant-White-Bubble-Sleeve-Party-Dress-Casual-ALine-Dresses-Long-Sleeve-DressesnC\",\"qty\":\"1\",\"price\":344.82999999999998408384271897375583648681640625,\"main_price\":334.82999999999998408384271897375583648681640625,\"photo\":\"1634134144H03667d1e3ae44be08f32b72d840db095J.jpg\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', '$', '1', '[]', '{\"id\":2,\"title\":\"Delivery\",\"price\":20,\"minimum_price\":0,\"is_condition\":0,\"status\":1,\"created_at\":null,\"updated_at\":null}', 'Paypal', '0JS90047YT3185603', 1, NULL, 'rTgJph3cv8', 'Delivered', '{\"ship_first_name\":\"Alex\",\"ship_last_name\":\"Smith\",\"ship_email\":\"user@gmail.com\",\"ship_phone\":\"01728332009\",\"ship_company\":null,\"ship_address1\":\"472 Clark Street,  Bay Shore, New York\",\"ship_address2\":null,\"ship_zip\":\"3444\",\"ship_city\":\"New York\",\"ship_country\":\"United States\"}', '{\"_token\":\"72BuSB7wcI55oScnzMJaMuCK0ZBFOdNoLGTqPuI0\",\"bill_first_name\":\"Alex\",\"bill_last_name\":\"Smith\",\"bill_email\":\"user@gmail.com\",\"bill_phone\":\"01728332009\",\"bill_company\":null,\"bill_address1\":\"472 Clark Street,  Bay Shore, New York\",\"bill_address2\":null,\"bill_zip\":\"3444\",\"bill_city\":\"New York\",\"bill_country\":\"United States\",\"same_ship_address\":\"on\"}', 'Paid', '2022-01-16 11:33:57', '2022-01-17 03:59:21', 34.983, '{\"id\":6,\"name\":\"India\",\"price\":10,\"status\":1,\"type\":\"percentage\"}'),
(128, 1, '{\"539-Pink,XXL\":{\"options_id\":[288,1236],\"attribute\":{\"names\":[\"Color\",\"Size\"],\"option_name\":[\"Pink\",\"XXL\"],\"option_price\":[8,7]},\"attribute_price\":15,\"name\":\"Clothing Women 2021 New Fashion Printed Knitwear Round Neck Casual Couple Clothing Christmas\",\"slug\":\"Clothing-Women------New-Fashion-Printed-Knitwear-Round-Neck-Casual-Couple-Clothing-Christmas\",\"qty\":\"2\",\"price\":66.18000000000000682121026329696178436279296875,\"main_price\":56.17999999999999971578290569595992565155029296875,\"photo\":\"1634134958H8b2502797ffe4c93984c99bdd5061ab3W.jpg\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', '$', '1', '[]', '{\"id\":2,\"title\":\"Delivery\",\"price\":20,\"minimum_price\":0,\"is_condition\":0,\"status\":1,\"created_at\":null,\"updated_at\":null}', 'Stripe', 'txn_3KIcesH3jdWvr8gE17fmrDps', 0.5618, 'ch_3KIcesH3jdWvr8gE1bWbzyns', 'JrV7oupswB', 'Delivered', '{\"ship_first_name\":\"Alex\",\"ship_last_name\":\"Smith\",\"ship_email\":\"user@gmail.com\",\"ship_phone\":\"01728332009\",\"ship_company\":null,\"ship_address1\":\"472 Clark Street,  Bay Shore, New York\",\"ship_address2\":null,\"ship_zip\":\"3444\",\"ship_city\":\"New York\",\"ship_country\":\"United States\"}', '{\"_token\":\"72BuSB7wcI55oScnzMJaMuCK0ZBFOdNoLGTqPuI0\",\"bill_first_name\":\"Alex\",\"bill_last_name\":\"Smith\",\"bill_email\":\"user@gmail.com\",\"bill_phone\":\"01728332009\",\"bill_company\":null,\"bill_address1\":\"472 Clark Street,  Bay Shore, New York\",\"bill_address2\":null,\"bill_zip\":\"3444\",\"bill_city\":\"New York\",\"bill_country\":\"United States\",\"same_ship_address\":\"on\"}', 'Paid', '2022-01-16 11:36:51', '2022-01-17 03:59:15', 12.736, '{\"id\":6,\"name\":\"India\",\"price\":10,\"status\":1,\"type\":\"percentage\"}'),
(129, 1, '{\"586-Red,M\":{\"options_id\":[425,1125],\"attribute\":{\"names\":[\"Color\",\"Size\"],\"option_name\":[\"Red\",\"M\"],\"option_price\":[5,5]},\"attribute_price\":10,\"name\":\"BREYLEE facial mask hyaluronic acid facial firming mask beauty\",\"slug\":\"Td5BREYLEE-facial-mask-hyaluronic-acid-facial-firming-mask-beautyca\",\"qty\":\"1\",\"price\":1362.80999999999994543031789362430572509765625,\"main_price\":1352.80999999999994543031789362430572509765625,\"photo\":\"1634134188HTB1ymRhXfjsK1Rjy1Xaq6zispXad.jpg\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', '$', '1', '[]', '{\"id\":1,\"title\":\"Free Delevery\",\"price\":0,\"minimum_price\":1000,\"is_condition\":1,\"status\":1,\"created_at\":null,\"updated_at\":null}', 'Stripe', 'txn_3KIcihH3jdWvr8gE1jYOlJfQ', 13.5281, 'ch_3KIcihH3jdWvr8gE164YxcvT', 'HhgjzEg09z', 'Delivered', '{\"ship_first_name\":\"Alex\",\"ship_last_name\":\"Smith\",\"ship_email\":\"user@gmail.com\",\"ship_phone\":\"01728332009\",\"ship_company\":null,\"ship_address1\":\"472 Clark Street,  Bay Shore, New York\",\"ship_address2\":null,\"ship_zip\":\"3444\",\"ship_city\":\"New York\",\"ship_country\":\"United States\"}', '{\"_token\":\"72BuSB7wcI55oScnzMJaMuCK0ZBFOdNoLGTqPuI0\",\"bill_first_name\":\"Alex\",\"bill_last_name\":\"Smith\",\"bill_email\":\"user@gmail.com\",\"bill_phone\":\"01728332009\",\"bill_company\":null,\"bill_address1\":\"472 Clark Street,  Bay Shore, New York\",\"bill_address2\":null,\"bill_zip\":\"3444\",\"bill_city\":\"New York\",\"bill_country\":\"United States\",\"same_ship_address\":\"on\"}', 'Paid', '2022-01-16 11:40:48', '2022-01-17 03:59:09', 136.281, '{\"id\":6,\"name\":\"India\",\"price\":10,\"status\":1,\"type\":\"percentage\"}'),
(130, 1, '{\"535-Red,M\":{\"options_id\":[269,1094],\"attribute\":{\"names\":[\"Color\",\"Size\"],\"option_name\":[\"Red\",\"M\"],\"option_price\":[5,5]},\"attribute_price\":10,\"name\":\"2021 Summer Women Clothing Ropa Sexy Lady Cut Out Halter Mini Dresses\",\"slug\":\"-----Summer-Women-Clothing-Ropa-Sexy-Lady-Cut-Out-Halter-Mini-Dresses\",\"qty\":\"1\",\"price\":144.830000000000012505552149377763271331787109375,\"main_price\":134.830000000000012505552149377763271331787109375,\"photo\":\"1634135320H408d7d7e37b4437297de600584c1af1fL.jpg\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', '$', '1', '[]', '{\"id\":2,\"title\":\"Delivery\",\"price\":20,\"minimum_price\":0,\"is_condition\":0,\"status\":1,\"created_at\":null,\"updated_at\":null}', 'Cash On Delivery', NULL, 1.3483, NULL, 'j0W5sAeolz', 'Pending', '{\"ship_first_name\":\"showrav\",\"ship_last_name\":\"Hasan\",\"ship_email\":\"showrabhasan715@gmail.com\",\"ship_phone\":\"0172833200\",\"ship_company\":null,\"ship_address1\":\"Dhaka,Bangladesh\",\"ship_address2\":null,\"ship_zip\":\"1234\",\"ship_city\":\"Tangail...\",\"ship_country\":\"Bangladesh\"}', '{\"_token\":\"qm68PlIpjNaoP7Tkcz9JT55huv8mzjCgs8YnHJsW\",\"bill_first_name\":\"showrav\",\"bill_last_name\":\"Hasan\",\"bill_email\":\"showrabhasan715@gmail.com\",\"bill_phone\":\"0172833200\",\"bill_company\":null,\"bill_address1\":\"Dhaka,Bangladesh\",\"bill_address2\":null,\"bill_zip\":\"1234\",\"bill_city\":\"Tangail...\",\"bill_country\":\"Bangladesh\",\"same_ship_address\":\"on\"}', 'Unpaid', '2022-03-01 10:10:39', '2022-03-01 10:10:39', 5.7932, '{\"id\":7,\"name\":\"California\",\"price\":4,\"status\":1,\"type\":\"percentage\"}'),
(131, 1, '{\"587-Red,M\":{\"options_id\":[429,1126],\"attribute\":{\"names\":[\"Color\",\"Size\"],\"option_name\":[\"Red\",\"M\"],\"option_price\":[5,5]},\"attribute_price\":10,\"name\":\"New French Elegant White Bubble Sleeve Party Dress Casual A-Line Dresses, Long Sleeve Dresses\",\"slug\":\"0AENew-French-Elegant-White-Bubble-Sleeve-Party-Dress-Casual-ALine-Dresses-Long-Sleeve-DressesnC\",\"qty\":\"1\",\"price\":344.83,\"main_price\":334.83,\"photo\":\"1634134144H03667d1e3ae44be08f32b72d840db095J.jpg\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null},\"586-Red,M\":{\"options_id\":[425,1125],\"attribute\":{\"names\":[\"Color\",\"Size\"],\"option_name\":[\"Red\",\"M\"],\"option_price\":[5,5]},\"attribute_price\":10,\"name\":\"BREYLEE facial mask hyaluronic acid facial firming mask beauty\",\"slug\":\"Td5BREYLEE-facial-mask-hyaluronic-acid-facial-firming-mask-beautyca\",\"qty\":\"1\",\"price\":1362.81,\"main_price\":1352.81,\"photo\":\"1634134188HTB1ymRhXfjsK1Rjy1Xaq6zispXad.jpg\",\"item_type\":\"normal\",\"item_l_n\":null,\"item_l_k\":null}}', '$', '1', '[]', '{\"id\":1,\"title\":\"Free Delevery\",\"price\":0,\"minimum_price\":1000,\"is_condition\":1,\"status\":1,\"created_at\":null,\"updated_at\":null}', 'Cash On Delivery', NULL, 16.8764, NULL, 'TyExwhsbeS', 'Pending', '{\"ship_first_name\":\"Alex\",\"ship_last_name\":\"Smith\",\"ship_email\":\"user@gmail.com\",\"ship_phone\":\"01728332009\",\"ship_company\":null,\"ship_address1\":\"472 Clark Street,  Bay Shore, New York\",\"ship_address2\":null,\"ship_zip\":\"3444\",\"ship_city\":\"New York\",\"ship_country\":\"United States\"}', '{\"_token\":\"wMuLFwlTenaXlbg4ZZk2UrBZxBHJqtgBs8USQUmC\",\"bill_first_name\":\"Alex\",\"bill_last_name\":\"Smith\",\"bill_email\":\"user@gmail.com\",\"bill_phone\":\"01728332009\",\"bill_company\":null,\"bill_address1\":\"472 Clark Street,  Bay Shore, New York\",\"bill_address2\":null,\"bill_zip\":\"3444\",\"bill_city\":\"New York\",\"bill_country\":\"United States\",\"same_ship_address\":\"on\"}', 'Unpaid', '2022-03-02 02:15:49', '2022-03-02 02:15:49', 0, NULL),
(132, 1, '{\"577-\":{\"options_id\":[],\"attribute\":{\"names\":[],\"option_name\":[],\"option_price\":[]},\"attribute_price\":0,\"name\":\"Best Online Wholesale Website Design and development company | Ecommerce shopping webdesign\",\"slug\":\"fgcBest-Online-Wholesale-Website-Design-and-development-company--Ecommerce-shopping-webdesign8q\",\"qty\":\"1\",\"price\":35,\"main_price\":35,\"photo\":\"1634134411Ucc4d26e9889041dc899c3522859ed3f88.jpg\",\"item_type\":\"license\",\"item_l_n\":\"5\",\"item_l_k\":\"5\"}}', '$', '1', '[]', '{\"id\":2,\"title\":\"Delivery\",\"price\":20,\"minimum_price\":0,\"is_condition\":0,\"status\":1,\"created_at\":null,\"updated_at\":null}', 'Stripe', 'txn_3KYnNsH3jdWvr8gE0GZ6b8YQ', 0.35, 'ch_3KYnNsH3jdWvr8gE0WD94EcP', 'w10xGWiN80', 'Pending', '{\"ship_first_name\":\"Alex\",\"ship_last_name\":\"Smith\",\"ship_email\":\"user@gmail.com\",\"ship_phone\":\"01728332009\"}', '{\"_token\":\"wMuLFwlTenaXlbg4ZZk2UrBZxBHJqtgBs8USQUmC\",\"bill_first_name\":\"Alex\",\"bill_last_name\":\"Smith\",\"bill_email\":\"user@gmail.com\",\"bill_phone\":\"01728332009\",\"same_ship_address\":\"on\"}', 'Paid', '2022-03-02 02:18:08', '2022-03-02 02:18:08', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_descriptions` text COLLATE utf8mb4_unicode_ci,
  `pos` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `details`, `meta_keywords`, `meta_descriptions`, `pos`, `created_at`, `updated_at`) VALUES
(7, 'Why Us', 'why-us', '<h3 style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; padding: 0px; text-align: center;\"><br></h3><div><div class=\"row\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif;\"><div class=\"col-lg-3 col-xs-6 col-sm-4\" style=\"float: left; width: 292.5px;\"><div class=\"thumbnail\" style=\"padding: 0px; margin-bottom: 20px; line-height: 1.42857; border-top: none; border-right: none; border-bottom: 4px double rgb(231, 231, 231); border-left: none; border-image: initial; border-radius: 0px; transition: 0.2s ease-in-out; text-align: center; position: relative;\"><img width=\"200\" height=\"200\" class=\"img-responsive\" src=\"https://its.com.bd/img/solution.jpg\" data-src=\"\" alt=\"...\" style=\"border: 0px; max-width: 100%; height: auto; display: block; margin-right: auto; margin-left: auto; transition: 0.5s ease-in-out 0.2s;\"><div class=\"caption\" style=\"padding: 9px 2px;\"><h3 style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; padding: 0px;\"><b>Complete solution from a single supplier</b></h3><p class=\"details_para\" style=\"margin: 1em 0px; line-height: 20px; font-size: 15px; text-align: left;\">We save you the trouble to deal with multiple vendor for consultation, pricing, sourcing, delivery, tech support and warranty. You tell us your requirement, we help to integrate our equipments to become a solution for you. You have no need to worry any compatibility issues – hassle free for you.</p></div></div></div><div class=\"col-lg-3 col-xs-6 col-sm-4\" style=\"float: left; width: 292.5px;\"><div class=\"thumbnail\" style=\"padding: 0px; margin-bottom: 20px; line-height: 1.42857; border-top: none; border-right: none; border-bottom: 4px double rgb(231, 231, 231); border-left: none; border-image: initial; border-radius: 0px; transition: 0.2s ease-in-out; text-align: center; position: relative;\"><img width=\"200\" height=\"200\" class=\"img-responsive\" src=\"https://its.com.bd/img/1.jpg\" data-src=\"\" alt=\"...\" style=\"border: 0px; max-width: 100%; height: auto; display: block; margin-right: auto; margin-left: auto; transition: 0.5s ease-in-out 0.2s;\"><div class=\"caption\" style=\"padding: 9px 2px;\"><h3 style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; padding: 0px;\"><b>We do not just supply equipments, we supply solution</b></h3><p class=\"details_para\" style=\"margin: 1em 0px; line-height: 20px; font-size: 15px; text-align: left;\">We listen carefully to our dealer project’s requirement and budget allocation. Then we advise dealer to help them select the right equipments to form a complete solution.</p></div></div></div><div class=\"col-lg-3 col-xs-6 col-sm-4\" style=\"float: left; width: 292.5px;\"><div class=\"thumbnail\" style=\"padding: 0px; margin-bottom: 20px; line-height: 1.42857; border-top: none; border-right: none; border-bottom: 4px double rgb(231, 231, 231); border-left: none; border-image: initial; border-radius: 0px; transition: 0.2s ease-in-out; text-align: center; position: relative;\"><img width=\"200\" height=\"200\" class=\"img-responsive\" src=\"https://its.com.bd/img/spec.jpg\" data-src=\"\" alt=\"...\" style=\"border: 0px; max-width: 100%; height: auto; display: block; margin-right: auto; margin-left: auto; transition: 0.5s ease-in-out 0.2s;\"><div class=\"caption\" style=\"padding: 9px 2px;\"><h3 style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; padding: 0px;\"><b>Good technical support</b></h3><p class=\"details_para\" style=\"margin: 1em 0px; line-height: 20px; font-size: 15px; text-align: left;\">Our technician is always available over the phone or in showroom to answer any questions that dealer might have. We also have 24/7 internet online support where troubleshooting guide, schematic, wiring and pricing are made available to download.</p></div></div></div><div class=\"col-lg-3 col-xs-6 col-sm-4\" style=\"float: left; width: 292.5px;\"><div class=\"thumbnail\" style=\"padding: 0px; margin-bottom: 20px; line-height: 1.42857; border-top: none; border-right: none; border-bottom: 4px double rgb(231, 231, 231); border-left: none; border-image: initial; border-radius: 0px; transition: 0.2s ease-in-out; text-align: center; position: relative;\"><img width=\"200\" height=\"200\" class=\"img-responsive\" src=\"https://its.com.bd/img/custserv.jpg\" data-src=\"\" alt=\"...\" style=\"border: 0px; max-width: 100%; height: auto; display: block; margin-right: auto; margin-left: auto; transition: 0.5s ease-in-out 0.2s;\"><div class=\"caption\" style=\"padding: 9px 2px;\"><h3 style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; padding: 0px;\"><b>Quality product</b></h3><p class=\"details_para\" style=\"margin: 1em 0px; line-height: 20px; font-size: 15px; text-align: left;\">We use our 24 years of extensive technical experience and knowledge to select and design the best value quality product for our dealer. All our products undergo QC before selling to dealer.</p></div></div></div></div><div class=\"row\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif;\"><div class=\"col-lg-3 col-xs-6 col-sm-4\" style=\"float: left; width: 292.5px;\"><div class=\"thumbnail\" style=\"padding: 0px; margin-bottom: 20px; line-height: 1.42857; border-top: none; border-right: none; border-bottom: 4px double rgb(231, 231, 231); border-left: none; border-image: initial; border-radius: 0px; transition: 0.2s ease-in-out; text-align: center; position: relative;\"><img width=\"200\" height=\"200\" class=\"img-responsive\" src=\"https://its.com.bd/img/5.jpg\" data-src=\"\" alt=\"...\" style=\"border: 0px; max-width: 100%; height: auto; display: block; margin-right: auto; margin-left: auto; transition: 0.5s ease-in-out 0.2s;\"><div class=\"caption\" style=\"padding: 9px 2px;\"><h3 style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; padding: 0px;\"><b>Repairing service</b></h3><p class=\"details_para\" style=\"margin: 1em 0px; line-height: 20px; font-size: 15px; text-align: left;\">We maintain complete spare parts and have a dedicated repairing department. Products that are broken (beyond warranty) can be repaired with a small fees.</p></div></div></div><div class=\"col-lg-3 col-xs-6 col-sm-4\" style=\"float: left; width: 292.5px;\"><div class=\"thumbnail\" style=\"padding: 0px; margin-bottom: 20px; line-height: 1.42857; border-top: none; border-right: none; border-bottom: 4px double rgb(231, 231, 231); border-left: none; border-image: initial; border-radius: 0px; transition: 0.2s ease-in-out; text-align: center; position: relative;\"><img width=\"200\" height=\"200\" class=\"img-responsive\" src=\"https://its.com.bd/img/BOO3CYKBAU.C.jpg\" data-src=\"\" alt=\"...\" style=\"border: 0px; max-width: 100%; height: auto; display: block; margin-right: auto; margin-left: auto; transition: 0.5s ease-in-out 0.2s;\"><div class=\"caption\" style=\"padding: 9px 2px;\"><h3 style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; padding: 0px;\"><b>Strong documentation</b></h3><p class=\"details_para\" style=\"margin: 1em 0px; line-height: 20px; font-size: 15px; text-align: left;\">We are continuously producing specification, schematic, application note for all our products – extremely useful when submitting for big project or just for customized presentation to end customer.</p></div></div></div><div class=\"col-lg-3 col-xs-6 col-sm-4\" style=\"float: left; width: 292.5px;\"><div class=\"thumbnail\" style=\"padding: 0px; margin-bottom: 20px; line-height: 1.42857; border-top: none; border-right: none; border-bottom: 4px double rgb(231, 231, 231); border-left: none; border-image: initial; border-radius: 0px; transition: 0.2s ease-in-out; text-align: center; position: relative;\"><img width=\"200\" height=\"200\" class=\"img-responsive\" src=\"https://its.com.bd/img/Develop-a-Clear-Fair-Pricing-Strategy-200x200.png\" data-src=\"\" alt=\"...\" style=\"border: 0px; max-width: 100%; height: auto; display: block; margin-right: auto; margin-left: auto; transition: 0.5s ease-in-out 0.2s;\"><div class=\"caption\" style=\"padding: 9px 2px;\"><h3 style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; padding: 0px;\"><b>Fair pricing</b></h3><p class=\"details_para\" style=\"margin: 1em 0px; line-height: 20px; font-size: 15px; text-align: left;\">We observe the market price closely and offer competitive pricing.</p></div></div></div><div class=\"col-lg-3 col-xs-6 col-sm-4\" style=\"float: left; width: 292.5px;\"><div class=\"thumbnail\" style=\"padding: 0px; margin-bottom: 20px; line-height: 1.42857; border-top: none; border-right: none; border-bottom: 4px double rgb(231, 231, 231); border-left: none; border-image: initial; border-radius: 0px; transition: 0.2s ease-in-out; text-align: center; position: relative;\"><img width=\"200\" height=\"200\" class=\"img-responsive\" src=\"https://its.com.bd/img/no_1_logo_lg.jpg\" data-src=\"\" alt=\"...\" style=\"border: 0px; max-width: 100%; height: auto; display: block; margin-right: auto; margin-left: auto; transition: 0.5s ease-in-out 0.2s;\"><div class=\"caption\" style=\"padding: 9px 2px;\"><h3 style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 16px; padding: 0px;\"><b>Credible establishment</b></h3><p class=\"details_para\" style=\"margin: 1em 0px; line-height: 20px; font-size: 15px; text-align: left;\">We have been around in the security industry for 24 years and we are here to stay. MAGNET is a well established company with&nbsp;</p></div></div></div></div></div>', NULL, NULL, 2, NULL, NULL),
(10, 'References', 'references', '<h2 class=\"heading1 animated fadeInUp time3\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(94, 98, 107); margin-right: 0px; margin-bottom: 40px; margin-left: 0px; font-size: 22px; padding: 0px 0px 5px; transition-delay: 1s; text-transform: uppercase; border-bottom: 1px solid rgb(242, 242, 242);\"><span class=\"maintext\" style=\"border-bottom: 1px solid rgb(204, 204, 204); padding: 0px 0px 5px;\">Reference: Past Experiences in IT and Automation Security Projects</span></h2><ul><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\">Prime Minister’s Office</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>Ministry of Defense</b></li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>Directorate General of Forces Intelligence (DGFI) With All Det.</b></li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>Border Guard Bangladesh: BGB</b></li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>National Security Intelligence (NSI)</b></li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>Special Security Force: SSF Dhaka.</b></li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>Prime Minister’s Office (PMO)</b></li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>Prime Minister’s House (Gono Bhaban)</b></li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>Bongo Bhaban</b></li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>AFD , Dhaka Cantt.</b></li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>NAVY Head Quarter.</b></li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army:</b>&nbsp;11 BIR,<b>&nbsp;Bogra Cantonment</b></li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army:</b>&nbsp;15 Bengal,&nbsp;<b>Bogra Cantonment</b></li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army:</b>&nbsp;15 BIR, Rongpur Cantonment</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army:&nbsp;</b>4 Signal Battalion, Jessore Cantonment</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army:</b>&nbsp;25 Bengal, Jessore Cantonment</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army:</b>&nbsp;CSD Exclusive Shop</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army:</b>&nbsp;CMTD</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>Shorail BGB, B.Baria</b></li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army:</b>&nbsp;CMH Bogra Cantonment,&nbsp;<b>Bogra</b></li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army:</b>&nbsp;6 Engineer BN,&nbsp;<b>Bogra Cantt.</b></li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army:</b>10 Signal Battalion, Dhaka Cantt</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army:</b>11 Signal Battalion, Dhaka Cantt</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army:</b>Mass- C, Dhaka, Cantt.</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army:</b>St Battalion Dhaka</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army:</b>Base Work Shop</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army:</b>Static Signal Dhaka</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army:</b>ASPTS, Dhaka Cantt.</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army:</b>AFMI Dhaka</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army:</b>CMH Dhaka</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army:</b>CSD Bogra Cantt.&nbsp;<b>Bogra</b></li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army:</b>Ordnance Depo, Jessore Cantt.</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army:</b>19 Bengal, Jessore Cantt.</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army:</b>30 Bir, Jessore Cantt.</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army:</b>Static Signal, Jessore Cantt.</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>Prinka city , Uttra Dhaka.</b></li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army : DGFI Rajendrapur Cantt. Gazipur.</b></li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>Prime Minister’s House (Gono Bhaban)</b></li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>RAB Forces Head Quarter.</b></li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\">Younus Group of Industries</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\">Sonali Paper &amp; Board Mills Limited.</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\">Utopia Consultancies Limited</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>Tennis Federation, Dhaka</b></li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\">Amader Bari Ltd. Baridhara, Dhaka</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\">Govt. Dhanmondi Officers Quarters</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\">Utopia Consultants Ltd.</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\">ICD Kamalapur, Dhaka.</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD ARMY:</b>&nbsp;1 Bir,<b>Bogra Cantt.</b></li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD ARMY:</b>&nbsp;129 Field Wksp,<b>&nbsp;Bogra Cantt</b></li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\">Dhaka Custom House, Dhaka.</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army :</b>&nbsp;Jessore, DGFI . Det.</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>Utopia Realty Ltd.</b>&nbsp;(12, project)</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army :</b>28 Bengal,&nbsp;<b>Bogra Cantonment.</b></li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army :</b>88 Infantry Bde, Jessore Cantonment.</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>Planning Ministry.</b></li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army :</b>4 East Bengal, Ghatail Cantonment.</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army :</b>40 East Bengal, Savar Cantonment.</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army :</b>DIV HQ Jessore Cantonment</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army :</b>CSD, Jessore Cantonment</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>Project Builders Limited (PBL)</b>Gulshan, Dhaka.</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>CAD Rajendrapur Cantt. Gazipur.</b></li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD ARMY: DGFI Rongpur,</b>Rongpur Cantt.</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD ARMY: 135 Field Wksp,</b>Bogra Cantt.</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army :506 DOC,&nbsp;</b>Bogra Cantt.</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army :</b>59 Bengal, Bogra Cantt.</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army :</b>Armor Bde. Bogra Cantt.</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army :</b>CMH Bogra Cantt.</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army :</b>8 Bengal, Jessore Cantt.</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army :</b>Static Signal BN, Jessore Cantt.</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army :</b>Area Head Quarter, Jessore Cantt.</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army :</b>7 MP, Jessore Cantt.</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army :</b>&nbsp;Ammo Daum, Jessore Cantt.</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army :</b>55 Inf. Division, Jessore Cantt.</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>Shemanto Square, BGB Peelkhana, Dhaka</b></li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army : Khulna , DGFI</b></li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army : Jessore ,DGFI</b></li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army :</b>Safe House Gulshan, DGFI</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army : Momenshahi&nbsp;</b>,DGFI</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army :</b>Bogra , DGFI</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army :</b>4 BIR&nbsp;<b>Momenshahi cantt.</b></li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army :</b>Gataik DGFI</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army :</b>Borisal , DGFI</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army :</b>Rangamaty DGFI</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army :</b>CMH Dhaka cantt.</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army :</b>CSD Sylhet</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army :</b>14 Beg Momenshahi Cantt.</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\">38 BGB, Shatkhira</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\">Dhaka Air Port</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\">BSI School , Dhaka</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\">CSD Bakery , Dhaka ( 03 Tess shop )</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\">36 STB Rongpur</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army :</b>&nbsp;2 Signal , Commilla cantt.</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\">EPZ , Saver , Dhaka.</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\"><b>BD Army :</b>1 Signal BN,&nbsp;<b>Bogra Cantonment</b></li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\">BUP , Mirpur Cantt.</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\">Saver CMH</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\">Air forces 201 , Dhaka Cantt.</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\">DEPZA(Dhaka Export &amp; Processing Zone Authority)</li><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\">D-water (Savar EPZ)</li></ul><p style=\"margin: 1em 0px; font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\">And more project …………………</p>', NULL, NULL, 2, NULL, NULL),
(11, 'Company Profile', 'company-profile', '<h2 class=\"heading1 animated fadeInUp time3\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(94, 98, 107); margin-right: 0px; margin-bottom: 40px; margin-left: 0px; padding: 0px 0px 5px; transition-delay: 1s; text-transform: uppercase; border-bottom: 1px solid rgb(242, 242, 242);\"><span class=\"maintext\" style=\"border-bottom: 1px solid rgb(204, 204, 204); padding: 0px 0px 5px;\"><b style=\"font-size: 22px;\">IT SERVICE PROFILE</b></span></h2><p style=\"margin: 1em 0px; font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\"><b>Md Majedul Islam(Majed), CEO</b></p><br style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\"><ul class=\"nav nav-list categories\" style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; font-family: &quot;Open Sans&quot;, arial, sans-serif; font-size: 15px;\"><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\">&nbsp;Thanks a lot for visiting our products line and website. We are happy to know you and have a chance to introduce our product line.&nbsp;<b>IT Services</b>&nbsp;is one of the Digitalized equipments suppliers in Bangladesh We dedicate to keep pace with the ever-changing technologies and provide the timeliest products to our clients.</li><br><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\">&nbsp;<b>IT Services</b>&nbsp;is a leading Company in the&nbsp;<b>IT &amp; Digital Security Sector</b>. Since&nbsp;<b>1998</b>&nbsp;we have been in this sector. We are Installer , Supplier and Designer of–‘Intelligent Barrier Gate, Under Vehicle Scanning System ( UVSS),Tripod Turnstile,Baggage Scanner, Archway Metal Detector,Hand Held Metal Detector, CCTV Solution, Access Control System, TV Monitoring System, Mobile Forensic, Mobile Jammer Solution,Bullet Proof Jacket (BP) &amp; Bullet Proof Solution,Bullet Proof Glass, Computer &amp; Net Working Solution , Non Linear Junction Detector , Electronic Spy Device , GPS Solution, Radio Monitoring System, Radio Equipment(Walkie Talkie,Base Set, Radio Tower Installation &amp; Repeater Solution)\'.</li><br><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\">&nbsp;We are importer &amp; indentor, wholesaler, sole distributor and installer. We are member of Dhaka Chamber of Commerce &amp; Industry (DCCI), Bangladesh Indenting Agents\' Association (BIAA), Bangladesh Computer Somitiy (BCS), Elephant Road Computer Somity (ECS), and supplier of Bangladesh Army, Army HQ, Directorate General Forces of Intelligence (DGFI),National Telecommunication Monitoring Center (NTMC), Special Security Forces (SSF), Prime Minister Office (PMO), Bangladesh NAVY, Bangladesh Air Forces, DGDP, COD , BOF ,CAD, Boarder Guard Bangladesh (BGB), Home Ministry, Defense Ministry, National Security Intelligence (NSI), SB Police HQ, RAB, ANSR &amp; VDP, Coast Guard, Dhaka Central Jail, Bangladesh Customs, Civil Aviation Authority of Bangladesh (CAAB) HAZRAT SHAHJALAL INTERNATIONAL AIPORT, Bangladesh VAT &amp; Vat Intelligence, Bangladesh Bank, EPZ, Bangladesh NAVY Submarine Area, and so many conglomerate companies. Our product line caters the needs of Domestic Homes, Corporate, Government and Heavy Industries.</li><br><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\">&nbsp;With professional personnel and insight, we commit ourselves:<br>(a) To reveal specific needs of various clients and provide the right products<br>(b) To strive for client satisfaction and quality excellence<br>(c) To perfect value-added and comprehensive after-sale services<br>(d) To improve ourselves continuously<br>(e) To take every opportunity and anticipate and meet new challenges<br></li><br><li style=\"list-style: none; margin: 0px; padding: 0px; position: relative; display: block;\">&nbsp;<b>IT Services</b>&nbsp;can provide real solutions through in-market assessments, feather identification and supply. Our motto is winning customer\'s trust by delivering on our promise of the agreed expectations first time, every time.</li></ul>', NULL, NULL, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `information` text COLLATE utf8mb4_unicode_ci,
  `unique_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_settings`
--

INSERT INTO `payment_settings` (`id`, `name`, `information`, `unique_keyword`, `photo`, `text`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cash On Delivery', NULL, 'cod', '1631032407index.png', 'Cash on Delivery basically means you will pay the amount of product while you get the item delivered to you.', 1, NULL, NULL),
(14, 'Stripe', '{\"key\":\"pk_test_51HZI80H3jdWvr8gEn3oRtFlnJTqRpecXGQueOyngEArTyF6gjjfOVqbFeFMpAMRoQmKwPPrh81OiWzhDlqtS5nGs00gKycg4Oa\",\"secret\":\"sk_test_51HZI80H3jdWvr8gErqdNWpqUkAgHMQdw7uug1mfUY38vIUfodsAWj4hoBK43rBvHebYETVX4ZCne03o3Ifco1qkR00dhrdpPsh\"}', 'stripe', '1601930611stripe-logo-blue.png', 'Stripe is the faster & safer way to send money. Make an online payment via Stripe.', 1, NULL, NULL),
(15, 'Paypal', '{\"client_id\":\"AUtv8KISHG9l9rmlXB0cSLjt6A91IsGfPACeRreuRpEV3GR-ZRnxIxXnUVKNYIfqVXrxs2uPlGDot0Cc\",\"client_secret\":\"EEdtOBI_NjI2bJzLSIzumsN_xSI7htn8qyAcRz0mvO8Emv-7CdfQeqxNZlDhiDAd0ZhV49e4sOhjtwho\",\"check_sandbox\":1}', 'paypal', '16218678201601930675paypal-784404_960_720.png', 'PayPal is the faster & safer way to send money. Make an online payment via PayPal.', 1, NULL, NULL),
(17, 'Mollie', '{\"key\":\"test_5HcWVs9qc5pzy36H9Tu9mwAyats33J\"}', 'mollie', '1621785282Mollie.jpeg', 'Mollie is a Payment Provider for Belgium and the Netherlands, offering payment methods such as credit card, iDEAL, Bancontact/Mister cash, PayPal, SCT, SDD and others.', 1, NULL, NULL),
(18, 'Paytm', '{\"mercent\":\"tkogux49985047638244\",\"client_secret\":\"LhNGUUKE9xCQ9xY8\",\"website\":\"WEBSTAGING\",\"industry\":\"Retail\",\"is_paytm\":\"1\",\"paytm_mode\":\"sandbox\"}', 'paytm', '1631978815images.png', 'Paytm is the faster & safer way to send money. Make an online payment via Paytm.', 1, NULL, NULL),
(19, 'SSLCommerz', '{\"store_id\":\"geniu5e1b00621f81e\",\"store_password\":\"geniu5e1b00621f81e@ssl\",\"check_sandbox\":1}', 'sslcommerz', '1631978716ssl-thumb.jpeg', 'SSL commerz is the faster & safer way to send money. Make an online payment via SSL commerz.', 1, NULL, NULL),
(24, 'Mercadopago', '{\"public_key\":\"TEST-6f72a502-51c8-4e9a-8ca3-cb7fa0addad8\",\"token\":\"TEST-6068652511264159-022306-e78da379f3963916b1c7130ff2906826-529753482\",\"check_sandbox\":1}', 'mercadopago', '1633085560unnamed.jpeg', 'Mercadopago is the faster & safer way to send money. Make an online payment via Mercadopago.', 1, NULL, NULL),
(25, 'Authorize.Net', '{\"login_id\":\"76zu9VgUSxrJ\",\"txn_key\":\"2Vj62a6skSrP5U3X\",\"check_sandbox\":1}', 'authorize', '1633100640seal2.png', 'Authorize.Net is the faster & safer way to send money. Make an online payment via Authorize.Net', 1, NULL, NULL),
(26, 'Paystack', '{\"key\":\"pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2\",\"email\":\"geniusdevs@gmail.com\"}', 'paystack', '1634237632paystack-opengraph.png', 'Paystack is the faster & safer way to send money. Make an online payment via Paystack.', 1, NULL, NULL),
(27, 'Bank Transfer', NULL, 'bank', '1638530860pngwing.com (1).png', '<p>Account Number : 434 3434 3334</p><p>Pay With Bank Transfer.</p><p>Account Name : Jhon Due</p><p>Account Email : demo@gmail.com</p>', 1, NULL, NULL),
(28, 'Razorpay', '{\"key\":\"rzp_test_xDH74d48cwl8DF\",\"secret\":\"cr0H1BiQ20hVzhpHfHuNbGri\"}', 'razorpay', '1637992878download.jpeg', 'Rezorpay is the faster & safer way to send money. Make an online payment via Rezorpay.', 1, NULL, NULL),
(29, 'Flutter Wave', '{\"public_key\":\"FLWPUBK_TEST-d54c4c69ef195e721af2139e7dfe1a23-X\",\"secret_key\":\"FLWSECK_TEST-86c6484143e62c4c9bc2e8aa08a07c92-X\",\"text\":\"Pay via your Flutter Wave account.\"}', 'flutterwave', '1637998096download.png', 'Flutterwave is the faster & safer way to send money. Make an online payment via Flutterwave.', 1, NULL, NULL);

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_descriptions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `details`, `photo`, `category_id`, `tags`, `meta_keywords`, `meta_descriptions`, `created_at`, `updated_at`) VALUES
(65, 'Fashion and Beauty Series 6', 'fashion-and-beauty-series-6', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '[\"1632349728media_24-768x512.jpg\"]', 1, 'mobile,phone,camera,lapop', '[{\"value\":\"mobile\"},{\"value\":\"phone\"},{\"value\":\"camera\"},{\"value\":\"laptop\"}]', 'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2021-05-31 07:48:23', '2021-09-22 16:28:48'),
(66, 'Fashion and Beauty Series 7', 'fashion-and-beauty-series-7', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate quae illo soluta sapiente minus voluptatibus molestias voluptates maiores repudiandae, velit quaerat error! Dolor alias voluptates rerum vitae illum officiis laboriosam, eos fugiat necessitatibus iste quasi vero porro at asperiores atque numquam adipisci esse perferendis hic dolore dolores facere quidem? Voluptatum, nemo voluptates. Qui, animi odit voluptatem velit nostrum rem maiores. Qui esse magnam enim natus numquam ab adipisci nihil mollitia odio ducimus architecto unde harum saepe illum, ipsa hic dicta alias cumque et minus veritatis assumenda a quo. Possimus, vitae est! Fuga quidem minima sunt modi. Officia natus quaerat nobis ut ab nulla. Tempora, corrupti? Animi excepturi voluptatem quod consectetur culpa autem aliquid? Inventore adipisci officia error dolore provident omnis sint perferendis, consequuntur, sapiente magni sequi quo quis nesciunt molestiae vero iure cum laboriosam fugit. Numquam sed expedita alias non? Sequi, harum cupiditate! Quasi non laboriosam optio ex fugit delectus minus incidunt excepturi! Nisi iure ex, nulla perspiciatis similique est, libero sapiente hic error amet, quisquam vel obcaecati fugit. Maxime cupiditate voluptatibus, nisi ullam error voluptas culpa at animi sequi eius suscipit ad ipsum qui illum provident dolores facere necessitatibus commodi vel in, laborum quidem aliquam ipsa quibusdam? Eius, alias voluptatem, laboriosam perferendis itaque, sapiente nisi beatae necessitatibus reprehenderit nam corrupti magnam qui omnis eveniet! Optio at expedita temporibus fugiat debitis eum? Dolore excepturi quod doloribus quam rem placeat at odit dicta amet expedita illo laboriosam minus ut minima, tenetur suscipit soluta assumenda. Nisi laboriosam adipisci animi consequuntur, ad illum repellat consequatur odit, laudantium velit non nobis labore illo omnis quod suscipit voluptates quaerat consectetur temporibus et, laborum quam ducimus earum! Repellat, fugit? Repudiandae repellendus maiores doloribus deleniti asperiores distinctio suscipit fugiat omnis culpa itaque? Harum et, velit ratione corrupti error asperiores optio, recusandae mollitia necessitatibus cumque vero voluptatem ullam porro aut eum earum! Consectetur voluptatum ratione dolor in earum molestiae ipsam quisquam, eum vitae suscipit voluptates recusandae. Cum eaque officiis ea et atque eveniet similique sequi illo!', '[\"1632349736media_26-768x512.jpg\"]', 1, 'mobile,phone,camera,lapop', '[{\"value\":\"mobile\"},{\"value\":\"phone\"},{\"value\":\"camera\"},{\"value\":\"laptop\"}]', 'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '2021-05-31 07:48:23', '2021-09-22 16:28:56'),
(67, 'PREMIUM LONG RANGE PARKING ACCESS SYSTEM', 'premium-long-range-parking-access-system', '<div class=\"row\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif;\"><h2 class=\"heading1 animated fadeInUp time3\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(94, 98, 107); margin-right: 0px; margin-bottom: 40px; margin-left: 0px; font-size: 22px; padding: 0px 0px 5px; transition-delay: 1s; text-transform: uppercase; border-bottom: 1px solid rgb(242, 242, 242);\"><span class=\"maintext\" style=\"border-bottom: 1px solid rgb(204, 204, 204); padding: 0px 0px 5px;\">Benefit:</span></h2><p class=\"details_para\" style=\"margin: 1em 0px; line-height: 20px; font-size: 15px;\">-Enjoy the convenient of handsfree – no need fully stop to flash card<br>-Reduce congestion of long car queue during peak hours<br>-No more getting hand wet during rainy days or expose to robbery threat<br>-Signal able to penetrate 99% of premium solar firm in market<br></p></div><div class=\"row\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif;\"><h2 class=\"heading1 animated fadeInUp time3\" style=\"font-family: &quot;Open Sans&quot;, arial, sans-serif; line-height: normal; color: rgb(94, 98, 107); margin-right: 0px; margin-bottom: 40px; margin-left: 0px; font-size: 22px; padding: 0px 0px 5px; transition-delay: 1s; text-transform: uppercase; border-bottom: 1px solid rgb(242, 242, 242);\"><span class=\"maintext\" style=\"border-bottom: 1px solid rgb(204, 204, 204); padding: 0px 0px 5px;\">How It Work?</span></h2><p class=\"details_para\" style=\"margin: 1em 0px; line-height: 20px; font-size: 15px;\"><img class=\"img-responsive imageleft\" src=\"https://its.com.bd/img/ar500udiagram.jpg\" data-src=\"\" alt=\"...\" style=\"border: 1px solid rgb(231, 231, 231); max-width: 100%; height: auto; display: block; margin: 0px 10px 10px 0px; float: left; padding: 5px;\"></p></div>', '{\"1\":\"2024_12_07_022017_61230574.jpg\"}', 2, '', '[]', NULL, '2021-05-31 07:48:23', '2024-12-07 08:20:31');

-- --------------------------------------------------------

--
-- Table structure for table `price_requests`
--

CREATE TABLE `price_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `price_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `price_requests`
--

INSERT INTO `price_requests` (`id`, `item_id`, `price_name`, `price_email`, `price_mobile`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 593, 'Al Amin Hoque', 'alaminbd2004@gmail.com', '01552490396', NULL, NULL, '2024-11-20 09:34:25', '2024-11-20 09:34:25'),
(2, 570, 'Rayhan Zaman', 'rayhan.zaman@sebpo.com', '01521449100', NULL, NULL, '2024-12-08 23:04:52', '2024-12-08 23:04:52');

-- --------------------------------------------------------

--
-- Table structure for table `promo_codes`
--

CREATE TABLE `promo_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_times` int(11) NOT NULL DEFAULT '0',
  `discount` double NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promo_codes`
--

INSERT INTO `promo_codes` (`id`, `title`, `code_name`, `no_of_times`, `discount`, `status`, `created_at`, `updated_at`, `type`) VALUES
(1, 'Flash Discount', 'ironman', 95, 2, 1, NULL, NULL, NULL),
(2, 'Halloween Carnival', 'superman', 96, 5, 1, NULL, NULL, NULL),
(3, 'Fest Carnival', 'loki', 94, 10, 1, NULL, NULL, 'amount');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `item_id` int(11) NOT NULL DEFAULT '0',
  `review` text COLLATE utf8mb4_unicode_ci,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` double NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `section`, `created_at`, `updated_at`) VALUES
(1, 'test', '[\"Manage Categories\",\"Manage Products\",\"Manage Orders\",\"Transactions\",\"Ecommerce\",\"Customer List\",\"Manages Tickets\",\"Manage Site\",\"Manage Faqs Contents\",\"Manage Blogs\",\"Manages Pages\",\"Subscribers List\",\"Manage System User\"]', '2021-12-05 10:24:27', '2021-12-05 10:24:27'),
(2, 'Product Manager', '[\"Manage Categories\",\"Manage Products\",\"Ecommerce\"]', '2024-12-08 22:55:05', '2024-12-08 22:55:05');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `details`, `photo`, `created_at`, `updated_at`) VALUES
(31, 'Secure Online Payment', 'We posess SSL / Secure Certificate', '162196474904.png', NULL, NULL),
(32, '24/7 Customer Support', 'Friendly 24/7 customer support', '162196471103.png', NULL, NULL),
(33, 'Money Back Guarantee', 'We return money within 30 days', '162196467602.png', NULL, NULL),
(34, 'Free Worldwide Shipping', 'Free shipping for all orders over $100 Contrary to popular belie', '162196463701.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loader` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_loader` tinyint(4) DEFAULT '1',
  `feature_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_check` tinyint(4) DEFAULT '0',
  `email_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_port` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_encryption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_pass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overlay` text COLLATE utf8mb4_unicode_ci,
  `google_analytics_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `is_shop` tinyint(4) DEFAULT '1',
  `is_blog` tinyint(4) DEFAULT '1',
  `is_faq` tinyint(4) DEFAULT '1',
  `is_contact` tinyint(4) DEFAULT '1',
  `facebook_check` tinyint(4) DEFAULT '1',
  `facebook_client_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_client_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_redirect` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_check` tinyint(4) DEFAULT '1',
  `google_client_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_client_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_redirect` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_price` double DEFAULT '0',
  `max_price` double DEFAULT '100000',
  `footer_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_address` text COLLATE utf8mb4_unicode_ci,
  `footer_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_gateway_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_link` text COLLATE utf8mb4_unicode_ci,
  `friday_start` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `friday_end` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `satureday_start` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `satureday_end` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copy_right` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_slider` tinyint(4) DEFAULT '1',
  `is_category` tinyint(4) DEFAULT '1',
  `is_product` tinyint(4) DEFAULT '1',
  `is_top_banner` tinyint(4) DEFAULT '1',
  `is_recent` tinyint(4) DEFAULT '1',
  `is_top` tinyint(4) DEFAULT '1',
  `is_best` tinyint(4) DEFAULT '1',
  `is_flash` tinyint(4) DEFAULT '1',
  `is_brand` tinyint(4) DEFAULT '1',
  `is_blogs` tinyint(4) DEFAULT '1',
  `is_campaign` tinyint(4) DEFAULT '1',
  `is_brands` tinyint(4) DEFAULT '1',
  `is_bottom_banner` tinyint(4) DEFAULT '1',
  `is_service` tinyint(4) DEFAULT '1',
  `campaign_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_status` tinyint(4) DEFAULT '1',
  `twilio_sid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_form_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_announcement` tinyint(4) DEFAULT '1',
  `announcement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `announcement_delay` decimal(11,2) NOT NULL DEFAULT '0.00',
  `is_maintainance` tinyint(4) DEFAULT '1',
  `maintainance_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintainance_text` text COLLATE utf8mb4_unicode_ci,
  `is_twilio` tinyint(4) DEFAULT '0',
  `twilio_section` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_three_c_b_first` tinyint(4) NOT NULL DEFAULT '1',
  `is_popular_category` tinyint(4) NOT NULL DEFAULT '1',
  `is_three_c_b_second` tinyint(4) NOT NULL DEFAULT '1',
  `is_highlighted` tinyint(4) NOT NULL DEFAULT '1',
  `is_two_column_category` tinyint(4) NOT NULL DEFAULT '1',
  `is_popular_brand` tinyint(4) NOT NULL DEFAULT '1',
  `is_featured_category` tinyint(4) NOT NULL DEFAULT '1',
  `is_two_c_b` tinyint(4) NOT NULL DEFAULT '1',
  `theme` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_recaptcha_site_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_recaptcha_secret_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recaptcha` tinyint(4) DEFAULT '0',
  `currency_direction` tinyint(4) DEFAULT '1',
  `google_analytics` text COLLATE utf8mb4_unicode_ci,
  `google_adsense` text COLLATE utf8mb4_unicode_ci,
  `facebook_pixel` text COLLATE utf8mb4_unicode_ci,
  `facebook_messenger` text COLLATE utf8mb4_unicode_ci,
  `is_google_analytics` tinyint(4) DEFAULT '0',
  `is_google_adsense` tinyint(4) DEFAULT '0',
  `is_facebook_pixel` tinyint(4) DEFAULT '0',
  `is_facebook_messenger` tinyint(4) DEFAULT '0',
  `announcement_link` text COLLATE utf8mb4_unicode_ci,
  `is_attribute_search` tinyint(4) DEFAULT '1',
  `is_range_search` tinyint(4) DEFAULT '1',
  `view_product` int(11) DEFAULT '12',
  `home_page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Home',
  `is_privacy_trams` tinyint(4) DEFAULT '1',
  `policy_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '''#''',
  `terms_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '''#''',
  `is_guest_checkout` tinyint(4) DEFAULT '1',
  `custom_css` text COLLATE utf8mb4_unicode_ci,
  `announcement_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `announcement_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'banner',
  `is_cookie` tinyint(4) DEFAULT '1',
  `cookie_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `announcement_details` text COLLATE utf8mb4_unicode_ci,
  `decimal_separator` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '.',
  `thousand_separator` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ',',
  `disqus` text COLLATE utf8mb4_unicode_ci,
  `is_disqus` tinyint(4) NOT NULL DEFAULT '0',
  `is_decimal` tinyint(4) DEFAULT '1',
  `order_mail` tinyint(4) NOT NULL DEFAULT '0',
  `ticket_mail` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `logo`, `favicon`, `loader`, `is_loader`, `feature_image`, `primary_color`, `smtp_check`, `email_host`, `email_port`, `email_encryption`, `email_user`, `email_pass`, `email_from`, `email_from_name`, `contact_email`, `version`, `overlay`, `google_analytics_id`, `meta_keywords`, `meta_description`, `is_shop`, `is_blog`, `is_faq`, `is_contact`, `facebook_check`, `facebook_client_id`, `facebook_client_secret`, `facebook_redirect`, `google_check`, `google_client_id`, `google_client_secret`, `google_redirect`, `min_price`, `max_price`, `footer_phone`, `footer_address`, `footer_email`, `footer_gateway_img`, `social_link`, `friday_start`, `friday_end`, `satureday_start`, `satureday_end`, `copy_right`, `is_slider`, `is_category`, `is_product`, `is_top_banner`, `is_recent`, `is_top`, `is_best`, `is_flash`, `is_brand`, `is_blogs`, `is_campaign`, `is_brands`, `is_bottom_banner`, `is_service`, `campaign_title`, `campaign_end_date`, `campaign_status`, `twilio_sid`, `twilio_token`, `twilio_form_number`, `twilio_country_code`, `is_announcement`, `announcement`, `announcement_delay`, `is_maintainance`, `maintainance_image`, `maintainance_text`, `is_twilio`, `twilio_section`, `created_at`, `updated_at`, `is_three_c_b_first`, `is_popular_category`, `is_three_c_b_second`, `is_highlighted`, `is_two_column_category`, `is_popular_brand`, `is_featured_category`, `is_two_c_b`, `theme`, `google_recaptcha_site_key`, `google_recaptcha_secret_key`, `recaptcha`, `currency_direction`, `google_analytics`, `google_adsense`, `facebook_pixel`, `facebook_messenger`, `is_google_analytics`, `is_google_adsense`, `is_facebook_pixel`, `is_facebook_messenger`, `announcement_link`, `is_attribute_search`, `is_range_search`, `view_product`, `home_page_title`, `is_privacy_trams`, `policy_link`, `terms_link`, `is_guest_checkout`, `custom_css`, `announcement_title`, `announcement_type`, `is_cookie`, `cookie_text`, `announcement_details`, `decimal_separator`, `thousand_separator`, `disqus`, `is_disqus`, `is_decimal`, `order_mail`, `ticket_mail`) VALUES
(1, 'IT Services', '2024_12_05_011224_57704602.png', '2024_11_16_065214_68575051.jpg', '16388581681_D-ZiKd0B00tdifaB2X3tKQ.gif', 1, '1600622296topic.jpg', '#0187E2', 1, 'smtp.mailtrap.io', '2525', 'tls', 'ab7d3fde364e5f', 'aac3f52ada3308', 'omnimartshop@email.com', 'Magicshop', 'contact@email.com', '4.0', NULL, 'UA-106757798-1', 'Lorem,ipsum,dolor,amet', 'TSE - Multipurpose eCommerce  Shopping Platform Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over .', 1, 1, 1, 1, 1, '643929170080071', '038b2100dff9a2a684c85959c0accf66', 'https://localhost/my/omnimart/auth/facebook/callback', 1, '915191002660-6hjno4cgnbcm5p1kb3t692trh7pc6ngh.apps.googleusercontent.com', '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', 'http://localhost/my/omnimart/auth/google/callback', 0, 10000, '+8801521449100', 'Corporate Office - 303 & 604, Alpona Plaza (2nd & 5th Floor), 51, New Elephant Road, Dhaka-1205, Bangladesh.', 'rayhan.zaman333@gmail.com', '16305963101621960148credit-cards-footer.png', '{\"icons\":[\"fab fa-facebook-f\",\"fab fa-twitter\",\"fab fa-youtube\",\"fab fa-linkedin-in\"],\"links\":[\"https:\\/\\/www.facebook.com\",\"https:\\/\\/www.twitter.com\",\"https:\\/\\/www.youtube.com\",\"https:\\/\\/www.linkedin.com\"]}', '9:27 PM', '9:27 PM', '9:27 PM', '9:27 PM', 'TSE © All rights reserved.', 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 'Deals Of The Week', '10/10/2022', 1, 'AC73e54518487ad4e26da8b465a7614f1f0', '300d787df0c398ae46b84b74ea86f59c', '+15612793758', '+880', 0, '1638791990Untitled-1.jpg', 1.00, 0, '16323327831619241714761747856.jpg', 'We are upgrading our site.  We will come back soon.  \r\nPlease stay with us. \r\nThank you.', 1, '{\"\'purchase\'\":\"Your Order Purchase Successfully. your order number is {order_number}\",\"\'order_status\'\":\"Your Order status update. Order number is {order_number}\"}', NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 'theme1', '6LcnPoEaAAAAAF6QhKPZ8V4744yiEnr41li3SYDn', '6LcnPoEaAAAAACV_xC4jdPqumaYKBnxz9Sj6y0zk', 0, 1, NULL, NULL, NULL, '<!-- Messenger Chat Plugin Code -->\r\n    <div id=\"fb-root\"></div>\r\n\r\n    <!-- Your Chat Plugin code -->\r\n    <div id=\"fb-customer-chat\" class=\"fb-customerchat\">\r\n    </div>\r\n\r\n    <script>\r\n      var chatbox = document.getElementById(\'fb-customer-chat\');\r\n      chatbox.setAttribute(\"page_id\", \"858401617860382\");\r\n      chatbox.setAttribute(\"attribution\", \"biz_inbox\");\r\n      window.fbAsyncInit = function() {\r\n        FB.init({\r\n          xfbml            : true,\r\n          version          : \'v11.0\'\r\n        });\r\n      };\r\n\r\n      (function(d, s, id) {\r\n        var js, fjs = d.getElementsByTagName(s)[0];\r\n        if (d.getElementById(id)) return;\r\n        js = d.createElement(s); js.id = id;\r\n        js.src = \'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js\';\r\n        fjs.parentNode.insertBefore(js, fjs);\r\n      }(document, \'script\', \'facebook-jssdk\'));\r\n    </script>', 0, 0, 1, 1, '#', 1, 1, 16, 'Ecommerce Shopping Platform', 1, 'http://localhost/my/omnimart3/privacy-policy', 'http://localhost/my/omnimart3/terms-and-service', 1, NULL, 'Get 50% Discount.', 'newletter', 0, 'Your experience on this site will be improved by allowing cookies.', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Exercitationem, facere nesciunt doloremque nobis debitis sint?', '.', ',', '<div id=\"disqus_thread\"></div>\r\n<script>\r\n    /**\r\n    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables    */\r\n    /*\r\n    var disqus_config = function () {\r\n    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\n    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n    };\r\n    */\r\n    (function() { // DON\'T EDIT BELOW THIS LINE\r\n    var d = document, s = d.createElement(\'script\');\r\n    s.src = \'https://omnimart.disqus.com/embed.js\';\r\n    s.setAttribute(\'data-timestamp\', +new Date());\r\n    (d.head || d.body).appendChild(s);\r\n    })();\r\n</script>', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_services`
--

CREATE TABLE `shipping_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL DEFAULT '0',
  `minimum_price` double NOT NULL DEFAULT '0',
  `is_condition` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_services`
--

INSERT INTO `shipping_services` (`id`, `title`, `price`, `minimum_price`, `is_condition`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Free Delevery', 0, 1000, 1, 1, NULL, NULL),
(2, 'Delivery', 20, 0, 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sitemaps`
--

CREATE TABLE `sitemaps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sitemap_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sitemaps`
--

INSERT INTO `sitemaps` (`id`, `sitemap_url`, `filename`, `created_at`, `updated_at`) VALUES
(1, 'http://localhost/omnimart30/', 'sitemap6166b213a58e4.xml', NULL, NULL),
(4, 'http://localhost/omnimart30/catalog', 'sitemap6166b378db752.xml', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `home_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'theme1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `photo`, `title`, `link`, `logo`, `details`, `created_at`, `updated_at`, `home_page`) VALUES
(8, '2024_12_05_062151_64844952.jpeg', 'Access Control', '#', '1634222436Untitled-1.png', 'Access Control with Integrated CCTV', NULL, NULL, 'theme1'),
(9, '2024_12_05_011451_93665995.jpg', 'Soyal', '#', '2024_12_03_064324_57364353.jpg', 'Soyal Product', NULL, NULL, 'theme1'),
(11, '2024_12_05_062131_34077004.jpeg', 'Home One', 'https://new.its.com.bd/', NULL, 'Test 01', NULL, NULL, 'theme2');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `link`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/', 'fab fa-facebook-square', NULL, NULL),
(2, 'https://twitter.com/', 'fab fa-twitter-square', NULL, NULL),
(3, 'https://www.instagram.com/', 'fab fa-instagram', NULL, NULL),
(10, 'https://www.pinterest.com/', 'fab fa-pinterest-square', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT '0',
  `status` tinyint(4) DEFAULT '1',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `price`, `status`, `type`) VALUES
(6, 'Alaska', 3, 0, 'percentage'),
(7, 'California', 4, 0, 'percentage'),
(8, 'New Mexico', 5, 0, 'percentage'),
(9, 'Utah', 6, 0, 'percentage'),
(10, 'Virginia', 6, 0, 'percentage');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'user@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` double DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'High Tax', 4, 1, NULL, NULL),
(2, 'Low Tax', 1, 1, NULL, NULL),
(3, 'No Tax', 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `subject`, `message`, `file`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'I need help', 'I need help', NULL, 1, NULL, '2021-12-03 06:32:39', '2021-12-03 06:32:39');

-- --------------------------------------------------------

--
-- Table structure for table `track_orders`
--

CREATE TABLE `track_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `track_orders`
--

INSERT INTO `track_orders` (`id`, `order_id`, `title`, `created_at`, `updated_at`) VALUES
(176, 318, 'Pending', '2021-09-12 06:07:09', '2021-09-12 06:07:09'),
(177, 1, 'Pending', '2021-09-13 07:11:25', '2021-09-13 07:11:25'),
(178, 22, 'Pending', '2021-09-13 09:13:48', '2021-09-13 09:13:48'),
(179, 22, 'Pending', '2021-09-13 09:14:34', '2021-09-13 09:14:34'),
(180, 23, 'Pending', '2021-09-13 09:15:09', '2021-09-13 09:15:09'),
(182, 25, 'Pending', '2021-09-13 09:22:56', '2021-09-13 09:22:56'),
(187, 30, 'Pending', '2021-09-18 08:44:06', '2021-09-18 08:44:06'),
(300, 122, 'Pending', '2022-01-16 09:37:45', '2022-01-16 09:37:45'),
(301, 123, 'Pending', '2022-01-16 10:00:15', '2022-01-16 10:00:15'),
(302, 124, 'Pending', '2022-01-16 10:03:35', '2022-01-16 10:03:35'),
(303, 125, 'Pending', '2022-01-16 10:08:36', '2022-01-16 10:08:36'),
(304, 126, 'Pending', '2022-01-16 11:31:41', '2022-01-16 11:31:41'),
(305, 127, 'Pending', '2022-01-16 11:33:57', '2022-01-16 11:33:57'),
(306, 128, 'Pending', '2022-01-16 11:36:51', '2022-01-16 11:36:51'),
(307, 129, 'Pending', '2022-01-16 11:40:48', '2022-01-16 11:40:48'),
(308, 129, 'In Progress', '2022-01-17 03:59:09', '2022-01-17 03:59:09'),
(309, 129, 'Delivered', '2022-01-17 03:59:09', '2022-01-17 03:59:09'),
(310, 128, 'In Progress', '2022-01-17 03:59:15', '2022-01-17 03:59:15'),
(311, 128, 'Delivered', '2022-01-17 03:59:15', '2022-01-17 03:59:15'),
(312, 127, 'In Progress', '2022-01-17 03:59:21', '2022-01-17 03:59:21'),
(313, 127, 'Delivered', '2022-01-17 03:59:21', '2022-01-17 03:59:21'),
(314, 126, 'In Progress', '2022-01-17 03:59:27', '2022-01-17 03:59:27'),
(315, 126, 'Delivered', '2022-01-17 03:59:27', '2022-01-17 03:59:27'),
(316, 125, 'In Progress', '2022-02-28 08:24:36', '2022-02-28 08:24:36'),
(317, 130, 'Pending', '2022-03-01 10:10:39', '2022-03-01 10:10:39'),
(318, 131, 'Pending', '2022-03-02 02:15:49', '2022-03-02 02:15:49'),
(319, 132, 'Pending', '2022-03-02 02:18:08', '2022-03-02 02:18:08');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txn_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_value` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `order_id`, `txn_id`, `amount`, `user_email`, `currency_sign`, `currency_value`, `created_at`, `updated_at`) VALUES
(90, '122', 'zNF5gDbPnM', 161, 'teacher@gmail.com', '$', 1, '2022-01-16 09:37:45', '2022-01-16 09:37:45'),
(91, '123', 'ZN6ve2FsBf', 383, 'user@gmail.com', '$', 1, '2022-01-16 10:00:15', '2022-01-16 10:00:15'),
(92, '124', 'GPt4RZ0RCq', 77, 'user@gmail.com', '$', 1, '2022-01-16 10:03:35', '2022-01-16 10:03:35'),
(93, '125', '0HGakDhxlW', 97, 'user@gmail.com', '$', 1, '2022-01-16 10:08:36', '2022-01-16 10:08:36'),
(94, '126', 'Ffr4zOVXnf', 791, 'user@gmail.com', '$', 1, '2022-01-16 11:31:41', '2022-01-16 11:31:41'),
(95, '127', 'rTgJph3cv8', 408, 'user@gmail.com', '$', 1, '2022-01-16 11:33:57', '2022-01-16 11:33:57'),
(96, '128', 'JrV7oupswB', 176, 'user@gmail.com', '$', 1, '2022-01-16 11:36:51', '2022-01-16 11:36:51'),
(97, '129', 'HhgjzEg09z', 1513, 'user@gmail.com', '$', 1, '2022-01-16 11:40:48', '2022-01-16 11:40:48'),
(98, '130', 'j0W5sAeolz', 172, 'user@gmail.com', '$', 1, '2022-03-01 10:10:39', '2022-03-01 10:10:39'),
(99, '131', 'TyExwhsbeS', 1725, 'user@gmail.com', '$', 1, '2022-03-02 02:15:49', '2022-03-02 02:15:49'),
(100, '132', 'w10xGWiN80', 55, 'user@gmail.com', '$', 1, '2022-03-02 02:18:08', '2022-03-02 02:18:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `photo`, `email_token`, `password`, `ship_address1`, `ship_address2`, `ship_zip`, `ship_city`, `ship_country`, `ship_company`, `bill_address1`, `bill_address2`, `bill_zip`, `bill_city`, `bill_country`, `bill_company`, `created_at`, `updated_at`, `state_id`) VALUES
(1, 'Alex', 'Smith', '01728332009', 'user@gmail.com', '16385217454444.jpg', NULL, '$2y$10$o2LxRwxTmciQqlKzRhy9O./KERxB8Ht3K8.OHw3WGJu3oDuNQ/xXm', '472 Clark Street,  Bay Shore, New York', NULL, '3444', 'New York', 'United States', NULL, '472 Clark Street,  Bay Shore, New York', NULL, '3444', 'New York', 'United States', NULL, '2021-09-13 07:08:04', '2022-03-01 09:34:58', NULL),
(8, 'showrav', 'Hasan', '017286436', 'teacher@gmail.com', NULL, 'ckKvuX', '$2y$10$zTzmhxGC02sxXgxdp2fDuOaQwKOg.DeHDK3zLDXRSsx1C.T8XX9j.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-19 10:10:00', '2022-03-19 10:10:00', NULL),
(9, 'Al Amin Hoque', 'Mamun', '01552490396', 'alaminbd2004@gmail.com', '2024_12_06_124736_33177961.jpg', '5p6Xgc', '$2y$10$M2dDSeM5uZ.vajcDu8ZO2eOqkESrlfL.GehUpuGgA/uGlyGc1fDMS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-12-05 18:46:32', '2024-12-05 18:47:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `item_id`, `created_at`, `updated_at`) VALUES
(1, 1, 587, NULL, NULL),
(2, 1, 525, NULL, NULL),
(3, 1, 540, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bcategories`
--
ALTER TABLE `bcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_items`
--
ALTER TABLE `campaign_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chield_categories`
--
ALTER TABLE `chield_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extra_settings`
--
ALTER TABLE `extra_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fcategories`
--
ALTER TABLE `fcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_cutomizes`
--
ALTER TABLE `home_cutomizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price_requests`
--
ALTER TABLE `price_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo_codes`
--
ALTER TABLE `promo_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_services`
--
ALTER TABLE `shipping_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitemaps`
--
ALTER TABLE `sitemaps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_orders`
--
ALTER TABLE `track_orders`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `attribute_options`
--
ALTER TABLE `attribute_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1258;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bcategories`
--
ALTER TABLE `bcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `campaign_items`
--
ALTER TABLE `campaign_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `chield_categories`
--
ALTER TABLE `chield_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `extra_settings`
--
ALTER TABLE `extra_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `fcategories`
--
ALTER TABLE `fcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `home_cutomizes`
--
ALTER TABLE `home_cutomizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=594;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `price_requests`
--
ALTER TABLE `price_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `promo_codes`
--
ALTER TABLE `promo_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping_services`
--
ALTER TABLE `shipping_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sitemaps`
--
ALTER TABLE `sitemaps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `track_orders`
--
ALTER TABLE `track_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=320;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
