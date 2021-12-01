-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th12 01, 2021 lúc 04:16 PM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopthethao`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'Quần áo', 0, 'quan-ao', '2021-09-23 04:36:10', '2021-09-23 04:36:10', NULL),
(5, 'Áo thể thao', 4, 'ao-the-thao', '2021-09-23 04:36:17', '2021-09-23 04:36:17', NULL),
(6, 'Áo', 4, 'ao', '2021-09-23 04:46:12', '2021-09-23 04:46:15', '2021-09-23 04:46:15'),
(7, 'Quần thể thao', 4, 'quan-the-thao', '2021-10-01 19:09:01', '2021-11-30 02:19:18', '2021-11-30 02:19:18'),
(8, 'Áo Thể Thao', 0, 'ao-the-thao', '2021-11-21 21:00:10', '2021-11-24 00:55:42', '2021-11-24 00:55:42'),
(9, 'Giày Nam', 0, 'giay-nam', '2021-11-23 17:39:43', '2021-11-28 17:51:39', '2021-11-28 17:51:39'),
(10, 'Quần thể thao', 4, 'quan-the-thao', '2021-12-01 05:34:59', '2021-12-01 05:34:59', NULL),
(11, 'Giày Thể Thao', 0, 'giay-the-thao', '2021-12-01 05:35:11', '2021-12-01 05:35:11', NULL),
(12, 'Giày Nam', 11, 'giay-nam', '2021-12-01 05:35:24', '2021-12-01 05:35:24', NULL),
(13, 'Giày Nữ', 11, 'giay-nu', '2021-12-01 05:35:34', '2021-12-01 05:35:34', NULL),
(14, 'Áo thể thao phong cách', 4, 'ao-the-thao-phong-cach', '2021-12-01 07:52:54', '2021-12-01 07:53:23', '2021-12-01 07:53:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `created_at`, `updated_at`, `slug`, `deleted_at`) VALUES
(1, 'Menu2', 0, '2021-09-23 05:47:13', '2021-09-23 05:59:00', 'menu2', '2021-09-23 05:59:00'),
(2, 'Menu1', 0, '2021-09-23 05:59:07', '2021-10-02 22:49:19', 'menu1', '2021-10-02 22:49:19'),
(3, 'Sản Phẩm', 0, '2021-09-30 19:43:30', '2021-12-01 07:54:02', 'san-pham', '2021-12-01 07:54:02'),
(4, 'Quần áo', 0, '2021-11-22 01:04:05', '2021-12-01 07:49:46', 'quan-ao', '2021-12-01 07:49:46'),
(5, 'Áo thể thao', 4, '2021-11-28 17:54:28', '2021-12-01 07:49:48', 'ao-the-thao', '2021-12-01 07:49:48'),
(6, 'Quần thể thao', 4, '2021-11-28 17:54:52', '2021-12-01 07:49:49', 'quan-the-thao', '2021-12-01 07:49:49'),
(7, '404', 0, '2021-11-28 17:55:17', '2021-11-30 02:23:59', '404', '2021-11-30 02:23:59'),
(8, 'Contact', 0, '2021-11-28 17:55:30', '2021-11-28 17:55:30', 'contact', NULL),
(9, '404', 0, '2021-11-30 02:24:08', '2021-11-30 02:24:08', '404', NULL),
(10, 'sản  phẩm nổi bật 1', 3, '2021-12-01 07:53:48', '2021-12-01 07:54:05', 'san-pham-noi-bat-1', '2021-12-01 07:54:05'),
(11, 'Sản Phẩm', 0, '2021-12-01 07:54:20', '2021-12-01 07:54:20', 'san-pham', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_09_23_111029_create_categories_table', 1),
(5, '2021_09_23_114251_add_column_deleted_at_table_categories', 2),
(6, '2021_09_23_123058_create_menus_table', 3),
(7, '2021_09_23_124746_add_column_slug_to_menus_table', 4),
(8, '2021_09_23_125513_add_column_soft_delete_to_menus_table', 5),
(9, '2021_09_29_005325_create_products_table', 6),
(10, '2021_09_29_005423_create_product_images_table', 6),
(11, '2021_09_29_005513_create_tags_table', 6),
(12, '2021_09_29_005552_create_product_tags_table', 6),
(13, '2021_09_29_013417_add_column_feature_image_name', 7),
(14, '2021_10_01_014249_add_column_image_name_to_table_product_image', 8),
(15, '2021_10_01_020925_add_column_delete_at_to_product_table', 9),
(16, '2021_10_02_083159_create_sliders_table', 10),
(17, '2021_10_03_025829_add_column_deleted_at_to_sliders', 11),
(18, '2021_10_03_040456_add_column_deleted_at_to_sliders', 12),
(19, '2021_10_03_043222_create_settings_table', 12),
(20, '2021_10_03_052242_add_column_type_settings_table', 13),
(21, '2021_10_03_123704_create_roles_table', 14),
(22, '2021_10_03_123729_create_permissions_table', 14),
(23, '2021_10_03_123745_create_table_user_role', 14),
(24, '2021_10_03_123756_create_table_permission_role', 14),
(25, '2021_10_03_130219_add_column_deleted_at_table_users', 15),
(26, '2021_10_03_132446_add_column_parent_id_permission', 16),
(27, '2021_10_03_135047_add_column_key_permission_table', 17),
(28, '2021_10_03_140858_add_column_deleted_at_table_roles', 18),
(29, '2021_11_22_061649_add_column_views_products', 19),
(30, '2021_11_22_072541_add_column_views_products', 20),
(31, '2021_11_24_014634_add_column_views_products', 21);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `key_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `created_at`, `updated_at`, `parent_id`, `key_code`) VALUES
(1, 'Danh mục sản phẩm', 'Danh mục sản phẩm', NULL, NULL, 0, ''),
(2, 'Danh sách Danh mục', 'Danh sách Danh mục', NULL, NULL, 1, 'List_category'),
(3, 'Thêm danh mục', 'Thêm danh mục', NULL, NULL, 1, 'add_category'),
(4, 'Sửa danh mục', 'Sửa danh mục', NULL, NULL, 1, 'edit_category'),
(5, 'Xóa danh mục', 'Xóa danh mục', NULL, NULL, 1, 'delete_category'),
(6, 'Menu', 'Menu', NULL, NULL, 0, ''),
(7, 'Danh sách Menu', 'Danh sách Menu', NULL, NULL, 6, 'List_menu'),
(8, 'Thêm Menu', 'Thêm Menu', NULL, NULL, 6, 'add_menu'),
(9, 'Sửa Menu', 'Sửa Menu', NULL, NULL, 6, 'edit_menu'),
(10, 'Xóa Menu', 'Xóa Menu', NULL, NULL, 6, 'delete_menu'),
(11, 'Slider', 'Slider', NULL, NULL, 0, ''),
(12, 'Danh sách slider', 'Danh sách slider', NULL, NULL, 11, 'List_slider'),
(13, 'Thêm slider', 'Thêm slider', NULL, NULL, 11, 'add_slider'),
(14, 'Sửa slider', 'Sửa slider', NULL, NULL, 11, 'edit_slider'),
(15, 'Xóa slider', 'Xóa slider', NULL, NULL, 11, 'delete_slider'),
(16, 'Sản phẩm', 'Sản phẩm', NULL, NULL, 0, ''),
(17, 'Danh sách sản phẩm', 'Danh sản phẩm', NULL, NULL, 16, 'List_product'),
(18, 'Thêm sản phẩm', 'Thêm sản phẩm', NULL, NULL, 16, 'add_product'),
(19, 'Sửa sản phẩm', 'Sửa sản phẩm', NULL, NULL, 16, 'edit_product'),
(20, 'Xóa sản phẩm', 'Xóa sản phẩm', NULL, NULL, 16, 'delete_product'),
(21, ' Settings', ' Settings', NULL, NULL, 0, ''),
(22, 'Danh sách  settings', 'Danh settings', NULL, NULL, 21, 'List_setting'),
(23, 'Thêm settings', 'Thêm settings', NULL, NULL, 21, 'add_setting'),
(24, 'Sửa settings', 'Sửa settings', NULL, NULL, 21, 'edit_setting'),
(25, 'Xóa settings', 'Xóa settings', NULL, NULL, 21, 'delete_setting'),
(26, 'Nhân viên', 'Nhân viên', NULL, NULL, 0, ''),
(27, 'Danh sách nhân viên', 'Danh sách nhân viên', NULL, NULL, 26, 'List_user'),
(28, 'Thêm nhân viên', 'Thêm nhân viên', NULL, NULL, 26, 'add_user'),
(29, 'Sửa nhân viên', 'Sửa nhân viên', NULL, NULL, 26, 'edit_user'),
(30, 'Xóa nhân viên', 'Xóa nhân viên', NULL, NULL, 26, 'delete_user'),
(31, 'Vai trò', 'Vai trò', NULL, NULL, 0, ''),
(32, 'Danh sách vai trò', 'Danh sách vai trò', NULL, NULL, 31, 'List_role'),
(33, 'Thêm vai trò', 'Thêm vai trò', NULL, NULL, 31, 'add_role'),
(34, 'Sửa vai trò', 'Sửa vai trò', NULL, NULL, 31, 'edit_role'),
(35, 'Xóa vai trò', 'Xóa vai trò', NULL, NULL, 31, 'delete_role');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_role`
--

INSERT INTO `permission_role` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(5, 5, 7, NULL, NULL),
(6, 5, 8, NULL, NULL),
(7, 5, 9, NULL, NULL),
(8, 5, 10, NULL, NULL),
(13, 5, 17, NULL, NULL),
(14, 5, 18, NULL, NULL),
(15, 5, 19, NULL, NULL),
(16, 5, 20, NULL, NULL),
(17, 1, 2, NULL, NULL),
(18, 1, 3, NULL, NULL),
(19, 1, 4, NULL, NULL),
(20, 1, 5, NULL, NULL),
(21, 1, 7, NULL, NULL),
(22, 1, 8, NULL, NULL),
(23, 1, 9, NULL, NULL),
(24, 1, 10, NULL, NULL),
(25, 1, 12, NULL, NULL),
(26, 1, 13, NULL, NULL),
(27, 1, 14, NULL, NULL),
(28, 1, 15, NULL, NULL),
(29, 1, 17, NULL, NULL),
(30, 1, 18, NULL, NULL),
(31, 1, 19, NULL, NULL),
(32, 1, 20, NULL, NULL),
(33, 1, 22, NULL, NULL),
(34, 1, 23, NULL, NULL),
(35, 1, 24, NULL, NULL),
(36, 1, 25, NULL, NULL),
(37, 1, 27, NULL, NULL),
(38, 1, 28, NULL, NULL),
(39, 1, 29, NULL, NULL),
(40, 1, 30, NULL, NULL),
(41, 1, 32, NULL, NULL),
(42, 1, 33, NULL, NULL),
(43, 1, 34, NULL, NULL),
(44, 1, 35, NULL, NULL),
(45, 2, 2, NULL, NULL),
(57, 2, 17, NULL, NULL),
(61, 3, 2, NULL, NULL),
(62, 3, 3, NULL, NULL),
(63, 3, 4, NULL, NULL),
(64, 3, 5, NULL, NULL),
(65, 3, 7, NULL, NULL),
(66, 3, 8, NULL, NULL),
(67, 3, 9, NULL, NULL),
(68, 3, 10, NULL, NULL),
(69, 3, 12, NULL, NULL),
(70, 3, 13, NULL, NULL),
(71, 3, 14, NULL, NULL),
(72, 3, 15, NULL, NULL),
(73, 3, 17, NULL, NULL),
(74, 3, 18, NULL, NULL),
(75, 3, 19, NULL, NULL),
(76, 3, 20, NULL, NULL),
(77, 3, 22, NULL, NULL),
(78, 3, 23, NULL, NULL),
(79, 3, 24, NULL, NULL),
(80, 3, 25, NULL, NULL),
(85, 4, 2, NULL, NULL),
(86, 4, 3, NULL, NULL),
(87, 4, 4, NULL, NULL),
(88, 4, 5, NULL, NULL),
(89, 4, 7, NULL, NULL),
(90, 4, 8, NULL, NULL),
(91, 4, 9, NULL, NULL),
(92, 4, 10, NULL, NULL),
(93, 4, 12, NULL, NULL),
(94, 4, 13, NULL, NULL),
(95, 4, 14, NULL, NULL),
(96, 4, 15, NULL, NULL),
(97, 4, 17, NULL, NULL),
(98, 4, 18, NULL, NULL),
(99, 4, 19, NULL, NULL),
(100, 4, 20, NULL, NULL),
(101, 4, 22, NULL, NULL),
(102, 4, 23, NULL, NULL),
(103, 4, 24, NULL, NULL),
(104, 4, 25, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `feature_image_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `feature_image_path`, `content`, `user_id`, `category_id`, `created_at`, `updated_at`, `feature_image_name`, `deleted_at`) VALUES
(25, 'ĐỒ BỘ FORM RỘNG MOCHINO TT158', '410000', '/storage/product/6/wXX9UsSIHduJGdT5xgoQ.jpg', '<p>&Aacute;O THỂ THAO NAM DUNLOP - DABAS8088-1C-WT (TRẮNG)</p>', 6, 5, '2021-11-27 23:21:24', '2021-11-27 23:35:14', 'a.jpg', NULL),
(27, 'Bộ đồ thể thao phối chữ FF TT532', '410000', '/storage/product/6/5eSKA2qhCnvOWgpeIOGr.jpg', '<p>quần &aacute;o stylelist</p>', 6, 5, '2021-11-27 23:24:42', '2021-11-27 23:34:46', 'aa.jpg', NULL),
(28, 'Bộ đồ thể thao chữ nhiều màu TT539', '400000', '/storage/product/6/u1rjJUUcE9xXwcjeRENM.jpg', '<p>quần &aacute;o stylelist.</p>', 6, 4, '2021-11-27 23:25:16', '2021-11-27 23:34:30', 'aaa.jpg', NULL),
(29, 'Bộ đồ thể thao bò sữa TT542', '410000', '/storage/product/6/J3bgYONlIc6DETnmmmQq.jpg', '<p>quần &aacute;o stylelist</p>', 6, 4, '2021-11-27 23:25:44', '2021-11-27 23:40:47', 'aaaa.jpg', NULL),
(30, 'Bộ thể thao cotton phối họa tiết sọc 3D TT0185', '400000', '/storage/product/6/0WKrcqBgHTm27GM72ANL.jpg', '<p>quần &aacute;o stylelist</p>', 6, 4, '2021-11-27 23:26:17', '2021-11-27 23:40:35', 'aaaaaa.jpg', NULL),
(31, 'Bộ đồ thể thao hình nón đính đá TT547', '120000', '/storage/product/6/3CbGAuHaqVPrtcKlJYbu.jpg', '<p>quần &aacute;o.</p>', 6, 5, '2021-11-27 23:37:17', '2021-11-27 23:38:52', 'b.jpg', NULL),
(32, 'Bộ đồ thể thao from rộng phối quần họa tiết 3D TT0190', '140000', '/storage/product/6/kqsDfsPFyyI0iEtaNZT2.jpg', '<p>đồ đẹp</p>', 6, 5, '2021-11-27 23:47:50', '2021-11-27 23:50:26', 'bb.jpg', NULL),
(33, 'Bộ đồ thể thao hình nón phối họa tiết 3d TT0185', '18000000', '/storage/product/6/8cSE3kmFx88y2sUL3CXO.jpg', '<p>style</p>', 6, 5, '2021-11-27 23:48:30', '2021-11-27 23:51:03', 'bbb.jpg', NULL),
(34, 'Bộ đồ thể thao ngắn phối họa tiết 3D TT40', '120000', '/storage/product/6/SdNhn0QDUArCf4jqFuOI.jpg', '<p>Bộ đồ thể thao ngắn phối họa tiết 3D TT40</p>', 6, 4, '2021-11-27 23:52:20', '2021-11-27 23:52:32', 'bbbb.jpg', NULL),
(35, 'Bộ đồ thể thao nữ cực phong các và ấn tượng TT40', '180000', '/storage/product/6/8BucAagq7QmSouFS2XnK.jpg', '<h2>Bộ đồ thể thao nữ cực phong c&aacute;c v&agrave; ấn tượng TT40</h2>', 6, 4, '2021-11-27 23:53:58', '2021-11-27 23:53:58', 'c.jpg', NULL),
(36, 'Bộ đồ thể thao nữ phối hoạ tiết thêu in TT40', '180000', '/storage/product/6/2boYCwaVEuJG8tf3bje0.jpg', '<h2>Bộ đồ thể thao nữ phối hoạ tiết th&ecirc;u in TT40</h2>', 6, 4, '2021-11-27 23:55:05', '2021-11-27 23:56:25', 'cc.jpg', NULL),
(37, 'ÁO THỂ THAO NAM DUNLOP', '140000', '/storage/product/6/orSmMH2wS7vuG3u7MDX3.jpg', '<p>&Aacute;o đẹp</p>', 6, 5, '2021-12-01 07:55:15', '2021-12-01 07:55:56', 'tải xuống.jpg', '2021-12-01 07:55:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `image_path`, `product_id`, `created_at`, `updated_at`, `image_name`) VALUES
(24, '/storage/`product_images/6/x4PQKkG0TbUQHpm3qW3B.jpg', 25, '2021-11-27 23:21:40', '2021-11-27 23:21:40', 'a.jpg'),
(30, '/storage/`product_images/6/isQoULAp1e654lk3sGlc.jpg', 27, '2021-11-27 23:31:24', '2021-11-27 23:31:24', 'aa.jpg'),
(31, '/storage/`product_images/6/YJf1lGfLptxFmhsPs1Da.jpg', 28, '2021-11-27 23:32:00', '2021-11-27 23:32:00', 'aaa.jpg'),
(32, '/storage/`product_images/6/rwBVsTrdKWvgpGJu7oql.jpg', 29, '2021-11-27 23:32:25', '2021-11-27 23:32:25', 'aaaa.jpg'),
(33, '/storage/`product_images/6/vvhGayi9zhVvKeHHbmDb.jpg', 30, '2021-11-27 23:33:15', '2021-11-27 23:33:15', 'aaaaaa.jpg'),
(35, '/storage/`product_images/6/iwvafEZNh8pNd9Nc1fja.jpg', 31, '2021-11-27 23:38:52', '2021-11-27 23:38:52', 'b.jpg'),
(37, '/storage/`product_images/6/yYLeTAJT3vFmiWhY1ute.jpg', 32, '2021-11-27 23:50:26', '2021-11-27 23:50:26', 'bb.jpg'),
(38, '/storage/`product_images/6/caSKplycALQBdl3ForZc.jpg', 33, '2021-11-27 23:51:03', '2021-11-27 23:51:03', 'bbb.jpg'),
(39, '/storage/`product_images/6/NEBsPeMJsIve0B2xKN1z.jpg', 34, '2021-11-27 23:52:20', '2021-11-27 23:52:20', 'bbbb.jpg'),
(40, '/storage/`product_images/6/AeP4vY1v1QAqKQmzu7rY.jpg', 35, '2021-11-27 23:53:58', '2021-11-27 23:53:58', 'c.jpg'),
(42, '/storage/`product_images/6/CmuAnBIRQjSqPlSsCmpz.jpg', 36, '2021-11-27 23:56:25', '2021-11-27 23:56:25', 'cc.jpg'),
(43, '/storage/`product_images/6/ovg9WHGHl4ohSmZkZw9b.jpg', 37, '2021-12-01 07:55:15', '2021-12-01 07:55:15', 'tải xuống.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_tags`
--

CREATE TABLE `product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_tags`
--

INSERT INTO `product_tags` (`id`, `product_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(19, 25, 6, '2021-11-27 23:21:24', '2021-11-27 23:21:24'),
(21, 27, 6, '2021-11-27 23:24:42', '2021-11-27 23:24:42'),
(22, 28, 6, '2021-11-27 23:25:16', '2021-11-27 23:25:16'),
(23, 29, 6, '2021-11-27 23:25:44', '2021-11-27 23:25:44'),
(24, 30, 6, '2021-11-27 23:26:17', '2021-11-27 23:26:17'),
(25, 31, 7, '2021-11-27 23:37:17', '2021-11-27 23:37:17'),
(26, 33, 9, '2021-11-27 23:48:30', '2021-11-27 23:48:30'),
(27, 32, 6, '2021-11-27 23:50:26', '2021-11-27 23:50:26'),
(28, 34, 7, '2021-11-27 23:52:20', '2021-11-27 23:52:20'),
(29, 35, 7, '2021-11-27 23:53:58', '2021-11-27 23:53:58'),
(30, 36, 9, '2021-11-27 23:55:05', '2021-11-27 23:55:05'),
(31, 37, 3, '2021-12-01 07:55:15', '2021-12-01 07:55:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'Quản trị hệ thống', NULL, NULL, NULL),
(2, 'guest', 'Khách hàng', NULL, NULL, NULL),
(3, 'developer', 'Phát triển hệ thống', NULL, NULL, NULL),
(4, 'content', 'Chỉnh sửa nội dung', NULL, NULL, NULL),
(5, 'Người chỉnh sửa nội dung', 'chỉnh sửa nội dung', '2021-10-03 07:08:12', '2021-10-03 07:15:08', '2021-10-03 07:15:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, NULL),
(2, 5, 2, NULL, NULL),
(5, 1, 2, NULL, NULL),
(8, 6, 2, NULL, NULL),
(9, 7, 3, NULL, NULL),
(10, 8, 4, NULL, NULL),
(11, 6, 1, NULL, NULL),
(12, 6, 3, NULL, NULL),
(13, 6, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `config_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `config_key`, `config_value`, `created_at`, `updated_at`, `type`) VALUES
(7, 'phone_contact', '0842415839', '2021-11-23 23:51:50', '2021-11-24 00:02:53', 'Text'),
(9, 'footer_information', 'LeSyHung@coppyright.2021', '2021-11-24 00:00:35', '2021-11-24 00:00:35', 'Textarea'),
(10, 'email', 'hunglsctk42@gmail.com', '2021-11-24 00:03:18', '2021-11-24 00:03:18', 'Text'),
(11, 'facebook_link', 'https://www.facebook.com/hunglsctk42/', '2021-11-24 00:04:35', '2021-11-24 00:04:35', 'Textarea'),
(12, 'twitterk', 'https://twitter.com/LeSyHung7', '2021-11-24 00:05:58', '2021-11-24 00:05:58', 'Textarea');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `description`, `image_path`, `image_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, '100% famous fashion brand', 'Phong cách và phong cách', '/storage/slider/1/Oy0XvwlIiqOsqy4pvCgi.jpg', 'girl3.jpg', '2021-10-02 21:21:11', '2021-11-23 20:57:44', NULL),
(7, '100% famous fashion brand', 'Vẻ đẹp quyến rũ thời trang', '/storage/slider/1/FoFDYRpbiHqmoSm3mQvP.jpg', 'girl2.jpg', '2021-11-21 23:11:52', '2021-11-23 20:57:34', NULL),
(8, '100% famous fashion brand', 'Fashion for alll (Thời trang cho mọi người)', '/storage/slider/6/dRA7dddvmn5DQ3HJoeRp.jpg', 'girl1.jpg', '2021-11-22 01:26:52', '2021-11-23 23:39:25', NULL),
(9, 'Áo thể thao 1', 'Áo phong cách 1', '/storage/slider/6/i2BiqJRZlRxNOX6UvbcP.jpg', 'girl3.jpg', '2021-12-01 07:56:27', '2021-12-01 07:56:50', '2021-12-01 07:56:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'sàdsfsd', '2021-11-22 04:30:42', '2021-11-22 04:30:42'),
(3, 'Áo thun', '2021-11-23 18:31:33', '2021-11-23 18:31:33'),
(4, 'Áo thể thao phong cách', '2021-11-23 18:52:22', '2021-11-23 18:52:22'),
(5, 'Áo thể thao', '2021-11-23 19:01:45', '2021-11-23 19:01:45'),
(6, 'áo', '2021-11-23 20:40:45', '2021-11-23 20:40:45'),
(7, 'Quần áo', '2021-11-27 22:41:04', '2021-11-27 22:41:04'),
(8, 'quấn áo đẹp', '2021-11-27 23:07:27', '2021-11-27 23:07:27'),
(9, 'áo quần', '2021-11-27 23:48:30', '2021-11-27 23:48:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Khách hàng', 'hunglsctk42@gmail.com', NULL, '$2y$10$sID05se4fn46U43Ie3cq9ulKj.9q7FnlK9fhKQ9iCFB/r.vpfTNLC', NULL, NULL, '2021-12-01 07:58:03', NULL),
(6, 'admin', 'Lesyhung26@gmail.com', NULL, '$2y$10$5P5CFiidNOQ1ERKGkQjVqOcx.ur9OAG9w6n/yZw7GqyyGQO4NB6xW', 'p7heL65DemOSoDylRNJJSoNlfS3nw42jnNpd4fdZtuHCw65UBLDtYZJnE17F', '2021-10-03 07:28:16', '2021-11-27 22:47:37', NULL),
(7, 'developer', 'Lesyhung27@gmail.com', NULL, '$2y$10$PnRh7bWFyUFd3ahWnpBdcug5OQz8N4Ak.RPH.uyfRHfmxj.ApdEsq', NULL, '2021-10-03 07:29:10', '2021-11-23 21:10:26', NULL),
(8, 'content', 'Lesyhung28@gmail.com', NULL, '$2y$10$KP9C1W0WingfNMHAGGm0iO/slJam7YJ7i/v1/ObJ.nl90GD3GfXa2', NULL, '2021-10-03 07:29:37', '2021-11-22 05:17:45', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_tags`
--
ALTER TABLE `product_tags`
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
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
