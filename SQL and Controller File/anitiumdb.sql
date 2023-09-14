-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 14 Eyl 2023, 09:26:36
-- Sunucu sürümü: 8.0.31
-- PHP Sürümü: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `anitiumdb`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `anime`
--

DROP TABLE IF EXISTS `anime`;
CREATE TABLE IF NOT EXISTS `anime` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL,
  `sid` int NOT NULL,
  `ani_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ani_jname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ani_synonyms` varchar(550) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ani_genre` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ani_type` int NOT NULL,
  `ani_country` int NOT NULL,
  `ani_stats` int NOT NULL,
  `ani_source` int NOT NULL,
  `ani_ep` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ani_synopsis` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ani_poster` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ani_release` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ani_release_season` int NOT NULL,
  `ani_rate` int NOT NULL,
  `ani_score` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ani_quality` int NOT NULL DEFAULT '0',
  `ani_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ani_pv` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ani_aired` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ani_aired_fin` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ani_studio` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ani_producers` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ani_manga_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ani_offical_site` json DEFAULT NULL,
  `view_count` int NOT NULL,
  `view_count_month` int NOT NULL,
  `view_count_years` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `ani_name` (`ani_name`),
  KEY `ani_jname` (`ani_jname`),
  KEY `ani_type` (`ani_type`),
  KEY `ani_stats` (`ani_stats`),
  KEY `ani_source` (`ani_source`),
  KEY `ani_country` (`ani_country`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `anime_slider`
--

DROP TABLE IF EXISTS `anime_slider`;
CREATE TABLE IF NOT EXISTS `anime_slider` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slideruid` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sliderwallpaper` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `anime_slider`
--

INSERT INTO `anime_slider` (`id`, `slideruid`, `sliderwallpaper`) VALUES
(1, '40496', 'https://pbs.twimg.com/media/FmDAb_BXEAELp7B?format=png&name=small'),
(2, '54595', 'https://wallpapercave.com/wp/wp11900275.png'),
(3, '52611', 'https://imgur.com/lk2zshj.png'),
(4, '', ''),
(5, '', ''),
(6, '', ''),
(7, '', ''),
(8, '', ''),
(9, '', ''),
(10, '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `anime_status`
--

DROP TABLE IF EXISTS `anime_status`;
CREATE TABLE IF NOT EXISTS `anime_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `anime_uid` int NOT NULL,
  `user_status` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ani_schedule`
--

DROP TABLE IF EXISTS `ani_schedule`;
CREATE TABLE IF NOT EXISTS `ani_schedule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sc_days` int NOT NULL,
  `sc_id` int NOT NULL,
  `sc_ep` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sc_time` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `auth_groups_users`
--

DROP TABLE IF EXISTS `auth_groups_users`;
CREATE TABLE IF NOT EXISTS `auth_groups_users` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL,
  `group` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_groups_users_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`id`, `user_id`, `group`, `created_at`) VALUES
(1, 1, 'superadmin', '2023-05-12 19:52:20');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `auth_identities`
--

DROP TABLE IF EXISTS `auth_identities`;
CREATE TABLE IF NOT EXISTS `auth_identities` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `secret` varchar(255) NOT NULL,
  `secret2` varchar(255) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `extra` text,
  `force_reset` tinyint(1) NOT NULL DEFAULT '0',
  `last_used_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_secret` (`type`,`secret`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `auth_identities`
--

INSERT INTO `auth_identities` (`id`, `user_id`, `type`, `name`, `secret`, `secret2`, `expires`, `extra`, `force_reset`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'email_password', NULL, 'admin@gmail.com', '$2y$10$fNW/eSalcB5LeMBF152cCO1d66QFBnVDaPNO10.xpZ8PPyW6J4a/m', NULL, NULL, 0, '2023-09-14 08:42:44', '2023-05-12 19:52:20', '2023-09-14 08:42:44');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `auth_logins`
--

DROP TABLE IF EXISTS `auth_logins`;
CREATE TABLE IF NOT EXISTS `auth_logins` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_type_identifier` (`id_type`,`identifier`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `user_agent`, `id_type`, `identifier`, `user_id`, `date`, `success`) VALUES
(185, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-11 13:30:15', 1),
(186, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-11 13:39:43', 1),
(187, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-11 13:42:12', 1),
(188, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-11 20:06:51', 1),
(189, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-14 08:42:44', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `auth_permissions_users`
--

DROP TABLE IF EXISTS `auth_permissions_users`;
CREATE TABLE IF NOT EXISTS `auth_permissions_users` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL,
  `permission` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_permissions_users_user_id_foreign` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `auth_remember_tokens`
--

DROP TABLE IF EXISTS `auth_remember_tokens`;
CREATE TABLE IF NOT EXISTS `auth_remember_tokens` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `expires` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `selector` (`selector`),
  KEY `auth_remember_tokens_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `auth_token_logins`
--

DROP TABLE IF EXISTS `auth_token_logins`;
CREATE TABLE IF NOT EXISTS `auth_token_logins` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_type_identifier` (`id_type`,`identifier`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `community`
--

DROP TABLE IF EXISTS `community`;
CREATE TABLE IF NOT EXISTS `community` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  `post_tag` int NOT NULL,
  `post_head` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `post_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `community_main_rep`
--

DROP TABLE IF EXISTS `community_main_rep`;
CREATE TABLE IF NOT EXISTS `community_main_rep` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  `post_rep` int NOT NULL,
  `post_disrep` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `community_post`
--

DROP TABLE IF EXISTS `community_post`;
CREATE TABLE IF NOT EXISTS `community_post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  `post_c_id` int NOT NULL,
  `post_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `community_repy_post`
--

DROP TABLE IF EXISTS `community_repy_post`;
CREATE TABLE IF NOT EXISTS `community_repy_post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `post_u_id` int NOT NULL,
  `post_c_id` int NOT NULL,
  `post_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `community_repy_rep`
--

DROP TABLE IF EXISTS `community_repy_rep`;
CREATE TABLE IF NOT EXISTS `community_repy_rep` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  `post_rep` int NOT NULL,
  `post_disrep` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `community_vote`
--

DROP TABLE IF EXISTS `community_vote`;
CREATE TABLE IF NOT EXISTS `community_vote` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  `post_rep` int NOT NULL,
  `post_disrep` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `episode`
--

DROP TABLE IF EXISTS `episode`;
CREATE TABLE IF NOT EXISTS `episode` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL,
  `ep_id_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ep_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ep_jname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ep_romaji` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ep_aired` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ep_view` int NOT NULL,
  `ep_view_month` int NOT NULL,
  `ep_view_years` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `episode_comment`
--

DROP TABLE IF EXISTS `episode_comment`;
CREATE TABLE IF NOT EXISTS `episode_comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  `post_ani` int NOT NULL,
  `post_ep` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `post_spo` int NOT NULL,
  `post_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `episode_comment_repy`
--

DROP TABLE IF EXISTS `episode_comment_repy`;
CREATE TABLE IF NOT EXISTS `episode_comment_repy` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  `post_u_id` int NOT NULL,
  `post_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `episode_comment_repy`
--

INSERT INTO `episode_comment_repy` (`id`, `user_id`, `post_id`, `post_u_id`, `post_content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1892541102, 4785107, '2', '2023-08-22 19:57:49', '2023-08-22 20:04:10', NULL),
(2, 1, 726587134, 7365360, '1', '2023-08-22 20:04:20', '2023-08-22 20:04:20', NULL),
(3, 1, 1025229910, 7680964, '12abc', '2023-08-26 15:33:18', '2023-08-26 15:33:18', NULL),
(4, 1, 1025229910, 8313289, '13abc', '2023-08-26 15:33:28', '2023-08-26 15:33:28', NULL),
(5, 1, 299922453, 4739583, 'test2', '2023-09-03 18:42:52', '2023-09-03 18:42:52', NULL),
(6, 1, 389394090, 666539, '11', '2023-09-10 18:43:45', '2023-09-10 18:43:45', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `episode_download`
--

DROP TABLE IF EXISTS `episode_download`;
CREATE TABLE IF NOT EXISTS `episode_download` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dw_id` int NOT NULL,
  `dw_ep` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dw_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dw_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `episode_embed`
--

DROP TABLE IF EXISTS `episode_embed`;
CREATE TABLE IF NOT EXISTS `episode_embed` (
  `id` int NOT NULL AUTO_INCREMENT,
  `embed_order` int NOT NULL,
  `embed_type` int NOT NULL,
  `embed_uid` int NOT NULL,
  `embed_id` int NOT NULL,
  `embed_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `embed_frame` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `episode_main_rep`
--

DROP TABLE IF EXISTS `episode_main_rep`;
CREATE TABLE IF NOT EXISTS `episode_main_rep` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  `post_rep` int NOT NULL,
  `post_disrep` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `episode_repy_rep`
--

DROP TABLE IF EXISTS `episode_repy_rep`;
CREATE TABLE IF NOT EXISTS `episode_repy_rep` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  `post_rep` int NOT NULL,
  `post_disrep` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `episode_vote`
--

DROP TABLE IF EXISTS `episode_vote`;
CREATE TABLE IF NOT EXISTS `episode_vote` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `anime_id` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `anime_ep_id` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `anime_ep_score` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int NOT NULL,
  `batch` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-12-28-223112', 'CodeIgniter\\Shield\\Database\\Migrations\\CreateAuthTables', 'default', 'CodeIgniter\\Shield', 1683921111, 1),
(2, '2021-07-04-041948', 'CodeIgniter\\Settings\\Database\\Migrations\\CreateSettingsTable', 'default', 'CodeIgniter\\Settings', 1683921111, 1),
(3, '2021-11-14-143905', 'CodeIgniter\\Settings\\Database\\Migrations\\AddContextColumn', 'default', 'CodeIgniter\\Settings', 1683921111, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `report_board`
--

DROP TABLE IF EXISTS `report_board`;
CREATE TABLE IF NOT EXISTS `report_board` (
  `id` int NOT NULL AUTO_INCREMENT,
  `report_main_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `report_board_comment`
--

DROP TABLE IF EXISTS `report_board_comment`;
CREATE TABLE IF NOT EXISTS `report_board_comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `report_main_id` int NOT NULL,
  `report_repy_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `report_episode`
--

DROP TABLE IF EXISTS `report_episode`;
CREATE TABLE IF NOT EXISTS `report_episode` (
  `id` int NOT NULL AUTO_INCREMENT,
  `report_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `report_type` int NOT NULL,
  `report_head` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `report_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `report_episode_comment`
--

DROP TABLE IF EXISTS `report_episode_comment`;
CREATE TABLE IF NOT EXISTS `report_episode_comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `report_main_id` int NOT NULL,
  `report_repy_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `class` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text,
  `type` varchar(31) NOT NULL DEFAULT 'string',
  `context` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `class`, `key`, `value`, `type`, `context`, `created_at`, `updated_at`) VALUES
(1, 'Site Url', '', 'localhost', 'License', 'License Url', '2023-07-24 16:03:40', '2023-07-24 16:03:40'),
(2, 'Site License', '', 'RE592-SE150-BE480', 'License', 'Site License, visit Discord', '2023-07-24 16:03:40', '2023-07-24 16:03:40'),
(5, 'Site Name', '', 'Anitium', 'Advanced', 'Site Name', '2023-07-24 15:59:54', '2023-07-24 15:59:54'),
(6, 'Site İnfo', '', 'Free Watch Anime!', 'Advanced', 'Site İnfo', '2023-07-24 16:13:57', '2023-07-24 16:13:57'),
(7, 'Embed Name', '', 'Anitium,AnimeİN,Youtube,StreamBani,DodoStream,PlayTaku,Mp4Upload,Vimeo,GogoAnime,PlayTaku,JwPayer,OneUpload,2Embed', 'Advanced', 'Embed Name \"Embed,Embed2,...\"', '2023-08-22 12:09:14', '2023-08-22 12:09:14'),
(10, 'Site Logo', '', '/assest/images/logo.png', 'Advanced', 'Site Logo', '2023-07-24 16:03:40', '2023-07-24 16:03:40'),
(11, 'Site İcon', '', '/assest/images/logo.png', 'Advanced', 'Site İcon', '2023-07-24 16:03:40', '2023-07-24 16:03:40'),
(12, 'İndex Character', '', '/assest/images/indexbg.png', 'İndex', 'İndex Character İmage', '2023-07-24 16:03:40', '2023-07-24 16:03:40'),
(13, 'İndex Wallpaper', '', '/assest/images/indexwallpaper.jpg', 'İndex', 'İndex Wallpaper İmage', '2023-07-24 16:03:40', '2023-07-24 16:03:40'),
(14, 'Footer', '', 'https://i.hizliresim.com/5yv5uk8.jpg', 'Advanced', 'Site Footer', '2023-07-24 16:03:40', '2023-07-24 16:03:40'),
(20, 'Disqus', '', 'https://anitium.disqus.com', 'Comment', 'Disqus Comment Url', '2023-07-24 16:13:57', '2023-07-24 16:13:57'),
(24, 'Discord', '', 'https://discord.gg/YmDHnQGxCn', 'Social', 'Your Social WebSite', '2023-07-24 16:13:57', '2023-07-24 16:13:57'),
(25, 'Twitter', '', 'https://twitter.com', 'Social', 'Your Social WebSite', '2023-07-24 16:13:57', '2023-07-24 16:13:57'),
(26, 'Youtube', '', 'https://www.youtube.com', 'Social', 'Your Social WebSite', '2023-07-24 16:13:57', '2023-07-24 16:13:57'),
(27, 'Facebook', '', 'https://www.facebook.com', 'Social', 'Your Social WebSite', '2023-07-24 16:13:57', '2023-07-24 16:13:57'),
(30, 'Patreon', '', 'https://www.patreon.com/anitium', 'Donation', 'Your Donation WebSite', '2023-07-24 16:18:07', '2023-07-24 16:18:07'),
(31, 'BitCoin', '', 'TWeF6nT13HjVtjTtH7TxTo4rGn1ErUCuf5', 'Donation', 'Your Donation WebSite', '2023-07-24 16:18:07', '2023-07-24 16:18:07');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '/assest/images/no-avatar.png',
  `schedule_status` int NOT NULL DEFAULT '1',
  `watchlist_status` int NOT NULL DEFAULT '1',
  `raw_status` int NOT NULL DEFAULT '1',
  `sub_status` int NOT NULL DEFAULT '1',
  `dub_status` int NOT NULL DEFAULT '1',
  `turk_status` int NOT NULL DEFAULT '1',
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `last_active` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `username`, `avatar`, `schedule_status`, `watchlist_status`, `raw_status`, `sub_status`, `dub_status`, `turk_status`, `status`, `status_message`, `active`, `last_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'anitium', '/assest/user/avatar/1694450305_93fc78289107c083dacf.jpg', 1, 1, 1, 1, 1, 1, NULL, NULL, 1, NULL, '2023-05-12 19:52:20', '2023-05-12 19:52:20', NULL);

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `auth_identities`
--
ALTER TABLE `auth_identities`
  ADD CONSTRAINT `auth_identities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  ADD CONSTRAINT `auth_permissions_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  ADD CONSTRAINT `auth_remember_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
