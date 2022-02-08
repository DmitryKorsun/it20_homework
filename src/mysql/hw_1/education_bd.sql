-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 08 2022 г., 11:59
-- Версия сервера: 5.7.33
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `education`
--
CREATE DATABASE IF NOT EXISTS `education` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `education`;

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title_news` varchar(50) NOT NULL,
  `text_news` varchar(200) NOT NULL,
  `image` blob,
  `author` varchar(40) NOT NULL,
  `publication_date` date NOT NULL,
  `news_activity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `regions`
--

CREATE TABLE `regions` (
  `id` int(11) NOT NULL,
  `region` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `regions`
--

INSERT INTO `regions` (`id`, `region`) VALUES
(1, 'Винницкая'),
(2, 'Волынская'),
(3, 'Днепропетровская'),
(4, 'Донецкая'),
(5, 'Житомирская'),
(6, 'Закарпатская'),
(7, 'Запорожская'),
(8, 'Ивано-Франковская'),
(9, 'Киевская'),
(10, 'Кировоградская'),
(11, 'Луганская'),
(12, 'Львовская'),
(13, 'Николаевская'),
(14, 'Одесская'),
(15, 'Полтавская'),
(16, 'Ровненская'),
(17, 'Сумская'),
(18, 'Тернопольская'),
(19, 'Харьковская'),
(20, 'Херсонская'),
(21, 'Хмельницкая'),
(22, 'Черкасская'),
(23, 'Черниговская'),
(24, 'Черновицкая'),
(25, 'Киев'),
(26, 'Севастополь'),
(27, 'Автономная Республика Крым');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `address` varchar(50) NOT NULL,
  `date_of_birth` date NOT NULL,
  `role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `full_name`, `address`, `date_of_birth`, `role`) VALUES
(1, 'Korsun Dmitry Vladislavovich', 'Kramatorsk', '2001-01-08', 'Admin'),
(2, 'Иванов Иван Иваныч', 'Краматорск', '2014-02-11', 'Subadministrative'),
(3, 'Петров Петр Петрович', 'Краматорск', '1990-08-14', 'Owner');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
