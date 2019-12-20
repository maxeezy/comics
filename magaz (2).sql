-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 21 2019 г., 02:33
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
  `discription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `id_publisher`, `name`, `id_category`, `img`, `discription`, `price`) VALUES
(6, 1, 'Бэтмен', 2, 'https://static-eu.insales.ru/images/products/1/2190/142436494/yNagRM0gxzg.jpg', 'Брюсу Уэйну суждено стать легендой, но пока он просто хочет сделать свой город лучше. Что заставило его надеть маску и в первый раз выйти на мрачные и жестокие улицы Готэма? И что делать честному полицейскому Джиму Гордону — стремиться изменить мир к лучшему или стать частью коррумпированной системы? “Бэтмен. Год первый” — стал одним из ключевых сюжетов для графических историй, после которого не только комиксы о Бэтмене, но и вся супергероика взяла курс на мрачность и серьезность. В российское издание входит полная версия графического романа “Бэтмен. Год первый”, а также многочисленные дополнительные материалы: страницы сценария Фрэнка Миллера, зарисовки и наброски Дэвида Мацукелли, предисловие от обоих авторов.', 359),
(7, 1, 'Человек паук', 1, 'http://img1.unicomics.com/comics/amazing-spider-man/amazing-spider-man-523/01.jpg', 'В 1962 году мир впервые познакомился с Человеком-Пауком. Перед читателями предстал не просто очередной герой в маске — за маской скрывался обычный школьник Питер Паркер, со своими проблемами и стремлениями, на которого однажды свалилась великая ноша силы и ответственности. Такой подход к герою не только снискал любовь читателей, но дал совершенно новую жизнь всему издательству Marvel. Благодаря комиксу “Классика Marvel. Удивительный Человек-Паук” у вас есть возможность узнать о первых приключениях любимого героя.', 268),
(8, 2, 'Черная смэрть', 1, 'https://steamuserimages-a.akamaihd.net/ugc/947344415646334455/9D8368AC87ACBB4E36FCF86378241626C3D07BFC/', 'Никакого «Смертоносного Защитника». Никакого «Космического Рыцаря». Настало время для нового Венома. Как здорово быть плохим! Но вот он опять на Земле, и кто же с ним соединился — и превратился в клыкастое склизкое чудище? Пока симбиот вспоминает старые фокусы, погрузитесь в самую убийственную из историй о Веноме! В ней участвуют его старые приятели вроде Мака Гаргана, Скорпиона! И один бывший носитель Венома, известный паутинник, стенолаз и остряк! О да, мы ещё не видели такой жаркой схватки между Веномом и Человеком-Пауком! Захочется продолжения. ', 1432),
(9, 2, 'Паучьи миры', 1, 'https://img-gorod.ru/26/309/2630933_detail.jpg', 'Один из смертоноснейших врагов Паучка снова вернулся. Но на этот раз он не один. Вся семья Морлана, зовущая себя Наследниками, несётся по всей мультивселенной, питаясь жизненными силами суперлюдей-арахнидов. И они не остановятся, пока не поглотят каждого Человека-Паука! Ни один герой не сможет выжить. Чтобы дать хоть какой-нибудь отпор, Паукам придётся объединиться - от Удивительного до Непревзойдённого, от Необычайного до Сенсационного, от Дружелюбного Соседа до Совершенного, от 1602 до 2099. Мультяшные Пауки! Пауки-Клоны! Пауки в крутых костюмах! Даже Космический Паук! В этом событии вы встретите всех, начиная с давних любимчиков, таких как Бен Рейли, и - да! - Свина-Паука, заканчивая новыми звёздами, такими как огромный робот ПА//к и впечатляюще крутая Гвен-Паук. ', 2000),
(10, 1, 'Бэтмен. Книга 6. Эндшпиль ', 2, 'https://cdn1.ozone.ru/s3/multimedia-c/c1200/6006164940.jpg', 'ХА. ХА. ХА. ОН ВЕРНУЛСЯ. И НА ЭТОТ РАЗ ОН НЕ ШУТИТ! Бэтмен и Джокер. Темный Рыцарь и Бледный Человек. Долгие годы они противостояли друг другу. Всякий раз, когда злодей погружался во все более глубокие пучины зла, герой рвался к новым вершинам, стремясь остановить его. Воистину, они были \"лучшими врагами\". До недавних пор. Больше никаких игр разума. Никаких извращенных шуток. Безумный убийца, который возвел зло в ранг высокого искусства, готовится создать свой шедевр. Полностью уничтожить Бэтмена и все, что ему дорого. Он обратит против Бэтмена Лигу Справедливости. Превратит жителей Готэма в хихикающих психопатов. И это только начало. Кульминация будет ужасающей. Бэтмен верит, что его роковой противник – всего лишь человек. Безумный, но смертный. Но что, если Джокер – это извечное зло? Сможет ли Темный Рыцарь оборвать шутку, длящуюся уже столько лет?', 650),
(11, 2, 'Росомаха. Старик Логан | Миллар Марк', 1, 'https://cdn1.ozone.ru/s3/multimedia-u/c1200/6007124538.jpg', 'Мягкий переплет, 17х26, 224 страницы, на русском языке. Когда-то Марк Миллар (\"Мордобой\", \"Особо опасен\") уже делал историю про Росомаху — \"Враг государства\", но на этот раз он превзошёл самого себя. В этом ему помог его бессменный \"брат по оружию\" в \"Гражданской Войне\" — художник Стив Макнивен. Смешав супергероику далёкой антиутопии мира \"Людей Икс: Дней минувшего будущего\" с диким постапокалиптическим миром \"Безумного Макса\" и трагическим путешествием героя, напоминающего архетипы Клинта Иствуда, Марк Миллар создал комикс о Росомахе, который находится на распутьеи не знает, кто он теперь и кем он хочет быть. Безумные экшн-сцены Миллара и динамичная раскадровка Макнивена заставят вас с нетерпением перелистывать страницы, пока Росомаха не прикончит последнего злодея в своём бесконечном поиске мирного существования.', 432);

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
(8, '973-5-04-100931-2'),
(9, '9785913395962'),
(10, '978-5-389-12474-5\r\n'),
(11, '978-5-91339-329-6\r\n');

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
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rank` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `mail`, `login`, `password`, `rank`) VALUES
(27, 'vasia@mail.ru', 'vasia', '123456', 'user'),
(28, 'ne_vasia@mail.RU', 'ne_vasia', '1234567', 'user'),
(29, 'qwerty@mail.ru', 'qwerty', '12345678', 'user'),
(30, 'molodoy@mail.ru', 'molodoy', '$2y$10$M3KV7ac8XYWZElgMS8.0tO03.O4LoboPjxFUvCLkkm02wvhgPFNnG', 'user'),
(31, 'user@mail.ru', 'user12', '$2y$10$SDl4/xWdLkRjQhHzWd2LV.BvD9eaa5cZsgMzrGbnexAu2ww3SpeqO', 'admin'),
(32, 'rooney@mail.ru', 'rooney', '$2y$10$hd8T4FAH7XKo46UvHviD3.A.BTFHx4JwvwikTzT3wjQsyrhO5WBXy', 'user');

-- --------------------------------------------------------

--
-- Структура таблицы `user_sale`
--

CREATE TABLE `user_sale` (
  `user_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user_sale`
--

INSERT INTO `user_sale` (`user_id`, `goods_id`) VALUES
(27, 6),
(27, 6),
(27, 8),
(27, 6),
(27, 6),
(27, 7),
(27, 6),
(27, 9);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

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
