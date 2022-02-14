-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 11 2022 г., 12:26
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
-- База данных: `cinema`
--
CREATE DATABASE IF NOT EXISTS `cinema` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cinema`;

-- --------------------------------------------------------

--
-- Структура таблицы `actor`
--

CREATE TABLE `actor` (
  `actor_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `gender` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `actor`
--

INSERT INTO `actor` (`actor_id`, `name`, `surname`, `gender`) VALUES
(1, 'Джейсон', 'Момоа', 'М'),
(2, 'Эмбер', 'Хёрд', 'Ж'),
(3, 'Генри', 'Кавилл', 'М'),
(4, 'Эми', 'Адамс', 'Ж'),
(5, 'Федор', 'Добронравов', 'М'),
(6, 'Татьяна', 'Кравченко', 'Ж'),
(7, 'Джонни', 'Галэки', 'М'),
(8, 'Джим', 'Парсонс', 'М'),
(9, 'Кейли', 'Куоко', 'Ж'),
(10, 'Николас', 'Кейдж', 'М'),
(11, 'Эмма', 'Стоун', 'Ж');

-- --------------------------------------------------------

--
-- Структура таблицы `actor_films`
--

CREATE TABLE `actor_films` (
  `films_id` int(11) NOT NULL,
  `actor_id` int(11) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `actor_films`
--

INSERT INTO `actor_films` (`films_id`, `actor_id`, `role`) VALUES
(1, 1, 'Актер'),
(1, 2, 'Актер'),
(2, 3, 'Актер'),
(2, 4, 'Актер'),
(3, 5, 'Актер'),
(3, 6, 'Актер'),
(4, 7, 'Актер'),
(4, 8, 'Актер'),
(4, 9, 'Актер'),
(5, 10, 'Актер'),
(5, 11, 'Актер');

-- --------------------------------------------------------

--
-- Структура таблицы `director`
--

CREATE TABLE `director` (
  `director_id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `director`
--

INSERT INTO `director` (`director_id`, `full_name`, `last_name`) VALUES
(1, 'Джеймс', 'Ван'),
(2, 'Зак', 'Снайдер'),
(3, 'Андрей', 'Яковлев'),
(4, 'Марк', 'Сендроуски'),
(5, 'Питер', 'Чакос'),
(6, 'Джоэл', 'Кросфорд');

-- --------------------------------------------------------

--
-- Структура таблицы `director_films`
--

CREATE TABLE `director_films` (
  `films_id` int(11) NOT NULL,
  `director_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `director_films`
--

INSERT INTO `director_films` (`films_id`, `director_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(4, 5),
(5, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `films`
--

CREATE TABLE `films` (
  `films_id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `year` year(4) NOT NULL,
  `plot` varchar(200) NOT NULL,
  `poster` text NOT NULL,
  `type` varchar(50) NOT NULL,
  `runtime` varchar(50) NOT NULL,
  `released` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `films`
--

INSERT INTO `films` (`films_id`, `title`, `year`, `plot`, `poster`, `type`, `runtime`, `released`) VALUES
(1, 'Аквамен', 2018, 'Сын простого человека и царицы подводного мира Артур унаследовал от матери фантастическую силу. Взяв прозвище Аквамен, он встает на защиту людей и бросает вызов своему брату, правителю Атлантиды.', 'https://www.kino-teatr.ru/movie/posters/big/9/129469.jpg', 'Фильм', '143 мин', '2018-12-13'),
(2, 'Человек из стали', 2013, 'Кларк Кент много лет назад был отправлен со своей планеты Криптон на Землю. С тех пор он пытается найти ответ на вопрос: зачем? Но однажды человечество подвергается внеземному нападению.', 'https://thumbs.dfs.ivi.ru/storage28/contents/9/1/9accf791637e49288ecda320e57ecf.jpg', 'Фильм', '142 мин', '2013-06-12'),
(3, 'Сваты 7', 2021, 'Сваты снова с нами! Неутомимые, непредсказуемые и бесконечно обаятельные, – любящие родственники воссоединяются в новом сезоне народного хита .', 'https://thumbs.dfs.ivi.ru/storage29/contents/9/d/451694d7ce29809cbb265e9ab15a39.jpg', 'Сериал', '1 сезон', '2021-12-20'),
(4, 'Теория большого взрыва', 2019, 'Легендарный, культовый, обожаемый миллионами – все это относится к американскому ситкому «Теория большого взрыва». Вот уже десять лет этот сериал остается среди самых популярных.', 'https://b1.filmpro.ru/c/367823.jpg', 'Сериал', '12 сезонов', '2007-09-24'),
(5, ' Семейка Крудс: Новоселье', 2020, 'Веселая семейка Крудс ищет уголок безопасности в крайне опасном первобытном мире. Им удается найти идеальный дом, вот только у него уже есть хозяева, стоящие на более высокой ступени эволюции.', 'https://i.ytimg.com/vi/KmEXKKinSGk/maxresdefault.jpg', 'Мультфильм', '95 мин', '2020-11-25');

-- --------------------------------------------------------

--
-- Структура таблицы `films_genres`
--

CREATE TABLE `films_genres` (
  `films_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `films_genres`
--

INSERT INTO `films_genres` (`films_id`, `genre_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 2),
(2, 3),
(2, 4),
(3, 5),
(4, 5),
(4, 6),
(5, 2),
(5, 5),
(5, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `films_languages`
--

CREATE TABLE `films_languages` (
  `films_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `films_languages`
--

INSERT INTO `films_languages` (`films_id`, `language_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 3),
(4, 1),
(4, 3),
(5, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `genres`
--

CREATE TABLE `genres` (
  `genre_id` int(11) NOT NULL,
  `genre_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `genres`
--

INSERT INTO `genres` (`genre_id`, `genre_name`) VALUES
(1, 'Фэнтези'),
(2, 'Приключения'),
(3, 'Боевик'),
(4, 'Фантастика'),
(5, 'Комедия'),
(6, 'Мелодрама'),
(7, 'Семейный');

-- --------------------------------------------------------

--
-- Структура таблицы `languages`
--

CREATE TABLE `languages` (
  `language_id` int(11) NOT NULL,
  `language` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `languages`
--

INSERT INTO `languages` (`language_id`, `language`) VALUES
(1, 'Английский'),
(2, 'Украинский'),
(3, 'Русский');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`actor_id`);

--
-- Индексы таблицы `actor_films`
--
ALTER TABLE `actor_films`
  ADD KEY `films_id` (`films_id`,`actor_id`),
  ADD KEY `actor_id` (`actor_id`);

--
-- Индексы таблицы `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`director_id`);

--
-- Индексы таблицы `director_films`
--
ALTER TABLE `director_films`
  ADD KEY `films_id` (`films_id`),
  ADD KEY `director_id` (`director_id`);

--
-- Индексы таблицы `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`films_id`);

--
-- Индексы таблицы `films_genres`
--
ALTER TABLE `films_genres`
  ADD KEY `films_id` (`films_id`,`genre_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Индексы таблицы `films_languages`
--
ALTER TABLE `films_languages`
  ADD KEY `films_id` (`films_id`,`language_id`),
  ADD KEY `language_id` (`language_id`);

--
-- Индексы таблицы `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`genre_id`);

--
-- Индексы таблицы `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`language_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `actor`
--
ALTER TABLE `actor`
  MODIFY `actor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `director`
--
ALTER TABLE `director`
  MODIFY `director_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `films`
--
ALTER TABLE `films`
  MODIFY `films_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `genres`
--
ALTER TABLE `genres`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `languages`
--
ALTER TABLE `languages`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `actor_films`
--
ALTER TABLE `actor_films`
  ADD CONSTRAINT `actor_films_ibfk_1` FOREIGN KEY (`films_id`) REFERENCES `films` (`films_id`),
  ADD CONSTRAINT `actor_films_ibfk_2` FOREIGN KEY (`actor_id`) REFERENCES `actor` (`actor_id`);

--
-- Ограничения внешнего ключа таблицы `director`
--
ALTER TABLE `director`
  ADD CONSTRAINT `director_ibfk_1` FOREIGN KEY (`director_id`) REFERENCES `director_films` (`director_id`);

--
-- Ограничения внешнего ключа таблицы `films`
--
ALTER TABLE `films`
  ADD CONSTRAINT `films_ibfk_1` FOREIGN KEY (`films_id`) REFERENCES `director_films` (`films_id`),
  ADD CONSTRAINT `films_ibfk_2` FOREIGN KEY (`films_id`) REFERENCES `films_languages` (`films_id`);

--
-- Ограничения внешнего ключа таблицы `films_genres`
--
ALTER TABLE `films_genres`
  ADD CONSTRAINT `films_genres_ibfk_1` FOREIGN KEY (`films_id`) REFERENCES `films` (`films_id`),
  ADD CONSTRAINT `films_genres_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`);

--
-- Ограничения внешнего ключа таблицы `languages`
--
ALTER TABLE `languages`
  ADD CONSTRAINT `languages_ibfk_1` FOREIGN KEY (`language_id`) REFERENCES `films_languages` (`language_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
