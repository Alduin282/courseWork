-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 08, 2020 at 06:18 PM
-- Server version: 10.3.13-MariaDB-log
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `booked`
--

CREATE TABLE `booked` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booked`
--

INSERT INTO `booked` (`id`, `book_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 10, 1, '2020-05-30 05:10:17', '2020-05-30 05:10:17'),
(4, 2, 1, '2020-05-30 07:56:28', '2020-05-30 07:56:28'),
(5, 1, 1, '2020-05-30 07:57:06', '2020-05-30 07:57:06');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `authors` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` int(11) NOT NULL,
  `pages` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `authors`, `name`, `publish`, `date`, `pages`, `count`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Александр Сергеевич Пушкин', 'Капитанская дочка', 'Изд', 1984, 555, 3, '', '2020-04-14 18:00:00', '2020-05-30 07:57:06'),
(2, 'Александр Сергеевич Пушкин', 'Дубровский', 'Изд', 1984, 555, 3, 'images/Dubrovski.jpg', '2020-04-14 18:00:00', '2020-05-30 07:56:28'),
(3, 'Александр Сергеевич Пушкин', 'Евгений Онегин', 'Изд', 1984, 555, 4, 'images/EvgeniOnigin.jpg', '2020-04-14 18:00:00', NULL),
(4, 'Александр Сергеевич Пушкин', 'Руслан и Людмила', 'Изд', 1984, 555, 4, 'images/RuslanILudmila.jpg', '2020-04-14 18:00:00', NULL),
(5, 'Александр Сергеевич Пушкин', 'Кавказский пленник', 'Изд', 1984, 555, 4, '', '2020-04-14 18:00:00', NULL),
(6, 'Александр Сергеевич Пушкин', 'Пир во время чумы', 'Изд', 1984, 555, 4, '', '2020-04-14 18:00:00', NULL),
(7, 'Александр Сергеевич Пушкин', 'Сказка о рыбаке и рыбке', 'Изд', 1984, 555, 4, '', '2020-04-14 18:00:00', NULL),
(8, 'Джек Лондон', 'Зов предков', 'Изд', 1888, 172, 1, '', '2020-05-20 18:00:00', NULL),
(9, 'Джек Лондон', 'Мартин Иден', 'Изд', 1888, 172, 3, 'images/MartinIden.jpg', '2020-05-20 18:00:00', '2020-05-30 05:10:09'),
(10, 'Джек Лондон', 'Белый клык', 'Изд', 1888, 172, 0, 'images/WhiteWolf.jpg', '2020-05-20 18:00:00', '2020-05-30 05:10:17'),
(11, 'Джек Лондон', 'Алая чума', 'Изд', 1888, 172, 1, '', '2020-05-20 18:00:00', NULL),
(12, 'Джек Лондон', 'Лютый зверь', 'Изд', 1888, 172, 2, '', '2020-05-20 18:00:00', NULL),
(13, 'Джек Лондон', 'Лунная долина', 'Изд', 1888, 172, 1, '', '2020-05-20 18:00:00', NULL),
(14, 'Джек Лондон', 'Сердца трёх', 'Изд', 1888, 172, 3, '', '2020-05-20 18:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_on_hand`
--

CREATE TABLE `book_on_hand` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) NOT NULL,
  `library_card` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
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
(23, '2014_10_12_000000_create_users_table', 1),
(24, '2014_10_12_100000_create_password_resets_table', 1),
(25, '2020_05_16_122434_create_books_table', 1),
(26, '2020_05_16_132532_create_booked_table', 1),
(27, '2020_05_24_090329_create_book_on_hand_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `library_card` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `adress`, `phone_number`, `library_card`, `created_at`, `updated_at`) VALUES
(1, 'Варенцов Антон Владимирович', 'pudge@mail.ru', NULL, '$2y$10$1Y3Tx7m1AaSkFTMj5xeBCupfE.LBOf7ymitCdAvnAFlgWmcO5WhL2', NULL, 'Краснодар', '89223157966', 5420000, '2020-05-30 04:47:33', '2020-05-30 04:47:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booked`
--
ALTER TABLE `booked`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_on_hand`
--
ALTER TABLE `book_on_hand`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_library_card_unique` (`library_card`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booked`
--
ALTER TABLE `booked`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `book_on_hand`
--
ALTER TABLE `book_on_hand`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
