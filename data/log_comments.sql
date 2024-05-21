CREATE DATABASE IF NOT EXISTS `log_comments`;
USE `log_comments`;
CREATE TABLE `comments` (
  `id` int NOT NULL,
  `text` varchar(60) NOT NULL,
  `positionX` int NOT NULL,
  `positionY` int NOT NULL,
  `color` varchar(20) NOT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `utm` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

INSERT INTO `comments` (`id`, `text`, `positionX`, `positionY`, `color`, `time`, `utm`) VALUES
(1, 'Heloy', 10, 20, '(100,200,250)', '2020-10-19 11:37:23', NULL),
(20, 'Аее', 54, 38, '(198,147,139)', '2020-10-19 11:37:23', NULL),
(21, 'Здрасьте', 46, 32, '(138,217,61)', '2020-10-19 11:37:23', NULL),
(22, '<3<3<3', 8, 82, '(226,239,225)', '2020-10-19 11:37:23', NULL),
(23, 'Каво', 44, 25, '(160,77,92)', '2020-10-19 11:37:23', NULL),
(24, 'ты гей', 36, 24, '(100,163,222)', '2020-10-19 11:37:23', NULL),
(25, 'Бэг', 94, 92, '(68,198,123)', '2020-10-19 11:37:23', NULL),
(26, 'Нит', 53, 40, '(66,128,251)', '2020-10-19 11:37:23', NULL),
(27, 'Пеееерсики', 50, 71, '(190,227,241)', '2020-10-19 11:37:23', NULL),
(28, 'Хочу сырники', 39, 92, '(195,148,73)', '2020-10-19 11:37:23', NULL),
(29, 'Ты цьмо', 15, 16, '(167,93,146)', '2020-10-19 11:37:23', NULL),
(30, 'Непонел', 74, 22, '(149,92,77)', '2020-10-19 11:37:23', NULL),
(31, 'Урод вОнючий ', 84, 88, '(111,65,164)', '2020-10-19 11:37:23', NULL),
(32, 'Доверься', 50, 62, '(99,206,216)', '2020-10-19 11:37:23', NULL),
(33, 'Ну и нафига всё это', 36, 50, '(127,101,96)', '2020-10-19 11:37:23', NULL),
(34, 'мама забери меня почему таааак', 47, 65, '(141,169,82)', '2020-10-19 11:37:23', NULL),
(35, 'Пиццайка :3', 39, 52, '(110,80,178)', '2020-10-19 11:37:23', NULL),
(36, 'Love', 17, 8, '(120,143,166)', '2020-10-19 11:37:23', NULL),
(37, 'Печеньки', 60, 82, '(126,167,79)', '2020-10-19 11:37:23', NULL),
(39, '***---**-*-**', 55, 11, '(235,174,134)', '2020-10-19 11:37:23', NULL),
(40, 'Здесь был баг', 75, 41, '(234,172,234)', '2020-10-19 11:37:23', NULL),
(42, 'гавно с жопой', 19, 57, '(170,156,237)', '2020-10-19 11:37:23', NULL),
(44, 'Удачи', 8, 22, '(232,79,168)', '2020-10-19 11:37:23', NULL),
(45, 'Ку', 82, 44, '(253,253,174)', '2020-10-19 11:37:23', NULL),
(46, 'а надо, да?', 33, 63, '(65,137,176)', '2020-10-19 11:37:23', NULL),
(47, 'Мям :3', 64, 88, '(154,167,102)', '2020-10-19 11:37:23', NULL),
(48, 'йцу', 39, 25, '(169,161,205)', '2020-10-19 11:37:23', NULL),
(77, 'ы', 11, 71, '(229, 75, 197)', '2020-10-19 11:37:23', NULL),
(78, 'бип бип буп', 19, 83, '(122, 130, 220)', '2020-10-19 11:37:23', NULL),
(79, 'тут был автоквантум', 80, 11, '(105, 195, 84)', '2020-10-19 11:37:23', NULL),
(80, 'привет из КвАнТориуМА', 73, 24, '(127, 253, 218)', '2020-10-19 11:37:23', NULL),
(82, 'Приколдес', 65, 74, '(165, 109, 133)', '2020-10-19 11:37:23', NULL),
(83, 'Ты зая:3', 62, 35, '(70, 111, 80)', '2020-10-19 11:40:53', NULL),
(84, 'А ты попу помыл?', 16, 78, '(96, 55, 190)', '2020-10-19 11:51:29', NULL),
(85, 'Ну да)', 43, 19, '(75, 147, 153)', '2020-10-19 11:52:18', NULL),
(86, 'Чиз пиздатый чел ахуенный', 22, 32, '(144, 244, 100)', '2020-10-19 11:53:36', NULL),
(87, 'Это лучший комментарий', 71, 89, '(241, 182, 255)', '2020-10-19 11:55:02', NULL),
(88, 'как какать?', 61, 40, '(155, 181, 146)', '2020-10-19 12:00:26', NULL),
(89, 'Чизкейк (∩ ͡° ͜ʖ ͡°)⊃━✿✿✿✿✿✿', 72, 32, '(117, 88, 234)', '2020-10-19 12:39:52', NULL),
(90, 'javascript головного мозга', 57, 76, '(67, 139, 246)', '2020-11-19 19:19:25', NULL),
(91, 'оно не работает(((', 15, 62, '(103, 192, 188)', '2020-12-11 14:03:51', NULL),
(92, 'Герман ты мяу', 26, 52, '(170, 227, 212)', '2020-12-14 19:17:36', NULL),
(93, 'ну коммент и коммент', 56, 69, '(92, 132, 158)', '2020-12-14 21:07:50', NULL),
(94, 'Я ЕБАЛ ТВОЮ ТЁЛКУ', 72, 54, '(108, 147, 61)', '2021-01-09 20:00:52', NULL),
(95, '28 февраля. Лежу у тебя', 73, 26, '(63, 255, 127)', '2021-02-28 19:48:31', NULL),
(96, 'ГЕЙний', 51, 55, '(93, 230, 139)', '2021-03-15 19:11:01', NULL),
(97, 'РЯДОВОЙ РЕУС, КО МНЕ!', 20, 67, '(150, 87, 62)', '2021-08-02 18:07:02', NULL),
(98, 'ГерMan', 33, 44, '(56, 255, 147)', '2021-08-02 19:42:03', NULL),
(99, '20.09.21 пригласил меня в кино', 25, 70, '(108, 157, 162)', '2021-09-20 19:44:52', NULL),
(100, 'Я снял хату у бонча', 11, 39, '(200, 93, 79)', '2021-10-12 09:05:19', NULL),
(101, 'Гейман', 40, 58, '(160, 111, 240)', '2022-02-03 13:44:19', NULL),
(102, 'ебаный рот этого казино блеять', 41, 82, '(218, 145, 125)', '2022-02-03 13:49:36', NULL),
(103, 'кино-говно точка ру', 21, 36, '(122, 62, 89)', '2022-02-03 13:51:59', NULL),
(104, 'Гоша', 51, 51, '(124, 67, 234)', '2022-05-21 20:49:04', NULL),
(105, 'ого, вот это да', 43, 80, '(111, 122, 230)', '2022-05-21 20:49:12', NULL),
(106, 'Неплох', 29, 82, '(241, 167, 155)', '2022-05-21 20:49:42', NULL),
(107, 'За Бонч', 80, 34, '(148, 214, 253)', '2022-05-21 20:53:01', NULL),
(108, 'Люблю бонч', 35, 85, '(105, 242, 133)', '2022-05-21 21:22:44', NULL),
(109, 'Комменты', 23, 47, '(158, 245, 104)', '2022-05-21 22:22:28', NULL),
(110, 'настольщики сломали коммы', 52, 25, '(244, 176, 223)', '2022-05-21 22:43:01', NULL),
(111, 'Орп', 17, 40, '(177, 167, 175)', '2022-05-22 12:06:59', NULL),
(112, 'ИСиТ - МОЩЬ', 71, 72, '(184, 253, 216)', '2022-07-06 17:41:26', NULL),
(113, 'Продам гараж', 64, 18, '(204, 185, 114)', '2022-07-18 05:54:08', NULL),
(114, 'echo \"ХЕЛЛОУ ХУМАНС\"', 30, 80, '(202, 135, 109)', '2022-07-19 10:15:20', NULL),
(115, 'guten tag', 68, 20, '(220, 164, 122)', '2022-07-19 10:37:18', NULL),
(118, 'eval(\'ale\' \'rt(0)\');', 63, 68, '(110, 87, 155)', '2022-07-19 16:16:15', NULL),
(119, '\'', 63, 18, '(247, 107, 213)', '2022-07-19 17:11:12', NULL),
(120, 'мама сшила мне штаны', 29, 90, '(196, 95, 154)', '2022-08-03 15:48:56', NULL),
(121, 'skvopa was here', 72, 58, '(111, 64, 154)', '2022-08-03 15:51:22', NULL),
(122, 'Из берёзовой коры', 69, 32, '(119, 145, 203)', '2022-08-12 19:20:10', NULL),
(128, 'Люблю вас', 44, 70, '(247, 183, 179)', '2022-08-24 18:57:29', '1'),
(129, 'Здарова', 71, 13, '(239, 58, 233)', '2022-08-24 18:57:45', '1'),
(130, 'ЫЫЫЫ', 66, 48, '(135, 105, 203)', '2022-08-24 18:57:59', '1'),
(131, 'пожили и хватит', 35, 81, '(229, 160, 237)', '2022-08-24 18:58:21', '1'),
(132, 'kekes loles', 71, 50, '(206, 134, 91)', '2022-08-24 19:33:10', '1'),
(133, 'чтобы попа не', 51, 51, '(87, 144, 174)', '2022-08-31 14:51:03', NULL),
(134, 'потела, не кусали', 57, 45, '(132, 221, 168)', '2022-09-10 15:19:19', NULL),
(135, '2 миска за таможню', 36, 71, '(175, 96, 222)', '2022-10-01 03:23:33', NULL),
(136, 'Привет из ITU!', 65, 20, '(219, 121, 51)', '2023-03-07 16:57:13', NULL),
(137, 'Больше символов', 18, 54, '(205, 243, 181)', '2023-03-07 16:59:02', NULL),
(138, 'ITUniversity пушка:)', 20, 50, '(207, 218, 179)', '2023-03-07 16:59:02', NULL),
(139, 'The selebrate and suck some dick', 82, 29, '(193, 90, 148)', '2023-03-25 19:22:10', NULL),
(140, 'Как так же сделать?', 81, 34, '(126, 193, 114)', '2023-03-25 19:24:39', NULL),
(141, 'Мур', 12, 37, '(143, 185, 87)', '2023-03-25 19:26:08', NULL),
(142, 'QQ', 66, 71, '(179, 126, 161)', '2023-03-25 19:29:12', NULL),
(143, 'НОВЫЙ СЕРВЕР \\O/', 28, 86, '(135, 53, 168)', '2023-06-05 17:38:52', NULL),
(145, 'Follow Kate, to tea meet', 48, 32, '(171, 102, 66)', '2023-07-02 11:59:19', NULL),
(146, 'memento mori', 10, 72, '(54, 187, 237)', '2023-07-19 17:36:33', NULL),
(147, '10.08 алматы гости', 69, 30, '(134, 209, 207)', '2023-08-10 14:13:47', NULL),
(148, 'АМОГУС', 58, 80, '(125, 163, 126)', '2024-02-12 09:53:33', NULL),
(154, 'топ кек', 14, 41, '(126, 146, 108)', '2024-02-21 20:29:56', 'артем майндсерфер'),
(155, 'JOPa', 56, 68, '(77, 60, 148)', '2024-02-21 20:31:54', 'артем майндсерфер'),
(158, 'А что, если зубочистка...', 10, 72, '(219, 249, 134)', '2024-02-22 06:29:38', NULL),
(160, 'Теплая прогулка в ботаническо', 77, 19, '(222, 216, 136)', '2024-02-22 06:34:05', NULL),
(161, 'Бытие Аты определило сознание', 71, 81, '(74, 84, 230)', '2024-02-22 09:21:17', NULL),
(162, 'дальше только больше и лучше', 68, 15, '(236, 191, 159)', '2024-02-22 11:10:50', NULL),
(163, 'хуй', 23, 25, '(121, 55, 102)', '2024-04-02 06:42:14', NULL),
(164, 'Здесь был Lef', 27, 74, '(189, 92, 78)', '2024-04-25 18:51:33', NULL),
(165, 'ДВЕ ДЕВУШКИ ЛУЧШЕ ЧЕМ ОДНА', 52, 54, '(164, 171, 107)', '2024-05-16 05:21:19', NULL),
(166, 'Скоро чето накалякаем', 11, 16, '(166, 69, 52)', '2024-05-16 16:53:55', NULL),
(167, 'Чиназес', 33, 43, '(227, 94, 147)', '2024-05-16 18:57:40', NULL);

ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

create table links
(
    id          int auto_increment,
    row_num     int        not null,
    columns_num int        not null,
    html        mediumtext not null,
    href        text not null,
    max_columns int not null,
    constraint table_name_pk
        primary key (id)
);

