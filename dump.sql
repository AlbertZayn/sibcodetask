-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Ноя 19 2023 г., 19:49
-- Версия сервера: 5.7.27-30
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `u2343679_default`
--

-- --------------------------------------------------------
--
-- Структура таблицы `b_user`
--
CREATE TABLE `b_user` (
                          `ID` int(11) NOT NULL,
                          `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
                          `LOGIN` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
                          `PASSWORD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
                          `CHECKWORD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
                          `NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `LAST_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `LAST_LOGIN` datetime DEFAULT NULL,
                          `DATE_REGISTER` datetime NOT NULL,
                          `LID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `PERSONAL_PROFESSION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `PERSONAL_WWW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `PERSONAL_ICQ` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `PERSONAL_GENDER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `PERSONAL_BIRTHDATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `PERSONAL_PHOTO` int(11) DEFAULT NULL,
                          `PERSONAL_PHONE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `PERSONAL_FAX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `PERSONAL_MOBILE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `PERSONAL_PAGER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `PERSONAL_STREET` text COLLATE utf8_unicode_ci,
                          `PERSONAL_MAILBOX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `PERSONAL_CITY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `PERSONAL_STATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `PERSONAL_ZIP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `PERSONAL_COUNTRY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `PERSONAL_NOTES` text COLLATE utf8_unicode_ci,
                          `WORK_COMPANY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `WORK_DEPARTMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `WORK_POSITION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `WORK_WWW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `WORK_PHONE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `WORK_FAX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `WORK_PAGER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `WORK_STREET` text COLLATE utf8_unicode_ci,
                          `WORK_MAILBOX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `WORK_CITY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `WORK_STATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `WORK_ZIP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `WORK_COUNTRY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `WORK_PROFILE` text COLLATE utf8_unicode_ci,
                          `WORK_LOGO` int(11) DEFAULT NULL,
                          `WORK_NOTES` text COLLATE utf8_unicode_ci,
                          `ADMIN_NOTES` text COLLATE utf8_unicode_ci,
                          `STORED_HASH` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `PERSONAL_BIRTHDAY` date DEFAULT NULL,
                          `EXTERNAL_AUTH_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `CHECKWORD_TIME` datetime DEFAULT NULL,
                          `SECOND_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `CONFIRM_CODE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `LOGIN_ATTEMPTS` int(11) DEFAULT NULL,
                          `LAST_ACTIVITY_DATE` datetime DEFAULT NULL,
                          `AUTO_TIME_ZONE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `TIME_ZONE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `TIME_ZONE_OFFSET` int(11) DEFAULT NULL,
                          `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `BX_USER_ID` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
                          `BLOCKED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
                          `PASSWORD_EXPIRED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
                          `points` int(11) NOT NULL DEFAULT '1000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_user`
--

INSERT INTO `b_user` (`ID`, `TIMESTAMP_X`, `LOGIN`, `PASSWORD`, `CHECKWORD`, `ACTIVE`, `NAME`, `LAST_NAME`, `EMAIL`, `LAST_LOGIN`, `DATE_REGISTER`, `LID`, `PERSONAL_PROFESSION`, `PERSONAL_WWW`, `PERSONAL_ICQ`, `PERSONAL_GENDER`, `PERSONAL_BIRTHDATE`, `PERSONAL_PHOTO`, `PERSONAL_PHONE`, `PERSONAL_FAX`, `PERSONAL_MOBILE`, `PERSONAL_PAGER`, `PERSONAL_STREET`, `PERSONAL_MAILBOX`, `PERSONAL_CITY`, `PERSONAL_STATE`, `PERSONAL_ZIP`, `PERSONAL_COUNTRY`, `PERSONAL_NOTES`, `WORK_COMPANY`, `WORK_DEPARTMENT`, `WORK_POSITION`, `WORK_WWW`, `WORK_PHONE`, `WORK_FAX`, `WORK_PAGER`, `WORK_STREET`, `WORK_MAILBOX`, `WORK_CITY`, `WORK_STATE`, `WORK_ZIP`, `WORK_COUNTRY`, `WORK_PROFILE`, `WORK_LOGO`, `WORK_NOTES`, `ADMIN_NOTES`, `STORED_HASH`, `XML_ID`, `PERSONAL_BIRTHDAY`, `EXTERNAL_AUTH_ID`, `CHECKWORD_TIME`, `SECOND_NAME`, `CONFIRM_CODE`, `LOGIN_ATTEMPTS`, `LAST_ACTIVITY_DATE`, `AUTO_TIME_ZONE`, `TIME_ZONE`, `TIME_ZONE_OFFSET`, `TITLE`, `BX_USER_ID`, `LANGUAGE_ID`, `BLOCKED`, `PASSWORD_EXPIRED`, `points`) VALUES
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             (1, '2023-11-17 10:53:22', 'Bert', '$6$Xhg3JaYwH72imO3X$QbIHYyGu7gJIKbgSG8k5hkNjoEmY2b9RE/78/hBCve0TKAwYqtKgQgNq3C4zR2EcTWQjlHE3Px8PU2eC7QWfb0', '$6$fA61pCG0rc2iUs2H$UCwh5miwmI/46/5tUWwslyJEN/UguK7H6XFv2lFXs079kHTktBwXBXbkwlXdSubKjTe50yB3S/EPWb4T1G0hS/', 'Y', '', '', 'albertzayn7@gmail.com', '2023-11-19 19:23:12', '2023-11-17 13:53:22', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 13:53:22', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'N', 'N', 1000),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             (5, '2023-11-18 14:42:36', 'test2', '$6$1ECRnaa4L8R9fdSF$6R0f3eaUG0kG.YPIfFzbADueIIyAWM9mZSqhfW8uwKPmmC0DrudqNTQiTVB6g6X0vYS8keej5Cv9t2jeZzWZA0', '$6$i1AsmBWwPv1tKOxZ$XcMkUr/mrYoaTjW7aty2k3rO4G4xFbGreIKNE85Spote.yNOlFi.HFbLowoVWNvVFENkiWN5JZJhNydI0L4zT.', 'Y', 'test#2', NULL, 'test2@mail.com', '2023-11-18 17:42:36', '2023-11-18 17:42:36', 's1', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-18 17:42:36', NULL, '', 0, NULL, '', NULL, NULL, NULL, NULL, 'ru', 'N', 'N', 1000),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             (6, '2023-11-19 09:38:00', 'test', '$6$ISOw83io5A1yENlA$XrSnNXOqfoSx5CF2exAGiGZKoh4MPYZuO0V96EWKgnpOJP3KDjhlbj3BLCZieUVaSXAUvhD0wuPlEaK.06xwB.', '$6$gj2SapaXAjJARBth$P.FR05a/oC0KyUfH8as0CMRT5nVfUgDtxSR8sOgGcaVT58973yT8DjaCrLN9XAGfsR2chQ2PPWUd855NXC7g1.', 'Y', 'test#1', NULL, 'test@mail.com', '2023-11-19 12:36:04', '2023-11-18 17:43:35', 's1', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-18 17:43:35', NULL, '', 0, NULL, '', NULL, NULL, NULL, NULL, 'ru', 'N', 'N', 2000),
--
-- Индексы сохранённых таблиц
-- Индексы таблицы `b_user`
--
ALTER TABLE `b_user`
    ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ix_login` (`LOGIN`,`EXTERNAL_AUTH_ID`),
  ADD KEY `ix_b_user_email` (`EMAIL`),
  ADD KEY `ix_b_user_activity_date` (`LAST_ACTIVITY_DATE`),
  ADD KEY `IX_B_USER_XML_ID` (`XML_ID`),
  ADD KEY `ix_user_last_login` (`LAST_LOGIN`),
  ADD KEY `ix_user_date_register` (`DATE_REGISTER`);

--
-- AUTO_INCREMENT для сохранённых таблиц
-- AUTO_INCREMENT для таблицы `b_user`
--
ALTER TABLE `b_user`
    MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;


CREATE TABLE `transactions` (
                                `id` int(11) NOT NULL,
                                `user_id` int(11) NOT NULL,
                                `amount` int(11) NOT NULL,
                                `type` enum('deposit','withdraw') COLLATE utf8_unicode_ci NOT NULL,
                                `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Индексы сохранённых таблиц
-- Индексы таблицы `transactions`
--
ALTER TABLE `transactions`
    ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);
--
-- AUTO_INCREMENT для сохранённых таблиц
-- AUTO_INCREMENT для таблицы `transactions`
--
ALTER TABLE `transactions`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Ограничения внешнего ключа сохраненных таблиц
-- Ограничения внешнего ключа таблицы `transactions`
--
ALTER TABLE `transactions`
    ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;