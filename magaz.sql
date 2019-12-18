-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 19 2019 г., 00:45
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `magaz`
--

-- --------------------------------------------------------

--
-- Структура таблицы `adress`
--

CREATE TABLE `adress` (
  `user_id` int(11) NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `house` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `index_adress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `adress`
--

INSERT INTO `adress` (`user_id`, `city`, `street`, `house`, `index_adress`) VALUES
(27, 'Moscow', 'ул.Ленина', '68', '424040'),
(28, 'Moscow', 'ул.Светова', '64', '424240'),
(29, 'Moscow', 'ул.Навального', '28', '424140');

-- --------------------------------------------------------

--
-- Структура таблицы `autors`
--

CREATE TABLE `autors` (
  `isbn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `autor_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `autors`
--

INSERT INTO `autors` (`isbn`, `autor_name`) VALUES
('978-5-04-100931-1', 'Стэн Ли'),
('978-5-04-100931-2', 'Фил Спенсер'),
('973-5-04-100931-2', 'Алексей Заруцкий');

-- --------------------------------------------------------

--
-- Структура таблицы `categoryes`
--

CREATE TABLE `categoryes` (
  `id_category` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categoryes`
--

INSERT INTO `categoryes` (`id_category`, `name`) VALUES
(1, 'MARVEL'),
(2, 'DC');

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE `goods` (
  `id` int(11) NOT NULL,
  `id_publisher` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_category` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `id_publisher`, `name`, `id_category`, `img`, `price`) VALUES
(6, 1, 'Бэтмен', 2, 'https://static-eu.insales.ru/images/products/1/2190/142436494/yNagRM0gxzg.jpg', '359'),
(7, 1, 'Человек паук', 1, 'https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwj8v_zc8L_mAhWs5KYKHTQ5CpwQjRx6BAgBEAQ&url=http%3A%2F%2Funicomics.ru%2Fcomics%2Fonline%2Famazing-spider-man-523&psig=AOvVaw03ldtU9GSEngvjgnYxreKm&ust=1576781953089738\r\n', '268'),
(8, 2, 'Черная смэрть', 1, 'https://steamuserimages-a.akamaihd.net/ugc/947344415646334455/9D8368AC87ACBB4E36FCF86378241626C3D07BFC/', '1432');

-- --------------------------------------------------------

--
-- Структура таблицы `isbn`
--

CREATE TABLE `isbn` (
  `id_goods` int(11) NOT NULL,
  `isbn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `isbn`
--

INSERT INTO `isbn` (`id_goods`, `isbn`) VALUES
(6, '978-5-04-100931-1'),
(7, '978-5-04-100931-2'),
(8, '973-5-04-100931-2');

-- --------------------------------------------------------

--
-- Структура таблицы `publishers`
--

CREATE TABLE `publishers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `publishers`
--

INSERT INTO `publishers` (`id`, `name`) VALUES
(1, 'Рус-комикс'),
(2, 'Forecs');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `mail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `mail`, `login`, `password`) VALUES
(27, 'vasia@mail.ru', 'vasia', '123456'),
(28, 'ne_vasia@mail.RU', 'ne_vasia', '1234567'),
(29, 'qwerty@mail.ru', 'qwerty', '12345678');

-- --------------------------------------------------------

--
-- Структура таблицы `user_sale`
--

CREATE TABLE `user_sale` (
  `user_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `adress`
--
ALTER TABLE `adress`
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `autors`
--
ALTER TABLE `autors`
  ADD KEY `isbn` (`isbn`);

--
-- Индексы таблицы `categoryes`
--
ALTER TABLE `categoryes`
  ADD PRIMARY KEY (`id_category`);

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_publisher` (`id_publisher`),
  ADD KEY `id_category` (`id_category`);

--
-- Индексы таблицы `isbn`
--
ALTER TABLE `isbn`
  ADD PRIMARY KEY (`isbn`),
  ADD KEY `id_goods` (`id_goods`);

--
-- Индексы таблицы `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user_sale`
--
ALTER TABLE `user_sale`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `goods_id` (`goods_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `adress`
--
ALTER TABLE `adress`
  ADD CONSTRAINT `adress_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ограничения внешнего ключа таблицы `autors`
--
ALTER TABLE `autors`
  ADD CONSTRAINT `autors_ibfk_1` FOREIGN KEY (`isbn`) REFERENCES `isbn` (`isbn`);

--
-- Ограничения внешнего ключа таблицы `goods`
--
ALTER TABLE `goods`
  ADD CONSTRAINT `goods_ibfk_1` FOREIGN KEY (`id_publisher`) REFERENCES `publishers` (`id`),
  ADD CONSTRAINT `goods_ibfk_2` FOREIGN KEY (`id_category`) REFERENCES `categoryes` (`id_category`);

--
-- Ограничения внешнего ключа таблицы `isbn`
--
ALTER TABLE `isbn`
  ADD CONSTRAINT `isbn_ibfk_1` FOREIGN KEY (`id_goods`) REFERENCES `goods` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_sale`
--
ALTER TABLE `user_sale`
  ADD CONSTRAINT `user_sale_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `user_sale_ibfk_2` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
