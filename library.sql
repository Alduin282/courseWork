-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 25 2020 г., 14:46
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `library`
--

-- --------------------------------------------------------

--
-- Структура таблицы `booked`
--

CREATE TABLE `booked` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) NOT NULL,
  `library_card` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `authors` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` int(11) NOT NULL,
  `pages` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id`, `authors`, `name`, `publish`, `date`, `pages`, `count`, `created_at`, `updated_at`) VALUES
(1, 'Александр Сергеевич Пушкин', 'Руслан и Людмила', 'Издательство', 1984, 555, 7, '2020-05-13 18:00:00', '2020-05-25 05:22:34'),
(2, 'Александр Сергеевич Пушкин', 'Кавказский пленник', 'Издательство', 1984, 555, 7, '2020-05-13 18:00:00', '2020-05-25 05:22:35'),
(3, 'Александр Сергеевич Пушкин', 'Гавриилиада', 'Издательство', 1984, 555, 4, '2020-05-12 18:00:00', '2020-05-25 05:22:36'),
(4, 'Александр Сергеевич Пушкин', 'Братья разбойники', 'Издательство', 1984, 555, 3, '2020-05-12 18:00:00', '2020-05-25 05:22:38'),
(5, 'Александр Сергеевич Пушкин', 'Бахчисарайский фонтан', 'Издательство', 1984, 555, 7, '2020-05-18 18:00:00', '2020-05-25 05:22:46'),
(6, 'Александр Сергеевич Пушкин', 'Цыганы', 'Издательство', 1984, 555, 1, '2020-05-11 18:00:00', '2020-05-24 06:45:06'),
(7, 'Александр Сергеевич Пушкин', 'Полтава', 'Издательство', 1984, 555, 2, '2020-05-18 18:00:00', '2020-05-24 05:02:29'),
(8, 'Александр Сергеевич Пушкин', 'Домик в Коломне', 'Издательство', 1984, 555, 6, '2020-05-04 18:00:00', '2020-05-24 03:44:25'),
(9, 'Странный чел ', 'Странное произведение ,я бы даже сказал жизнь странная', 'Странное издательство', 1828, 212, 1, '2020-03-31 18:00:00', '2020-05-24 05:52:30'),
(10, 'Джек Лондон', 'Дочь снегов', 'Государственное издательство художественной литературы', 1957, 555, 4, '2020-05-21 18:00:00', NULL),
(11, 'Джек Лондон', 'Путешествие на «Ослепительном»', 'Государственное издательство художественной литературы', 1957, 555, 1, '2020-05-21 18:00:00', NULL),
(12, 'Джек Лондон', 'Зов предков', 'Государственное издательство художественной литературы', 1957, 555, 5, '2020-05-21 18:00:00', NULL),
(13, 'Джек Лондон', 'Письма Кэмптона — Уэсу', 'Государственное издательство художественной литературы', 1957, 555, 4, '2020-05-21 18:00:00', '2020-05-25 05:22:42'),
(14, 'Джек Лондон', 'Морской волк', 'Государственное издательство художественной литературы', 1957, 555, 4, '2020-05-21 18:00:00', '2020-05-24 07:48:31'),
(15, 'Джек Лондон', 'Игра', 'Государственное издательство художественной литературы', 1957, 555, 2, '2020-05-21 18:00:00', '2020-05-24 07:48:32'),
(16, 'Джек Лондон', 'Белый Клык', 'Государственное издательство художественной литературы', 1957, 555, 1, '2020-05-21 18:00:00', '2020-05-25 05:22:44');

-- --------------------------------------------------------

--
-- Структура таблицы `book_on_hand`
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
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2020_05_16_122434_create_books_table', 1),
(16, '2020_05_16_132532_create_booked_table', 1),
(17, '2020_05_24_090329_create_book_on_hand_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('pudge1515@mail.ru', '$2y$10$VREUsQSDPNIkdzsamnuGnOqie92Xq/jj.pR87vn21NIDAlpHuR1pu', '2020-05-24 06:04:45');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
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
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `adress`, `phone_number`, `library_card`, `created_at`, `updated_at`) VALUES
(1, 'Варенцов Антон Владимирович', 'pudge@mail.ru', NULL, '$2y$10$imrdJos7gJDmOKf246vV4etkHdgDVGXVCpcjGSSAIT23yquVHiUli', NULL, 'fasdklfj', '89223157969', 356756544, '2020-05-24 03:09:38', '2020-05-24 03:09:38'),
(2, 'Ленин Владимир Ильич', 'lenin@mail.ru', NULL, '$2y$10$hNsRiUhoFvKu5DPr2AHxPOZ5WxMjfTLk9WDTvFLNQfYOeYOgazfAm', NULL, 'Ленинград', '89223157956', 98208100, '2020-05-24 04:05:27', '2020-05-24 04:05:27'),
(3, 'Сталин Виктор Сергеевич', 'stalin@mail.ru', NULL, '$2y$10$LXhMT42.OxK9m6..lI6FPeQ9BXhMD2mRv2tN41Ab1UcoThCkc6TQS', NULL, 'Сталинград', '89223157978', 276956164, '2020-05-24 04:08:06', '2020-05-24 04:08:06'),
(4, 'Варенцов Антон Владимирович', 'pudge1515@mail.ru', NULL, '$2y$10$oEFjbLKoxYBjIiFzZ1I.J.Jtci/RWn..eIyq0M2meZucmo0gukAj.', NULL, 'Краснодар', '89223157911', 130827844, '2020-05-24 06:04:29', '2020-05-24 06:04:29'),
(5, 'Жуков Виктор Сергеевич', 'jukov@mail.ru', NULL, '$2y$10$7W5qukZBJTl/4wjeMMMM4eO4.m4rrsayDvjmk/Rw.nNZ5FYVgfO1K', NULL, 'Жуков', '89223157899', 5420001, '2020-05-24 07:20:27', '2020-05-24 07:20:27'),
(7, 'Россоковский Дмитрий Алексеевич', 'ros@mail.ru', NULL, '$2y$10$ErwkFj7yhfLXhBQ4Eud6Xuo7oZs0VEGAbQKamN8FP3YEbAx98ww7C', NULL, 'Прага', '89223157555', 1, '2020-05-24 07:30:46', '2020-05-24 07:30:46'),
(8, 'Варенцов Антон Владимирович', 'pudge15@mail.ru', NULL, '$2y$10$2yC18ZYbdwtF8PiN41Yl3uhU80h77fu75IxCUjBVQ2qjKRUgZ1upy', NULL, 'dkafsj', '89223157966', 5420007, '2020-05-24 07:37:51', '2020-05-24 07:37:51'),
(9, 'Михаил Викторович Булгаков', 'michail@mail.ru', NULL, '$2y$10$WjWkNZfyaRDuQHhcdoBdheXnYsHSfSu/lwweXoSo5qX9OOIIFbIWm', NULL, 'Нефтекамск', '89223157999', 5420008, '2020-05-24 07:48:01', '2020-05-24 07:48:01');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `booked`
--
ALTER TABLE `booked`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `book_on_hand`
--
ALTER TABLE `book_on_hand`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_library_card_unique` (`library_card`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `booked`
--
ALTER TABLE `booked`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `book_on_hand`
--
ALTER TABLE `book_on_hand`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
