-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 29, 2018 at 02:50 PM
-- Server version: 10.2.13-MariaDB-10.2.13+maria~xenial-log
-- PHP Version: 7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gundrock_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `armadas`
--

CREATE TABLE `armadas` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `penumpang` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `images` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customerName` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ktpPicture` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `optionalIdPictures` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `phoneNumber` varchar(13) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `additionalPicture` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `deleted_at`, `created_at`, `updated_at`, `customerName`, `ktpPicture`, `optionalIdPictures`, `phoneNumber`, `additionalPicture`, `address`) VALUES
(53, NULL, '2017-11-23 11:35:41', '2017-11-23 11:35:41', 'Ikal Muhammad', '5a16501dc0149.PNG', '0', '08127890689', '5a16501dc03a6.PNG', 'Jalan jawa8'),
(54, NULL, '2017-11-23 11:45:49', '2017-11-23 11:45:49', 'anunau', '5a16527d5faa8.PNG', '0', '087323226111', '5a16527d5fbb2.PNG', 'jalan kalimatan 23'),
(55, NULL, '2017-11-23 12:00:45', '2017-11-23 12:00:45', 'Ainun Najib', '5a1655fd4fc70.PNG', '0', '085732860740', '5a1655fd4fd78.PNG', 'jalan buntu no 24'),
(56, NULL, '2017-12-09 10:40:55', '2017-12-09 10:40:55', 'ngetes', '5a2b5b47cf0d8.png', '5a2b5b47cf655.png', '081334730008', '5a2b5b47cf458.png', 'jember'),
(57, NULL, '2017-12-09 16:02:06', '2017-12-09 16:02:06', 'fadel', '5a2ba68e8101c.jpg', '5a2ba68e813a3.jpg', 'hfuehifueh', '5a2ba68e811ba.jpg', 'Jalan bondoyudo'),
(58, NULL, '2017-12-10 22:12:23', '2017-12-10 22:12:23', 'Ijlik', '5a2d4ed7b4a34.jpg', '0', '085719810023', '5a2d4ed7b4d72.jpg', 'Jalan brantas 237 B Jember'),
(59, '2017-12-10 23:40:51', '2017-12-10 23:40:31', '2017-12-10 23:40:51', 'aa', 'aa', '0a', '087678564345', 'aa', 'aa'),
(60, NULL, '2017-12-11 09:48:32', '2017-12-11 09:48:32', 'asas', '5a2df200a96d8.PNG', '0', '08093287829', '5a2df200a9958.PNG', 'jhasas'),
(61, NULL, '2017-12-11 20:55:56', '2017-12-11 20:55:56', 'test', '5a2e8e6c64c4a.jpg', '5a2e8e6c6517c.jpg', '081334730008', '5a2e8e6c64f93.jpg', 'kalimantan');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `tags`, `color`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Divisi IT', '[]', '#000', NULL, '2017-09-17 19:07:26', '2017-09-19 10:27:23'),
(2, 'Cheaf Executive Officer', '[]', '#FFF', NULL, '2017-09-17 19:55:05', '2017-09-17 19:55:05'),
(3, 'Sub Rental', '[]', '#FFF', NULL, '2017-09-17 20:16:13', '2017-09-19 09:17:26'),
(4, 'Mobil Rental', '[]', '#FFF', '2017-09-17 20:17:35', '2017-09-17 20:17:28', '2017-09-17 20:17:35'),
(5, 'Sub Travel', '[]', '#FFF', NULL, '2017-09-17 20:18:05', '2017-09-19 09:17:38'),
(6, 'Surveyer', '[]', '#FFF', NULL, '2017-09-17 20:18:19', '2017-09-17 20:18:19'),
(7, 'Kepegawaian', '[]', '#FFF', '2017-09-19 12:55:40', '2017-09-17 20:19:02', '2017-09-19 12:55:40'),
(8, 'Keuangan', '[]', '#FFF', '2017-09-19 12:55:46', '2017-09-17 20:19:12', '2017-09-19 12:55:46'),
(9, 'Marketing', '[]', '#FFF', NULL, '2017-09-17 20:19:27', '2017-09-17 20:19:27'),
(10, 'Admin', '[]', '#FFF', NULL, '2017-09-17 20:20:57', '2017-09-17 20:20:57'),
(11, 'Sub Paket Wisata', '[]', '#FFF', NULL, '2017-09-17 20:24:41', '2017-09-19 09:18:39'),
(12, 'Customer', '[]', '#FFF', NULL, '2017-09-17 20:28:51', '2017-09-17 20:28:51');

-- --------------------------------------------------------

--
-- Table structure for table `destinasi_wisatas`
--

CREATE TABLE `destinasi_wisatas` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `descrip` text COLLATE utf8_unicode_ci NOT NULL,
  `images` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `designation` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Male',
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mobile2` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dept` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `about` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_birth` date NOT NULL DEFAULT '1990-01-01',
  `date_hire` date NOT NULL,
  `date_left` date NOT NULL DEFAULT '1990-01-01',
  `salary_cur` decimal(15,3) NOT NULL DEFAULT 0.000,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `designation`, `gender`, `mobile`, `mobile2`, `email`, `dept`, `city`, `address`, `about`, `date_birth`, `date_hire`, `date_left`, `salary_cur`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'mastergundrock@mail.com', 'Super Admin', 'Male', '8888888888', '', 'mastergundrock@mail.com', 1, 'Pune', 'Karve nagar, Pune 411030', 'About user / biography', '2017-09-18', '2017-09-18', '2017-09-18', '0.000', NULL, '2017-09-17 19:08:28', '2017-09-17 19:08:28'),
(2, 'Admin Bro', 'none', 'Male', '00100001010', '10010010100', 'administratong@gundrock.com', 10, '', '', '', '1990-01-01', '1970-01-01', '1990-01-01', '0.000', NULL, '2017-09-18 21:06:31', '2017-09-18 21:06:31'),
(3, 'Larry Hardika', 'Sub Rental', 'Male', '08123456789', '', 'trajekline@gmail.com', 3, '', '', '', '1990-01-01', '0000-00-00', '1990-01-01', '0.000', NULL, '2017-11-02 17:11:18', '2017-11-02 17:11:18'),
(4, 'Surbandi Joyo Diningrat', 'Sub Rental', 'Male', '081234631511', '', 'lorena@mail.com', 3, '', '', '', '1990-01-01', '0000-00-00', '1990-01-01', '0.000', NULL, '2017-11-02 17:17:32', '2017-11-02 17:17:32'),
(5, 'Bejos', 'none', 'Male', '085123456789', '0333678958', 'bejo@mail.com', 3, 'Jember', 'Jalan manggar', '', '1990-01-01', '1970-01-01', '1990-01-01', '0.000', NULL, '2017-11-07 03:58:35', '2017-11-07 03:58:35'),
(6, 'Bagus', 'none', 'Male', '085123456789', '0333678958', 'bagus@mail.com', 3, 'Jember', 'Jalan Langsep 3', '', '1990-01-01', '1970-01-01', '1990-01-01', '0.000', NULL, '2017-11-07 04:02:08', '2017-11-07 04:02:08'),
(12, 'Anggy Yolanda', 'Sub Surveyer', 'Male', '085704170077', '', 'anggyyolanda07@gmail.com', 6, '', '', '', '1990-01-01', '0000-00-00', '1990-01-01', '0.000', NULL, '2017-12-09 13:55:15', '2017-12-09 13:55:15'),
(13, 'Nasyihen Ainun najib', 'Sub Surveyer', 'Male', '085642134521', '', 'nasyihen@mail.com', 6, '', '', '', '1990-01-01', '0000-00-00', '1990-01-01', '0.000', NULL, '2017-12-09 14:13:22', '2017-12-09 14:13:22'),
(14, 'Andika Widiarso', 'Sub Surveyer', 'Male', '089765234123', '', 'andika@mail.com', 6, '', '', '', '1990-01-01', '0000-00-00', '1990-01-01', '0.000', NULL, '2017-12-09 14:14:31', '2017-12-09 14:14:31'),
(15, 'Dwi Andika Febrianto', 'Sub Surveyer', 'Male', '081234567123', '', 'dwi@mail.com', 6, '', '', '', '1990-01-01', '2001-11-30', '1990-01-01', '0.000', '2017-12-10 23:08:00', '2017-12-09 14:15:58', '2017-12-10 23:08:00'),
(16, 'Nafta Ryandika', 'Sub Surveyer', 'Male', '085423123567', '', 'nafta@mail.com', 6, '', '', '', '1990-01-01', '0000-00-00', '1990-01-01', '0.000', NULL, '2017-12-09 14:16:45', '2017-12-09 14:16:45'),
(17, 'Bimantara S.O', 'Sub Surveyer', 'Male', '082340222145', '', 'bima@mail.com', 6, '', '', '', '1990-01-01', '0000-00-00', '1990-01-01', '0.000', NULL, '2017-12-09 14:18:01', '2017-12-09 14:18:01'),
(18, 'Dimas Arifianto', 'Sub Surveyer', 'Male', '087543672145', '', 'dimas@mail.com', 6, '', '', '', '1990-01-01', '0000-00-00', '1990-01-01', '0.000', NULL, '2017-12-09 14:20:26', '2017-12-09 14:20:26'),
(19, 'Septian Nanda Perdana', 'Sub Surveyer', 'Male', '082340212567', '', 'septian@mail.com', 6, '', '', '', '1990-01-01', '0000-00-00', '1990-01-01', '0.000', NULL, '2017-12-09 14:22:22', '2017-12-09 14:22:22'),
(22, 'Bagus Ananda Permana', 'Sub Surveyer', 'Male', '089765431890', '', 'bagus65@mail.com', 6, '', '', '', '1990-01-01', '0000-00-00', '1990-01-01', '0.000', NULL, '2017-12-09 14:24:07', '2017-12-09 14:24:07'),
(23, 'Riski Fernanda', 'Sub Surveyer', 'Male', '082314451245', '', 'riski@mail.com', 6, '', '', '', '1990-01-01', '0000-00-00', '1990-01-01', '0.000', NULL, '2017-12-09 14:26:24', '2017-12-09 14:26:24'),
(24, 'Reinaldi Ananda Putra', 'Sub Surveyer', 'Male', '082345612789', '', 'reinaldi@mail.com', 6, '', '', '', '1990-01-01', '0000-00-00', '1990-01-01', '0.000', NULL, '2017-12-09 14:28:13', '2017-12-09 14:28:13'),
(25, 'Adam Kevin', 'Sub Surveyer', 'Male', '081234123765', '', 'adam@mail.com', 6, '', '', '', '1990-01-01', '0000-00-00', '1990-01-01', '0.000', NULL, '2017-12-09 14:29:53', '2017-12-09 14:29:53'),
(26, 'Rizki Rahmat Hidayat', 'Sub Surveyer', 'Male', '082134561278', '', 'hidayat@mail.com', 6, '', '', '', '1990-01-01', '0000-00-00', '1990-01-01', '0.000', NULL, '2017-12-09 14:31:49', '2017-12-09 14:31:49'),
(27, 'Untung Prawirodrjo', 'Sub Rental', 'Male', '082129185015', '', 'info@pandawa87.com', 3, '', '', '', '1990-01-01', '0000-00-00', '1990-01-01', '0.000', NULL, '2017-12-10 12:34:08', '2017-12-10 12:34:08'),
(28, 'Teguh Adiyatma', 'Sub Rental', 'Male', '085346765897', '', 'cs@rosalia-indah.co.id', 3, '', '', '', '1990-01-01', '0000-00-00', '1990-01-01', '0.000', NULL, '2017-12-10 12:40:51', '2017-12-10 12:40:51'),
(29, 'Ahmad Bastomi', 'Sub Surveyer', 'Male', '089767336727', '', 'bastomi@gmail.com', 6, '', '', '', '1990-01-01', '0000-00-00', '1990-01-01', '0.000', NULL, '2017-12-10 16:47:56', '2017-12-10 16:47:56'),
(30, '12', 'Sub Rental', 'Male', '123', '', 'sd@asd', 3, '', '', '', '1990-01-01', '0000-00-00', '1990-01-01', '0.000', NULL, '2017-12-10 22:45:37', '2017-12-10 22:45:37'),
(31, '1', 'Sub Rental', 'Male', '1', '', '1@a', 3, '', '', '', '1990-01-01', '0000-00-00', '1990-01-01', '0.000', NULL, '2017-12-10 23:06:46', '2017-12-10 23:06:46');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `descrip` text COLLATE utf8_unicode_ci NOT NULL,
  `images` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `la_configs`
--

CREATE TABLE `la_configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `section` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `la_configs`
--

INSERT INTO `la_configs` (`id`, `key`, `section`, `value`, `created_at`, `updated_at`) VALUES
(1, 'sitename', '', 'Gund Rock Travelling', '2017-09-17 19:07:29', '2017-11-14 03:37:41'),
(2, 'sitename_part1', '', 'Gund', '2017-09-17 19:07:29', '2017-11-14 03:37:41'),
(3, 'sitename_part2', '', 'Rock', '2017-09-17 19:07:29', '2017-11-14 03:37:41'),
(4, 'sitename_short', '', 'GR', '2017-09-17 19:07:29', '2017-11-14 03:37:41'),
(5, 'site_description', '', 'Your partner on the way', '2017-09-17 19:07:29', '2017-11-14 03:37:41'),
(6, 'sidebar_search', '', '0', '2017-09-17 19:07:29', '2017-11-14 03:37:41'),
(7, 'show_messages', '', '0', '2017-09-17 19:07:29', '2017-11-14 03:37:41'),
(8, 'show_notifications', '', '0', '2017-09-17 19:07:29', '2017-11-14 03:37:41'),
(9, 'show_tasks', '', '0', '2017-09-17 19:07:29', '2017-11-14 03:37:41'),
(10, 'show_rightsidebar', '', '0', '2017-09-17 19:07:30', '2017-11-14 03:37:41'),
(11, 'skin', '', 'skin-blue', '2017-09-17 19:07:30', '2017-11-14 03:37:41'),
(12, 'layout', '', 'sidebar-mini', '2017-09-17 19:07:30', '2017-11-14 03:37:41'),
(13, 'default_email', '', 'test@example.com', '2017-09-17 19:07:30', '2017-11-14 03:37:41');

-- --------------------------------------------------------

--
-- Table structure for table `la_menus`
--

CREATE TABLE `la_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'module',
  `parent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hierarchy` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `la_menus`
--

INSERT INTO `la_menus` (`id`, `name`, `url`, `icon`, `type`, `parent`, `hierarchy`, `created_at`, `updated_at`) VALUES
(9, 'Departments', 'departments', 'fa-tags', 'module', 0, 11, '2017-09-17 20:14:32', '2017-11-21 00:10:57'),
(10, 'Roles', 'roles', 'fa-user-plus', 'module', 0, 13, '2017-09-17 20:14:36', '2017-11-21 00:10:48'),
(11, 'Permissions', 'permissions', 'fa-magic', 'module', 0, 14, '2017-09-17 20:14:41', '2017-11-21 00:10:48'),
(12, 'Users', 'users', 'fa-group', 'module', 0, 15, '2017-09-17 20:14:46', '2017-11-21 00:10:48'),
(13, 'Employees', 'employees', 'fa-group', 'module', 0, 9, '2017-09-17 20:14:59', '2017-11-21 00:10:57'),
(14, 'Sub_Rentals', 'sub_rentals', 'fa fa-cube', 'module', 19, 1, '2017-09-19 10:36:35', '2017-09-19 12:23:30'),
(15, 'Sub_Rental_Mobils', 'sub_rental_mobils', 'fa fa-automobile', 'module', 19, 2, '2017-09-19 10:56:55', '2017-09-19 12:23:35'),
(16, 'Sub_Rental_Surveyers', 'sub_rental_surveyers', 'fa fa-user', 'module', 19, 3, '2017-09-19 11:20:47', '2017-09-19 12:23:40'),
(17, 'Customers', 'customers', 'fa fa-user-secret', 'module', 0, 1, '2017-09-19 11:57:35', '2017-11-21 00:10:57'),
(20, 'Surveyers', 'surveyers', 'fa fa-user', 'module', 0, 10, '2017-09-19 12:44:05', '2017-11-21 00:10:57'),
(24, 'Pemesanans', 'pemesanans', 'fa fa-cube', 'module', 19, 5, '2017-10-29 08:33:40', '2017-11-14 03:19:20'),
(25, 'Transaksi_Rentals', 'transaksi_rentals', 'fa fa-bitcoin', 'module', 19, 4, '2017-11-14 03:18:51', '2017-11-14 03:19:11'),
(26, 'Sub_Travels', 'sub_travels', 'fa fa-plane', 'module', 0, 7, '2017-11-14 03:29:45', '2017-11-21 00:10:57'),
(27, 'Sub_Travel_Mobils', 'sub_travel_mobils', 'fa fa-check-square-o', 'module', 0, 8, '2017-11-14 04:22:23', '2017-11-21 00:10:57'),
(29, 'Sub_Rentals', 'sub_rentals', 'fa-cube', 'module', 0, 2, '2017-11-21 00:10:13', '2017-11-21 00:10:57'),
(30, 'Sub_Rental_Mobils', 'sub_rental_mobils', 'fa-automobile', 'module', 0, 3, '2017-11-21 00:10:17', '2017-11-21 00:10:57'),
(31, 'Sub_Rental_Surveyers', 'sub_rental_surveyers', 'fa-user', 'module', 0, 4, '2017-11-21 00:10:19', '2017-11-21 00:10:57'),
(32, 'Transaksi_Rentals', 'transaksi_rentals', 'fa-bitcoin', 'module', 0, 5, '2017-11-21 00:10:27', '2017-11-21 00:10:57'),
(33, 'Pemesanans', 'pemesanans', 'fa-cube', 'module', 0, 6, '2017-11-21 00:10:31', '2017-11-21 00:10:57'),
(34, 'Destinasi_Wisatas', 'destinasi_wisatas', 'fa fa-diamond', 'module', 0, 0, '2017-11-22 16:07:56', '2017-11-22 16:07:56'),
(35, 'Hotels', 'hotels', 'fa fa-bed', 'module', 0, 0, '2017-11-22 16:16:11', '2017-11-22 16:16:11'),
(36, 'Restaurants', 'restaurants', 'fa fa-star', 'module', 0, 0, '2017-11-22 16:22:49', '2017-11-22 16:22:49'),
(37, 'Armadas', 'armadas', 'fa fa-car', 'module', 0, 0, '2017-11-22 16:43:04', '2017-11-22 16:43:04'),
(38, 'Paket_Wisatas', 'paket_wisatas', 'fa fa-asterisk', 'module', 0, 0, '2017-11-22 17:06:40', '2017-11-22 17:06:40'),
(39, 'Transaksi_Wisatas', 'transaksi_wisatas', 'fa fa-cube', 'module', 0, 0, '2017-11-22 17:54:17', '2017-11-22 17:54:17'),
(40, 'Transaksi_Travels', 'transaksi_travels', 'fa fa-bitcoin', 'module', 0, 0, '2017-11-22 20:41:20', '2017-11-22 20:41:20');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_05_26_050000_create_modules_table', 1),
('2014_05_26_055000_create_module_field_types_table', 1),
('2014_05_26_060000_create_module_fields_table', 1),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2014_12_01_000000_create_uploads_table', 1),
('2016_05_26_064006_create_departments_table', 1),
('2016_05_26_064007_create_employees_table', 1),
('2016_05_26_064446_create_roles_table', 1),
('2016_07_05_115343_create_role_user_table', 1),
('2016_07_06_140637_create_organizations_table', 1),
('2016_07_07_134058_create_backups_table', 1),
('2016_07_07_134058_create_menus_table', 1),
('2016_09_10_163337_create_permissions_table', 1),
('2016_09_10_163520_create_permission_role_table', 1),
('2016_09_22_105958_role_module_fields_table', 1),
('2016_09_22_110008_role_module_table', 1),
('2016_10_06_115413_create_la_configs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_db` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `view_col` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `controller` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fa_icon` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `is_gen` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `label`, `name_db`, `view_col`, `model`, `controller`, `fa_icon`, `is_gen`, `created_at`, `updated_at`) VALUES
(1, 'Users', 'Users', 'users', 'name', 'User', 'UsersController', 'fa-group', 1, '2017-09-17 19:07:03', '2017-09-18 21:42:30'),
(2, 'Uploads', 'Uploads', 'uploads', 'name', 'Upload', 'UploadsController', 'fa-files-o', 1, '2017-09-17 19:07:05', '2017-09-17 19:07:30'),
(3, 'Departments', 'Departments', 'departments', 'name', 'Department', 'DepartmentsController', 'fa-tags', 1, '2017-09-17 19:07:07', '2017-09-17 19:07:30'),
(4, 'Employees', 'Employees', 'employees', 'name', 'Employee', 'EmployeesController', 'fa-group', 1, '2017-09-17 19:07:08', '2017-09-17 19:07:30'),
(5, 'Roles', 'Roles', 'roles', 'name', 'Role', 'RolesController', 'fa-user-plus', 1, '2017-09-17 19:07:10', '2017-09-17 19:07:30'),
(8, 'Permissions', 'Permissions', 'permissions', 'name', 'Permission', 'PermissionsController', 'fa-magic', 1, '2017-09-17 19:07:18', '2017-09-17 19:07:30'),
(9, 'Sub_Rentals', 'Sub_Rentals', 'sub_rentals', 'rentalName', 'Sub_Rental', 'Sub_RentalsController', 'fa-cube', 1, '2017-09-19 10:29:27', '2017-09-19 10:36:35'),
(10, 'Sub_Rental_Mobils', 'Sub_Rental_Mobils', 'sub_rental_mobils', 'nameCars', 'Sub_Rental_Mobil', 'Sub_Rental_MobilsController', 'fa-automobile', 1, '2017-09-19 10:43:11', '2017-09-19 10:56:55'),
(11, 'Sub_Rental_Surveyers', 'Sub_Rental_Surveyers', 'sub_rental_surveyers', 'surveyerName', 'Sub_Rental_Surveyer', 'Sub_Rental_SurveyersController', 'fa-user', 1, '2017-09-19 11:06:37', '2017-09-19 11:20:48'),
(13, 'Customers', 'Customers', 'customers', 'customerName', 'Customer', 'CustomersController', 'fa-user-secret', 1, '2017-09-19 11:26:40', '2017-09-19 11:57:35'),
(15, 'Surveyers', 'Surveyers', 'surveyers', 'surveyerName', 'Surveyer', 'SurveyersController', 'fa-user', 1, '2017-09-19 12:39:06', '2017-09-19 12:44:05'),
(16, 'Pemesanans', 'Pemesanans', 'pemesanans', 'bookingCode', 'Pemesanan', 'PemesanansController', 'fa-cube', 1, '2017-10-29 08:23:27', '2017-10-29 08:33:40'),
(17, 'Transaksi_Rentals', 'Transaksi_Rentals', 'transaksi_rentals', 'kode', 'Transaksi_Rental', 'Transaksi_RentalsController', 'fa-bitcoin', 1, '2017-11-14 02:55:39', '2017-11-14 03:18:51'),
(18, 'Sub_Travels', 'Sub_Travels', 'sub_travels', 'companyName', 'Sub_Travel', 'Sub_TravelsController', 'fa-plane', 1, '2017-11-14 03:22:06', '2017-11-14 03:29:45'),
(19, 'Sub_Travel_Mobils', 'Sub_Travel_Mobils', 'sub_travel_mobils', 'merkMobil', 'Sub_Travel_Mobil', 'Sub_Travel_MobilsController', 'fa-check-square-o', 1, '2017-11-14 03:52:07', '2017-11-14 04:22:23'),
(20, 'Destinasi_Wisatas', 'Destinasi_Wisatas', 'destinasi_wisatas', 'name', 'Destinasi_Wisatum', 'Destinasi_WisatasController', 'fa-diamond', 1, '2017-11-22 16:03:34', '2017-11-22 16:07:56'),
(21, 'Hotels', 'Hotels', 'hotels', 'name', 'Hotel', 'HotelsController', 'fa-bed', 1, '2017-11-22 16:12:53', '2017-11-22 16:16:11'),
(22, 'Restaurants', 'Restaurants', 'restaurants', 'name', 'Restaurant', 'RestaurantsController', 'fa-star', 1, '2017-11-22 16:20:14', '2017-11-22 16:22:49'),
(23, 'Armadas', 'Armadas', 'armadas', 'name', 'Armada', 'ArmadasController', 'fa-car', 1, '2017-11-22 16:32:42', '2017-11-22 16:43:04'),
(24, 'Paket_Wisatas', 'Paket_Wisatas', 'paket_wisatas', 'name', 'Paket_Wisatum', 'Paket_WisatasController', 'fa-asterisk', 1, '2017-11-22 16:45:19', '2017-11-22 17:06:40'),
(25, 'Transaksi_Wisatas', 'Transaksi_Wisatas', 'transaksi_wisatas', 'bookingCode', 'Transaksi_Wisatum', 'Transaksi_WisatasController', 'fa-cube', 1, '2017-11-22 17:25:43', '2017-11-22 17:54:17'),
(26, 'Transaksi_Travels', 'Transaksi_Travels', 'transaksi_travels', 'bookingCode', 'Transaksi_Travel', 'Transaksi_TravelsController', 'fa-bitcoin', 1, '2017-11-22 20:31:40', '2017-11-22 20:41:20');

-- --------------------------------------------------------

--
-- Table structure for table `module_fields`
--

CREATE TABLE `module_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `colname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `module` int(10) UNSIGNED NOT NULL,
  `field_type` int(10) UNSIGNED NOT NULL,
  `unique` tinyint(1) NOT NULL DEFAULT 0,
  `defaultvalue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `minlength` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `maxlength` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `popup_vals` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `module_fields`
--

INSERT INTO `module_fields` (`id`, `colname`, `label`, `module`, `field_type`, `unique`, `defaultvalue`, `minlength`, `maxlength`, `required`, `popup_vals`, `sort`, `created_at`, `updated_at`) VALUES
(1, 'name', 'Name', 1, 16, 0, '', 5, 250, 1, '', 0, '2017-09-17 19:07:03', '2017-09-17 19:07:03'),
(2, 'context_id', 'Context', 1, 13, 0, '0', 0, 0, 0, '', 0, '2017-09-17 19:07:03', '2017-09-17 19:07:03'),
(3, 'email', 'Email', 1, 8, 1, '', 0, 250, 0, '', 0, '2017-09-17 19:07:04', '2017-09-17 19:07:04'),
(4, 'password', 'Password', 1, 17, 0, '', 6, 250, 1, '', 0, '2017-09-17 19:07:04', '2017-09-17 19:07:04'),
(5, 'type', 'User Type', 1, 7, 0, 'Employee', 0, 0, 0, '["Employee","Sub Rental","Surveyer","Sub Travel","Sub Paket Wisata"]', 0, '2017-09-17 19:07:04', '2017-11-02 17:29:53'),
(6, 'name', 'Name', 2, 16, 0, '', 5, 250, 1, '', 0, '2017-09-17 19:07:05', '2017-09-17 19:07:05'),
(7, 'path', 'Path', 2, 19, 0, '', 0, 250, 0, '', 0, '2017-09-17 19:07:05', '2017-09-17 19:07:05'),
(8, 'extension', 'Extension', 2, 19, 0, '', 0, 20, 0, '', 0, '2017-09-17 19:07:05', '2017-09-17 19:07:05'),
(9, 'caption', 'Caption', 2, 19, 0, '', 0, 250, 0, '', 0, '2017-09-17 19:07:05', '2017-09-17 19:07:05'),
(10, 'user_id', 'Owner', 2, 7, 0, '1', 0, 0, 0, '@users', 0, '2017-09-17 19:07:06', '2017-09-17 19:07:06'),
(11, 'hash', 'Hash', 2, 19, 0, '', 0, 250, 0, '', 0, '2017-09-17 19:07:06', '2017-09-17 19:07:06'),
(12, 'public', 'Is Public', 2, 2, 0, '0', 0, 0, 0, '', 0, '2017-09-17 19:07:06', '2017-09-17 19:07:06'),
(13, 'name', 'Name', 3, 16, 1, '', 1, 250, 1, '', 0, '2017-09-17 19:07:07', '2017-09-17 19:07:07'),
(14, 'tags', 'Tags', 3, 20, 0, '[]', 0, 0, 0, '', 0, '2017-09-17 19:07:07', '2017-09-17 19:07:07'),
(15, 'color', 'Color', 3, 19, 0, '', 0, 50, 1, '', 0, '2017-09-17 19:07:07', '2017-09-17 19:07:07'),
(16, 'name', 'Name', 4, 16, 0, '', 5, 250, 1, '', 0, '2017-09-17 19:07:08', '2017-09-17 19:07:08'),
(17, 'designation', 'Designation', 4, 19, 0, '', 0, 50, 1, '', 0, '2017-09-17 19:07:08', '2017-09-17 19:07:08'),
(18, 'gender', 'Gender', 4, 18, 0, 'Male', 0, 0, 1, '["Male","Female"]', 0, '2017-09-17 19:07:08', '2017-09-17 19:07:08'),
(19, 'mobile', 'Mobile', 4, 14, 0, '', 10, 20, 1, '', 0, '2017-09-17 19:07:08', '2017-09-17 19:07:08'),
(20, 'mobile2', 'Alternative Mobile', 4, 14, 0, '', 10, 20, 0, '', 0, '2017-09-17 19:07:08', '2017-09-17 19:07:08'),
(21, 'email', 'Email', 4, 8, 1, '', 5, 250, 1, '', 0, '2017-09-17 19:07:08', '2017-09-17 19:07:08'),
(22, 'dept', 'Department', 4, 7, 0, '0', 0, 0, 1, '@departments', 0, '2017-09-17 19:07:08', '2017-09-17 19:07:08'),
(23, 'city', 'City', 4, 19, 0, '', 0, 50, 0, '', 0, '2017-09-17 19:07:08', '2017-09-17 19:07:08'),
(24, 'address', 'Address', 4, 1, 0, '', 0, 1000, 0, '', 0, '2017-09-17 19:07:08', '2017-09-17 19:07:08'),
(25, 'about', 'About', 4, 19, 0, '', 0, 0, 0, '', 0, '2017-09-17 19:07:08', '2017-09-17 19:07:08'),
(26, 'date_birth', 'Date of Birth', 4, 4, 0, '1990-01-01', 0, 0, 0, '', 0, '2017-09-17 19:07:09', '2017-09-17 19:07:09'),
(27, 'date_hire', 'Hiring Date', 4, 4, 0, 'date(\'Y-m-d\')', 0, 0, 0, '', 0, '2017-09-17 19:07:09', '2017-09-17 19:07:09'),
(28, 'date_left', 'Resignation Date', 4, 4, 0, '1990-01-01', 0, 0, 0, '', 0, '2017-09-17 19:07:09', '2017-09-17 19:07:09'),
(29, 'salary_cur', 'Current Salary', 4, 6, 0, '0.0', 0, 2, 0, '', 0, '2017-09-17 19:07:09', '2017-09-17 19:07:09'),
(30, 'name', 'Name', 5, 16, 1, '', 1, 250, 1, '', 0, '2017-09-17 19:07:10', '2017-09-17 19:07:10'),
(31, 'display_name', 'Display Name', 5, 19, 0, '', 0, 250, 1, '', 0, '2017-09-17 19:07:10', '2017-09-17 19:07:10'),
(32, 'description', 'Description', 5, 21, 0, '', 0, 1000, 0, '', 0, '2017-09-17 19:07:10', '2017-09-17 19:07:10'),
(33, 'parent', 'Parent Role', 5, 7, 0, '1', 0, 0, 0, '@roles', 0, '2017-09-17 19:07:10', '2017-09-17 19:07:10'),
(34, 'dept', 'Department', 5, 7, 0, '1', 0, 0, 0, '@departments', 0, '2017-09-17 19:07:10', '2017-09-17 19:07:10'),
(49, 'name', 'Name', 8, 16, 1, '', 1, 250, 1, '', 0, '2017-09-17 19:07:18', '2017-09-17 19:07:18'),
(50, 'display_name', 'Display Name', 8, 19, 0, '', 0, 250, 1, '', 0, '2017-09-17 19:07:18', '2017-09-17 19:07:18'),
(51, 'description', 'Description', 8, 21, 0, '', 0, 1000, 0, '', 0, '2017-09-17 19:07:18', '2017-09-17 19:07:18'),
(52, 'rentalName', 'Nama Perusahaan', 9, 16, 0, '', 0, 250, 1, '', 1, '2017-09-19 10:30:05', '2017-09-19 10:30:05'),
(53, 'rentalAddress', 'Alamat', 9, 1, 0, '', 0, 250, 1, '', 2, '2017-09-19 10:30:36', '2017-09-19 10:30:36'),
(54, 'phoneNumber', 'Nomor Telepon', 9, 14, 0, '', 0, 11, 1, '', 6, '2017-09-19 10:32:37', '2017-09-19 10:32:37'),
(55, 'mobileNumber', 'Nomor Handphone', 9, 14, 0, '', 0, 13, 1, '', 7, '2017-09-19 10:33:20', '2017-09-19 10:33:20'),
(56, 'directureName', 'Direktur Pemasaran', 9, 16, 0, '', 0, 250, 1, '', 8, '2017-09-19 10:35:06', '2017-09-19 10:35:34'),
(57, 'rentalEmail', 'Email', 9, 8, 0, '', 0, 250, 1, '', 9, '2017-09-19 10:36:14', '2017-09-19 10:36:14'),
(58, 'kecamatan', 'Kecamatan', 9, 19, 0, '', 0, 250, 1, '', 4, '2017-09-19 10:39:15', '2017-09-19 10:39:15'),
(59, 'city', 'Kota', 9, 7, 0, '', 0, 250, 1, '["Jember","Malang","Surabaya"]', 3, '2017-09-19 10:39:51', '2017-10-29 08:06:14'),
(60, 'postalCode', 'Kode Pos', 9, 13, 0, '', 5, 5, 1, '', 5, '2017-09-19 10:40:22', '2017-09-19 10:40:22'),
(61, 'nameCars', 'Merk Mobil', 10, 16, 0, '', 0, 250, 1, '', 0, '2017-09-19 10:43:51', '2017-10-03 04:44:22'),
(62, 'years', 'Tahun Kendaraan', 10, 13, 0, '', 4, 4, 1, '', 0, '2017-09-19 10:44:39', '2017-09-19 10:44:39'),
(63, 'tnkb', 'Nomor Polisi', 10, 19, 0, '', 3, 9, 1, '', 0, '2017-09-19 10:46:01', '2017-09-19 10:46:01'),
(64, 'carsType', 'Type Kendaraan', 10, 19, 0, '', 0, 10, 1, '', 0, '2017-09-19 10:48:17', '2017-09-19 10:48:17'),
(65, 'carsClass', 'Kelas Kendaraan', 10, 7, 0, '', 0, 0, 0, '["MPV & SUV","City cars & Sports","Klasik","Bus"]', 0, '2017-09-19 10:51:54', '2017-09-19 10:51:54'),
(66, 'owner', 'Perusahaan Pemilik', 10, 7, 0, '', 0, 0, 0, '@sub_rentals', 0, '2017-09-19 10:54:48', '2017-09-19 10:54:48'),
(67, 'image', 'Gambar Mobil', 10, 12, 0, '', 0, 250, 1, '', 0, '2017-09-19 10:56:38', '2017-10-25 23:23:18'),
(68, 'description', 'Kondisi Mobil', 10, 21, 0, '', 0, 0, 1, '', 0, '2017-09-19 10:58:01', '2017-09-19 10:58:01'),
(69, 'surveyerName', 'Nama Surveyer', 11, 16, 0, '', 0, 250, 1, '', 0, '2017-09-19 11:07:52', '2017-09-19 11:07:52'),
(70, 'surveyerAddress', 'Alamat', 11, 1, 0, '', 0, 250, 1, '', 0, '2017-09-19 11:09:00', '2017-09-19 11:09:00'),
(71, 'subRental', 'Sub Rental', 11, 7, 0, '', 0, 0, 1, '@sub_rentals', 0, '2017-09-19 11:10:16', '2017-09-19 11:10:16'),
(72, 'status', 'Status', 10, 7, 0, '', 0, 0, 0, '["Tersedia","Jalan"]', 0, '2017-09-19 11:16:14', '2017-09-19 11:16:14'),
(73, 'phoneNumber', 'Nomor Handphone', 11, 14, 0, '', 0, 13, 1, '', 0, '2017-09-19 11:18:11', '2017-09-19 11:18:11'),
(74, 'email', 'Email', 11, 8, 0, '', 0, 256, 1, '', 0, '2017-09-19 11:18:28', '2017-12-09 13:37:34'),
(75, 'status', 'Status', 11, 7, 0, '', 0, 0, 1, '["tersedia","bekerja"]', 0, '2017-09-19 11:20:23', '2017-09-19 11:20:34'),
(77, 'customerName', 'Nama Lengkap', 13, 16, 0, '', 0, 250, 1, '', 0, '2017-09-19 11:28:02', '2017-09-19 11:28:02'),
(78, 'ktpPicture', 'Foto E-KTP', 13, 19, 0, '', 0, 250, 1, '', 0, '2017-09-19 11:52:50', '2017-11-20 12:40:25'),
(79, 'optionalIdPictures', 'Foto KTM/KTA', 13, 19, 0, '0', 0, 250, 0, '', 0, '2017-09-19 11:53:40', '2017-11-20 12:40:54'),
(80, 'phoneNumber', 'Nomor Handphone', 13, 14, 0, '', 10, 13, 1, '', 0, '2017-09-19 11:54:15', '2017-09-19 11:54:15'),
(81, 'additionalPicture', 'Foto STNK Motor', 13, 19, 0, '', 0, 250, 1, '', 0, '2017-09-19 11:55:13', '2017-11-20 12:41:10'),
(82, 'address', 'Alamat Kos/Kontrak', 13, 1, 0, '', 0, 256, 1, '', 0, '2017-09-19 11:55:58', '2017-09-19 11:56:13'),
(89, 'capacity', 'Kapasitas Kursi', 10, 13, 0, '', 1, 80, 1, '', 0, '2017-09-19 12:28:42', '2017-09-19 12:28:42'),
(90, 'price', 'Tarif Sewa', 10, 3, 0, '', 0, 250, 1, '', 0, '2017-09-19 12:29:51', '2017-11-23 10:53:00'),
(93, 'surveyerName', 'Nama Surveyer', 15, 1, 0, '', 0, 250, 1, '', 0, '2017-09-19 12:40:05', '2017-09-19 12:40:05'),
(94, 'address', 'Alamat', 15, 1, 0, '', 0, 250, 1, '', 0, '2017-09-19 12:41:59', '2017-09-19 12:41:59'),
(95, 'phoneNumber', 'Nomor Handphone', 15, 1, 0, '', 10, 13, 1, '', 0, '2017-09-19 12:42:27', '2017-09-19 12:42:27'),
(96, 'email', 'Email', 15, 8, 0, '', 0, 256, 1, '', 0, '2017-09-19 12:42:42', '2017-09-19 12:42:55'),
(97, 'status', 'Status', 15, 7, 0, '', 0, 0, 0, '["tersedia","bekerja"]', 0, '2017-09-19 12:43:55', '2017-09-19 12:43:55'),
(109, 'bookingCode', 'Kode Booking', 16, 19, 0, '', 0, 256, 1, '', 1, '2017-10-29 08:23:57', '2017-10-29 08:23:57'),
(110, 'cars', 'Mobil', 16, 7, 0, '', 0, 0, 1, '@sub_rental_mobils', 3, '2017-10-29 08:24:33', '2017-10-29 08:25:35'),
(111, 'subRental', 'Sub Rental', 16, 7, 0, '', 0, 0, 1, '@sub_rentals', 4, '2017-10-29 08:25:12', '2017-10-29 08:25:41'),
(112, 'customerName', 'Nama Pemesan', 16, 7, 0, '', 0, 0, 1, '@customers', 5, '2017-10-29 08:26:23', '2017-10-29 08:26:23'),
(113, 'orderTime', 'Waktu Pesan', 16, 5, 0, '', 0, 0, 0, '', 6, '2017-10-29 08:27:22', '2017-10-29 08:27:31'),
(114, 'orderFinish', 'Waktu Selesai', 16, 5, 0, '', 0, 0, 0, '', 7, '2017-10-29 08:27:55', '2017-10-29 08:27:55'),
(115, 'surveyerGundRock', 'Surveyer GundRock', 16, 7, 0, '', 0, 0, 0, '@surveyers', 8, '2017-10-29 08:28:50', '2017-10-29 08:28:50'),
(116, 'surveyerSubRental', 'Surveyer Sub Rental', 16, 7, 0, '', 0, 0, 0, '@sub_rental_surveyers', 9, '2017-10-29 08:29:22', '2017-10-29 08:29:22'),
(117, 'status1', 'Status1', 16, 7, 0, 'pending', 0, 0, 0, '["pending","diterima","ditolak"]', 10, '2017-10-29 08:31:04', '2017-10-29 08:32:44'),
(118, 'status2', 'status2', 16, 7, 0, 'pending', 0, 0, 0, '["pending","diterima","ditolak"]', 11, '2017-10-29 08:31:38', '2017-10-29 08:33:11'),
(119, 'statusBayar', 'Status Bayar', 16, 7, 0, 'belum', 0, 0, 0, '["sudah","belum"]', 12, '2017-10-29 08:32:25', '2017-11-22 20:36:49'),
(120, 'kode', 'Kode Transaksi', 17, 19, 0, '', 3, 3, 1, '', 0, '2017-11-14 02:56:58', '2017-11-14 02:56:58'),
(121, 'bookingCode', 'Kode Booking', 17, 7, 0, '', 0, 0, 1, '@pemesanans', 0, '2017-11-14 02:57:43', '2017-11-14 02:57:43'),
(122, 'invoice', 'Tagihan', 17, 13, 0, '', 0, 11, 1, '', 0, '2017-11-14 02:59:26', '2017-11-14 02:59:26'),
(123, 'payment', 'Metode Pembayaran', 17, 7, 0, 'transfer', 0, 0, 0, '["transfer","cash","point"]', 0, '2017-11-14 03:01:30', '2017-11-14 03:03:01'),
(125, 'mobilout', 'Mobil Keluar', 17, 7, 0, 'tidak', 0, 0, 0, '["ya","tidak"]', 0, '2017-11-14 03:05:00', '2017-11-14 03:05:21'),
(126, 'tglout', 'Tgl keluar', 17, 5, 0, '', 0, 0, 0, '', 0, '2017-11-14 03:08:04', '2017-11-14 03:08:04'),
(127, 'mobilin', 'Mobil kembali', 17, 7, 0, 'belum', 0, 0, 0, '["sudah","belum"]', 0, '2017-11-14 03:09:06', '2017-11-14 03:09:06'),
(128, 'tglin', 'Tgl Masuk', 17, 5, 0, '', 0, 0, 0, '', 0, '2017-11-14 03:09:32', '2017-11-14 03:09:32'),
(129, 'punishment', 'denda', 17, 13, 0, '0', 0, 11, 0, '', 0, '2017-11-14 03:11:14', '2017-11-20 20:49:08'),
(130, 'status', 'status', 17, 7, 0, 'pending', 0, 0, 0, '["pending","proses","mobil dikirim","mobil dipakai","mobil kembali","selesai"]', 0, '2017-11-14 03:17:27', '2017-11-20 20:48:46'),
(131, 'companyName', 'Nama Perusahaan', 18, 16, 0, '', 0, 256, 1, '', 0, '2017-11-14 03:23:34', '2017-11-14 03:24:45'),
(132, 'address', 'Alamat', 18, 1, 0, '', 0, 256, 1, '', 0, '2017-11-14 03:24:17', '2017-11-14 03:29:37'),
(133, 'city', 'Kota', 18, 7, 0, '', 0, 0, 1, '["Jember","Malang","Surabaya"]', 0, '2017-11-14 03:25:32', '2017-11-14 03:29:29'),
(134, 'kecamatan', 'Kecamatan', 18, 19, 0, '', 0, 256, 1, '', 0, '2017-11-14 03:26:08', '2017-11-14 03:29:21'),
(135, 'postalCode', 'Kode Pos', 18, 13, 0, '', 5, 5, 1, '', 0, '2017-11-14 03:26:44', '2017-11-14 03:29:12'),
(136, 'phoneNumber', 'Nomor Telepon', 18, 14, 0, '', 0, 20, 0, '', 0, '2017-11-14 03:27:24', '2017-11-14 03:27:24'),
(137, 'mobileNumber', 'Nomor Handphone', 18, 14, 0, '', 0, 20, 1, '', 0, '2017-11-14 03:27:50', '2017-11-14 03:29:03'),
(138, 'directureName', 'Direktur Pemasaran', 18, 16, 0, '', 0, 256, 1, '', 0, '2017-11-14 03:28:24', '2017-11-14 03:28:24'),
(139, 'email', 'Email', 18, 8, 0, '', 0, 256, 1, '', 0, '2017-11-14 03:28:47', '2017-11-14 03:28:56'),
(140, 'merkMobil', 'Merk Mobil', 19, 16, 0, '', 0, 256, 1, '', 1, '2017-11-14 03:53:29', '2017-11-14 03:53:29'),
(141, 'destination', 'Kota Tujuan', 19, 7, 0, '', 0, 0, 0, '["Malang","Surabaya","Denpasar","Jember"]', 3, '2017-11-14 03:55:58', '2017-11-14 04:11:33'),
(142, 'capacity', 'Kapasitas kursi', 19, 13, 0, '', 0, 11, 1, '', 4, '2017-11-14 04:05:38', '2017-11-14 04:05:38'),
(143, 'jamBerangkat', 'Jam Berangkat', 19, 5, 0, '', 0, 0, 0, '', 6, '2017-11-14 04:08:38', '2017-11-14 04:17:38'),
(144, 'asal', 'Kota Asal', 19, 7, 0, '', 0, 0, 0, '["Jember","Malang","Surabaya","Denpasar"]', 2, '2017-11-14 04:11:22', '2017-11-14 04:11:22'),
(145, 'freeFood', 'Makan Gratis', 19, 7, 0, '', 0, 0, 0, '["ya","tidak"]', 7, '2017-11-14 04:18:29', '2017-11-14 04:18:29'),
(146, 'garage', 'Maksimal Bagasi (kg)', 19, 13, 0, '', 0, 11, 1, '', 8, '2017-11-14 04:19:26', '2017-11-14 04:19:26'),
(147, 'harga', 'Harga', 19, 3, 0, '', 0, 11, 1, '', 9, '2017-11-14 04:20:10', '2017-11-14 04:20:10'),
(148, 'owner', 'Perusahaan Pemilik', 19, 7, 0, '', 0, 0, 0, '@sub_travels', 10, '2017-11-14 04:22:00', '2017-11-14 04:22:00'),
(149, 'city', 'Lokasi', 10, 7, 0, '', 0, 0, 0, '["Jember","Malang","Surabaya"]', 0, '2017-11-19 18:23:07', '2017-11-19 18:23:07'),
(150, 'confirm', 'Konfirmasi Bayar', 16, 7, 0, 'no', 0, 0, 0, '["yes","no"]', 2, '2017-11-20 21:26:19', '2017-11-20 21:30:06'),
(151, 'name', 'Nama Wisata', 20, 16, 0, '', 0, 256, 1, '', 0, '2017-11-22 16:04:13', '2017-11-22 16:04:13'),
(152, 'city', 'Lokasi', 20, 1, 0, '', 0, 256, 0, '', 0, '2017-11-22 16:04:49', '2017-11-22 16:04:49'),
(153, 'descrip', 'Deskripsi Wisata', 20, 21, 0, '', 0, 0, 0, '', 0, '2017-11-22 16:05:27', '2017-11-22 16:05:27'),
(154, 'images', 'Foto', 20, 12, 0, '', 0, 0, 0, '', 0, '2017-11-22 16:06:33', '2017-11-22 16:06:33'),
(155, 'name', 'Nama Hotel', 21, 16, 0, '', 0, 256, 1, '', 0, '2017-11-22 16:13:50', '2017-11-22 16:15:43'),
(156, 'city', 'Lokasi', 21, 1, 0, '', 0, 256, 0, '', 0, '2017-11-22 16:14:24', '2017-11-22 16:14:24'),
(157, 'descrip', 'Keterangan', 21, 21, 0, '', 0, 0, 0, '', 0, '2017-11-22 16:15:37', '2017-11-22 16:15:37'),
(158, 'images', 'Foto', 21, 12, 0, '', 0, 0, 0, '', 0, '2017-11-22 16:16:02', '2017-11-22 16:16:02'),
(159, 'name', 'Nama Restoran', 22, 16, 0, '', 0, 256, 1, '', 0, '2017-11-22 16:21:17', '2017-11-22 16:21:17'),
(160, 'city', 'Lokasi', 22, 1, 0, '', 0, 256, 0, '', 0, '2017-11-22 16:21:37', '2017-11-22 16:21:37'),
(161, 'descrip', 'Keterangan', 22, 21, 0, '', 0, 0, 0, '', 0, '2017-11-22 16:22:38', '2017-11-22 16:22:38'),
(162, 'name', 'Nama Mobil', 23, 16, 0, '', 0, 256, 1, '', 0, '2017-11-22 16:35:57', '2017-11-22 16:35:57'),
(163, 'penumpang', 'Kapasitas Penumpang', 23, 13, 0, '', 0, 11, 1, '', 0, '2017-11-22 16:40:39', '2017-11-22 16:40:39'),
(164, 'images', 'Foto', 23, 12, 0, '', 0, 0, 0, '', 0, '2017-11-22 16:41:03', '2017-11-22 16:41:03'),
(165, 'name', 'Nama Paket', 24, 16, 0, '', 0, 256, 1, '', 0, '2017-11-22 16:45:44', '2017-11-22 16:45:44'),
(166, 'destinasi', 'Destinasi', 24, 15, 0, '', 0, 0, 0, '@destinasi_wisatas', 0, '2017-11-22 16:47:44', '2017-11-22 16:47:44'),
(167, 'hotel', 'Hotel', 24, 15, 0, '', 0, 0, 0, '@hotels', 0, '2017-11-22 16:48:37', '2017-11-22 16:48:37'),
(168, 'restaurant', 'Restaurant', 24, 15, 0, '', 0, 0, 0, '@restaurants', 0, '2017-11-22 16:49:16', '2017-11-22 16:49:16'),
(169, 'armada', 'Armada', 24, 15, 0, '', 0, 0, 0, '@armadas', 0, '2017-11-22 16:50:23', '2017-11-22 16:50:23'),
(170, 'jenis', 'Jenis', 24, 7, 0, '', 0, 0, 0, '["berdua","keluarga","group","liburan","pribadi"]', 0, '2017-11-22 17:01:56', '2017-11-22 19:23:03'),
(171, 'price', 'Harga', 24, 13, 0, '', 0, 11, 0, '', 0, '2017-11-22 17:02:28', '2017-11-22 17:04:28'),
(172, 'capacity', 'Jumlah Orang', 24, 13, 0, '', 0, 11, 0, '', 0, '2017-11-22 17:04:16', '2017-11-22 17:04:16'),
(173, 'durasi', 'Durasi', 24, 13, 0, '', 0, 11, 0, '', 0, '2017-11-22 17:05:14', '2017-11-22 17:05:14'),
(174, 'descrip', 'Keterangan', 24, 21, 0, '', 0, 0, 0, '', 0, '2017-11-22 17:06:27', '2017-11-22 17:06:27'),
(175, 'bookingCode', 'Kode Booking', 25, 19, 0, '', 8, 8, 0, '', 0, '2017-11-22 17:42:17', '2017-11-22 17:46:37'),
(176, 'kode', 'Kode Unik', 25, 13, 0, '', 4, 4, 0, '', 0, '2017-11-22 17:45:29', '2017-11-22 17:45:29'),
(177, 'confirm', 'Konfirmasi Bayar', 25, 7, 0, '', 0, 0, 0, '["yes","no"]', 0, '2017-11-22 17:47:06', '2017-11-22 17:47:06'),
(178, 'status', 'Status Bayar', 25, 7, 0, '', 0, 0, 0, '["belum","sudah"]', 0, '2017-11-22 17:51:41', '2017-11-22 17:51:41'),
(179, 'wisata', 'Paket Wisata', 25, 7, 0, '', 0, 0, 0, '@paket_wisatas', 0, '2017-11-22 17:52:16', '2017-11-22 17:52:16'),
(180, 'customerName', 'Pemesan', 25, 7, 0, '', 0, 0, 0, '@customers', 0, '2017-11-22 17:53:39', '2017-11-22 17:53:39'),
(181, 'date', 'Tanggal Mulai', 25, 4, 0, '', 0, 0, 0, '', 0, '2017-11-22 17:54:09', '2017-11-22 17:54:09'),
(182, 'jumlahOrang', 'Jumlah Orang', 24, 13, 0, '', 0, 11, 0, '', 0, '2017-11-22 19:28:49', '2017-11-22 19:28:49'),
(183, 'passengger', 'Jumlah Penumpang', 19, 13, 0, '', 0, 11, 0, '', 5, '2017-11-22 20:28:59', '2017-11-22 20:28:59'),
(184, 'bookingCode', 'Kode Booking', 26, 19, 0, '', 7, 7, 1, '', 0, '2017-11-22 20:33:24', '2017-11-22 20:33:24'),
(185, 'kode', 'Kode Unik', 26, 19, 0, '', 3, 3, 0, '', 0, '2017-11-22 20:34:08', '2017-11-22 20:34:08'),
(186, 'confirm', 'Konfirmasi Bayar', 26, 7, 0, '', 0, 0, 0, '["yes","no"]', 0, '2017-11-22 20:35:01', '2017-11-22 20:35:01'),
(187, 'status', 'Status Bayar', 26, 7, 0, '', 0, 0, 0, '["belum","sudah"]', 0, '2017-11-22 20:35:36', '2017-11-22 20:35:36'),
(188, 'travel', 'Nama Mobil Travel', 26, 7, 0, '', 0, 0, 0, '@sub_travel_mobils', 0, '2017-11-22 20:38:07', '2017-11-22 20:38:07'),
(189, 'customerName', 'Pemesan', 26, 7, 0, '', 0, 0, 0, '@customers', 0, '2017-11-22 20:40:10', '2017-11-22 20:40:10'),
(190, 'date', 'Tanggal Berangkat', 26, 4, 0, '', 0, 0, 0, '', 0, '2017-11-22 20:41:08', '2017-11-22 20:41:08');

-- --------------------------------------------------------

--
-- Table structure for table `module_field_types`
--

CREATE TABLE `module_field_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `module_field_types`
--

INSERT INTO `module_field_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Address', '2017-09-17 19:06:59', '2017-09-17 19:06:59'),
(2, 'Checkbox', '2017-09-17 19:06:59', '2017-09-17 19:06:59'),
(3, 'Currency', '2017-09-17 19:06:59', '2017-09-17 19:06:59'),
(4, 'Date', '2017-09-17 19:06:59', '2017-09-17 19:06:59'),
(5, 'Datetime', '2017-09-17 19:06:59', '2017-09-17 19:06:59'),
(6, 'Decimal', '2017-09-17 19:06:59', '2017-09-17 19:06:59'),
(7, 'Dropdown', '2017-09-17 19:06:59', '2017-09-17 19:06:59'),
(8, 'Email', '2017-09-17 19:06:59', '2017-09-17 19:06:59'),
(9, 'File', '2017-09-17 19:06:59', '2017-09-17 19:06:59'),
(10, 'Float', '2017-09-17 19:07:00', '2017-09-17 19:07:00'),
(11, 'HTML', '2017-09-17 19:07:00', '2017-09-17 19:07:00'),
(12, 'Image', '2017-09-17 19:07:00', '2017-09-17 19:07:00'),
(13, 'Integer', '2017-09-17 19:07:00', '2017-09-17 19:07:00'),
(14, 'Mobile', '2017-09-17 19:07:00', '2017-09-17 19:07:00'),
(15, 'Multiselect', '2017-09-17 19:07:00', '2017-09-17 19:07:00'),
(16, 'Name', '2017-09-17 19:07:00', '2017-09-17 19:07:00'),
(17, 'Password', '2017-09-17 19:07:00', '2017-09-17 19:07:00'),
(18, 'Radio', '2017-09-17 19:07:00', '2017-09-17 19:07:00'),
(19, 'String', '2017-09-17 19:07:00', '2017-09-17 19:07:00'),
(20, 'Taginput', '2017-09-17 19:07:00', '2017-09-17 19:07:00'),
(21, 'Textarea', '2017-09-17 19:07:00', '2017-09-17 19:07:00'),
(22, 'TextField', '2017-09-17 19:07:00', '2017-09-17 19:07:00'),
(23, 'URL', '2017-09-17 19:07:00', '2017-09-17 19:07:00'),
(24, 'Files', '2017-09-17 19:07:00', '2017-09-17 19:07:00');

-- --------------------------------------------------------

--
-- Table structure for table `paket_wisatas`
--

CREATE TABLE `paket_wisatas` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `destinasi` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `hotel` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `restaurant` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `armada` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `jenis` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `capacity` int(10) UNSIGNED NOT NULL,
  `durasi` int(10) UNSIGNED NOT NULL,
  `descrip` text COLLATE utf8_unicode_ci NOT NULL,
  `jumlahOrang` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pemesanans`
--

CREATE TABLE `pemesanans` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bookingCode` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cars` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `subRental` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `customerName` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `orderTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `orderFinish` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `surveyerGundRock` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `surveyerSubRental` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `status1` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `status2` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `statusBayar` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'belum',
  `confirm` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pemesanans`
--

INSERT INTO `pemesanans` (`id`, `deleted_at`, `created_at`, `updated_at`, `bookingCode`, `cars`, `subRental`, `customerName`, `orderTime`, `orderFinish`, `surveyerGundRock`, `surveyerSubRental`, `status1`, `status2`, `statusBayar`, `confirm`) VALUES
(32, NULL, '2017-11-23 11:35:41', '2017-12-10 17:13:51', 'eiV6FR', 1, 1, 53, '2017-11-24 14:30:00', '2017-11-26 14:30:00', 1, 7, 'diterima', 'diterima', 'sudah', 'yes'),
(33, NULL, '2017-11-23 11:45:49', '2017-12-10 17:17:28', 'NDkH48', 10, 2, 54, '2017-11-23 11:45:00', '2017-11-25 12:45:00', 1, 9, 'pending', 'pending', 'sudah', 'yes'),
(34, NULL, '2017-11-23 12:00:45', '2017-12-10 17:17:58', 'N5lIGV', 9, 4, 55, '2017-11-24 10:55:00', '2017-11-26 11:55:00', 1, 10, 'pending', 'pending', 'belum', 'no'),
(35, NULL, '2017-11-23 12:02:19', '2017-12-10 17:18:29', 'mtA1V7', 5, 1, 55, '2017-11-24 14:25:00', '2017-11-26 15:25:00', 1, 8, 'pending', 'pending', 'belum', 'no'),
(36, NULL, '2017-12-09 10:40:55', '2017-12-10 17:19:01', 'lCSvCB', 6, 4, 56, '2017-12-08 08:00:00', '2017-12-12 08:00:00', 1, 14, 'pending', 'pending', 'belum', 'yes'),
(37, NULL, '2017-12-09 16:02:06', '2017-12-10 17:19:34', 'gi14kC', 20, 2, 57, '2017-12-16 02:00:00', '2017-12-20 02:00:00', 1, 13, 'pending', 'pending', 'belum', 'no'),
(38, NULL, '2017-12-10 22:12:23', '2017-12-10 22:17:47', 'LCxU16', 30, 8, 58, '2017-12-11 09:00:00', '2017-12-12 09:00:00', 1, 1, 'pending', 'pending', 'sudah', 'yes'),
(39, NULL, '2017-12-10 22:26:13', '2017-12-10 22:26:13', 'ehCp52', 22, 6, 58, '2017-12-12 09:20:00', '2017-12-14 09:20:00', 1, 1, 'pending', 'pending', 'belum', 'no'),
(40, '2017-12-11 01:02:53', '2017-12-11 01:02:42', '2017-12-11 01:02:53', '123', 1, 1, 53, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, 'pending', 'pending', 'belum', 'no'),
(41, NULL, '2017-12-11 09:48:32', '2017-12-11 09:50:28', 'PaXeGJ', 19, 1, 60, '2017-12-17 09:47:00', '2017-12-21 09:47:00', 1, 1, 'diterima', 'diterima', 'sudah', 'yes'),
(42, NULL, '2017-12-11 20:55:56', '2017-12-11 20:55:56', 'PdYvsl', 6, 4, 61, '2017-12-12 05:25:00', '2017-12-14 07:25:00', 1, 1, 'pending', 'pending', 'belum', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN_PANEL', 'Admin Panel', 'Admin Panel Permission', NULL, '2017-09-17 19:07:29', '2017-09-17 19:07:29'),
(2, 'HOMEPAGE_PANEL', 'Homepage', 'Only for home page include order information, history transaction, account information, billing, and reward point', NULL, '2017-09-18 20:34:25', '2017-09-18 20:34:25');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(2, 11);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `descrip` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `dept` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `parent`, `dept`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'SUPER_ADMIN', 'Super Admin', 'Full Access Role', 1, 1, NULL, '2017-09-17 19:07:26', '2017-09-17 19:07:26'),
(2, 'CEO', 'Cheaf Executive Officer', '', 1, 2, NULL, '2017-09-17 20:20:26', '2017-11-02 17:21:22'),
(3, 'ADMIN', 'Admin', '', 1, 10, NULL, '2017-09-17 20:21:32', '2017-09-17 20:21:32'),
(4, 'AGEN_RENTAL', 'Agen Rental', '', 1, 3, NULL, '2017-09-17 20:22:03', '2017-11-02 17:21:31'),
(5, 'AGEN_TRAVEL', 'Agen Travel', '', 1, 5, NULL, '2017-09-17 20:22:36', '2017-11-02 17:21:38'),
(6, 'SURVEYER', 'Surveyer', '', 1, 6, NULL, '2017-09-17 20:24:25', '2017-11-02 17:21:47'),
(7, 'AGEN_WISATA', 'Agen Wisata', '', 1, 11, NULL, '2017-09-17 20:25:22', '2017-11-02 17:22:14'),
(8, 'KEPEGAWAIAN', 'Kepegawaian', '', 3, 7, '2017-09-19 12:56:33', '2017-09-17 20:25:57', '2017-09-19 12:56:33'),
(9, 'KEUANGAN', 'Keuangan', '', 3, 8, '2017-09-19 12:56:39', '2017-09-17 20:27:13', '2017-09-19 12:56:39'),
(10, 'MARKETING', 'Marketing', '', 1, 9, NULL, '2017-09-17 20:27:59', '2017-11-02 17:22:21'),
(11, 'CUSTOMER', 'Customer', '', 10, 12, NULL, '2017-09-17 20:29:19', '2017-09-18 20:38:13');

-- --------------------------------------------------------

--
-- Table structure for table `role_module`
--

CREATE TABLE `role_module` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `acc_view` tinyint(1) NOT NULL,
  `acc_create` tinyint(1) NOT NULL,
  `acc_edit` tinyint(1) NOT NULL,
  `acc_delete` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_module`
--

INSERT INTO `role_module` (`id`, `role_id`, `module_id`, `acc_view`, `acc_create`, `acc_edit`, `acc_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, '2017-09-17 19:07:26', '2017-09-17 19:07:26'),
(2, 1, 2, 1, 1, 1, 1, '2017-09-17 19:07:26', '2017-09-17 19:07:26'),
(3, 1, 3, 1, 1, 1, 1, '2017-09-17 19:07:26', '2017-09-17 19:07:26'),
(4, 1, 4, 1, 1, 1, 1, '2017-09-17 19:07:27', '2017-09-17 19:07:27'),
(5, 1, 5, 1, 1, 1, 1, '2017-09-17 19:07:27', '2017-09-17 19:07:27'),
(8, 1, 8, 1, 1, 1, 1, '2017-09-17 19:07:29', '2017-09-17 19:07:29'),
(9, 2, 1, 0, 0, 0, 0, '2017-09-17 20:20:26', '2017-09-17 20:20:26'),
(10, 2, 2, 1, 0, 0, 0, '2017-09-17 20:20:26', '2017-09-17 20:20:26'),
(11, 2, 3, 1, 0, 0, 0, '2017-09-17 20:20:26', '2017-09-17 20:20:26'),
(12, 2, 4, 1, 0, 0, 0, '2017-09-17 20:20:27', '2017-09-17 20:20:27'),
(13, 2, 5, 1, 0, 0, 0, '2017-09-17 20:20:27', '2017-09-17 20:20:27'),
(16, 2, 8, 1, 0, 0, 0, '2017-09-17 20:20:28', '2017-09-17 20:20:28'),
(17, 3, 1, 1, 1, 1, 1, '2017-09-17 20:21:32', '2017-09-17 20:21:32'),
(18, 3, 2, 1, 1, 1, 1, '2017-09-17 20:21:32', '2017-09-17 20:21:32'),
(19, 3, 3, 1, 1, 1, 1, '2017-09-17 20:21:32', '2017-09-17 20:21:32'),
(20, 3, 4, 1, 1, 1, 1, '2017-09-17 20:21:33', '2017-09-17 20:21:33'),
(21, 3, 5, 0, 0, 0, 0, '2017-09-17 20:21:33', '2017-09-17 20:21:33'),
(24, 3, 8, 0, 0, 0, 0, '2017-09-17 20:21:35', '2017-09-17 20:21:35'),
(25, 4, 1, 0, 0, 0, 0, '2017-09-17 20:22:03', '2017-09-17 20:22:03'),
(26, 4, 2, 1, 1, 1, 1, '2017-09-17 20:22:03', '2017-09-17 20:22:03'),
(27, 4, 3, 0, 0, 0, 0, '2017-09-17 20:22:03', '2017-09-17 20:22:03'),
(28, 4, 4, 1, 0, 1, 0, '2017-09-17 20:22:04', '2017-09-17 20:22:04'),
(29, 4, 5, 0, 0, 0, 0, '2017-09-17 20:22:04', '2017-09-17 20:22:04'),
(32, 4, 8, 0, 0, 0, 0, '2017-09-17 20:22:06', '2017-09-17 20:22:06'),
(33, 5, 1, 0, 0, 0, 0, '2017-09-17 20:22:36', '2017-09-17 20:22:36'),
(34, 5, 2, 1, 0, 0, 0, '2017-09-17 20:22:37', '2017-09-17 20:22:37'),
(35, 5, 3, 1, 0, 0, 0, '2017-09-17 20:22:37', '2017-09-17 20:22:37'),
(36, 5, 4, 1, 0, 0, 0, '2017-09-17 20:22:37', '2017-09-17 20:22:37'),
(37, 5, 5, 1, 0, 0, 0, '2017-09-17 20:22:38', '2017-09-17 20:22:38'),
(40, 5, 8, 1, 0, 0, 0, '2017-09-17 20:22:39', '2017-09-17 20:22:39'),
(41, 6, 1, 0, 0, 0, 0, '2017-09-17 20:24:26', '2017-09-17 20:24:26'),
(42, 6, 2, 0, 0, 0, 0, '2017-09-17 20:24:26', '2017-09-17 20:24:26'),
(43, 6, 3, 0, 0, 0, 0, '2017-09-17 20:24:26', '2017-09-17 20:24:26'),
(44, 6, 4, 1, 0, 0, 0, '2017-09-17 20:24:26', '2017-09-17 20:24:26'),
(45, 6, 5, 0, 0, 0, 0, '2017-09-17 20:24:27', '2017-09-17 20:24:27'),
(48, 6, 8, 0, 0, 0, 0, '2017-09-17 20:24:29', '2017-09-17 20:24:29'),
(49, 7, 1, 0, 0, 0, 0, '2017-09-17 20:25:22', '2017-09-17 20:25:22'),
(50, 7, 2, 1, 0, 0, 0, '2017-09-17 20:25:22', '2017-09-17 20:25:22'),
(51, 7, 3, 1, 0, 0, 0, '2017-09-17 20:25:22', '2017-09-17 20:25:22'),
(52, 7, 4, 1, 0, 0, 0, '2017-09-17 20:25:23', '2017-09-17 20:25:23'),
(53, 7, 5, 1, 0, 0, 0, '2017-09-17 20:25:23', '2017-09-17 20:25:23'),
(56, 7, 8, 1, 0, 0, 0, '2017-09-17 20:25:25', '2017-09-17 20:25:25'),
(57, 8, 1, 0, 0, 0, 0, '2017-09-17 20:25:57', '2017-09-17 20:25:57'),
(58, 8, 2, 1, 0, 0, 0, '2017-09-17 20:25:57', '2017-09-17 20:25:57'),
(59, 8, 3, 1, 0, 0, 0, '2017-09-17 20:25:58', '2017-09-17 20:25:58'),
(60, 8, 4, 1, 0, 0, 0, '2017-09-17 20:25:58', '2017-09-17 20:25:58'),
(61, 8, 5, 1, 0, 0, 0, '2017-09-17 20:25:59', '2017-09-17 20:25:59'),
(64, 8, 8, 1, 0, 0, 0, '2017-09-17 20:26:00', '2017-09-17 20:26:00'),
(65, 9, 1, 0, 0, 0, 0, '2017-09-17 20:27:13', '2017-09-17 20:27:13'),
(66, 9, 2, 1, 0, 0, 0, '2017-09-17 20:27:13', '2017-09-17 20:27:13'),
(67, 9, 3, 1, 0, 0, 0, '2017-09-17 20:27:13', '2017-09-17 20:27:13'),
(68, 9, 4, 1, 0, 0, 0, '2017-09-17 20:27:14', '2017-09-17 20:27:14'),
(69, 9, 5, 1, 0, 0, 0, '2017-09-17 20:27:14', '2017-09-17 20:27:14'),
(72, 9, 8, 1, 0, 0, 0, '2017-09-17 20:27:15', '2017-09-17 20:27:15'),
(73, 10, 1, 0, 0, 0, 0, '2017-09-17 20:27:59', '2017-09-17 20:27:59'),
(74, 10, 2, 1, 0, 0, 0, '2017-09-17 20:27:59', '2017-09-17 20:27:59'),
(75, 10, 3, 1, 0, 0, 0, '2017-09-17 20:27:59', '2017-09-17 20:27:59'),
(76, 10, 4, 1, 0, 0, 0, '2017-09-17 20:28:00', '2017-09-17 20:28:00'),
(77, 10, 5, 1, 0, 0, 0, '2017-09-17 20:28:00', '2017-09-17 20:28:00'),
(80, 10, 8, 1, 0, 0, 0, '2017-09-17 20:28:02', '2017-09-17 20:28:02'),
(81, 11, 1, 0, 0, 0, 0, '2017-09-17 20:29:19', '2017-09-17 20:29:19'),
(82, 11, 2, 1, 0, 0, 0, '2017-09-17 20:29:20', '2017-09-17 20:29:20'),
(83, 11, 3, 1, 0, 0, 0, '2017-09-17 20:29:20', '2017-09-17 20:29:20'),
(84, 11, 4, 1, 0, 0, 0, '2017-09-17 20:29:20', '2017-09-17 20:29:20'),
(85, 11, 5, 1, 0, 0, 0, '2017-09-17 20:29:21', '2017-09-17 20:29:21'),
(88, 11, 8, 1, 0, 0, 0, '2017-09-17 20:29:22', '2017-09-17 20:29:22'),
(89, 1, 9, 1, 1, 1, 1, '2017-09-19 10:36:35', '2017-09-19 10:36:35'),
(90, 1, 10, 1, 1, 1, 1, '2017-09-19 10:56:55', '2017-09-19 10:56:55'),
(91, 1, 11, 1, 1, 1, 1, '2017-09-19 11:20:48', '2017-09-19 11:20:48'),
(92, 1, 13, 1, 1, 1, 1, '2017-09-19 11:57:35', '2017-09-19 11:57:35'),
(94, 1, 15, 1, 1, 1, 1, '2017-09-19 12:44:05', '2017-09-19 12:44:05'),
(96, 3, 9, 1, 1, 1, 1, '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(97, 3, 10, 1, 1, 1, 1, '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(98, 3, 11, 1, 1, 1, 1, '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(99, 3, 13, 1, 1, 1, 1, '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(101, 3, 15, 1, 1, 1, 1, '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(102, 1, 16, 1, 1, 1, 1, '2017-10-29 08:33:40', '2017-10-29 08:33:40'),
(103, 4, 9, 1, 0, 1, 0, '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(104, 4, 10, 1, 1, 1, 1, '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(105, 4, 11, 1, 1, 1, 1, '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(106, 4, 13, 1, 0, 0, 0, '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(107, 4, 15, 0, 0, 0, 0, '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(108, 4, 16, 1, 1, 0, 0, '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(109, 1, 17, 1, 1, 1, 1, '2017-11-14 03:18:51', '2017-11-14 03:18:51'),
(110, 1, 18, 1, 1, 1, 1, '2017-11-14 03:29:45', '2017-11-14 03:29:45'),
(111, 1, 19, 1, 1, 1, 1, '2017-11-14 04:22:23', '2017-11-14 04:22:23'),
(112, 2, 16, 0, 0, 0, 0, '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(113, 3, 16, 1, 1, 1, 1, '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(114, 5, 16, 0, 0, 0, 0, '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(115, 6, 16, 1, 0, 1, 0, '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(116, 7, 16, 0, 0, 0, 0, '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(117, 10, 16, 0, 0, 0, 0, '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(118, 11, 16, 0, 0, 0, 0, '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(119, 1, 20, 1, 1, 1, 1, '2017-11-22 16:07:56', '2017-11-22 16:07:56'),
(120, 1, 21, 1, 1, 1, 1, '2017-11-22 16:16:11', '2017-11-22 16:16:11'),
(121, 1, 22, 1, 1, 1, 1, '2017-11-22 16:22:49', '2017-11-22 16:22:49'),
(122, 1, 23, 1, 1, 1, 1, '2017-11-22 16:43:04', '2017-11-22 16:43:04'),
(123, 1, 24, 1, 1, 1, 1, '2017-11-22 17:06:40', '2017-11-22 17:06:40'),
(124, 1, 25, 1, 1, 1, 1, '2017-11-22 17:54:17', '2017-11-22 17:54:17'),
(125, 1, 26, 1, 1, 1, 1, '2017-11-22 20:41:20', '2017-11-22 20:41:20'),
(126, 3, 17, 1, 1, 1, 1, '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(127, 3, 18, 1, 1, 1, 1, '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(128, 3, 19, 1, 1, 1, 1, '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(129, 3, 20, 1, 1, 1, 1, '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(130, 3, 21, 1, 1, 1, 1, '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(131, 3, 22, 1, 1, 1, 1, '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(132, 3, 23, 1, 1, 1, 1, '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(133, 3, 24, 1, 1, 1, 1, '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(134, 3, 25, 1, 1, 1, 1, '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(135, 3, 26, 1, 1, 1, 1, '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(136, 6, 9, 0, 0, 0, 0, '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(137, 6, 10, 0, 0, 0, 0, '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(138, 6, 11, 0, 0, 0, 0, '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(139, 6, 13, 1, 0, 0, 0, '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(140, 6, 15, 0, 0, 0, 0, '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(141, 6, 17, 0, 0, 0, 0, '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(142, 6, 18, 0, 0, 0, 0, '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(143, 6, 19, 0, 0, 0, 0, '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(144, 6, 20, 0, 0, 0, 0, '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(145, 6, 21, 0, 0, 0, 0, '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(146, 6, 22, 0, 0, 0, 0, '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(147, 6, 23, 0, 0, 0, 0, '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(148, 6, 24, 0, 0, 0, 0, '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(149, 6, 25, 0, 0, 0, 0, '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(150, 6, 26, 0, 0, 0, 0, '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(151, 4, 17, 0, 0, 0, 0, '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(152, 4, 18, 0, 0, 0, 0, '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(153, 4, 19, 0, 0, 0, 0, '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(154, 4, 20, 0, 0, 0, 0, '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(155, 4, 21, 0, 0, 0, 0, '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(156, 4, 22, 0, 0, 0, 0, '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(157, 4, 23, 0, 0, 0, 0, '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(158, 4, 24, 0, 0, 0, 0, '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(159, 4, 25, 0, 0, 0, 0, '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(160, 4, 26, 0, 0, 0, 0, '2017-12-11 10:03:38', '2017-12-11 10:03:38');

-- --------------------------------------------------------

--
-- Table structure for table `role_module_fields`
--

CREATE TABLE `role_module_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `field_id` int(10) UNSIGNED NOT NULL,
  `access` enum('invisible','readonly','write') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_module_fields`
--

INSERT INTO `role_module_fields` (`id`, `role_id`, `field_id`, `access`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'write', '2017-09-17 19:07:26', '2017-09-17 19:07:26'),
(2, 1, 2, 'write', '2017-09-17 19:07:26', '2017-09-17 19:07:26'),
(3, 1, 3, 'write', '2017-09-17 19:07:26', '2017-09-17 19:07:26'),
(4, 1, 4, 'write', '2017-09-17 19:07:26', '2017-09-17 19:07:26'),
(5, 1, 5, 'write', '2017-09-17 19:07:26', '2017-09-17 19:07:26'),
(6, 1, 6, 'write', '2017-09-17 19:07:26', '2017-09-17 19:07:26'),
(7, 1, 7, 'write', '2017-09-17 19:07:26', '2017-09-17 19:07:26'),
(8, 1, 8, 'write', '2017-09-17 19:07:26', '2017-09-17 19:07:26'),
(9, 1, 9, 'write', '2017-09-17 19:07:26', '2017-09-17 19:07:26'),
(10, 1, 10, 'write', '2017-09-17 19:07:26', '2017-09-17 19:07:26'),
(11, 1, 11, 'write', '2017-09-17 19:07:26', '2017-09-17 19:07:26'),
(12, 1, 12, 'write', '2017-09-17 19:07:26', '2017-09-17 19:07:26'),
(13, 1, 13, 'write', '2017-09-17 19:07:26', '2017-09-17 19:07:26'),
(14, 1, 14, 'write', '2017-09-17 19:07:26', '2017-09-17 19:07:26'),
(15, 1, 15, 'write', '2017-09-17 19:07:26', '2017-09-17 19:07:26'),
(16, 1, 16, 'write', '2017-09-17 19:07:27', '2017-09-17 19:07:27'),
(17, 1, 17, 'write', '2017-09-17 19:07:27', '2017-09-17 19:07:27'),
(18, 1, 18, 'write', '2017-09-17 19:07:27', '2017-09-17 19:07:27'),
(19, 1, 19, 'write', '2017-09-17 19:07:27', '2017-09-17 19:07:27'),
(20, 1, 20, 'write', '2017-09-17 19:07:27', '2017-09-17 19:07:27'),
(21, 1, 21, 'write', '2017-09-17 19:07:27', '2017-09-17 19:07:27'),
(22, 1, 22, 'write', '2017-09-17 19:07:27', '2017-09-17 19:07:27'),
(23, 1, 23, 'write', '2017-09-17 19:07:27', '2017-09-17 19:07:27'),
(24, 1, 24, 'write', '2017-09-17 19:07:27', '2017-09-17 19:07:27'),
(25, 1, 25, 'write', '2017-09-17 19:07:27', '2017-09-17 19:07:27'),
(26, 1, 26, 'write', '2017-09-17 19:07:27', '2017-09-17 19:07:27'),
(27, 1, 27, 'write', '2017-09-17 19:07:27', '2017-09-17 19:07:27'),
(28, 1, 28, 'write', '2017-09-17 19:07:27', '2017-09-17 19:07:27'),
(29, 1, 29, 'write', '2017-09-17 19:07:27', '2017-09-17 19:07:27'),
(30, 1, 30, 'write', '2017-09-17 19:07:27', '2017-09-17 19:07:27'),
(31, 1, 31, 'write', '2017-09-17 19:07:27', '2017-09-17 19:07:27'),
(32, 1, 32, 'write', '2017-09-17 19:07:27', '2017-09-17 19:07:27'),
(33, 1, 33, 'write', '2017-09-17 19:07:27', '2017-09-17 19:07:27'),
(34, 1, 34, 'write', '2017-09-17 19:07:27', '2017-09-17 19:07:27'),
(49, 1, 49, 'write', '2017-09-17 19:07:29', '2017-09-17 19:07:29'),
(50, 1, 50, 'write', '2017-09-17 19:07:29', '2017-09-17 19:07:29'),
(51, 1, 51, 'write', '2017-09-17 19:07:29', '2017-09-17 19:07:29'),
(52, 2, 1, 'readonly', '2017-09-17 20:20:26', '2017-09-17 20:20:26'),
(53, 2, 2, 'readonly', '2017-09-17 20:20:26', '2017-09-17 20:20:26'),
(54, 2, 3, 'readonly', '2017-09-17 20:20:26', '2017-09-17 20:20:26'),
(55, 2, 4, 'readonly', '2017-09-17 20:20:26', '2017-09-17 20:20:26'),
(56, 2, 5, 'readonly', '2017-09-17 20:20:26', '2017-09-17 20:20:26'),
(57, 2, 6, 'readonly', '2017-09-17 20:20:26', '2017-09-17 20:20:26'),
(58, 2, 7, 'readonly', '2017-09-17 20:20:26', '2017-09-17 20:20:26'),
(59, 2, 8, 'readonly', '2017-09-17 20:20:26', '2017-09-17 20:20:26'),
(60, 2, 9, 'readonly', '2017-09-17 20:20:26', '2017-09-17 20:20:26'),
(61, 2, 10, 'readonly', '2017-09-17 20:20:26', '2017-09-17 20:20:26'),
(62, 2, 11, 'readonly', '2017-09-17 20:20:26', '2017-09-17 20:20:26'),
(63, 2, 12, 'readonly', '2017-09-17 20:20:26', '2017-09-17 20:20:26'),
(64, 2, 13, 'readonly', '2017-09-17 20:20:26', '2017-09-17 20:20:26'),
(65, 2, 14, 'readonly', '2017-09-17 20:20:26', '2017-09-17 20:20:26'),
(66, 2, 15, 'readonly', '2017-09-17 20:20:26', '2017-09-17 20:20:26'),
(67, 2, 16, 'readonly', '2017-09-17 20:20:27', '2017-09-17 20:20:27'),
(68, 2, 17, 'readonly', '2017-09-17 20:20:27', '2017-09-17 20:20:27'),
(69, 2, 18, 'readonly', '2017-09-17 20:20:27', '2017-09-17 20:20:27'),
(70, 2, 19, 'readonly', '2017-09-17 20:20:27', '2017-09-17 20:20:27'),
(71, 2, 20, 'readonly', '2017-09-17 20:20:27', '2017-09-17 20:20:27'),
(72, 2, 21, 'readonly', '2017-09-17 20:20:27', '2017-09-17 20:20:27'),
(73, 2, 22, 'readonly', '2017-09-17 20:20:27', '2017-09-17 20:20:27'),
(74, 2, 23, 'readonly', '2017-09-17 20:20:27', '2017-09-17 20:20:27'),
(75, 2, 24, 'readonly', '2017-09-17 20:20:27', '2017-09-17 20:20:27'),
(76, 2, 25, 'readonly', '2017-09-17 20:20:27', '2017-09-17 20:20:27'),
(77, 2, 26, 'readonly', '2017-09-17 20:20:27', '2017-09-17 20:20:27'),
(78, 2, 27, 'readonly', '2017-09-17 20:20:27', '2017-09-17 20:20:27'),
(79, 2, 28, 'readonly', '2017-09-17 20:20:27', '2017-09-17 20:20:27'),
(80, 2, 29, 'readonly', '2017-09-17 20:20:27', '2017-09-17 20:20:27'),
(81, 2, 30, 'readonly', '2017-09-17 20:20:27', '2017-09-17 20:20:27'),
(82, 2, 31, 'readonly', '2017-09-17 20:20:27', '2017-09-17 20:20:27'),
(83, 2, 32, 'readonly', '2017-09-17 20:20:27', '2017-09-17 20:20:27'),
(84, 2, 33, 'readonly', '2017-09-17 20:20:27', '2017-09-17 20:20:27'),
(85, 2, 34, 'readonly', '2017-09-17 20:20:27', '2017-09-17 20:20:27'),
(100, 2, 49, 'readonly', '2017-09-17 20:20:28', '2017-09-17 20:20:28'),
(101, 2, 50, 'readonly', '2017-09-17 20:20:28', '2017-09-17 20:20:28'),
(102, 2, 51, 'readonly', '2017-09-17 20:20:28', '2017-09-17 20:20:28'),
(103, 3, 1, 'write', '2017-09-17 20:21:32', '2017-09-17 20:21:32'),
(104, 3, 2, 'write', '2017-09-17 20:21:32', '2017-09-17 20:21:32'),
(105, 3, 3, 'write', '2017-09-17 20:21:32', '2017-09-17 20:21:32'),
(106, 3, 4, 'write', '2017-09-17 20:21:32', '2017-09-17 20:21:32'),
(107, 3, 5, 'write', '2017-09-17 20:21:32', '2017-09-17 20:21:32'),
(108, 3, 6, 'write', '2017-09-17 20:21:32', '2017-09-17 20:21:32'),
(109, 3, 7, 'write', '2017-09-17 20:21:32', '2017-09-17 20:21:32'),
(110, 3, 8, 'write', '2017-09-17 20:21:32', '2017-09-17 20:21:32'),
(111, 3, 9, 'write', '2017-09-17 20:21:32', '2017-09-17 20:21:32'),
(112, 3, 10, 'write', '2017-09-17 20:21:32', '2017-09-17 20:21:32'),
(113, 3, 11, 'write', '2017-09-17 20:21:32', '2017-09-17 20:21:32'),
(114, 3, 12, 'write', '2017-09-17 20:21:32', '2017-09-17 20:21:32'),
(115, 3, 13, 'write', '2017-09-17 20:21:32', '2017-09-17 20:21:32'),
(116, 3, 14, 'write', '2017-09-17 20:21:32', '2017-09-17 20:21:32'),
(117, 3, 15, 'write', '2017-09-17 20:21:32', '2017-09-17 20:21:32'),
(118, 3, 16, 'write', '2017-09-17 20:21:33', '2017-09-17 20:21:33'),
(119, 3, 17, 'write', '2017-09-17 20:21:33', '2017-09-17 20:21:33'),
(120, 3, 18, 'write', '2017-09-17 20:21:33', '2017-09-17 20:21:33'),
(121, 3, 19, 'write', '2017-09-17 20:21:33', '2017-09-17 20:21:33'),
(122, 3, 20, 'write', '2017-09-17 20:21:33', '2017-09-17 20:21:33'),
(123, 3, 21, 'write', '2017-09-17 20:21:33', '2017-09-17 20:21:33'),
(124, 3, 22, 'write', '2017-09-17 20:21:33', '2017-09-17 20:21:33'),
(125, 3, 23, 'write', '2017-09-17 20:21:33', '2017-09-17 20:21:33'),
(126, 3, 24, 'write', '2017-09-17 20:21:33', '2017-09-17 20:21:33'),
(127, 3, 25, 'write', '2017-09-17 20:21:33', '2017-09-17 20:21:33'),
(128, 3, 26, 'write', '2017-09-17 20:21:33', '2017-09-17 20:21:33'),
(129, 3, 27, 'write', '2017-09-17 20:21:33', '2017-09-17 20:21:33'),
(130, 3, 28, 'write', '2017-09-17 20:21:33', '2017-09-17 20:21:33'),
(131, 3, 29, 'write', '2017-09-17 20:21:33', '2017-09-17 20:21:33'),
(132, 3, 30, 'write', '2017-09-17 20:21:33', '2017-09-17 20:21:33'),
(133, 3, 31, 'write', '2017-09-17 20:21:33', '2017-09-17 20:21:33'),
(134, 3, 32, 'write', '2017-09-17 20:21:33', '2017-09-17 20:21:33'),
(135, 3, 33, 'write', '2017-09-17 20:21:33', '2017-09-17 20:21:33'),
(136, 3, 34, 'write', '2017-09-17 20:21:33', '2017-09-17 20:21:33'),
(151, 3, 49, 'readonly', '2017-09-17 20:21:35', '2017-09-17 20:21:35'),
(152, 3, 50, 'readonly', '2017-09-17 20:21:35', '2017-09-17 20:21:35'),
(153, 3, 51, 'readonly', '2017-09-17 20:21:35', '2017-09-17 20:21:35'),
(154, 4, 1, 'readonly', '2017-09-17 20:22:03', '2017-09-17 20:22:03'),
(155, 4, 2, 'readonly', '2017-09-17 20:22:03', '2017-09-17 20:22:03'),
(156, 4, 3, 'readonly', '2017-09-17 20:22:03', '2017-09-17 20:22:03'),
(157, 4, 4, 'readonly', '2017-09-17 20:22:03', '2017-09-17 20:22:03'),
(158, 4, 5, 'readonly', '2017-09-17 20:22:03', '2017-09-17 20:22:03'),
(159, 4, 6, 'write', '2017-09-17 20:22:03', '2017-09-17 20:22:03'),
(160, 4, 7, 'write', '2017-09-17 20:22:03', '2017-09-17 20:22:03'),
(161, 4, 8, 'write', '2017-09-17 20:22:03', '2017-09-17 20:22:03'),
(162, 4, 9, 'write', '2017-09-17 20:22:03', '2017-09-17 20:22:03'),
(163, 4, 10, 'write', '2017-09-17 20:22:03', '2017-09-17 20:22:03'),
(164, 4, 11, 'write', '2017-09-17 20:22:03', '2017-09-17 20:22:03'),
(165, 4, 12, 'write', '2017-09-17 20:22:03', '2017-09-17 20:22:03'),
(166, 4, 13, 'readonly', '2017-09-17 20:22:03', '2017-09-17 20:22:03'),
(167, 4, 14, 'readonly', '2017-09-17 20:22:03', '2017-09-17 20:22:03'),
(168, 4, 15, 'readonly', '2017-09-17 20:22:03', '2017-09-17 20:22:03'),
(169, 4, 16, 'write', '2017-09-17 20:22:04', '2017-09-17 20:22:04'),
(170, 4, 17, 'write', '2017-09-17 20:22:04', '2017-09-17 20:22:04'),
(171, 4, 18, 'invisible', '2017-09-17 20:22:04', '2017-09-17 20:22:04'),
(172, 4, 19, 'write', '2017-09-17 20:22:04', '2017-09-17 20:22:04'),
(173, 4, 20, 'invisible', '2017-09-17 20:22:04', '2017-09-17 20:22:04'),
(174, 4, 21, 'write', '2017-09-17 20:22:04', '2017-09-17 20:22:04'),
(175, 4, 22, 'write', '2017-09-17 20:22:04', '2017-09-17 20:22:04'),
(176, 4, 23, 'invisible', '2017-09-17 20:22:04', '2017-09-17 20:22:04'),
(177, 4, 24, 'invisible', '2017-09-17 20:22:04', '2017-09-17 20:22:04'),
(178, 4, 25, 'invisible', '2017-09-17 20:22:04', '2017-09-17 20:22:04'),
(179, 4, 26, 'invisible', '2017-09-17 20:22:04', '2017-09-17 20:22:04'),
(180, 4, 27, 'invisible', '2017-09-17 20:22:04', '2017-09-17 20:22:04'),
(181, 4, 28, 'invisible', '2017-09-17 20:22:04', '2017-09-17 20:22:04'),
(182, 4, 29, 'invisible', '2017-09-17 20:22:04', '2017-09-17 20:22:04'),
(183, 4, 30, 'readonly', '2017-09-17 20:22:04', '2017-09-17 20:22:04'),
(184, 4, 31, 'readonly', '2017-09-17 20:22:04', '2017-09-17 20:22:04'),
(185, 4, 32, 'readonly', '2017-09-17 20:22:04', '2017-09-17 20:22:04'),
(186, 4, 33, 'readonly', '2017-09-17 20:22:04', '2017-09-17 20:22:04'),
(187, 4, 34, 'readonly', '2017-09-17 20:22:04', '2017-09-17 20:22:04'),
(202, 4, 49, 'readonly', '2017-09-17 20:22:06', '2017-09-17 20:22:06'),
(203, 4, 50, 'readonly', '2017-09-17 20:22:06', '2017-09-17 20:22:06'),
(204, 4, 51, 'readonly', '2017-09-17 20:22:06', '2017-09-17 20:22:06'),
(205, 5, 1, 'readonly', '2017-09-17 20:22:36', '2017-09-17 20:22:36'),
(206, 5, 2, 'readonly', '2017-09-17 20:22:36', '2017-09-17 20:22:36'),
(207, 5, 3, 'readonly', '2017-09-17 20:22:36', '2017-09-17 20:22:36'),
(208, 5, 4, 'readonly', '2017-09-17 20:22:36', '2017-09-17 20:22:36'),
(209, 5, 5, 'readonly', '2017-09-17 20:22:36', '2017-09-17 20:22:36'),
(210, 5, 6, 'readonly', '2017-09-17 20:22:37', '2017-09-17 20:22:37'),
(211, 5, 7, 'readonly', '2017-09-17 20:22:37', '2017-09-17 20:22:37'),
(212, 5, 8, 'readonly', '2017-09-17 20:22:37', '2017-09-17 20:22:37'),
(213, 5, 9, 'readonly', '2017-09-17 20:22:37', '2017-09-17 20:22:37'),
(214, 5, 10, 'readonly', '2017-09-17 20:22:37', '2017-09-17 20:22:37'),
(215, 5, 11, 'readonly', '2017-09-17 20:22:37', '2017-09-17 20:22:37'),
(216, 5, 12, 'readonly', '2017-09-17 20:22:37', '2017-09-17 20:22:37'),
(217, 5, 13, 'readonly', '2017-09-17 20:22:37', '2017-09-17 20:22:37'),
(218, 5, 14, 'readonly', '2017-09-17 20:22:37', '2017-09-17 20:22:37'),
(219, 5, 15, 'readonly', '2017-09-17 20:22:37', '2017-09-17 20:22:37'),
(220, 5, 16, 'readonly', '2017-09-17 20:22:37', '2017-09-17 20:22:37'),
(221, 5, 17, 'readonly', '2017-09-17 20:22:37', '2017-09-17 20:22:37'),
(222, 5, 18, 'readonly', '2017-09-17 20:22:37', '2017-09-17 20:22:37'),
(223, 5, 19, 'readonly', '2017-09-17 20:22:37', '2017-09-17 20:22:37'),
(224, 5, 20, 'readonly', '2017-09-17 20:22:37', '2017-09-17 20:22:37'),
(225, 5, 21, 'readonly', '2017-09-17 20:22:37', '2017-09-17 20:22:37'),
(226, 5, 22, 'readonly', '2017-09-17 20:22:37', '2017-09-17 20:22:37'),
(227, 5, 23, 'readonly', '2017-09-17 20:22:37', '2017-09-17 20:22:37'),
(228, 5, 24, 'readonly', '2017-09-17 20:22:37', '2017-09-17 20:22:37'),
(229, 5, 25, 'readonly', '2017-09-17 20:22:37', '2017-09-17 20:22:37'),
(230, 5, 26, 'readonly', '2017-09-17 20:22:37', '2017-09-17 20:22:37'),
(231, 5, 27, 'readonly', '2017-09-17 20:22:37', '2017-09-17 20:22:37'),
(232, 5, 28, 'readonly', '2017-09-17 20:22:37', '2017-09-17 20:22:37'),
(233, 5, 29, 'readonly', '2017-09-17 20:22:37', '2017-09-17 20:22:37'),
(234, 5, 30, 'readonly', '2017-09-17 20:22:38', '2017-09-17 20:22:38'),
(235, 5, 31, 'readonly', '2017-09-17 20:22:38', '2017-09-17 20:22:38'),
(236, 5, 32, 'readonly', '2017-09-17 20:22:38', '2017-09-17 20:22:38'),
(237, 5, 33, 'readonly', '2017-09-17 20:22:38', '2017-09-17 20:22:38'),
(238, 5, 34, 'readonly', '2017-09-17 20:22:38', '2017-09-17 20:22:38'),
(253, 5, 49, 'readonly', '2017-09-17 20:22:39', '2017-09-17 20:22:39'),
(254, 5, 50, 'readonly', '2017-09-17 20:22:39', '2017-09-17 20:22:39'),
(255, 5, 51, 'readonly', '2017-09-17 20:22:39', '2017-09-17 20:22:39'),
(256, 6, 1, 'readonly', '2017-09-17 20:24:26', '2017-09-17 20:24:26'),
(257, 6, 2, 'readonly', '2017-09-17 20:24:26', '2017-09-17 20:24:26'),
(258, 6, 3, 'readonly', '2017-09-17 20:24:26', '2017-09-17 20:24:26'),
(259, 6, 4, 'readonly', '2017-09-17 20:24:26', '2017-09-17 20:24:26'),
(260, 6, 5, 'readonly', '2017-09-17 20:24:26', '2017-09-17 20:24:26'),
(261, 6, 6, 'readonly', '2017-09-17 20:24:26', '2017-09-17 20:24:26'),
(262, 6, 7, 'readonly', '2017-09-17 20:24:26', '2017-09-17 20:24:26'),
(263, 6, 8, 'readonly', '2017-09-17 20:24:26', '2017-09-17 20:24:26'),
(264, 6, 9, 'readonly', '2017-09-17 20:24:26', '2017-09-17 20:24:26'),
(265, 6, 10, 'readonly', '2017-09-17 20:24:26', '2017-09-17 20:24:26'),
(266, 6, 11, 'readonly', '2017-09-17 20:24:26', '2017-09-17 20:24:26'),
(267, 6, 12, 'readonly', '2017-09-17 20:24:26', '2017-09-17 20:24:26'),
(268, 6, 13, 'readonly', '2017-09-17 20:24:26', '2017-09-17 20:24:26'),
(269, 6, 14, 'readonly', '2017-09-17 20:24:26', '2017-09-17 20:24:26'),
(270, 6, 15, 'readonly', '2017-09-17 20:24:26', '2017-09-17 20:24:26'),
(271, 6, 16, 'readonly', '2017-09-17 20:24:26', '2017-09-17 20:24:26'),
(272, 6, 17, 'readonly', '2017-09-17 20:24:26', '2017-09-17 20:24:26'),
(273, 6, 18, 'readonly', '2017-09-17 20:24:26', '2017-09-17 20:24:26'),
(274, 6, 19, 'readonly', '2017-09-17 20:24:26', '2017-09-17 20:24:26'),
(275, 6, 20, 'readonly', '2017-09-17 20:24:26', '2017-09-17 20:24:26'),
(276, 6, 21, 'readonly', '2017-09-17 20:24:26', '2017-09-17 20:24:26'),
(277, 6, 22, 'readonly', '2017-09-17 20:24:26', '2017-09-17 20:24:26'),
(278, 6, 23, 'readonly', '2017-09-17 20:24:26', '2017-09-17 20:24:26'),
(279, 6, 24, 'readonly', '2017-09-17 20:24:26', '2017-09-17 20:24:26'),
(280, 6, 25, 'readonly', '2017-09-17 20:24:26', '2017-09-17 20:24:26'),
(281, 6, 26, 'readonly', '2017-09-17 20:24:26', '2017-09-17 20:24:26'),
(282, 6, 27, 'readonly', '2017-09-17 20:24:26', '2017-09-17 20:24:26'),
(283, 6, 28, 'readonly', '2017-09-17 20:24:26', '2017-09-17 20:24:26'),
(284, 6, 29, 'readonly', '2017-09-17 20:24:26', '2017-09-17 20:24:26'),
(285, 6, 30, 'readonly', '2017-09-17 20:24:27', '2017-09-17 20:24:27'),
(286, 6, 31, 'readonly', '2017-09-17 20:24:27', '2017-09-17 20:24:27'),
(287, 6, 32, 'readonly', '2017-09-17 20:24:27', '2017-09-17 20:24:27'),
(288, 6, 33, 'readonly', '2017-09-17 20:24:27', '2017-09-17 20:24:27'),
(289, 6, 34, 'readonly', '2017-09-17 20:24:27', '2017-09-17 20:24:27'),
(304, 6, 49, 'readonly', '2017-09-17 20:24:29', '2017-09-17 20:24:29'),
(305, 6, 50, 'readonly', '2017-09-17 20:24:29', '2017-09-17 20:24:29'),
(306, 6, 51, 'readonly', '2017-09-17 20:24:29', '2017-09-17 20:24:29'),
(307, 7, 1, 'readonly', '2017-09-17 20:25:22', '2017-09-17 20:25:22'),
(308, 7, 2, 'readonly', '2017-09-17 20:25:22', '2017-09-17 20:25:22'),
(309, 7, 3, 'readonly', '2017-09-17 20:25:22', '2017-09-17 20:25:22'),
(310, 7, 4, 'readonly', '2017-09-17 20:25:22', '2017-09-17 20:25:22'),
(311, 7, 5, 'readonly', '2017-09-17 20:25:22', '2017-09-17 20:25:22'),
(312, 7, 6, 'readonly', '2017-09-17 20:25:22', '2017-09-17 20:25:22'),
(313, 7, 7, 'readonly', '2017-09-17 20:25:22', '2017-09-17 20:25:22'),
(314, 7, 8, 'readonly', '2017-09-17 20:25:22', '2017-09-17 20:25:22'),
(315, 7, 9, 'readonly', '2017-09-17 20:25:22', '2017-09-17 20:25:22'),
(316, 7, 10, 'readonly', '2017-09-17 20:25:22', '2017-09-17 20:25:22'),
(317, 7, 11, 'readonly', '2017-09-17 20:25:22', '2017-09-17 20:25:22'),
(318, 7, 12, 'readonly', '2017-09-17 20:25:22', '2017-09-17 20:25:22'),
(319, 7, 13, 'readonly', '2017-09-17 20:25:22', '2017-09-17 20:25:22'),
(320, 7, 14, 'readonly', '2017-09-17 20:25:22', '2017-09-17 20:25:22'),
(321, 7, 15, 'readonly', '2017-09-17 20:25:22', '2017-09-17 20:25:22'),
(322, 7, 16, 'readonly', '2017-09-17 20:25:23', '2017-09-17 20:25:23'),
(323, 7, 17, 'readonly', '2017-09-17 20:25:23', '2017-09-17 20:25:23'),
(324, 7, 18, 'readonly', '2017-09-17 20:25:23', '2017-09-17 20:25:23'),
(325, 7, 19, 'readonly', '2017-09-17 20:25:23', '2017-09-17 20:25:23'),
(326, 7, 20, 'readonly', '2017-09-17 20:25:23', '2017-09-17 20:25:23'),
(327, 7, 21, 'readonly', '2017-09-17 20:25:23', '2017-09-17 20:25:23'),
(328, 7, 22, 'readonly', '2017-09-17 20:25:23', '2017-09-17 20:25:23'),
(329, 7, 23, 'readonly', '2017-09-17 20:25:23', '2017-09-17 20:25:23'),
(330, 7, 24, 'readonly', '2017-09-17 20:25:23', '2017-09-17 20:25:23'),
(331, 7, 25, 'readonly', '2017-09-17 20:25:23', '2017-09-17 20:25:23'),
(332, 7, 26, 'readonly', '2017-09-17 20:25:23', '2017-09-17 20:25:23'),
(333, 7, 27, 'readonly', '2017-09-17 20:25:23', '2017-09-17 20:25:23'),
(334, 7, 28, 'readonly', '2017-09-17 20:25:23', '2017-09-17 20:25:23'),
(335, 7, 29, 'readonly', '2017-09-17 20:25:23', '2017-09-17 20:25:23'),
(336, 7, 30, 'readonly', '2017-09-17 20:25:23', '2017-09-17 20:25:23'),
(337, 7, 31, 'readonly', '2017-09-17 20:25:23', '2017-09-17 20:25:23'),
(338, 7, 32, 'readonly', '2017-09-17 20:25:23', '2017-09-17 20:25:23'),
(339, 7, 33, 'readonly', '2017-09-17 20:25:23', '2017-09-17 20:25:23'),
(340, 7, 34, 'readonly', '2017-09-17 20:25:23', '2017-09-17 20:25:23'),
(355, 7, 49, 'readonly', '2017-09-17 20:25:25', '2017-09-17 20:25:25'),
(356, 7, 50, 'readonly', '2017-09-17 20:25:25', '2017-09-17 20:25:25'),
(357, 7, 51, 'readonly', '2017-09-17 20:25:25', '2017-09-17 20:25:25'),
(358, 8, 1, 'readonly', '2017-09-17 20:25:57', '2017-09-17 20:25:57'),
(359, 8, 2, 'readonly', '2017-09-17 20:25:57', '2017-09-17 20:25:57'),
(360, 8, 3, 'readonly', '2017-09-17 20:25:57', '2017-09-17 20:25:57'),
(361, 8, 4, 'readonly', '2017-09-17 20:25:57', '2017-09-17 20:25:57'),
(362, 8, 5, 'readonly', '2017-09-17 20:25:57', '2017-09-17 20:25:57'),
(363, 8, 6, 'readonly', '2017-09-17 20:25:57', '2017-09-17 20:25:57'),
(364, 8, 7, 'readonly', '2017-09-17 20:25:57', '2017-09-17 20:25:57'),
(365, 8, 8, 'readonly', '2017-09-17 20:25:57', '2017-09-17 20:25:57'),
(366, 8, 9, 'readonly', '2017-09-17 20:25:57', '2017-09-17 20:25:57'),
(367, 8, 10, 'readonly', '2017-09-17 20:25:57', '2017-09-17 20:25:57'),
(368, 8, 11, 'readonly', '2017-09-17 20:25:57', '2017-09-17 20:25:57'),
(369, 8, 12, 'readonly', '2017-09-17 20:25:57', '2017-09-17 20:25:57'),
(370, 8, 13, 'readonly', '2017-09-17 20:25:58', '2017-09-17 20:25:58'),
(371, 8, 14, 'readonly', '2017-09-17 20:25:58', '2017-09-17 20:25:58'),
(372, 8, 15, 'readonly', '2017-09-17 20:25:58', '2017-09-17 20:25:58'),
(373, 8, 16, 'readonly', '2017-09-17 20:25:58', '2017-09-17 20:25:58'),
(374, 8, 17, 'readonly', '2017-09-17 20:25:58', '2017-09-17 20:25:58'),
(375, 8, 18, 'readonly', '2017-09-17 20:25:58', '2017-09-17 20:25:58'),
(376, 8, 19, 'readonly', '2017-09-17 20:25:58', '2017-09-17 20:25:58'),
(377, 8, 20, 'readonly', '2017-09-17 20:25:58', '2017-09-17 20:25:58'),
(378, 8, 21, 'readonly', '2017-09-17 20:25:58', '2017-09-17 20:25:58'),
(379, 8, 22, 'readonly', '2017-09-17 20:25:58', '2017-09-17 20:25:58'),
(380, 8, 23, 'readonly', '2017-09-17 20:25:58', '2017-09-17 20:25:58'),
(381, 8, 24, 'readonly', '2017-09-17 20:25:58', '2017-09-17 20:25:58'),
(382, 8, 25, 'readonly', '2017-09-17 20:25:58', '2017-09-17 20:25:58'),
(383, 8, 26, 'readonly', '2017-09-17 20:25:58', '2017-09-17 20:25:58'),
(384, 8, 27, 'readonly', '2017-09-17 20:25:58', '2017-09-17 20:25:58'),
(385, 8, 28, 'readonly', '2017-09-17 20:25:58', '2017-09-17 20:25:58'),
(386, 8, 29, 'readonly', '2017-09-17 20:25:58', '2017-09-17 20:25:58'),
(387, 8, 30, 'readonly', '2017-09-17 20:25:59', '2017-09-17 20:25:59'),
(388, 8, 31, 'readonly', '2017-09-17 20:25:59', '2017-09-17 20:25:59'),
(389, 8, 32, 'readonly', '2017-09-17 20:25:59', '2017-09-17 20:25:59'),
(390, 8, 33, 'readonly', '2017-09-17 20:25:59', '2017-09-17 20:25:59'),
(391, 8, 34, 'readonly', '2017-09-17 20:25:59', '2017-09-17 20:25:59'),
(406, 8, 49, 'readonly', '2017-09-17 20:26:00', '2017-09-17 20:26:00'),
(407, 8, 50, 'readonly', '2017-09-17 20:26:00', '2017-09-17 20:26:00'),
(408, 8, 51, 'readonly', '2017-09-17 20:26:00', '2017-09-17 20:26:00'),
(409, 9, 1, 'readonly', '2017-09-17 20:27:13', '2017-09-17 20:27:13'),
(410, 9, 2, 'readonly', '2017-09-17 20:27:13', '2017-09-17 20:27:13'),
(411, 9, 3, 'readonly', '2017-09-17 20:27:13', '2017-09-17 20:27:13'),
(412, 9, 4, 'readonly', '2017-09-17 20:27:13', '2017-09-17 20:27:13'),
(413, 9, 5, 'readonly', '2017-09-17 20:27:13', '2017-09-17 20:27:13'),
(414, 9, 6, 'readonly', '2017-09-17 20:27:13', '2017-09-17 20:27:13'),
(415, 9, 7, 'readonly', '2017-09-17 20:27:13', '2017-09-17 20:27:13'),
(416, 9, 8, 'readonly', '2017-09-17 20:27:13', '2017-09-17 20:27:13'),
(417, 9, 9, 'readonly', '2017-09-17 20:27:13', '2017-09-17 20:27:13'),
(418, 9, 10, 'readonly', '2017-09-17 20:27:13', '2017-09-17 20:27:13'),
(419, 9, 11, 'readonly', '2017-09-17 20:27:13', '2017-09-17 20:27:13'),
(420, 9, 12, 'readonly', '2017-09-17 20:27:13', '2017-09-17 20:27:13'),
(421, 9, 13, 'readonly', '2017-09-17 20:27:13', '2017-09-17 20:27:13'),
(422, 9, 14, 'readonly', '2017-09-17 20:27:13', '2017-09-17 20:27:13'),
(423, 9, 15, 'readonly', '2017-09-17 20:27:13', '2017-09-17 20:27:13'),
(424, 9, 16, 'readonly', '2017-09-17 20:27:14', '2017-09-17 20:27:14'),
(425, 9, 17, 'readonly', '2017-09-17 20:27:14', '2017-09-17 20:27:14'),
(426, 9, 18, 'readonly', '2017-09-17 20:27:14', '2017-09-17 20:27:14'),
(427, 9, 19, 'readonly', '2017-09-17 20:27:14', '2017-09-17 20:27:14'),
(428, 9, 20, 'readonly', '2017-09-17 20:27:14', '2017-09-17 20:27:14'),
(429, 9, 21, 'readonly', '2017-09-17 20:27:14', '2017-09-17 20:27:14'),
(430, 9, 22, 'readonly', '2017-09-17 20:27:14', '2017-09-17 20:27:14'),
(431, 9, 23, 'readonly', '2017-09-17 20:27:14', '2017-09-17 20:27:14'),
(432, 9, 24, 'readonly', '2017-09-17 20:27:14', '2017-09-17 20:27:14'),
(433, 9, 25, 'readonly', '2017-09-17 20:27:14', '2017-09-17 20:27:14'),
(434, 9, 26, 'readonly', '2017-09-17 20:27:14', '2017-09-17 20:27:14'),
(435, 9, 27, 'readonly', '2017-09-17 20:27:14', '2017-09-17 20:27:14'),
(436, 9, 28, 'readonly', '2017-09-17 20:27:14', '2017-09-17 20:27:14'),
(437, 9, 29, 'readonly', '2017-09-17 20:27:14', '2017-09-17 20:27:14'),
(438, 9, 30, 'readonly', '2017-09-17 20:27:14', '2017-09-17 20:27:14'),
(439, 9, 31, 'readonly', '2017-09-17 20:27:14', '2017-09-17 20:27:14'),
(440, 9, 32, 'readonly', '2017-09-17 20:27:14', '2017-09-17 20:27:14'),
(441, 9, 33, 'readonly', '2017-09-17 20:27:14', '2017-09-17 20:27:14'),
(442, 9, 34, 'readonly', '2017-09-17 20:27:14', '2017-09-17 20:27:14'),
(457, 9, 49, 'readonly', '2017-09-17 20:27:15', '2017-09-17 20:27:15'),
(458, 9, 50, 'readonly', '2017-09-17 20:27:15', '2017-09-17 20:27:15'),
(459, 9, 51, 'readonly', '2017-09-17 20:27:15', '2017-09-17 20:27:15'),
(460, 10, 1, 'readonly', '2017-09-17 20:27:59', '2017-09-17 20:27:59'),
(461, 10, 2, 'readonly', '2017-09-17 20:27:59', '2017-09-17 20:27:59'),
(462, 10, 3, 'readonly', '2017-09-17 20:27:59', '2017-09-17 20:27:59'),
(463, 10, 4, 'readonly', '2017-09-17 20:27:59', '2017-09-17 20:27:59'),
(464, 10, 5, 'readonly', '2017-09-17 20:27:59', '2017-09-17 20:27:59'),
(465, 10, 6, 'readonly', '2017-09-17 20:27:59', '2017-09-17 20:27:59'),
(466, 10, 7, 'readonly', '2017-09-17 20:27:59', '2017-09-17 20:27:59'),
(467, 10, 8, 'readonly', '2017-09-17 20:27:59', '2017-09-17 20:27:59'),
(468, 10, 9, 'readonly', '2017-09-17 20:27:59', '2017-09-17 20:27:59'),
(469, 10, 10, 'readonly', '2017-09-17 20:27:59', '2017-09-17 20:27:59'),
(470, 10, 11, 'readonly', '2017-09-17 20:27:59', '2017-09-17 20:27:59'),
(471, 10, 12, 'readonly', '2017-09-17 20:27:59', '2017-09-17 20:27:59'),
(472, 10, 13, 'readonly', '2017-09-17 20:27:59', '2017-09-17 20:27:59'),
(473, 10, 14, 'readonly', '2017-09-17 20:27:59', '2017-09-17 20:27:59'),
(474, 10, 15, 'readonly', '2017-09-17 20:27:59', '2017-09-17 20:27:59'),
(475, 10, 16, 'readonly', '2017-09-17 20:28:00', '2017-09-17 20:28:00'),
(476, 10, 17, 'readonly', '2017-09-17 20:28:00', '2017-09-17 20:28:00'),
(477, 10, 18, 'readonly', '2017-09-17 20:28:00', '2017-09-17 20:28:00'),
(478, 10, 19, 'readonly', '2017-09-17 20:28:00', '2017-09-17 20:28:00'),
(479, 10, 20, 'readonly', '2017-09-17 20:28:00', '2017-09-17 20:28:00'),
(480, 10, 21, 'readonly', '2017-09-17 20:28:00', '2017-09-17 20:28:00'),
(481, 10, 22, 'readonly', '2017-09-17 20:28:00', '2017-09-17 20:28:00'),
(482, 10, 23, 'readonly', '2017-09-17 20:28:00', '2017-09-17 20:28:00'),
(483, 10, 24, 'readonly', '2017-09-17 20:28:00', '2017-09-17 20:28:00'),
(484, 10, 25, 'readonly', '2017-09-17 20:28:00', '2017-09-17 20:28:00'),
(485, 10, 26, 'readonly', '2017-09-17 20:28:00', '2017-09-17 20:28:00'),
(486, 10, 27, 'readonly', '2017-09-17 20:28:00', '2017-09-17 20:28:00'),
(487, 10, 28, 'readonly', '2017-09-17 20:28:00', '2017-09-17 20:28:00'),
(488, 10, 29, 'readonly', '2017-09-17 20:28:00', '2017-09-17 20:28:00'),
(489, 10, 30, 'readonly', '2017-09-17 20:28:00', '2017-09-17 20:28:00'),
(490, 10, 31, 'readonly', '2017-09-17 20:28:00', '2017-09-17 20:28:00'),
(491, 10, 32, 'readonly', '2017-09-17 20:28:00', '2017-09-17 20:28:00'),
(492, 10, 33, 'readonly', '2017-09-17 20:28:00', '2017-09-17 20:28:00'),
(493, 10, 34, 'readonly', '2017-09-17 20:28:00', '2017-09-17 20:28:00'),
(508, 10, 49, 'readonly', '2017-09-17 20:28:02', '2017-09-17 20:28:02'),
(509, 10, 50, 'readonly', '2017-09-17 20:28:02', '2017-09-17 20:28:02'),
(510, 10, 51, 'readonly', '2017-09-17 20:28:02', '2017-09-17 20:28:02'),
(511, 11, 1, 'readonly', '2017-09-17 20:29:19', '2017-09-17 20:29:19'),
(512, 11, 2, 'readonly', '2017-09-17 20:29:19', '2017-09-17 20:29:19'),
(513, 11, 3, 'readonly', '2017-09-17 20:29:19', '2017-09-17 20:29:19'),
(514, 11, 4, 'readonly', '2017-09-17 20:29:19', '2017-09-17 20:29:19'),
(515, 11, 5, 'readonly', '2017-09-17 20:29:19', '2017-09-17 20:29:19'),
(516, 11, 6, 'readonly', '2017-09-17 20:29:20', '2017-09-17 20:29:20'),
(517, 11, 7, 'readonly', '2017-09-17 20:29:20', '2017-09-17 20:29:20'),
(518, 11, 8, 'readonly', '2017-09-17 20:29:20', '2017-09-17 20:29:20'),
(519, 11, 9, 'readonly', '2017-09-17 20:29:20', '2017-09-17 20:29:20'),
(520, 11, 10, 'readonly', '2017-09-17 20:29:20', '2017-09-17 20:29:20'),
(521, 11, 11, 'readonly', '2017-09-17 20:29:20', '2017-09-17 20:29:20'),
(522, 11, 12, 'readonly', '2017-09-17 20:29:20', '2017-09-17 20:29:20'),
(523, 11, 13, 'readonly', '2017-09-17 20:29:20', '2017-09-17 20:29:20'),
(524, 11, 14, 'readonly', '2017-09-17 20:29:20', '2017-09-17 20:29:20'),
(525, 11, 15, 'readonly', '2017-09-17 20:29:20', '2017-09-17 20:29:20'),
(526, 11, 16, 'readonly', '2017-09-17 20:29:20', '2017-09-17 20:29:20'),
(527, 11, 17, 'readonly', '2017-09-17 20:29:20', '2017-09-17 20:29:20'),
(528, 11, 18, 'readonly', '2017-09-17 20:29:20', '2017-09-17 20:29:20'),
(529, 11, 19, 'readonly', '2017-09-17 20:29:20', '2017-09-17 20:29:20'),
(530, 11, 20, 'readonly', '2017-09-17 20:29:20', '2017-09-17 20:29:20'),
(531, 11, 21, 'readonly', '2017-09-17 20:29:20', '2017-09-17 20:29:20'),
(532, 11, 22, 'readonly', '2017-09-17 20:29:20', '2017-09-17 20:29:20'),
(533, 11, 23, 'readonly', '2017-09-17 20:29:20', '2017-09-17 20:29:20'),
(534, 11, 24, 'readonly', '2017-09-17 20:29:20', '2017-09-17 20:29:20'),
(535, 11, 25, 'readonly', '2017-09-17 20:29:20', '2017-09-17 20:29:20'),
(536, 11, 26, 'readonly', '2017-09-17 20:29:20', '2017-09-17 20:29:20'),
(537, 11, 27, 'readonly', '2017-09-17 20:29:20', '2017-09-17 20:29:20'),
(538, 11, 28, 'readonly', '2017-09-17 20:29:20', '2017-09-17 20:29:20'),
(539, 11, 29, 'readonly', '2017-09-17 20:29:20', '2017-09-17 20:29:20'),
(540, 11, 30, 'readonly', '2017-09-17 20:29:21', '2017-09-17 20:29:21'),
(541, 11, 31, 'readonly', '2017-09-17 20:29:21', '2017-09-17 20:29:21'),
(542, 11, 32, 'readonly', '2017-09-17 20:29:21', '2017-09-17 20:29:21'),
(543, 11, 33, 'readonly', '2017-09-17 20:29:21', '2017-09-17 20:29:21'),
(544, 11, 34, 'readonly', '2017-09-17 20:29:21', '2017-09-17 20:29:21'),
(559, 11, 49, 'readonly', '2017-09-17 20:29:22', '2017-09-17 20:29:22'),
(560, 11, 50, 'readonly', '2017-09-17 20:29:22', '2017-09-17 20:29:22'),
(561, 11, 51, 'readonly', '2017-09-17 20:29:22', '2017-09-17 20:29:22'),
(562, 1, 52, 'write', '2017-09-19 10:30:06', '2017-09-19 10:30:06'),
(563, 1, 53, 'write', '2017-09-19 10:30:37', '2017-09-19 10:30:37'),
(564, 1, 54, 'write', '2017-09-19 10:32:38', '2017-09-19 10:32:38'),
(565, 1, 55, 'write', '2017-09-19 10:33:20', '2017-09-19 10:33:20'),
(566, 1, 56, 'write', '2017-09-19 10:35:06', '2017-09-19 10:35:06'),
(567, 1, 57, 'write', '2017-09-19 10:36:14', '2017-09-19 10:36:14'),
(568, 1, 58, 'write', '2017-09-19 10:39:16', '2017-09-19 10:39:16'),
(569, 1, 59, 'write', '2017-09-19 10:39:51', '2017-09-19 10:39:51'),
(570, 1, 60, 'write', '2017-09-19 10:40:23', '2017-09-19 10:40:23'),
(571, 1, 61, 'write', '2017-09-19 10:43:52', '2017-09-19 10:43:52'),
(572, 1, 62, 'write', '2017-09-19 10:44:39', '2017-09-19 10:44:39'),
(573, 1, 63, 'write', '2017-09-19 10:46:02', '2017-09-19 10:46:02'),
(574, 1, 64, 'write', '2017-09-19 10:48:18', '2017-09-19 10:48:18'),
(575, 1, 65, 'write', '2017-09-19 10:51:54', '2017-09-19 10:51:54'),
(576, 1, 66, 'write', '2017-09-19 10:54:49', '2017-09-19 10:54:49'),
(577, 1, 67, 'write', '2017-09-19 10:56:38', '2017-09-19 10:56:38'),
(578, 1, 68, 'write', '2017-09-19 10:58:02', '2017-09-19 10:58:02'),
(579, 1, 69, 'write', '2017-09-19 11:07:53', '2017-09-19 11:07:53'),
(580, 1, 70, 'write', '2017-09-19 11:09:00', '2017-09-19 11:09:00'),
(581, 1, 71, 'write', '2017-09-19 11:10:17', '2017-09-19 11:10:17'),
(582, 1, 72, 'write', '2017-09-19 11:16:15', '2017-09-19 11:16:15'),
(583, 1, 73, 'write', '2017-09-19 11:18:11', '2017-09-19 11:18:11'),
(584, 1, 74, 'write', '2017-09-19 11:18:28', '2017-09-19 11:18:28'),
(585, 1, 75, 'write', '2017-09-19 11:20:24', '2017-09-19 11:20:24'),
(587, 1, 77, 'write', '2017-09-19 11:28:02', '2017-09-19 11:28:02'),
(588, 1, 78, 'write', '2017-09-19 11:52:51', '2017-09-19 11:52:51'),
(589, 1, 79, 'write', '2017-09-19 11:53:41', '2017-09-19 11:53:41'),
(590, 1, 80, 'write', '2017-09-19 11:54:15', '2017-09-19 11:54:15'),
(591, 1, 81, 'write', '2017-09-19 11:55:13', '2017-09-19 11:55:13'),
(592, 1, 82, 'write', '2017-09-19 11:55:58', '2017-09-19 11:55:58'),
(599, 1, 89, 'write', '2017-09-19 12:28:42', '2017-09-19 12:28:42'),
(600, 1, 90, 'write', '2017-09-19 12:29:52', '2017-09-19 12:29:52'),
(603, 1, 93, 'write', '2017-09-19 12:40:06', '2017-09-19 12:40:06'),
(604, 1, 94, 'write', '2017-09-19 12:41:59', '2017-09-19 12:41:59'),
(605, 1, 95, 'write', '2017-09-19 12:42:27', '2017-09-19 12:42:27'),
(606, 1, 96, 'write', '2017-09-19 12:42:42', '2017-09-19 12:42:42'),
(607, 1, 97, 'write', '2017-09-19 12:43:56', '2017-09-19 12:43:56'),
(614, 3, 52, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(615, 3, 53, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(616, 3, 59, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(617, 3, 58, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(618, 3, 60, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(619, 3, 54, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(620, 3, 55, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(621, 3, 56, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(622, 3, 57, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(623, 3, 61, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(624, 3, 62, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(625, 3, 63, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(626, 3, 64, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(627, 3, 65, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(628, 3, 66, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(629, 3, 67, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(630, 3, 68, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(631, 3, 72, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(632, 3, 89, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(633, 3, 90, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(634, 3, 69, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(635, 3, 70, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(636, 3, 71, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(637, 3, 73, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(638, 3, 74, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(639, 3, 75, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(640, 3, 77, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(641, 3, 78, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(642, 3, 79, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(643, 3, 80, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(644, 3, 81, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(645, 3, 82, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(654, 3, 93, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(655, 3, 94, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(656, 3, 95, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(657, 3, 96, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(658, 3, 97, 'write', '2017-10-25 23:53:55', '2017-10-25 23:53:55'),
(664, 1, 109, 'write', '2017-10-29 08:23:57', '2017-10-29 08:23:57'),
(665, 1, 110, 'write', '2017-10-29 08:24:34', '2017-10-29 08:24:34'),
(666, 1, 111, 'write', '2017-10-29 08:25:13', '2017-10-29 08:25:13'),
(667, 1, 112, 'write', '2017-10-29 08:26:24', '2017-10-29 08:26:24'),
(668, 1, 113, 'write', '2017-10-29 08:27:23', '2017-10-29 08:27:23'),
(669, 1, 114, 'write', '2017-10-29 08:27:56', '2017-10-29 08:27:56'),
(670, 1, 115, 'write', '2017-10-29 08:28:52', '2017-10-29 08:28:52'),
(671, 1, 116, 'write', '2017-10-29 08:29:24', '2017-10-29 08:29:24'),
(672, 1, 117, 'write', '2017-10-29 08:31:04', '2017-10-29 08:31:04'),
(673, 1, 118, 'write', '2017-10-29 08:31:39', '2017-10-29 08:31:39'),
(674, 1, 119, 'write', '2017-10-29 08:32:26', '2017-10-29 08:32:26'),
(675, 4, 52, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(676, 4, 53, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(677, 4, 59, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(678, 4, 58, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(679, 4, 60, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(680, 4, 54, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(681, 4, 55, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(682, 4, 56, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(683, 4, 57, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(684, 4, 61, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(685, 4, 62, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(686, 4, 63, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(687, 4, 64, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(688, 4, 65, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(689, 4, 66, 'invisible', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(690, 4, 67, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(691, 4, 68, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(692, 4, 72, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(693, 4, 89, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(694, 4, 90, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(695, 4, 69, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(696, 4, 70, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(697, 4, 71, 'invisible', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(698, 4, 73, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(699, 4, 74, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(700, 4, 75, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(701, 4, 77, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(702, 4, 78, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(703, 4, 79, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(704, 4, 80, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(705, 4, 81, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(706, 4, 82, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(707, 4, 93, 'invisible', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(708, 4, 94, 'invisible', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(709, 4, 95, 'invisible', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(710, 4, 96, 'invisible', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(711, 4, 97, 'invisible', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(712, 4, 109, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(713, 4, 110, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(714, 4, 111, 'invisible', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(715, 4, 112, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(716, 4, 113, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(717, 4, 114, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(718, 4, 115, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(719, 4, 116, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(720, 4, 117, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(721, 4, 118, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(722, 4, 119, 'write', '2017-11-02 17:42:19', '2017-11-02 17:42:19'),
(723, 1, 120, 'write', '2017-11-14 02:56:58', '2017-11-14 02:56:58'),
(724, 1, 121, 'write', '2017-11-14 02:57:43', '2017-11-14 02:57:43'),
(725, 1, 122, 'write', '2017-11-14 02:59:26', '2017-11-14 02:59:26'),
(726, 1, 123, 'write', '2017-11-14 03:01:30', '2017-11-14 03:01:30'),
(728, 1, 125, 'write', '2017-11-14 03:05:00', '2017-11-14 03:05:00'),
(729, 1, 126, 'write', '2017-11-14 03:08:04', '2017-11-14 03:08:04'),
(730, 1, 127, 'write', '2017-11-14 03:09:06', '2017-11-14 03:09:06'),
(731, 1, 128, 'write', '2017-11-14 03:09:32', '2017-11-14 03:09:32'),
(732, 1, 129, 'write', '2017-11-14 03:11:14', '2017-11-14 03:11:14'),
(733, 1, 130, 'write', '2017-11-14 03:17:28', '2017-11-14 03:17:28'),
(734, 1, 131, 'write', '2017-11-14 03:23:34', '2017-11-14 03:23:34'),
(735, 1, 132, 'write', '2017-11-14 03:24:17', '2017-11-14 03:24:17'),
(736, 1, 133, 'write', '2017-11-14 03:25:32', '2017-11-14 03:25:32'),
(737, 1, 134, 'write', '2017-11-14 03:26:08', '2017-11-14 03:26:08'),
(738, 1, 135, 'write', '2017-11-14 03:26:44', '2017-11-14 03:26:44'),
(739, 1, 136, 'write', '2017-11-14 03:27:24', '2017-11-14 03:27:24'),
(740, 1, 137, 'write', '2017-11-14 03:27:50', '2017-11-14 03:27:50'),
(741, 1, 138, 'write', '2017-11-14 03:28:24', '2017-11-14 03:28:24'),
(742, 1, 139, 'write', '2017-11-14 03:28:47', '2017-11-14 03:28:47'),
(743, 1, 140, 'write', '2017-11-14 03:53:29', '2017-11-14 03:53:29'),
(744, 1, 141, 'write', '2017-11-14 03:55:58', '2017-11-14 03:55:58'),
(745, 1, 142, 'write', '2017-11-14 04:05:38', '2017-11-14 04:05:38'),
(746, 1, 143, 'write', '2017-11-14 04:08:38', '2017-11-14 04:08:38'),
(747, 1, 144, 'write', '2017-11-14 04:11:22', '2017-11-14 04:11:22'),
(748, 1, 145, 'write', '2017-11-14 04:18:29', '2017-11-14 04:18:29'),
(749, 1, 146, 'write', '2017-11-14 04:19:26', '2017-11-14 04:19:26'),
(750, 1, 147, 'write', '2017-11-14 04:20:10', '2017-11-14 04:20:10'),
(751, 1, 148, 'write', '2017-11-14 04:22:00', '2017-11-14 04:22:00'),
(752, 1, 149, 'write', '2017-11-19 18:23:07', '2017-11-19 18:23:07'),
(753, 1, 150, 'write', '2017-11-20 21:26:19', '2017-11-20 21:26:19'),
(754, 2, 109, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(755, 2, 110, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(756, 2, 111, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(757, 2, 112, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(758, 2, 113, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(759, 2, 114, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(760, 2, 115, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(761, 2, 116, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(762, 2, 117, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(763, 2, 118, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(764, 2, 119, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(765, 2, 150, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(766, 3, 109, 'write', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(767, 3, 110, 'write', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(768, 3, 111, 'write', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(769, 3, 112, 'write', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(770, 3, 113, 'write', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(771, 3, 114, 'write', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(772, 3, 115, 'write', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(773, 3, 116, 'write', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(774, 3, 117, 'write', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(775, 3, 118, 'write', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(776, 3, 119, 'write', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(777, 3, 150, 'write', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(778, 4, 150, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(779, 5, 109, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(780, 5, 110, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(781, 5, 111, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(782, 5, 112, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(783, 5, 113, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(784, 5, 114, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(785, 5, 115, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(786, 5, 116, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(787, 5, 117, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(788, 5, 118, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(789, 5, 119, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(790, 5, 150, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(791, 6, 109, 'readonly', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(792, 6, 110, 'readonly', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(793, 6, 111, 'readonly', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(794, 6, 112, 'readonly', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(795, 6, 113, 'readonly', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(796, 6, 114, 'readonly', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(797, 6, 115, 'readonly', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(798, 6, 116, 'readonly', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(799, 6, 117, 'write', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(800, 6, 118, 'write', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(801, 6, 119, 'readonly', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(802, 6, 150, 'readonly', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(803, 7, 109, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(804, 7, 110, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(805, 7, 111, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(806, 7, 112, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(807, 7, 113, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(808, 7, 114, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(809, 7, 115, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(810, 7, 116, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(811, 7, 117, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(812, 7, 118, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(813, 7, 119, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(814, 7, 150, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(815, 10, 109, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(816, 10, 110, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(817, 10, 111, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(818, 10, 112, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(819, 10, 113, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(820, 10, 114, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(821, 10, 115, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(822, 10, 116, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(823, 10, 117, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(824, 10, 118, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(825, 10, 119, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(826, 10, 150, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(827, 11, 109, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(828, 11, 110, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(829, 11, 111, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(830, 11, 112, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(831, 11, 113, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(832, 11, 114, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(833, 11, 115, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(834, 11, 116, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(835, 11, 117, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(836, 11, 118, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(837, 11, 119, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(838, 11, 150, 'invisible', '2017-11-20 21:31:50', '2017-11-20 21:31:50'),
(839, 1, 151, 'write', '2017-11-22 16:04:13', '2017-11-22 16:04:13'),
(840, 1, 152, 'write', '2017-11-22 16:04:49', '2017-11-22 16:04:49'),
(841, 1, 153, 'write', '2017-11-22 16:05:27', '2017-11-22 16:05:27'),
(842, 1, 154, 'write', '2017-11-22 16:06:33', '2017-11-22 16:06:33'),
(843, 1, 155, 'write', '2017-11-22 16:13:50', '2017-11-22 16:13:50'),
(844, 1, 156, 'write', '2017-11-22 16:14:24', '2017-11-22 16:14:24'),
(845, 1, 157, 'write', '2017-11-22 16:15:37', '2017-11-22 16:15:37'),
(846, 1, 158, 'write', '2017-11-22 16:16:02', '2017-11-22 16:16:02'),
(847, 1, 159, 'write', '2017-11-22 16:21:17', '2017-11-22 16:21:17'),
(848, 1, 160, 'write', '2017-11-22 16:21:37', '2017-11-22 16:21:37'),
(849, 1, 161, 'write', '2017-11-22 16:22:38', '2017-11-22 16:22:38'),
(850, 1, 162, 'write', '2017-11-22 16:35:57', '2017-11-22 16:35:57'),
(851, 1, 163, 'write', '2017-11-22 16:40:39', '2017-11-22 16:40:39'),
(852, 1, 164, 'write', '2017-11-22 16:41:03', '2017-11-22 16:41:03'),
(853, 1, 165, 'write', '2017-11-22 16:45:44', '2017-11-22 16:45:44'),
(854, 1, 166, 'write', '2017-11-22 16:47:44', '2017-11-22 16:47:44'),
(855, 1, 167, 'write', '2017-11-22 16:48:37', '2017-11-22 16:48:37'),
(856, 1, 168, 'write', '2017-11-22 16:49:16', '2017-11-22 16:49:16'),
(857, 1, 169, 'write', '2017-11-22 16:50:23', '2017-11-22 16:50:23'),
(858, 1, 170, 'write', '2017-11-22 17:01:56', '2017-11-22 17:01:56'),
(859, 1, 171, 'write', '2017-11-22 17:02:28', '2017-11-22 17:02:28'),
(860, 1, 172, 'write', '2017-11-22 17:04:16', '2017-11-22 17:04:16'),
(861, 1, 173, 'write', '2017-11-22 17:05:14', '2017-11-22 17:05:14'),
(862, 1, 174, 'write', '2017-11-22 17:06:27', '2017-11-22 17:06:27'),
(863, 1, 175, 'write', '2017-11-22 17:42:17', '2017-11-22 17:42:17'),
(864, 1, 176, 'write', '2017-11-22 17:45:29', '2017-11-22 17:45:29'),
(865, 1, 177, 'write', '2017-11-22 17:47:06', '2017-11-22 17:47:06'),
(866, 1, 178, 'write', '2017-11-22 17:51:41', '2017-11-22 17:51:41'),
(867, 1, 179, 'write', '2017-11-22 17:52:16', '2017-11-22 17:52:16'),
(868, 1, 180, 'write', '2017-11-22 17:53:39', '2017-11-22 17:53:39'),
(869, 1, 181, 'write', '2017-11-22 17:54:09', '2017-11-22 17:54:09'),
(870, 1, 182, 'write', '2017-11-22 19:28:49', '2017-11-22 19:28:49'),
(871, 1, 183, 'write', '2017-11-22 20:28:59', '2017-11-22 20:28:59'),
(872, 1, 184, 'write', '2017-11-22 20:33:24', '2017-11-22 20:33:24'),
(873, 1, 185, 'write', '2017-11-22 20:34:08', '2017-11-22 20:34:08'),
(874, 1, 186, 'write', '2017-11-22 20:35:01', '2017-11-22 20:35:01'),
(875, 1, 187, 'write', '2017-11-22 20:35:36', '2017-11-22 20:35:36'),
(876, 1, 188, 'write', '2017-11-22 20:38:07', '2017-11-22 20:38:07'),
(877, 1, 189, 'write', '2017-11-22 20:40:10', '2017-11-22 20:40:10'),
(878, 1, 190, 'write', '2017-11-22 20:41:08', '2017-11-22 20:41:08'),
(879, 3, 149, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(880, 3, 120, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(881, 3, 121, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(882, 3, 122, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(883, 3, 123, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(884, 3, 125, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(885, 3, 126, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(886, 3, 127, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(887, 3, 128, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(888, 3, 129, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(889, 3, 130, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(890, 3, 131, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(891, 3, 132, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(892, 3, 133, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(893, 3, 134, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(894, 3, 135, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(895, 3, 136, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(896, 3, 137, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(897, 3, 138, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(898, 3, 139, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(899, 3, 140, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(900, 3, 144, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(901, 3, 141, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(902, 3, 142, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(903, 3, 183, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(904, 3, 143, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(905, 3, 145, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(906, 3, 146, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50');
INSERT INTO `role_module_fields` (`id`, `role_id`, `field_id`, `access`, `created_at`, `updated_at`) VALUES
(907, 3, 147, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(908, 3, 148, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(909, 3, 151, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(910, 3, 152, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(911, 3, 153, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(912, 3, 154, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(913, 3, 155, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(914, 3, 156, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(915, 3, 157, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(916, 3, 158, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(917, 3, 159, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(918, 3, 160, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(919, 3, 161, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(920, 3, 162, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(921, 3, 163, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(922, 3, 164, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(923, 3, 165, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(924, 3, 166, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(925, 3, 167, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(926, 3, 168, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(927, 3, 169, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(928, 3, 170, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(929, 3, 171, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(930, 3, 172, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(931, 3, 173, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(932, 3, 174, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(933, 3, 182, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(934, 3, 175, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(935, 3, 176, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(936, 3, 177, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(937, 3, 178, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(938, 3, 179, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(939, 3, 180, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(940, 3, 181, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(941, 3, 184, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(942, 3, 185, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(943, 3, 186, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(944, 3, 187, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(945, 3, 188, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(946, 3, 189, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(947, 3, 190, 'write', '2017-11-23 11:29:50', '2017-11-23 11:29:50'),
(948, 6, 52, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(949, 6, 53, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(950, 6, 59, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(951, 6, 58, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(952, 6, 60, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(953, 6, 54, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(954, 6, 55, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(955, 6, 56, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(956, 6, 57, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(957, 6, 61, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(958, 6, 62, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(959, 6, 63, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(960, 6, 64, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(961, 6, 65, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(962, 6, 66, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(963, 6, 67, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(964, 6, 68, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(965, 6, 72, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(966, 6, 89, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(967, 6, 90, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(968, 6, 149, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(969, 6, 69, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(970, 6, 70, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(971, 6, 71, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(972, 6, 73, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(973, 6, 74, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(974, 6, 75, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(975, 6, 77, 'readonly', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(976, 6, 78, 'readonly', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(977, 6, 79, 'readonly', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(978, 6, 80, 'readonly', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(979, 6, 81, 'readonly', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(980, 6, 82, 'readonly', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(981, 6, 93, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(982, 6, 94, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(983, 6, 95, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(984, 6, 96, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(985, 6, 97, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(986, 6, 120, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(987, 6, 121, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(988, 6, 122, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(989, 6, 123, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(990, 6, 125, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(991, 6, 126, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(992, 6, 127, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(993, 6, 128, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(994, 6, 129, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(995, 6, 130, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(996, 6, 131, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(997, 6, 132, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(998, 6, 133, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(999, 6, 134, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1000, 6, 135, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1001, 6, 136, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1002, 6, 137, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1003, 6, 138, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1004, 6, 139, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1005, 6, 140, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1006, 6, 144, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1007, 6, 141, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1008, 6, 142, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1009, 6, 183, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1010, 6, 143, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1011, 6, 145, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1012, 6, 146, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1013, 6, 147, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1014, 6, 148, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1015, 6, 151, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1016, 6, 152, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1017, 6, 153, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1018, 6, 154, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1019, 6, 155, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1020, 6, 156, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1021, 6, 157, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1022, 6, 158, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1023, 6, 159, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1024, 6, 160, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1025, 6, 161, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1026, 6, 162, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1027, 6, 163, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1028, 6, 164, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1029, 6, 165, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1030, 6, 166, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1031, 6, 167, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1032, 6, 168, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1033, 6, 169, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1034, 6, 170, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1035, 6, 171, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1036, 6, 172, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1037, 6, 173, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1038, 6, 174, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1039, 6, 182, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1040, 6, 175, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1041, 6, 176, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1042, 6, 177, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1043, 6, 178, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1044, 6, 179, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1045, 6, 180, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1046, 6, 181, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1047, 6, 184, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1048, 6, 185, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1049, 6, 186, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1050, 6, 187, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1051, 6, 188, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1052, 6, 189, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1053, 6, 190, 'invisible', '2017-12-09 14:00:39', '2017-12-09 14:00:39'),
(1054, 4, 149, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1055, 4, 120, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1056, 4, 121, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1057, 4, 122, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1058, 4, 123, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1059, 4, 125, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1060, 4, 126, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1061, 4, 127, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1062, 4, 128, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1063, 4, 129, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1064, 4, 130, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1065, 4, 131, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1066, 4, 132, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1067, 4, 133, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1068, 4, 134, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1069, 4, 135, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1070, 4, 136, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1071, 4, 137, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1072, 4, 138, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1073, 4, 139, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1074, 4, 140, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1075, 4, 144, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1076, 4, 141, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1077, 4, 142, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1078, 4, 183, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1079, 4, 143, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1080, 4, 145, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1081, 4, 146, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1082, 4, 147, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1083, 4, 148, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1084, 4, 151, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1085, 4, 152, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1086, 4, 153, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1087, 4, 154, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1088, 4, 155, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1089, 4, 156, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1090, 4, 157, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1091, 4, 158, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1092, 4, 159, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1093, 4, 160, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1094, 4, 161, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1095, 4, 162, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1096, 4, 163, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1097, 4, 164, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1098, 4, 165, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1099, 4, 166, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1100, 4, 167, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1101, 4, 168, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1102, 4, 169, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1103, 4, 170, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1104, 4, 171, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1105, 4, 172, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1106, 4, 173, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1107, 4, 174, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1108, 4, 182, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1109, 4, 175, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1110, 4, 176, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1111, 4, 177, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1112, 4, 178, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1113, 4, 179, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1114, 4, 180, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1115, 4, 181, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1116, 4, 184, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1117, 4, 185, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1118, 4, 186, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1119, 4, 187, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1120, 4, 188, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1121, 4, 189, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38'),
(1122, 4, 190, 'invisible', '2017-12-11 10:03:38', '2017-12-11 10:03:38');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 3, 2, NULL, NULL),
(3, 4, 3, NULL, NULL),
(4, 4, 4, NULL, NULL),
(5, 4, 5, NULL, NULL),
(6, 4, 6, NULL, NULL),
(9, 6, 11, NULL, NULL),
(10, 6, 12, NULL, NULL),
(11, 6, 13, NULL, NULL),
(13, 6, 15, NULL, NULL),
(14, 6, 16, NULL, NULL),
(15, 6, 17, NULL, NULL),
(16, 6, 18, NULL, NULL),
(17, 6, 19, NULL, NULL),
(18, 6, 20, NULL, NULL),
(19, 6, 21, NULL, NULL),
(20, 6, 22, NULL, NULL),
(21, 6, 23, NULL, NULL),
(22, 4, 24, NULL, NULL),
(23, 4, 25, NULL, NULL),
(24, 6, 26, NULL, NULL),
(27, 6, 14, NULL, NULL),
(28, 1, 1, NULL, NULL),
(29, 4, 27, NULL, NULL),
(30, 4, 28, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_rentals`
--

CREATE TABLE `sub_rentals` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rentalName` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rentalAddress` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phoneNumber` varchar(11) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mobileNumber` varchar(13) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `directureName` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `rentalEmail` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `kecamatan` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `postalCode` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_rentals`
--

INSERT INTO `sub_rentals` (`id`, `deleted_at`, `created_at`, `updated_at`, `rentalName`, `rentalAddress`, `phoneNumber`, `mobileNumber`, `directureName`, `rentalEmail`, `kecamatan`, `city`, `postalCode`) VALUES
(1, NULL, '2017-09-19 10:38:04', '2017-11-07 03:57:26', 'Maestro', 'Jalan Manggar', '0333678958', '085123456789', 'Bejos', 'bejo@mail.com', 'Sumbersari', 'Jember', 68121),
(2, NULL, '2017-09-19 11:01:36', '2017-09-19 11:01:36', 'Gund Rock', 'Jalan Langsep 3 ', '0333678958', '085123456789', 'Bagus', 'bagus@mail.com', 'Patrang', 'Jember', 68118),
(4, NULL, '2017-11-02 17:08:55', '2017-11-02 17:08:55', 'Trajekline', 'Jalan Kebonsari', '08534567762', '08123456789', 'Larry Hardika', 'trajekline@gmail.com', 'Kebonsari', 'Jember', 68112),
(6, NULL, '2017-11-02 17:17:32', '2017-11-02 17:17:32', 'Lorena', 'Jalan basuki cahya purnama', '08123463151', '081234631511', 'Surbandi Joyo Diningrat', 'lorena@mail.com', 'Sumbersari', 'Jember', 68121),
(7, NULL, '2017-12-10 12:34:08', '2017-12-10 12:45:27', 'Pandawa', 'Jl. Panji Suroso 20 A, Malang - Jatim', '0341 496982', '082129185015', 'H.Gunawan Agung Aprilianto, SE', 'info@pandawa87.com', 'Sumberejo', 'Malang', 34987),
(8, NULL, '2017-12-10 12:40:51', '2017-12-10 12:40:51', 'Rosalia Indah Transport', 'Jl. Sumatera, Malang - Jawa Timur', '0271 825173', '085346765897', 'Teguh Adiyatma', 'cs@rosalia-indah.co.id', 'Singosari', 'Malang', 34987),
(9, '2017-12-10 22:56:24', '2017-12-10 22:45:37', '2017-12-10 22:56:24', 'a', 'a', '213', '123', '12', 'sd@asd', 'a', 'Jember', 33423),
(10, '2017-12-10 23:07:06', '2017-12-10 23:06:46', '2017-12-10 23:07:06', 'Maestro', 'a', 'a', '1', '1', '1@a', 'a', 'Jember', 12344);

-- --------------------------------------------------------

--
-- Table structure for table `sub_rental_mobils`
--

CREATE TABLE `sub_rental_mobils` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nameCars` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `years` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tnkb` varchar(9) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `carsType` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `carsClass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `owner` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `image` int(11) NOT NULL DEFAULT 1,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capacity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_rental_mobils`
--

INSERT INTO `sub_rental_mobils` (`id`, `deleted_at`, `created_at`, `updated_at`, `nameCars`, `years`, `tnkb`, `carsType`, `carsClass`, `owner`, `image`, `description`, `status`, `capacity`, `price`, `city`) VALUES
(1, NULL, '2017-09-19 11:03:22', '2017-12-09 14:56:40', 'Xenia', 2015, 'P 6544 XZ', 'none', 'MPV & SUV', 1, 7, 'Kondisi mobil masih bagus', 'Tersedia', 6, 350000, 'Jember'),
(2, NULL, '2017-10-02 21:48:18', '2017-11-22 19:53:39', 'Brio', 2016, 'P 657 US', 'none', 'MPV & SUV', 2, 5, 'baru', 'Tersedia', 4, 239996, 'Jember'),
(3, NULL, '2017-10-12 00:57:57', '2017-11-21 19:06:06', 'Ayla', 2015, 'P 1213 X', 'none', 'MPV & SUV', 2, 6, 'Kondisi bagus gan', 'Tersedia', 4, 250000, 'Jember'),
(4, NULL, '2017-10-25 23:21:34', '2017-11-21 07:42:21', 'Avansa', 2016, 'P 1234 NN', 'none', 'MPV & SUV', 2, 9, 'Baru gan bisa dipesan sekarang', 'Tersedia', 6, 275000, 'Jember'),
(5, NULL, '2017-10-25 23:25:24', '2017-12-09 14:55:05', 'Audi', 2015, 'P 109 VC', 'x5rt7', 'MPV & SUV', 1, 8, 'Kondisi mobil sangat bagus', 'Tersedia', 4, 350000, 'Jember'),
(6, NULL, '2017-11-07 01:17:53', '2017-12-11 20:55:56', 'Xenia', 2015, 'P 344 WW', 'e90', 'MPV & SUV', 4, 2, 'Mobil bagus banget', 'Jalan', 6, 350000, 'Jember'),
(9, NULL, '2017-11-07 01:39:37', '2017-12-09 15:32:13', 'Ayla View', 2052, 'P 234 DD', 'u89', 'MPV & SUV', 4, 4, 'Mobil bagus, suspensi nyaman, siap untuk jalan jalan ', 'Tersedia', 4, 300000, 'Jember'),
(10, NULL, '2017-11-07 04:20:39', '2017-12-09 15:31:53', 'Jazz', 2016, 'DK 908 IA', 'u89', 'MPV & SUV', 2, 10, 'Honda jazz kinyis - kinyis ready ', 'Tersedia', 4, 275000, 'Jember'),
(13, NULL, '2017-12-09 13:21:28', '2017-12-09 13:21:28', 'Fortuner', 2017, 'P 3489 CX', 'as88', 'MPV & SUV', 1, 13, 'Ini adalah mobil paling cocok untuk keluarga dan untuk travelling di medan yang extrim', 'Tersedia', 6, 600000, ''),
(14, NULL, '2017-12-09 13:22:39', '2017-12-09 13:22:39', 'Honda Crz', 2016, ' P 668 QQ', '6yu7', 'MPV & SUV', 1, 14, 'Mobil sangat bagus sekali untuk anda yang ingin bepergian atau untuk jalan jalan bersama pasangan atau keluarga', 'Tersedia', 4, 500000, ''),
(15, NULL, '2017-12-09 15:08:22', '2017-12-09 15:08:22', 'Atoz', 2007, 'P 672 LK', 'glx', 'MPV & SUV', 1, 15, 'Kondisi masih bagus, cocok untuk keluarga yang akan pergi ke segala daerah, bahkan pelosokan', 'Tersedia', 6, 325000, 'Jember'),
(16, NULL, '2017-12-09 15:13:10', '2017-12-09 15:14:27', 'Sirion', 2008, 'P 1221 KK', 'FMC AT', 'City cars & Sports', 2, 16, 'City car terbaik untuk berkendara, dilengkapi dengan parking sensor', 'Tersedia', 4, 500000, 'Jember'),
(17, NULL, '2017-12-09 15:17:43', '2017-12-09 15:17:43', 'Ertiga', 2012, 'P 541 DG', 'Dreza MT', 'MPV & SUV', 4, 17, 'Mobil dalam kondisi mulus, cocok untuk keluarga', 'Tersedia', 6, 300000, 'Jember'),
(18, NULL, '2017-12-09 15:22:49', '2017-12-09 15:23:23', 'Honda-BR-V', 2015, 'P 632 GG', 'E CVT', 'MPV & SUV', 6, 18, 'Kondisi mobil Bagus', 'Tersedia', 4, 400000, 'Jember'),
(19, NULL, '2017-12-09 15:27:34', '2017-12-11 09:48:32', 'Suzuki SX4', 2008, 'P 789 SA', 'Crossover', 'MPV & SUV', 1, 19, 'Kondisi mobil bagus, dapat diandalkan di segala medan', 'Jalan', 4, 350000, 'Jember'),
(20, NULL, '2017-12-09 15:30:04', '2017-12-11 08:59:10', 'Suzuki Splash', 2009, 'P 923 JK', 'AT', 'MPV & SUV', 2, 20, 'Kondisi masih bagus, cocok untuk dibawa kemana aja', 'Tersedia', 4, 450000, 'Jember'),
(21, NULL, '2017-12-09 16:49:54', '2017-12-09 16:57:50', 'Honda Coopen', 2008, 'P 6565 XZ', 'none', 'City cars & Sports', 2, 21, 'Kondisi Bagus', 'Tersedia', 2, 900000, 'Jember'),
(22, NULL, '2017-12-09 16:53:00', '2017-12-11 08:58:55', 'Honda NSX', 2016, 'P 787 IF', 'NC1', 'City cars & Sports', 6, 22, 'kondisi tidak perlu diragukan', 'Tersedia', 2, 900000, 'Jember'),
(23, NULL, '2017-12-09 16:56:28', '2017-12-09 16:56:28', 'BMW ', 2016, 'P 555 VV', 'I8', 'City cars & Sports', 1, 23, 'Kondisi masih baru, cocok untuk pamer ke calon mertua', 'Tersedia', 2, 950000, 'Jember'),
(24, NULL, '2017-12-09 17:00:51', '2017-12-09 17:00:51', 'Honda CR-Z', 2016, 'P 7652 LS', 'CVT', 'City cars & Sports', 4, 24, 'Kondisi masih mulus, bebas gores', 'Tersedia', 2, 950000, 'Jember'),
(25, NULL, '2017-12-09 17:14:14', '2017-12-09 17:14:14', 'Volkswagen Beetle', 1967, 'L 5669 LZ', 'none', 'Klasik', 2, 25, 'Kondisi bagus, cocok untuk pendukung background fotografi', 'Tersedia', 2, 1200000, 'Surabaya'),
(26, NULL, '2017-12-10 12:47:27', '2017-12-10 12:47:27', 'Mercedes Benz', 2008, 'N 7751 UW', 'OH 1626', 'Bus', 7, 26, 'Masih bagus ', 'Tersedia', 41, 4000000, 'Malang'),
(27, NULL, '2017-12-10 12:52:39', '2017-12-10 12:54:47', 'Mercedes Benz', 2008, 'N 7571 ZA', 'OH 1626', 'Bus', 7, 28, 'Siap Jalan', 'Tersedia', 46, 4500000, 'Malang'),
(28, NULL, '2017-12-10 12:54:24', '2017-12-10 12:54:24', 'Mercedes Benz', 2015, 'N 2704 MR', 'SHD', 'Bus', 7, 27, 'Sangat Bagus', 'Tersedia', 48, 5500000, 'Malang'),
(29, NULL, '2017-12-10 12:55:48', '2017-12-10 12:55:48', 'Mercedes Benz', 2008, 'N 1104 RA', 'OH 1626', 'Bus', 7, 29, 'Layak Jalan', 'Tersedia', 59, 5000000, 'Malang'),
(30, NULL, '2017-12-10 12:57:43', '2017-12-10 22:24:19', 'Mercedes Benz', 2009, 'N 0996 AN', 'none', 'Bus', 8, 30, 'Baik', 'Tersedia', 23, 4000000, 'Malang'),
(31, NULL, '2017-12-10 12:59:24', '2017-12-10 12:59:24', 'Scania', 2017, 'N 2207 SK', 'K350', 'Bus', 8, 31, 'Sangat Bagus', 'Tersedia', 23, 5600000, 'Malang'),
(32, NULL, '2017-12-10 13:00:39', '2017-12-10 13:00:39', 'Scania', 2017, 'N 7592 ZA', 'K360', 'Bus', 8, 32, 'Sangat Bagus', 'Tersedia', 34, 6000000, 'Malang'),
(33, '2017-12-10 23:42:31', '2017-12-10 23:41:55', '2017-12-10 23:42:31', 'a', 1234, 'avghj', '111', 'MPV & SUV', 1, 3, 'wer', 'Tersedia', 456, 122344, 'Jember');

-- --------------------------------------------------------

--
-- Table structure for table `sub_rental_surveyers`
--

CREATE TABLE `sub_rental_surveyers` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `surveyerName` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `surveyerAddress` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subRental` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `phoneNumber` varchar(13) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_rental_surveyers`
--

INSERT INTO `sub_rental_surveyers` (`id`, `deleted_at`, `created_at`, `updated_at`, `surveyerName`, `surveyerAddress`, `subRental`, `phoneNumber`, `email`, `status`) VALUES
(1, NULL, '2017-10-12 01:03:07', '2017-12-09 13:36:30', 'Fajar Rizky', 'Jalan Buntu nomor 5 Jember', 1, '082345678111', 'fajar@gmail.com', 'tersedia'),
(7, NULL, '2017-12-09 13:55:15', '2017-12-09 13:55:15', 'Anggy Yolanda', 'Jalan semeru gang 13 nomor 12', 1, '085704170077', 'anggyyolanda07@gmail.com', 'tersedia'),
(8, NULL, '2017-12-09 14:13:22', '2017-12-09 14:13:41', 'Nasyihen Ainun Najib', 'Jalan Mawar No 1', 1, '085642134521', 'nasyihen@mail.com', 'tersedia'),
(9, NULL, '2017-12-09 14:14:31', '2017-12-09 14:14:31', 'Andika Widiarso', 'Jalan Jawa Vi No 134', 2, '089765234123', 'andika@mail.com', 'tersedia'),
(10, NULL, '2017-12-09 14:15:58', '2017-12-09 14:15:58', 'Dwi Andika Febrianto', 'Jalan Sumatran Gang 2 No 24', 4, '081234567123', 'dwi@mail.com', 'tersedia'),
(11, NULL, '2017-12-09 14:16:45', '2017-12-09 14:16:45', 'Nafta Ryandika', 'Jalan Bangka No 2', 6, '085423123567', 'nafta@mail.com', 'tersedia'),
(12, NULL, '2017-12-09 14:18:01', '2017-12-09 14:18:01', 'Bimantara S.O', 'Jalan Melati No 789', 1, '082340222145', 'bima@mail.com', 'tersedia'),
(13, NULL, '2017-12-09 14:20:26', '2017-12-09 14:20:26', 'Dimas Arifianto', 'Jalan Diponegoro  No 56', 2, '087543672145', 'dimas@mail.com', 'tersedia'),
(14, NULL, '2017-12-09 14:22:22', '2017-12-09 14:22:22', 'Septian Nanda Perdana', 'Jalan Jawa III No 42', 4, '082340212567', 'septian@mail.com', 'tersedia'),
(15, NULL, '2017-12-09 14:23:24', '2017-12-09 14:23:24', 'Bagus Ananda Permana', 'Jalan Semeru No 521', 6, '089765431890', 'bagus@mail.com', 'tersedia'),
(16, '2017-12-09 14:26:48', '2017-12-09 14:23:45', '2017-12-09 14:26:48', 'Bagus Ananda Permana', 'Jalan Semeru No 521', 6, '089765431890', 'bagus@mail.com', 'tersedia'),
(17, '2017-12-09 14:26:38', '2017-12-09 14:24:07', '2017-12-09 14:26:38', 'Bagus Ananda Permana', 'Jalan Semeru No 521', 6, '089765431890', 'bagus65@mail.com', 'tersedia'),
(18, NULL, '2017-12-09 14:26:24', '2017-12-09 14:26:24', 'Riski Fernanda', 'Jalan Sudarman No 32', 1, '082314451245', 'riski@mail.com', 'tersedia'),
(19, NULL, '2017-12-09 14:28:13', '2017-12-09 14:28:13', 'Reinaldi Ananda Putra', 'Jalan Soerodji No 167', 2, '082345612789', 'reinaldi@mail.com', 'tersedia'),
(20, NULL, '2017-12-09 14:29:53', '2017-12-09 14:29:53', 'Adam Kevin', 'Jalan Suirman No 45', 4, '081234123765', 'adam@mail.com', 'tersedia'),
(21, NULL, '2017-12-09 14:31:49', '2017-12-09 14:31:49', 'Rizki Rahmat Hidayat', 'Jalan Srikoyo No 241', 6, '082134561278', 'hidayat@mail.com', 'tersedia'),
(22, NULL, '2017-12-10 16:47:56', '2017-12-10 16:47:56', 'Ahmad Bastomi', 'Jalan Brantas 237 B', 1, '089767336727', 'bastomi@gmail.com', 'tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `sub_travels`
--

CREATE TABLE `sub_travels` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `companyName` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `kecamatan` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `postalCode` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `phoneNumber` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `mobileNumber` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `directureName` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_travels`
--

INSERT INTO `sub_travels` (`id`, `deleted_at`, `created_at`, `updated_at`, `companyName`, `address`, `city`, `kecamatan`, `postalCode`, `phoneNumber`, `mobileNumber`, `directureName`, `email`) VALUES
(1, NULL, '2017-11-14 11:53:27', '2017-11-14 11:53:27', 'Trajekline', 'Jalan Kebonsari', 'Jember', 'Kebonsari', 68122, '081235647171', '081312917271', 'Jumeno', 'jumeno@mail.com');

-- --------------------------------------------------------

--
-- Table structure for table `sub_travel_mobils`
--

CREATE TABLE `sub_travel_mobils` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `merkMobil` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capacity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `jamBerangkat` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `asal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `freeFood` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `garage` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `harga` double(15,2) NOT NULL DEFAULT 0.00,
  `owner` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `passengger` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_travel_mobils`
--

INSERT INTO `sub_travel_mobils` (`id`, `deleted_at`, `created_at`, `updated_at`, `merkMobil`, `destination`, `capacity`, `jamBerangkat`, `asal`, `freeFood`, `garage`, `harga`, `owner`, `passengger`) VALUES
(2, NULL, '2017-11-20 19:51:42', '2017-11-20 19:51:42', 'Ertiga', 'Jember', 6, '2017-11-20 00:00:00', 'Jember', 'ya', 100, 375000.00, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `surveyers`
--

CREATE TABLE `surveyers` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `surveyerName` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `phoneNumber` varchar(13) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `surveyers`
--

INSERT INTO `surveyers` (`id`, `deleted_at`, `created_at`, `updated_at`, `surveyerName`, `address`, `phoneNumber`, `email`, `status`) VALUES
(1, NULL, '2017-10-25 23:47:37', '2017-10-28 05:17:22', 'Basori', 'Jalan buntu', '081234567890', 'basori@gmail.com', 'tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_rentals`
--

CREATE TABLE `transaksi_rentals` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kode` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bookingCode` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `invoice` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `payment` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'transfer',
  `mobilout` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'tidak',
  `tglout` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mobilin` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'belum',
  `tglin` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `punishment` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transaksi_rentals`
--

INSERT INTO `transaksi_rentals` (`id`, `deleted_at`, `created_at`, `updated_at`, `kode`, `bookingCode`, `invoice`, `payment`, `mobilout`, `tglout`, `mobilin`, `tglin`, `punishment`, `status`) VALUES
(17, NULL, '2017-11-23 11:35:41', '2017-11-23 11:35:41', '691', 32, 700000, 'transfer', 'tidak', '0000-00-00 00:00:00', 'belum', '0000-00-00 00:00:00', 0, 'pending'),
(18, NULL, '2017-11-23 11:45:49', '2017-11-23 11:45:49', '409', 33, 550000, 'transfer', 'tidak', '0000-00-00 00:00:00', 'belum', '0000-00-00 00:00:00', 0, 'pending'),
(19, NULL, '2017-11-23 12:00:45', '2017-11-23 12:00:45', '765', 34, 600000, 'transfer', 'tidak', '0000-00-00 00:00:00', 'belum', '0000-00-00 00:00:00', 0, 'pending'),
(20, NULL, '2017-11-23 12:02:19', '2017-11-23 12:02:19', '268', 35, 700000, 'transfer', 'tidak', '0000-00-00 00:00:00', 'belum', '0000-00-00 00:00:00', 0, 'pending'),
(21, NULL, '2017-12-09 10:40:55', '2017-12-09 10:40:55', '409', 36, 1400000, 'transfer', 'tidak', '0000-00-00 00:00:00', 'belum', '0000-00-00 00:00:00', 0, 'pending'),
(22, NULL, '2017-12-09 16:02:06', '2017-12-09 16:02:06', '121', 37, 1800000, 'transfer', 'tidak', '0000-00-00 00:00:00', 'belum', '0000-00-00 00:00:00', 0, 'pending'),
(23, NULL, '2017-12-10 22:12:23', '2017-12-10 22:23:00', '703', 38, 4000000, 'transfer', 'ya', '2017-12-11 00:00:00', 'sudah', '2017-12-11 23:00:00', 0, 'selesai'),
(24, NULL, '2017-12-10 22:26:13', '2017-12-10 22:26:13', '957', 39, 1800000, 'transfer', 'tidak', '0000-00-00 00:00:00', 'belum', '0000-00-00 00:00:00', 0, 'pending'),
(25, NULL, '2017-12-11 09:48:32', '2017-12-11 09:54:53', '165', 41, 1400000, 'transfer', 'tidak', '2017-12-17 00:00:00', 'belum', '2001-11-30 00:00:00', 0, 'pending'),
(26, NULL, '2017-12-11 20:55:56', '2017-12-11 20:55:56', '529', 42, 700000, 'transfer', 'tidak', '0000-00-00 00:00:00', 'belum', '0000-00-00 00:00:00', 0, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_travels`
--

CREATE TABLE `transaksi_travels` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bookingCode` varchar(7) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `kode` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `confirm` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `travel` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `customerName` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_wisatas`
--

CREATE TABLE `transaksi_wisatas` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bookingCode` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `kode` int(10) UNSIGNED NOT NULL,
  `confirm` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `wisata` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `customerName` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `extension` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `caption` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `hash` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `name`, `path`, `extension`, `caption`, `user_id`, `hash`, `public`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'header.jpg', '/home/ijlik/PhpstormProjects/gund-rock/storage/uploads/2017-10-26-062422-header.jpg', 'jpg', '', 1, 'bvtwayjgtpmbdlm36jjy', 1, '2017-11-09 00:29:49', '2017-10-25 23:24:22', '2017-11-09 00:29:49'),
(2, 'DaihatsuXenia10White.JPG', '/home/tukang/gund-rock/storage/uploads/2017-11-07-011723-DaihatsuXenia10White.JPG', 'JPG', '', 3, 'nahcybytzbmnz8i4zqcs', 1, NULL, '2017-11-07 01:17:23', '2017-11-09 00:30:19'),
(3, '23936-over-credit-mobil-ayla-x-elegant-2015-img-20170219-121206.jpg', '/home/tukang/gund-rock/storage/uploads/2017-11-07-012235-23936-over-credit-mobil-ayla-x-elegant-2015-img-20170219-121206.jpg', 'jpg', '', 3, 'uu7kv9b1iojrofszntb6', 1, NULL, '2017-11-07 01:22:35', '2017-11-09 00:30:47'),
(4, '23936-over-credit-mobil-ayla-x-elegant-2015-img-20170219-121206.jpg', '/home/tukang/gund-rock/storage/uploads/2017-11-07-012751-23936-over-credit-mobil-ayla-x-elegant-2015-img-20170219-121206.jpg', 'jpg', '', 3, 'lmx0qxiwhannjme1nise', 1, NULL, '2017-11-07 01:27:51', '2017-11-07 01:27:51'),
(5, 'Honda_Brio_S_1.3_-_Front_view_-_February_2_2014.jpg', '/home/tukang/gund-rock/storage/uploads/2017-11-07-033858-Honda_Brio_S_1.3_-_Front_view_-_February_2_2014.jpg', 'jpg', '', 1, 'x56eyrxnns5l6tjijp8j', 1, NULL, '2017-11-07 03:38:58', '2017-11-07 03:38:58'),
(6, '7.png', '/home/tukang/gund-rock/storage/uploads/2017-11-07-033935-7.png', 'png', '', 1, 'omx8o8k04mydqzgd2pjj', 1, NULL, '2017-11-07 03:39:35', '2017-11-09 00:30:59'),
(7, '7 (1).png', '/home/tukang/gund-rock/storage/uploads/2017-11-07-034042-7 (1).png', 'png', '', 1, 'ccdoaokpq5wdlzec7aml', 1, NULL, '2017-11-07 03:40:42', '2017-11-09 00:30:50'),
(8, 'A4-Avant-xlarge.jpg', '/home/tukang/gund-rock/storage/uploads/2017-11-07-034137-A4-Avant-xlarge.jpg', 'jpg', '', 1, 'o0pluwd5pl17jmn4ojql', 1, NULL, '2017-11-07 03:41:37', '2017-11-07 03:41:37'),
(9, 'modifikasi-mobil-toyota-avanza-dengan-body-kit-mobil-baru-2016-1511792.jpg', '/home/tukang/gund-rock/storage/uploads/2017-11-07-034455-modifikasi-mobil-toyota-avanza-dengan-body-kit-mobil-baru-2016-1511792.jpg', 'jpg', '', 1, 'dr521okrqud6esz5qhnn', 1, NULL, '2017-11-07 03:44:55', '2017-11-07 03:44:55'),
(10, 'Harga-Bekas-Honda-Jazz.jpg', '/home/tukang/gund-rock/storage/uploads/2017-11-07-042005-Harga-Bekas-Honda-Jazz.jpg', 'jpg', '', 6, 'kchennc7zfbrjheo5yyf', 1, NULL, '2017-11-07 04:20:05', '2017-11-07 04:20:05'),
(13, 'eksterior-toyota-fortuner-4wd-2016-indonesia.jpg', '/home/tukang/gund-rock/storage/uploads/2017-12-09-132100-eksterior-toyota-fortuner-4wd-2016-indonesia.jpg', 'jpg', '', 5, 'mcjmpaizzmai6p9wurdb', 1, NULL, '2017-12-09 13:21:00', '2017-12-09 13:21:00'),
(14, 'mobil-sport-murah.jpg', '/home/tukang/gund-rock/storage/uploads/2017-12-09-132211-mobil-sport-murah.jpg', 'jpg', '', 5, 'zyc2mwda3bhjkk39exen', 1, NULL, '2017-12-09 13:22:11', '2017-12-09 13:22:11'),
(15, 'atos.jpg', '/home/tukang/gund-rock/storage/uploads/2017-12-09-150650-atos.jpg', 'jpg', '', 1, 'c24r6tq9gyyt1gdqmuzy', 0, NULL, '2017-12-09 15:06:50', '2017-12-09 15:06:50'),
(16, 'daihatsu sirion.png', '/home/tukang/gund-rock/storage/uploads/2017-12-09-151407-daihatsu sirion.png', 'png', '', 1, 'ia29wcfbpjvirs8qw91u', 0, NULL, '2017-12-09 15:14:07', '2017-12-09 15:14:07'),
(17, 'Ertiga.png', '/home/tukang/gund-rock/storage/uploads/2017-12-09-151532-Ertiga.png', 'png', '', 1, 'zadfikuhqcvxef3hqwyh', 0, NULL, '2017-12-09 15:15:32', '2017-12-09 15:15:32'),
(18, 'Honda-BR-V.jpg', '/home/tukang/gund-rock/storage/uploads/2017-12-09-152317-Honda-BR-V.jpg', 'jpg', '', 1, 'z1kev2ec7zudk4k5ibal', 0, NULL, '2017-12-09 15:23:17', '2017-12-09 15:23:17'),
(19, 'suzuki sx4.png', '/home/tukang/gund-rock/storage/uploads/2017-12-09-152458-suzuki sx4.png', 'png', '', 1, 'hg1zuhb4fzahlorqzhbx', 0, NULL, '2017-12-09 15:24:58', '2017-12-09 15:24:58'),
(20, 'suzuki splash.png', '/home/tukang/gund-rock/storage/uploads/2017-12-09-152838-suzuki splash.png', 'png', '', 1, 'pzv7svtpgwgqjwpyr7zo', 0, NULL, '2017-12-09 15:28:38', '2017-12-09 15:28:38'),
(21, 'Daihatsu-Copen.jpg', '/home/tukang/gund-rock/storage/uploads/2017-12-09-164732-Daihatsu-Copen.jpg', 'jpg', '', 1, 'zcohgg2lrzrnc2g2umyy', 0, NULL, '2017-12-09 16:47:32', '2017-12-09 16:47:32'),
(22, 'Honda-NSX.jpg', '/home/tukang/gund-rock/storage/uploads/2017-12-09-165212-Honda-NSX.jpg', 'jpg', '', 1, 'fas7sulo5qaadyvcerm0', 0, NULL, '2017-12-09 16:52:12', '2017-12-09 16:52:12'),
(23, 'BMW-i8.jpg', '/home/tukang/gund-rock/storage/uploads/2017-12-09-165548-BMW-i8.jpg', 'jpg', '', 1, 'mhnj806zyely8jx8mgic', 0, NULL, '2017-12-09 16:55:48', '2017-12-09 16:55:48'),
(24, 'Honda-CR-Z.jpg', '/home/tukang/gund-rock/storage/uploads/2017-12-09-170041-Honda-CR-Z.jpg', 'jpg', '', 1, 'vuvwtjdxpgetv046taqh', 0, NULL, '2017-12-09 17:00:41', '2017-12-09 17:00:41'),
(25, 'vw-beetle_20161210_200107.jpg', '/home/tukang/gund-rock/storage/uploads/2017-12-09-171308-vw-beetle_20161210_200107.jpg', 'jpg', '', 1, 'vkdvrsaec47bjndh8v7v', 0, NULL, '2017-12-09 17:13:08', '2017-12-09 17:13:08'),
(26, 'pandawa 2-2 seat 41 air suspension.jpg', '/home/tukang/gund-rock/storage/uploads/2017-12-10-124332-pandawa 2-2 seat 41 air suspension.jpg', 'jpg', '', 1, 's2huuiclvz34ha6s2cah', 0, NULL, '2017-12-10 12:43:32', '2017-12-10 12:43:32'),
(27, 'pandawa 2-2 seat 48 SHD.jpeg', '/home/tukang/gund-rock/storage/uploads/2017-12-10-125400-pandawa 2-2 seat 48 SHD.jpeg', 'jpeg', '', 1, '4cuftw6tszfe88ix3lsk', 0, NULL, '2017-12-10 12:54:00', '2017-12-10 12:54:00'),
(28, 'pandawa 2-2 seat 47 air suspension.jpg', '/home/tukang/gund-rock/storage/uploads/2017-12-10-125443-pandawa 2-2 seat 47 air suspension.jpg', 'jpg', '', 1, 'qzrfjmyrz3afj6ngklj2', 0, NULL, '2017-12-10 12:54:43', '2017-12-10 12:54:43'),
(29, 'pandawa 2-3 seat 59 air suspension.jpg', '/home/tukang/gund-rock/storage/uploads/2017-12-10-125527-pandawa 2-3 seat 59 air suspension.jpg', 'jpg', '', 1, 'qhpzu4hjt8ainkmaj0ey', 0, NULL, '2017-12-10 12:55:27', '2017-12-10 12:55:27'),
(30, 'rosalia indah 2-1 seat 23 super executive.png', '/home/tukang/gund-rock/storage/uploads/2017-12-10-125713-rosalia indah 2-1 seat 23 super executive.png', 'png', '', 1, 'jiusdzhilrdybbc87vek', 0, NULL, '2017-12-10 12:57:13', '2017-12-10 12:57:13'),
(31, 'rosalia indah 2-1 seat 23 super top shd.png', '/home/tukang/gund-rock/storage/uploads/2017-12-10-125902-rosalia indah 2-1 seat 23 super top shd.png', 'png', '', 1, '4cagud1loei8lo7lya4y', 0, NULL, '2017-12-10 12:59:02', '2017-12-10 12:59:02'),
(32, 'rosalia indah 2-2 seat 34 executive plus shd.png', '/home/tukang/gund-rock/storage/uploads/2017-12-10-130014-rosalia indah 2-2 seat 34 executive plus shd.png', 'png', '', 1, 'eu1exa92v00tlhtsg5lh', 0, NULL, '2017-12-10 13:00:14', '2017-12-10 13:00:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `context_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Employee',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `context_id`, `email`, `password`, `type`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'mastergundrock@mail.com', 1, 'mastergundrock@mail.com', '$2y$10$cuGeHLLbKsqWLGOcLgnGDuPbMkLxTpliyYYsKE5dE659quFim1LGO', 'Employee', 'zinnprlqtw6DG2EiQqkT9CliUbhXeLtXdvculijlu63pmHdYuJVVvxa6tT27', NULL, '2017-09-17 19:08:28', '2017-12-11 02:14:52'),
(2, 'Admin Bro', 2, 'administratong@gundrock.com', '$2y$10$tz5i6JsW6KrO.ppAxWerVu3V753wplGnta9UH35lEdw0CgMetWohS', 'Employee', 'Zkyv11HcFNA6gwzODnTdnwlwpowjDDg2EUF2Esbc11r3ThNOrN23BwlmZBYl', NULL, '2017-09-18 21:06:32', '2017-12-11 09:59:40'),
(3, 'Trajekline', 3, 'trajekline@gmail.com', '$2y$10$O92A2gSA5XcAsOfy0m.MreRV6KjdZefiDFZP2Vbuwm.6lbxWq7EWu', 'Sub Rental', 'ehhZbPogp0015gi7sopmTZ8zJPc1cxhVO2bUU52Ea7lOQtAPn6xSXLIkwIdR', NULL, '2017-11-02 17:11:18', '2017-11-07 04:03:39'),
(4, 'Lorena', 4, 'lorena@mail.com', '$2y$10$xeit6IDqJZPMh6FnMvdlTO27fa1/eHDBFLpSPl48IDeszd9.e1KsK', 'Sub Rental', NULL, NULL, '2017-11-02 17:17:32', '2017-11-07 03:59:20'),
(5, 'Maestro', 5, 'bejo@mail.com', '$2y$10$ORg6KJ2aV9xW79J0Y4Q6s.Ds7RoUWbO95wFVRzaYb/Y91zRNvC6PG', 'Sub Rental', 'DDp5CRKctucnNmJAQYZa2MSEzEiHkAa1dvUa5JRPDGJa9FBGoeG06BsQhgdt', NULL, '2017-11-07 03:58:36', '2017-12-11 01:41:07'),
(6, 'Gund Rock', 6, 'bagus@mail.com', '$2y$10$Vq9EfOIoDYwg3QiliiL.zu1JEMyy0hmEPTelvXlQ.rJqBhHmEEPjm', 'Sub Rental', 'hMd2eZ6BAjDXBd0EZdqRLBpwtIWEvLgjsi2XPXHH52g5HEmusY6JlvwwDLmB', NULL, '2017-11-07 04:02:09', '2017-11-09 02:43:54'),
(11, 'Anggy Yolanda', 12, 'anggyyolanda07@gmail.com', '$2y$10$OiC3qbYuleemXsLxGJaPH.XrnPoKNKC57aI8uCRSOWE75TVUx2Qlm', 'Surveyer', 'yyCTpFLR4Re8ho0guHlqpXcO3hNjP17TqoKhs4HK3d7dS2R7iJfZUZ61ydx3', NULL, '2017-12-09 13:55:15', '2017-12-10 21:17:50'),
(12, 'Nasyihen Ainun najib', 13, 'nasyihen@mail.com', '$2y$10$iHazmE.LPO3LFPjRhRbTMeX/JbGqD8DeEXv0BbRUohRWuYS1dO/tq', 'Surveyer', NULL, NULL, '2017-12-09 14:13:22', '2017-12-09 14:13:22'),
(13, 'Andika Widiarso', 14, 'andika@mail.com', '$2y$10$yIFzAOYnKTNkPoITUGjdDee1Vqs4YkxfwBhgpuG1y20rQsOlyyICq', 'Surveyer', NULL, NULL, '2017-12-09 14:14:31', '2017-12-09 14:14:31'),
(14, 'Dwi Andika Febrianto', 15, 'dwi@mail.com', '$2y$10$c6gmpQBeRBID1AjUIhNCPe/xuPNSxdlBh53G9dfCw7GPYPDX4RoB.', 'Surveyer', NULL, NULL, '2017-12-09 14:15:58', '2017-12-09 14:15:58'),
(15, 'Nafta Ryandika', 16, 'nafta@mail.com', '$2y$10$WKymfRB92MS25IrL5nOGPuoU6Vd95gsAioEAKKOwbH/ULyaBFZvvy', 'Surveyer', NULL, NULL, '2017-12-09 14:16:46', '2017-12-09 14:16:46'),
(16, 'Bimantara S.O', 17, 'bima@mail.com', '$2y$10$xypd4ollSpA.pjNj0K9KHOg.hUzHz7NYoYe/t5Zh6TTBHiNZHmffG', 'Surveyer', NULL, NULL, '2017-12-09 14:18:01', '2017-12-09 14:18:01'),
(17, 'Dimas Arifianto', 18, 'dimas@mail.com', '$2y$10$RPcaB86kYDwD9rMcArFgcenXIc5pGG7JxC7fWEI3.mxrWVbt1c4VG', 'Surveyer', NULL, NULL, '2017-12-09 14:20:26', '2017-12-09 14:20:26'),
(18, 'Septian Nanda Perdana', 19, 'septian@mail.com', '$2y$10$rFaaEotSyL5eH7.fkAS41efW7a6ipVmIyxbREdSC/iteT2N/b1gKi', 'Surveyer', NULL, NULL, '2017-12-09 14:22:22', '2017-12-09 14:22:22'),
(19, 'Bagus Ananda Permana', 22, 'bagus65@mail.com', '$2y$10$ADNMOy.zx2P8A2Bw1H.WN.IGXgEWv7txcjtRrP2OIpZmWaUVr9KVa', 'Surveyer', NULL, NULL, '2017-12-09 14:24:07', '2017-12-09 14:24:07'),
(20, 'Riski Fernanda', 23, 'riski@mail.com', '$2y$10$ORBq2hZG/U6d08x.8rw31.2kM10eVgISbe/sPF.YelaMdZw1zMnMC', 'Surveyer', NULL, NULL, '2017-12-09 14:26:24', '2017-12-09 14:26:24'),
(21, 'Reinaldi Ananda Putra', 24, 'reinaldi@mail.com', '$2y$10$jTOfH4slJzTdhivY.MRNnutGmJvyXJPfZ0anWVmLkRdowhFRlfOTa', 'Surveyer', NULL, NULL, '2017-12-09 14:28:13', '2017-12-09 14:28:13'),
(22, 'Adam Kevin', 25, 'adam@mail.com', '$2y$10$DJCXLuHYzZ631mkYryGoT.yGi9w4Ctbmng1.a05pQPpPqFf7Gx2ru', 'Surveyer', NULL, NULL, '2017-12-09 14:29:53', '2017-12-09 14:29:53'),
(23, 'Rizki Rahmat Hidayat', 26, 'hidayat@mail.com', '$2y$10$dxuWfblqedbbce4fcEXCUuQHUny3sCyOGS339NpVwxVdSmcBejAhS', 'Surveyer', NULL, NULL, '2017-12-09 14:31:49', '2017-12-09 14:31:49'),
(24, 'Pandawa', 27, 'info@pandawa87.com', '$2y$10$Dfjqbd/d7T53.JuW4iYdZeLnaO4534LhM42KFcdSzzayxzXmg/19.', 'Sub Rental', NULL, NULL, '2017-12-10 12:34:08', '2017-12-10 12:34:08'),
(25, 'Rosalia Indah Transport', 28, 'cs@rosalia-indah.co.id', '$2y$10$63ezkYjzxm1j0IlYemATnOYrHpPpAoQekOXDQySMEK.iXD2nyWX/a', 'Sub Rental', NULL, NULL, '2017-12-10 12:40:52', '2017-12-10 12:40:52'),
(26, 'Ahmad Bastomi', 29, 'bastomi@gmail.com', '$2y$10$ZXNAMCxpquzK7WZ4fcauoutSCtGpsfoOuPRPyOqX61UpzDQy6ydbO', 'Surveyer', NULL, NULL, '2017-12-10 16:47:56', '2017-12-10 16:47:56'),
(27, 'a', 30, 'sd@asd', '$2y$10$ETnOF9KancnjIwfceGnvgO2O0U3u8ukDU3wxD1e5d4yFHAiML/R2G', 'Sub Rental', NULL, NULL, '2017-12-10 22:45:37', '2017-12-10 22:45:37'),
(28, 'Maestro', 31, '1@a', '$2y$10$tJaGEH7kYyjplUBJT.AKiOF4SNjmp.Bu7Syy3BV00iVKIe0NOCs9W', 'Sub Rental', NULL, NULL, '2017-12-10 23:06:47', '2017-12-10 23:06:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `armadas`
--
ALTER TABLE `armadas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_name_unique` (`name`);

--
-- Indexes for table `destinasi_wisatas`
--
ALTER TABLE `destinasi_wisatas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_dept_foreign` (`dept`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `la_configs`
--
ALTER TABLE `la_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `la_menus`
--
ALTER TABLE `la_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_fields`
--
ALTER TABLE `module_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_fields_module_foreign` (`module`),
  ADD KEY `module_fields_field_type_foreign` (`field_type`);

--
-- Indexes for table `module_field_types`
--
ALTER TABLE `module_field_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paket_wisatas`
--
ALTER TABLE `paket_wisatas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `pemesanans`
--
ALTER TABLE `pemesanans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pemesanans_cars_foreign` (`cars`),
  ADD KEY `pemesanans_subrental_foreign` (`subRental`),
  ADD KEY `pemesanans_customername_foreign` (`customerName`),
  ADD KEY `pemesanans_surveyergundrock_foreign` (`surveyerGundRock`),
  ADD KEY `pemesanans_surveyersubrental_foreign` (`surveyerSubRental`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD KEY `roles_parent_foreign` (`parent`),
  ADD KEY `roles_dept_foreign` (`dept`);

--
-- Indexes for table `role_module`
--
ALTER TABLE `role_module`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_role_id_foreign` (`role_id`),
  ADD KEY `role_module_module_id_foreign` (`module_id`);

--
-- Indexes for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_fields_role_id_foreign` (`role_id`),
  ADD KEY `role_module_fields_field_id_foreign` (`field_id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `sub_rentals`
--
ALTER TABLE `sub_rentals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_rental_mobils`
--
ALTER TABLE `sub_rental_mobils`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_rental_mobils_owner_foreign` (`owner`);

--
-- Indexes for table `sub_rental_surveyers`
--
ALTER TABLE `sub_rental_surveyers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_rental_surveyers_subrental_foreign` (`subRental`);

--
-- Indexes for table `sub_travels`
--
ALTER TABLE `sub_travels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_travel_mobils`
--
ALTER TABLE `sub_travel_mobils`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_travel_mobils_owner_foreign` (`owner`);

--
-- Indexes for table `surveyers`
--
ALTER TABLE `surveyers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi_rentals`
--
ALTER TABLE `transaksi_rentals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_rentals_bookingcode_foreign` (`bookingCode`);

--
-- Indexes for table `transaksi_travels`
--
ALTER TABLE `transaksi_travels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_travels_travel_foreign` (`travel`),
  ADD KEY `transaksi_travels_customername_foreign` (`customerName`);

--
-- Indexes for table `transaksi_wisatas`
--
ALTER TABLE `transaksi_wisatas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_wisatas_wisata_foreign` (`wisata`),
  ADD KEY `transaksi_wisatas_customername_foreign` (`customerName`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uploads_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `armadas`
--
ALTER TABLE `armadas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `destinasi_wisatas`
--
ALTER TABLE `destinasi_wisatas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `la_configs`
--
ALTER TABLE `la_configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `la_menus`
--
ALTER TABLE `la_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `module_fields`
--
ALTER TABLE `module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;
--
-- AUTO_INCREMENT for table `module_field_types`
--
ALTER TABLE `module_field_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `paket_wisatas`
--
ALTER TABLE `paket_wisatas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pemesanans`
--
ALTER TABLE `pemesanans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `role_module`
--
ALTER TABLE `role_module`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;
--
-- AUTO_INCREMENT for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1123;
--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `sub_rentals`
--
ALTER TABLE `sub_rentals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `sub_rental_mobils`
--
ALTER TABLE `sub_rental_mobils`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `sub_rental_surveyers`
--
ALTER TABLE `sub_rental_surveyers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `sub_travels`
--
ALTER TABLE `sub_travels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sub_travel_mobils`
--
ALTER TABLE `sub_travel_mobils`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `surveyers`
--
ALTER TABLE `surveyers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `transaksi_rentals`
--
ALTER TABLE `transaksi_rentals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `transaksi_travels`
--
ALTER TABLE `transaksi_travels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transaksi_wisatas`
--
ALTER TABLE `transaksi_wisatas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`);

--
-- Constraints for table `module_fields`
--
ALTER TABLE `module_fields`
  ADD CONSTRAINT `module_fields_field_type_foreign` FOREIGN KEY (`field_type`) REFERENCES `module_field_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `module_fields_module_foreign` FOREIGN KEY (`module`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pemesanans`
--
ALTER TABLE `pemesanans`
  ADD CONSTRAINT `pemesanans_cars_foreign` FOREIGN KEY (`cars`) REFERENCES `sub_rental_mobils` (`id`),
  ADD CONSTRAINT `pemesanans_customername_foreign` FOREIGN KEY (`customerName`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `pemesanans_subrental_foreign` FOREIGN KEY (`subRental`) REFERENCES `sub_rentals` (`id`),
  ADD CONSTRAINT `pemesanans_surveyergundrock_foreign` FOREIGN KEY (`surveyerGundRock`) REFERENCES `surveyers` (`id`),
  ADD CONSTRAINT `pemesanans_surveyersubrental_foreign` FOREIGN KEY (`surveyerSubRental`) REFERENCES `sub_rental_surveyers` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `roles_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `roles` (`id`);

--
-- Constraints for table `role_module`
--
ALTER TABLE `role_module`
  ADD CONSTRAINT `role_module_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_module_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  ADD CONSTRAINT `role_module_fields_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `module_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_module_fields_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_rental_mobils`
--
ALTER TABLE `sub_rental_mobils`
  ADD CONSTRAINT `sub_rental_mobils_owner_foreign` FOREIGN KEY (`owner`) REFERENCES `sub_rentals` (`id`);

--
-- Constraints for table `sub_rental_surveyers`
--
ALTER TABLE `sub_rental_surveyers`
  ADD CONSTRAINT `sub_rental_surveyers_subrental_foreign` FOREIGN KEY (`subRental`) REFERENCES `sub_rentals` (`id`);

--
-- Constraints for table `sub_travel_mobils`
--
ALTER TABLE `sub_travel_mobils`
  ADD CONSTRAINT `sub_travel_mobils_owner_foreign` FOREIGN KEY (`owner`) REFERENCES `sub_travels` (`id`);

--
-- Constraints for table `transaksi_rentals`
--
ALTER TABLE `transaksi_rentals`
  ADD CONSTRAINT `transaksi_rentals_bookingcode_foreign` FOREIGN KEY (`bookingCode`) REFERENCES `pemesanans` (`id`);

--
-- Constraints for table `transaksi_travels`
--
ALTER TABLE `transaksi_travels`
  ADD CONSTRAINT `transaksi_travels_customername_foreign` FOREIGN KEY (`customerName`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `transaksi_travels_travel_foreign` FOREIGN KEY (`travel`) REFERENCES `sub_travel_mobils` (`id`);

--
-- Constraints for table `transaksi_wisatas`
--
ALTER TABLE `transaksi_wisatas`
  ADD CONSTRAINT `transaksi_wisatas_customername_foreign` FOREIGN KEY (`customerName`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `transaksi_wisatas_wisata_foreign` FOREIGN KEY (`wisata`) REFERENCES `paket_wisatas` (`id`);

--
-- Constraints for table `uploads`
--
ALTER TABLE `uploads`
  ADD CONSTRAINT `uploads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
