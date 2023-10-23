-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 23 Eki 2023, 14:26:06
-- Sunucu sürümü: 10.3.38-MariaDB
-- PHP Sürümü: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `anitiumn_anikat`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `anime`
--

CREATE TABLE `anime` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` int(11) NOT NULL,
  `ani_name` varchar(255) NOT NULL,
  `ani_jname` varchar(255) NOT NULL,
  `ani_synonyms` varchar(550) NOT NULL,
  `ani_genre` text NOT NULL,
  `ani_type` int(11) NOT NULL,
  `ani_country` int(11) NOT NULL,
  `ani_stats` int(11) NOT NULL,
  `ani_source` int(11) NOT NULL,
  `ani_ep` varchar(25) NOT NULL,
  `ani_synopsis` text NOT NULL,
  `ani_poster` varchar(255) NOT NULL,
  `ani_release` varchar(5) NOT NULL,
  `ani_release_season` int(11) NOT NULL,
  `ani_rate` int(11) NOT NULL,
  `ani_score` varchar(6) NOT NULL,
  `ani_quality` int(11) NOT NULL DEFAULT 0,
  `ani_time` varchar(50) NOT NULL,
  `ani_pv` varchar(255) NOT NULL,
  `ani_aired` varchar(10) NOT NULL,
  `ani_aired_fin` varchar(10) NOT NULL,
  `ani_studio` varchar(255) NOT NULL,
  `ani_producers` varchar(255) NOT NULL,
  `ani_manga_url` varchar(255) DEFAULT NULL,
  `external` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `relations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `view_count` int(11) NOT NULL,
  `view_count_month` int(11) NOT NULL,
  `view_count_years` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `anime`
--

INSERT INTO `anime` (`id`, `uid`, `ani_name`, `ani_jname`, `ani_synonyms`, `ani_genre`, `ani_type`, `ani_country`, `ani_stats`, `ani_source`, `ani_ep`, `ani_synopsis`, `ani_poster`, `ani_release`, `ani_release_season`, `ani_rate`, `ani_score`, `ani_quality`, `ani_time`, `ani_pv`, `ani_aired`, `ani_aired_fin`, `ani_studio`, `ani_producers`, `ani_manga_url`, `external`, `relations`, `view_count`, `view_count_month`, `view_count_years`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 40496, 'Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite Shison-tachi no Gakkou e Kayou', '魔王学院の不適合者 ～史上最強の魔王の始祖、転生して子孫たちの学校へ通う～', 'The Misfit of Demon King Academy: History\'s Strongest Demon King Reincarnates and Goes to School with His Descendants', 'Action,Fantasy,Mythology,Reincarnation,School', 1, 1, 2, 2, '13', 'In the distant past, a war between humans and demons brought about widespread chaos and bloodshed. To put an end to this seemingly endless conflict, Demon King Anos Voldigoad willingly sacrificed his life, hoping to be reborn in a peaceful future.\r\n\r\nIn preparation for their king\'s return, the demon race created the Demon King Academy, an elite institution tasked with determining Anos\' identity when he reawakens. He reincarnates two millennia later, but to his surprise, he soon learns that the level of magic in the world has drastically waned during his absence. Moreover, when he enrolls at the academy to reclaim his rightful title, he finds out that demonkind remembers him differently. His personality, his deeds, and even his legacy are all falsified—masked beneath the name of an impostor. This \"lack\" of common knowledge renders him the academy\'s outlier—a misfit never before seen in history.\r\n\r\nDespite these drawbacks, Anos remains unfazed. As he sets out to uncover those altering his glorious past, he takes it upon himself to make his descendants recognize that their ruler has finally returned.\r\n\r\n', 'https://cdn.myanimelist.net/images/anime/1126/108573l.jpg', '2020', 3, 4, '7.37', 1, '23 min per ep', '1xmzzF0XQEY', '2020-07-04', '2020-09-26', 'SILVER LINK.', 'Aniplex,Movic,AT-X,Studio Mausu,Tokyo MX,Q-Tec,Docomo Anime Store,Medicos Entertainment,BS11,Contents Seed,Kadokawa,ADK Marketing Solutions', 'https://mangahub.io/manga/maou-gakuin-no-futekigousha', '[{\"name\":\"Official Site\",\"url\":\"https:\\/\\/maohgakuin.com\\/1st\\/\"},{\"name\":\"AniDB\",\"url\":\"https:\\/\\/anidb.net\\/perl-bin\\/animedb.pl?show=anime&aid=15131\"},{\"name\":\"ANN\",\"url\":\"https:\\/\\/www.animenewsnetwork.com\\/encyclopedia\\/anime.php?id=22555\"},{\"name\":\"Wikipedia\",\"url\":\"https:\\/\\/en.wikipedia.org\\/wiki\\/The_Misfit_of_Demon_King_Academy#Anime\"}]', '{\"Adaptation\":[{\"mal_id\":115437,\"type\":\"manga\"}],\"Sequel\":[{\"mal_id\":48417,\"type\":\"anime\"}]}', 7, 7, 7, '2023-10-23 10:56:45', '2023-10-23 10:56:45', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `anime_slider`
--

CREATE TABLE `anime_slider` (
  `id` int(11) NOT NULL,
  `slideruid` varchar(25) NOT NULL,
  `sliderwallpaper` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `anime_slider`
--

INSERT INTO `anime_slider` (`id`, `slideruid`, `sliderwallpaper`) VALUES
(1, '40496', 'https://wallpapercave.com/wp/wp7082254.jpg'),
(2, '', ''),
(3, '', ''),
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

CREATE TABLE `anime_status` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `anime_uid` int(11) NOT NULL,
  `user_status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `anime_status`
--

INSERT INTO `anime_status` (`id`, `user_id`, `anime_uid`, `user_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 40496, 1, '2023-10-23 11:17:11', '2023-10-23 11:17:11', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ani_schedule`
--

CREATE TABLE `ani_schedule` (
  `id` int(11) NOT NULL,
  `sc_days` int(11) NOT NULL,
  `sc_id` int(11) NOT NULL,
  `sc_ep` varchar(5) NOT NULL,
  `sc_time` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `ani_schedule`
--

INSERT INTO `ani_schedule` (`id`, `sc_days`, `sc_id`, `sc_ep`, `sc_time`) VALUES
(1, 27, 40496, '14', '20:00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `group` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`id`, `user_id`, `group`, `created_at`) VALUES
(1, 1, 'superadmin', '2023-05-12 19:52:20');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `auth_identities`
--

CREATE TABLE `auth_identities` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `secret` varchar(255) NOT NULL,
  `secret2` varchar(255) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `extra` text DEFAULT NULL,
  `force_reset` tinyint(1) NOT NULL DEFAULT 0,
  `last_used_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `auth_identities`
--

INSERT INTO `auth_identities` (`id`, `user_id`, `type`, `name`, `secret`, `secret2`, `expires`, `extra`, `force_reset`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'email_password', NULL, 'akaisora09@gmail.com', '$2y$10$jQDq0MaV32dSuVP.Mm6qierpNa7G52T0z3cT8XSH9fQXyV7yXYgm6', NULL, NULL, 0, '2023-10-23 10:55:17', '2023-05-12 19:52:20', '2023-10-23 10:55:17');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `user_agent`, `id_type`, `identifier`, `user_id`, `date`, `success`) VALUES
(185, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-11 13:30:15', 1),
(186, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-11 13:39:43', 1),
(187, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-11 13:42:12', 1),
(188, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-11 20:06:51', 1),
(189, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-14 08:42:44', 1),
(190, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-14 11:21:01', 1),
(191, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-14 16:07:28', 1),
(192, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-15 07:26:36', 1),
(193, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-15 10:03:45', 1),
(194, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-15 10:03:50', 1),
(195, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-15 18:15:50', 1),
(196, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-20 08:06:23', 1),
(197, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-20 14:14:39', 1),
(198, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-21 19:47:44', 1),
(199, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-23 10:04:41', 1),
(200, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-23 15:56:05', 1),
(201, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-24 07:48:40', 1),
(202, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-24 16:25:40', 1),
(203, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-24 20:14:33', 1),
(204, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-25 08:47:38', 1),
(205, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-25 10:30:13', 1),
(206, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', NULL, '2023-09-25 15:05:26', 0),
(207, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', NULL, '2023-09-25 15:05:28', 0),
(208, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-09-25 15:05:34', 1),
(209, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', NULL, '2023-09-25 19:04:03', 0),
(210, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-09-25 19:04:08', 1),
(211, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 'magic-link', '5c1cebde356ba01d230a', 1, '2023-09-26 07:48:44', 1),
(212, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', 'magic-link', 'bf8951a943b0365c3016', 1, '2023-09-26 07:51:26', 1),
(213, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', NULL, '2023-09-26 11:17:14', 0),
(214, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-09-26 11:17:19', 1),
(215, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-09-27 07:03:07', 1),
(216, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-09-27 14:42:50', 1),
(217, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-09-29 13:52:34', 1),
(218, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-10-01 12:22:18', 1),
(219, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'admin@gmail.com', NULL, '2023-10-04 10:16:14', 0),
(220, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-10-04 10:16:22', 1),
(221, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-10-05 14:57:13', 1),
(222, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-10-05 18:56:45', 1),
(223, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-10-07 19:12:04', 1),
(224, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-10-09 05:44:44', 1),
(225, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-10-09 08:22:11', 1),
(226, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-10-09 10:20:07', 1),
(227, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-10-12 18:22:29', 1),
(228, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'admin@gmail.com', NULL, '2023-10-16 05:42:43', 0),
(229, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-10-16 05:42:49', 1),
(230, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-10-16 11:14:59', 1),
(231, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-10-17 14:25:40', 1),
(232, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-10-17 17:33:19', 1),
(233, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-10-20 08:40:58', 1),
(234, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-10-21 12:57:54', 1),
(235, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-10-22 12:41:02', 1),
(236, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'test09@gmail.com', NULL, '2023-10-22 18:22:00', 0),
(237, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-10-22 18:22:12', 1),
(238, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-10-22 19:05:07', 1),
(239, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-10-23 06:30:55', 1),
(240, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-10-23 07:09:38', 1),
(241, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-10-23 07:25:17', 1),
(242, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', NULL, '2023-10-23 07:27:54', 0),
(243, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-10-23 07:27:59', 1),
(244, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-10-23 07:32:01', 1),
(245, '212.253.116.167', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-10-23 08:09:32', 1),
(246, '49.37.54.113', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Mobile Safari/537.36', 'email_password', 'akaisora09@gmail.com', 1, '2023-10-23 09:18:31', 1),
(247, '37.111.230.141', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Mobile Safari/537.36', 'email_password', 'akaisora09@gmail.com', 1, '2023-10-23 09:33:09', 1),
(248, '212.253.116.167', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-10-23 10:54:51', 1),
(249, '212.253.116.167', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-10-23 10:55:17', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `auth_permissions_users`
--

CREATE TABLE `auth_permissions_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `permission` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `auth_remember_tokens`
--

CREATE TABLE `auth_remember_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `auth_token_logins`
--

CREATE TABLE `auth_token_logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `community`
--

CREATE TABLE `community` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `post_tag` int(11) NOT NULL,
  `post_head` varchar(255) NOT NULL,
  `post_content` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `community`
--

INSERT INTO `community` (`id`, `user_id`, `post_id`, `post_tag`, `post_head`, `post_content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 32719042, 1, 'Anitium 2.0 Release!', 'https://github.com/qorenx/AnitiumNet/releases/tag/2.0', '2023-10-23 11:17:46', '2023-10-23 11:17:46', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `community_main_rep`
--

CREATE TABLE `community_main_rep` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `post_rep` int(11) NOT NULL,
  `post_disrep` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `community_main_rep`
--

INSERT INTO `community_main_rep` (`id`, `user_id`, `post_id`, `post_rep`, `post_disrep`) VALUES
(1, 1, 119874698, 1, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `community_post`
--

CREATE TABLE `community_post` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `post_c_id` int(11) NOT NULL,
  `post_content` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `community_repy_post`
--

CREATE TABLE `community_repy_post` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_u_id` int(11) NOT NULL,
  `post_c_id` int(11) NOT NULL,
  `post_content` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `community_repy_rep`
--

CREATE TABLE `community_repy_rep` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `post_rep` int(11) NOT NULL,
  `post_disrep` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `community_vote`
--

CREATE TABLE `community_vote` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `post_rep` int(11) NOT NULL,
  `post_disrep` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `community_vote`
--

INSERT INTO `community_vote` (`id`, `user_id`, `post_id`, `post_rep`, `post_disrep`) VALUES
(1, 1, 32719042, 1, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `episode`
--

CREATE TABLE `episode` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` int(11) NOT NULL,
  `ep_id_name` varchar(20) NOT NULL,
  `ep_name` varchar(255) DEFAULT NULL,
  `ep_jname` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `episode`
--

INSERT INTO `episode` (`id`, `uid`, `ep_id_name`, `ep_name`, `ep_jname`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 40496, '1', 'The Misfit of Demon King Academy', '?', '2023-10-23 10:57:21', '2023-10-23 10:57:21', NULL),
(2, 40496, '2', 'The Witch of Destruction', '?', '2023-10-23 10:57:21', '2023-10-23 10:57:21', NULL),
(3, 40496, '3', 'Sasha\'s True Intentions', '?', '2023-10-23 10:57:21', '2023-10-23 10:57:21', NULL),
(4, 40496, '4', '15th Birthday', '?', '2023-10-23 10:57:21', '2023-10-23 10:57:21', NULL),
(5, 40496, '5', 'The Transfer Student', '?', '2023-10-23 10:57:21', '2023-10-23 10:57:21', NULL),
(6, 40496, '6', 'Magic Sword Tournament', '?', '2023-10-23 10:57:21', '2023-10-23 10:57:21', NULL),
(7, 40496, '7', 'Mother\'s Words', '?', '2023-10-23 10:57:21', '2023-10-23 10:57:21', NULL),
(8, 40496, '8', 'The Final Duel', '?', '2023-10-23 10:57:21', '2023-10-23 10:57:21', NULL),
(9, 40496, '9', 'The Mystery of the Hero Academy', '?', '2023-10-23 10:57:21', '2023-10-23 10:57:21', NULL),
(10, 40496, '10', 'Inter-Academy Exams', '?', '2023-10-23 10:57:21', '2023-10-23 10:57:21', NULL),
(11, 40496, '11', 'The Glow of Life', '?', '2023-10-23 10:57:21', '2023-10-23 10:57:21', NULL),
(12, 40496, '12', 'Taboo Magic', '?', '2023-10-23 10:57:21', '2023-10-23 10:57:21', NULL),
(13, 40496, '13', 'Let the World Be Filled With Love', '?', '2023-10-23 10:57:21', '2023-10-23 10:57:21', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `episode_comment`
--

CREATE TABLE `episode_comment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `post_ani` int(11) NOT NULL,
  `post_ep` varchar(15) NOT NULL,
  `post_spo` int(11) NOT NULL,
  `post_content` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `episode_comment`
--

INSERT INTO `episode_comment` (`id`, `user_id`, `post_id`, `post_ani`, `post_ep`, `post_spo`, `post_content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1209908574, 40496, '1', 1, 'Welcome!', '2023-10-23 11:14:06', '2023-10-23 11:14:06', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `episode_comment_repy`
--

CREATE TABLE `episode_comment_repy` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `post_u_id` int(11) NOT NULL,
  `post_content` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `episode_embed`
--

CREATE TABLE `episode_embed` (
  `id` int(11) NOT NULL,
  `embed_order` int(11) NOT NULL,
  `embed_type` int(11) NOT NULL,
  `embed_uid` int(11) NOT NULL,
  `embed_id` varchar(5) NOT NULL,
  `embed_name` varchar(100) NOT NULL,
  `embed_frame` varchar(500) NOT NULL,
  `fansub_name` varchar(250) NOT NULL,
  `fansub_translator` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `episode_embed`
--

INSERT INTO `episode_embed` (`id`, `embed_order`, `embed_type`, `embed_uid`, `embed_id`, `embed_name`, `embed_frame`, `fansub_name`, `fansub_translator`) VALUES
(1, 0, 2, 40496, '1', 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-', 'HorribleSubs', 'HorribleSubs / https://horriblesubs.info'),
(2, 0, 2, 40496, '2', 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-', 'HorribleSubs', 'HorribleSubs / https://horriblesubs.info'),
(3, 0, 2, 40496, '3', 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-', 'HorribleSubs', 'HorribleSubs / https://horriblesubs.info'),
(4, 0, 2, 40496, '4', 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-', 'HorribleSubs', 'HorribleSubs / https://horriblesubs.info'),
(5, 0, 2, 40496, '5', 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-', 'HorribleSubs', 'HorribleSubs / https://horriblesubs.info'),
(6, 0, 2, 40496, '6', 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-', 'HorribleSubs', 'HorribleSubs / https://horriblesubs.info'),
(7, 0, 2, 40496, '7', 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-', 'HorribleSubs', 'HorribleSubs / https://horriblesubs.info'),
(8, 0, 2, 40496, '8', 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-', 'HorribleSubs', 'HorribleSubs / https://horriblesubs.info'),
(9, 0, 2, 40496, '9', 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-', 'HorribleSubs', 'HorribleSubs / https://horriblesubs.info'),
(10, 0, 2, 40496, '10', 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-', 'HorribleSubs', 'HorribleSubs / https://horriblesubs.info'),
(11, 0, 2, 40496, '11', 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-', 'HorribleSubs', 'HorribleSubs / https://horriblesubs.info'),
(12, 0, 2, 40496, '12', 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-', 'HorribleSubs', 'HorribleSubs / https://horriblesubs.info'),
(13, 0, 2, 40496, '13', 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-', 'HorribleSubs', 'HorribleSubs / https://horriblesubs.info'),
(14, 0, 3, 40496, '1', 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-dub-episode-', 'Default', ''),
(15, 0, 3, 40496, '2', 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-dub-episode-', 'Default', ''),
(16, 0, 3, 40496, '3', 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-dub-episode-', 'Default', ''),
(17, 0, 3, 40496, '4', 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-dub-episode-', 'Default', ''),
(18, 0, 3, 40496, '5', 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-dub-episode-', 'Default', ''),
(19, 0, 3, 40496, '6', 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-dub-episode-', 'Default', ''),
(20, 0, 3, 40496, '7', 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-dub-episode-', 'Default', ''),
(21, 0, 3, 40496, '8', 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-dub-episode-', 'Default', ''),
(22, 0, 3, 40496, '9', 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-dub-episode-', 'Default', ''),
(23, 0, 3, 40496, '10', 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-dub-episode-', 'Default', ''),
(24, 0, 3, 40496, '11', 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-dub-episode-', 'Default', ''),
(25, 0, 3, 40496, '12', 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-dub-episode-', 'Default', ''),
(26, 0, 3, 40496, '13', 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-dub-episode-', 'Default', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `episode_main_rep`
--

CREATE TABLE `episode_main_rep` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `post_rep` int(11) NOT NULL,
  `post_disrep` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `episode_main_rep`
--

INSERT INTO `episode_main_rep` (`id`, `user_id`, `post_id`, `post_rep`, `post_disrep`) VALUES
(1, 1, 1209908574, 1, 0),
(2, 1, 1790040619, 0, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `episode_repy_rep`
--

CREATE TABLE `episode_repy_rep` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `post_rep` int(11) NOT NULL,
  `post_disrep` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `episode_views`
--

CREATE TABLE `episode_views` (
  `id` int(11) NOT NULL,
  `ep_uid` int(11) NOT NULL,
  `ep_id` int(11) NOT NULL,
  `ep_today` int(11) NOT NULL,
  `ep_weeky` int(11) NOT NULL,
  `ep_month` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `episode_views`
--

INSERT INTO `episode_views` (`id`, `ep_uid`, `ep_id`, `ep_today`, `ep_weeky`, `ep_month`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 40496, 1, 18, 18, 18, '2023-10-23 11:02:31', '2023-10-23 11:21:13', NULL),
(2, 40496, 2, 1, 1, 1, '2023-10-23 11:03:41', '2023-10-23 11:03:41', NULL),
(3, 40496, 14, 1, 1, 1, '2023-10-23 11:16:25', '2023-10-23 11:16:25', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `episode_vote`
--

CREATE TABLE `episode_vote` (
  `id` int(11) NOT NULL,
  `user_id` varchar(25) NOT NULL,
  `anime_id` varchar(25) NOT NULL,
  `anime_ep_id` varchar(25) NOT NULL,
  `anime_ep_score` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `episode_vote`
--

INSERT INTO `episode_vote` (`id`, `user_id`, `anime_id`, `anime_ep_id`, `anime_ep_score`) VALUES
(1, '1', '40496', '1', '5');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `license`
--

CREATE TABLE `license` (
  `id` int(11) NOT NULL,
  `web_site` varchar(100) NOT NULL,
  `lic_code` varchar(255) NOT NULL,
  `lic_status` varchar(100) NOT NULL,
  `lic_check` varchar(500) NOT NULL,
  `lic_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `license`
--

INSERT INTO `license` (`id`, `web_site`, `lic_code`, `lic_status`, `lic_check`, `lic_date`) VALUES
(27, 'anitium.net', 'RE592-SE150-BE480', 'Active', 'https://anitium.net/getLicense/RE592-SE150-BE480/anitium.net/getcall', '10/4/2025'),
(28, 'http:', 'RE592-SE150-BE480', 'Active', 'https://anitium.net/getLicense/RE592-SE150-BE480/http:/getcall', '10/4/2025'),
(29, 'anitimus.22web.org', 'RE592-SE150-BE480', 'Active', 'https://anitium.net/getLicense/RE592-SE150-BE480/anitimus.22web.org/getcall', '10/4/2025'),
(30, 'anitimus.42web.io', 'RE592-SE150-BE480', 'Active', 'https://anitium.net/getLicense/RE592-SE150-BE480/anitimus.42web.io/getcall', '10/4/2025'),
(32, 'yoursite.com', 'RE592-SE150-BE480', 'Active', 'https://anitium.net/getLicense/RE592-SE150-BE480/yoursite.com/getcall', '10/4/2025'),
(33, 'animemidway.a1h.in', 'RE592-SE150-BE480', 'Active', 'https://anitium.net/getLicense/RE592-SE150-BE480/animemidway.a1h.in/getcall', '10/4/2025'),
(34, 'animex.com.tr', 'RE592-SE150-BE480', 'Active', 'https://anitium.net/getLicense/RE592-SE150-BE480/animex.com.tr/getcall', '10/4/2025'),
(37, 'site.com', 'RE592-SE150-BE480', 'Active', 'https://anitium.net/getLicense/RE592-SE150-BE480/site.com/getcall', '10/4/2025'),
(39, 'aniwatch.anitium.net', 'RE592-SE150-BE480', 'Active', 'https://anitium.net/getLicense/RE592-SE150-BE480/aniwatch.anitium.net/getcall', '10/4/2025'),
(40, 'animeme.tk', 'RE592-SE150-BE480', 'Active', 'https://anitium.net/getLicense/RE592-SE150-BE480/animeme.tk/getcall', '10/4/2025');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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

CREATE TABLE `report_board` (
  `id` int(11) NOT NULL,
  `report_main_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `report_board_comment`
--

CREATE TABLE `report_board_comment` (
  `id` int(11) NOT NULL,
  `report_main_id` int(11) NOT NULL,
  `report_repy_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `report_episode`
--

CREATE TABLE `report_episode` (
  `id` int(11) NOT NULL,
  `report_url` varchar(255) NOT NULL,
  `report_type` int(11) NOT NULL,
  `report_head` varchar(250) NOT NULL,
  `report_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `report_episode_comment`
--

CREATE TABLE `report_episode_comment` (
  `id` int(11) NOT NULL,
  `report_main_id` int(11) NOT NULL,
  `report_repy_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `class` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `type` varchar(31) NOT NULL DEFAULT 'string',
  `context` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `class`, `key`, `value`, `type`, `context`, `created_at`, `updated_at`) VALUES
(1, 'Site Themes', '', 'AniWatch', 'License', 'Site Themes', '2023-07-24 16:03:40', '2023-07-24 16:03:40'),
(2, 'Site License', '', 'RE592-SE150-BE480', 'License', 'Site License, visit Discord', '2023-07-24 16:03:40', '2023-07-24 16:03:40'),
(5, 'Site Name', '', 'Anitium', 'Advanced', 'Site Name', '2023-07-24 15:59:54', '2023-07-24 15:59:54'),
(6, 'Site İnfo', '', 'Free Watch Anime!', 'Advanced', 'Site İnfo', '2023-07-24 16:13:57', '2023-07-24 16:13:57'),
(7, 'Embed Name', '', 'Anitium,Youtube,StreamBani,DodoStream,Mp4Upload,Vimeo', 'Advanced', 'Embed Name \"Embed,Embed2,...\"', '2023-08-22 12:09:14', '2023-08-22 12:09:14'),
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
(31, 'BitCoin', '', '-', 'Donation', 'Your Donation WebSite', '2023-07-24 16:18:07', '2023-07-24 16:18:07');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `avatar` varchar(255) NOT NULL DEFAULT '/assest/images/no-avatar.png',
  `schedule_status` int(11) NOT NULL DEFAULT 1,
  `watchlist_status` int(11) NOT NULL DEFAULT 1,
  `raw_status` int(11) NOT NULL DEFAULT 1,
  `sub_status` int(11) NOT NULL DEFAULT 1,
  `dub_status` int(11) NOT NULL DEFAULT 1,
  `turk_status` int(11) NOT NULL DEFAULT 1,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `last_active` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `username`, `avatar`, `schedule_status`, `watchlist_status`, `raw_status`, `sub_status`, `dub_status`, `turk_status`, `status`, `status_message`, `active`, `last_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Arima', '/assest/user/avatar/1698045685_9ae60893202d499555d3.jpg', 1, 1, 1, 1, 1, 1, NULL, NULL, 1, NULL, '2023-05-12 19:52:20', '2023-05-12 19:52:20', NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `anime`
--
ALTER TABLE `anime`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uid_2` (`uid`),
  ADD KEY `uid` (`uid`),
  ADD KEY `ani_name` (`ani_name`),
  ADD KEY `ani_jname` (`ani_jname`),
  ADD KEY `ani_type` (`ani_type`),
  ADD KEY `ani_stats` (`ani_stats`),
  ADD KEY `ani_source` (`ani_source`),
  ADD KEY `ani_country` (`ani_country`);

--
-- Tablo için indeksler `anime_slider`
--
ALTER TABLE `anime_slider`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `anime_status`
--
ALTER TABLE `anime_status`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ani_schedule`
--
ALTER TABLE `ani_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`);

--
-- Tablo için indeksler `auth_identities`
--
ALTER TABLE `auth_identities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type_secret` (`type`,`secret`),
  ADD KEY `user_id` (`user_id`);

--
-- Tablo için indeksler `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_identifier` (`id_type`,`identifier`),
  ADD KEY `user_id` (`user_id`);

--
-- Tablo için indeksler `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_permissions_users_user_id_foreign` (`user_id`);

--
-- Tablo için indeksler `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `selector` (`selector`),
  ADD KEY `auth_remember_tokens_user_id_foreign` (`user_id`);

--
-- Tablo için indeksler `auth_token_logins`
--
ALTER TABLE `auth_token_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_identifier` (`id_type`,`identifier`),
  ADD KEY `user_id` (`user_id`);

--
-- Tablo için indeksler `community`
--
ALTER TABLE `community`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Tablo için indeksler `community_main_rep`
--
ALTER TABLE `community_main_rep`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `community_post`
--
ALTER TABLE `community_post`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `community_repy_post`
--
ALTER TABLE `community_repy_post`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `community_repy_rep`
--
ALTER TABLE `community_repy_rep`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `community_vote`
--
ALTER TABLE `community_vote`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `episode`
--
ALTER TABLE `episode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Tablo için indeksler `episode_comment`
--
ALTER TABLE `episode_comment`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `episode_comment_repy`
--
ALTER TABLE `episode_comment_repy`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `episode_embed`
--
ALTER TABLE `episode_embed`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `episode_main_rep`
--
ALTER TABLE `episode_main_rep`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `episode_repy_rep`
--
ALTER TABLE `episode_repy_rep`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `episode_views`
--
ALTER TABLE `episode_views`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `episode_vote`
--
ALTER TABLE `episode_vote`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `license`
--
ALTER TABLE `license`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_site` (`web_site`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `report_board`
--
ALTER TABLE `report_board`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `report_board_comment`
--
ALTER TABLE `report_board_comment`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `report_episode`
--
ALTER TABLE `report_episode`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `report_episode_comment`
--
ALTER TABLE `report_episode_comment`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `anime`
--
ALTER TABLE `anime`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `anime_slider`
--
ALTER TABLE `anime_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `anime_status`
--
ALTER TABLE `anime_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `ani_schedule`
--
ALTER TABLE `ani_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `auth_identities`
--
ALTER TABLE `auth_identities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Tablo için AUTO_INCREMENT değeri `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- Tablo için AUTO_INCREMENT değeri `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `auth_token_logins`
--
ALTER TABLE `auth_token_logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `community`
--
ALTER TABLE `community`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `community_main_rep`
--
ALTER TABLE `community_main_rep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `community_post`
--
ALTER TABLE `community_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `community_repy_post`
--
ALTER TABLE `community_repy_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `community_repy_rep`
--
ALTER TABLE `community_repy_rep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `community_vote`
--
ALTER TABLE `community_vote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `episode`
--
ALTER TABLE `episode`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `episode_comment`
--
ALTER TABLE `episode_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `episode_comment_repy`
--
ALTER TABLE `episode_comment_repy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `episode_embed`
--
ALTER TABLE `episode_embed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Tablo için AUTO_INCREMENT değeri `episode_main_rep`
--
ALTER TABLE `episode_main_rep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `episode_repy_rep`
--
ALTER TABLE `episode_repy_rep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `episode_views`
--
ALTER TABLE `episode_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `episode_vote`
--
ALTER TABLE `episode_vote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `license`
--
ALTER TABLE `license`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `report_board`
--
ALTER TABLE `report_board`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `report_board_comment`
--
ALTER TABLE `report_board_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `report_episode`
--
ALTER TABLE `report_episode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `report_episode_comment`
--
ALTER TABLE `report_episode_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
