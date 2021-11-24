-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Ноя 24 2021 г., 08:03
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
(283894, 'private', NULL, 'Dee_so0', 'Дмитрий', 'Шегай', NULL, '2021-11-22 08:56:53', '2021-11-22 08:56:53', NULL),
(32640798, 'private', NULL, 'nn_mrpark', 'Евгений', 'Пак', NULL, '2021-11-23 05:06:19', '2021-11-23 05:07:27', NULL);

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
(32640798, NULL, 425, 32640798, '2021-11-23 05:06:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-23 05:06:25', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 427, 32640798, '2021-11-23 05:07:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-23 05:07:02', NULL, NULL, '/getitems', '[{\"offset\":0,\"length\":9,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32640798, NULL, 429, 32640798, '2021-11-23 05:07:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-23 05:07:31', NULL, NULL, '/viewitems', '[{\"offset\":0,\"length\":10,\"type\":\"bot_command\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
  `amount` double NOT NULL,
  `price_per_unit` double NOT NULL,
  `booked` double NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `sharif_items`
--

INSERT INTO `sharif_items` (`id`, `name`, `amount`, `price_per_unit`, `booked`, `price`) VALUES
(1001, 'труба БШ 219х8', 1113, 8.984725965858, 0, 10000),
(1002, 'труба БШ 89х6,0', 6119, 1.6342539630659, 0, 10000),
(1003, 'труба БШ 76х5,0', 2437, 4.1034058268363, 0, 10000),
(1004, 'Труба ЭЛВС 325х7', 775, 12.903225806452, 0, 10000),
(1005, 'Труба ЭЛВС 273х6', 1517, 6.59195781147, 0, 10000),
(1006, 'Труба круглая 219х5', 8853, 1.1295606009262, 0, 10000),
(1007, 'Труба квадр.160х160х5', 5145, 1.9436345966958, 0, 10000),
(1008, 'Труба квадр.160х160х6', 9503, 1.0522992739135, 0, 10000),
(1009, '180х180х5', 1361, 7.3475385745775, 0, 10000),
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
(4003, 'лист х/к 0,7 (1,25х2,5) Арселор', 8859, 1.1287955751213, 0, 10000),
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
(6003, 'Арм ф 8 пруток', 1094, 9.1407678244973, 0, 10000),
(6004, 'Арм ф10 А 500 ЕКС', 2023, 4.9431537320811, 0, 10000),
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
-- Структура таблицы `sharif_users`
--

CREATE TABLE `sharif_users` (
  `id` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` int NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
(955018810, 32640798, 429, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
(283894, 0, 'Дмитрий', 'Шегай', 'Dee_so0', 'ru', '2021-11-22 08:56:53', '2021-11-22 08:56:53'),
(32640798, 0, 'Евгений', 'Пак', 'nn_mrpark', 'en', '2021-11-23 05:06:19', '2021-11-23 05:07:27');

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
(32640798, 32640798);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for this entry';

--
-- AUTO_INCREMENT для таблицы `chosen_inline_result`
--
ALTER TABLE `chosen_inline_result`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for this entry';

--
-- AUTO_INCREMENT для таблицы `conversation`
--
ALTER TABLE `conversation`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for this entry';

--
-- AUTO_INCREMENT для таблицы `edited_message`
--
ALTER TABLE `edited_message`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for this entry';

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
-- AUTO_INCREMENT для таблицы `sharif_waiting_roles`
--
ALTER TABLE `sharif_waiting_roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

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
