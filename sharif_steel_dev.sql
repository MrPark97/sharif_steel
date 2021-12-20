-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Дек 09 2021 г., 10:12
-- Версия сервера: 8.0.26
-- Версия PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `sharif_steel_dev`
--
CREATE DATABASE IF NOT EXISTS `sharif_steel_dev` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `sharif_steel_dev`;

-- --------------------------------------------------------

--
-- Структура таблицы `callback_query`
--

CREATE TABLE `callback_query` (
  `id` bigint UNSIGNED NOT NULL COMMENT 'Unique identifier for this query',
  `user_id` bigint DEFAULT NULL COMMENT 'Unique user identifier',
  `chat_id` bigint DEFAULT NULL COMMENT 'Unique chat identifier',
  `message_id` bigint UNSIGNED DEFAULT NULL COMMENT 'Unique message identifier',
  `inline_message_id` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'Identifier of the message sent via the bot in inline mode, that originated the query',
  `chat_instance` char(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '' COMMENT 'Global identifier, uniquely corresponding to the chat to which the message with the callback button was sent',
  `data` char(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '' COMMENT 'Data associated with the callback button',
  `game_short_name` char(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '' COMMENT 'Short name of a Game to be returned, serves as the unique identifier for the game',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Entry date creation'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `callback_query`
--

INSERT INTO `callback_query` (`id`, `user_id`, `chat_id`, `message_id`, `inline_message_id`, `chat_instance`, `data`, `game_short_name`, `created_at`) VALUES
(1219315636305963, 283894, 283894, 888, NULL, '-7479149400330019170', 'sale_category_1', '', '2021-11-25 04:49:26'),
(1219316053336289, 283894, 283894, 853, NULL, '-7479149400330019170', 'sale_category_3', '', '2021-11-25 02:55:54'),
(1219316624064207, 283894, 283894, 857, NULL, '-7479149400330019170', 'sale_category_3', '', '2021-11-25 02:56:24'),
(1219316692407667, 283894, 283894, 785, NULL, '-7479149400330019170', 'inline query...', '', '2021-11-24 07:25:53'),
(1219317013901590, 283894, 283894, 840, NULL, '-7479149400330019170', 'sale_category_3', '', '2021-11-25 02:49:57'),
(1219317061847181, 283894, 283894, 847, NULL, '-7479149400330019170', 'sale_category_3', '', '2021-11-25 02:52:37'),
(1219317178128029, 283894, 283894, 885, NULL, '-7479149400330019170', 'sale_category_6', '', '2021-11-25 04:49:19'),
(1219318256464545, 283894, 283894, 843, NULL, '-7479149400330019170', 'sale_category_3', '', '2021-11-25 02:50:13'),
(140191159971218407, 32640798, 32640798, 789, NULL, '-3830463086945304197', 'sale_category_5', '', '2021-11-24 23:31:01'),
(140191160000443656, 32640798, 32640798, 1324, NULL, '-3830463086945304197', 'unbook 1639043413 user_reservations_nn_mrpark.csv', '', '2021-12-09 04:50:29'),
(140191160148057362, 32640798, 32640798, 1309, NULL, '-3830463086945304197', 'unbook 1639032793 user_reservations_nn_mrpark.csv', '', '2021-12-09 04:23:03'),
(140191160162080576, 32640798, 32640798, 809, NULL, '-3830463086945304197', 'sale_category_1', '', '2021-11-25 00:32:34'),
(140191160176504795, 32640798, 32640798, 1040, NULL, '-3830463086945304197', 'sale_item_cash_1', '', '2021-11-30 06:00:40'),
(140191160285292858, 32640798, 32640798, 1048, NULL, '-3830463086945304197', 'sale_item_cash_1', '', '2021-11-30 06:39:45'),
(140191160303547336, 32640798, 32640798, 1170, NULL, '-3830463086945304197', 'sale_item_paid_1', '', '2021-12-03 04:25:52'),
(140191160377268687, 32640798, 32640798, 1040, NULL, '-3830463086945304197', 'sale_item_cash_1', '', '2021-11-30 06:12:23'),
(140191160425802182, 32640798, 32640798, 823, NULL, '-3830463086945304197', 'sale_category_4', '', '2021-11-25 02:32:30'),
(140191160430479359, 32640798, 32640798, 1074, NULL, '-3830463086945304197', 'sale_item_paid_1', '', '2021-12-01 04:18:24'),
(140191160625346119, 32640798, 32640798, 1222, NULL, '-3830463086945304197', 'purchase_item_paid_0', '', '2021-12-03 05:02:00'),
(140191160632471290, 32640798, 32640798, 1212, NULL, '-3830463086945304197', 'purchase_item_cash_1', '', '2021-12-03 04:56:35'),
(140191160651588713, 32640798, 32640798, 1036, NULL, '-3830463086945304197', 'sale_item_cash_1', '', '2021-11-30 05:11:51'),
(140191160849240630, 32640798, 32640798, 807, NULL, '-3830463086945304197', 'sale_category_1', '', '2021-11-25 00:04:53'),
(140191161018460138, 32640798, 32640798, 841, NULL, '-3830463086945304197', 'sale_category_7', '', '2021-11-25 02:49:57'),
(140191161028009524, 32640798, 32640798, 1040, NULL, '-3830463086945304197', 'sale_item_cash_1', '', '2021-11-30 06:10:21'),
(140191161032273203, 32640798, 32640798, 852, NULL, '-3830463086945304197', 'sale_category_4', '', '2021-11-25 02:56:11'),
(140191161137856195, 32640798, 32640798, 1073, NULL, '-3830463086945304197', 'sale_item_cash_1', '', '2021-11-30 10:33:16'),
(140191161174936917, 32640798, 32640798, 1316, NULL, '-3830463086945304197', 'unbook 1639032762 user_reservations_nn_mrpark.csv', '', '2021-12-09 04:47:53'),
(140191161175399058, 32640798, 32640798, 845, NULL, '-3830463086945304197', 'sale_category_3', '', '2021-11-25 02:50:19'),
(140191161267415361, 32640798, 32640798, 771, NULL, '-3830463086945304197', 'identifier', '', '2021-11-24 07:11:34'),
(140191161305718708, 32640798, 32640798, 1053, NULL, '-3830463086945304197', 'sale_item_paid_0', '', '2021-11-30 09:47:34'),
(140191161329984830, 32640798, 32640798, 1049, NULL, '-3830463086945304197', 'sale_item_paid_1', '', '2021-11-30 06:39:54'),
(140191161342822048, 32640798, 32640798, 1338, NULL, '-3830463086945304197', 'unbook 1639043467 user_reservations_nn_mrpark.csv', '', '2021-12-09 04:52:27'),
(140191161350417927, 32640798, 32640798, 1040, NULL, '-3830463086945304197', 'sale_item_cash_1', '', '2021-11-30 06:27:29'),
(140191161366121238, 32640798, 32640798, 815, NULL, '-3830463086945304197', 'sale_category_full', '', '2021-11-25 00:41:03'),
(140191161390498916, 32640798, 32640798, 787, NULL, '-3830463086945304197', 'inline query...', '', '2021-11-24 23:29:41'),
(140191161417213211, 32640798, 32640798, 1218, NULL, '-3830463086945304197', 'sale_item_paid_0', '', '2021-12-03 04:57:35'),
(140191161554393542, 32640798, 32640798, 1074, NULL, '-3830463086945304197', 'sale_item_paid_1', '', '2021-11-30 10:48:02'),
(140191161683921071, 32640798, 32640798, 1301, NULL, '-3830463086945304197', 'unbook 1001 user_reservations_nn_mrpark.csv', '', '2021-12-09 04:17:12'),
(140191161808530411, 32640798, 32640798, 1040, NULL, '-3830463086945304197', 'sale_item_cash_1', '', '2021-11-30 06:22:06'),
(140191161897307231, 32640798, 32640798, 801, NULL, '-3830463086945304197', 'sale_category_1', '', '2021-11-24 23:46:23'),
(140191161923360021, 32640798, 32640798, 833, NULL, '-3830463086945304197', 'sale_category_0', '', '2021-11-25 02:38:14'),
(140191162054866440, 32640798, 32640798, 849, NULL, '-3830463086945304197', 'sale_category_4', '', '2021-11-25 02:52:58'),
(140191162057476476, 32640798, 32640798, 1208, NULL, '-3830463086945304197', 'purchase_item_paid_0', '', '2021-12-03 04:55:56'),
(140191162066822662, 32640798, 32640798, 1292, NULL, '-3830463086945304197', '1639032793 data/2021/December/09/user_reservations_nn_mrpark.csv', '', '2021-12-09 04:04:09'),
(140191162085420096, 32640798, 32640798, 1213, NULL, '-3830463086945304197', 'purchase_item_paid_0', '', '2021-12-03 04:56:38'),
(140191162158873208, 32640798, 32640798, 781, NULL, '-3830463086945304197', 'sale_category_full', '', '2021-11-24 07:24:48'),
(140191162203637722, 32640798, 32640798, 1347, NULL, '-3830463086945304197', 'unbook 1639043612 user_reservations_nn_mrpark.csv', '', '2021-12-09 04:54:11'),
(140191162219622009, 32640798, 32640798, 1226, NULL, '-3830463086945304197', 'purchase_item_cash_1', '', '2021-12-03 05:02:52'),
(140191162228209993, 32640798, 32640798, 1040, NULL, '-3830463086945304197', 'sale_item_cash_1', '', '2021-11-30 06:21:37'),
(140191162289541405, 32640798, 32640798, 821, NULL, '-3830463086945304197', 'sale_category_0', '', '2021-11-25 02:31:16'),
(140191162342709905, 32640798, 32640798, 1040, NULL, '-3830463086945304197', 'sale_item_cash_0', '', '2021-11-30 06:22:25'),
(140191162409982009, 32640798, 32640798, 827, NULL, '-3830463086945304197', 'sale_category_4', '', '2021-11-25 02:34:17'),
(140191162414607421, 32640798, 32640798, 1074, NULL, '-3830463086945304197', 'sale_item_paid_1', '', '2021-11-30 10:47:07'),
(140191162453392759, 32640798, 32640798, 1053, NULL, '-3830463086945304197', 'sale_item_paid_0', '', '2021-11-30 09:47:52'),
(140191162468947045, 32640798, 32640798, 1333, NULL, '-3830463086945304197', 'unbook 1639043455 user_reservations_nn_mrpark.csv', '', '2021-12-09 04:51:21'),
(140191162482181335, 32640798, 32640798, 1294, NULL, '-3830463086945304197', '1639032762 data/2021/December/09/user_reservations_nn_mrpark.csv', '', '2021-12-09 04:06:57'),
(140191162487580249, 32640798, 32640798, 787, NULL, '-3830463086945304197', 'inline query...', '', '2021-11-24 23:30:38'),
(140191162510711444, 32640798, 32640798, 833, NULL, '-3830463086945304197', 'sale_category_1', '', '2021-11-25 02:37:47'),
(140191162528937103, 32640798, 32640798, 817, NULL, '-3830463086945304197', 'sale_category_5', '', '2021-11-25 01:42:05'),
(140191162619671320, 32640798, 32640798, 1048, NULL, '-3830463086945304197', 'sale_item_cash_1', '', '2021-11-30 06:29:23'),
(140191162646265229, 32640798, 32640798, 1040, NULL, '-3830463086945304197', 'sale_item_cash_0', '', '2021-11-30 06:10:53'),
(140191162662121508, 32640798, 32640798, 1311, NULL, '-3830463086945304197', 'unbook 1639032793 user_reservations_nn_mrpark.csv', '', '2021-12-09 04:42:50'),
(140191162747001789, 32640798, 32640798, 805, NULL, '-3830463086945304197', 'sale_category_1', '', '2021-11-24 23:47:35'),
(140191162780500652, 32640798, 32640798, 1309, NULL, '-3830463086945304197', 'unbook 1639032793 user_reservations_nn_mrpark.csv', '', '2021-12-09 04:26:47'),
(140191162807749325, 32640798, 32640798, 1203, NULL, '-3830463086945304197', 'purchase_item_paid_1', '', '2021-12-03 04:53:29'),
(140191162826067761, 32640798, 32640798, 793, NULL, '-3830463086945304197', 'sale_category_1', '', '2021-11-24 23:41:47'),
(140191162848290156, 32640798, 32640798, 1217, NULL, '-3830463086945304197', 'sale_item_cash_1', '', '2021-12-03 04:57:32'),
(140191162901525150, 32640798, 32640798, 1175, NULL, '-3830463086945304197', 'sale_item_paid_0', '', '2021-12-03 04:27:56'),
(140191162918586303, 32640798, 32640798, 1048, NULL, '-3830463086945304197', 'sale_item_cash_1', '', '2021-11-30 06:39:22'),
(140191162948290418, 32640798, 32640798, 1355, NULL, '-3830463086945304197', 'unbook 1639043595 user_reservations_nn_mrpark.csv', '', '2021-12-09 04:56:06'),
(140191163026271124, 32640798, 32640798, 1040, NULL, '-3830463086945304197', 'sale_item_cash_1', '', '2021-11-30 06:09:49'),
(140191163035443299, 32640798, 32640798, 1227, NULL, '-3830463086945304197', 'purchase_item_paid_0', '', '2021-12-03 05:02:54'),
(140191163100069646, 32640798, 32640798, 1040, NULL, '-3830463086945304197', 'sale_item_cash_1', '', '2021-11-30 06:09:11'),
(140191163106007237, 32640798, 32640798, 1040, NULL, '-3830463086945304197', 'sale_item_cash_1', '', '2021-11-30 05:59:07'),
(140191163186665632, 32640798, 32640798, 1040, NULL, '-3830463086945304197', 'sale_item_cash_0', '', '2021-11-30 06:00:50'),
(140191163222815739, 32640798, 32640798, 1074, NULL, '-3830463086945304197', 'sale_item_paid_1', '', '2021-12-01 04:47:12'),
(140191163342317074, 32640798, 32640798, 1192, NULL, '-3830463086945304197', 'purchase_item_cash_1', '', '2021-12-03 04:43:03'),
(140191163382297600, 32640798, 32640798, 827, NULL, '-3830463086945304197', 'sale_category_4', '', '2021-11-25 02:37:08'),
(140191163390879333, 32640798, 32640798, 1040, NULL, '-3830463086945304197', 'sale_item_cash_1', '', '2021-11-30 05:59:17'),
(140191163407516546, 32640798, 32640798, 1301, NULL, '-3830463086945304197', 'unbook 1639032762 user_reservations_nn_mrpark.csv', '', '2021-12-09 04:17:05'),
(140191163444944013, 32640798, 32640798, 1049, NULL, '-3830463086945304197', 'sale_item_paid_1', '', '2021-11-30 06:40:01'),
(140191163446091509, 32640798, 32640798, 1074, NULL, '-3830463086945304197', 'sale_item_paid_1', '', '2021-12-01 06:40:42'),
(140191163522610208, 32640798, 32640798, 1309, NULL, '-3830463086945304197', 'unbook 1639032793 user_reservations_nn_mrpark.csv', '', '2021-12-09 04:23:03'),
(140191163577495982, 32640798, 32640798, 811, NULL, '-3830463086945304197', 'sale_category_5', '', '2021-11-25 00:34:05'),
(140191163607291355, 32640798, 32640798, 1074, NULL, '-3830463086945304197', 'sale_item_paid_1', '', '2021-11-30 10:33:19'),
(140191163614093101, 32640798, 32640798, 772, NULL, '-3830463086945304197', 'identifier', '', '2021-11-24 07:24:27'),
(140191163630170646, 32640798, 32640798, 795, NULL, '-3830463086945304197', 'sale_category_1', '', '2021-11-24 23:43:25'),
(140191163634570511, 32640798, 32640798, 819, NULL, '-3830463086945304197', 'sale_category_full', '', '2021-11-25 01:42:26'),
(140191163665648257, 32640798, 32640798, 1174, NULL, '-3830463086945304197', 'sale_item_cash_1', '', '2021-12-03 04:27:52'),
(140191163668050465, 32640798, 32640798, 1189, NULL, '-3830463086945304197', 'sale_item_cash_1', '', '2021-12-03 04:42:21'),
(140191163771238831, 32640798, 32640798, 813, NULL, '-3830463086945304197', 'sale_category_1', '', '2021-11-25 00:40:48'),
(140191163782682472, 32640798, 32640798, 1221, NULL, '-3830463086945304197', 'purchase_item_cash_1', '', '2021-12-03 05:01:15'),
(140191163798755230, 32640798, 32640798, 1048, NULL, '-3830463086945304197', 'sale_item_cash_1', '', '2021-11-30 06:36:29'),
(140191163850647199, 32640798, 32640798, 1207, NULL, '-3830463086945304197', 'purchase_item_cash_1', '', '2021-12-03 04:55:53'),
(140191163868014283, 32640798, 32640798, 1169, NULL, '-3830463086945304197', 'sale_item_cash_1', '', '2021-12-03 04:25:49'),
(140191163869022132, 32640798, 32640798, 1074, NULL, '-3830463086945304197', 'sale_item_paid_1', '', '2021-11-30 10:56:46'),
(140191163938496334, 32640798, 32640798, 1040, NULL, '-3830463086945304197', 'sale_item_cash_1', '', '2021-11-30 06:11:45'),
(140191163942829292, 32640798, 32640798, 1040, NULL, '-3830463086945304197', 'sale_item_cash_1', '', '2021-11-30 06:27:35'),
(140191164008573244, 32640798, 32640798, 1202, NULL, '-3830463086945304197', 'purchase_item_cash_1', '', '2021-12-03 04:53:26'),
(140191164010102707, 32640798, 32640798, 1292, NULL, '-3830463086945304197', '1639032762 data/2021/December/09/user_reservations_nn_mrpark.csv', '', '2021-12-09 04:03:51'),
(140191164072841397, 32640798, 32640798, 1040, NULL, '-3830463086945304197', 'sale_item_cash_1', '', '2021-11-30 06:21:10'),
(140191164116141149, 32640798, 32640798, 1074, NULL, '-3830463086945304197', 'sale_item_paid_1', '', '2021-12-01 04:18:24'),
(140191164204978223, 32640798, 32640798, 1052, NULL, '-3830463086945304197', 'sale_item_cash_1', '', '2021-11-30 09:47:10');

-- --------------------------------------------------------

--
-- Структура таблицы `chat`
--

CREATE TABLE `chat` (
  `id` bigint NOT NULL COMMENT 'Unique identifier for this chat',
  `type` enum('private','group','supergroup','channel') COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'Type of chat, can be either private, group, supergroup or channel',
  `title` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT '' COMMENT 'Title, for supergroups, channels and group chats',
  `username` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'Username, for private chats, supergroups and channels if available',
  `first_name` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'First name of the other party in a private chat',
  `last_name` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'Last name of the other party in a private chat',
  `all_members_are_administrators` tinyint(1) DEFAULT '0' COMMENT 'True if a all members of this group are admins',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Entry date creation',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Entry date update',
  `old_id` bigint DEFAULT NULL COMMENT 'Unique chat identifier, this is filled when a group is converted to a supergroup'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `chat`
--

INSERT INTO `chat` (`id`, `type`, `title`, `username`, `first_name`, `last_name`, `all_members_are_administrators`, `created_at`, `updated_at`, `old_id`) VALUES
(283894, 'private', NULL, 'Dee_so0', 'Дмитрий', 'Шегай', NULL, '2021-11-22 08:56:53', '2021-12-01 06:29:19', NULL),
(32640798, 'private', NULL, 'nn_mrpark', 'Евгений', 'Пак', NULL, '2021-11-23 05:06:19', '2021-12-09 04:55:54', NULL),
(1855436069, 'private', NULL, NULL, '叶问', 'ABDUROZIQOV', NULL, '2021-11-24 04:05:32', '2021-11-24 04:08:14', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `chat_member_updated`
--

CREATE TABLE `chat_member_updated` (
  `id` bigint UNSIGNED NOT NULL COMMENT 'Unique identifier for this entry',
  `chat_id` bigint NOT NULL COMMENT 'Chat the user belongs to',
  `user_id` bigint NOT NULL COMMENT 'Performer of the action, which resulted in the change',
  `date` timestamp NOT NULL COMMENT 'Date the change was done in Unix time',
  `old_chat_member` text COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'Previous information about the chat member',
  `new_chat_member` text COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'New information about the chat member',
  `invite_link` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Chat invite link, which was used by the user to join the chat; for joining by invite link events only',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Entry date creation'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `chat_member_updated`
--

INSERT INTO `chat_member_updated` (`id`, `chat_id`, `user_id`, `date`, `old_chat_member`, `new_chat_member`, `invite_link`, `created_at`) VALUES
(1, 32640798, 32640798, '2021-11-24 07:23:25', '{\"user\":{\"id\":2083989238,\"is_bot\":true,\"first_name\":\"SharifSteelBot\",\"username\":\"sharif_steel_bot\"},\"status\":\"member\"}', '{\"user\":{\"id\":2083989238,\"is_bot\":true,\"first_name\":\"SharifSteelBot\",\"username\":\"sharif_steel_bot\"},\"status\":\"kicked\",\"until_date\":0}', NULL, '2021-11-24 07:23:41'),
(2, 32640798, 32640798, '2021-11-24 07:23:33', '{\"user\":{\"id\":2083989238,\"is_bot\":true,\"first_name\":\"SharifSteelBot\",\"username\":\"sharif_steel_bot\"},\"status\":\"kicked\",\"until_date\":0}', '{\"user\":{\"id\":2083989238,\"is_bot\":true,\"first_name\":\"SharifSteelBot\",\"username\":\"sharif_steel_bot\"},\"status\":\"member\"}', NULL, '2021-11-24 07:24:18');

-- --------------------------------------------------------

--
-- Структура таблицы `chosen_inline_result`
--

CREATE TABLE `chosen_inline_result` (
  `id` bigint UNSIGNED NOT NULL COMMENT 'Unique identifier for this entry',
  `result_id` char(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '' COMMENT 'The unique identifier for the result that was chosen',
  `user_id` bigint DEFAULT NULL COMMENT 'The user that chose the result',
  `location` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'Sender location, only for bots that require user location',
  `inline_message_id` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'Identifier of the sent inline message',
  `query` text COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'The query that was used to obtain the result',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Entry date creation'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `conversation`
--

CREATE TABLE `conversation` (
  `id` bigint UNSIGNED NOT NULL COMMENT 'Unique identifier for this entry',
  `user_id` bigint DEFAULT NULL COMMENT 'Unique user identifier',
  `chat_id` bigint DEFAULT NULL COMMENT 'Unique user or chat identifier',
  `status` enum('active','cancelled','stopped') COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'active' COMMENT 'Conversation state',
  `command` varchar(160) COLLATE utf8mb4_unicode_520_ci DEFAULT '' COMMENT 'Default command to execute',
  `notes` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Data stored from command',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Entry date creation',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Entry date update'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `conversation`
--

INSERT INTO `conversation` (`id`, `user_id`, `chat_id`, `status`, `command`, `notes`, `created_at`, `updated_at`) VALUES
(1, 32640798, 32640798, 'active', 'survey', '{\"state\":0}', '2021-11-24 07:01:27', '2021-11-30 10:30:29');

-- --------------------------------------------------------

--
-- Структура таблицы `edited_message`
--

CREATE TABLE `edited_message` (
  `id` bigint UNSIGNED NOT NULL COMMENT 'Unique identifier for this entry',
  `chat_id` bigint DEFAULT NULL COMMENT 'Unique chat identifier',
  `message_id` bigint UNSIGNED DEFAULT NULL COMMENT 'Unique message identifier',
  `user_id` bigint DEFAULT NULL COMMENT 'Unique user identifier',
  `edit_date` timestamp NULL DEFAULT NULL COMMENT 'Date the message was edited in timestamp format',
  `text` text COLLATE utf8mb4_unicode_520_ci COMMENT 'For text messages, the actual UTF-8 text of the message max message length 4096 char utf8',
  `entities` text COLLATE utf8mb4_unicode_520_ci COMMENT 'For text messages, special entities like usernames, URLs, bot commands, etc. that appear in the text',
  `caption` text COLLATE utf8mb4_unicode_520_ci COMMENT 'For message with caption, the actual UTF-8 text of the caption'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `edited_message`
--

INSERT INTO `edited_message` (`id`, `chat_id`, `message_id`, `user_id`, `edit_date`, `text`, `entities`, `caption`) VALUES
(1, 32640798, 596, 32640798, '2021-11-24 05:27:27', '/deleteemployee @Dee_so0', '[{\"offset\":0,\"length\":15,\"type\":\"bot_command\"},{\"offset\":16,\"length\":8,\"type\":\"mention\"}]', NULL),
(2, 32640798, 748, 32640798, '2021-11-24 06:54:46', '7', NULL, NULL),
(3, 32640798, 773, 32640798, '2021-11-24 07:23:06', '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL),
(4, 32640798, 776, 32640798, '2021-11-24 07:24:15', '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL),
(5, 32640798, 787, 2083989238, '2021-11-24 23:30:38', 'Выберите категорию', NULL, NULL),
(6, 32640798, 827, 2083989238, '2021-11-25 02:37:08', 'Выберите категорию', NULL, NULL),
(7, 32640798, 833, 2083989238, '2021-11-25 02:38:14', 'Выберите категорию', NULL, NULL),
(8, 32640798, 1002, 32640798, '2021-11-30 04:24:40', '/sale 1   2', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL),
(9, 32640798, 1040, 2083989238, '2021-11-30 05:59:17', 'Выберите метод оплаты:', NULL, NULL),
(10, 32640798, 1040, 2083989238, '2021-11-30 06:00:40', 'Выберите метод оплаты:', NULL, NULL),
(11, 32640798, 1040, 2083989238, '2021-11-30 06:00:50', 'Выберите метод оплаты:', NULL, NULL),
(12, 32640798, 1040, 2083989238, '2021-11-30 06:09:11', 'Выберите метод оплаты:', NULL, NULL),
(13, 32640798, 1040, 2083989238, '2021-11-30 06:09:49', 'Выберите метод оплаты:', NULL, NULL),
(14, 32640798, 1040, 2083989238, '2021-11-30 06:10:21', 'Выберите метод оплаты:', NULL, NULL),
(15, 32640798, 1040, 2083989238, '2021-11-30 06:10:53', 'Выберите метод оплаты:', NULL, NULL),
(16, 32640798, 1040, 2083989238, '2021-11-30 06:11:45', 'Выберите метод оплаты:', NULL, NULL),
(17, 32640798, 1040, 2083989238, '2021-11-30 06:12:23', 'Выберите метод оплаты:', NULL, NULL),
(18, 32640798, 1040, 2083989238, '2021-11-30 06:21:10', 'Выберите метод оплаты:', NULL, NULL),
(19, 32640798, 1040, 2083989238, '2021-11-30 06:21:37', 'Выберите метод оплаты:', NULL, NULL),
(20, 32640798, 1040, 2083989238, '2021-11-30 06:22:06', 'Выберите метод оплаты:', NULL, NULL),
(21, 32640798, 1040, 2083989238, '2021-11-30 06:22:25', 'Выберите метод оплаты:', NULL, NULL),
(22, 32640798, 1040, 2083989238, '2021-11-30 06:27:29', 'Выберите метод оплаты:', NULL, NULL),
(23, 32640798, 1040, 2083989238, '2021-11-30 06:27:35', 'Выберите метод оплаты:', NULL, NULL),
(24, 32640798, 1048, 2083989238, '2021-11-30 06:36:29', 'Выберите метод оплаты:', NULL, NULL),
(25, 32640798, 1048, 2083989238, '2021-11-30 06:39:22', 'Выберите метод оплаты:', NULL, NULL),
(26, 32640798, 1048, 2083989238, '2021-11-30 06:39:45', 'Выберите метод оплаты:', NULL, NULL),
(27, 32640798, 1049, 2083989238, '2021-11-30 06:40:01', 'Выберите статус оплаты', NULL, NULL),
(28, 32640798, 1053, 2083989238, '2021-11-30 09:47:52', 'Выберите статус оплаты', NULL, NULL),
(29, 32640798, 1074, 2083989238, '2021-11-30 10:47:07', 'Выберите статус оплаты', NULL, NULL),
(30, 32640798, 1074, 2083989238, '2021-11-30 10:48:02', 'Выберите статус оплаты', NULL, NULL),
(31, 32640798, 1074, 2083989238, '2021-11-30 10:56:46', 'Выберите статус оплаты', NULL, NULL),
(32, 32640798, 1074, 2083989238, '2021-12-01 04:18:24', 'Выберите статус оплаты', NULL, NULL),
(33, 32640798, 1074, 2083989238, '2021-12-01 04:18:24', 'Выберите статус оплаты', NULL, NULL),
(34, 32640798, 1074, 2083989238, '2021-12-01 04:47:12', 'Выберите статус оплаты', NULL, NULL),
(35, 32640798, 1074, 2083989238, '2021-12-01 06:40:42', 'Выберите статус оплаты', NULL, NULL),
(36, 32640798, 1292, 2083989238, '2021-12-09 04:04:09', 'Снять с бронирования товар:', NULL, NULL),
(37, 32640798, 1301, 2083989238, '2021-12-09 04:17:12', 'Снять с бронирования товар:', NULL, NULL),
(38, 32640798, 1309, 2083989238, '2021-12-09 04:23:03', 'Снять с бронирования товар:', NULL, NULL),
(39, 32640798, 1309, 2083989238, '2021-12-09 04:26:47', 'Снять с бронирования товар:', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `inline_query`
--

CREATE TABLE `inline_query` (
  `id` bigint UNSIGNED NOT NULL COMMENT 'Unique identifier for this query',
  `user_id` bigint DEFAULT NULL COMMENT 'Unique user identifier',
  `location` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'Location of the user',
  `query` text COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'Text of the query',
  `offset` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'Offset of the result',
  `chat_type` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'Optional. Type of the chat, from which the inline query was sent.',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Entry date creation'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `inline_query`
--

INSERT INTO `inline_query` (`id`, `user_id`, `location`, `query`, `offset`, `chat_type`, `created_at`) VALUES
(1219315452664236, 283894, NULL, 'sale Арм ф', '', 'sender', '2021-11-25 05:15:39'),
(1219315570094630, 283894, NULL, 'sale Арм ф', '', 'sender', '2021-11-25 05:15:39'),
(1219315674562954, 283894, NULL, 'sale 7011', '', 'sender', '2021-11-25 05:07:37'),
(1219315677509820, 283894, NULL, 'sale 532424', '', 'sender', '2021-11-25 05:02:45'),
(1219315751677075, 283894, NULL, 'sale Кру8', '', 'sender', '2021-11-25 05:15:48'),
(1219315765392734, 283894, NULL, 'sale 7', '', 'sender', '2021-11-25 05:05:06'),
(1219315833950495, 283894, NULL, 'sale 70', '', 'sender', '2021-11-25 05:03:52'),
(1219315901812786, 283894, NULL, 'sale 45', '', 'sender', '2021-11-25 05:02:09'),
(1219315926958684, 283894, NULL, 'sale 456', '', 'sender', '2021-11-25 05:03:19'),
(1219316029225527, 283894, NULL, 'sale 454654', '', 'sender', '2021-11-25 05:02:31'),
(1219316106764791, 283894, NULL, 'sale 4321', '', 'sender', '2021-11-25 05:02:52'),
(1219316309626751, 283894, NULL, 'sale 10', '', 'sender', '2021-11-25 05:03:25'),
(1219316334818276, 283894, NULL, 'sale 4546', '', 'sender', '2021-11-25 05:02:31'),
(1219316424080413, 283894, NULL, 'Квадрат', '', 'sender', '2021-11-25 05:22:47'),
(1219316508474801, 283894, NULL, 'sale К', '', 'sender', '2021-11-25 05:15:48'),
(1219316635482985, 283894, NULL, 'sale', '', 'sender', '2021-11-25 05:05:03'),
(1219316722269691, 283894, NULL, 'sale 5', '', 'sender', '2021-11-25 05:02:37'),
(1219316755599228, 283894, NULL, 'sale', '', 'sender', '2021-11-25 04:37:07'),
(1219316934123398, 283894, NULL, 'sale F', '', 'sender', '2021-11-25 05:09:22'),
(1219316968504894, 283894, NULL, 'sale 4561', '', 'sender', '2021-11-25 05:03:20'),
(1219317005802172, 283894, NULL, 'sale Арм', '', 'sender', '2021-11-25 05:14:34'),
(1219317080631200, 283894, NULL, 'sale 53242', '', 'sender', '2021-11-25 05:02:43'),
(1219317093400215, 283894, NULL, 'sale 1001', '', 'sender', '2021-11-25 05:03:26'),
(1219317118604942, 283894, NULL, 'sale Арм ф 8', '', 'sender', '2021-11-25 05:09:23'),
(1219317291590378, 283894, NULL, 'sale 45612', '', 'sender', '2021-11-25 05:03:21'),
(1219317343708318, 283894, NULL, 'sale А', '', 'sender', '2021-11-25 05:14:33'),
(1219317777060463, 283894, NULL, 'sale 7001', '', 'sender', '2021-11-25 05:03:54'),
(1219317847366917, 283894, NULL, 'sale 432', '', 'sender', '2021-11-25 05:02:50'),
(1219317936343716, 283894, NULL, 'sale Круг', '', 'sender', '2021-11-25 05:15:48'),
(1219318064045341, 283894, NULL, 'sale 7011', '', 'sender', '2021-11-25 05:06:14'),
(1219318089613107, 283894, NULL, 'К', '', 'sender', '2021-11-25 05:22:44'),
(1219318154240931, 283894, NULL, 'sale 700', '', 'sender', '2021-11-25 05:03:52'),
(1219318241863511, 283894, NULL, 'sale Ар', '', 'sender', '2021-11-25 05:14:33'),
(1219318254059471, 283894, NULL, 'Ква', '', 'sender', '2021-11-25 05:22:46'),
(1219318367829162, 283894, NULL, 'sale', '', 'sender', '2021-11-25 04:59:31'),
(1219318480994313, 283894, NULL, 'sale 43', '', 'sender', '2021-11-25 05:02:48'),
(1219318498296453, 283894, NULL, 'sale 4', '', 'sender', '2021-11-25 05:02:02'),
(1219318500873335, 283894, NULL, 'sale 4546546', '', 'sender', '2021-11-25 05:02:31'),
(1219318533218496, 283894, NULL, 'sale', '', 'sender', '2021-11-25 05:14:32'),
(1219318545756440, 283894, NULL, 'sale 7011', '', 'sender', '2021-11-25 05:08:07'),
(1219318557708306, 283894, NULL, 'sale 70011', '', 'sender', '2021-11-25 05:05:54'),
(1219318640248207, 283894, NULL, 'sale 701', '', 'sender', '2021-11-25 05:07:45'),
(1219318849658308, 283894, NULL, 'sale 532', '', 'sender', '2021-11-25 05:02:39'),
(1219319094431792, 283894, NULL, 'sale 5324', '', 'sender', '2021-11-25 05:02:41'),
(1219319122077197, 283894, NULL, 'sale Арм ф 8', '', 'sender', '2021-11-25 05:15:39'),
(1219319205764271, 283894, NULL, '', '', 'sender', '2021-11-25 05:22:42'),
(1219319293009635, 283894, NULL, 'sale 53', '', 'sender', '2021-11-25 05:02:38'),
(1219319395165571, 283894, NULL, 'sale Арм', '', 'sender', '2021-11-25 05:09:22'),
(1219319447028909, 283894, NULL, 'sale 454', '', 'sender', '2021-11-25 05:02:09'),
(1219319473436117, 283894, NULL, 'sale Круг', '', 'sender', '2021-11-25 05:15:48'),
(1219319489330726, 283894, NULL, 'sale 701', '', 'sender', '2021-11-25 05:07:24'),
(1219319490150447, 283894, NULL, 'sale Арм ф 8', '', 'sender', '2021-11-25 05:15:39'),
(1219319688571750, 283894, NULL, 'sale Арм ф 8', '', 'sender', '2021-11-25 05:15:39'),
(1219319705875557, 283894, NULL, 'sale Круг 50', '', 'sender', '2021-11-25 05:15:57'),
(140191160086781648, 32640798, NULL, 'sale', '', 'sender', '2021-11-25 04:48:57'),
(140191160107100935, 32640798, NULL, 'Труба бш 58', '', 'sender', '2021-11-30 05:04:42'),
(140191160200535514, 32640798, NULL, 'sale', '', 'sender', '2021-11-25 05:20:56'),
(140191160202971017, 32640798, NULL, 'Арм ф 8', '', 'sender', '2021-11-25 05:22:00'),
(140191160415632754, 32640798, NULL, 'Трубва', '', 'sender', '2021-11-30 05:04:20'),
(140191160586503174, 32640798, NULL, 'sale', '', 'sender', '2021-11-25 04:43:53'),
(140191160594457637, 32640798, NULL, 'Труба бш', '', 'sender', '2021-11-30 05:04:32'),
(140191160712050915, 32640798, NULL, '', '', 'sender', '2021-11-30 10:32:39'),
(140191160901324094, 32640798, NULL, 'Труб', '', 'sender', '2021-11-30 05:04:20'),
(140191160937291509, 32640798, NULL, 'Труба', '', 'sender', '2021-11-30 05:04:20'),
(140191160987843510, 32640798, NULL, 'sal', '', 'sender', '2021-11-25 04:48:26'),
(140191161004648957, 32640798, NULL, 'ли', '', 'sender', '2021-11-30 03:46:32'),
(140191161073981768, 32640798, NULL, 'sale', '', 'sender', '2021-11-25 04:37:07'),
(140191161152438176, 32640798, NULL, 'лиСт', '', 'sender', '2021-11-30 03:46:33'),
(140191161203970138, 32640798, NULL, '', '', 'sender', '2021-11-30 03:46:17'),
(140191161278780744, 32640798, NULL, 'Арм', '', 'sender', '2021-12-03 04:23:23'),
(140191161415488867, 32640798, NULL, 'sale Арм ф 8', '', 'sender', '2021-11-25 05:15:40'),
(140191161418752734, 32640798, NULL, 'sale Арм ф9', '', 'sender', '2021-11-25 05:15:40'),
(140191161490705659, 32640798, NULL, 'Труба БШГ', '', 'sender', '2021-11-30 05:04:32'),
(140191161519395359, 32640798, NULL, 'Трубв=', '', 'sender', '2021-11-30 05:04:20'),
(140191161676289395, 32640798, NULL, 'sale Арм ф', '', 'sender', '2021-11-25 05:16:04'),
(140191161694694703, 32640798, NULL, 'sale', '', 'sender', '2021-11-25 04:43:53'),
(140191161776861403, 32640798, NULL, '', '', 'sender', '2021-11-30 10:32:40'),
(140191161946504045, 32640798, NULL, '', '', 'sender', '2021-11-25 04:36:59'),
(140191161969709953, 32640798, NULL, 'salee', '', 'sender', '2021-11-25 04:48:26'),
(140191161987474296, 32640798, NULL, 'sale Арм ф', '', 'sender', '2021-11-25 05:15:40'),
(140191162033241450, 32640798, NULL, 'sale Арм ф 8', '', 'sender', '2021-11-25 05:21:17'),
(140191162321308406, 32640798, NULL, 'sale Арм ф', '', 'sender', '2021-11-25 05:15:40'),
(140191162368555687, 32640798, NULL, 'Арм', '', 'sender', '2021-11-30 10:32:40'),
(140191162389047299, 32640798, NULL, 'sale  sdfsdf', '', 'sender', '2021-11-25 05:00:22'),
(140191162430667644, 32640798, NULL, 'sdfsdf', '', 'sender', '2021-12-03 04:29:39'),
(140191162663704393, 32640798, NULL, 'Т', '', 'sender', '2021-11-30 05:04:19'),
(140191162688794919, 32640798, NULL, 'лист', '', 'sender', '2021-12-03 06:56:41'),
(140191162741957620, 32640798, NULL, 'А', '', 'sender', '2021-12-03 04:23:23'),
(140191162787412402, 32640798, NULL, 'Труба бш 57', '', 'sender', '2021-11-30 05:04:42'),
(140191162826276365, 32640798, NULL, 'F', '', 'sender', '2021-11-30 10:32:39'),
(140191162915037600, 32640798, NULL, 'Труба Б', '', 'sender', '2021-11-30 05:04:32'),
(140191162978026229, 32640798, NULL, 'АРм', '', 'sender', '2021-11-30 10:32:40'),
(140191163127586099, 32640798, NULL, '', '', 'sender', '2021-12-03 06:56:41'),
(140191163263036179, 32640798, NULL, 'л', '', 'sender', '2021-11-30 03:46:32'),
(140191163297048149, 32640798, NULL, 'sal', '', 'sender', '2021-11-25 04:47:54'),
(140191163374538914, 32640798, NULL, '', '', 'sender', '2021-12-03 04:29:39'),
(140191163428440147, 32640798, NULL, 'Труба бг', '', 'sender', '2021-11-30 05:04:32'),
(140191163441009098, 32640798, NULL, '', '', 'sender', '2021-12-03 04:23:23'),
(140191163442331811, 32640798, NULL, '', '', 'sender', '2021-11-30 05:04:19'),
(140191163537383685, 32640798, NULL, 's', '', 'sender', '2021-11-25 04:43:53'),
(140191163538299595, 32640798, NULL, '', '', 'sender', '2021-11-25 04:43:53'),
(140191163574273985, 32640798, NULL, 'лист', '', 'sender', '2021-12-03 04:29:46'),
(140191163676411734, 32640798, NULL, 'sale Арм ф 8', '', 'sender', '2021-11-25 05:16:04'),
(140191163741307496, 32640798, NULL, 'лиС', '', 'sender', '2021-11-30 03:46:32'),
(140191163994174813, 32640798, NULL, 'sal', '', 'sender', '2021-11-25 04:36:59');

-- --------------------------------------------------------

--
-- Структура таблицы `message`
--

CREATE TABLE `message` (
  `chat_id` bigint NOT NULL COMMENT 'Unique chat identifier',
  `sender_chat_id` bigint DEFAULT NULL COMMENT 'Sender of the message, sent on behalf of a chat',
  `id` bigint UNSIGNED NOT NULL COMMENT 'Unique message identifier',
  `user_id` bigint DEFAULT NULL COMMENT 'Unique user identifier',
  `date` timestamp NULL DEFAULT NULL COMMENT 'Date the message was sent in timestamp format',
  `forward_from` bigint DEFAULT NULL COMMENT 'Unique user identifier, sender of the original message',
  `forward_from_chat` bigint DEFAULT NULL COMMENT 'Unique chat identifier, chat the original message belongs to',
  `forward_from_message_id` bigint DEFAULT NULL COMMENT 'Unique chat identifier of the original message in the channel',
  `forward_signature` text COLLATE utf8mb4_unicode_520_ci COMMENT 'For messages forwarded from channels, signature of the post author if present',
  `forward_sender_name` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Sender''s name for messages forwarded from users who disallow adding a link to their account in forwarded messages',
  `forward_date` timestamp NULL DEFAULT NULL COMMENT 'date the original message was sent in timestamp format',
  `reply_to_chat` bigint DEFAULT NULL COMMENT 'Unique chat identifier',
  `reply_to_message` bigint UNSIGNED DEFAULT NULL COMMENT 'Message that this message is reply to',
  `via_bot` bigint DEFAULT NULL COMMENT 'Optional. Bot through which the message was sent',
  `edit_date` timestamp NULL DEFAULT NULL COMMENT 'Date the message was last edited in Unix time',
  `media_group_id` text COLLATE utf8mb4_unicode_520_ci COMMENT 'The unique identifier of a media message group this message belongs to',
  `author_signature` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Signature of the post author for messages in channels',
  `text` text COLLATE utf8mb4_unicode_520_ci COMMENT 'For text messages, the actual UTF-8 text of the message max message length 4096 char utf8mb4',
  `entities` text COLLATE utf8mb4_unicode_520_ci COMMENT 'For text messages, special entities like usernames, URLs, bot commands, etc. that appear in the text',
  `caption_entities` text COLLATE utf8mb4_unicode_520_ci COMMENT 'For messages with a caption, special entities like usernames, URLs, bot commands, etc. that appear in the caption',
  `audio` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Audio object. Message is an audio file, information about the file',
  `document` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Document object. Message is a general file, information about the file',
  `animation` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Message is an animation, information about the animation',
  `game` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Game object. Message is a game, information about the game',
  `photo` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Array of PhotoSize objects. Message is a photo, available sizes of the photo',
  `sticker` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Sticker object. Message is a sticker, information about the sticker',
  `video` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Video object. Message is a video, information about the video',
  `voice` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Voice Object. Message is a Voice, information about the Voice',
  `video_note` text COLLATE utf8mb4_unicode_520_ci COMMENT 'VoiceNote Object. Message is a Video Note, information about the Video Note',
  `caption` text COLLATE utf8mb4_unicode_520_ci COMMENT 'For message with caption, the actual UTF-8 text of the caption',
  `contact` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Contact object. Message is a shared contact, information about the contact',
  `location` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Location object. Message is a shared location, information about the location',
  `venue` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Venue object. Message is a Venue, information about the Venue',
  `poll` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Poll object. Message is a native poll, information about the poll',
  `dice` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Message is a dice with random value from 1 to 6',
  `new_chat_members` text COLLATE utf8mb4_unicode_520_ci COMMENT 'List of unique user identifiers, new member(s) were added to the group, information about them (one of these members may be the bot itself)',
  `left_chat_member` bigint DEFAULT NULL COMMENT 'Unique user identifier, a member was removed from the group, information about them (this member may be the bot itself)',
  `new_chat_title` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'A chat title was changed to this value',
  `new_chat_photo` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Array of PhotoSize objects. A chat photo was change to this value',
  `delete_chat_photo` tinyint(1) DEFAULT '0' COMMENT 'Informs that the chat photo was deleted',
  `group_chat_created` tinyint(1) DEFAULT '0' COMMENT 'Informs that the group has been created',
  `supergroup_chat_created` tinyint(1) DEFAULT '0' COMMENT 'Informs that the supergroup has been created',
  `channel_chat_created` tinyint(1) DEFAULT '0' COMMENT 'Informs that the channel chat has been created',
  `message_auto_delete_timer_changed` text COLLATE utf8mb4_unicode_520_ci COMMENT 'MessageAutoDeleteTimerChanged object. Message is a service message: auto-delete timer settings changed in the chat',
  `migrate_to_chat_id` bigint DEFAULT NULL COMMENT 'Migrate to chat identifier. The group has been migrated to a supergroup with the specified identifier',
  `migrate_from_chat_id` bigint DEFAULT NULL COMMENT 'Migrate from chat identifier. The supergroup has been migrated from a group with the specified identifier',
  `pinned_message` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Message object. Specified message was pinned',
  `invoice` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Message is an invoice for a payment, information about the invoice',
  `successful_payment` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Message is a service message about a successful payment, information about the payment',
  `connected_website` text COLLATE utf8mb4_unicode_520_ci COMMENT 'The domain name of the website on which the user has logged in.',
  `passport_data` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Telegram Passport data',
  `proximity_alert_triggered` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Service message. A user in the chat triggered another user''s proximity alert while sharing Live Location.',
  `voice_chat_scheduled` text COLLATE utf8mb4_unicode_520_ci COMMENT 'VoiceChatScheduled object. Message is a service message: voice chat scheduled',
  `voice_chat_started` text COLLATE utf8mb4_unicode_520_ci COMMENT 'VoiceChatStarted object. Message is a service message: voice chat started',
  `voice_chat_ended` text COLLATE utf8mb4_unicode_520_ci COMMENT 'VoiceChatEnded object. Message is a service message: voice chat ended',
  `voice_chat_participants_invited` text COLLATE utf8mb4_unicode_520_ci COMMENT 'VoiceChatParticipantsInvited object. Message is a service message: new participants invited to a voice chat',
  `reply_markup` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Inline keyboard attached to the message'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `message`
--

INSERT INTO `message` (`chat_id`, `sender_chat_id`, `id`, `user_id`, `date`, `forward_from`, `forward_from_chat`, `forward_from_message_id`, `forward_signature`, `forward_sender_name`, `forward_date`, `reply_to_chat`, `reply_to_message`, `via_bot`, `edit_date`, `media_group_id`, `author_signature`, `text`, `entities`, `caption_entities`, `audio`, `document`, `animation`, `game`, `photo`, `sticker`, `video`, `voice`, `video_note`, `caption`, `contact`, `location`, `venue`, `poll`, `dice`, `new_chat_members`, `left_chat_member`, `new_chat_title`, `new_chat_photo`, `delete_chat_photo`, `group_chat_created`, `supergroup_chat_created`, `channel_chat_created`, `message_auto_delete_timer_changed`, `migrate_to_chat_id`, `migrate_from_chat_id`, `pinned_message`, `invoice`, `successful_payment`, `connected_website`, `passport_data`, `proximity_alert_triggered`, `voice_chat_scheduled`, `voice_chat_started`, `voice_chat_ended`, `voice_chat_participants_invited`, `reply_markup`) VALUES
(283894, NULL, 424, 283894, '2021-11-22 08:56:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-23 05:06:24', NULL, NULL, '/getitems', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 544, 283894, '2021-11-24 02:51:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 03:54:27', NULL, NULL, '/getitems', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 546, 283894, '2021-11-24 03:51:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 03:54:53', NULL, NULL, '/getitems', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 566, 283894, '2021-11-24 03:57:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 04:05:41', NULL, NULL, '/getitems', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 582, 283894, '2021-11-24 04:25:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 04:25:11', NULL, NULL, '/getitems', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 584, 283894, '2021-11-24 04:25:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 04:25:31', NULL, NULL, '/getitems', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 586, 283894, '2021-11-24 04:25:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 04:26:01', NULL, NULL, '/getitems', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 594, 283894, '2021-11-24 05:01:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:28:27', NULL, NULL, '/deleteamploer @Dee_so0', '[{\"offset\":0,\"length\":14,\"type\":\"bot_command\"},{\"offset\":15,\"length\":8,\"type\":\"mention\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 598, 283894, '2021-11-24 06:28:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:28:40', NULL, NULL, '/viewitems', '[{\"offset\":0,\"length\":10,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 607, 283894, '2021-11-24 06:30:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:30:56', NULL, NULL, '/viewitems', '[{\"offset\":0,\"length\":10,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 622, 283894, '2021-11-24 06:35:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:35:24', NULL, NULL, '/viewitems', '[{\"offset\":0,\"length\":10,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 638, 283894, '2021-11-24 06:38:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:38:47', NULL, NULL, '/viewitems', '[{\"offset\":0,\"length\":10,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 642, 283894, '2021-11-24 06:40:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:40:45', NULL, NULL, '/viewitems', '[{\"offset\":0,\"length\":10,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 670, 283894, '2021-11-24 06:41:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:43:24', NULL, NULL, '/viewitems', '[{\"offset\":0,\"length\":10,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 716, 283894, '2021-11-24 06:43:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:44:00', NULL, NULL, '/viewitems', '[{\"offset\":0,\"length\":10,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 729, 283894, '2021-11-24 06:44:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:46:18', NULL, NULL, '/viewitems', '[{\"offset\":0,\"length\":10,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 739, 283894, '2021-11-24 06:52:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:52:46', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 743, 283894, '2021-11-24 06:53:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:53:33', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 750, 283894, '2021-11-24 06:54:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:59:44', NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 782, 283894, '2021-11-24 07:25:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 07:25:24', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 784, 283894, '2021-11-24 07:25:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 07:25:47', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 785, 2083989238, '2021-11-24 07:25:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 07:25:53', NULL, NULL, 'Выберите категорию', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1\",\"callback_data\":\"inline query...\",\"raw_data\":{\"text\":\"1\",\"callback_data\":\"inline query...\"},\"bot_username\":\"\"},{\"text\":\"2\",\"callback_data\":\"inline query...\",\"raw_data\":{\"text\":\"2\",\"callback_data\":\"inline query...\"},\"bot_username\":\"\"},{\"text\":\"3\",\"callback_data\":\"inline query...\",\"raw_data\":{\"text\":\"3\",\"callback_data\":\"inline query...\"},\"bot_username\":\"\"}],[{\"text\":\"4\",\"callback_data\":\"sale_category_5\",\"raw_data\":{\"text\":\"4\",\"callback_data\":\"sale_category_5\"},\"bot_username\":\"\"},{\"text\":\"5\",\"callback_data\":\"sale_category_5\",\"raw_data\":{\"text\":\"5\",\"callback_data\":\"sale_category_5\"},\"bot_username\":\"\"},{\"text\":\"6\",\"callback_data\":\"sale_category_6\",\"raw_data\":{\"text\":\"6\",\"callback_data\":\"sale_category_6\"},\"bot_username\":\"\"}],[{\"text\":\"7\",\"callback_data\":\"sale_category_7\",\"raw_data\":{\"text\":\"7\",\"callback_data\":\"sale_category_7\"},\"bot_username\":\"\"},{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_full\",\"raw_data\":{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_full\"},\"bot_username\":\"\"}]]}'),
(283894, NULL, 838, 283894, '2021-11-25 02:49:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 02:49:52', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 840, 2083989238, '2021-11-25 02:49:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 02:49:57', NULL, NULL, 'Выберите категорию', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1\",\"callback_data\":\"sale_category_1\",\"raw_data\":{\"text\":\"1\",\"callback_data\":\"sale_category_1\"},\"bot_username\":\"\"},{\"text\":\"2\",\"callback_data\":\"sale_category_2\",\"raw_data\":{\"text\":\"2\",\"callback_data\":\"sale_category_2\"},\"bot_username\":\"\"},{\"text\":\"3\",\"callback_data\":\"sale_category_3\",\"raw_data\":{\"text\":\"3\",\"callback_data\":\"sale_category_3\"},\"bot_username\":\"\"}],[{\"text\":\"4\",\"callback_data\":\"sale_category_4\",\"raw_data\":{\"text\":\"4\",\"callback_data\":\"sale_category_4\"},\"bot_username\":\"\"},{\"text\":\"5\",\"callback_data\":\"sale_category_5\",\"raw_data\":{\"text\":\"5\",\"callback_data\":\"sale_category_5\"},\"bot_username\":\"\"},{\"text\":\"6\",\"callback_data\":\"sale_category_6\",\"raw_data\":{\"text\":\"6\",\"callback_data\":\"sale_category_6\"},\"bot_username\":\"\"}],[{\"text\":\"7\",\"callback_data\":\"sale_category_7\",\"raw_data\":{\"text\":\"7\",\"callback_data\":\"sale_category_7\"},\"bot_username\":\"\"},{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_0\",\"raw_data\":{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_0\"},\"bot_username\":\"\"}]]}'),
(283894, NULL, 842, 283894, '2021-11-25 02:50:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 02:50:07', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 843, 2083989238, '2021-11-25 02:50:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 02:50:13', NULL, NULL, 'Выберите категорию', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1\",\"callback_data\":\"sale_category_1\",\"raw_data\":{\"text\":\"1\",\"callback_data\":\"sale_category_1\"},\"bot_username\":\"\"},{\"text\":\"2\",\"callback_data\":\"sale_category_2\",\"raw_data\":{\"text\":\"2\",\"callback_data\":\"sale_category_2\"},\"bot_username\":\"\"},{\"text\":\"3\",\"callback_data\":\"sale_category_3\",\"raw_data\":{\"text\":\"3\",\"callback_data\":\"sale_category_3\"},\"bot_username\":\"\"}],[{\"text\":\"4\",\"callback_data\":\"sale_category_4\",\"raw_data\":{\"text\":\"4\",\"callback_data\":\"sale_category_4\"},\"bot_username\":\"\"},{\"text\":\"5\",\"callback_data\":\"sale_category_5\",\"raw_data\":{\"text\":\"5\",\"callback_data\":\"sale_category_5\"},\"bot_username\":\"\"},{\"text\":\"6\",\"callback_data\":\"sale_category_6\",\"raw_data\":{\"text\":\"6\",\"callback_data\":\"sale_category_6\"},\"bot_username\":\"\"}],[{\"text\":\"7\",\"callback_data\":\"sale_category_7\",\"raw_data\":{\"text\":\"7\",\"callback_data\":\"sale_category_7\"},\"bot_username\":\"\"},{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_0\",\"raw_data\":{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_0\"},\"bot_username\":\"\"}]]}'),
(283894, NULL, 846, 283894, '2021-11-25 02:52:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 02:52:27', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 847, 2083989238, '2021-11-25 02:52:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 02:52:37', NULL, NULL, 'Выберите категорию', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1\",\"callback_data\":\"sale_category_1\",\"raw_data\":{\"text\":\"1\",\"callback_data\":\"sale_category_1\"},\"bot_username\":\"\"},{\"text\":\"2\",\"callback_data\":\"sale_category_2\",\"raw_data\":{\"text\":\"2\",\"callback_data\":\"sale_category_2\"},\"bot_username\":\"\"},{\"text\":\"3\",\"callback_data\":\"sale_category_3\",\"raw_data\":{\"text\":\"3\",\"callback_data\":\"sale_category_3\"},\"bot_username\":\"\"}],[{\"text\":\"4\",\"callback_data\":\"sale_category_4\",\"raw_data\":{\"text\":\"4\",\"callback_data\":\"sale_category_4\"},\"bot_username\":\"\"},{\"text\":\"5\",\"callback_data\":\"sale_category_5\",\"raw_data\":{\"text\":\"5\",\"callback_data\":\"sale_category_5\"},\"bot_username\":\"\"},{\"text\":\"6\",\"callback_data\":\"sale_category_6\",\"raw_data\":{\"text\":\"6\",\"callback_data\":\"sale_category_6\"},\"bot_username\":\"\"}],[{\"text\":\"7\",\"callback_data\":\"sale_category_7\",\"raw_data\":{\"text\":\"7\",\"callback_data\":\"sale_category_7\"},\"bot_username\":\"\"},{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_0\",\"raw_data\":{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_0\"},\"bot_username\":\"\"}]]}'),
(283894, NULL, 851, 283894, '2021-11-25 02:55:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 02:55:49', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 853, 2083989238, '2021-11-25 02:55:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 02:55:54', NULL, NULL, 'Выберите категорию', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1\",\"callback_data\":\"sale_category_1\",\"raw_data\":{\"text\":\"1\",\"callback_data\":\"sale_category_1\"},\"bot_username\":\"\"},{\"text\":\"2\",\"callback_data\":\"sale_category_2\",\"raw_data\":{\"text\":\"2\",\"callback_data\":\"sale_category_2\"},\"bot_username\":\"\"},{\"text\":\"3\",\"callback_data\":\"sale_category_3\",\"raw_data\":{\"text\":\"3\",\"callback_data\":\"sale_category_3\"},\"bot_username\":\"\"}],[{\"text\":\"4\",\"callback_data\":\"sale_category_4\",\"raw_data\":{\"text\":\"4\",\"callback_data\":\"sale_category_4\"},\"bot_username\":\"\"},{\"text\":\"5\",\"callback_data\":\"sale_category_5\",\"raw_data\":{\"text\":\"5\",\"callback_data\":\"sale_category_5\"},\"bot_username\":\"\"},{\"text\":\"6\",\"callback_data\":\"sale_category_6\",\"raw_data\":{\"text\":\"6\",\"callback_data\":\"sale_category_6\"},\"bot_username\":\"\"}],[{\"text\":\"7\",\"callback_data\":\"sale_category_7\",\"raw_data\":{\"text\":\"7\",\"callback_data\":\"sale_category_7\"},\"bot_username\":\"\"},{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_0\",\"raw_data\":{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_0\"},\"bot_username\":\"\"}]]}'),
(283894, NULL, 856, 283894, '2021-11-25 02:56:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 02:56:21', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 857, 2083989238, '2021-11-25 02:56:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 02:56:24', NULL, NULL, 'Выберите категорию', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1\",\"callback_data\":\"sale_category_1\",\"raw_data\":{\"text\":\"1\",\"callback_data\":\"sale_category_1\"},\"bot_username\":\"\"},{\"text\":\"2\",\"callback_data\":\"sale_category_2\",\"raw_data\":{\"text\":\"2\",\"callback_data\":\"sale_category_2\"},\"bot_username\":\"\"},{\"text\":\"3\",\"callback_data\":\"sale_category_3\",\"raw_data\":{\"text\":\"3\",\"callback_data\":\"sale_category_3\"},\"bot_username\":\"\"}],[{\"text\":\"4\",\"callback_data\":\"sale_category_4\",\"raw_data\":{\"text\":\"4\",\"callback_data\":\"sale_category_4\"},\"bot_username\":\"\"},{\"text\":\"5\",\"callback_data\":\"sale_category_5\",\"raw_data\":{\"text\":\"5\",\"callback_data\":\"sale_category_5\"},\"bot_username\":\"\"},{\"text\":\"6\",\"callback_data\":\"sale_category_6\",\"raw_data\":{\"text\":\"6\",\"callback_data\":\"sale_category_6\"},\"bot_username\":\"\"}],[{\"text\":\"7\",\"callback_data\":\"sale_category_7\",\"raw_data\":{\"text\":\"7\",\"callback_data\":\"sale_category_7\"},\"bot_username\":\"\"},{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_0\",\"raw_data\":{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_0\"},\"bot_username\":\"\"}]]}'),
(283894, NULL, 866, 283894, '2021-11-25 04:34:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 04:34:31', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 869, 283894, '2021-11-25 04:36:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 04:36:59', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 873, 283894, '2021-11-25 04:37:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2083989238, '2021-11-25 04:37:49', NULL, NULL, 'The query that got you here: sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 877, 283894, '2021-11-25 04:41:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2083989238, '2021-11-25 04:41:17', NULL, NULL, 'The query that got you here: sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 878, 283894, '2021-11-25 04:41:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2083989238, '2021-11-25 04:43:53', NULL, NULL, 'The query that got you here: sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 880, 283894, '2021-11-25 04:41:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 04:43:53', NULL, NULL, 'sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 881, 283894, '2021-11-25 04:44:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 04:47:31', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 884, 283894, '2021-11-25 04:49:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 04:49:14', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 885, 2083989238, '2021-11-25 04:49:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 04:49:19', NULL, NULL, 'Выберите категорию', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1\",\"callback_data\":\"sale_category_1\",\"raw_data\":{\"text\":\"1\",\"callback_data\":\"sale_category_1\"},\"bot_username\":\"\"},{\"text\":\"2\",\"callback_data\":\"sale_category_2\",\"raw_data\":{\"text\":\"2\",\"callback_data\":\"sale_category_2\"},\"bot_username\":\"\"},{\"text\":\"3\",\"callback_data\":\"sale_category_3\",\"raw_data\":{\"text\":\"3\",\"callback_data\":\"sale_category_3\"},\"bot_username\":\"\"}],[{\"text\":\"4\",\"callback_data\":\"sale_category_4\",\"raw_data\":{\"text\":\"4\",\"callback_data\":\"sale_category_4\"},\"bot_username\":\"\"},{\"text\":\"5\",\"callback_data\":\"sale_category_5\",\"raw_data\":{\"text\":\"5\",\"callback_data\":\"sale_category_5\"},\"bot_username\":\"\"},{\"text\":\"6\",\"callback_data\":\"sale_category_6\",\"raw_data\":{\"text\":\"6\",\"callback_data\":\"sale_category_6\"},\"bot_username\":\"\"}],[{\"text\":\"7\",\"callback_data\":\"sale_category_7\",\"raw_data\":{\"text\":\"7\",\"callback_data\":\"sale_category_7\"},\"bot_username\":\"\"},{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_0\",\"raw_data\":{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_0\"},\"bot_username\":\"\"},{\"text\":\"\\ud83d\\udd0d \\u041f\\u043e\\u0438\\u0441\\u043a\",\"switch_inline_query_current_chat\":\"sale \",\"raw_data\":{\"text\":\"\\ud83d\\udd0d \\u041f\\u043e\\u0438\\u0441\\u043a\",\"switch_inline_query_current_chat\":\"sale \"},\"bot_username\":\"\"}]]}'),
(283894, NULL, 887, 283894, '2021-11-25 04:49:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 04:49:24', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 888, 2083989238, '2021-11-25 04:49:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 04:49:26', NULL, NULL, 'Выберите категорию', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1\",\"callback_data\":\"sale_category_1\",\"raw_data\":{\"text\":\"1\",\"callback_data\":\"sale_category_1\"},\"bot_username\":\"\"},{\"text\":\"2\",\"callback_data\":\"sale_category_2\",\"raw_data\":{\"text\":\"2\",\"callback_data\":\"sale_category_2\"},\"bot_username\":\"\"},{\"text\":\"3\",\"callback_data\":\"sale_category_3\",\"raw_data\":{\"text\":\"3\",\"callback_data\":\"sale_category_3\"},\"bot_username\":\"\"}],[{\"text\":\"4\",\"callback_data\":\"sale_category_4\",\"raw_data\":{\"text\":\"4\",\"callback_data\":\"sale_category_4\"},\"bot_username\":\"\"},{\"text\":\"5\",\"callback_data\":\"sale_category_5\",\"raw_data\":{\"text\":\"5\",\"callback_data\":\"sale_category_5\"},\"bot_username\":\"\"},{\"text\":\"6\",\"callback_data\":\"sale_category_6\",\"raw_data\":{\"text\":\"6\",\"callback_data\":\"sale_category_6\"},\"bot_username\":\"\"}],[{\"text\":\"7\",\"callback_data\":\"sale_category_7\",\"raw_data\":{\"text\":\"7\",\"callback_data\":\"sale_category_7\"},\"bot_username\":\"\"},{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_0\",\"raw_data\":{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_0\"},\"bot_username\":\"\"},{\"text\":\"\\ud83d\\udd0d \\u041f\\u043e\\u0438\\u0441\\u043a\",\"switch_inline_query_current_chat\":\"sale \",\"raw_data\":{\"text\":\"\\ud83d\\udd0d \\u041f\\u043e\\u0438\\u0441\\u043a\",\"switch_inline_query_current_chat\":\"sale \"},\"bot_username\":\"\"}]]}'),
(283894, NULL, 890, 283894, '2021-11-25 04:49:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 04:49:48', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 892, 283894, '2021-11-25 04:49:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2083989238, '2021-11-25 04:49:52', NULL, NULL, 'The query that got you here: sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"Inline Query (current chat)\",\"switch_inline_query_current_chat\":\"inline query...\",\"raw_data\":{\"text\":\"Inline Query (current chat)\",\"switch_inline_query_current_chat\":\"inline query...\"},\"bot_username\":\"\"},{\"text\":\"Inline Query (other chat)\",\"switch_inline_query\":\"inline query...\",\"raw_data\":{\"text\":\"Inline Query (other chat)\",\"switch_inline_query\":\"inline query...\"},\"bot_username\":\"\"}],[{\"text\":\"Callback\",\"callback_data\":\"identifier\",\"raw_data\":{\"text\":\"Callback\",\"callback_data\":\"identifier\"},\"bot_username\":\"\"},{\"text\":\"Open URL\",\"url\":\"https:\\/\\/github.com\\/php-telegram-bot\\/example-bot\",\"raw_data\":{\"text\":\"Open URL\",\"url\":\"https:\\/\\/github.com\\/php-telegram-bot\\/example-bot\"},\"bot_username\":\"\"}]]}'),
(283894, NULL, 893, 283894, '2021-11-25 04:58:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 04:59:21', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 895, 283894, '2021-11-25 04:59:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 04:59:48', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 897, 283894, '2021-11-25 04:59:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 04:59:52', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 899, 283894, '2021-11-25 05:00:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2083989238, '2021-11-25 05:00:01', NULL, NULL, 'The query that got you here: sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"Inline Query (current chat)\",\"switch_inline_query_current_chat\":\"inline query...\",\"raw_data\":{\"text\":\"Inline Query (current chat)\",\"switch_inline_query_current_chat\":\"inline query...\"},\"bot_username\":\"\"},{\"text\":\"Inline Query (other chat)\",\"switch_inline_query\":\"inline query...\",\"raw_data\":{\"text\":\"Inline Query (other chat)\",\"switch_inline_query\":\"inline query...\"},\"bot_username\":\"\"}],[{\"text\":\"Callback\",\"callback_data\":\"identifier\",\"raw_data\":{\"text\":\"Callback\",\"callback_data\":\"identifier\"},\"bot_username\":\"\"},{\"text\":\"Open URL\",\"url\":\"https:\\/\\/github.com\\/php-telegram-bot\\/example-bot\",\"raw_data\":{\"text\":\"Open URL\",\"url\":\"https:\\/\\/github.com\\/php-telegram-bot\\/example-bot\"},\"bot_username\":\"\"}]]}'),
(283894, NULL, 900, 283894, '2021-11-25 05:01:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 05:01:58', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 902, 283894, '2021-11-25 05:02:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 05:02:33', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 904, 283894, '2021-11-25 05:02:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 05:02:58', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 906, 283894, '2021-11-25 05:03:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 05:03:31', NULL, NULL, '/list', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 908, 283894, '2021-11-25 05:03:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 05:03:38', NULL, NULL, '/viewitems', '[{\"offset\":0,\"length\":10,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 912, 283894, '2021-11-25 05:03:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 05:03:45', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 914, 283894, '2021-11-25 05:05:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 05:05:01', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 916, 283894, '2021-11-25 05:05:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 05:05:48', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 918, 283894, '2021-11-25 05:06:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 05:06:08', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 920, 283894, '2021-11-25 05:07:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 05:07:17', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 922, 283894, '2021-11-25 05:07:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 05:07:41', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 924, 283894, '2021-11-25 05:08:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 05:08:07', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 926, 283894, '2021-11-25 05:08:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 05:08:47', NULL, NULL, '/viewitems', '[{\"offset\":0,\"length\":10,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 934, 283894, '2021-11-25 05:09:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 05:09:07', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 936, 283894, '2021-11-25 05:14:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 05:14:28', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 938, 283894, '2021-11-25 05:14:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 05:15:03', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 942, 283894, '2021-11-25 05:16:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2083989238, '2021-11-25 05:16:04', NULL, NULL, 'The query that got you here: sale Круг 50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 945, 283894, '2021-11-25 05:22:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 05:22:39', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 947, 283894, '2021-11-25 05:22:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2083989238, '2021-11-25 05:22:56', NULL, NULL, '7025 Квадрат 210х210', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 1127, 283894, '2021-12-01 06:24:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-01 06:25:10', NULL, NULL, '/getitems', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 1133, 283894, '2021-12-01 06:25:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-01 06:26:40', NULL, NULL, '/grantadmin @nn_mrpark', '[{\"offset\":0,\"length\":11,\"type\":\"bot_command\"},{\"offset\":12,\"length\":10,\"type\":\"mention\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283894, NULL, 1143, 283894, '2021-12-01 06:29:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-01 06:29:20', NULL, NULL, '/getitems', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 425, 32640798, '2021-11-23 05:06:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-23 05:06:25', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 427, 32640798, '2021-11-23 05:07:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-23 05:07:02', NULL, NULL, '/getitems', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 429, 32640798, '2021-11-23 05:07:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-23 05:07:31', NULL, NULL, '/viewitems', '[{\"offset\":0,\"length\":10,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 547, 32640798, '2021-11-24 03:51:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 03:54:53', NULL, NULL, '/getitems', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 548, 32640798, '2021-11-24 03:51:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 03:54:53', NULL, NULL, '/getitems', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 549, 32640798, '2021-11-24 03:51:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 03:54:54', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 550, 32640798, '2021-11-24 03:52:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 03:54:54', NULL, NULL, '/viewitems', '[{\"offset\":0,\"length\":10,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 564, 32640798, '2021-11-24 03:57:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 03:57:05', NULL, NULL, '/getitems', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 565, 32640798, '2021-11-24 03:57:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 03:57:30', NULL, NULL, '/getitems', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 568, 32640798, '2021-11-24 04:05:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 04:05:41', NULL, NULL, '/getitems', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 575, 32640798, '2021-11-24 04:09:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 04:09:28', NULL, NULL, '/getitems', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 577, 32640798, '2021-11-24 04:10:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 04:10:47', NULL, NULL, '/getitems', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `message` (`chat_id`, `sender_chat_id`, `id`, `user_id`, `date`, `forward_from`, `forward_from_chat`, `forward_from_message_id`, `forward_signature`, `forward_sender_name`, `forward_date`, `reply_to_chat`, `reply_to_message`, `via_bot`, `edit_date`, `media_group_id`, `author_signature`, `text`, `entities`, `caption_entities`, `audio`, `document`, `animation`, `game`, `photo`, `sticker`, `video`, `voice`, `video_note`, `caption`, `contact`, `location`, `venue`, `poll`, `dice`, `new_chat_members`, `left_chat_member`, `new_chat_title`, `new_chat_photo`, `delete_chat_photo`, `group_chat_created`, `supergroup_chat_created`, `channel_chat_created`, `message_auto_delete_timer_changed`, `migrate_to_chat_id`, `migrate_from_chat_id`, `pinned_message`, `invoice`, `successful_payment`, `connected_website`, `passport_data`, `proximity_alert_triggered`, `voice_chat_scheduled`, `voice_chat_started`, `voice_chat_ended`, `voice_chat_participants_invited`, `reply_markup`) VALUES
(32640798, NULL, 578, 32640798, '2021-11-24 04:12:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 04:12:42', NULL, NULL, '/getitems', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 580, 32640798, '2021-11-24 04:14:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 04:14:28', NULL, NULL, '/getitems', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 596, 32640798, '2021-11-24 05:27:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:28:27', NULL, NULL, '@deleteemployee @Dee_so0', '[{\"offset\":0,\"length\":15,\"type\":\"mention\"},{\"offset\":16,\"length\":8,\"type\":\"mention\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 602, 32640798, '2021-11-24 06:29:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:29:05', NULL, NULL, '/viewitems', '[{\"offset\":0,\"length\":10,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 606, 32640798, '2021-11-24 06:30:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:30:55', NULL, NULL, '/viewitems', '[{\"offset\":0,\"length\":10,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 614, 32640798, '2021-11-24 06:32:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:32:42', NULL, NULL, '/viewitems', '[{\"offset\":0,\"length\":10,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 618, 32640798, '2021-11-24 06:35:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:35:10', NULL, NULL, '/viewitems', '[{\"offset\":0,\"length\":10,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 626, 32640798, '2021-11-24 06:36:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:36:11', NULL, NULL, '/viewitems', '[{\"offset\":0,\"length\":10,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 630, 32640798, '2021-11-24 06:37:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:37:13', NULL, NULL, '/viewitems', '[{\"offset\":0,\"length\":10,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 634, 32640798, '2021-11-24 06:38:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:38:26', NULL, NULL, '/viewitems', '[{\"offset\":0,\"length\":10,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 643, 32640798, '2021-11-24 06:40:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:41:47', NULL, NULL, '/viewitems', '[{\"offset\":0,\"length\":10,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 644, 32640798, '2021-11-24 06:41:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:43:24', NULL, NULL, '/viewitems', '[{\"offset\":0,\"length\":10,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 707, 32640798, '2021-11-24 06:43:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:43:25', NULL, NULL, '/viewitems', '[{\"offset\":0,\"length\":10,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 718, 32640798, '2021-11-24 06:43:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:44:00', NULL, NULL, '/viewitems', '[{\"offset\":0,\"length\":10,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 725, 32640798, '2021-11-24 06:44:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:44:52', NULL, NULL, '/viewitems', '[{\"offset\":0,\"length\":10,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 733, 32640798, '2021-11-24 06:46:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:46:28', NULL, NULL, '/viewitems', '[{\"offset\":0,\"length\":10,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 737, 32640798, '2021-11-24 06:52:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:52:20', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 741, 32640798, '2021-11-24 06:52:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:52:54', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 745, 32640798, '2021-11-24 06:53:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:53:37', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 747, 32640798, '2021-11-24 06:54:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:59:44', NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 748, 32640798, '2021-11-24 06:54:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:59:44', NULL, NULL, '7]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 749, 32640798, '2021-11-24 06:54:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:59:44', NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 751, 32640798, '2021-11-24 06:55:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:59:44', NULL, NULL, '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 752, 32640798, '2021-11-24 06:57:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:59:44', NULL, NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 753, 32640798, '2021-11-24 06:57:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:59:44', NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 754, 32640798, '2021-11-24 06:57:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:59:44', NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 755, 32640798, '2021-11-24 06:57:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:59:44', NULL, NULL, '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 756, 32640798, '2021-11-24 06:57:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:59:44', NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 757, 32640798, '2021-11-24 06:57:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:59:44', NULL, NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 758, 32640798, '2021-11-24 06:57:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:59:44', NULL, NULL, '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 759, 32640798, '2021-11-24 06:57:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:59:44', NULL, NULL, '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 760, 32640798, '2021-11-24 06:58:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:59:44', NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 761, 32640798, '2021-11-24 06:58:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:59:44', NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 762, 32640798, '2021-11-24 06:58:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:59:44', NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 763, 32640798, '2021-11-24 06:59:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 06:59:44', NULL, NULL, '/inlinequery', '[{\"offset\":0,\"length\":12,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 764, 32640798, '2021-11-24 07:00:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 07:00:18', NULL, NULL, '/choseninlineresult', '[{\"offset\":0,\"length\":19,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 765, 32640798, '2021-11-24 07:00:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 07:00:50', NULL, NULL, '/genericmessage', '[{\"offset\":0,\"length\":15,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 766, 32640798, '2021-11-24 07:01:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 07:01:27', NULL, NULL, '/survey', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 768, 32640798, '2021-11-24 07:01:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 07:01:36', NULL, NULL, 'Evgeniy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 769, 32640798, '2021-11-24 07:10:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 07:10:57', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 770, 32640798, '2021-11-24 07:10:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 07:10:58', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 771, 2083989238, '2021-11-24 07:10:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 07:11:34', NULL, NULL, 'Inline Keyboard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"Inline Query (current chat)\",\"switch_inline_query_current_chat\":\"inline query...\",\"raw_data\":{\"text\":\"Inline Query (current chat)\",\"switch_inline_query_current_chat\":\"inline query...\"},\"bot_username\":\"\"},{\"text\":\"Inline Query (other chat)\",\"switch_inline_query\":\"inline query...\",\"raw_data\":{\"text\":\"Inline Query (other chat)\",\"switch_inline_query\":\"inline query...\"},\"bot_username\":\"\"}],[{\"text\":\"Callback\",\"callback_data\":\"identifier\",\"raw_data\":{\"text\":\"Callback\",\"callback_data\":\"identifier\"},\"bot_username\":\"\"},{\"text\":\"Open URL\",\"url\":\"https:\\/\\/github.com\\/php-telegram-bot\\/example-bot\",\"raw_data\":{\"text\":\"Open URL\",\"url\":\"https:\\/\\/github.com\\/php-telegram-bot\\/example-bot\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 772, 2083989238, '2021-11-24 07:10:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 07:24:27', NULL, NULL, 'Inline Keyboard', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"Inline Query (current chat)\",\"switch_inline_query_current_chat\":\"inline query...\",\"raw_data\":{\"text\":\"Inline Query (current chat)\",\"switch_inline_query_current_chat\":\"inline query...\"},\"bot_username\":\"\"},{\"text\":\"Inline Query (other chat)\",\"switch_inline_query\":\"inline query...\",\"raw_data\":{\"text\":\"Inline Query (other chat)\",\"switch_inline_query\":\"inline query...\"},\"bot_username\":\"\"}],[{\"text\":\"Callback\",\"callback_data\":\"identifier\",\"raw_data\":{\"text\":\"Callback\",\"callback_data\":\"identifier\"},\"bot_username\":\"\"},{\"text\":\"Open URL\",\"url\":\"https:\\/\\/github.com\\/php-telegram-bot\\/example-bot\",\"raw_data\":{\"text\":\"Open URL\",\"url\":\"https:\\/\\/github.com\\/php-telegram-bot\\/example-bot\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 773, 32640798, '2021-11-24 07:11:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 07:23:08', NULL, NULL, '@sharif_steel_bot inline query...', '[{\"offset\":0,\"length\":17,\"type\":\"mention\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 774, 32640798, '2021-11-24 07:23:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 07:24:27', NULL, NULL, '/start', '[{\"offset\":0,\"length\":6,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 775, 32640798, '2021-11-24 07:23:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 07:24:27', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 776, 32640798, '2021-11-24 07:24:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 07:24:28', NULL, NULL, '/sqle', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 777, 32640798, '2021-11-24 07:24:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 07:24:28', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 781, 2083989238, '2021-11-24 07:24:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 07:24:48', NULL, NULL, 'Выберите категорию', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1\",\"switch_inline_query_current_chat\":\"inline query...\",\"raw_data\":{\"text\":\"1\",\"switch_inline_query_current_chat\":\"inline query...\"},\"bot_username\":\"\"},{\"text\":\"2\",\"switch_inline_query\":\"inline query...\",\"raw_data\":{\"text\":\"2\",\"switch_inline_query\":\"inline query...\"},\"bot_username\":\"\"},{\"text\":\"3\",\"switch_inline_query_current_chat\":\"inline query...\",\"raw_data\":{\"text\":\"3\",\"switch_inline_query_current_chat\":\"inline query...\"},\"bot_username\":\"\"}],[{\"text\":\"4\",\"callback_data\":\"sale_category_5\",\"raw_data\":{\"text\":\"4\",\"callback_data\":\"sale_category_5\"},\"bot_username\":\"\"},{\"text\":\"5\",\"callback_data\":\"sale_category_5\",\"raw_data\":{\"text\":\"5\",\"callback_data\":\"sale_category_5\"},\"bot_username\":\"\"},{\"text\":\"6\",\"callback_data\":\"sale_category_6\",\"raw_data\":{\"text\":\"6\",\"callback_data\":\"sale_category_6\"},\"bot_username\":\"\"}],[{\"text\":\"7\",\"callback_data\":\"sale_category_7\",\"raw_data\":{\"text\":\"7\",\"callback_data\":\"sale_category_7\"},\"bot_username\":\"\"},{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_full\",\"raw_data\":{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_full\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 786, 32640798, '2021-11-24 23:29:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 23:29:29', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 787, 2083989238, '2021-11-24 23:29:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 23:29:41', NULL, NULL, 'Выберите категорию', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1\",\"callback_data\":\"inline query...\",\"raw_data\":{\"text\":\"1\",\"callback_data\":\"inline query...\"},\"bot_username\":\"\"},{\"text\":\"2\",\"callback_data\":\"inline query...\",\"raw_data\":{\"text\":\"2\",\"callback_data\":\"inline query...\"},\"bot_username\":\"\"},{\"text\":\"3\",\"callback_data\":\"inline query...\",\"raw_data\":{\"text\":\"3\",\"callback_data\":\"inline query...\"},\"bot_username\":\"\"}],[{\"text\":\"4\",\"callback_data\":\"sale_category_5\",\"raw_data\":{\"text\":\"4\",\"callback_data\":\"sale_category_5\"},\"bot_username\":\"\"},{\"text\":\"5\",\"callback_data\":\"sale_category_5\",\"raw_data\":{\"text\":\"5\",\"callback_data\":\"sale_category_5\"},\"bot_username\":\"\"},{\"text\":\"6\",\"callback_data\":\"sale_category_6\",\"raw_data\":{\"text\":\"6\",\"callback_data\":\"sale_category_6\"},\"bot_username\":\"\"}],[{\"text\":\"7\",\"callback_data\":\"sale_category_7\",\"raw_data\":{\"text\":\"7\",\"callback_data\":\"sale_category_7\"},\"bot_username\":\"\"},{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_full\",\"raw_data\":{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_full\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 788, 32640798, '2021-11-24 23:30:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 23:30:53', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 789, 2083989238, '2021-11-24 23:30:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 23:31:01', NULL, NULL, 'Выберите категорию', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1\",\"callback_data\":\"inline query...\",\"raw_data\":{\"text\":\"1\",\"callback_data\":\"inline query...\"},\"bot_username\":\"\"},{\"text\":\"2\",\"callback_data\":\"inline query...\",\"raw_data\":{\"text\":\"2\",\"callback_data\":\"inline query...\"},\"bot_username\":\"\"},{\"text\":\"3\",\"callback_data\":\"inline query...\",\"raw_data\":{\"text\":\"3\",\"callback_data\":\"inline query...\"},\"bot_username\":\"\"}],[{\"text\":\"4\",\"callback_data\":\"sale_category_5\",\"raw_data\":{\"text\":\"4\",\"callback_data\":\"sale_category_5\"},\"bot_username\":\"\"},{\"text\":\"5\",\"callback_data\":\"sale_category_5\",\"raw_data\":{\"text\":\"5\",\"callback_data\":\"sale_category_5\"},\"bot_username\":\"\"},{\"text\":\"6\",\"callback_data\":\"sale_category_6\",\"raw_data\":{\"text\":\"6\",\"callback_data\":\"sale_category_6\"},\"bot_username\":\"\"}],[{\"text\":\"7\",\"callback_data\":\"sale_category_7\",\"raw_data\":{\"text\":\"7\",\"callback_data\":\"sale_category_7\"},\"bot_username\":\"\"},{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_full\",\"raw_data\":{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_full\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 790, 32640798, '2021-11-24 23:41:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 23:41:06', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 792, 32640798, '2021-11-24 23:41:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 23:41:31', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 793, 2083989238, '2021-11-24 23:41:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 23:41:47', NULL, NULL, 'Выберите категорию', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1\",\"callback_data\":\"sale_category_1\",\"raw_data\":{\"text\":\"1\",\"callback_data\":\"sale_category_1\"},\"bot_username\":\"\"},{\"text\":\"2\",\"callback_data\":\"sale_category_2\",\"raw_data\":{\"text\":\"2\",\"callback_data\":\"sale_category_2\"},\"bot_username\":\"\"},{\"text\":\"3\",\"callback_data\":\"sale_category_3\",\"raw_data\":{\"text\":\"3\",\"callback_data\":\"sale_category_3\"},\"bot_username\":\"\"}],[{\"text\":\"4\",\"callback_data\":\"sale_category_4\",\"raw_data\":{\"text\":\"4\",\"callback_data\":\"sale_category_4\"},\"bot_username\":\"\"},{\"text\":\"5\",\"callback_data\":\"sale_category_5\",\"raw_data\":{\"text\":\"5\",\"callback_data\":\"sale_category_5\"},\"bot_username\":\"\"},{\"text\":\"6\",\"callback_data\":\"sale_category_6\",\"raw_data\":{\"text\":\"6\",\"callback_data\":\"sale_category_6\"},\"bot_username\":\"\"}],[{\"text\":\"7\",\"callback_data\":\"sale_category_7\",\"raw_data\":{\"text\":\"7\",\"callback_data\":\"sale_category_7\"},\"bot_username\":\"\"},{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_full\",\"raw_data\":{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_full\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 794, 32640798, '2021-11-24 23:42:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 23:43:01', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 795, 2083989238, '2021-11-24 23:43:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 23:43:25', NULL, NULL, 'Выберите категорию', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1\",\"callback_data\":\"sale_category_1\",\"raw_data\":{\"text\":\"1\",\"callback_data\":\"sale_category_1\"},\"bot_username\":\"\"},{\"text\":\"2\",\"callback_data\":\"sale_category_2\",\"raw_data\":{\"text\":\"2\",\"callback_data\":\"sale_category_2\"},\"bot_username\":\"\"},{\"text\":\"3\",\"callback_data\":\"sale_category_3\",\"raw_data\":{\"text\":\"3\",\"callback_data\":\"sale_category_3\"},\"bot_username\":\"\"}],[{\"text\":\"4\",\"callback_data\":\"sale_category_4\",\"raw_data\":{\"text\":\"4\",\"callback_data\":\"sale_category_4\"},\"bot_username\":\"\"},{\"text\":\"5\",\"callback_data\":\"sale_category_5\",\"raw_data\":{\"text\":\"5\",\"callback_data\":\"sale_category_5\"},\"bot_username\":\"\"},{\"text\":\"6\",\"callback_data\":\"sale_category_6\",\"raw_data\":{\"text\":\"6\",\"callback_data\":\"sale_category_6\"},\"bot_username\":\"\"}],[{\"text\":\"7\",\"callback_data\":\"sale_category_7\",\"raw_data\":{\"text\":\"7\",\"callback_data\":\"sale_category_7\"},\"bot_username\":\"\"},{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_full\",\"raw_data\":{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_full\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 796, 32640798, '2021-11-24 23:44:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 23:44:38', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 798, 32640798, '2021-11-24 23:45:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 23:45:23', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 800, 32640798, '2021-11-24 23:46:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 23:46:15', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 801, 2083989238, '2021-11-24 23:46:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 23:46:23', NULL, NULL, 'Выберите категорию', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1\",\"callback_data\":\"sale_category_1\",\"raw_data\":{\"text\":\"1\",\"callback_data\":\"sale_category_1\"},\"bot_username\":\"\"},{\"text\":\"2\",\"callback_data\":\"sale_category_2\",\"raw_data\":{\"text\":\"2\",\"callback_data\":\"sale_category_2\"},\"bot_username\":\"\"},{\"text\":\"3\",\"callback_data\":\"sale_category_3\",\"raw_data\":{\"text\":\"3\",\"callback_data\":\"sale_category_3\"},\"bot_username\":\"\"}],[{\"text\":\"4\",\"callback_data\":\"sale_category_4\",\"raw_data\":{\"text\":\"4\",\"callback_data\":\"sale_category_4\"},\"bot_username\":\"\"},{\"text\":\"5\",\"callback_data\":\"sale_category_5\",\"raw_data\":{\"text\":\"5\",\"callback_data\":\"sale_category_5\"},\"bot_username\":\"\"},{\"text\":\"6\",\"callback_data\":\"sale_category_6\",\"raw_data\":{\"text\":\"6\",\"callback_data\":\"sale_category_6\"},\"bot_username\":\"\"}],[{\"text\":\"7\",\"callback_data\":\"sale_category_7\",\"raw_data\":{\"text\":\"7\",\"callback_data\":\"sale_category_7\"},\"bot_username\":\"\"},{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_full\",\"raw_data\":{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_full\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 802, 32640798, '2021-11-24 23:46:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 23:46:51', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 804, 32640798, '2021-11-24 23:47:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 23:47:27', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 805, 2083989238, '2021-11-24 23:47:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 23:47:35', NULL, NULL, 'Выберите категорию', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1\",\"callback_data\":\"sale_category_1\",\"raw_data\":{\"text\":\"1\",\"callback_data\":\"sale_category_1\"},\"bot_username\":\"\"},{\"text\":\"2\",\"callback_data\":\"sale_category_2\",\"raw_data\":{\"text\":\"2\",\"callback_data\":\"sale_category_2\"},\"bot_username\":\"\"},{\"text\":\"3\",\"callback_data\":\"sale_category_3\",\"raw_data\":{\"text\":\"3\",\"callback_data\":\"sale_category_3\"},\"bot_username\":\"\"}],[{\"text\":\"4\",\"callback_data\":\"sale_category_4\",\"raw_data\":{\"text\":\"4\",\"callback_data\":\"sale_category_4\"},\"bot_username\":\"\"},{\"text\":\"5\",\"callback_data\":\"sale_category_5\",\"raw_data\":{\"text\":\"5\",\"callback_data\":\"sale_category_5\"},\"bot_username\":\"\"},{\"text\":\"6\",\"callback_data\":\"sale_category_6\",\"raw_data\":{\"text\":\"6\",\"callback_data\":\"sale_category_6\"},\"bot_username\":\"\"}],[{\"text\":\"7\",\"callback_data\":\"sale_category_7\",\"raw_data\":{\"text\":\"7\",\"callback_data\":\"sale_category_7\"},\"bot_username\":\"\"},{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_full\",\"raw_data\":{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_full\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 806, 32640798, '2021-11-25 00:04:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 00:04:45', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 807, 2083989238, '2021-11-25 00:04:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 00:04:53', NULL, NULL, 'Выберите категорию', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1\",\"callback_data\":\"sale_category_1\",\"raw_data\":{\"text\":\"1\",\"callback_data\":\"sale_category_1\"},\"bot_username\":\"\"},{\"text\":\"2\",\"callback_data\":\"sale_category_2\",\"raw_data\":{\"text\":\"2\",\"callback_data\":\"sale_category_2\"},\"bot_username\":\"\"},{\"text\":\"3\",\"callback_data\":\"sale_category_3\",\"raw_data\":{\"text\":\"3\",\"callback_data\":\"sale_category_3\"},\"bot_username\":\"\"}],[{\"text\":\"4\",\"callback_data\":\"sale_category_4\",\"raw_data\":{\"text\":\"4\",\"callback_data\":\"sale_category_4\"},\"bot_username\":\"\"},{\"text\":\"5\",\"callback_data\":\"sale_category_5\",\"raw_data\":{\"text\":\"5\",\"callback_data\":\"sale_category_5\"},\"bot_username\":\"\"},{\"text\":\"6\",\"callback_data\":\"sale_category_6\",\"raw_data\":{\"text\":\"6\",\"callback_data\":\"sale_category_6\"},\"bot_username\":\"\"}],[{\"text\":\"7\",\"callback_data\":\"sale_category_7\",\"raw_data\":{\"text\":\"7\",\"callback_data\":\"sale_category_7\"},\"bot_username\":\"\"},{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_full\",\"raw_data\":{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_full\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 808, 32640798, '2021-11-25 00:31:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 00:32:15', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 809, 2083989238, '2021-11-25 00:32:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 00:32:34', NULL, NULL, 'Выберите категорию', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1\",\"callback_data\":\"sale_category_1\",\"raw_data\":{\"text\":\"1\",\"callback_data\":\"sale_category_1\"},\"bot_username\":\"\"},{\"text\":\"2\",\"callback_data\":\"sale_category_2\",\"raw_data\":{\"text\":\"2\",\"callback_data\":\"sale_category_2\"},\"bot_username\":\"\"},{\"text\":\"3\",\"callback_data\":\"sale_category_3\",\"raw_data\":{\"text\":\"3\",\"callback_data\":\"sale_category_3\"},\"bot_username\":\"\"}],[{\"text\":\"4\",\"callback_data\":\"sale_category_4\",\"raw_data\":{\"text\":\"4\",\"callback_data\":\"sale_category_4\"},\"bot_username\":\"\"},{\"text\":\"5\",\"callback_data\":\"sale_category_5\",\"raw_data\":{\"text\":\"5\",\"callback_data\":\"sale_category_5\"},\"bot_username\":\"\"},{\"text\":\"6\",\"callback_data\":\"sale_category_6\",\"raw_data\":{\"text\":\"6\",\"callback_data\":\"sale_category_6\"},\"bot_username\":\"\"}],[{\"text\":\"7\",\"callback_data\":\"sale_category_7\",\"raw_data\":{\"text\":\"7\",\"callback_data\":\"sale_category_7\"},\"bot_username\":\"\"},{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_full\",\"raw_data\":{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_full\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 810, 32640798, '2021-11-25 00:33:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 00:33:57', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 811, 2083989238, '2021-11-25 00:33:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 00:34:05', NULL, NULL, 'Выберите категорию', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1\",\"callback_data\":\"sale_category_1\",\"raw_data\":{\"text\":\"1\",\"callback_data\":\"sale_category_1\"},\"bot_username\":\"\"},{\"text\":\"2\",\"callback_data\":\"sale_category_2\",\"raw_data\":{\"text\":\"2\",\"callback_data\":\"sale_category_2\"},\"bot_username\":\"\"},{\"text\":\"3\",\"callback_data\":\"sale_category_3\",\"raw_data\":{\"text\":\"3\",\"callback_data\":\"sale_category_3\"},\"bot_username\":\"\"}],[{\"text\":\"4\",\"callback_data\":\"sale_category_4\",\"raw_data\":{\"text\":\"4\",\"callback_data\":\"sale_category_4\"},\"bot_username\":\"\"},{\"text\":\"5\",\"callback_data\":\"sale_category_5\",\"raw_data\":{\"text\":\"5\",\"callback_data\":\"sale_category_5\"},\"bot_username\":\"\"},{\"text\":\"6\",\"callback_data\":\"sale_category_6\",\"raw_data\":{\"text\":\"6\",\"callback_data\":\"sale_category_6\"},\"bot_username\":\"\"}],[{\"text\":\"7\",\"callback_data\":\"sale_category_7\",\"raw_data\":{\"text\":\"7\",\"callback_data\":\"sale_category_7\"},\"bot_username\":\"\"},{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_full\",\"raw_data\":{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_full\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 812, 32640798, '2021-11-25 00:40:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 00:40:41', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 813, 2083989238, '2021-11-25 00:40:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 00:40:48', NULL, NULL, 'Выберите категорию', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1\",\"callback_data\":\"sale_category_1\",\"raw_data\":{\"text\":\"1\",\"callback_data\":\"sale_category_1\"},\"bot_username\":\"\"},{\"text\":\"2\",\"callback_data\":\"sale_category_2\",\"raw_data\":{\"text\":\"2\",\"callback_data\":\"sale_category_2\"},\"bot_username\":\"\"},{\"text\":\"3\",\"callback_data\":\"sale_category_3\",\"raw_data\":{\"text\":\"3\",\"callback_data\":\"sale_category_3\"},\"bot_username\":\"\"}],[{\"text\":\"4\",\"callback_data\":\"sale_category_4\",\"raw_data\":{\"text\":\"4\",\"callback_data\":\"sale_category_4\"},\"bot_username\":\"\"},{\"text\":\"5\",\"callback_data\":\"sale_category_5\",\"raw_data\":{\"text\":\"5\",\"callback_data\":\"sale_category_5\"},\"bot_username\":\"\"},{\"text\":\"6\",\"callback_data\":\"sale_category_6\",\"raw_data\":{\"text\":\"6\",\"callback_data\":\"sale_category_6\"},\"bot_username\":\"\"}],[{\"text\":\"7\",\"callback_data\":\"sale_category_7\",\"raw_data\":{\"text\":\"7\",\"callback_data\":\"sale_category_7\"},\"bot_username\":\"\"},{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_full\",\"raw_data\":{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_full\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 814, 32640798, '2021-11-25 00:40:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 00:40:56', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `message` (`chat_id`, `sender_chat_id`, `id`, `user_id`, `date`, `forward_from`, `forward_from_chat`, `forward_from_message_id`, `forward_signature`, `forward_sender_name`, `forward_date`, `reply_to_chat`, `reply_to_message`, `via_bot`, `edit_date`, `media_group_id`, `author_signature`, `text`, `entities`, `caption_entities`, `audio`, `document`, `animation`, `game`, `photo`, `sticker`, `video`, `voice`, `video_note`, `caption`, `contact`, `location`, `venue`, `poll`, `dice`, `new_chat_members`, `left_chat_member`, `new_chat_title`, `new_chat_photo`, `delete_chat_photo`, `group_chat_created`, `supergroup_chat_created`, `channel_chat_created`, `message_auto_delete_timer_changed`, `migrate_to_chat_id`, `migrate_from_chat_id`, `pinned_message`, `invoice`, `successful_payment`, `connected_website`, `passport_data`, `proximity_alert_triggered`, `voice_chat_scheduled`, `voice_chat_started`, `voice_chat_ended`, `voice_chat_participants_invited`, `reply_markup`) VALUES
(32640798, NULL, 815, 2083989238, '2021-11-25 00:40:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 00:41:03', NULL, NULL, 'Выберите категорию', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1\",\"callback_data\":\"sale_category_1\",\"raw_data\":{\"text\":\"1\",\"callback_data\":\"sale_category_1\"},\"bot_username\":\"\"},{\"text\":\"2\",\"callback_data\":\"sale_category_2\",\"raw_data\":{\"text\":\"2\",\"callback_data\":\"sale_category_2\"},\"bot_username\":\"\"},{\"text\":\"3\",\"callback_data\":\"sale_category_3\",\"raw_data\":{\"text\":\"3\",\"callback_data\":\"sale_category_3\"},\"bot_username\":\"\"}],[{\"text\":\"4\",\"callback_data\":\"sale_category_4\",\"raw_data\":{\"text\":\"4\",\"callback_data\":\"sale_category_4\"},\"bot_username\":\"\"},{\"text\":\"5\",\"callback_data\":\"sale_category_5\",\"raw_data\":{\"text\":\"5\",\"callback_data\":\"sale_category_5\"},\"bot_username\":\"\"},{\"text\":\"6\",\"callback_data\":\"sale_category_6\",\"raw_data\":{\"text\":\"6\",\"callback_data\":\"sale_category_6\"},\"bot_username\":\"\"}],[{\"text\":\"7\",\"callback_data\":\"sale_category_7\",\"raw_data\":{\"text\":\"7\",\"callback_data\":\"sale_category_7\"},\"bot_username\":\"\"},{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_full\",\"raw_data\":{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_full\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 816, 32640798, '2021-11-25 01:41:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 01:41:59', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 817, 2083989238, '2021-11-25 01:41:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 01:42:05', NULL, NULL, 'Выберите категорию', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1\",\"callback_data\":\"sale_category_1\",\"raw_data\":{\"text\":\"1\",\"callback_data\":\"sale_category_1\"},\"bot_username\":\"\"},{\"text\":\"2\",\"callback_data\":\"sale_category_2\",\"raw_data\":{\"text\":\"2\",\"callback_data\":\"sale_category_2\"},\"bot_username\":\"\"},{\"text\":\"3\",\"callback_data\":\"sale_category_3\",\"raw_data\":{\"text\":\"3\",\"callback_data\":\"sale_category_3\"},\"bot_username\":\"\"}],[{\"text\":\"4\",\"callback_data\":\"sale_category_4\",\"raw_data\":{\"text\":\"4\",\"callback_data\":\"sale_category_4\"},\"bot_username\":\"\"},{\"text\":\"5\",\"callback_data\":\"sale_category_5\",\"raw_data\":{\"text\":\"5\",\"callback_data\":\"sale_category_5\"},\"bot_username\":\"\"},{\"text\":\"6\",\"callback_data\":\"sale_category_6\",\"raw_data\":{\"text\":\"6\",\"callback_data\":\"sale_category_6\"},\"bot_username\":\"\"}],[{\"text\":\"7\",\"callback_data\":\"sale_category_7\",\"raw_data\":{\"text\":\"7\",\"callback_data\":\"sale_category_7\"},\"bot_username\":\"\"},{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_full\",\"raw_data\":{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_full\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 818, 32640798, '2021-11-25 01:42:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 01:42:15', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 819, 2083989238, '2021-11-25 01:42:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 01:42:26', NULL, NULL, 'Выберите категорию', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1\",\"callback_data\":\"sale_category_1\",\"raw_data\":{\"text\":\"1\",\"callback_data\":\"sale_category_1\"},\"bot_username\":\"\"},{\"text\":\"2\",\"callback_data\":\"sale_category_2\",\"raw_data\":{\"text\":\"2\",\"callback_data\":\"sale_category_2\"},\"bot_username\":\"\"},{\"text\":\"3\",\"callback_data\":\"sale_category_3\",\"raw_data\":{\"text\":\"3\",\"callback_data\":\"sale_category_3\"},\"bot_username\":\"\"}],[{\"text\":\"4\",\"callback_data\":\"sale_category_4\",\"raw_data\":{\"text\":\"4\",\"callback_data\":\"sale_category_4\"},\"bot_username\":\"\"},{\"text\":\"5\",\"callback_data\":\"sale_category_5\",\"raw_data\":{\"text\":\"5\",\"callback_data\":\"sale_category_5\"},\"bot_username\":\"\"},{\"text\":\"6\",\"callback_data\":\"sale_category_6\",\"raw_data\":{\"text\":\"6\",\"callback_data\":\"sale_category_6\"},\"bot_username\":\"\"}],[{\"text\":\"7\",\"callback_data\":\"sale_category_7\",\"raw_data\":{\"text\":\"7\",\"callback_data\":\"sale_category_7\"},\"bot_username\":\"\"},{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_full\",\"raw_data\":{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_full\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 820, 32640798, '2021-11-25 02:30:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 02:31:07', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 821, 2083989238, '2021-11-25 02:31:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 02:31:16', NULL, NULL, 'Выберите категорию', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1\",\"callback_data\":\"sale_category_1\",\"raw_data\":{\"text\":\"1\",\"callback_data\":\"sale_category_1\"},\"bot_username\":\"\"},{\"text\":\"2\",\"callback_data\":\"sale_category_2\",\"raw_data\":{\"text\":\"2\",\"callback_data\":\"sale_category_2\"},\"bot_username\":\"\"},{\"text\":\"3\",\"callback_data\":\"sale_category_3\",\"raw_data\":{\"text\":\"3\",\"callback_data\":\"sale_category_3\"},\"bot_username\":\"\"}],[{\"text\":\"4\",\"callback_data\":\"sale_category_4\",\"raw_data\":{\"text\":\"4\",\"callback_data\":\"sale_category_4\"},\"bot_username\":\"\"},{\"text\":\"5\",\"callback_data\":\"sale_category_5\",\"raw_data\":{\"text\":\"5\",\"callback_data\":\"sale_category_5\"},\"bot_username\":\"\"},{\"text\":\"6\",\"callback_data\":\"sale_category_6\",\"raw_data\":{\"text\":\"6\",\"callback_data\":\"sale_category_6\"},\"bot_username\":\"\"}],[{\"text\":\"7\",\"callback_data\":\"sale_category_7\",\"raw_data\":{\"text\":\"7\",\"callback_data\":\"sale_category_7\"},\"bot_username\":\"\"},{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_0\",\"raw_data\":{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_0\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 822, 32640798, '2021-11-25 02:32:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 02:32:24', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 823, 2083989238, '2021-11-25 02:32:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 02:32:30', NULL, NULL, 'Выберите категорию', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1\",\"callback_data\":\"sale_category_1\",\"raw_data\":{\"text\":\"1\",\"callback_data\":\"sale_category_1\"},\"bot_username\":\"\"},{\"text\":\"2\",\"callback_data\":\"sale_category_2\",\"raw_data\":{\"text\":\"2\",\"callback_data\":\"sale_category_2\"},\"bot_username\":\"\"},{\"text\":\"3\",\"callback_data\":\"sale_category_3\",\"raw_data\":{\"text\":\"3\",\"callback_data\":\"sale_category_3\"},\"bot_username\":\"\"}],[{\"text\":\"4\",\"callback_data\":\"sale_category_4\",\"raw_data\":{\"text\":\"4\",\"callback_data\":\"sale_category_4\"},\"bot_username\":\"\"},{\"text\":\"5\",\"callback_data\":\"sale_category_5\",\"raw_data\":{\"text\":\"5\",\"callback_data\":\"sale_category_5\"},\"bot_username\":\"\"},{\"text\":\"6\",\"callback_data\":\"sale_category_6\",\"raw_data\":{\"text\":\"6\",\"callback_data\":\"sale_category_6\"},\"bot_username\":\"\"}],[{\"text\":\"7\",\"callback_data\":\"sale_category_7\",\"raw_data\":{\"text\":\"7\",\"callback_data\":\"sale_category_7\"},\"bot_username\":\"\"},{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_0\",\"raw_data\":{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_0\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 824, 32640798, '2021-11-25 02:34:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 02:34:11', NULL, NULL, '/sal;e', '[{\"offset\":0,\"length\":4,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 825, 32640798, '2021-11-25 02:34:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 02:34:11', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 827, 2083989238, '2021-11-25 02:34:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 02:34:17', NULL, NULL, 'Выберите категорию', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1\",\"callback_data\":\"sale_category_1\",\"raw_data\":{\"text\":\"1\",\"callback_data\":\"sale_category_1\"},\"bot_username\":\"\"},{\"text\":\"2\",\"callback_data\":\"sale_category_2\",\"raw_data\":{\"text\":\"2\",\"callback_data\":\"sale_category_2\"},\"bot_username\":\"\"},{\"text\":\"3\",\"callback_data\":\"sale_category_3\",\"raw_data\":{\"text\":\"3\",\"callback_data\":\"sale_category_3\"},\"bot_username\":\"\"}],[{\"text\":\"4\",\"callback_data\":\"sale_category_4\",\"raw_data\":{\"text\":\"4\",\"callback_data\":\"sale_category_4\"},\"bot_username\":\"\"},{\"text\":\"5\",\"callback_data\":\"sale_category_5\",\"raw_data\":{\"text\":\"5\",\"callback_data\":\"sale_category_5\"},\"bot_username\":\"\"},{\"text\":\"6\",\"callback_data\":\"sale_category_6\",\"raw_data\":{\"text\":\"6\",\"callback_data\":\"sale_category_6\"},\"bot_username\":\"\"}],[{\"text\":\"7\",\"callback_data\":\"sale_category_7\",\"raw_data\":{\"text\":\"7\",\"callback_data\":\"sale_category_7\"},\"bot_username\":\"\"},{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_0\",\"raw_data\":{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_0\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 828, 32640798, '2021-11-25 02:37:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 02:37:38', NULL, NULL, '/sqle', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 829, 32640798, '2021-11-25 02:37:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 02:37:38', NULL, NULL, '/salq', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 830, 32640798, '2021-11-25 02:37:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 02:37:38', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 833, 2083989238, '2021-11-25 02:37:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 02:37:47', NULL, NULL, 'Выберите категорию', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1\",\"callback_data\":\"sale_category_1\",\"raw_data\":{\"text\":\"1\",\"callback_data\":\"sale_category_1\"},\"bot_username\":\"\"},{\"text\":\"2\",\"callback_data\":\"sale_category_2\",\"raw_data\":{\"text\":\"2\",\"callback_data\":\"sale_category_2\"},\"bot_username\":\"\"},{\"text\":\"3\",\"callback_data\":\"sale_category_3\",\"raw_data\":{\"text\":\"3\",\"callback_data\":\"sale_category_3\"},\"bot_username\":\"\"}],[{\"text\":\"4\",\"callback_data\":\"sale_category_4\",\"raw_data\":{\"text\":\"4\",\"callback_data\":\"sale_category_4\"},\"bot_username\":\"\"},{\"text\":\"5\",\"callback_data\":\"sale_category_5\",\"raw_data\":{\"text\":\"5\",\"callback_data\":\"sale_category_5\"},\"bot_username\":\"\"},{\"text\":\"6\",\"callback_data\":\"sale_category_6\",\"raw_data\":{\"text\":\"6\",\"callback_data\":\"sale_category_6\"},\"bot_username\":\"\"}],[{\"text\":\"7\",\"callback_data\":\"sale_category_7\",\"raw_data\":{\"text\":\"7\",\"callback_data\":\"sale_category_7\"},\"bot_username\":\"\"},{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_0\",\"raw_data\":{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_0\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 834, 32640798, '2021-11-25 02:40:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 02:40:37', NULL, NULL, '/viewitems', '[{\"offset\":0,\"length\":10,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 839, 32640798, '2021-11-25 02:49:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 02:49:52', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 841, 2083989238, '2021-11-25 02:49:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 02:49:57', NULL, NULL, 'Выберите категорию', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1\",\"callback_data\":\"sale_category_1\",\"raw_data\":{\"text\":\"1\",\"callback_data\":\"sale_category_1\"},\"bot_username\":\"\"},{\"text\":\"2\",\"callback_data\":\"sale_category_2\",\"raw_data\":{\"text\":\"2\",\"callback_data\":\"sale_category_2\"},\"bot_username\":\"\"},{\"text\":\"3\",\"callback_data\":\"sale_category_3\",\"raw_data\":{\"text\":\"3\",\"callback_data\":\"sale_category_3\"},\"bot_username\":\"\"}],[{\"text\":\"4\",\"callback_data\":\"sale_category_4\",\"raw_data\":{\"text\":\"4\",\"callback_data\":\"sale_category_4\"},\"bot_username\":\"\"},{\"text\":\"5\",\"callback_data\":\"sale_category_5\",\"raw_data\":{\"text\":\"5\",\"callback_data\":\"sale_category_5\"},\"bot_username\":\"\"},{\"text\":\"6\",\"callback_data\":\"sale_category_6\",\"raw_data\":{\"text\":\"6\",\"callback_data\":\"sale_category_6\"},\"bot_username\":\"\"}],[{\"text\":\"7\",\"callback_data\":\"sale_category_7\",\"raw_data\":{\"text\":\"7\",\"callback_data\":\"sale_category_7\"},\"bot_username\":\"\"},{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_0\",\"raw_data\":{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_0\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 844, 32640798, '2021-11-25 02:50:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 02:50:14', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 845, 2083989238, '2021-11-25 02:50:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 02:50:19', NULL, NULL, 'Выберите категорию', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1\",\"callback_data\":\"sale_category_1\",\"raw_data\":{\"text\":\"1\",\"callback_data\":\"sale_category_1\"},\"bot_username\":\"\"},{\"text\":\"2\",\"callback_data\":\"sale_category_2\",\"raw_data\":{\"text\":\"2\",\"callback_data\":\"sale_category_2\"},\"bot_username\":\"\"},{\"text\":\"3\",\"callback_data\":\"sale_category_3\",\"raw_data\":{\"text\":\"3\",\"callback_data\":\"sale_category_3\"},\"bot_username\":\"\"}],[{\"text\":\"4\",\"callback_data\":\"sale_category_4\",\"raw_data\":{\"text\":\"4\",\"callback_data\":\"sale_category_4\"},\"bot_username\":\"\"},{\"text\":\"5\",\"callback_data\":\"sale_category_5\",\"raw_data\":{\"text\":\"5\",\"callback_data\":\"sale_category_5\"},\"bot_username\":\"\"},{\"text\":\"6\",\"callback_data\":\"sale_category_6\",\"raw_data\":{\"text\":\"6\",\"callback_data\":\"sale_category_6\"},\"bot_username\":\"\"}],[{\"text\":\"7\",\"callback_data\":\"sale_category_7\",\"raw_data\":{\"text\":\"7\",\"callback_data\":\"sale_category_7\"},\"bot_username\":\"\"},{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_0\",\"raw_data\":{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_0\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 848, 32640798, '2021-11-25 02:52:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 02:52:53', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 849, 2083989238, '2021-11-25 02:52:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 02:52:58', NULL, NULL, 'Выберите категорию', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1\",\"callback_data\":\"sale_category_1\",\"raw_data\":{\"text\":\"1\",\"callback_data\":\"sale_category_1\"},\"bot_username\":\"\"},{\"text\":\"2\",\"callback_data\":\"sale_category_2\",\"raw_data\":{\"text\":\"2\",\"callback_data\":\"sale_category_2\"},\"bot_username\":\"\"},{\"text\":\"3\",\"callback_data\":\"sale_category_3\",\"raw_data\":{\"text\":\"3\",\"callback_data\":\"sale_category_3\"},\"bot_username\":\"\"}],[{\"text\":\"4\",\"callback_data\":\"sale_category_4\",\"raw_data\":{\"text\":\"4\",\"callback_data\":\"sale_category_4\"},\"bot_username\":\"\"},{\"text\":\"5\",\"callback_data\":\"sale_category_5\",\"raw_data\":{\"text\":\"5\",\"callback_data\":\"sale_category_5\"},\"bot_username\":\"\"},{\"text\":\"6\",\"callback_data\":\"sale_category_6\",\"raw_data\":{\"text\":\"6\",\"callback_data\":\"sale_category_6\"},\"bot_username\":\"\"}],[{\"text\":\"7\",\"callback_data\":\"sale_category_7\",\"raw_data\":{\"text\":\"7\",\"callback_data\":\"sale_category_7\"},\"bot_username\":\"\"},{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_0\",\"raw_data\":{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_0\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 850, 32640798, '2021-11-25 02:55:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 02:55:49', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 852, 2083989238, '2021-11-25 02:55:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 02:56:11', NULL, NULL, 'Выберите категорию', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1\",\"callback_data\":\"sale_category_1\",\"raw_data\":{\"text\":\"1\",\"callback_data\":\"sale_category_1\"},\"bot_username\":\"\"},{\"text\":\"2\",\"callback_data\":\"sale_category_2\",\"raw_data\":{\"text\":\"2\",\"callback_data\":\"sale_category_2\"},\"bot_username\":\"\"},{\"text\":\"3\",\"callback_data\":\"sale_category_3\",\"raw_data\":{\"text\":\"3\",\"callback_data\":\"sale_category_3\"},\"bot_username\":\"\"}],[{\"text\":\"4\",\"callback_data\":\"sale_category_4\",\"raw_data\":{\"text\":\"4\",\"callback_data\":\"sale_category_4\"},\"bot_username\":\"\"},{\"text\":\"5\",\"callback_data\":\"sale_category_5\",\"raw_data\":{\"text\":\"5\",\"callback_data\":\"sale_category_5\"},\"bot_username\":\"\"},{\"text\":\"6\",\"callback_data\":\"sale_category_6\",\"raw_data\":{\"text\":\"6\",\"callback_data\":\"sale_category_6\"},\"bot_username\":\"\"}],[{\"text\":\"7\",\"callback_data\":\"sale_category_7\",\"raw_data\":{\"text\":\"7\",\"callback_data\":\"sale_category_7\"},\"bot_username\":\"\"},{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_0\",\"raw_data\":{\"text\":\"\\u0412\\u0441\\u0435 \\u043a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u0438\",\"callback_data\":\"sale_category_0\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 859, 32640798, '2021-11-25 03:16:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 04:26:18', NULL, NULL, '@sale 3007 234234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 860, 32640798, '2021-11-25 04:26:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 04:26:27', NULL, NULL, '@inlinequery', '[{\"offset\":0,\"length\":12,\"type\":\"mention\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 861, 32640798, '2021-11-25 04:29:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 04:29:45', NULL, NULL, '@sharif_steel_bot sdfsdf', '[{\"offset\":0,\"length\":17,\"type\":\"mention\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 862, 32640798, '2021-11-25 04:33:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 04:33:16', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 864, 32640798, '2021-11-25 04:33:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 04:33:59', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 868, 32640798, '2021-11-25 04:36:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 04:36:59', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 872, 32640798, '2021-11-25 04:37:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2083989238, '2021-11-25 04:37:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"phone_number\":\"12345678\",\"first_name\":\"Best\",\"last_name\":\"Friend\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 874, 32640798, '2021-11-25 04:37:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2083989238, '2021-11-25 04:38:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"latitude\":32.999993,\"longitude\":-33.000016}', '{\"location\":{\"latitude\":32.999993,\"longitude\":-33.000016},\"title\":\"No-Mans-Land\",\"address\":\"In the middle of Nowhere\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 875, 32640798, '2021-11-25 04:38:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2083989238, '2021-11-25 04:38:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"latitude\":40.866683,\"longitude\":34.566667}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 876, 32640798, '2021-11-25 04:38:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2083989238, '2021-11-25 04:41:17', NULL, NULL, 'The query that got you here: sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 879, 32640798, '2021-11-25 04:41:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 04:43:53', NULL, NULL, 'dfg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 883, 32640798, '2021-11-25 04:49:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2083989238, '2021-11-25 04:49:14', NULL, NULL, 'The query that got you here: sale', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"Inline Query (current chat)\",\"switch_inline_query_current_chat\":\"inline query...\",\"raw_data\":{\"text\":\"Inline Query (current chat)\",\"switch_inline_query_current_chat\":\"inline query...\"},\"bot_username\":\"\"},{\"text\":\"Inline Query (other chat)\",\"switch_inline_query\":\"inline query...\",\"raw_data\":{\"text\":\"Inline Query (other chat)\",\"switch_inline_query\":\"inline query...\"},\"bot_username\":\"\"}],[{\"text\":\"Callback\",\"callback_data\":\"identifier\",\"raw_data\":{\"text\":\"Callback\",\"callback_data\":\"identifier\"},\"bot_username\":\"\"},{\"text\":\"Open URL\",\"url\":\"https:\\/\\/github.com\\/php-telegram-bot\\/example-bot\",\"raw_data\":{\"text\":\"Open URL\",\"url\":\"https:\\/\\/github.com\\/php-telegram-bot\\/example-bot\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 927, 32640798, '2021-11-25 05:08:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 05:08:47', NULL, NULL, '/viewitems', '[{\"offset\":0,\"length\":10,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 939, 32640798, '2021-11-25 05:14:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 05:15:04', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 943, 32640798, '2021-11-25 05:16:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2083989238, '2021-11-25 05:20:56', NULL, NULL, 'The query that got you here: sale Арм ф 8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 944, 32640798, '2021-11-25 05:22:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2083989238, '2021-11-25 05:22:39', NULL, NULL, '6001 Арм ф 8 (35гс)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 948, 32640798, '2021-11-25 05:23:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-25 05:23:34', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 950, 32640798, '2021-11-30 03:46:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 03:46:10', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 952, 32640798, '2021-11-30 03:47:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2083989238, '2021-11-30 03:53:38', NULL, NULL, '1004 Труба ЭЛВС 325х7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 953, 32640798, '2021-11-30 03:53:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 03:53:38', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 955, 32640798, '2021-11-30 03:54:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 03:54:28', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 957, 32640798, '2021-11-30 03:54:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 03:54:47', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 959, 32640798, '2021-11-30 03:56:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 03:56:59', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 960, 32640798, '2021-11-30 03:57:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 03:57:28', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 962, 32640798, '2021-11-30 03:57:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 03:57:49', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 964, 32640798, '2021-11-30 03:57:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 03:58:03', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 965, 32640798, '2021-11-30 03:57:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 03:58:03', NULL, NULL, '/sale asldkjasdlkjdsdfg;lsdfgj;fsdg;jgfdsklgfdsj;', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 968, 32640798, '2021-11-30 03:58:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 03:58:29', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 969, 32640798, '2021-11-30 03:58:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 03:58:29', NULL, NULL, '/sale MSUsucks', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 972, 32640798, '2021-11-30 04:02:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 04:02:12', NULL, NULL, '/sale 1044 20000', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 973, 32640798, '2021-11-30 04:02:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 04:02:33', NULL, NULL, '/sale 1044 20000', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 975, 32640798, '2021-11-30 04:03:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 04:03:06', NULL, NULL, '/sale sdfsdf sdfsdf sdfsdf sdfsdf', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 977, 32640798, '2021-11-30 04:03:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 04:03:35', NULL, NULL, '/sale sdfsdf sdfsdf sdfsdf sdfsdf', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 979, 32640798, '2021-11-30 04:03:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 04:03:52', NULL, NULL, '/sale 1014324 324554390435098', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 981, 32640798, '2021-11-30 04:04:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 04:04:14', NULL, NULL, '/sale 1014324   324554390435098', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 983, 32640798, '2021-11-30 04:05:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 04:05:25', NULL, NULL, '/sale   1014324   324554390435098', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 985, 32640798, '2021-11-30 04:06:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 04:06:25', NULL, NULL, '/sale   1014324   324554390435098', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 987, 32640798, '2021-11-30 04:07:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 04:07:12', NULL, NULL, '/sale   1014324   324554390435098', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 989, 32640798, '2021-11-30 04:10:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 04:10:55', NULL, NULL, '/sale   1014324   324554390435098', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 991, 32640798, '2021-11-30 04:12:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 04:12:43', NULL, NULL, '/sale   1014324   324554390435098', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 993, 32640798, '2021-11-30 04:13:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 04:13:07', NULL, NULL, '/sale -1 -2', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 994, 32640798, '2021-11-30 04:13:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 04:13:25', NULL, NULL, '/sale -1 -2', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 995, 32640798, '2021-11-30 04:13:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 04:13:46', NULL, NULL, '/sale -1 -2', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 996, 32640798, '2021-11-30 04:21:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 04:21:52', NULL, NULL, '/sale -1 -2', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 998, 32640798, '2021-11-30 04:22:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 04:22:12', NULL, NULL, '/sale -1 -2', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1000, 32640798, '2021-11-30 04:24:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 04:24:10', NULL, NULL, '/sale -1 -2', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1002, 32640798, '2021-11-30 04:24:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 04:24:32', NULL, NULL, '/sale 1 2', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1004, 32640798, '2021-11-30 04:24:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 04:24:52', NULL, NULL, '/sale 1   2', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1006, 32640798, '2021-11-30 04:25:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 04:25:11', NULL, NULL, '/sale        1   2', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1008, 32640798, '2021-11-30 04:25:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 04:25:33', NULL, NULL, '/sale        1   0', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `message` (`chat_id`, `sender_chat_id`, `id`, `user_id`, `date`, `forward_from`, `forward_from_chat`, `forward_from_message_id`, `forward_signature`, `forward_sender_name`, `forward_date`, `reply_to_chat`, `reply_to_message`, `via_bot`, `edit_date`, `media_group_id`, `author_signature`, `text`, `entities`, `caption_entities`, `audio`, `document`, `animation`, `game`, `photo`, `sticker`, `video`, `voice`, `video_note`, `caption`, `contact`, `location`, `venue`, `poll`, `dice`, `new_chat_members`, `left_chat_member`, `new_chat_title`, `new_chat_photo`, `delete_chat_photo`, `group_chat_created`, `supergroup_chat_created`, `channel_chat_created`, `message_auto_delete_timer_changed`, `migrate_to_chat_id`, `migrate_from_chat_id`, `pinned_message`, `invoice`, `successful_payment`, `connected_website`, `passport_data`, `proximity_alert_triggered`, `voice_chat_scheduled`, `voice_chat_started`, `voice_chat_ended`, `voice_chat_participants_invited`, `reply_markup`) VALUES
(32640798, NULL, 1010, 32640798, '2021-11-30 04:25:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 04:25:45', NULL, NULL, '/sale        1  2 0', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1012, 32640798, '2021-11-30 04:34:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 04:35:00', NULL, NULL, '/sale        1001  0', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1014, 32640798, '2021-11-30 04:35:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 04:35:09', NULL, NULL, '/sale        1001  1', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1015, 32640798, '2021-11-30 04:36:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 04:36:07', NULL, NULL, '/sale        1001  1', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1017, 32640798, '2021-11-30 04:37:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 04:37:25', NULL, NULL, '/sale        1001  1', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1019, 32640798, '2021-11-30 04:37:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 04:37:55', NULL, NULL, '/sale        1001  1', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1021, 32640798, '2021-11-30 04:38:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 04:38:38', NULL, NULL, '/sale        1001  1', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1023, 32640798, '2021-11-30 04:38:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 04:38:53', NULL, NULL, '/sale        21  1', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1025, 32640798, '2021-11-30 04:54:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 05:02:29', NULL, NULL, '/sale 1001 1', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1026, 32640798, '2021-11-30 05:02:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 05:04:04', NULL, NULL, '/sale 1001 1', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1027, 32640798, '2021-11-30 05:04:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 05:04:04', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1030, 32640798, '2021-11-30 05:04:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2083989238, '2021-11-30 05:05:00', NULL, NULL, '1011 труба БШ 57х3,5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1031, 32640798, '2021-11-30 05:04:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 05:05:00', NULL, NULL, '/sale 1011 100000', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1032, 32640798, '2021-11-30 05:05:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 05:05:25', NULL, NULL, '/sale 1011 100000', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1034, 32640798, '2021-11-30 05:11:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 05:11:29', NULL, NULL, '/sale 1011 100000', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1035, 32640798, '2021-11-30 05:11:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 05:11:42', NULL, NULL, '/sale 1011 100000', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1036, 2083989238, '2021-11-30 05:11:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 05:11:51', NULL, NULL, 'Выберите метод оплаты:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"\\u041d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435\",\"callback_data\":\"sale_item_cash_1\",\"raw_data\":{\"text\":\"\\u041d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435\",\"callback_data\":\"sale_item_cash_1\"},\"bot_username\":\"\"},{\"text\":\"\\u041f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0435\\u043c\",\"callback_data\":\"sale_item_cash_0\",\"raw_data\":{\"text\":\"\\u041f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0435\\u043c\",\"callback_data\":\"sale_item_cash_0\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1037, 32640798, '2021-11-30 05:12:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 05:59:01', NULL, NULL, 'укпварпива', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1038, 32640798, '2021-11-30 05:14:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 05:59:01', NULL, NULL, 'ываыва', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1039, 32640798, '2021-11-30 05:58:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 05:59:01', NULL, NULL, '/sale 1011 100000', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1040, 2083989238, '2021-11-30 05:59:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 05:59:07', NULL, NULL, 'Выберите метод оплаты:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"\\u041d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435\",\"callback_data\":\"sale_item_cash_1\",\"raw_data\":{\"text\":\"\\u041d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435\",\"callback_data\":\"sale_item_cash_1\"},\"bot_username\":\"\"},{\"text\":\"\\u041f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0435\\u043c\",\"callback_data\":\"sale_item_cash_0\",\"raw_data\":{\"text\":\"\\u041f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0435\\u043c\",\"callback_data\":\"sale_item_cash_0\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1041, 32640798, '2021-11-30 06:24:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 06:24:43', NULL, NULL, '/forcereply', '[{\"offset\":0,\"length\":11,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1042, 2083989238, '2021-11-30 06:24:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 06:27:23', NULL, NULL, 'Write something in reply:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1043, 32640798, '2021-11-30 06:25:11', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1042, NULL, '2021-11-30 06:27:23', NULL, NULL, 'asdasd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1044, 32640798, '2021-11-30 06:28:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 06:28:06', NULL, NULL, '/sale 1011 100000', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1045, 32640798, '2021-11-30 06:28:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 06:28:25', NULL, NULL, '/sale 1011 100000', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1046, 32640798, '2021-11-30 06:28:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 06:29:01', NULL, NULL, '/sale 1011 100000', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1047, 32640798, '2021-11-30 06:29:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 06:29:17', NULL, NULL, '/sale 1011 100000', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1048, 2083989238, '2021-11-30 06:29:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 06:29:23', NULL, NULL, 'Выберите метод оплаты:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"\\u041d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435\",\"callback_data\":\"sale_item_cash_1\",\"raw_data\":{\"text\":\"\\u041d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435\",\"callback_data\":\"sale_item_cash_1\"},\"bot_username\":\"\"},{\"text\":\"\\u041f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0435\\u043c\",\"callback_data\":\"sale_item_cash_0\",\"raw_data\":{\"text\":\"\\u041f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0435\\u043c\",\"callback_data\":\"sale_item_cash_0\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1049, 2083989238, '2021-11-30 06:39:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 06:39:54', NULL, NULL, 'Выберите статус оплаты', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"\\u041e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"sale_item_paid_1\",\"raw_data\":{\"text\":\"\\u041e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"sale_item_paid_1\"},\"bot_username\":\"\"},{\"text\":\"\\u041d\\u0435 \\u043e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"sale_item_paid_0\",\"raw_data\":{\"text\":\"\\u041d\\u0435 \\u043e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"sale_item_paid_0\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1050, 32640798, '2021-11-30 09:46:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 09:46:30', NULL, NULL, '/sale 1011 100000', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1051, 32640798, '2021-11-30 09:46:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 09:46:45', NULL, NULL, '/sale 1011 100000', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1052, 2083989238, '2021-11-30 09:46:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 09:47:10', NULL, NULL, 'Выберите метод оплаты:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"\\u041d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435\",\"callback_data\":\"sale_item_cash_1\",\"raw_data\":{\"text\":\"\\u041d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435\",\"callback_data\":\"sale_item_cash_1\"},\"bot_username\":\"\"},{\"text\":\"\\u041f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0435\\u043c\",\"callback_data\":\"sale_item_cash_0\",\"raw_data\":{\"text\":\"\\u041f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0435\\u043c\",\"callback_data\":\"sale_item_cash_0\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1053, 2083989238, '2021-11-30 09:47:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 09:47:34', NULL, NULL, 'Выберите статус оплаты', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"\\u041e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"sale_item_paid_1\",\"raw_data\":{\"text\":\"\\u041e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"sale_item_paid_1\"},\"bot_username\":\"\"},{\"text\":\"\\u041d\\u0435 \\u043e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"sale_item_paid_0\",\"raw_data\":{\"text\":\"\\u041d\\u0435 \\u043e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"sale_item_paid_0\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1054, 2083989238, '2021-11-30 09:47:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 09:51:21', NULL, NULL, 'Напишите комментарий', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1055, 32640798, '2021-11-30 09:48:03', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1054, NULL, '2021-11-30 09:51:21', NULL, NULL, 'Пошел нахуй', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1056, 32640798, '2021-11-30 09:51:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 09:51:31', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1057, 32640798, '2021-11-30 09:51:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 09:51:37', NULL, NULL, 'sdfdfssdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1058, 32640798, '2021-11-30 09:53:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 09:53:03', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1059, 32640798, '2021-11-30 09:53:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 09:53:50', NULL, NULL, '/help', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1061, 32640798, '2021-11-30 09:54:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 09:54:24', NULL, NULL, '/help', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1063, 32640798, '2021-11-30 10:29:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 10:29:39', NULL, NULL, 'sdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1064, 32640798, '2021-11-30 10:29:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 10:30:01', NULL, NULL, 'dfg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1065, 32640798, '2021-11-30 10:30:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 10:30:29', NULL, NULL, '/survey', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1067, 32640798, '2021-11-30 10:30:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 10:30:35', NULL, NULL, 'Evgeniy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1068, 32640798, '2021-11-30 10:32:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 10:32:28', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1070, 32640798, '2021-11-30 10:32:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2083989238, '2021-11-30 10:32:47', NULL, NULL, '6004 Арм ф10 А 500 ЕКС', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1071, 32640798, '2021-11-30 10:32:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 10:32:59', NULL, NULL, '/sale 6004 10000', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1072, 32640798, '2021-11-30 10:33:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 10:33:13', NULL, NULL, '/sale 6004 10000', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1073, 2083989238, '2021-11-30 10:33:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 10:33:16', NULL, NULL, 'Выберите метод оплаты:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"\\u041d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435\",\"callback_data\":\"sale_item_cash_1\",\"raw_data\":{\"text\":\"\\u041d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435\",\"callback_data\":\"sale_item_cash_1\"},\"bot_username\":\"\"},{\"text\":\"\\u041f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0435\\u043c\",\"callback_data\":\"sale_item_cash_0\",\"raw_data\":{\"text\":\"\\u041f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0435\\u043c\",\"callback_data\":\"sale_item_cash_0\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1074, 2083989238, '2021-11-30 10:33:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 10:33:19', NULL, NULL, 'Выберите статус оплаты', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"\\u041e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"sale_item_paid_1\",\"raw_data\":{\"text\":\"\\u041e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"sale_item_paid_1\"},\"bot_username\":\"\"},{\"text\":\"\\u041d\\u0435 \\u043e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"sale_item_paid_0\",\"raw_data\":{\"text\":\"\\u041d\\u0435 \\u043e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"sale_item_paid_0\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1075, 2083989238, '2021-11-30 10:33:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 10:33:23', NULL, NULL, 'Напишите комментарий', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1076, 32640798, '2021-11-30 10:33:22', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1075, NULL, '2021-11-30 10:33:23', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1077, 32640798, '2021-11-30 10:40:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 10:41:00', NULL, NULL, 'sdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1078, 32640798, '2021-11-30 10:41:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 10:41:27', NULL, NULL, 'jkl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1079, 32640798, '2021-11-30 10:43:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 10:43:42', NULL, NULL, '/whoisxyz', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1081, 32640798, '2021-11-30 10:43:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 10:43:59', NULL, NULL, '/sdfsdf', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1083, 32640798, '2021-11-30 10:45:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 10:45:11', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1084, 32640798, '2021-11-30 10:45:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 10:45:39', NULL, NULL, 'jhk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1085, 2083989238, '2021-11-30 10:47:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 10:47:14', NULL, NULL, 'Напишите комментарий', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1086, 32640798, '2021-11-30 10:47:10', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1085, NULL, '2021-11-30 10:47:14', NULL, NULL, 'hjk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1087, 2083989238, '2021-11-30 10:48:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 10:48:06', NULL, NULL, 'Напишите комментарий', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1088, 32640798, '2021-11-30 10:48:05', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1087, NULL, '2021-11-30 10:48:06', NULL, NULL, 'l;', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1089, 32640798, '2021-11-30 10:50:04', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1087, NULL, '2021-11-30 10:50:07', NULL, NULL, 'sdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1090, 32640798, '2021-11-30 10:53:52', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1087, NULL, '2021-11-30 10:53:53', NULL, NULL, 'sdf\\', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1091, 2083989238, '2021-11-30 10:56:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 10:56:52', NULL, NULL, 'Напишите комментарий', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1092, 32640798, '2021-11-30 10:56:50', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1091, NULL, '2021-11-30 10:56:52', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1093, 32640798, '2021-11-30 10:57:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-30 10:57:06', NULL, NULL, 'Напишите комментарий', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1094, 32640798, '2021-11-30 10:57:10', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1093, NULL, '2021-11-30 10:57:12', NULL, NULL, 'ываыва', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1095, 32640798, '2021-12-01 04:17:58', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1093, NULL, '2021-12-01 04:18:10', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1097, 2083989238, '2021-12-01 04:18:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-01 04:18:30', NULL, NULL, 'Напишите комментарий', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1098, 32640798, '2021-12-01 04:18:27', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1097, NULL, '2021-12-01 04:18:30', NULL, NULL, 'dfgdfg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1099, 2083989238, '2021-12-01 04:47:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-01 04:47:19', NULL, NULL, 'Напишите комментарий', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1100, 32640798, '2021-12-01 04:47:17', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1099, NULL, '2021-12-01 04:47:19', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1101, 32640798, '2021-12-01 04:52:20', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1097, NULL, '2021-12-01 04:52:22', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1102, 32640798, '2021-12-01 04:53:45', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1099, NULL, '2021-12-01 04:53:47', NULL, NULL, 'sdfdfsdsfsfd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1103, 32640798, '2021-12-01 04:57:06', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1097, NULL, '2021-12-01 05:00:21', NULL, NULL, 'dfdsdfssdfsfd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1104, 32640798, '2021-12-01 05:02:55', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1103, NULL, '2021-12-01 05:04:27', NULL, NULL, 'dsfdfsfdsfdsfsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1105, 32640798, '2021-12-01 05:04:37', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1099, NULL, '2021-12-01 05:04:38', NULL, NULL, 'fsdfdssdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1106, 32640798, '2021-12-01 05:06:28', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1097, NULL, '2021-12-01 05:06:30', NULL, NULL, 'sdfsfddfsdfsdfs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1107, 32640798, '2021-12-01 05:07:11', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1097, NULL, '2021-12-01 05:07:13', NULL, NULL, 'fsdsfdsdfdsf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1108, 32640798, '2021-12-01 05:07:51', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1099, NULL, '2021-12-01 05:07:53', NULL, NULL, 'dsfssfddsf\\', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1109, 32640798, '2021-12-01 05:08:15', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1099, NULL, '2021-12-01 05:08:16', NULL, NULL, 'sdfsfsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1110, 32640798, '2021-12-01 05:12:17', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1097, NULL, '2021-12-01 05:12:20', NULL, NULL, 'sfdssfd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1111, 32640798, '2021-12-01 05:14:47', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1099, NULL, '2021-12-01 05:14:50', NULL, NULL, 'Конь в пальто', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1112, 32640798, '2021-12-01 05:15:32', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1097, NULL, '2021-12-01 05:15:35', NULL, NULL, 'Horse in the Palto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1113, 32640798, '2021-12-01 05:19:37', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1097, NULL, '2021-12-01 05:19:39', NULL, NULL, 'sdfgsfdfsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1114, 32640798, '2021-12-01 05:26:34', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1099, NULL, '2021-12-01 05:26:36', NULL, NULL, 'sdfsdfsdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1115, 32640798, '2021-12-01 05:28:43', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1099, NULL, '2021-12-01 05:28:45', NULL, NULL, 'sfdfdsdsf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1116, 32640798, '2021-12-01 05:31:42', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1097, NULL, '2021-12-01 05:31:46', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1117, 32640798, '2021-12-01 05:33:13', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1097, NULL, '2021-12-01 05:33:15', NULL, NULL, 'sdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1118, 32640798, '2021-12-01 05:34:05', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1099, NULL, '2021-12-01 05:34:07', NULL, NULL, 'sdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1119, 32640798, '2021-12-01 05:35:05', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1097, NULL, '2021-12-01 05:35:07', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1120, 32640798, '2021-12-01 06:05:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-01 06:07:19', NULL, NULL, 'asadasd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1121, 32640798, '2021-12-01 06:06:16', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1099, NULL, '2021-12-01 06:07:19', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1122, 32640798, '2021-12-01 06:07:56', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1097, NULL, '2021-12-01 06:07:57', NULL, NULL, 'sddfssfd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1123, 32640798, '2021-12-01 06:08:53', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1097, NULL, '2021-12-01 06:08:55', NULL, NULL, 'asdsadasd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1124, 32640798, '2021-12-01 06:09:22', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1097, NULL, '2021-12-01 06:09:23', NULL, NULL, 'jghhjg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1125, 32640798, '2021-12-01 06:11:10', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1097, NULL, '2021-12-01 06:11:12', NULL, NULL, 'sdffdsfds\\', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1126, 32640798, '2021-12-01 06:11:59', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1099, NULL, '2021-12-01 06:12:00', NULL, NULL, 'gfdgfdgfd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1129, 32640798, '2021-12-01 06:25:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-01 06:25:19', NULL, NULL, '/getitems', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1131, 32640798, '2021-12-01 06:25:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-01 06:25:41', NULL, NULL, '/grantadmin @nn_mrpark', '[{\"offset\":0,\"length\":11,\"type\":\"bot_command\"},{\"offset\":12,\"length\":10,\"type\":\"mention\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1135, 32640798, '2021-12-01 06:26:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-01 06:26:47', NULL, NULL, '/grantadmin @nn_mrpark', '[{\"offset\":0,\"length\":11,\"type\":\"bot_command\"},{\"offset\":12,\"length\":10,\"type\":\"mention\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1137, 32640798, '2021-12-01 06:27:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-01 06:27:21', NULL, NULL, '/grantadmin @nn_mrpark', '[{\"offset\":0,\"length\":11,\"type\":\"bot_command\"},{\"offset\":12,\"length\":10,\"type\":\"mention\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1139, 32640798, '2021-12-01 06:27:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-01 06:27:40', NULL, NULL, '/getitems', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1141, 32640798, '2021-12-01 06:28:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-01 06:28:52', NULL, NULL, '/getitems', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `message` (`chat_id`, `sender_chat_id`, `id`, `user_id`, `date`, `forward_from`, `forward_from_chat`, `forward_from_message_id`, `forward_signature`, `forward_sender_name`, `forward_date`, `reply_to_chat`, `reply_to_message`, `via_bot`, `edit_date`, `media_group_id`, `author_signature`, `text`, `entities`, `caption_entities`, `audio`, `document`, `animation`, `game`, `photo`, `sticker`, `video`, `voice`, `video_note`, `caption`, `contact`, `location`, `venue`, `poll`, `dice`, `new_chat_members`, `left_chat_member`, `new_chat_title`, `new_chat_photo`, `delete_chat_photo`, `group_chat_created`, `supergroup_chat_created`, `channel_chat_created`, `message_auto_delete_timer_changed`, `migrate_to_chat_id`, `migrate_from_chat_id`, `pinned_message`, `invoice`, `successful_payment`, `connected_website`, `passport_data`, `proximity_alert_triggered`, `voice_chat_scheduled`, `voice_chat_started`, `voice_chat_ended`, `voice_chat_participants_invited`, `reply_markup`) VALUES
(32640798, NULL, 1145, 32640798, '2021-12-01 06:31:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-01 06:32:01', NULL, NULL, '/getitems', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1147, 2083989238, '2021-12-01 06:40:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-01 06:40:48', NULL, NULL, 'Напишите комментарий', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1148, 32640798, '2021-12-01 06:40:46', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1147, NULL, '2021-12-01 06:40:48', NULL, NULL, 'sdfsdfsdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1149, 32640798, '2021-12-01 06:41:13', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1147, NULL, '2021-12-01 06:41:15', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1150, 32640798, '2021-12-01 06:41:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-01 06:42:29', NULL, NULL, NULL, NULL, NULL, NULL, '{\"file_name\":\"user_sales_nn_mrpark\",\"mime_type\":\"application\\/octet-stream\",\"file_id\":\"BQACAgIAAxkBAAIEfmGnX399w-zOW7CwfSv7nNjP75OGAAIOEQAC7KxASWRVkvJeUxm1IgQ\",\"file_unique_id\":\"AgADDhEAAuysQEk\",\"file_size\":93}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1151, 32640798, '2021-12-01 06:42:35', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1147, NULL, '2021-12-01 06:42:37', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1152, 32640798, '2021-12-01 06:53:29', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1147, NULL, '2021-12-01 06:53:30', NULL, NULL, 'sdfsdfdswe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1153, 32640798, '2021-12-01 06:53:45', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1147, NULL, '2021-12-01 06:53:48', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1154, 32640798, '2021-12-01 07:03:07', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1147, NULL, '2021-12-01 07:03:13', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1155, 32640798, '2021-12-01 07:03:34', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1147, NULL, '2021-12-01 07:03:37', NULL, NULL, 'Умид лох', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1156, 32640798, '2021-12-01 07:05:21', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1147, NULL, '2021-12-01 07:05:24', NULL, NULL, 'umid churka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1157, 32640798, '2021-12-01 07:07:21', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1147, NULL, '2021-12-01 07:07:23', NULL, NULL, 'fdgfgdgfd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1158, 32640798, '2021-12-01 07:17:22', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1147, NULL, '2021-12-01 07:17:24', NULL, NULL, 'Umid is nigga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1159, 32640798, '2021-12-01 07:18:03', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1147, NULL, '2021-12-01 07:18:06', NULL, NULL, 'I\'m genius', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1160, 32640798, '2021-12-01 07:21:14', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1147, NULL, '2021-12-01 07:21:15', NULL, NULL, 'dfgfdg\\', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1161, 32640798, '2021-12-03 04:22:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:23:15', NULL, NULL, '/sale', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1163, 32640798, '2021-12-03 04:23:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2083989238, '2021-12-03 04:23:35', NULL, NULL, '6003 Арм ф 8 пруток', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1164, 32640798, '2021-12-03 04:23:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:23:35', NULL, NULL, '/sale 600 200', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1166, 32640798, '2021-12-03 04:25:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:25:33', NULL, NULL, '/sale 600 200', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1168, 32640798, '2021-12-03 04:25:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:25:44', NULL, NULL, '/sale 6003 200', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1169, 2083989238, '2021-12-03 04:25:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:25:49', NULL, NULL, 'Выберите метод оплаты:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"\\u041d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435\",\"callback_data\":\"sale_item_cash_1\",\"raw_data\":{\"text\":\"\\u041d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435\",\"callback_data\":\"sale_item_cash_1\"},\"bot_username\":\"\"},{\"text\":\"\\u041f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0435\\u043c\",\"callback_data\":\"sale_item_cash_0\",\"raw_data\":{\"text\":\"\\u041f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0435\\u043c\",\"callback_data\":\"sale_item_cash_0\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1170, 2083989238, '2021-12-03 04:25:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:25:52', NULL, NULL, 'Выберите статус оплаты', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"\\u041e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"sale_item_paid_1\",\"raw_data\":{\"text\":\"\\u041e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"sale_item_paid_1\"},\"bot_username\":\"\"},{\"text\":\"\\u041d\\u0435 \\u043e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"sale_item_paid_0\",\"raw_data\":{\"text\":\"\\u041d\\u0435 \\u043e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"sale_item_paid_0\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1171, 2083989238, '2021-12-03 04:25:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:25:59', NULL, NULL, 'Напишите комментарий', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1172, 32640798, '2021-12-03 04:25:57', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1171, NULL, '2021-12-03 04:25:59', NULL, NULL, 'Изи', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1173, 32640798, '2021-12-03 04:27:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:27:49', NULL, NULL, '/sale 6003 200', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1174, 2083989238, '2021-12-03 04:27:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:27:52', NULL, NULL, 'Выберите метод оплаты:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"\\u041d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435\",\"callback_data\":\"sale_item_cash_1\",\"raw_data\":{\"text\":\"\\u041d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435\",\"callback_data\":\"sale_item_cash_1\"},\"bot_username\":\"\"},{\"text\":\"\\u041f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0435\\u043c\",\"callback_data\":\"sale_item_cash_0\",\"raw_data\":{\"text\":\"\\u041f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0435\\u043c\",\"callback_data\":\"sale_item_cash_0\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1175, 2083989238, '2021-12-03 04:27:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:27:56', NULL, NULL, 'Выберите статус оплаты', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"\\u041e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"sale_item_paid_1\",\"raw_data\":{\"text\":\"\\u041e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"sale_item_paid_1\"},\"bot_username\":\"\"},{\"text\":\"\\u041d\\u0435 \\u043e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"sale_item_paid_0\",\"raw_data\":{\"text\":\"\\u041d\\u0435 \\u043e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"sale_item_paid_0\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1176, 2083989238, '2021-12-03 04:27:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:28:01', NULL, NULL, 'Напишите комментарий', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1177, 32640798, '2021-12-03 04:27:59', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1176, NULL, '2021-12-03 04:28:01', NULL, NULL, 'ez', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1178, 32640798, '2021-12-03 04:29:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:29:33', NULL, NULL, '/purchase', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1180, 32640798, '2021-12-03 04:29:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2083989238, '2021-12-03 04:30:08', NULL, NULL, '4003 лист х/к 0,7 (1,25х2,5) Арселор', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1181, 32640798, '2021-12-03 04:30:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:30:08', NULL, NULL, '/purchase 4003 10000 1000000', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1182, 32640798, '2021-12-03 04:40:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:40:32', NULL, NULL, '/purchase 4003 10000 1000000,123', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1183, 32640798, '2021-12-03 04:40:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:40:58', NULL, NULL, '/purchase 4003 10000 1000000,123', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1185, 32640798, '2021-12-03 04:41:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:41:31', NULL, NULL, '/purchase 4003 10000 1000000,123', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1186, 32640798, '2021-12-03 04:41:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:42:11', NULL, NULL, '/purchase 4003 10000 1000000,123', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1187, 32640798, '2021-12-03 04:42:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:42:11', NULL, NULL, '/purchase 4003 10000 1000000.123', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1189, 2083989238, '2021-12-03 04:42:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:42:21', NULL, NULL, 'Выберите метод оплаты:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"\\u041d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435\",\"callback_data\":\"sale_item_cash_1\",\"raw_data\":{\"text\":\"\\u041d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435\",\"callback_data\":\"sale_item_cash_1\"},\"bot_username\":\"\"},{\"text\":\"\\u041f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0435\\u043c\",\"callback_data\":\"sale_item_cash_0\",\"raw_data\":{\"text\":\"\\u041f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0435\\u043c\",\"callback_data\":\"sale_item_cash_0\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1191, 32640798, '2021-12-03 04:42:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:42:57', NULL, NULL, '/purchase 4003 10000 1000000.123', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1192, 2083989238, '2021-12-03 04:42:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:43:03', NULL, NULL, 'Выберите метод оплаты:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"\\u041d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435\",\"callback_data\":\"purchase_item_cash_1\",\"raw_data\":{\"text\":\"\\u041d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435\",\"callback_data\":\"purchase_item_cash_1\"},\"bot_username\":\"\"},{\"text\":\"\\u041f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0435\\u043c\",\"callback_data\":\"purchase_item_cash_0\",\"raw_data\":{\"text\":\"\\u041f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0435\\u043c\",\"callback_data\":\"purchase_item_cash_0\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1193, 32640798, '2021-12-03 04:44:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:44:34', NULL, NULL, '/purchase 4003 10000 1000000.123', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1195, 32640798, '2021-12-03 04:44:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:44:41', NULL, NULL, '/purchase 4003 10000 1000000.123', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1196, 32640798, '2021-12-03 04:46:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:46:44', NULL, NULL, '/purchase 4003 10000 1000000.123', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1197, 32640798, '2021-12-03 04:47:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:47:03', NULL, NULL, '/purchase 4003 10000 1000000,123', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1198, 32640798, '2021-12-03 04:47:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:47:36', NULL, NULL, '/purchase 4003 10000 1000000,123', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1200, 32640798, '2021-12-03 04:53:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:53:10', NULL, NULL, '/purchase 4003 10000 1000000,123', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1201, 32640798, '2021-12-03 04:53:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:53:20', NULL, NULL, '/purchase 4003 10000 1000000,123', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1202, 2083989238, '2021-12-03 04:53:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:53:26', NULL, NULL, 'Выберите метод оплаты:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"\\u041d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435\",\"callback_data\":\"purchase_item_cash_1\",\"raw_data\":{\"text\":\"\\u041d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435\",\"callback_data\":\"purchase_item_cash_1\"},\"bot_username\":\"\"},{\"text\":\"\\u041f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0435\\u043c\",\"callback_data\":\"purchase_item_cash_0\",\"raw_data\":{\"text\":\"\\u041f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0435\\u043c\",\"callback_data\":\"purchase_item_cash_0\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1203, 2083989238, '2021-12-03 04:53:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:53:29', NULL, NULL, 'Выберите статус оплаты', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"\\u041e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"purchase_item_paid_1\",\"raw_data\":{\"text\":\"\\u041e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"purchase_item_paid_1\"},\"bot_username\":\"\"},{\"text\":\"\\u041d\\u0435 \\u043e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"purchase_item_paid_0\",\"raw_data\":{\"text\":\"\\u041d\\u0435 \\u043e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"purchase_item_paid_0\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1204, 2083989238, '2021-12-03 04:53:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:53:34', NULL, NULL, 'Напишите комментарий для прихода', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1205, 32640798, '2021-12-03 04:53:33', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1204, NULL, '2021-12-03 04:53:34', NULL, NULL, 'ыавваыыва', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1206, 32640798, '2021-12-03 04:55:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:55:49', NULL, NULL, '/purchase 4003 10000 1000000,123', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1207, 2083989238, '2021-12-03 04:55:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:55:53', NULL, NULL, 'Выберите метод оплаты:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"\\u041d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435\",\"callback_data\":\"purchase_item_cash_1\",\"raw_data\":{\"text\":\"\\u041d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435\",\"callback_data\":\"purchase_item_cash_1\"},\"bot_username\":\"\"},{\"text\":\"\\u041f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0435\\u043c\",\"callback_data\":\"purchase_item_cash_0\",\"raw_data\":{\"text\":\"\\u041f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0435\\u043c\",\"callback_data\":\"purchase_item_cash_0\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1208, 2083989238, '2021-12-03 04:55:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:55:56', NULL, NULL, 'Выберите статус оплаты', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"\\u041e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"purchase_item_paid_1\",\"raw_data\":{\"text\":\"\\u041e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"purchase_item_paid_1\"},\"bot_username\":\"\"},{\"text\":\"\\u041d\\u0435 \\u043e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"purchase_item_paid_0\",\"raw_data\":{\"text\":\"\\u041d\\u0435 \\u043e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"purchase_item_paid_0\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1209, 2083989238, '2021-12-03 04:55:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:56:31', NULL, NULL, 'Напишите комментарий для прихода', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1210, 32640798, '2021-12-03 04:55:59', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1209, NULL, '2021-12-03 04:56:31', NULL, NULL, 'fsdsfddf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1211, 32640798, '2021-12-03 04:56:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:56:31', NULL, NULL, '/purchase 4003 10000 1000000,123', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1212, 2083989238, '2021-12-03 04:56:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:56:35', NULL, NULL, 'Выберите метод оплаты:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"\\u041d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435\",\"callback_data\":\"purchase_item_cash_1\",\"raw_data\":{\"text\":\"\\u041d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435\",\"callback_data\":\"purchase_item_cash_1\"},\"bot_username\":\"\"},{\"text\":\"\\u041f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0435\\u043c\",\"callback_data\":\"purchase_item_cash_0\",\"raw_data\":{\"text\":\"\\u041f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0435\\u043c\",\"callback_data\":\"purchase_item_cash_0\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1213, 2083989238, '2021-12-03 04:56:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:56:38', NULL, NULL, 'Выберите статус оплаты', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"\\u041e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"purchase_item_paid_1\",\"raw_data\":{\"text\":\"\\u041e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"purchase_item_paid_1\"},\"bot_username\":\"\"},{\"text\":\"\\u041d\\u0435 \\u043e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"purchase_item_paid_0\",\"raw_data\":{\"text\":\"\\u041d\\u0435 \\u043e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"purchase_item_paid_0\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1214, 2083989238, '2021-12-03 04:56:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:56:42', NULL, NULL, 'Напишите комментарий для прихода', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1215, 32640798, '2021-12-03 04:56:40', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1214, NULL, '2021-12-03 04:56:42', NULL, NULL, 'fhg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1216, 32640798, '2021-12-03 04:57:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:57:29', NULL, NULL, '/sale 1001 10000', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1217, 2083989238, '2021-12-03 04:57:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:57:32', NULL, NULL, 'Выберите метод оплаты:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"\\u041d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435\",\"callback_data\":\"sale_item_cash_1\",\"raw_data\":{\"text\":\"\\u041d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435\",\"callback_data\":\"sale_item_cash_1\"},\"bot_username\":\"\"},{\"text\":\"\\u041f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0435\\u043c\",\"callback_data\":\"sale_item_cash_0\",\"raw_data\":{\"text\":\"\\u041f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0435\\u043c\",\"callback_data\":\"sale_item_cash_0\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1218, 2083989238, '2021-12-03 04:57:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 04:57:35', NULL, NULL, 'Выберите статус оплаты', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"\\u041e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"sale_item_paid_1\",\"raw_data\":{\"text\":\"\\u041e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"sale_item_paid_1\"},\"bot_username\":\"\"},{\"text\":\"\\u041d\\u0435 \\u043e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"sale_item_paid_0\",\"raw_data\":{\"text\":\"\\u041d\\u0435 \\u043e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"sale_item_paid_0\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1220, 32640798, '2021-12-03 05:00:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 05:01:12', NULL, NULL, '/purchase 4003 10000 1000000,123', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1221, 2083989238, '2021-12-03 05:01:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 05:01:15', NULL, NULL, 'Выберите метод оплаты:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"\\u041d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435\",\"callback_data\":\"purchase_item_cash_1\",\"raw_data\":{\"text\":\"\\u041d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435\",\"callback_data\":\"purchase_item_cash_1\"},\"bot_username\":\"\"},{\"text\":\"\\u041f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0435\\u043c\",\"callback_data\":\"purchase_item_cash_0\",\"raw_data\":{\"text\":\"\\u041f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0435\\u043c\",\"callback_data\":\"purchase_item_cash_0\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1222, 2083989238, '2021-12-03 05:01:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 05:02:00', NULL, NULL, 'Выберите статус оплаты', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"\\u041e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"purchase_item_paid_1\",\"raw_data\":{\"text\":\"\\u041e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"purchase_item_paid_1\"},\"bot_username\":\"\"},{\"text\":\"\\u041d\\u0435 \\u043e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"purchase_item_paid_0\",\"raw_data\":{\"text\":\"\\u041d\\u0435 \\u043e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"purchase_item_paid_0\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1223, 2083989238, '2021-12-03 05:02:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 05:02:48', NULL, NULL, 'Напишите комментарий для прихода', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1224, 32640798, '2021-12-03 05:02:03', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1223, NULL, '2021-12-03 05:02:48', NULL, NULL, 'dfgfdg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1225, 32640798, '2021-12-03 05:02:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 05:02:48', NULL, NULL, '/purchase 4003 10000 1000000,123', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1226, 2083989238, '2021-12-03 05:02:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 05:02:52', NULL, NULL, 'Выберите метод оплаты:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"\\u041d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435\",\"callback_data\":\"purchase_item_cash_1\",\"raw_data\":{\"text\":\"\\u041d\\u0430\\u043b\\u0438\\u0447\\u043d\\u044b\\u0435\",\"callback_data\":\"purchase_item_cash_1\"},\"bot_username\":\"\"},{\"text\":\"\\u041f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0435\\u043c\",\"callback_data\":\"purchase_item_cash_0\",\"raw_data\":{\"text\":\"\\u041f\\u0435\\u0440\\u0435\\u0447\\u0438\\u0441\\u043b\\u0435\\u043d\\u0438\\u0435\\u043c\",\"callback_data\":\"purchase_item_cash_0\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1227, 2083989238, '2021-12-03 05:02:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 05:02:54', NULL, NULL, 'Выберите статус оплаты', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"\\u041e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"purchase_item_paid_1\",\"raw_data\":{\"text\":\"\\u041e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"purchase_item_paid_1\"},\"bot_username\":\"\"},{\"text\":\"\\u041d\\u0435 \\u043e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"purchase_item_paid_0\",\"raw_data\":{\"text\":\"\\u041d\\u0435 \\u043e\\u043f\\u043b\\u0430\\u0447\\u0435\\u043d\\u043e\",\"callback_data\":\"purchase_item_paid_0\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1228, 2083989238, '2021-12-03 05:02:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 05:19:26', NULL, NULL, 'Напишите комментарий для прихода', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1229, 32640798, '2021-12-03 05:02:57', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1228, NULL, '2021-12-03 05:19:26', NULL, NULL, 'dgffgdfdg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1230, 32640798, '2021-12-03 05:20:24', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1228, NULL, '2021-12-03 05:20:27', NULL, NULL, 'sdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1231, 32640798, '2021-12-03 05:30:46', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1228, NULL, '2021-12-03 05:30:49', NULL, NULL, 'lkjlkj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1232, 32640798, '2021-12-03 05:31:29', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1228, NULL, '2021-12-03 05:31:32', NULL, NULL, 'sdfdsf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1233, 32640798, '2021-12-03 06:17:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 06:17:33', NULL, NULL, '/book', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1234, 32640798, '2021-12-03 06:56:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 06:56:04', NULL, NULL, '/book', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1235, 32640798, '2021-12-03 06:56:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 06:56:29', NULL, NULL, '/book', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1237, 32640798, '2021-12-03 06:56:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 06:56:41', NULL, NULL, '@sharif_steel_bot лист', '[{\"offset\":0,\"length\":17,\"type\":\"mention\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1238, 32640798, '2021-12-03 06:56:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2083989238, '2021-12-03 06:56:52', NULL, NULL, '4005 лист х/к 0,85(1,25х2,5) Арселор', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1239, 32640798, '2021-12-03 06:56:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 06:56:52', NULL, NULL, '/book 4005 1000', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1240, 32640798, '2021-12-03 06:57:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 06:58:01', NULL, NULL, '/book 1001 1000', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1241, 32640798, '2021-12-03 06:58:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 06:58:47', NULL, NULL, '/book 1001 1000', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1242, 32640798, '2021-12-03 06:59:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 06:59:05', NULL, NULL, '/book 1001 1000', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1243, 2083989238, '2021-12-03 06:59:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 06:59:14', NULL, NULL, 'Напишите комментарий для бронирования', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1244, 32640798, '2021-12-03 06:59:12', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1243, NULL, '2021-12-03 06:59:14', NULL, NULL, 'reserved', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1245, 32640798, '2021-12-03 06:59:39', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1243, NULL, '2021-12-03 06:59:41', NULL, NULL, 'sdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `message` (`chat_id`, `sender_chat_id`, `id`, `user_id`, `date`, `forward_from`, `forward_from_chat`, `forward_from_message_id`, `forward_signature`, `forward_sender_name`, `forward_date`, `reply_to_chat`, `reply_to_message`, `via_bot`, `edit_date`, `media_group_id`, `author_signature`, `text`, `entities`, `caption_entities`, `audio`, `document`, `animation`, `game`, `photo`, `sticker`, `video`, `voice`, `video_note`, `caption`, `contact`, `location`, `venue`, `poll`, `dice`, `new_chat_members`, `left_chat_member`, `new_chat_title`, `new_chat_photo`, `delete_chat_photo`, `group_chat_created`, `supergroup_chat_created`, `channel_chat_created`, `message_auto_delete_timer_changed`, `migrate_to_chat_id`, `migrate_from_chat_id`, `pinned_message`, `invoice`, `successful_payment`, `connected_website`, `passport_data`, `proximity_alert_triggered`, `voice_chat_scheduled`, `voice_chat_started`, `voice_chat_ended`, `voice_chat_participants_invited`, `reply_markup`) VALUES
(32640798, NULL, 1246, 32640798, '2021-12-03 07:02:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 07:02:28', NULL, NULL, '/book 1001 1000', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1247, 2083989238, '2021-12-03 07:02:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 07:02:33', NULL, NULL, 'Напишите комментарий для бронирования', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1248, 32640798, '2021-12-03 07:02:31', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1247, NULL, '2021-12-03 07:02:33', NULL, NULL, 'sdfsdfsdfsdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1249, 32640798, '2021-12-03 07:06:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 07:06:27', NULL, NULL, '/book 1001 4000', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1250, 2083989238, '2021-12-03 07:06:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-03 07:06:33', NULL, NULL, 'Напишите комментарий для бронирования', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1251, 32640798, '2021-12-03 07:06:30', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1250, NULL, '2021-12-03 07:06:33', NULL, NULL, 'sdfsfdsfdsfd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1252, 32640798, '2021-12-09 01:52:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 01:52:37', NULL, NULL, '/book 1009 4000', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1253, 2083989238, '2021-12-09 01:52:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 01:52:52', NULL, NULL, 'Напишите комментарий для бронирования', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1254, 32640798, '2021-12-09 01:52:42', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1253, NULL, '2021-12-09 01:52:52', NULL, NULL, 'dfssfddfs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1255, 32640798, '2021-12-09 01:53:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 01:53:10', NULL, NULL, '/book 1009 4000', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1256, 2083989238, '2021-12-09 01:53:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 01:53:16', NULL, NULL, 'Напишите комментарий для бронирования', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1257, 32640798, '2021-12-09 01:53:13', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1256, NULL, '2021-12-09 01:53:16', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1258, 32640798, '2021-12-09 02:49:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 02:49:27', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1260, 32640798, '2021-12-09 02:49:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 02:49:58', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1262, 32640798, '2021-12-09 02:51:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 02:51:30', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1264, 32640798, '2021-12-09 02:54:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 02:55:00', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1266, 32640798, '2021-12-09 02:55:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 02:55:37', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1268, 32640798, '2021-12-09 02:56:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 02:56:51', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1270, 32640798, '2021-12-09 02:58:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 02:58:33', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1272, 32640798, '2021-12-09 02:58:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 02:58:43', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1274, 32640798, '2021-12-09 03:04:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 03:04:06', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1276, 32640798, '2021-12-09 03:05:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 03:05:58', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1278, 32640798, '2021-12-09 03:14:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 03:14:48', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1279, 32640798, '2021-12-09 03:15:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 03:15:04', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1280, 32640798, '2021-12-09 03:15:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 03:15:40', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1281, 32640798, '2021-12-09 03:17:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 03:17:59', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1282, 32640798, '2021-12-09 03:21:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 03:21:47', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1283, 32640798, '2021-12-09 03:22:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 03:22:11', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1284, 32640798, '2021-12-09 03:30:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 03:30:26', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1285, 32640798, '2021-12-09 03:32:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 03:32:34', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1287, 32640798, '2021-12-09 03:57:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 03:57:57', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1289, 32640798, '2021-12-09 03:58:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 03:58:16', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1291, 32640798, '2021-12-09 04:03:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:03:42', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1292, 2083989238, '2021-12-09 04:03:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:03:51', NULL, NULL, 'Снять с бронирования товар:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1000 03\\/12\\/21_\",\"callback_data\":\"1001 data\\/2021\\/December\\/03\\/user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"1000 03\\/12\\/21_\",\"callback_data\":\"1001 data\\/2021\\/December\\/03\\/user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"1000 03\\/12\\/21_\",\"callback_data\":\"1001 data\\/2021\\/December\\/03\\/user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"1000 03\\/12\\/21_\",\"callback_data\":\"1001 data\\/2021\\/December\\/03\\/user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"4000 03\\/12\\/21_\",\"callback_data\":\"1001 data\\/2021\\/December\\/03\\/user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"4000 03\\/12\\/21_\",\"callback_data\":\"1001 data\\/2021\\/December\\/03\\/user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455_dfssfddfs\",\"callback_data\":\"1639032762 data\\/2021\\/December\\/09\\/user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455_dfssfddfs\",\"callback_data\":\"1639032762 data\\/2021\\/December\\/09\\/user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455_sdfsdf\",\"callback_data\":\"1639032793 data\\/2021\\/December\\/09\\/user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455_sdfsdf\",\"callback_data\":\"1639032793 data\\/2021\\/December\\/09\\/user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1293, 32640798, '2021-12-09 04:04:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:04:31', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1294, 2083989238, '2021-12-09 04:04:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:06:57', NULL, NULL, 'Снять с бронирования товар:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1000 03\\/12\\/21 \",\"callback_data\":\"1001 data\\/2021\\/December\\/03\\/user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"1000 03\\/12\\/21 \",\"callback_data\":\"1001 data\\/2021\\/December\\/03\\/user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"1000 03\\/12\\/21 \",\"callback_data\":\"1001 data\\/2021\\/December\\/03\\/user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"1000 03\\/12\\/21 \",\"callback_data\":\"1001 data\\/2021\\/December\\/03\\/user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"4000 03\\/12\\/21 \",\"callback_data\":\"1001 data\\/2021\\/December\\/03\\/user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"4000 03\\/12\\/21 \",\"callback_data\":\"1001 data\\/2021\\/December\\/03\\/user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455 dfssfddfs\",\"callback_data\":\"1639032762 data\\/2021\\/December\\/09\\/user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455 dfssfddfs\",\"callback_data\":\"1639032762 data\\/2021\\/December\\/09\\/user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455 sdfsdf\",\"callback_data\":\"1639032793 data\\/2021\\/December\\/09\\/user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455 sdfsdf\",\"callback_data\":\"1639032793 data\\/2021\\/December\\/09\\/user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1295, 32640798, '2021-12-09 04:07:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:07:06', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1296, 32640798, '2021-12-09 04:07:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:07:33', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1297, 32640798, '2021-12-09 04:08:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:08:14', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1299, 32640798, '2021-12-09 04:08:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:08:34', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1300, 32640798, '2021-12-09 04:16:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:16:58', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1301, 2083989238, '2021-12-09 04:16:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:17:05', NULL, NULL, 'Снять с бронирования товар:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1000 03\\/12\\/21 \",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"1000 03\\/12\\/21 \",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"1000 03\\/12\\/21 \",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"1000 03\\/12\\/21 \",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"4000 03\\/12\\/21 \",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"4000 03\\/12\\/21 \",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455 dfssfddfs\",\"callback_data\":\"unbook 1639032762 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455 dfssfddfs\",\"callback_data\":\"unbook 1639032762 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455 sdfsdf\",\"callback_data\":\"unbook 1639032793 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455 sdfsdf\",\"callback_data\":\"unbook 1639032793 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1302, 32640798, '2021-12-09 04:19:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:19:58', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1303, 32640798, '2021-12-09 04:19:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:19:58', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1306, 32640798, '2021-12-09 04:20:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:20:49', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1308, 32640798, '2021-12-09 04:21:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:21:35', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1309, 2083989238, '2021-12-09 04:21:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:23:03', NULL, NULL, 'Снять с бронирования товар:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1000 03\\/12\\/21  sdf\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"1000 03\\/12\\/21  sdf\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"1000 03\\/12\\/21  sdfsdfsdfsdf\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"1000 03\\/12\\/21  sdfsdfsdfsdf\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"4000 03\\/12\\/21  sdfsfdsfdsfd\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"4000 03\\/12\\/21  sdfsfdsfdsfd\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455 dfssfddfs 4000\\u043a\\u0433.\",\"callback_data\":\"unbook 1639032762 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455 dfssfddfs 4000\\u043a\\u0433.\",\"callback_data\":\"unbook 1639032762 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455 sdfsdf 4000\\u043a\\u0433.\",\"callback_data\":\"unbook 1639032793 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455 sdfsdf 4000\\u043a\\u0433.\",\"callback_data\":\"unbook 1639032793 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1310, 32640798, '2021-12-09 04:42:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:42:40', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1311, 2083989238, '2021-12-09 04:42:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:42:50', NULL, NULL, 'Снять с бронирования товар:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1000 03\\/12\\/21  sdf\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"1000 03\\/12\\/21  sdf\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"1000 03\\/12\\/21  sdfsdfsdfsdf\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"1000 03\\/12\\/21  sdfsdfsdfsdf\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"4000 03\\/12\\/21  sdfsfdsfdsfd\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"4000 03\\/12\\/21  sdfsfdsfdsfd\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455 dfssfddfs 4000\\u043a\\u0433.\",\"callback_data\":\"unbook 1639032762 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455 dfssfddfs 4000\\u043a\\u0433.\",\"callback_data\":\"unbook 1639032762 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455 sdfsdf 4000\\u043a\\u0433.\",\"callback_data\":\"unbook 1639032793 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455 sdfsdf 4000\\u043a\\u0433.\",\"callback_data\":\"unbook 1639032793 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1312, 32640798, '2021-12-09 04:43:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:43:14', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1313, 32640798, '2021-12-09 04:44:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:44:47', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1315, 32640798, '2021-12-09 04:47:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:47:46', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1316, 2083989238, '2021-12-09 04:47:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:47:53', NULL, NULL, 'Снять с бронирования товар:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1000 03\\/12\\/21  sdf\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"1000 03\\/12\\/21  sdf\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"1000 03\\/12\\/21  sdfsdfsdfsdf\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"1000 03\\/12\\/21  sdfsdfsdfsdf\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"4000 03\\/12\\/21  sdfsfdsfdsfd\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"4000 03\\/12\\/21  sdfsfdsfdsfd\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"09\\/12\\/21 180\\u043f\\u0457\\u0405180\\u043f\\u0457\\u04055 dfssfddfs 4000\\u043a\\u0433.\",\"callback_data\":\"unbook 1639032762 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"09\\/12\\/21 180\\u043f\\u0457\\u0405180\\u043f\\u0457\\u04055 dfssfddfs 4000\\u043a\\u0433.\",\"callback_data\":\"unbook 1639032762 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1318, 32640798, '2021-12-09 04:48:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:48:32', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1320, 32640798, '2021-12-09 04:50:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:50:08', NULL, NULL, '/book 1009 5000', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1321, 2083989238, '2021-12-09 04:50:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:50:15', NULL, NULL, 'Напишите комментарий для бронирования', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1322, 32640798, '2021-12-09 04:50:13', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1321, NULL, '2021-12-09 04:50:15', NULL, NULL, 'azaza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1323, 32640798, '2021-12-09 04:50:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:50:24', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1324, 2083989238, '2021-12-09 04:50:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:50:29', NULL, NULL, 'Снять с бронирования товар:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1000 03\\/12\\/21  sdf\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"1000 03\\/12\\/21  sdf\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"1000 03\\/12\\/21  sdfsdfsdfsdf\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"1000 03\\/12\\/21  sdfsdfsdfsdf\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"4000 03\\/12\\/21  sdfsfdsfdsfd\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"4000 03\\/12\\/21  sdfsfdsfdsfd\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455 azaza 5000\\u043a\\u0433.\",\"callback_data\":\"unbook 1639043413 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455 azaza 5000\\u043a\\u0433.\",\"callback_data\":\"unbook 1639043413 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1326, 32640798, '2021-12-09 04:50:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:50:52', NULL, NULL, '/book 1009 5000', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1327, 2083989238, '2021-12-09 04:50:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:51:00', NULL, NULL, 'Напишите комментарий для бронирования', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1328, 32640798, '2021-12-09 04:50:55', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1327, NULL, '2021-12-09 04:51:00', NULL, NULL, 'fghghffgh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1329, 32640798, '2021-12-09 04:51:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:51:03', NULL, NULL, '/book 1009 5000', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1330, 2083989238, '2021-12-09 04:51:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:51:08', NULL, NULL, 'Напишите комментарий для бронирования', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1331, 32640798, '2021-12-09 04:51:07', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1330, NULL, '2021-12-09 04:51:08', NULL, NULL, 'sfdsdsdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1332, 32640798, '2021-12-09 04:51:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:51:17', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1333, 2083989238, '2021-12-09 04:51:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:51:21', NULL, NULL, 'Снять с бронирования товар:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1000 03\\/12\\/21  sdf\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"1000 03\\/12\\/21  sdf\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"1000 03\\/12\\/21  sdfsdfsdfsdf\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"1000 03\\/12\\/21  sdfsdfsdfsdf\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"4000 03\\/12\\/21  sdfsfdsfdsfd\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"4000 03\\/12\\/21  sdfsfdsfdsfd\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455 fghghffgh 5000\\u043a\\u0433.\",\"callback_data\":\"unbook 1639043455 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455 fghghffgh 5000\\u043a\\u0433.\",\"callback_data\":\"unbook 1639043455 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455 sfdsdsdf 5000\\u043a\\u0433.\",\"callback_data\":\"unbook 1639043467 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455 sfdsdsdf 5000\\u043a\\u0433.\",\"callback_data\":\"unbook 1639043467 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1335, 32640798, '2021-12-09 04:51:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:51:31', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1337, 32640798, '2021-12-09 04:51:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:51:55', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1338, 2083989238, '2021-12-09 04:51:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:52:27', NULL, NULL, 'Снять с бронирования товар:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1000 03\\/12\\/21  sdf\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"1000 03\\/12\\/21  sdf\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"1000 03\\/12\\/21  sdfsdfsdfsdf\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"1000 03\\/12\\/21  sdfsdfsdfsdf\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"4000 03\\/12\\/21  sdfsfdsfdsfd\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"4000 03\\/12\\/21  sdfsfdsfdsfd\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455 sfdsdsdf 5000\\u043a\\u0433.\",\"callback_data\":\"unbook 1639043467 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455 sfdsdsdf 5000\\u043a\\u0433.\",\"callback_data\":\"unbook 1639043467 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1340, 32640798, '2021-12-09 04:53:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:53:10', NULL, NULL, '/book 1009 5000', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1341, 2083989238, '2021-12-09 04:53:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:53:17', NULL, NULL, 'Напишите комментарий для бронирования', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1342, 32640798, '2021-12-09 04:53:15', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1341, NULL, '2021-12-09 04:53:17', NULL, NULL, 'asdasddas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1343, 32640798, '2021-12-09 04:53:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:53:28', NULL, NULL, '/book 1009 50009', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1344, 2083989238, '2021-12-09 04:53:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:53:34', NULL, NULL, 'Напишите комментарий для бронирования', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1345, 32640798, '2021-12-09 04:53:32', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1344, NULL, '2021-12-09 04:53:34', NULL, NULL, 'azaza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1346, 32640798, '2021-12-09 04:53:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:53:42', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1347, 2083989238, '2021-12-09 04:53:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:54:11', NULL, NULL, 'Снять с бронирования товар:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1000 03\\/12\\/21  sdf\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"1000 03\\/12\\/21  sdf\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"1000 03\\/12\\/21  sdfsdfsdfsdf\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"1000 03\\/12\\/21  sdfsdfsdfsdf\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"4000 03\\/12\\/21  sdfsfdsfdsfd\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"4000 03\\/12\\/21  sdfsfdsfdsfd\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455 asdasddas 5000\\u043a\\u0433.\",\"callback_data\":\"unbook 1639043595 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455 asdasddas 5000\\u043a\\u0433.\",\"callback_data\":\"unbook 1639043595 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455 azaza 50009\\u043a\\u0433.\",\"callback_data\":\"unbook 1639043612 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455 azaza 50009\\u043a\\u0433.\",\"callback_data\":\"unbook 1639043612 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}]]}'),
(32640798, NULL, 1349, 32640798, '2021-12-09 04:54:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:54:52', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1351, 32640798, '2021-12-09 04:55:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:55:15', NULL, NULL, '/book 1009 4000', '[{\"offset\":0,\"length\":5,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `message` (`chat_id`, `sender_chat_id`, `id`, `user_id`, `date`, `forward_from`, `forward_from_chat`, `forward_from_message_id`, `forward_signature`, `forward_sender_name`, `forward_date`, `reply_to_chat`, `reply_to_message`, `via_bot`, `edit_date`, `media_group_id`, `author_signature`, `text`, `entities`, `caption_entities`, `audio`, `document`, `animation`, `game`, `photo`, `sticker`, `video`, `voice`, `video_note`, `caption`, `contact`, `location`, `venue`, `poll`, `dice`, `new_chat_members`, `left_chat_member`, `new_chat_title`, `new_chat_photo`, `delete_chat_photo`, `group_chat_created`, `supergroup_chat_created`, `channel_chat_created`, `message_auto_delete_timer_changed`, `migrate_to_chat_id`, `migrate_from_chat_id`, `pinned_message`, `invoice`, `successful_payment`, `connected_website`, `passport_data`, `proximity_alert_triggered`, `voice_chat_scheduled`, `voice_chat_started`, `voice_chat_ended`, `voice_chat_participants_invited`, `reply_markup`) VALUES
(32640798, NULL, 1352, 2083989238, '2021-12-09 04:55:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:55:30', NULL, NULL, 'Напишите комментарий для бронирования', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1353, 32640798, '2021-12-09 04:55:29', NULL, NULL, NULL, NULL, NULL, NULL, 32640798, 1352, NULL, '2021-12-09 04:55:30', NULL, NULL, 'sfdsfddfsfsd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1354, 32640798, '2021-12-09 04:55:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:55:54', NULL, NULL, '/unbook', '[{\"offset\":0,\"length\":7,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 1355, 2083989238, '2021-12-09 04:55:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-09 04:56:06', NULL, NULL, 'Снять с бронирования товар:', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"inline_keyboard\":[[{\"text\":\"1000 03\\/12\\/21  sdf\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"1000 03\\/12\\/21  sdf\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"1000 03\\/12\\/21  sdfsdfsdfsdf\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"1000 03\\/12\\/21  sdfsdfsdfsdf\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"4000 03\\/12\\/21  sdfsfdsfdsfd\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"4000 03\\/12\\/21  sdfsfdsfdsfd\\u043a\\u0433.\",\"callback_data\":\"unbook 1001 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455 asdasddas 5000\\u043a\\u0433.\",\"callback_data\":\"unbook 1639043595 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455 asdasddas 5000\\u043a\\u0433.\",\"callback_data\":\"unbook 1639043595 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}],[{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455 sfdsfddfsfsd 4000\\u043a\\u0433.\",\"callback_data\":\"unbook 1639043729 user_reservations_nn_mrpark.csv\",\"raw_data\":{\"text\":\"09\\/12\\/21 180\\u0445180\\u04455 sfdsfddfsfsd 4000\\u043a\\u0433.\",\"callback_data\":\"unbook 1639043729 user_reservations_nn_mrpark.csv\"},\"bot_username\":\"\"}]]}'),
(1855436069, NULL, 567, 1855436069, '2021-11-24 04:05:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 04:05:41', NULL, NULL, '/start', '[{\"offset\":0,\"length\":6,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1855436069, NULL, 571, 1855436069, '2021-11-24 04:05:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 04:09:27', NULL, NULL, 'Assalomu Alaekum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1855436069, NULL, 572, 1855436069, '2021-11-24 04:06:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 04:09:27', NULL, NULL, 'sawdoga mofakiyt👍', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1855436069, NULL, 573, 1855436069, '2021-11-24 04:07:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 04:09:28', NULL, NULL, NULL, NULL, NULL, NULL, '{\"file_name\":\"\\u041a\\u0410\\u0422\\u0410\\u041b\\u041e\\u0413.pdf\",\"mime_type\":\"application\\/pdf\",\"thumb\":{\"file_id\":\"AAMCBQADGQEAAgI9YZ4AAbWQgBxSTBa8poQcP-p_SiUSAAKnBQACGLHhVKVeJi2i1sCQAQAHbQADIgQ\",\"file_unique_id\":\"AQADpwUAAhix4VRy\",\"file_size\":17459,\"width\":320,\"height\":226},\"file_id\":\"BQACAgUAAxkBAAICPWGeAAG1kIAcUkwWvKaEHD_qf0olEgACpwUAAhix4VSlXiYtotbAkCIE\",\"file_unique_id\":\"AgADpwUAAhix4VQ\",\"file_size\":3622934}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1855436069, NULL, 574, 1855436069, '2021-11-24 04:08:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-24 04:09:28', NULL, NULL, 'бизда махсулотлар анча арзон,  кизиктирган саволларга жавоб беришга таееорман', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `poll`
--

CREATE TABLE `poll` (
  `id` bigint UNSIGNED NOT NULL COMMENT 'Unique poll identifier',
  `question` text COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'Poll question',
  `options` text COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'List of poll options',
  `total_voter_count` int UNSIGNED DEFAULT NULL COMMENT 'Total number of users that voted in the poll',
  `is_closed` tinyint(1) DEFAULT '0' COMMENT 'True, if the poll is closed',
  `is_anonymous` tinyint(1) DEFAULT '1' COMMENT 'True, if the poll is anonymous',
  `type` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'Poll type, currently can be “regular” or “quiz”',
  `allows_multiple_answers` tinyint(1) DEFAULT '0' COMMENT 'True, if the poll allows multiple answers',
  `correct_option_id` int UNSIGNED DEFAULT NULL COMMENT '0-based identifier of the correct answer option. Available only for polls in the quiz mode, which are closed, or was sent (not forwarded) by the bot or to the private chat with the bot.',
  `explanation` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'Text that is shown when a user chooses an incorrect answer or taps on the lamp icon in a quiz-style poll, 0-200 characters',
  `explanation_entities` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Special entities like usernames, URLs, bot commands, etc. that appear in the explanation',
  `open_period` int UNSIGNED DEFAULT NULL COMMENT 'Amount of time in seconds the poll will be active after creation',
  `close_date` timestamp NULL DEFAULT NULL COMMENT 'Point in time (Unix timestamp) when the poll will be automatically closed',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Entry date creation'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `poll_answer`
--

CREATE TABLE `poll_answer` (
  `poll_id` bigint UNSIGNED NOT NULL COMMENT 'Unique poll identifier',
  `user_id` bigint NOT NULL COMMENT 'The user, who changed the answer to the poll',
  `option_ids` text COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '0-based identifiers of answer options, chosen by the user. May be empty if the user retracted their vote.',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Entry date creation'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `pre_checkout_query`
--

CREATE TABLE `pre_checkout_query` (
  `id` bigint UNSIGNED NOT NULL COMMENT 'Unique query identifier',
  `user_id` bigint DEFAULT NULL COMMENT 'User who sent the query',
  `currency` char(3) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'Three-letter ISO 4217 currency code',
  `total_amount` bigint DEFAULT NULL COMMENT 'Total price in the smallest units of the currency',
  `invoice_payload` char(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '' COMMENT 'Bot specified invoice payload',
  `shipping_option_id` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'Identifier of the shipping option chosen by the user',
  `order_info` text COLLATE utf8mb4_unicode_520_ci COMMENT 'Order info provided by the user',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Entry date creation'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `request_limiter`
--

CREATE TABLE `request_limiter` (
  `id` bigint UNSIGNED NOT NULL COMMENT 'Unique identifier for this entry',
  `chat_id` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'Unique chat identifier',
  `inline_message_id` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'Identifier of the sent inline message',
  `method` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'Request method',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Entry date creation'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `sharif_granted_rights`
--

CREATE TABLE `sharif_granted_rights` (
  `id` int NOT NULL,
  `rights` int NOT NULL,
  `user_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `sharif_items`
--

CREATE TABLE `sharif_items` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` int NOT NULL,
  `price_per_unit` double NOT NULL,
  `booked` double NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `sharif_items`
--

INSERT INTO `sharif_items` (`id`, `name`, `amount`, `price_per_unit`, `booked`, `price`) VALUES
(1001, 'труба БШ 219х8', 1113, 8.984725965858, 2000, 10000),
(1002, 'труба БШ 89х6,0', 6119, 1.6342539630659, 0, 10000),
(1003, 'труба БШ 76х5,0', 2437, 4.1034058268363, 0, 10000),
(1004, 'Труба ЭЛВС 325х7', 775, 12.903225806452, 0, 10000),
(1005, 'Труба ЭЛВС 273х6', 1517, 6.59195781147, 0, 10000),
(1006, 'Труба круглая 219х5', 8853, 1.1295606009262, 0, 10000),
(1007, 'Труба квадр.160х160х5', 5145, 1.9436345966958, 0, 10000),
(1008, 'Труба квадр.160х160х6', 9503, 1.0522992739135, 0, 10000),
(1009, '180х180х5', 1361, 7.3475385745775, 8000, 10000),
(1010, '180х180х6', 7449, 1.3424620754464, 0, 10000),
(1011, 'труба БШ 57х3,5', 8118, 1.2318305001232, 0, 10000),
(1012, 'труба БШ 159х6,0', 2149, 4.6533271288972, 0, 10000),
(1013, 'Труба 530х8', 1500, 6.6666666666667, 0, 10000),
(1014, 'Труба 219х6', 8603, 1.1623852144601, 0, 10000),
(1015, 'Труба 325х8', 6699, 1.4927601134498, 0, 10000),
(1016, 'Труба э/с 133х4,5', 8784, 1.1384335154827, 0, 10000),
(1017, 'Труба 80х60х3,0', 3793, 2.6364355391511, 0, 10000),
(1018, 'Труба проф. 80х80х3', 6316, 1.5832805573148, 0, 10000),
(1019, 'Труба проф. 80х80х4', 4951, 2.0197939810139, 0, 10000),
(1020, 'Труба б/ш 60х8', 9083, 1.100957833315, 0, 10000),
(1021, 'Труба б/ш 57х4', 6927, 1.4436263894904, 0, 10000),
(1022, 'Труба 18х3,0', 3941, 2.5374270489723, 0, 10000),
(1023, 'Труба б/ш 51х4', 6603, 1.514463122823, 0, 10000),
(1024, 'труба 15х2,5х5,8 Арселор', 1650, 6.0606060606061, 0, 10000),
(1025, 'труба 50х3,0х10 Арселор', 7543, 1.3257324671881, 0, 10000),
(1026, 'труба 65х3,2х10 Арселор', 9003, 1.1107408641564, 0, 10000),
(1027, 'труба 80х3,5х10 Арселор', 8569, 1.1669973159062, 0, 10000),
(1028, 'труба 20х2,5х5,8 Арселор', 262, 38.167938931298, 0, 10000),
(1029, 'труба 25,х2,8х5,8 Арселор', 7328, 1.3646288209607, 0, 10000),
(1030, 'труба 32,х2,8х5,8 Арселор', 4198, 2.3820867079562, 0, 10000),
(1031, 'труба 27х3х12', 2850, 3.5087719298246, 0, 10000),
(2001, 'уголок 50х50х4 ст3сп УзМЗ', 9091, 1.09998900011, 0, 10000),
(2002, 'уголок 35х35х4 ст3сп УзМЗ', 6733, 1.4852220406951, 0, 10000),
(2003, 'уголок 50х50х5 ст3сп ЕВРАЗ', 1709, 5.8513750731422, 0, 10000),
(2004, 'уголок 50х50х5 оцинк', 7015, 1.4255167498218, 0, 10000),
(2005, 'уголок 63х63х5 ст3сп ЧМК', 8863, 1.1282861333634, 0, 10000),
(2006, 'уголок 63х63х5 ст3сп УзМз', 6181, 1.6178611875101, 0, 10000),
(2008, 'уголок 75х75х6 ст3сп УзМЗ', 7597, 1.3163090693695, 0, 10000),
(2009, 'уголок 75х75х5 ст3сп Балаково', 6655, 1.5026296018032, 0, 10000),
(2010, 'уголок 70х70х6 ст3сп', 9518, 1.0506408909435, 0, 10000),
(2011, 'уголок 80х80х6 ст3сп УзМЗ', 2557, 3.9108330074306, 0, 10000),
(2012, 'рп 80х80х6 ст 3СП', 9860, 1.0141987829615, 0, 10000),
(2013, 'рп 80х80х8 ст 3СП', 5446, 1.8362100624311, 0, 10000),
(2014, 'рп 90х90х6 ст 3СП', 3971, 2.5182573659028, 0, 10000),
(2015, 'рп 90х90х7 ст 3СП', 9983, 1.0017028949214, 0, 10000),
(2016, 'рп 90х90х8 ст 3СП', 82, 121.9512195122, 0, 10000),
(2017, 'рп 100х100х7 ст 3СП АРБЗ', 2624, 3.8109756097561, 0, 10000),
(2018, 'рп 100х100х7 ст 3СП Балакого', 7673, 1.303271210739, 0, 10000),
(2019, 'рп 100х100х8 ст 3СП Балакого', 445, 22.47191011236, 0, 10000),
(2020, 'рп 100х100х8 ст 3СП', 6089, 1.6423057973395, 0, 10000),
(2022, 'рп 100х100х10 ст 3СП', 2315, 4.3196544276458, 0, 10000),
(2023, 'рп 100х100х10  15 ХСНД', 6269, 1.5951507417451, 0, 10000),
(2024, 'рп 110х110х7 ст3СП', 9534, 1.0488777008601, 0, 10000),
(2025, 'рп 110х110х8 ст 3СП', 659, 15.174506828528, 0, 10000),
(2026, 'рп 110х110х10 ст 3СП', 8623, 1.1596892032935, 0, 10000),
(2027, 'рп 125х125х8 ст 3СП АРБЗ', 1739, 5.7504312823462, 0, 10000),
(2028, 'рп 125х125х9 ст 3СП', 840, 11.904761904762, 0, 10000),
(2029, 'рп 125х125х10 ст 3СП', 555, 18.018018018018, 0, 10000),
(2030, 'рп 140х140х9 ст 3СП', 5147, 1.9428793471925, 0, 10000),
(2031, 'рп 140х140х10 ст 3СП', 3088, 3.2383419689119, 0, 10000),
(2032, 'рп 140х140х12 ст 3СП', 2862, 3.4940600978337, 0, 10000),
(2033, 'рп 140х90х10 ст 3СП', 423, 23.640661938534, 0, 10000),
(2034, 'рп 160х160х10 ст 3СП', 1706, 5.8616647127784, 0, 10000),
(2035, 'рп 160х160х12 ст 3СП', 509, 19.646365422397, 0, 10000),
(2036, 'нп 160х160х16 ст 3СП', 4280, 2.3364485981308, 0, 10000),
(2037, 'рп 160х100х10 ст3сп', 9296, 1.0757314974182, 0, 10000),
(2038, 'рп 180х180х11 ст3', 2456, 4.071661237785, 0, 10000),
(2039, 'рп 200х200х12 ст3сп', 215, 46.511627906977, 0, 10000),
(2040, 'рп 200х200х16 ст3сп', 8120, 1.2315270935961, 0, 10000),
(2041, 'рп 200х200х20 ст3сп', 1214, 8.2372322899506, 0, 10000),
(3001, '12Б1 Ст 3СП ЗСМК', 9532, 1.0490977759127, 0, 10000),
(3002, '14 ст 3ПС Метинвест', 4687, 2.1335609131641, 0, 10000),
(3003, '14Б1 ст 3ПС ЗСМК', 7588, 1.3178703215604, 0, 10000),
(3004, '16 Ст 3СП Метинвест', 3845, 2.6007802340702, 0, 10000),
(3005, '16Б1 Ст 3СП ЗСМК', 7206, 1.3877324451846, 0, 10000),
(3006, '16Б2 Ст 3СП', 6835, 1.4630577907827, 0, 10000),
(3007, '18 Ст Ст 3СП НТМК', 6272, 1.594387755102, 0, 10000),
(3008, '18 СТ 3СП Метинвест', 289, 34.602076124567, 0, 10000),
(3009, '18Б1 Ст 3СП', 6224, 1.6066838046272, 0, 10000),
(3010, '18Б2 Ст 3СП', 2765, 3.6166365280289, 0, 10000),
(3011, '20 Ст 3СП Метинвест', 9612, 1.0403662089055, 0, 10000),
(3012, '20Б1 Ст 3СП  НТМК', 9815, 1.0188487009679, 0, 10000),
(3013, '20Б2 Ст 3СП  НТМК', 3366, 2.9708853238265, 0, 10000),
(3014, '20К1 Ст 3СП  НТМК', 1230, 8.130081300813, 0, 10000),
(3015, '20Ш1 Ст 3СП  НТМК', 8794, 1.1371389583807, 0, 10000),
(3016, '20Ш2 Ст 3СП  НТМК', 1848, 5.4112554112554, 0, 10000),
(3017, '20К2 Ст 3СП  НТМК', 2679, 3.732736095558, 0, 10000),
(3018, '24 СТ 3СП', 8457, 1.1824524062906, 0, 10000),
(3019, '24М  Ст 3СП НТМК', 8119, 1.2316787781747, 0, 10000),
(3020, '24М  Ст 3СП Метинвест', 8111, 1.2328936012822, 0, 10000),
(3021, '25Б1 Ст 3СП  НТМК', 4012, 2.4925224327019, 0, 10000),
(3022, '25Б1 Ст 3СП  ЧМК', 6321, 1.5820281601012, 0, 10000),
(3023, '25Б2 Ст 3СП НТМК', 7812, 1.2800819252432, 0, 10000),
(3024, '25Б2 Ст 3СП  ЧМК', 6601, 1.514921981518, 0, 10000),
(3025, '25К1 Ст 3СП  НТМК', 1750, 5.7142857142857, 0, 10000),
(3026, '25К1 Ст 3СП  ЧМК', 7568, 1.3213530655391, 0, 10000),
(3027, '25К2 Ст 3СП  НТМК', 841, 11.890606420927, 0, 10000),
(3028, '25Ш1 Ст 3СП  НТМК', 5158, 1.9387359441644, 0, 10000),
(3029, '25Ш2 Ст 3СП  НТМК', 7902, 1.2655024044546, 0, 10000),
(3030, '27 СТ 3СП', 2820, 3.5460992907801, 0, 10000),
(3031, '30Б1 Ст 3СП  НТМК', 9044, 1.1057054400708, 0, 10000),
(3032, '30Б1 Ст 3СП  ЧМК', 9730, 1.0277492291881, 0, 10000),
(3033, '30Б2 Ст 3СП  НТМК', 4443, 2.2507314877335, 0, 10000),
(3034, '30К1 Ст 3СП  НТМК', 9148, 1.0931351114998, 0, 10000),
(3035, '30К2 Ст 3СП  НТМК', 6281, 1.5921031682853, 0, 10000),
(3036, '30К3 Ст 3СП НТМК', 7038, 1.4208581983518, 0, 10000),
(3037, '30Ш1 Ст 3СП  НТМК', 8335, 1.1997600479904, 0, 10000),
(3038, '30Ш2 Ст 3СП  НТМК', 6016, 1.6622340425532, 0, 10000),
(3039, '30 Ш2 Ст 3СП  ЧМК', 5192, 1.9260400616333, 0, 10000),
(3040, '30Ш3 Ст 3СП НТМК', 3812, 2.6232948583421, 0, 10000),
(3041, '30М  Ст 3СП  НТМК', 3116, 3.209242618742, 0, 10000),
(3042, '30  Ст 3СП  Метинвест', 803, 12.453300124533, 0, 10000),
(3043, '35Б1 Ст 3СП  НТМК', 340, 29.411764705882, 0, 10000),
(3044, '35К1 Ст 3СП  НТМК', 4708, 2.1240441801189, 0, 10000),
(3045, '35К2 Ст 3СП  НТМК', 8863, 1.1282861333634, 0, 10000),
(3046, '35Б2 Ст 3СП  НТМК', 5753, 1.7382235355467, 0, 10000),
(3047, '35Ш1 Ст 3СП  НТМК', 1087, 9.1996320147194, 0, 10000),
(3048, '35Ш2 Ст 3СП  НТМК', 3428, 2.9171528588098, 0, 10000),
(3049, '36 Ст 3СП  Метинвест', 1327, 7.5357950263753, 0, 10000),
(3050, '36М Ст 3СП  НТМК', 4124, 2.4248302618817, 0, 10000),
(3051, '36М Ст 3СП  Метинвест', 3051, 3.2776138970829, 0, 10000),
(3052, '40Б1 Ст 3СП  НТМК', 6968, 1.435132032147, 0, 10000),
(3053, '40Б2 Ст 3СП НТМК', 247, 40.485829959514, 0, 10000),
(3054, '40К1 09Г2С  НТМК (12метров)', 3037, 3.2927230819888, 0, 10000),
(3056, '40К1 Ст3  НТМК', 4704, 2.1258503401361, 0, 10000),
(3057, '40К2 Ст 3СП НТМК', 4508, 2.2182786157941, 0, 10000),
(3058, '40К2 Ст 3СП НТМК(СТ345)', 7668, 1.3041210224309, 0, 10000),
(3059, '40К3 Ст 3СП НТМК', 4152, 2.4084778420039, 0, 10000),
(3060, '40Ш1 С255 ЧМК', 5061, 1.9758940920767, 0, 10000),
(3061, '40Ш2 Ст 3СП  НТМК', 8724, 1.1462631820266, 0, 10000),
(3062, '40Ш4 Ст 3СП  НТМК', 4836, 2.0678246484698, 0, 10000),
(3063, '45Б Ст 3СП НТМК', 2362, 4.233700254022, 0, 10000),
(3064, '45Б1 Ст 3СП НТМК', 7223, 1.3844662882459, 0, 10000),
(3065, '45Б2 Ст 3СП НТМК', 8645, 1.1567379988433, 0, 10000),
(3066, '45М  Ст 3СП НТМК', 6941, 1.4407145944388, 0, 10000),
(3067, '45 Ст3ПС Метинвест', 8270, 1.2091898428053, 0, 10000),
(3068, '45Ш1 Ст 3СП НТМК', 6244, 1.6015374759769, 0, 10000),
(3069, '45Ш2 Ст 3СП НТМК', 2253, 4.4385264092321, 0, 10000),
(3070, '50Б1 Ст 3СП НТМК', 4425, 2.2598870056497, 0, 10000),
(3071, '50Б2 Ст 3СП', 1711, 5.8445353594389, 0, 10000),
(3072, '50Ш1 Ст 3СП НТМК', 6106, 1.6377333770062, 0, 10000),
(3073, '50Ш4 Ст 3СП НТМК', 9738, 1.0269049086055, 0, 10000),
(3074, '50Ш2 Ст 3СП НТМК', 8548, 1.1698642957417, 0, 10000),
(3075, '55Б1 Ст 3СП НТМК', 515, 19.417475728155, 0, 10000),
(3076, '55Б2 Ст 3СП НТМК', 1415, 7.0671378091873, 0, 10000),
(3077, '60Б1 Ст 3СП НТМК', 8254, 1.2115338017931, 0, 10000),
(3078, '60Б2 Ст 3СП НТМК', 8556, 1.1687704534829, 0, 10000),
(3079, '60Ш1 Ст 3СП НТМК', 9295, 1.0758472296934, 0, 10000),
(3080, '60Ш2 Ст 3СП НТМК', 5615, 1.7809439002671, 0, 10000),
(3081, '60Ш3 Ст 3СП НТМК(ст355)', 4999, 2.000400080016, 0, 10000),
(3082, '70Б1Ст 3СП НТМК', 7702, 1.2983640612828, 0, 10000),
(3083, '70Б2Ст 3СП НТМК', 392, 25.510204081633, 0, 10000),
(3084, '70Ш2Ст 3СП НТМК', 1083, 9.2336103416436, 0, 10000),
(3085, '70Ш1Ст 3СП НТМК', 5784, 1.7289073305671, 0, 10000),
(3086, '70Ш3Ст 3СП НТМК', 8957, 1.1164452383611, 0, 10000),
(4001, 'лист х/к 0,5 (1х2) Арселор', 8688, 1.1510128913444, 0, 10000),
(4002, 'лист х/к 0,6 (1,25х2,5) Арселор', 2004, 4.9900199600798, 0, 10000),
(4003, 'лист х/к 0,7 (1,25х2,5) Арселор', 18859, 53.555338193966, 0, 1010000.123),
(4004, 'лист х/к 0,8(1,25х2,5) Арселор', 3208, 3.1172069825436, 0, 10000),
(4005, 'лист х/к 0,85(1,25х2,5) Арселор', 2804, 3.5663338088445, 0, 10000),
(4006, 'лист х/к 0,88(1,25х2,5) Арселор', 9352, 1.0692899914457, 0, 10000),
(4007, 'лист х/к 0,9(1,25х2,5) Арселор', 9614, 1.0401497815685, 0, 10000),
(4008, 'лист х/к 1 (1,25х2,5) Арселор', 2942, 3.3990482664854, 0, 10000),
(4009, 'лист х/к 1,08(1,25х2,5) Арселор', 1039, 9.6246390760346, 0, 10000),
(4010, 'лист х/к 1,15 (1,25х2,5) Арселор', 3265, 3.062787136294, 0, 10000),
(4011, 'лист х/к 1,18 (1,25х2,5) Арселор', 4885, 2.0470829068577, 0, 10000),
(4012, 'лист х/к 1,2 (1,25х2,5) Арселор', 7551, 1.3243279035889, 0, 10000),
(4013, 'лист х/к 1,3 (1,25х2,5) Арселор', 2836, 3.5260930888575, 0, 10000),
(4014, 'лист х/к 1,5 (1,25х2,5) Арселор', 5004, 1.9984012789768, 0, 10000),
(4015, 'лист х/к 2(1,25х2,5)  Арселор', 6418, 1.5581177937052, 0, 10000),
(4016, 'лист х/к 2,5 (1,25х2,5) ММК', 607, 16.474464579901, 0, 10000),
(4017, 'лист х/к рул. 1,1х1,25', 6278, 1.592863969417, 0, 10000),
(4018, 'лист/оцинк рул. 0,4х1,25 Арселор', 215, 46.511627906977, 0, 10000),
(4019, 'лист/оцинк рул. 0,45х1,25 Арселор', 9741, 1.0265886459296, 0, 10000),
(4020, 'лист/оцинк рул. 0,45х1,25 полимер', 6637, 1.5067048365225, 0, 10000),
(4022, 'лист/оцинк рул. 0,5х1,25 Арселор', 769, 13.003901170351, 0, 10000),
(4023, 'лист/оцинк рул. 0,6х1,25 Арселор', 344, 29.06976744186, 0, 10000),
(4024, 'лист/оцинк рул. 0,7х1,25 Арселор', 7006, 1.4273479874393, 0, 10000),
(4025, 'лист/оцинк рул. 0,8х1,25 Арселор', 2440, 4.0983606557377, 0, 10000),
(4026, 'лист/оцинк рул. 0,9х1,25 Арселор', 2748, 3.6390101892285, 0, 10000),
(4027, 'лист/оцинк рул. 0,9х1,0 Арселор', 308, 32.467532467532, 0, 10000),
(4028, 'лист/оцинк рул. 1,0х1,0 Арселор', 6357, 1.5730690577316, 0, 10000),
(4029, 'лист/оцинк рул. 1,2х1,25 Арселор', 4418, 2.2634676324129, 0, 10000),
(4030, 'лист/оцинк рул. 1,2х1,5 MMK', 7451, 1.3421017313112, 0, 10000),
(4031, 'лист/оцинк рул. 2,0х1,25 Арселор', 1084, 9.2250922509225, 0, 10000),
(4032, 'лист оцин. 1(1,25х2,5) Арселор', 6014, 1.6627868307283, 0, 10000),
(4033, 'лист оцин. 1,2(1,25х2,5) Арселор', 2108, 4.7438330170778, 0, 10000),
(4034, 'лист оцин. 1,3(1,25х2,5) Арселор', 8392, 1.1916110581506, 0, 10000),
(4035, 'лист оцин. 1,5(1,25х2,5) Арселор', 8523, 1.1732957878681, 0, 10000),
(4036, 'лист оцин. 1,6(1,25х2,5) Арселор', 409, 24.449877750611, 0, 10000),
(4037, 'лист г/к 1,5 (1х2) ММК', 8088, 1.2363996043521, 0, 10000),
(4038, 'лист г/к 1,8 (1х2) ММК', 2239, 4.4662795891023, 0, 10000),
(4039, 'лист г/к 1,8 (1,25х2,5)', 4431, 2.2568269013767, 0, 10000),
(4040, 'лист г/к 1,9 ( 1х2) Северсталь', 5809, 1.7214666896196, 0, 10000),
(4041, 'лист г/к 1,9 ( 1,25х2,5) СеверСталь', 9090, 1.1001100110011, 0, 10000),
(4042, 'лист г/к 2 (1х2) Арселор', 1663, 6.0132291040289, 0, 10000),
(4043, 'лист г/к 2(1,25х2,5) Арселор', 2047, 4.8851978505129, 0, 10000),
(4044, 'лист г/к 2(1,25х2,5) Метинвест', 8877, 1.1265067027149, 0, 10000),
(4045, 'лист г/к 2,4(1,25х2,5) Арселор', 238, 42.016806722689, 0, 10000),
(4046, 'лист г/к 2,5(1,25х2,5) ММК', 8249, 1.2122681537156, 0, 10000),
(4047, 'лист г/к 2,5(1,25х2,5) Арселор', 6363, 1.5715857300016, 0, 10000),
(4048, 'лист г/к 2,6(1,25х2,5) Арселор', 9029, 1.1075423634954, 0, 10000),
(4049, 'лист г/к 2,8 (1,25х2,5)Арселор', 6580, 1.5197568389058, 0, 10000),
(4050, 'лист г/к 3 ( 1х2) Арселор', 8070, 1.2391573729864, 0, 10000),
(4051, 'лист г/к 3 ( 1,25х2,5) Метинв', 8188, 1.2212994626282, 0, 10000),
(4052, 'лист г/к 3 ( 1,25х2,5)рифл.Арселор', 4375, 2.2857142857143, 0, 10000),
(4053, 'лист г/к 3 ( 1,5х6) Арселор', 2663, 3.7551633496057, 0, 10000),
(4054, 'лист г/к 3,8 ( 1,25х2,5)  Арселор', 617, 16.207455429498, 0, 10000),
(4055, 'лист г/к 3 ( 1,5х6) 09Г2С', 5483, 1.8238190771475, 0, 10000),
(4056, 'лист г/к 4 ( 1,25х6) ст 3', 6913, 1.4465499783018, 0, 10000),
(4057, 'лист г/к 4 ( 1,25х6) 09Г2С', 5438, 1.8389113644722, 0, 10000),
(4058, 'лист г/к 4(1,5х6)  Метинвест', 8059, 1.2408487405385, 0, 10000),
(4059, 'лист  4 рефл. Арселор', 8042, 1.2434717731907, 0, 10000),
(4060, 'лист 4(1,5х6) рефл. СеверСталь', 8148, 1.227295041728, 0, 10000),
(4061, 'лист г/к 4 СеверСталь', 6143, 1.6278691193228, 0, 10000),
(4062, 'лист г/к 4 рефл. Арселор', 3594, 2.7824151363383, 0, 10000),
(4063, 'лист г/к 5 СеверСталь 09Г2С', 2155, 4.6403712296984, 0, 10000),
(4064, 'лист г/к 5 Метинв', 3445, 2.9027576197388, 0, 10000),
(4065, 'лист г/к 5 (1,5х6)рифл.', 9140, 1.0940919037199, 0, 10000),
(4066, 'лист г/к 6 (1,5х6)Mетинв', 3110, 3.2154340836013, 0, 10000),
(4067, 'лист г/к 6 рефл. Арселор', 3889, 2.5713551041399, 0, 10000),
(4068, 'лист г/к 6рифл.(1,08х5,0)', 8295, 1.205545509343, 0, 10000),
(4069, 'лист г/к 6 Метинв(1,5х6)', 9970, 1.0030090270812, 0, 10000),
(4070, 'лист г/к 6(1,5х6) рефл. СеверСталь', 41, 243.90243902439, 0, 10000),
(4071, 'лист г/к 8 (1,5х6) 09Г2С', 6798, 1.4710208884966, 0, 10000),
(4072, 'лист г/к 8  09Г2С Арселор', 2560, 3.90625, 0, 10000),
(4073, 'лист г/к 8 рефл. Арселор', 2188, 4.5703839122486, 0, 10000),
(4074, 'лист г/к 8 Метинв.(2х6)', 2475, 4.040404040404, 0, 10000),
(4075, 'лист г/к 8 Метинв.(1,5х6)', 8098, 1.2348728081008, 0, 10000),
(4076, 'лист г/к 8 Арселор', 3959, 2.5258903763577, 0, 10000),
(4077, 'лист г/к 10 ЧМК', 1522, 6.5703022339028, 0, 10000),
(4078, 'лист г/к 10 Метинв.', 5071, 1.9719976336028, 0, 10000),
(4079, 'лист г/к 10 Арселор', 638, 15.673981191223, 0, 10000),
(4080, 'лист г/к 10 09Г2С', 3321, 3.0111412225233, 0, 10000),
(4081, 'лист г/к 12 09Г2С Сев.Ст', 9357, 1.0687186063909, 0, 10000),
(4082, 'лист г/к 12  СеверСталь', 4679, 2.1372088053003, 0, 10000),
(4083, 'лист г/к 12  MMK', 9597, 1.0419922892571, 0, 10000),
(4084, 'лист г/к 12 Метинв.', 8556, 1.1687704534829, 0, 10000),
(4085, 'лист г/к 12 (1,5х6) Арселор', 7120, 1.4044943820225, 0, 10000),
(4086, 'лист г/к 12 (1,5х6) ЧМК', 2172, 4.6040515653775, 0, 10000),
(4087, 'лист г/к 12  09Г2С УС', 8478, 1.1795234725171, 0, 10000),
(4088, 'лист г/к 14 СТ 255', 2743, 3.64564345607, 0, 10000),
(4089, 'лист г/к 14 09Г2С', 2851, 3.5075412136093, 0, 10000),
(4090, 'лист г/к 14 (1,5х6)09Г2С СеверСталь', 7701, 1.2985326580964, 0, 10000),
(4091, 'лист г/к 14 УС', 8491, 1.1777175833235, 0, 10000),
(4092, 'лист г/к 14 Метинв', 9948, 1.005227181343, 0, 10000),
(4093, 'лист г/к 14 09Г2С УС', 2806, 3.5637918745545, 0, 10000),
(4094, 'лист г/к 16 ЧМК', 244, 40.983606557377, 0, 10000),
(4095, 'лист г/к 16  Метинв', 9894, 1.010713563776, 0, 10000),
(4096, 'лист г/к 16 (1,5х6) УС', 9364, 1.0679196924391, 0, 10000),
(4097, 'лист г/к 18(1,5х6)СеверСталь', 255, 39.21568627451, 0, 10000),
(4098, 'лист г/к 18(1,5х6)СеверСталь 09Г2С', 3808, 2.6260504201681, 0, 10000),
(4099, 'лист г/к 18  Метинв', 4610, 2.1691973969631, 0, 10000),
(4100, 'лист г/к 18 09г2С Метинв', 728, 13.736263736264, 0, 10000),
(4101, 'лист г/к 18 СТ 255', 2241, 4.4622936189201, 0, 10000),
(4102, 'лист г/к 20 ММК', 5984, 1.6711229946524, 0, 10000),
(4103, 'лист г/к 20 ММК(СТ345)', 200, 50, 0, 10000),
(4104, 'лист г/к 20 (1,5х6) ЧМК', 6985, 1.4316392269148, 0, 10000),
(4105, 'лист г/к 20 09г2с УС', 7174, 1.3939224979091, 0, 10000),
(4106, 'лист г/к 20 (1,5x 6) Метинв', 4589, 2.1791239921552, 0, 10000),
(4107, 'лист г/к 22 09г2с УС', 5732, 1.7445917655269, 0, 10000),
(4108, 'лист г/к 22 УС', 43, 232.55813953488, 0, 10000),
(4109, 'лист г/к 24 (1,5х6) УС', 406, 24.630541871921, 0, 10000),
(4110, 'лист г/к 24 УС 09ГС', 3315, 3.0165912518854, 0, 10000),
(4111, 'лист г/к 24 СТ 255', 83, 120.48192771084, 0, 10000),
(4112, 'лист г/к 25 10ХСНД  (1,450х6,700)', 1609, 6.2150403977626, 0, 10000),
(4113, 'лист г/к 25 ЧМК', 6871, 1.4553922282055, 0, 10000),
(4114, 'лист г/к 25 (1,5x 6) 09Г2С АшМЗ', 8329, 1.2006243246488, 0, 10000),
(4115, 'лист г/к 25 (1,5x 6) Метинв', 2401, 4.1649312786339, 0, 10000),
(4116, 'лист г/к 25 (2х6) УС', 6701, 1.4923145799134, 0, 10000),
(4117, 'лист г/к 26 (1,5х6) 09Г2С', 5553, 1.8008283810553, 0, 10000),
(4118, 'лист г/к 28 УС', 7059, 1.4166312508854, 0, 10000),
(4119, 'лист г/к 28 СТ 255', 9889, 1.0112245929821, 0, 10000),
(4120, 'лист г/к 28 Метинв', 7805, 1.2812299807816, 0, 10000),
(4121, 'лист г/к 30 УС', 8786, 1.1381743683132, 0, 10000),
(4122, 'лист г/к 30 УС 09Г2С', 6253, 1.5992323684631, 0, 10000),
(4123, 'лист г/к 30 Метинв', 4749, 2.1057064645188, 0, 10000),
(4124, 'лист г/к 32 (1,5х6) 09Г2С', 6559, 1.5246226558927, 0, 10000),
(4125, 'лист г/к 36 09Г2С', 5089, 1.9650225977599, 0, 10000),
(4126, 'лист г/к 36 (1,5х6)', 8268, 1.2094823415578, 0, 10000),
(4127, 'лист г/к 36 (1,5х4,9)', 9965, 1.0035122930256, 0, 10000),
(4128, 'лист г/к 38 (1,5х5,5)', 4669, 2.1417862497323, 0, 10000),
(4129, 'лист г/к 40 Метинв 09Г2С', 3136, 3.1887755102041, 0, 10000),
(4130, 'лист г/к 40 (1,5х6)', 8398, 1.1907597046916, 0, 10000),
(4131, 'лист г/к 40 (1,5х5,3)', 6166, 1.6217969510217, 0, 10000),
(4132, 'лист г/к 45(1,5х6) 09Г2С', 7518, 1.3301409949455, 0, 10000),
(4133, 'лист г/к 50(1,5х6) 09Г2С АшМЗ', 9321, 1.0728462611308, 0, 10000),
(4134, 'лист г/к 50 УС', 2332, 4.2881646655232, 0, 10000),
(4135, 'лист г/к 60(1,5х5,9) 09Г2С', 2568, 3.8940809968847, 0, 10000),
(4136, 'лист г/к 60 (1,5х6,0)Метинвест', 2264, 4.416961130742, 0, 10000),
(4137, 'лист г/к 70 (1,5х6,0)Метинвест', 5954, 1.6795431642593, 0, 10000),
(4138, 'лист г/к 80 (1,5х6,0)Метинвест', 3643, 2.7449903925336, 0, 10000),
(4139, 'лист г/к 100 (1,5х6,0)Метинвест', 8334, 1.1999040076794, 0, 10000),
(4140, 'Лист просечно-вытяжной 406', 466, 21.459227467811, 0, 10000),
(4141, 'Лист просечно-вытяжной 506', 1333, 7.5018754688672, 0, 10000),
(5001, '6,5П УзМЗ', 4582, 2.1824530772588, 0, 10000),
(5002, '8П  УзМЗ', 9094, 1.0996261271168, 0, 10000),
(5003, '10П  УзМЗ', 8600, 1.1627906976744, 0, 10000),
(5004, '12П ст 3ПС ЗМСК', 2951, 3.3886818027787, 0, 10000),
(5005, '12У ст 3СП ЗСМК', 2161, 4.62748727441, 0, 10000),
(5006, '14П ст 3ПС ЗМСК', 9744, 1.0262725779967, 0, 10000),
(5007, '14У ст 3ПС Магнитогорск', 9552, 1.0469011725293, 0, 10000),
(5008, '16П ст 3ПС ЗМСК', 7361, 1.3585110718652, 0, 10000),
(5009, '16У ст 3ПС', 1569, 6.3734862970045, 0, 10000),
(5010, '18У ст 3СП НТМК', 6601, 1.514921981518, 0, 10000),
(5011, '18П ст 3СП НТМК', 7588, 1.3178703215604, 0, 10000),
(5012, '20У ст 3СП НТМК', 6214, 1.6092693916962, 0, 10000),
(5013, '20П ст 3ПС НТМК', 9314, 1.0736525660296, 0, 10000),
(5014, '22 П ст 3ПС НТМК', 4140, 2.4154589371981, 0, 10000),
(5015, '22 У ст 3ПС НТМК', 4484, 2.2301516503122, 0, 10000),
(5016, '24У ст 3ПС НТМК', 1094, 9.1407678244973, 0, 10000),
(5017, '24П ст 3ПС НТМК', 9282, 1.0773540185305, 0, 10000),
(5018, '27У ст 3СП НТМК', 7209, 1.3871549452074, 0, 10000),
(5019, '27П ст 3СП НТМК', 2608, 3.8343558282209, 0, 10000),
(5020, '30П ст 3СП НТМК', 6428, 1.5556938394524, 0, 10000),
(5021, '30У ст3СП Метинв', 6417, 1.5583606046439, 0, 10000),
(5022, '40П ст3СП НТМК', 8891, 1.124732875942, 0, 10000),
(6001, 'Арм ф 8 (35гс)', 5526, 1.8096272167933, 0, 10000),
(6002, 'Арм ф 8 (35гс)бухтыЧМК', 9588, 1.0429703796412, 0, 10000),
(6003, 'Арм ф 8 пруток', 694, 9.1407678244973, 0, 10000),
(6004, 'Арм ф10 А 500 ЕКС', -7977, 4.9431537320811, 0, 10000),
(6005, 'Арм ф10 А 500 Арселор', 7411, 1.3493455673998, 0, 10000),
(6006, 'Арм ф10 А 500С', 8604, 1.162250116225, 0, 10000),
(6007, 'Арм ф 10 (35гс) УМК', 7810, 1.280409731114, 0, 10000),
(6008, 'Арм ф12 А 500С АРСЕЛОР', 7136, 1.4013452914798, 0, 10000),
(6009, 'Арм ф12 А 500С ЕКС (новая)', 5586, 1.7901897601146, 0, 10000),
(6010, 'Арм ф12 А 500С ЧМК', 5348, 1.8698578908003, 0, 10000),
(6011, 'Арм ф12 А 600С ЗСМК', 2218, 4.5085662759243, 0, 10000),
(6012, 'Арм ф12 АIII 35ГС', 159, 62.893081761006, 0, 10000),
(6013, 'Арм ф14 АIII 35ГС', 2358, 4.2408821034775, 0, 10000),
(6014, 'Арм ф14 А 500С Арселор', 5894, 1.69664065151, 0, 10000),
(6015, 'Арм ф14 А 500С ЧМК', 6614, 1.5119443604475, 0, 10000),
(6016, 'Арм ф14 А 500С ЕКС', 7352, 1.3601741022851, 0, 10000),
(6017, 'Арм ф14 А 500С ЕКС(новая)', 9892, 1.0109179134654, 0, 10000),
(6018, 'Арм ф16 А 500С Арселор', 9020, 1.1086474501109, 0, 10000),
(6019, 'Арм ф16 А 500С ЧМК', 1060, 9.4339622641509, 0, 10000),
(6020, 'Арм ф16 А 500С ЕКС(новая)', 5366, 1.8635855385762, 0, 10000),
(6021, 'Арм ф16', 3893, 2.5687130747496, 0, 10000),
(6022, 'Арм ф18 А 500С Арселор', 9838, 1.0164667615369, 0, 10000),
(6023, 'Арм ф18 35ГС', 1082, 9.2421441774492, 0, 10000),
(6024, 'Арм ф18 А 500С ЧМК', 3353, 2.9824038174769, 0, 10000),
(6025, 'Арм ф18 А 500С ЕКС(новая)', 8594, 1.1636025133814, 0, 10000),
(6026, 'Арм ф20 А 500С ЕКС(новая)', 1968, 5.0813008130081, 0, 10000),
(6027, 'Арм ф20 А 500С Арселор', 5415, 1.8467220683287, 0, 10000),
(6028, 'Арм ф20 А 500С ЧМК', 6543, 1.5283509093688, 0, 10000),
(6029, 'Арм ф20 (35ГС)', 4276, 2.3386342376052, 0, 10000),
(6030, 'Арм ф22(35гс)', 5739, 1.7424638438752, 0, 10000),
(6031, 'Арм ф22 А 500С ЧМК', 5983, 1.6714023065352, 0, 10000),
(6032, 'Арм ф22 А 500С ЕКС(новая)', 7177, 1.3933398355859, 0, 10000),
(6033, 'Арм ф22 А 500С Арселор', 1042, 9.5969289827255, 0, 10000),
(6034, 'Арм ф25 А 400С 35ГС', 163, 61.349693251534, 0, 10000),
(6035, 'Арм ф25 А 500С ЧМК', 175, 57.142857142857, 0, 10000),
(6036, 'Арм ф25 А 500С Арселор', 7230, 1.3831258644537, 0, 10000),
(6037, 'Арм ф25 А 500С ЕКС(новая)', 3625, 2.7586206896552, 0, 10000),
(6038, 'Арм ф28 А 400С 35ГС', 3358, 2.9779630732579, 0, 10000),
(6039, 'Арм ф28 А 500С ЧМК', 8869, 1.1275228323374, 0, 10000),
(6040, 'Арм ф28 А 500С ЕКС(новая)', 1599, 6.2539086929331, 0, 10000),
(6041, 'Арм ф28 А 500С Арселор', 8671, 1.1532695190866, 0, 10000),
(6042, 'Арм ф32 А 500С ЧМК', 938, 10.660980810235, 0, 10000),
(6043, 'Арм ф32 35ГС', 724, 13.812154696133, 0, 10000),
(6044, 'Арм ф32 А 500С ЕКС(новая)', 4551, 2.19731927049, 0, 10000),
(6045, 'Арм ф32 А 500С', 4991, 2.003606491685, 0, 10000),
(6046, 'Арм ф40 А 500С ЗСМК', 4417, 2.2639800769753, 0, 10000),
(7001, '6,5 ст3пс', 2330, 4.2918454935622, 0, 10000),
(7002, '6,0 ст3пс', 1144, 8.7412587412587, 0, 10000),
(7003, '8,0 ст3пс ЧМК', 1348, 7.4183976261128, 0, 10000),
(7004, '8 ст 3пс ТТЗ', 3676, 2.7203482045702, 0, 10000),
(7005, '10 ст 3пс ЗСМК', 2826, 3.5385704175513, 0, 10000),
(7006, 'Круг 32', 7909, 1.2643823492224, 0, 10000),
(7007, 'Круг 16', 8023, 1.2464165524118, 0, 10000),
(7008, 'Круг 18', 3922, 2.5497195308516, 0, 10000),
(7009, 'Круг 10', 4546, 2.1997360316762, 0, 10000),
(7010, 'Круг 12', 8021, 1.2467273407306, 0, 10000),
(7011, 'Круг 22', 5875, 1.7021276595745, 0, 10000),
(7012, 'Круг 28', 1776, 5.6306306306306, 0, 10000),
(7013, 'Круг 40', 8473, 1.1802195208309, 0, 10000),
(7014, 'Круг 42', 1778, 5.6242969628796, 0, 10000),
(7015, 'Круг 50', 7971, 1.2545477355413, 0, 10000),
(7016, 'Круг 65', 7844, 1.2748597654258, 0, 10000),
(7017, 'Круг 100', 9323, 1.072616110694, 0, 10000),
(7018, 'Круг 145', 9448, 1.0584250635055, 0, 10000),
(7019, 'Круг 180', 2265, 4.4150110375276, 0, 10000),
(7020, 'Круг 300', 8898, 1.1238480557429, 0, 10000),
(7021, 'Круг 330', 4275, 2.3391812865497, 0, 10000),
(7022, 'Круг 250', 819, 12.210012210012, 0, 10000),
(7023, 'Круг 250х6', 4355, 2.2962112514351, 0, 10000),
(7024, 'Круг 130х6', 1442, 6.9348127600555, 0, 10000),
(7025, 'Квадрат 210х210', 7760, 1.2886597938144, 0, 10000),
(7026, 'Квадрат 300х300', 5253, 1.9036740909956, 0, 10000);

-- --------------------------------------------------------

--
-- Структура таблицы `sharif_reservations_comments`
--

CREATE TABLE `sharif_reservations_comments` (
  `id` int NOT NULL,
  `item_id` int NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `sharif_rights`
--

CREATE TABLE `sharif_rights` (
  `id` int NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `sharif_rights`
--

INSERT INTO `sharif_rights` (`id`, `description`) VALUES
(1, 'Редактирование остатков'),
(2, 'Редактирование расхода и бронирования'),
(3, 'Редактирование остатков');

-- --------------------------------------------------------

--
-- Структура таблицы `sharif_roles`
--

CREATE TABLE `sharif_roles` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `sharif_roles`
--

INSERT INTO `sharif_roles` (`id`, `name`, `description`) VALUES
(1, 'Admin', 'Полный доступ'),
(2, 'Director', 'Просмотр остатков, прихода и расхода без возможности корректировать'),
(3, 'Analyst', 'Просмотр остатков, прихода и расхода без возможности корректировать'),
(4, 'Sales manager', 'Доступ к остаткам и вводу данных по реализации и бронированию'),
(5, 'Warehouse manager', 'Просмотр остатков, прихода и расхода без возможности корректировать'),
(6, 'Accountant', 'Доступ вводу данных по приходу');

-- --------------------------------------------------------

--
-- Структура таблицы `sharif_temp_purchases`
--

CREATE TABLE `sharif_temp_purchases` (
  `user_id` bigint NOT NULL,
  `item_id` int NOT NULL,
  `item_amount` int NOT NULL,
  `item_cost` double NOT NULL,
  `is_cash` tinyint(1) NOT NULL DEFAULT '1',
  `is_paid` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `sharif_temp_reservations`
--

CREATE TABLE `sharif_temp_reservations` (
  `user_id` bigint NOT NULL,
  `item_id` int NOT NULL,
  `item_amount` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `sharif_temp_sales`
--

CREATE TABLE `sharif_temp_sales` (
  `user_id` bigint NOT NULL,
  `item_id` int NOT NULL,
  `item_amount` int NOT NULL,
  `is_cash` tinyint(1) NOT NULL DEFAULT '1',
  `is_paid` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `sharif_users`
--

CREATE TABLE `sharif_users` (
  `id` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` int NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `sharif_users`
--

INSERT INTO `sharif_users` (`id`, `name`, `role`, `username`) VALUES
(283894, 'Дмитрий', 1, '@Dee_so0'),
(32640798, 'Евгений', 1, '@nn_mrpark');

-- --------------------------------------------------------

--
-- Структура таблицы `sharif_waiting_roles`
--

CREATE TABLE `sharif_waiting_roles` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `role` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Структура таблицы `shipping_query`
--

CREATE TABLE `shipping_query` (
  `id` bigint UNSIGNED NOT NULL COMMENT 'Unique query identifier',
  `user_id` bigint DEFAULT NULL COMMENT 'User who sent the query',
  `invoice_payload` char(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '' COMMENT 'Bot specified invoice payload',
  `shipping_address` char(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '' COMMENT 'User specified shipping address',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Entry date creation'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `telegram_update`
--

CREATE TABLE `telegram_update` (
  `id` bigint UNSIGNED NOT NULL COMMENT 'Update''s unique identifier',
  `chat_id` bigint DEFAULT NULL COMMENT 'Unique chat identifier',
  `message_id` bigint UNSIGNED DEFAULT NULL COMMENT 'New incoming message of any kind - text, photo, sticker, etc.',
  `edited_message_id` bigint UNSIGNED DEFAULT NULL COMMENT 'New version of a message that is known to the bot and was edited',
  `channel_post_id` bigint UNSIGNED DEFAULT NULL COMMENT 'New incoming channel post of any kind - text, photo, sticker, etc.',
  `edited_channel_post_id` bigint UNSIGNED DEFAULT NULL COMMENT 'New version of a channel post that is known to the bot and was edited',
  `inline_query_id` bigint UNSIGNED DEFAULT NULL COMMENT 'New incoming inline query',
  `chosen_inline_result_id` bigint UNSIGNED DEFAULT NULL COMMENT 'The result of an inline query that was chosen by a user and sent to their chat partner',
  `callback_query_id` bigint UNSIGNED DEFAULT NULL COMMENT 'New incoming callback query',
  `shipping_query_id` bigint UNSIGNED DEFAULT NULL COMMENT 'New incoming shipping query. Only for invoices with flexible price',
  `pre_checkout_query_id` bigint UNSIGNED DEFAULT NULL COMMENT 'New incoming pre-checkout query. Contains full information about checkout',
  `poll_id` bigint UNSIGNED DEFAULT NULL COMMENT 'New poll state. Bots receive only updates about polls, which are sent or stopped by the bot',
  `poll_answer_poll_id` bigint UNSIGNED DEFAULT NULL COMMENT 'A user changed their answer in a non-anonymous poll. Bots receive new votes only in polls that were sent by the bot itself.',
  `my_chat_member_updated_id` bigint UNSIGNED DEFAULT NULL COMMENT 'The bot''s chat member status was updated in a chat. For private chats, this update is received only when the bot is blocked or unblocked by the user.',
  `chat_member_updated_id` bigint UNSIGNED DEFAULT NULL COMMENT 'A chat member''s status was updated in a chat. The bot must be an administrator in the chat and must explicitly specify “chat_member” in the list of allowed_updates to receive these updates.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `telegram_update`
--

INSERT INTO `telegram_update` (`id`, `chat_id`, `message_id`, `edited_message_id`, `channel_post_id`, `edited_channel_post_id`, `inline_query_id`, `chosen_inline_result_id`, `callback_query_id`, `shipping_query_id`, `pre_checkout_query_id`, `poll_id`, `poll_answer_poll_id`, `my_chat_member_updated_id`, `chat_member_updated_id`) VALUES
(955018807, 283894, 424, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018808, 32640798, 425, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018809, 32640798, 427, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018810, 32640798, 429, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018871, 283894, 544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018872, 283894, 546, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018873, 32640798, 547, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018874, 32640798, 548, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018875, 32640798, 549, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018876, 32640798, 550, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018877, 32640798, 564, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018878, 32640798, 565, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018879, 283894, 566, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018880, 1855436069, 567, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018881, 32640798, 568, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018882, 1855436069, 571, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018883, 1855436069, 572, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018884, 1855436069, 573, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018885, 1855436069, 574, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018886, 32640798, 575, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018887, 32640798, 577, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018888, 32640798, 578, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018889, 32640798, 580, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018890, 283894, 582, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018891, 283894, 584, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018892, 283894, 586, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018898, 283894, 594, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018899, 32640798, 596, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018900, 32640798, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018901, 283894, 598, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018902, 32640798, 602, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018903, 32640798, 606, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018904, 283894, 607, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018905, 32640798, 614, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018906, 32640798, 618, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018907, 283894, 622, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018908, 32640798, 626, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018909, 32640798, 630, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018910, 32640798, 634, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018911, 283894, 638, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018912, 283894, 642, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018913, 32640798, 643, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018914, 32640798, 644, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018915, 283894, 670, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018916, 32640798, 707, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018917, 283894, 716, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018918, 32640798, 718, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018919, 32640798, 725, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018920, 283894, 729, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018921, 32640798, 733, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018922, 32640798, 737, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018923, 283894, 739, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018924, 32640798, 741, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018925, 283894, 743, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018926, 32640798, 745, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018927, 32640798, 747, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018928, 32640798, 748, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018929, 32640798, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018930, 32640798, 749, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018931, 283894, 750, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018932, 32640798, 751, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018933, 32640798, 752, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018934, 32640798, 753, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018935, 32640798, 754, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018936, 32640798, 755, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018937, 32640798, 756, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018938, 32640798, 757, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018939, 32640798, 758, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018940, 32640798, 759, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018941, 32640798, 760, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018942, 32640798, 761, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018943, 32640798, 762, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018944, 32640798, 763, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018945, 32640798, 764, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018946, 32640798, 765, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018947, 32640798, 766, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018948, 32640798, 768, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018949, 32640798, 769, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018950, 32640798, 770, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018951, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191161267415361, NULL, NULL, NULL, NULL, NULL, NULL),
(955018952, 32640798, 773, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018953, 32640798, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018954, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(955018955, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL),
(955018956, 32640798, 774, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018957, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191163614093101, NULL, NULL, NULL, NULL, NULL, NULL),
(955018958, 32640798, 775, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018959, 32640798, 776, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018960, 32640798, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018961, 32640798, 777, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018962, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191162158873208, NULL, NULL, NULL, NULL, NULL, NULL),
(955018963, 283894, 782, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018964, 283894, 784, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018965, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1219316692407667, NULL, NULL, NULL, NULL, NULL, NULL),
(955018966, 32640798, 786, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018967, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191161390498916, NULL, NULL, NULL, NULL, NULL, NULL),
(955018968, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191162487580249, NULL, NULL, NULL, NULL, NULL, NULL),
(955018969, 32640798, 788, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018970, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191159971218407, NULL, NULL, NULL, NULL, NULL, NULL),
(955018971, 32640798, 790, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018972, 32640798, 792, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018973, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191162826067761, NULL, NULL, NULL, NULL, NULL, NULL),
(955018974, 32640798, 794, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018975, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191163630170646, NULL, NULL, NULL, NULL, NULL, NULL),
(955018976, 32640798, 796, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018977, 32640798, 798, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018978, 32640798, 800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018979, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191161897307231, NULL, NULL, NULL, NULL, NULL, NULL),
(955018980, 32640798, 802, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018981, 32640798, 804, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018982, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191162747001789, NULL, NULL, NULL, NULL, NULL, NULL),
(955018983, 32640798, 806, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018984, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191160849240630, NULL, NULL, NULL, NULL, NULL, NULL),
(955018985, 32640798, 808, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018986, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191160162080576, NULL, NULL, NULL, NULL, NULL, NULL),
(955018987, 32640798, 810, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018988, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191163577495982, NULL, NULL, NULL, NULL, NULL, NULL),
(955018989, 32640798, 812, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018990, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191163771238831, NULL, NULL, NULL, NULL, NULL, NULL),
(955018991, 32640798, 814, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018992, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191161366121238, NULL, NULL, NULL, NULL, NULL, NULL),
(955018993, 32640798, 816, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018994, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191162528937103, NULL, NULL, NULL, NULL, NULL, NULL),
(955018995, 32640798, 818, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018996, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191163634570511, NULL, NULL, NULL, NULL, NULL, NULL),
(955018997, 32640798, 820, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955018998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191162289541405, NULL, NULL, NULL, NULL, NULL, NULL),
(955018999, 32640798, 822, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191160425802182, NULL, NULL, NULL, NULL, NULL, NULL),
(955019001, 32640798, 824, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019002, 32640798, 825, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019003, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191162409982009, NULL, NULL, NULL, NULL, NULL, NULL),
(955019004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191163382297600, NULL, NULL, NULL, NULL, NULL, NULL),
(955019005, 32640798, 828, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019006, 32640798, 829, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019007, 32640798, 830, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191162510711444, NULL, NULL, NULL, NULL, NULL, NULL),
(955019009, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191161923360021, NULL, NULL, NULL, NULL, NULL, NULL),
(955019010, 32640798, 834, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019011, 283894, 838, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019012, 32640798, 839, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019013, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191161018460138, NULL, NULL, NULL, NULL, NULL, NULL),
(955019014, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1219317013901590, NULL, NULL, NULL, NULL, NULL, NULL),
(955019015, 283894, 842, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019016, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1219318256464545, NULL, NULL, NULL, NULL, NULL, NULL),
(955019017, 32640798, 844, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019018, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191161175399058, NULL, NULL, NULL, NULL, NULL, NULL),
(955019019, 283894, 846, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019020, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1219317061847181, NULL, NULL, NULL, NULL, NULL, NULL),
(955019021, 32640798, 848, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019022, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191162054866440, NULL, NULL, NULL, NULL, NULL, NULL),
(955019023, 32640798, 850, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019024, 283894, 851, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019025, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1219316053336289, NULL, NULL, NULL, NULL, NULL, NULL),
(955019026, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191161032273203, NULL, NULL, NULL, NULL, NULL, NULL),
(955019027, 283894, 856, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019028, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1219316624064207, NULL, NULL, NULL, NULL, NULL, NULL),
(955019036, 32640798, 859, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019037, 32640798, 860, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019038, 32640798, 861, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019039, 32640798, 862, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019040, 32640798, 864, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019041, 283894, 866, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019042, NULL, NULL, NULL, NULL, NULL, 140191163994174813, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019043, NULL, NULL, NULL, NULL, NULL, 140191161946504045, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019044, 32640798, 868, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019045, 283894, 869, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019046, NULL, NULL, NULL, NULL, NULL, 140191161073981768, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019047, NULL, NULL, NULL, NULL, NULL, 1219316755599228, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019048, 32640798, 872, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019049, 283894, 873, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019050, 32640798, 874, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019051, 32640798, 875, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019052, 32640798, 876, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019053, 283894, 877, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019054, 283894, 878, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019055, 32640798, 879, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019056, 283894, 880, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019057, NULL, NULL, NULL, NULL, NULL, 140191163538299595, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019058, NULL, NULL, NULL, NULL, NULL, 140191163537383685, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019059, NULL, NULL, NULL, NULL, NULL, 140191160586503174, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019060, NULL, NULL, NULL, NULL, NULL, 140191161694694703, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019061, 283894, 881, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019062, NULL, NULL, NULL, NULL, NULL, 140191163297048149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019063, NULL, NULL, NULL, NULL, NULL, 140191160987843510, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019064, NULL, NULL, NULL, NULL, NULL, 140191161969709953, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019065, NULL, NULL, NULL, NULL, NULL, 140191160086781648, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019066, 32640798, 883, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019067, 283894, 884, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019068, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1219317178128029, NULL, NULL, NULL, NULL, NULL, NULL),
(955019069, 283894, 887, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019070, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1219315636305963, NULL, NULL, NULL, NULL, NULL, NULL),
(955019071, 283894, 890, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019072, 283894, 892, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019074, 283894, 893, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019075, NULL, NULL, NULL, NULL, NULL, 1219318367829162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019076, 283894, 895, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019077, 283894, 897, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019078, 283894, 899, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019079, NULL, NULL, NULL, NULL, NULL, 140191162389047299, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019080, 283894, 900, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019081, NULL, NULL, NULL, NULL, NULL, 1219318498296453, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019082, NULL, NULL, NULL, NULL, NULL, 1219315901812786, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019083, NULL, NULL, NULL, NULL, NULL, 1219319447028909, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019084, NULL, NULL, NULL, NULL, NULL, 1219316334818276, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019085, NULL, NULL, NULL, NULL, NULL, 1219316029225527, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019086, NULL, NULL, NULL, NULL, NULL, 1219318500873335, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019087, 283894, 902, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019088, NULL, NULL, NULL, NULL, NULL, 1219316722269691, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019089, NULL, NULL, NULL, NULL, NULL, 1219319293009635, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019090, NULL, NULL, NULL, NULL, NULL, 1219318849658308, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019091, NULL, NULL, NULL, NULL, NULL, 1219319094431792, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019092, NULL, NULL, NULL, NULL, NULL, 1219317080631200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019093, NULL, NULL, NULL, NULL, NULL, 1219315677509820, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019094, NULL, NULL, NULL, NULL, NULL, 1219318480994313, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019095, NULL, NULL, NULL, NULL, NULL, 1219317847366917, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019096, NULL, NULL, NULL, NULL, NULL, 1219316106764791, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019097, 283894, 904, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019098, NULL, NULL, NULL, NULL, NULL, 1219315926958684, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019099, NULL, NULL, NULL, NULL, NULL, 1219316968504894, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019100, NULL, NULL, NULL, NULL, NULL, 1219317291590378, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019101, NULL, NULL, NULL, NULL, NULL, 1219316309626751, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019102, NULL, NULL, NULL, NULL, NULL, 1219317093400215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019103, 283894, 906, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019104, 283894, 908, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019105, 283894, 912, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019106, NULL, NULL, NULL, NULL, NULL, 1219315833950495, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019107, NULL, NULL, NULL, NULL, NULL, 1219318154240931, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019108, NULL, NULL, NULL, NULL, NULL, 1219317777060463, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019109, 283894, 914, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019110, NULL, NULL, NULL, NULL, NULL, 1219316635482985, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019111, NULL, NULL, NULL, NULL, NULL, 1219315765392734, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019112, 283894, 916, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019113, NULL, NULL, NULL, NULL, NULL, 1219318557708306, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019114, 283894, 918, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019115, NULL, NULL, NULL, NULL, NULL, 1219318064045341, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019116, 283894, 920, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019117, NULL, NULL, NULL, NULL, NULL, 1219319489330726, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019118, NULL, NULL, NULL, NULL, NULL, 1219315674562954, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019119, 283894, 922, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019120, NULL, NULL, NULL, NULL, NULL, 1219318640248207, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019121, NULL, NULL, NULL, NULL, NULL, 1219318545756440, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019122, 283894, 924, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019123, 283894, 926, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019124, 32640798, 927, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019125, 283894, 934, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019126, NULL, NULL, NULL, NULL, NULL, 1219316934123398, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019127, NULL, NULL, NULL, NULL, NULL, 1219319395165571, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019128, NULL, NULL, NULL, NULL, NULL, 1219317118604942, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019129, 283894, 936, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019130, NULL, NULL, NULL, NULL, NULL, 1219318533218496, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019131, NULL, NULL, NULL, NULL, NULL, 1219317343708318, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019132, NULL, NULL, NULL, NULL, NULL, 1219318241863511, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019133, NULL, NULL, NULL, NULL, NULL, 1219317005802172, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019134, 283894, 938, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019135, 32640798, 939, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019136, NULL, NULL, NULL, NULL, NULL, 1219315452664236, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019137, NULL, NULL, NULL, NULL, NULL, 1219315570094630, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019138, NULL, NULL, NULL, NULL, NULL, 1219319688571750, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019139, NULL, NULL, NULL, NULL, NULL, 1219319490150447, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019140, NULL, NULL, NULL, NULL, NULL, 1219319122077197, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019141, NULL, NULL, NULL, NULL, NULL, 140191162321308406, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019142, NULL, NULL, NULL, NULL, NULL, 140191161418752734, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019143, NULL, NULL, NULL, NULL, NULL, 140191161987474296, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019144, NULL, NULL, NULL, NULL, NULL, 140191161415488867, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019145, NULL, NULL, NULL, NULL, NULL, 1219316508474801, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019146, NULL, NULL, NULL, NULL, NULL, 1219315751677075, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019147, NULL, NULL, NULL, NULL, NULL, 1219317936343716, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019148, NULL, NULL, NULL, NULL, NULL, 1219319473436117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019149, NULL, NULL, NULL, NULL, NULL, 1219319705875557, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019150, NULL, NULL, NULL, NULL, NULL, 140191161676289395, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019151, NULL, NULL, NULL, NULL, NULL, 140191163676411734, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019152, 283894, 942, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019153, 32640798, 943, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019154, NULL, NULL, NULL, NULL, NULL, 140191160200535514, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019155, NULL, NULL, NULL, NULL, NULL, 140191162033241450, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019156, NULL, NULL, NULL, NULL, NULL, 140191160202971017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019157, 32640798, 944, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019158, 283894, 945, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019159, NULL, NULL, NULL, NULL, NULL, 1219319205764271, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019160, NULL, NULL, NULL, NULL, NULL, 1219318089613107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019161, NULL, NULL, NULL, NULL, NULL, 1219318254059471, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019162, NULL, NULL, NULL, NULL, NULL, 1219316424080413, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019163, 283894, 947, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019164, 32640798, 948, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019169, 32640798, 950, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019170, NULL, NULL, NULL, NULL, NULL, 140191161203970138, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019171, NULL, NULL, NULL, NULL, NULL, 140191163263036179, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019172, NULL, NULL, NULL, NULL, NULL, 140191161004648957, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019173, NULL, NULL, NULL, NULL, NULL, 140191163741307496, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019174, NULL, NULL, NULL, NULL, NULL, 140191161152438176, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019175, 32640798, 952, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019176, 32640798, 953, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019177, 32640798, 955, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019178, 32640798, 957, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019179, 32640798, 959, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019180, 32640798, 960, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019181, 32640798, 962, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019182, 32640798, 964, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019183, 32640798, 965, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019184, 32640798, 968, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019185, 32640798, 969, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019186, 32640798, 972, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019187, 32640798, 973, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019188, 32640798, 975, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019189, 32640798, 977, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019190, 32640798, 979, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019191, 32640798, 981, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019192, 32640798, 983, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019193, 32640798, 985, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019194, 32640798, 987, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019195, 32640798, 989, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019196, 32640798, 991, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019197, 32640798, 993, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019198, 32640798, 994, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019199, 32640798, 995, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019200, 32640798, 996, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019201, 32640798, 998, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019202, 32640798, 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019203, 32640798, 1002, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019204, 32640798, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019205, 32640798, 1004, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019206, 32640798, 1006, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019207, 32640798, 1008, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019208, 32640798, 1010, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019209, 32640798, 1012, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019210, 32640798, 1014, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019211, 32640798, 1015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019212, 32640798, 1017, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019213, 32640798, 1019, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019214, 32640798, 1021, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019215, 32640798, 1023, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019216, 32640798, 1025, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019217, 32640798, 1026, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019218, 32640798, 1027, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019219, NULL, NULL, NULL, NULL, NULL, 140191163442331811, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019220, NULL, NULL, NULL, NULL, NULL, 140191162663704393, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019221, NULL, NULL, NULL, NULL, NULL, 140191160415632754, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019222, NULL, NULL, NULL, NULL, NULL, 140191161519395359, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019223, NULL, NULL, NULL, NULL, NULL, 140191160901324094, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019224, NULL, NULL, NULL, NULL, NULL, 140191160937291509, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019225, NULL, NULL, NULL, NULL, NULL, 140191162915037600, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019226, NULL, NULL, NULL, NULL, NULL, 140191161490705659, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019227, NULL, NULL, NULL, NULL, NULL, 140191163428440147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019228, NULL, NULL, NULL, NULL, NULL, 140191160594457637, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019229, NULL, NULL, NULL, NULL, NULL, 140191160107100935, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019230, NULL, NULL, NULL, NULL, NULL, 140191162787412402, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019231, 32640798, 1030, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019232, 32640798, 1031, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019233, 32640798, 1032, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019234, 32640798, 1034, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019235, 32640798, 1035, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019236, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191160651588713, NULL, NULL, NULL, NULL, NULL, NULL),
(955019237, 32640798, 1037, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019238, 32640798, 1038, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019239, 32640798, 1039, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191163106007237, NULL, NULL, NULL, NULL, NULL, NULL),
(955019241, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191163390879333, NULL, NULL, NULL, NULL, NULL, NULL),
(955019242, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191160176504795, NULL, NULL, NULL, NULL, NULL, NULL),
(955019243, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191163186665632, NULL, NULL, NULL, NULL, NULL, NULL),
(955019244, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191163100069646, NULL, NULL, NULL, NULL, NULL, NULL),
(955019245, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191163026271124, NULL, NULL, NULL, NULL, NULL, NULL),
(955019246, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191161028009524, NULL, NULL, NULL, NULL, NULL, NULL),
(955019247, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191162646265229, NULL, NULL, NULL, NULL, NULL, NULL),
(955019248, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191163938496334, NULL, NULL, NULL, NULL, NULL, NULL),
(955019249, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191160377268687, NULL, NULL, NULL, NULL, NULL, NULL),
(955019250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191164072841397, NULL, NULL, NULL, NULL, NULL, NULL),
(955019251, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191162228209993, NULL, NULL, NULL, NULL, NULL, NULL),
(955019252, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191161808530411, NULL, NULL, NULL, NULL, NULL, NULL),
(955019253, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191162342709905, NULL, NULL, NULL, NULL, NULL, NULL),
(955019254, 32640798, 1041, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019255, 32640798, 1043, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019256, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191161350417927, NULL, NULL, NULL, NULL, NULL, NULL),
(955019257, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191163942829292, NULL, NULL, NULL, NULL, NULL, NULL),
(955019258, 32640798, 1044, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019259, 32640798, 1045, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019260, 32640798, 1046, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019261, 32640798, 1047, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019262, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191162619671320, NULL, NULL, NULL, NULL, NULL, NULL),
(955019263, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191163798755230, NULL, NULL, NULL, NULL, NULL, NULL),
(955019264, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191162918586303, NULL, NULL, NULL, NULL, NULL, NULL),
(955019265, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191160285292858, NULL, NULL, NULL, NULL, NULL, NULL),
(955019266, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191161329984830, NULL, NULL, NULL, NULL, NULL, NULL),
(955019267, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191163444944013, NULL, NULL, NULL, NULL, NULL, NULL),
(955019268, 32640798, 1050, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019269, 32640798, 1051, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019270, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191164204978223, NULL, NULL, NULL, NULL, NULL, NULL),
(955019271, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191161305718708, NULL, NULL, NULL, NULL, NULL, NULL),
(955019272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191162453392759, NULL, NULL, NULL, NULL, NULL, NULL),
(955019273, 32640798, 1055, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019274, 32640798, 1056, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019275, 32640798, 1057, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019276, 32640798, 1058, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019277, 32640798, 1059, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019278, 32640798, 1061, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019279, 32640798, 1063, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019280, 32640798, 1064, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019281, 32640798, 1065, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019282, 32640798, 1067, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019283, 32640798, 1068, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019284, NULL, NULL, NULL, NULL, NULL, 140191160712050915, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019285, NULL, NULL, NULL, NULL, NULL, 140191162826276365, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019286, NULL, NULL, NULL, NULL, NULL, 140191161776861403, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019287, NULL, NULL, NULL, NULL, NULL, 140191162978026229, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019288, NULL, NULL, NULL, NULL, NULL, 140191162368555687, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019289, 32640798, 1070, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019290, 32640798, 1071, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019291, 32640798, 1072, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019292, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191161137856195, NULL, NULL, NULL, NULL, NULL, NULL),
(955019293, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191163607291355, NULL, NULL, NULL, NULL, NULL, NULL),
(955019294, 32640798, 1076, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019295, 32640798, 1077, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019296, 32640798, 1078, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019297, 32640798, 1079, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019298, 32640798, 1081, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019299, 32640798, 1083, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019300, 32640798, 1084, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019301, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191162414607421, NULL, NULL, NULL, NULL, NULL, NULL),
(955019302, 32640798, 1086, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019303, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191161554393542, NULL, NULL, NULL, NULL, NULL, NULL),
(955019304, 32640798, 1088, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019305, 32640798, 1089, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019306, 32640798, 1090, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019307, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191163869022132, NULL, NULL, NULL, NULL, NULL, NULL),
(955019308, 32640798, 1092, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019309, 32640798, 1093, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019310, 32640798, 1094, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019311, 32640798, 1095, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019312, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191164116141149, NULL, NULL, NULL, NULL, NULL, NULL),
(955019313, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191160430479359, NULL, NULL, NULL, NULL, NULL, NULL),
(955019314, 32640798, 1098, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019315, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191163222815739, NULL, NULL, NULL, NULL, NULL, NULL),
(955019316, 32640798, 1100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019317, 32640798, 1101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019318, 32640798, 1102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019319, 32640798, 1103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019320, 32640798, 1104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019321, 32640798, 1105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019322, 32640798, 1106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019323, 32640798, 1107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019324, 32640798, 1108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019325, 32640798, 1109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019326, 32640798, 1110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019327, 32640798, 1111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019328, 32640798, 1112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019329, 32640798, 1113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019330, 32640798, 1114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019331, 32640798, 1115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019332, 32640798, 1116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019333, 32640798, 1117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019334, 32640798, 1118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019335, 32640798, 1119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019336, 32640798, 1120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019337, 32640798, 1121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019338, 32640798, 1122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019339, 32640798, 1123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019340, 32640798, 1124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019341, 32640798, 1125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019342, 32640798, 1126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019343, 283894, 1127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019344, 32640798, 1129, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019345, 32640798, 1131, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019346, 283894, 1133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019347, 32640798, 1135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019348, 32640798, 1137, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019349, 32640798, 1139, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019350, 32640798, 1141, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019351, 283894, 1143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019352, 32640798, 1145, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019353, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191163446091509, NULL, NULL, NULL, NULL, NULL, NULL),
(955019354, 32640798, 1148, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019355, 32640798, 1149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019356, 32640798, 1150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019357, 32640798, 1151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019358, 32640798, 1152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019359, 32640798, 1153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019360, 32640798, 1154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019361, 32640798, 1155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019362, 32640798, 1156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019363, 32640798, 1157, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019364, 32640798, 1158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019365, 32640798, 1159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019366, 32640798, 1160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019367, 32640798, 1161, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019368, NULL, NULL, NULL, NULL, NULL, 140191163441009098, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019369, NULL, NULL, NULL, NULL, NULL, 140191162741957620, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019370, NULL, NULL, NULL, NULL, NULL, 140191161278780744, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019371, 32640798, 1163, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019372, 32640798, 1164, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `telegram_update` (`id`, `chat_id`, `message_id`, `edited_message_id`, `channel_post_id`, `edited_channel_post_id`, `inline_query_id`, `chosen_inline_result_id`, `callback_query_id`, `shipping_query_id`, `pre_checkout_query_id`, `poll_id`, `poll_answer_poll_id`, `my_chat_member_updated_id`, `chat_member_updated_id`) VALUES
(955019373, 32640798, 1166, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019374, 32640798, 1168, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019375, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191163868014283, NULL, NULL, NULL, NULL, NULL, NULL),
(955019376, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191160303547336, NULL, NULL, NULL, NULL, NULL, NULL),
(955019377, 32640798, 1172, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019378, 32640798, 1173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019379, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191163665648257, NULL, NULL, NULL, NULL, NULL, NULL),
(955019380, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191162901525150, NULL, NULL, NULL, NULL, NULL, NULL),
(955019381, 32640798, 1177, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019382, 32640798, 1178, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019383, NULL, NULL, NULL, NULL, NULL, 140191163374538914, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019384, NULL, NULL, NULL, NULL, NULL, 140191162430667644, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019385, NULL, NULL, NULL, NULL, NULL, 140191163574273985, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019386, 32640798, 1180, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019387, 32640798, 1181, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019388, 32640798, 1182, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019389, 32640798, 1183, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019390, 32640798, 1185, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019391, 32640798, 1186, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019392, 32640798, 1187, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019393, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191163668050465, NULL, NULL, NULL, NULL, NULL, NULL),
(955019394, 32640798, 1191, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019395, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191163342317074, NULL, NULL, NULL, NULL, NULL, NULL),
(955019396, 32640798, 1193, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019397, 32640798, 1195, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019398, 32640798, 1196, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019399, 32640798, 1197, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019400, 32640798, 1198, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019401, 32640798, 1200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019402, 32640798, 1201, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019403, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191164008573244, NULL, NULL, NULL, NULL, NULL, NULL),
(955019404, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191162807749325, NULL, NULL, NULL, NULL, NULL, NULL),
(955019405, 32640798, 1205, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019406, 32640798, 1206, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019407, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191163850647199, NULL, NULL, NULL, NULL, NULL, NULL),
(955019408, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191162057476476, NULL, NULL, NULL, NULL, NULL, NULL),
(955019409, 32640798, 1210, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019410, 32640798, 1211, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019411, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191160632471290, NULL, NULL, NULL, NULL, NULL, NULL),
(955019412, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191162085420096, NULL, NULL, NULL, NULL, NULL, NULL),
(955019413, 32640798, 1215, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019414, 32640798, 1216, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019415, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191162848290156, NULL, NULL, NULL, NULL, NULL, NULL),
(955019416, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191161417213211, NULL, NULL, NULL, NULL, NULL, NULL),
(955019417, 32640798, 1220, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019418, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191163782682472, NULL, NULL, NULL, NULL, NULL, NULL),
(955019419, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191160625346119, NULL, NULL, NULL, NULL, NULL, NULL),
(955019420, 32640798, 1224, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019421, 32640798, 1225, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019422, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191162219622009, NULL, NULL, NULL, NULL, NULL, NULL),
(955019423, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191163035443299, NULL, NULL, NULL, NULL, NULL, NULL),
(955019424, 32640798, 1229, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019425, 32640798, 1230, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019426, 32640798, 1231, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019427, 32640798, 1232, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019428, 32640798, 1233, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019429, 32640798, 1234, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019430, 32640798, 1235, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019431, NULL, NULL, NULL, NULL, NULL, 140191163127586099, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019432, 32640798, 1237, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019433, NULL, NULL, NULL, NULL, NULL, 140191162688794919, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019434, 32640798, 1238, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019435, 32640798, 1239, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019436, 32640798, 1240, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019437, 32640798, 1241, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019438, 32640798, 1242, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019439, 32640798, 1244, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019440, 32640798, 1245, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019441, 32640798, 1246, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019442, 32640798, 1248, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019443, 32640798, 1249, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019444, 32640798, 1251, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019445, 32640798, 1252, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019446, 32640798, 1254, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019447, 32640798, 1255, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019448, 32640798, 1257, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019449, 32640798, 1258, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019450, 32640798, 1260, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019451, 32640798, 1262, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019452, 32640798, 1264, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019453, 32640798, 1266, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019454, 32640798, 1268, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019455, 32640798, 1270, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019456, 32640798, 1272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019457, 32640798, 1274, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019458, 32640798, 1276, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019459, 32640798, 1278, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019460, 32640798, 1279, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019461, 32640798, 1280, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019462, 32640798, 1281, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019463, 32640798, 1282, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019464, 32640798, 1283, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019465, 32640798, 1284, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019466, 32640798, 1285, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019467, 32640798, 1287, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019468, 32640798, 1289, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019469, 32640798, 1291, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019470, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191164010102707, NULL, NULL, NULL, NULL, NULL, NULL),
(955019471, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191162066822662, NULL, NULL, NULL, NULL, NULL, NULL),
(955019472, 32640798, 1293, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019473, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191162482181335, NULL, NULL, NULL, NULL, NULL, NULL),
(955019474, 32640798, 1295, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019475, 32640798, 1296, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019476, 32640798, 1297, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019477, 32640798, 1299, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019478, 32640798, 1300, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019479, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191163407516546, NULL, NULL, NULL, NULL, NULL, NULL),
(955019480, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191161683921071, NULL, NULL, NULL, NULL, NULL, NULL),
(955019481, 32640798, 1302, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019482, 32640798, 1303, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019483, 32640798, 1306, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019484, 32640798, 1308, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019485, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191160148057362, NULL, NULL, NULL, NULL, NULL, NULL),
(955019486, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191163522610208, NULL, NULL, NULL, NULL, NULL, NULL),
(955019487, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191162780500652, NULL, NULL, NULL, NULL, NULL, NULL),
(955019488, 32640798, 1310, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019489, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191162662121508, NULL, NULL, NULL, NULL, NULL, NULL),
(955019490, 32640798, 1312, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019491, 32640798, 1313, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019492, 32640798, 1315, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019493, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191161174936917, NULL, NULL, NULL, NULL, NULL, NULL),
(955019494, 32640798, 1318, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019495, 32640798, 1320, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019496, 32640798, 1322, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019497, 32640798, 1323, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019498, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191160000443656, NULL, NULL, NULL, NULL, NULL, NULL),
(955019499, 32640798, 1326, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019500, 32640798, 1328, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019501, 32640798, 1329, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019502, 32640798, 1331, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019503, 32640798, 1332, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019504, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191162468947045, NULL, NULL, NULL, NULL, NULL, NULL),
(955019505, 32640798, 1335, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019506, 32640798, 1337, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019507, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191161342822048, NULL, NULL, NULL, NULL, NULL, NULL),
(955019508, 32640798, 1340, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019509, 32640798, 1342, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019510, 32640798, 1343, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019511, 32640798, 1345, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019512, 32640798, 1346, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019513, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191162203637722, NULL, NULL, NULL, NULL, NULL, NULL),
(955019514, 32640798, 1349, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019515, 32640798, 1351, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019516, 32640798, 1353, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019517, 32640798, 1354, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(955019518, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 140191162948290418, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` bigint NOT NULL COMMENT 'Unique identifier for this user or bot',
  `is_bot` tinyint(1) DEFAULT '0' COMMENT 'True, if this user is a bot',
  `first_name` char(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '' COMMENT 'User''s or bot''s first name',
  `last_name` char(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'User''s or bot''s last name',
  `username` char(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'User''s or bot''s username',
  `language_code` char(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL COMMENT 'IETF language tag of the user''s language',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Entry date creation',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Entry date update'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `is_bot`, `first_name`, `last_name`, `username`, `language_code`, `created_at`, `updated_at`) VALUES
(283894, 0, 'Дмитрий', 'Шегай', 'Dee_so0', 'ru', '2021-11-22 08:56:53', '2021-12-01 06:29:19'),
(32640798, 0, 'Евгений', 'Пак', 'nn_mrpark', 'en', '2021-11-23 05:06:19', '2021-12-09 04:56:06'),
(1855436069, 0, '叶问', 'ABDUROZIQOV', NULL, 'uz', '2021-11-24 04:05:32', '2021-11-24 04:08:14'),
(2083989238, 1, 'SharifSteelBot', NULL, 'sharif_steel_bot', NULL, '2021-11-24 07:10:58', '2021-12-09 04:55:54');

-- --------------------------------------------------------

--
-- Структура таблицы `user_chat`
--

CREATE TABLE `user_chat` (
  `user_id` bigint NOT NULL COMMENT 'Unique user identifier',
  `chat_id` bigint NOT NULL COMMENT 'Unique user or chat identifier'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `user_chat`
--

INSERT INTO `user_chat` (`user_id`, `chat_id`) VALUES
(283894, 283894),
(2083989238, 283894),
(32640798, 32640798),
(2083989238, 32640798),
(1855436069, 1855436069);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `callback_query`
--
ALTER TABLE `callback_query`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `chat_id` (`chat_id`),
  ADD KEY `message_id` (`message_id`),
  ADD KEY `chat_id_2` (`chat_id`,`message_id`);

--
-- Индексы таблицы `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `old_id` (`old_id`);

--
-- Индексы таблицы `chat_member_updated`
--
ALTER TABLE `chat_member_updated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_id` (`chat_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `chosen_inline_result`
--
ALTER TABLE `chosen_inline_result`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `conversation`
--
ALTER TABLE `conversation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `chat_id` (`chat_id`),
  ADD KEY `status` (`status`);

--
-- Индексы таблицы `edited_message`
--
ALTER TABLE `edited_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_id` (`chat_id`),
  ADD KEY `message_id` (`message_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `chat_id_2` (`chat_id`,`message_id`);

--
-- Индексы таблицы `inline_query`
--
ALTER TABLE `inline_query`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`chat_id`,`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `forward_from` (`forward_from`),
  ADD KEY `forward_from_chat` (`forward_from_chat`),
  ADD KEY `reply_to_chat` (`reply_to_chat`),
  ADD KEY `reply_to_message` (`reply_to_message`),
  ADD KEY `via_bot` (`via_bot`),
  ADD KEY `left_chat_member` (`left_chat_member`),
  ADD KEY `migrate_from_chat_id` (`migrate_from_chat_id`),
  ADD KEY `migrate_to_chat_id` (`migrate_to_chat_id`),
  ADD KEY `reply_to_chat_2` (`reply_to_chat`,`reply_to_message`);

--
-- Индексы таблицы `poll`
--
ALTER TABLE `poll`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `poll_answer`
--
ALTER TABLE `poll_answer`
  ADD PRIMARY KEY (`poll_id`,`user_id`);

--
-- Индексы таблицы `pre_checkout_query`
--
ALTER TABLE `pre_checkout_query`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `request_limiter`
--
ALTER TABLE `request_limiter`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sharif_granted_rights`
--
ALTER TABLE `sharif_granted_rights`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Индексы таблицы `sharif_items`
--
ALTER TABLE `sharif_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `sharif_reservations_comments`
--
ALTER TABLE `sharif_reservations_comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sharif_rights`
--
ALTER TABLE `sharif_rights`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sharif_roles`
--
ALTER TABLE `sharif_roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sharif_temp_purchases`
--
ALTER TABLE `sharif_temp_purchases`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `sharif_temp_reservations`
--
ALTER TABLE `sharif_temp_reservations`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `sharif_temp_sales`
--
ALTER TABLE `sharif_temp_sales`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `sharif_users`
--
ALTER TABLE `sharif_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Индексы таблицы `sharif_waiting_roles`
--
ALTER TABLE `sharif_waiting_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Индексы таблицы `shipping_query`
--
ALTER TABLE `shipping_query`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `telegram_update`
--
ALTER TABLE `telegram_update`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_id` (`message_id`),
  ADD KEY `chat_message_id` (`chat_id`,`message_id`),
  ADD KEY `edited_message_id` (`edited_message_id`),
  ADD KEY `channel_post_id` (`channel_post_id`),
  ADD KEY `edited_channel_post_id` (`edited_channel_post_id`),
  ADD KEY `inline_query_id` (`inline_query_id`),
  ADD KEY `chosen_inline_result_id` (`chosen_inline_result_id`),
  ADD KEY `callback_query_id` (`callback_query_id`),
  ADD KEY `shipping_query_id` (`shipping_query_id`),
  ADD KEY `pre_checkout_query_id` (`pre_checkout_query_id`),
  ADD KEY `poll_id` (`poll_id`),
  ADD KEY `poll_answer_poll_id` (`poll_answer_poll_id`),
  ADD KEY `my_chat_member_updated_id` (`my_chat_member_updated_id`),
  ADD KEY `chat_member_updated_id` (`chat_member_updated_id`),
  ADD KEY `chat_id` (`chat_id`,`channel_post_id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Индексы таблицы `user_chat`
--
ALTER TABLE `user_chat`
  ADD PRIMARY KEY (`user_id`,`chat_id`),
  ADD KEY `chat_id` (`chat_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `chat_member_updated`
--
ALTER TABLE `chat_member_updated`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for this entry', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `chosen_inline_result`
--
ALTER TABLE `chosen_inline_result`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for this entry';

--
-- AUTO_INCREMENT для таблицы `conversation`
--
ALTER TABLE `conversation`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for this entry', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `edited_message`
--
ALTER TABLE `edited_message`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for this entry', AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблицы `request_limiter`
--
ALTER TABLE `request_limiter`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for this entry';

--
-- AUTO_INCREMENT для таблицы `sharif_granted_rights`
--
ALTER TABLE `sharif_granted_rights`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sharif_reservations_comments`
--
ALTER TABLE `sharif_reservations_comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sharif_waiting_roles`
--
ALTER TABLE `sharif_waiting_roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `callback_query`
--
ALTER TABLE `callback_query`
  ADD CONSTRAINT `callback_query_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `callback_query_ibfk_2` FOREIGN KEY (`chat_id`,`message_id`) REFERENCES `message` (`chat_id`, `id`);

--
-- Ограничения внешнего ключа таблицы `chat_member_updated`
--
ALTER TABLE `chat_member_updated`
  ADD CONSTRAINT `chat_member_updated_ibfk_1` FOREIGN KEY (`chat_id`) REFERENCES `chat` (`id`),
  ADD CONSTRAINT `chat_member_updated_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ограничения внешнего ключа таблицы `chosen_inline_result`
--
ALTER TABLE `chosen_inline_result`
  ADD CONSTRAINT `chosen_inline_result_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ограничения внешнего ключа таблицы `conversation`
--
ALTER TABLE `conversation`
  ADD CONSTRAINT `conversation_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `conversation_ibfk_2` FOREIGN KEY (`chat_id`) REFERENCES `chat` (`id`);

--
-- Ограничения внешнего ключа таблицы `edited_message`
--
ALTER TABLE `edited_message`
  ADD CONSTRAINT `edited_message_ibfk_1` FOREIGN KEY (`chat_id`) REFERENCES `chat` (`id`),
  ADD CONSTRAINT `edited_message_ibfk_2` FOREIGN KEY (`chat_id`,`message_id`) REFERENCES `message` (`chat_id`, `id`),
  ADD CONSTRAINT `edited_message_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ограничения внешнего ключа таблицы `inline_query`
--
ALTER TABLE `inline_query`
  ADD CONSTRAINT `inline_query_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ограничения внешнего ключа таблицы `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `message_ibfk_2` FOREIGN KEY (`chat_id`) REFERENCES `chat` (`id`),
  ADD CONSTRAINT `message_ibfk_3` FOREIGN KEY (`forward_from`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `message_ibfk_4` FOREIGN KEY (`forward_from_chat`) REFERENCES `chat` (`id`),
  ADD CONSTRAINT `message_ibfk_5` FOREIGN KEY (`reply_to_chat`,`reply_to_message`) REFERENCES `message` (`chat_id`, `id`),
  ADD CONSTRAINT `message_ibfk_6` FOREIGN KEY (`via_bot`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `message_ibfk_7` FOREIGN KEY (`left_chat_member`) REFERENCES `user` (`id`);

--
-- Ограничения внешнего ключа таблицы `poll_answer`
--
ALTER TABLE `poll_answer`
  ADD CONSTRAINT `poll_answer_ibfk_1` FOREIGN KEY (`poll_id`) REFERENCES `poll` (`id`);

--
-- Ограничения внешнего ключа таблицы `pre_checkout_query`
--
ALTER TABLE `pre_checkout_query`
  ADD CONSTRAINT `pre_checkout_query_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ограничения внешнего ключа таблицы `shipping_query`
--
ALTER TABLE `shipping_query`
  ADD CONSTRAINT `shipping_query_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ограничения внешнего ключа таблицы `telegram_update`
--
ALTER TABLE `telegram_update`
  ADD CONSTRAINT `telegram_update_ibfk_1` FOREIGN KEY (`chat_id`,`message_id`) REFERENCES `message` (`chat_id`, `id`),
  ADD CONSTRAINT `telegram_update_ibfk_10` FOREIGN KEY (`poll_id`) REFERENCES `poll` (`id`),
  ADD CONSTRAINT `telegram_update_ibfk_11` FOREIGN KEY (`poll_answer_poll_id`) REFERENCES `poll_answer` (`poll_id`),
  ADD CONSTRAINT `telegram_update_ibfk_12` FOREIGN KEY (`my_chat_member_updated_id`) REFERENCES `chat_member_updated` (`id`),
  ADD CONSTRAINT `telegram_update_ibfk_13` FOREIGN KEY (`chat_member_updated_id`) REFERENCES `chat_member_updated` (`id`),
  ADD CONSTRAINT `telegram_update_ibfk_2` FOREIGN KEY (`edited_message_id`) REFERENCES `edited_message` (`id`),
  ADD CONSTRAINT `telegram_update_ibfk_3` FOREIGN KEY (`chat_id`,`channel_post_id`) REFERENCES `message` (`chat_id`, `id`),
  ADD CONSTRAINT `telegram_update_ibfk_4` FOREIGN KEY (`edited_channel_post_id`) REFERENCES `edited_message` (`id`),
  ADD CONSTRAINT `telegram_update_ibfk_5` FOREIGN KEY (`inline_query_id`) REFERENCES `inline_query` (`id`),
  ADD CONSTRAINT `telegram_update_ibfk_6` FOREIGN KEY (`chosen_inline_result_id`) REFERENCES `chosen_inline_result` (`id`),
  ADD CONSTRAINT `telegram_update_ibfk_7` FOREIGN KEY (`callback_query_id`) REFERENCES `callback_query` (`id`),
  ADD CONSTRAINT `telegram_update_ibfk_8` FOREIGN KEY (`shipping_query_id`) REFERENCES `shipping_query` (`id`),
  ADD CONSTRAINT `telegram_update_ibfk_9` FOREIGN KEY (`pre_checkout_query_id`) REFERENCES `pre_checkout_query` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_chat`
--
ALTER TABLE `user_chat`
  ADD CONSTRAINT `user_chat_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_chat_ibfk_2` FOREIGN KEY (`chat_id`) REFERENCES `chat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
