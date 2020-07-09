-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 30, 2020 lúc 10:29 AM
-- Phiên bản máy phục vụ: 10.1.34-MariaDB
-- Phiên bản PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `weashopdb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `logo`, `address`, `phone_no`, `slug`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Dell', 'logo-dell.png', '52 Nguyen Van Linh, Hai Chau District, Da Nang', '0236445445', 'dell', 0, '2020-06-29 23:58:03', '2020-06-29 23:58:03'),
(2, 'Asus', 'logo-asus.png', '52 Nguyen Van Linh, Hai Chau District, Da Nang', '0236544544', 'asus', 0, '2020-06-29 23:58:41', '2020-06-29 23:58:41'),
(3, 'Macbook', 'logo-apple.png', '52 Nguyen Van Linh, Hai Chau District, Da Nang', '0236789789', 'macbook', 0, '2020-06-29 23:59:24', '2020-06-29 23:59:24'),
(4, 'MSI', 'logo-msi.png', '52 Nguyen Van Linh, Hai Chau District, Da Nang', '0236456456', 'msi', 0, '2020-06-29 23:59:49', '2020-06-29 23:59:49'),
(5, 'Lenovo', 'logo-lenovo.png', '52 Nguyen Van Linh, Hai Chau District, Da Nang', '2036987987', 'lenovo', 0, '2020-06-30 00:00:15', '2020-06-30 00:00:15'),
(6, 'Acer', 'logo-acer.png', '52 Nguyen Van Linh, Hai Chau District, Da Nang', '0236784578', 'acer', 0, '2020-06-30 00:42:37', '2020-06-30 00:42:37'),
(7, 'Kingston', 'logo-kingston.png', '41 Ham Nghi, Hai Chau District, Dan Nang', '0236547895', 'kingston', 0, '2020-06-30 00:58:23', '2020-06-30 00:59:41'),
(8, 'Kingmax', 'logo-kingmax.png', '41 Ham Nghi, Hai Chau District, Dan Nang', '0236547894', 'kingmax', 0, '2020-06-30 00:59:23', '2020-06-30 00:59:23'),
(9, 'G-Skill', 'logo-gskill.png', '41 Ham Nghi, Hai Chau District, Dan Nang', '0236455544', 'g-skill', 0, '2020-06-30 01:00:14', '2020-06-30 01:00:14'),
(10, 'Crucial', 'logo-crucial.png', '41 Ham Nghi, Hai Chau District, Dan Nang', '0236123321', 'crucial', 0, '2020-06-30 01:00:48', '2020-06-30 01:00:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(40, '2014_10_12_100000_create_password_resets_table', 1),
(41, '2020_06_15_152041_create_brands_table', 1),
(42, '2020_06_15_152157_create_product_categories_table', 1),
(43, '2020_06_15_152239_create_products_table', 1),
(44, '2020_06_15_152522_create_customers_table', 1),
(45, '2020_06_15_152557_create_slides_table', 1),
(46, '2020_06_15_152636_create_orders_table', 1),
(47, '2020_06_15_152744_create_order_details_table', 1),
(48, '2020_06_15_152949_create_roles_table', 1),
(49, '2020_06_15_153032_create_permissions_table', 1),
(50, '2020_06_15_153116_create_permission_roles_table', 1),
(51, '2020_06_15_154322_create_users_table', 1),
(52, '2020_06_15_154332_create_role_user_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_status` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'create_user', 'Create user', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(2, 'edit_user', 'Edit user', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(3, 'view_user', 'View user', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(4, 'detail_user', 'Detail user', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(5, 'create_brand', 'Create brand', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(6, 'edit_brand', 'Edit brand', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(7, 'view_brand', 'View brand', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(8, 'detail_brand', 'Detail brand', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(9, 'create_category', 'Create category', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(10, 'edit_category', 'Edit category', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(11, 'view_category', 'View category', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(12, 'detail_category', 'Detail category', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(13, 'create_product', 'Create product', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(14, 'edit_product', 'Edit product', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(15, 'view_product', 'View product', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(16, 'detail_product', 'Detail product', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(17, 'create_order', 'Create order', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(18, 'edit_order', 'Edit order', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(19, 'view_order', 'View order', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(20, 'detail_order', 'Detail order', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(21, 'create_slide', 'Create slide', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(22, 'edit_slide', 'Edit slide', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(23, 'view_slide', 'View slide', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(24, 'detail_slide', 'Detail slide', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(25, 'create_role', 'Create role', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(26, 'edit_role', 'Edit role', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(27, 'view_role', 'View role', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46'),
(28, 'detail_role', 'Detail role', 0, '2020-06-29 01:00:46', '2020-06-29 01:00:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_roles`
--

CREATE TABLE `permission_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_roles`
--

INSERT INTO `permission_roles` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(50, 5, 3, NULL, NULL),
(51, 6, 3, NULL, NULL),
(52, 7, 3, NULL, NULL),
(53, 8, 3, NULL, NULL),
(54, 9, 3, NULL, NULL),
(55, 10, 3, NULL, NULL),
(56, 11, 3, NULL, NULL),
(57, 12, 3, NULL, NULL),
(58, 13, 3, NULL, NULL),
(59, 14, 3, NULL, NULL),
(60, 15, 3, NULL, NULL),
(61, 16, 3, NULL, NULL),
(62, 17, 3, NULL, NULL),
(63, 18, 3, NULL, NULL),
(64, 19, 3, NULL, NULL),
(65, 20, 3, NULL, NULL),
(66, 21, 3, NULL, NULL),
(67, 22, 3, NULL, NULL),
(68, 23, 3, NULL, NULL),
(69, 24, 3, NULL, NULL),
(70, 1, 1, NULL, NULL),
(71, 2, 1, NULL, NULL),
(72, 3, 1, NULL, NULL),
(73, 4, 1, NULL, NULL),
(74, 5, 1, NULL, NULL),
(75, 6, 1, NULL, NULL),
(76, 7, 1, NULL, NULL),
(77, 8, 1, NULL, NULL),
(78, 9, 1, NULL, NULL),
(79, 10, 1, NULL, NULL),
(80, 11, 1, NULL, NULL),
(81, 12, 1, NULL, NULL),
(82, 13, 1, NULL, NULL),
(83, 14, 1, NULL, NULL),
(84, 15, 1, NULL, NULL),
(85, 16, 1, NULL, NULL),
(86, 17, 1, NULL, NULL),
(87, 18, 1, NULL, NULL),
(88, 19, 1, NULL, NULL),
(89, 20, 1, NULL, NULL),
(90, 21, 1, NULL, NULL),
(91, 22, 1, NULL, NULL),
(92, 23, 1, NULL, NULL),
(93, 24, 1, NULL, NULL),
(94, 25, 1, NULL, NULL),
(95, 26, 1, NULL, NULL),
(96, 27, 1, NULL, NULL),
(97, 28, 1, NULL, NULL),
(98, 3, 2, NULL, NULL),
(99, 4, 2, NULL, NULL),
(100, 7, 2, NULL, NULL),
(101, 8, 2, NULL, NULL),
(102, 11, 2, NULL, NULL),
(103, 12, 2, NULL, NULL),
(104, 15, 2, NULL, NULL),
(105, 16, 2, NULL, NULL),
(106, 19, 2, NULL, NULL),
(107, 20, 2, NULL, NULL),
(108, 23, 2, NULL, NULL),
(109, 24, 2, NULL, NULL),
(110, 27, 2, NULL, NULL),
(111, 28, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(16,2) NOT NULL,
  `promotion_price` decimal(16,2) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_hot` tinyint(1) DEFAULT NULL,
  `is_new` tinyint(1) DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `description`, `detail`, `url_image`, `price`, `promotion_price`, `quantity`, `slug`, `is_hot`, `is_new`, `brand_id`, `category_id`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Laptop Apple MacBook Air 13\" 2019', '5efae3fca71eb', '<p>abc</p>', 'abc', 'mac-3.png', '31990000.00', NULL, 10, 'laptop-apple-macbook-air-13-2019', 0, 1, 3, 1, 0, '2020-06-30 00:09:58', '2020-06-30 00:13:29'),
(2, 'Laptop ASUS VivoBook S15', '5efae67bb4588', '<p>abc</p>', 'abc', 'asus-3.png', '17590000.00', NULL, 10, 'laptop-asus-vivobook-s15', 0, 1, 2, 1, 0, '2020-06-30 00:16:54', '2020-06-30 00:16:54'),
(3, 'Laptop Acer Aspire 3', '5efae8d18651a', '<p>abc</p>', 'abc', 'acer-2.png', '13990000.00', NULL, 5, 'laptop-acer-aspire-3', 0, 1, 2, 1, 0, '2020-06-30 00:26:12', '2020-06-30 00:26:12'),
(4, 'Laptop Dell Inspiron 14', '5efae917dcc4b', '<p>abc</p>', 'abc', 'dell-5.jpg', '24490000.00', NULL, 10, 'laptop-dell-inspiron-14', 1, 0, 1, 1, 0, '2020-06-30 00:28:02', '2020-06-30 00:28:02'),
(5, 'Laptop MSI GS65 Stealth 9SE-1000VN', '5efae98c30a87', '<p>abc</p>', 'abc', 'msi-5.png', '51090000.00', NULL, 10, 'laptop-msi-gs65-stealth-9se-1000vn', 1, 1, 4, 1, 0, '2020-06-30 00:29:40', '2020-06-30 00:29:40'),
(6, 'Laptop Lenovo Yoga S740-14IIL-81RS0036VN', '5efae9e8bbb75', '<p>abc</p>', 'abc', 'lenovo-5.jpg', '23690000.00', NULL, 10, 'laptop-lenovo-yoga-s740-14iil-81rs0036vn', 1, 1, 5, 1, 0, '2020-06-30 00:32:39', '2020-06-30 00:32:39'),
(7, 'Bàn phím laptop Asus S510', '5efaeaab895d0', '<p>abc</p>', 'abc', 'p-asus.jpg', '600000.00', NULL, 5, 'ban-phim-laptop-asus-s510', 0, 0, 2, 3, 0, '2020-06-30 00:35:10', '2020-06-30 00:35:10'),
(8, 'Bàn phím Laptop Apple A1534', '5efaeb372f907', '<p>abc</p>', 'abc', 'p-apple-1.jpg', '3300000.00', NULL, 2, 'ban-phim-laptop-apple-a1534', 0, 0, 3, 3, 0, '2020-06-30 00:37:09', '2020-06-30 00:37:09'),
(9, 'Sạc Laptop MSI Slim CHICONY 19.5V-7.7A SKU: 19020157', '5efaebf71f7d1', '<p>abc</p>', 'abc', 'sac-msi.jpg', '867000.00', NULL, 4, 'sac-laptop-msi-slim-chicony-195v-77a-sku-19020157', 0, 0, 4, 5, 0, '2020-06-30 00:40:08', '2020-06-30 00:40:08'),
(10, 'Sạc Laptop Acer 19V-2.37A-45W (Đầu thường)', '5efaecf745895', '<p>abc</p>', 'abc', 'sac-acer-2.jpg', '670000.00', NULL, 10, 'sac-laptop-acer-19v-237a-45w-dau-thuong', 0, 0, 6, 5, 0, '2020-06-30 00:44:26', '2020-06-30 00:44:26'),
(11, 'Sạc Macbook Apple Zin USB-C 61W 2016', '5efaed6061f72', '<p>abc</p>', 'abc', 'sac-apple-1.jpg', '1867000.00', NULL, 3, 'sac-macbook-apple-zin-usb-c-61w-2016', 0, 0, 3, 5, 0, '2020-06-30 00:46:00', '2020-06-30 00:46:00'),
(12, 'RAM laptop Crucial (1x8GB) DDR4 2666MHz', '5efaf1ef5dc78', '<p>abc</p>', 'abc', 'ram-crucial.jpg', '980000.00', NULL, 10, 'ram-laptop-crucial-1x8gb-ddr4-2666mhz', 0, 0, 10, 2, 0, '2020-06-30 01:04:58', '2020-06-30 01:04:58'),
(13, 'RAM laptop Kingston KVR16LS11/8 (1x8GB) DDR3L 1600MHz', '5efaf256cc072', NULL, NULL, 'ram-kingston.jpg', '1150000.00', NULL, 20, 'ram-laptop-kingston-kvr16ls118-1x8gb-ddr3l-1600mhz', 0, 0, 7, 2, 0, '2020-06-30 01:06:14', '2020-06-30 01:06:14'),
(14, 'RAM laptop G.SKILL F3-12800CL11S-4GBSQ (1x4GB) DDR3 1600MHz', '5efaf2b835640', NULL, NULL, 'ram-gskill-1.jpg', '670000.00', NULL, 10, 'ram-laptop-gskill-f3-12800cl11s-4gbsq-1x4gb-ddr3-1600mhz', 0, 0, 9, 2, 0, '2020-06-30 01:18:03', '2020-06-30 01:18:03'),
(15, 'Pin dùng cho laptop Dell 14Z-5421/2421/3421 Zin (NQ)', '5efaf541a1f06', NULL, NULL, 'pin-dell-4.jpg', '1125000.00', NULL, 50, 'pin-dung-cho-laptop-dell-14z-542124213421-zin-nq', 0, 0, 1, 4, 0, '2020-06-30 01:19:34', '2020-06-30 01:19:34'),
(16, 'Pin dùng cho laptop Dell 14R/N5010/N5110 (6 Cell)', '5efaf59f10609', NULL, NULL, 'pin-dell-3.jpg', '550000.00', NULL, 1, 'pin-dung-cho-laptop-dell-14rn5010n5110-6-cell', 0, 0, 1, 4, 0, '2020-06-30 01:20:38', '2020-06-30 01:20:38'),
(17, 'Pin dùng cho laptop Acer E5-571/E5-572/E5-471 Zin', '5efaf5ee6f93e', NULL, NULL, 'pin-acer-1.jpg', '5500000.00', NULL, 20, 'pin-dung-cho-laptop-acer-e5-571e5-572e5-471-zin', 0, 0, 6, 4, 0, '2020-06-30 01:21:58', '2020-06-30 01:21:58'),
(18, 'Pin dùng cho laptop Apple A1493/ A1502 Zin', '5efaf63edd622', NULL, NULL, 'in-mac-2.jpg', '2000000.00', NULL, 6, 'pin-dung-cho-laptop-apple-a1493-a1502-zin', 0, 0, 3, 4, 0, '2020-06-30 01:22:55', '2020-06-30 01:22:55'),
(19, 'Bàn phím laptop Lenovo E550', '5efaf669015dc', NULL, NULL, 'p-lenovo.jpg', '1133000.00', NULL, 8, 'ban-phim-laptop-lenovo-e550', 0, 0, 5, 3, 0, '2020-06-30 01:24:14', '2020-06-30 01:24:14'),
(20, 'Sạc Laptop Lenovo 20V-3.25A (Đầu Kim)', '5efaf6b33bac9', NULL, NULL, 'sac-lenovo-2.jpg', '320000.00', NULL, 1, 'sac-laptop-lenovo-20v-325a-dau-kim', 0, 0, 5, 5, 0, '2020-06-30 01:25:22', '2020-06-30 01:25:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `description`, `slug`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Laptop', 'abc', 'laptop', 0, '2020-06-30 00:00:28', '2020-06-30 00:00:28'),
(2, 'RAM', 'abc', 'ram', 0, '2020-06-30 00:02:00', '2020-06-30 00:02:00'),
(3, 'Keyboard', 'abc', 'keyboard', 0, '2020-06-30 00:02:38', '2020-06-30 00:02:38'),
(4, 'Pin', 'abc', 'pin', 0, '2020-06-30 00:03:18', '2020-06-30 00:03:18'),
(5, 'Charger', 'abc', 'charger', 0, '2020-06-30 00:04:23', '2020-06-30 00:04:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'ROLE_ADMIN', 'Administrator', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(2, 'ROLE_MANAGER', 'Manager', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(3, 'ROLE_STAFF', 'Staff', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45'),
(4, 'ROLE_CUSTOMER', 'Customer', 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(6, 1, 1, NULL, NULL),
(7, 2, 2, NULL, NULL),
(8, 3, 3, NULL, NULL),
(9, 4, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(11) DEFAULT NULL,
  `email_verified_at` date DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reset_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `level`, `email_verified_at`, `password`, `reset_password`, `remember_token`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@gmail.com', 0, NULL, '$2y$10$/R2hG9ld.VWodXp152nj6elEVmguqxg4YsakqBrjDwkDUB9PNjPyO', NULL, NULL, 0, '2020-06-29 01:00:44', '2020-06-29 01:00:44'),
(2, 'ToanBT', 'toan160798@gmail.com', 1, NULL, '$2y$10$9fexI66yCgnrIjWwz7r8XO3CcEHh5j3pMKiTlNZzYKoR0g29KriJW', NULL, NULL, 0, '2020-06-29 01:00:44', '2020-06-29 01:00:44'),
(3, 'HoiNP', 'phuchoi@gmail.com', 2, NULL, '$2y$10$guuRzH.82MrqnPj700a4Mu2uOe8CpQ/171ft9dul8Xdv11QBZCeY.', NULL, NULL, 0, '2020-06-29 01:00:44', '2020-06-29 01:00:44'),
(4, 'NghiaDT', 'dinhnghia@gmail.com', 3, NULL, '$2y$10$6zigjstHuniBAJ5m5So8fOQgH431f5O7tEEDfT2D8lk1VOcsFou46', NULL, NULL, 0, '2020-06-29 01:00:45', '2020-06-29 01:00:45');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_roles_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_roles_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `permission_roles`
--
ALTER TABLE `permission_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD CONSTRAINT `permission_roles_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
