-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 28 Kas 2023, 23:23:01
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
(1, 40496, 'Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite Shison-tachi no Gakkou e Kayou', '魔王学院の不適合者 ～史上最強の魔王の始祖、転生して子孫たちの学校へ通う～', 'The Misfit of Demon King Academy: History\'s Strongest Demon King Reincarnates and Goes to School with His Descendants', 'Action,Fantasy,Mythology,Reincarnation,School', 1, 1, 2, 2, '13', 'In the distant past, a war between humans and demons brought about widespread chaos and bloodshed. To put an end to this seemingly endless conflict, Demon King Anos Voldigoad willingly sacrificed his life, hoping to be reborn in a peaceful future.\r\n\r\nIn preparation for their king\'s return, the demon race created the Demon King Academy, an elite institution tasked with determining Anos\' identity when he reawakens. He reincarnates two millennia later, but to his surprise, he soon learns that the level of magic in the world has drastically waned during his absence. Moreover, when he enrolls at the academy to reclaim his rightful title, he finds out that demonkind remembers him differently. His personality, his deeds, and even his legacy are all falsified—masked beneath the name of an impostor. This \"lack\" of common knowledge renders him the academy\'s outlier—a misfit never before seen in history.\r\n\r\nDespite these drawbacks, Anos remains unfazed. As he sets out to uncover those altering his glorious past, he takes it upon himself to make his descendants recognize that their ruler has finally returned.\r\n\r\n', 'https://cdn.myanimelist.net/images/anime/1126/108573l.jpg', '2020', 3, 4, '7.37', 1, '23 min per ep', '1xmzzF0XQEY', '2020-07-04', '2020-09-26', 'SILVER LINK.', 'Aniplex,Movic,AT-X,Studio Mausu,Tokyo MX,Q-Tec,Docomo Anime Store,Medicos Entertainment,BS11,Contents Seed,Kadokawa,ADK Marketing Solutions', 'https://mangahub.io/manga/maou-gakuin-no-futekigousha', '[{\"name\":\"Official Site\",\"url\":\"https:\\/\\/maohgakuin.com\\/1st\\/\"},{\"name\":\"AniDB\",\"url\":\"https:\\/\\/anidb.net\\/perl-bin\\/animedb.pl?show=anime&aid=15131\"},{\"name\":\"ANN\",\"url\":\"https:\\/\\/www.animenewsnetwork.com\\/encyclopedia\\/anime.php?id=22555\"},{\"name\":\"Wikipedia\",\"url\":\"https:\\/\\/en.wikipedia.org\\/wiki\\/The_Misfit_of_Demon_King_Academy#Anime\"}]', '{\"Adaptation\":[{\"mal_id\":115437,\"type\":\"manga\"}],\"Sequel\":[{\"mal_id\":48417,\"type\":\"anime\"}]}', 169, 169, 169, '2023-10-23 10:56:45', '2023-10-23 10:56:45', NULL),
(2, 20, 'Naruto', 'ナルト', 'NARUTO', 'Action,Adventure,Fantasy,Martial Arts,Shounen', 1, 1, 2, 1, '220', 'Moments prior to Naruto Uzumaki\'s birth, a huge demon known as the Kyuubi, the Nine-Tailed Fox, attacked Konohagakure, the Hidden Leaf Village, and wreaked havoc. In order to put an end to the Kyuubi\'s rampage, the leader of the village, the Fourth Hokage, sacrificed his life and sealed the monstrous beast inside the newborn Naruto.\r\n\r\nNow, Naruto is a hyperactive and knuckle-headed ninja still living in Konohagakure. Shunned because of the Kyuubi inside him, Naruto struggles to find his place in the village, while his burning desire to become the Hokage of Konohagakure leads him not only to some great new friends, but also some deadly foes.\r\n\r\n', 'https://cdn.myanimelist.net/images/anime/13/17405l.jpg', '2002', 4, 3, '7.99', 1, '23 min per ep', '', '2002-10-03', '2007-02-08', 'Pierrot', 'TV Tokyo,Aniplex,Shueisha', '', '[{\"name\":\"Official Site\",\"url\":\"http:\\/\\/www.tv-tokyo.co.jp\\/anime\\/naruto2002\\/\"},{\"name\":\"AniDB\",\"url\":\"https:\\/\\/anidb.net\\/perl-bin\\/animedb.pl?show=anime&aid=239\"},{\"name\":\"ANN\",\"url\":\"https:\\/\\/www.animenewsnetwork.com\\/encyclopedia\\/anime.php?id=1825\"},{\"name\":\"Wikipedia\",\"url\":\"http:\\/\\/en.wikipedia.org\\/wiki\\/Naruto\"},{\"name\":\"Bangumi\",\"url\":\"https:\\/\\/bangumi.tv\\/subject\\/3425\"}]', '{\"Adaptation\":[{\"mal_id\":11,\"type\":\"manga\"}],\"Side story\":[{\"mal_id\":442,\"type\":\"anime\"},{\"mal_id\":594,\"type\":\"anime\"},{\"mal_id\":761,\"type\":\"anime\"},{\"mal_id\":936,\"type\":\"anime\"},{\"mal_id\":1074,\"type\":\"anime\"},{\"mal_id\":2144,\"type\":\"anime\"},{\"mal_id\":7367,\"type\":\"anime\"}],\"Sequel\":[{\"mal_id\":1735,\"type\":\"anime\"}],\"Other\":[{\"mal_id\":53236,\"type\":\"anime\"},{\"mal_id\":54688,\"type\":\"anime\"}]}', 136, 136, 136, '2023-10-23 12:10:14', '2023-10-23 12:10:14', NULL),
(3, 21, 'One Piece', 'ONE PIECE', 'OP', 'Action,Adventure,Fantasy,Shounen', 1, 1, 1, 1, '?', 'Barely surviving in a barrel after passing through a terrible whirlpool at sea, carefree Monkey D. Luffy ends up aboard a ship under attack by fearsome pirates. Despite being a naive-looking teenager, he is not to be underestimated. Unmatched in battle, Luffy is a pirate himself who resolutely pursues the coveted One Piece treasure and the King of the Pirates title that comes with it.\r\n\r\nThe late King of the Pirates, Gol D. Roger, stirred up the world before his death by disclosing the whereabouts of his hoard of riches and daring everyone to obtain it. Ever since then, countless powerful pirates have sailed dangerous seas for the prized One Piece only to never return. Although Luffy lacks a crew and a proper ship, he is endowed with a superhuman ability and an unbreakable spirit that make him not only a formidable adversary but also an inspiration to many.\r\n\r\nAs he faces numerous challenges with a big smile on his face, Luffy gathers one-of-a-kind companions to join him in his ambitious endeavor, together embracing perils and wonders on their once-in-a-lifetime adventure.\r\n\r\n', 'https://cdn.myanimelist.net/images/anime/6/73245l.jpg', '1999', 4, 3, '8.71', 1, '24 min', 'l_98K4_6UQ0', '1999-10-20', '?', 'Toei Animation', 'Fuji TV,TAP,Shueisha', '', '[{\"name\":\"Official Site\",\"url\":\"http:\\/\\/www.toei-anim.co.jp\\/tv\\/onep\\/\"},{\"name\":\"@OnePieceAnime\",\"url\":\"https:\\/\\/twitter.com\\/OnePieceAnime\"},{\"name\":\"YouTube\",\"url\":\"https:\\/\\/www.youtube.com\\/channel\\/UCdAHaWcKdpbT5XkN2Er6BUQ\"},{\"name\":\"AniDB\",\"url\":\"https:\\/\\/anidb.net\\/perl-bin\\/animedb.pl?show=anime&aid=69\"},{\"name\":\"ANN\",\"url\":\"https:\\/\\/www.animenewsnetwork.com\\/encyclopedia\\/anime.php?id=836\"},{\"name\":\"Wikipedia\",\"url\":\"https:\\/\\/en.wikipedia.org\\/wiki\\/One_Piece#Anime\"},{\"name\":\"Wikipedia\",\"url\":\"https:\\/\\/ja.wikipedia.org\\/wiki\\/ONE_PIECE_%28%E3%82%A2%E3%83%8B%E3%83%A1%29\"},{\"name\":\"Syoboi\",\"url\":\"https:\\/\\/cal.syoboi.jp\\/tid\\/350\"},{\"name\":\"Bangumi\",\"url\":\"https:\\/\\/bangumi.tv\\/subject\\/975\"},{\"name\":\"Baidu Baike\",\"url\":\"https:\\/\\/baike.baidu.com\\/item\\/%E8%88%AA%E6%B5%B7%E7%8E%8B\\/6616881\"},{\"name\":\"Douban\",\"url\":\"https:\\/\\/movie.douban.com\\/subject\\/1453238\\/\"}]', '{\"Adaptation\":[{\"mal_id\":13,\"type\":\"manga\"},{\"mal_id\":94534,\"type\":\"manga\"}],\"Side story\":[{\"mal_id\":459,\"type\":\"anime\"},{\"mal_id\":460,\"type\":\"anime\"},{\"mal_id\":461,\"type\":\"anime\"},{\"mal_id\":462,\"type\":\"anime\"},{\"mal_id\":463,\"type\":\"anime\"},{\"mal_id\":464,\"type\":\"anime\"},{\"mal_id\":465,\"type\":\"anime\"},{\"mal_id\":466,\"type\":\"anime\"},{\"mal_id\":1094,\"type\":\"anime\"},{\"mal_id\":1237,\"type\":\"anime\"},{\"mal_id\":1238,\"type\":\"anime\"},{\"mal_id\":2020,\"type\":\"anime\"},{\"mal_id\":2385,\"type\":\"anime\"},{\"mal_id\":2386,\"type\":\"anime\"},{\"mal_id\":2490,\"type\":\"anime\"},{\"mal_id\":4155,\"type\":\"anime\"},{\"mal_id\":5252,\"type\":\"anime\"},{\"mal_id\":8740,\"type\":\"anime\"},{\"mal_id\":9999,\"type\":\"anime\"},{\"mal_id\":12001,\"type\":\"anime\"},{\"mal_id\":12859,\"type\":\"anime\"},{\"mal_id\":16239,\"type\":\"anime\"},{\"mal_id\":16468,\"type\":\"anime\"},{\"mal_id\":25161,\"type\":\"anime\"},{\"mal_id\":31490,\"type\":\"anime\"},{\"mal_id\":32051,\"type\":\"anime\"},{\"mal_id\":38234,\"type\":\"anime\"},{\"mal_id\":50410,\"type\":\"anime\"},{\"mal_id\":53878,\"type\":\"anime\"},{\"mal_id\":53880,\"type\":\"anime\"}],\"Character\":[{\"mal_id\":813,\"type\":\"anime\"},{\"mal_id\":10033,\"type\":\"anime\"},{\"mal_id\":23933,\"type\":\"anime\"},{\"mal_id\":23935,\"type\":\"anime\"},{\"mal_id\":52139,\"type\":\"anime\"}],\"Summary\":[{\"mal_id\":2107,\"type\":\"anime\"},{\"mal_id\":8171,\"type\":\"anime\"},{\"mal_id\":15323,\"type\":\"anime\"},{\"mal_id\":16143,\"type\":\"anime\"},{\"mal_id\":19123,\"type\":\"anime\"},{\"mal_id\":28683,\"type\":\"anime\"},{\"mal_id\":31289,\"type\":\"anime\"},{\"mal_id\":32437,\"type\":\"anime\"},{\"mal_id\":36215,\"type\":\"anime\"},{\"mal_id\":37902,\"type\":\"anime\"},{\"mal_id\":50696,\"type\":\"anime\"},{\"mal_id\":51162,\"type\":\"anime\"},{\"mal_id\":52199,\"type\":\"anime\"},{\"mal_id\":52921,\"type\":\"anime\"},{\"mal_id\":53235,\"type\":\"anime\"},{\"mal_id\":53890,\"type\":\"anime\"},{\"mal_id\":55289,\"type\":\"anime\"},{\"mal_id\":55647,\"type\":\"anime\"}],\"Alternative version\":[{\"mal_id\":3848,\"type\":\"anime\"}],\"Other\":[{\"mal_id\":22661,\"type\":\"anime\"},{\"mal_id\":34165,\"type\":\"anime\"},{\"mal_id\":36239,\"type\":\"anime\"},{\"mal_id\":38419,\"type\":\"anime\"},{\"mal_id\":40181,\"type\":\"anime\"},{\"mal_id\":40970,\"type\":\"anime\"},{\"mal_id\":51163,\"type\":\"anime\"},{\"mal_id\":56015,\"type\":\"anime\"}]}', 148, 148, 148, '2023-10-23 12:35:43', '2023-10-23 12:35:43', NULL),
(4, 52991, 'Sousou no Frieren', '葬送のフリーレン', 'Frieren at the Funeral', 'Adventure,Drama,Fantasy,Shounen', 1, 1, 1, 1, '28', 'During their decade-long quest to defeat the Demon King, the members of the hero\'s party—Himmel himself, the priest Heiter, the dwarf warrior Eisen, and the elven mage Frieren—forge bonds through adventures and battles, creating unforgettable precious memories for most of them.\r\n\r\nHowever, the time that Frieren spends with her comrades is equivalent to merely a fraction of her life, which has lasted over a thousand years. When the party disbands after their victory, Frieren casually returns to her \"usual\" routine of collecting spells across the continent. Due to her different sense of time, she seemingly holds no strong feelings toward the experiences she went through.\r\n\r\nAs the years pass, Frieren gradually realizes how her days in the hero\'s party truly impacted her. Witnessing the deaths of two of her former companions, Frieren begins to regret having taken their presence for granted; she vows to better understand humans and create real personal connections. Although the story of that once memorable journey has long ended, a new tale is about to begin.\r\n\r\n', 'https://cdn.myanimelist.net/images/anime/1015/138006l.jpg', '2023', 4, 3, '9.1', 1, '24 min per ep', 'tR8YH0G67Rk', '2023-09-29', '?', 'Madhouse', 'Aniplex,Dentsu,Shogakukan-Shueisha Productions,Nippon Television Network,TOHO animation,Shogakukan', '', '[{\"name\":\"Official Site\",\"url\":\"https:\\/\\/frieren-anime.jp\\/\"},{\"name\":\"@Anime_Frieren\",\"url\":\"https:\\/\\/twitter.com\\/Anime_Frieren\"},{\"name\":\"AniDB\",\"url\":\"https:\\/\\/anidb.net\\/perl-bin\\/animedb.pl?show=anime&aid=17617\"},{\"name\":\"ANN\",\"url\":\"https:\\/\\/www.animenewsnetwork.com\\/encyclopedia\\/anime.php?id=26334\"},{\"name\":\"Wikipedia\",\"url\":\"https:\\/\\/en.wikipedia.org\\/wiki\\/Frieren#Anime\"},{\"name\":\"Wikipedia\",\"url\":\"https:\\/\\/ja.wikipedia.org\\/wiki\\/%E8%91%AC%E9%80%81%E3%81%AE%E3%83%95%E3%83%AA%E3%83%BC%E3%83%AC%E3%83%B3\"},{\"name\":\"Syoboi\",\"url\":\"https:\\/\\/cal.syoboi.jp\\/tid\\/6776\"}]', '{\"Adaptation\":[{\"mal_id\":126287,\"type\":\"manga\"}],\"Other\":[{\"mal_id\":56805,\"type\":\"anime\"},{\"mal_id\":56885,\"type\":\"anime\"}]}', 16, 16, 16, '2023-11-25 08:29:17', '2023-11-25 08:29:17', NULL);

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
(1, 1, 'superadmin', '2023-05-12 19:52:20'),
(10, 10, 'user', '2023-11-28 20:22:04');

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
(1, 1, 'email_password', NULL, 'admin@admin.com', '$2y$10$QEOBZb0sARGPtRgR4zfUWuuC/O2wTKeveWPNyU6XRYjsnduPINojG', NULL, NULL, 0, '2023-11-25 08:23:24', '2023-05-12 19:52:20', '2023-11-25 08:23:24');

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
(249, '212.253.116.167', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-10-23 10:55:17', 1),
(250, '212.253.116.167', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', NULL, '2023-10-23 21:30:20', 0),
(251, '212.253.116.167', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-10-23 21:30:26', 1),
(252, '78.168.129.129', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', 'email_password', 'akaisora09@gmail.com', NULL, '2023-10-25 12:06:06', 0),
(253, '78.168.129.129', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', 'email_password', 'akaisora09@gmail.com', NULL, '2023-10-25 12:06:32', 0),
(254, '78.168.129.129', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', 'email_password', 'akaisora09@gmail.com', 1, '2023-10-25 12:06:41', 1),
(255, '151.250.77.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', NULL, '2023-10-25 18:20:06', 0),
(256, '151.250.77.148', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-10-25 18:20:12', 1),
(257, '151.250.252.218', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 'email_password', 'akaisora09@gmail.com', NULL, '2023-10-28 14:23:16', 0),
(258, '151.250.252.218', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/119.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-10-28 14:23:20', 1),
(259, '91.65.6.249', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'email_password', 'akaisora09@gmail.com', NULL, '2023-10-28 16:31:14', 0),
(260, '91.65.6.249', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'email_password', 'akaisora09@gmail.com', 1, '2023-10-28 16:31:25', 1),
(261, '75.217.78.139', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'email_password', 'akaisora09@gmail.com', NULL, '2023-11-05 14:09:12', 0),
(262, '75.217.78.139', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'email_password', 'akaisora09@gmail.com', NULL, '2023-11-05 14:09:26', 0),
(263, '75.217.78.139', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'email_password', 'akaisora09@gmail.com', NULL, '2023-11-05 14:09:49', 0),
(264, '60.53.235.174', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'email_password', 'akaisora09@gmail.com', 1, '2023-11-25 08:23:24', 1),
(265, '115.135.62.110', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'email_password', 'akaisora09@gmail.com', NULL, '2023-11-28 20:00:19', 0),
(266, '151.250.103.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:120.0) Gecko/20100101 Firefox/120.0', 'email_password', 'akaisora09@gmail.com', NULL, '2023-11-28 20:01:31', 0),
(267, '151.250.103.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:120.0) Gecko/20100101 Firefox/120.0', 'email_password', 'akaisora09@gmail.com', NULL, '2023-11-28 20:01:38', 0),
(268, '151.250.103.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:120.0) Gecko/20100101 Firefox/120.0', 'email_password', 'akaisora09@gmail.com', NULL, '2023-11-28 20:01:42', 0),
(269, '151.250.103.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:120.0) Gecko/20100101 Firefox/120.0', 'email_password', 'admin@gmail.com', NULL, '2023-11-28 20:01:46', 0),
(270, '151.250.103.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:120.0) Gecko/20100101 Firefox/120.0', 'email_password', 'admin@gmail.com', NULL, '2023-11-28 20:19:15', 0),
(271, '151.250.103.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:120.0) Gecko/20100101 Firefox/120.0', 'email_password', 'admin@gmail.com', NULL, '2023-11-28 20:19:21', 0),
(272, '151.250.103.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:120.0) Gecko/20100101 Firefox/120.0', 'email_password', 'akaisora09@gmail.com', NULL, '2023-11-28 20:20:11', 0),
(273, '151.250.103.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:120.0) Gecko/20100101 Firefox/120.0', 'email_password', 'akaisora09@gmail.com', NULL, '2023-11-28 20:21:00', 0),
(274, '151.250.103.114', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:120.0) Gecko/20100101 Firefox/120.0', 'email_password', 'akaisora09@gmail.com', NULL, '2023-11-28 20:21:25', 0);

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

--
-- Tablo döküm verisi `auth_remember_tokens`
--

INSERT INTO `auth_remember_tokens` (`id`, `selector`, `hashedValidator`, `user_id`, `expires`, `created_at`, `updated_at`) VALUES
(5, '5b80aa498a48035032b7dad9', '7ff5a9effd8e32390173c35075d6a2ea7e3dfded1649e729da51255602ae217b', 1, '2023-12-27 13:52:44', '2023-11-25 08:23:24', '2023-11-27 13:52:44');

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
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `episode`
--

INSERT INTO `episode` (`id`, `uid`, `ep_id_name`, `ep_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 40496, '1', 'The Misfit of Demon King Academy', '2023-10-23 10:57:21', '2023-10-23 10:57:21', NULL),
(2, 40496, '2', 'The Witch of Destruction', '2023-10-23 10:57:21', '2023-10-23 10:57:21', NULL),
(3, 40496, '3', 'Sasha\'s True Intentions', '2023-10-23 10:57:21', '2023-10-23 10:57:21', NULL),
(4, 40496, '4', '15th Birthday', '2023-10-23 10:57:21', '2023-10-23 10:57:21', NULL),
(5, 40496, '5', 'The Transfer Student', '2023-10-23 10:57:21', '2023-10-23 10:57:21', NULL),
(6, 40496, '6', 'Magic Sword Tournament', '2023-10-23 10:57:21', '2023-10-23 10:57:21', NULL),
(7, 40496, '7', 'Mother\'s Words', '2023-10-23 10:57:21', '2023-10-23 10:57:21', NULL),
(8, 40496, '8', 'The Final Duel', '2023-10-23 10:57:21', '2023-10-23 10:57:21', NULL),
(9, 40496, '9', 'The Mystery of the Hero Academy', '2023-10-23 10:57:21', '2023-10-23 10:57:21', NULL),
(10, 40496, '10', 'Inter-Academy Exams', '2023-10-23 10:57:21', '2023-10-23 10:57:21', NULL),
(11, 40496, '11', 'The Glow of Life', '2023-10-23 10:57:21', '2023-10-23 10:57:21', NULL),
(12, 40496, '12', 'Taboo Magic', '2023-10-23 10:57:21', '2023-10-23 10:57:21', NULL),
(13, 40496, '13', 'Let the World Be Filled With Love', '2023-10-23 10:57:21', '2023-10-23 10:57:21', NULL),
(65, 20, '1', 'Enter: Naruto Uzumaki!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(66, 20, '2', 'My Name is Konohamaru!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(67, 20, '3', 'Sasuke and Sakura: Friends or Foes?', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(68, 20, '4', 'Pass or Fail: Survival Test', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(69, 20, '5', 'You Failed! Kakashi\'s Final Decision', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(70, 20, '6', 'A Dangerous Mission! Journey to the Land of Waves!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(71, 20, '7', 'The Assassin of the Mist!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(72, 20, '8', 'The Oath of Pain', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(73, 20, '9', 'Kakashi: Sharingan Warrior!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(74, 20, '10', 'The Forest of Chakra', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(75, 20, '11', 'The Land Where a Hero Once Lived', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(76, 20, '12', 'Battle on the Bridge! Zabuza Returns!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(77, 20, '13', 'Haku\'s Secret Jutsu: Crystal Ice Mirrors', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(78, 20, '14', 'The Number One Hyperactive, Knucklehead Ninja Joins the Fight!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(79, 20, '15', 'Zero Visibility: The Sharingan Shatters', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(80, 20, '16', 'The Broken Seal', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(81, 20, '17', 'White Past: Hidden Ambition', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(82, 20, '18', 'The Weapons Known as Shinobi', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(83, 20, '19', 'The Demon in the Snow', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(84, 20, '20', 'A New Chapter Begins: The Chunin Exam!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(85, 20, '21', 'Identify Yourself: Powerful New Rivals', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(86, 20, '22', 'Chunin Challenge: Rock Lee vs. Sasuke!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(87, 20, '23', 'Genin Takedown! All Nine Rookies Face Off!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(88, 20, '24', 'Start Your Engines: The Chunin Exam Begins!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(89, 20, '25', 'The Tenth Question: All or Nothing!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(90, 20, '26', 'Special Report: Live from the Forest of Death!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(91, 20, '27', 'The Chunin Exam Stage 2: The Forest of Death', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(92, 20, '28', 'Eat or be Eaten: Panic in the Forest', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(93, 20, '29', 'Naruto\'s Counterattack: Never Give In!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(94, 20, '30', 'The Sharingan Revived: Dragon-Flame Jutsu!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(95, 20, '31', 'Bushy Brow\'s Pledge: Undying Love and Protection!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(96, 20, '32', 'Sakura Blossoms!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(97, 20, '33', 'Battle Formation: Ino-Shika-Cho!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(98, 20, '34', 'Akamaru Trembles: Gaara\'s Cruel Strength!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(99, 20, '35', 'The Scroll\'s Secret: No Peeking Allowed', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(100, 20, '36', 'Clone vs. Clone: Mine are Better than Yours!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(101, 20, '37', 'Surviving the Cut! The Rookie Nine Together Again!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(102, 20, '38', 'Narrowing the Field: Sudden Death Elimination!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(103, 20, '39', 'Bushy Brow\'s Jealousy: Lions Barrage Unleashed!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(104, 20, '40', 'Kakashi and Orochimaru: Face-to-Face!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(105, 20, '41', 'Kunoichi Rumble: The Rivals Get Serious!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(106, 20, '42', 'The Ultimate Battle: Cha!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(107, 20, '43', 'Killer Kunoichi and a Shaky Shikamaru', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(108, 20, '44', 'Akamaru Unleashed! Who\'s Top Dog Now?', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(109, 20, '45', 'Surprise Attack! Naruto\'s Secret Weapon!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(110, 20, '46', 'Byakugan Battle: Hinata Grows Bold!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(111, 20, '47', 'A Failure Stands Tall!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(112, 20, '48', 'Gaara vs. Rock Lee: The Power of Youth Explodes!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(113, 20, '49', 'Lee\'s Hidden Strength: Forbidden Secret Jutsu!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(114, 20, '50', 'The Fifth Gate: A Splendid Ninja is Born', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(115, 20, '51', 'A Shadow in Darkness: Danger Approaches Sasuke', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(116, 20, '52', 'Ebisu Returns: Naruto\'s Toughest Training Yet!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(117, 20, '53', 'Long Time No See: Jiraiya Returns!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(118, 20, '54', 'The Summoning Jutsu: Wisdom of the Toad Sage!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(119, 20, '55', 'A Feeling of Yearning, A Flower Full of Hope', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(120, 20, '56', 'Live or Die: Risk it All to Win it All!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(121, 20, '57', 'He Flies! He Jumps! He Lurks! Chief Toad Appears!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(122, 20, '58', 'Hospital Besieged: The Evil Hand Revealed!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(123, 20, '59', 'The Final Rounds: Rush to the Battle Arena!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(124, 20, '60', 'Byakugan vs. Shadow Clone', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(125, 20, '61', 'Ultimate Defense: Zero Blind Spot!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(126, 20, '62', 'A Failure\'s True Power', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(127, 20, '63', 'Hit it or Quit it: The Final Rounds Get Complicated!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(128, 20, '64', 'Zero Motivation: The Guy with Cloud Envy!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(129, 20, '65', 'Dancing Leaf, Squirming Sand', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(130, 20, '66', 'Bushy Brow\'s Jutsu: Sasuke Style!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(131, 20, '67', 'Late for the Show, But Ready to Go! The Ultimate Secret Technique is Born!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(132, 20, '68', 'Zero Hour! The Destruction of the Hidden Leaf Village Begins!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(133, 20, '69', 'Village in Distress: A New A-Ranked Mission!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(134, 20, '70', 'A Shirker\'s Call to Action: A Layabout No More!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(135, 20, '71', 'An Unrivaled Match: Hokage Battle Royale!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(136, 20, '72', 'A Mistake from the Past: A Face Revealed!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(137, 20, '73', 'Forbidden Secret Technique: Reaper Death Seal!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(138, 20, '74', 'Astonishing Truth! Gaara\'s Identity Emerges!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(139, 20, '75', 'Sasuke\'s Decision: Pushed to the Edge!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(140, 20, '76', 'Assassin of the Moonlit Night', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(141, 20, '77', 'Light vs. Dark: The Two Faces of Gaara', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(142, 20, '78', 'Naruto\'s Ninja Handbook', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(143, 20, '79', 'Beyond the Limit of Darkness and Light', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(144, 20, '80', 'The Third Hokage, Forever...', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(145, 20, '81', 'Return of the Morning Mist', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(146, 20, '82', 'Eye to Eye: Sharingan vs. Sharingan!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(147, 20, '83', 'Jiraiya: Naruto\'s Potential Disaster!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(148, 20, '84', 'Roar, Chidori! Brother vs. Brother!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(149, 20, '85', 'Hate Among the Uchihas: The Last of the Clan!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(150, 20, '86', 'A New Training Begins: I Will Be Strong!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(151, 20, '87', 'Keep on Training: Pop Goes the Water Balloon!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(152, 20, '88', 'Focal Point: The Mark of the Leaf', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(153, 20, '89', 'An Impossible Choice: The Pain Within Tsunade\'s Heart', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(154, 20, '90', 'Unforgivable! A Total Lack of Respect!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(155, 20, '91', 'Inheritence! The Necklace of Death!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(156, 20, '92', 'A Dubious Offer! Tsunade\'s Choice!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(157, 20, '93', 'Breakdown! The Deal is Off!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(158, 20, '94', 'Attack! Fury of the Rasengan!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(159, 20, '95', 'The Fifth Hokage! A Life on the Line!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(160, 20, '96', 'Deadlock! Sannin Showdown!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(161, 20, '97', 'Kidnapped! Naruto\'s Hot Spring Adventure!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(162, 20, '98', 'Tsunade\'s Warning: Ninja No More!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(163, 20, '99', 'The Will of Fire Still Burns!', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(164, 20, '100', 'Sensei and Student: The Bond of the Shinobi', '2023-10-23 12:28:57', '2023-10-23 12:28:57', NULL),
(165, 20, '101', 'Gotta See! Gotta Know! Kakashi-Sensei\'s True Face!', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(166, 20, '102', 'Mission: Help an Old Friend in the Land of Tea', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(167, 20, '103', 'The Race is on! Trouble on the High Seas!', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(168, 20, '104', 'Run Idate Run! Nagi Island Awaits!', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(169, 20, '105', 'A Fierce Battle of Rolling Thunder!', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(170, 20, '106', 'The Last Leg: A Final Act of Desperation', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(171, 20, '107', 'The Battle Begins: Naruto vs. Sasuke', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(172, 20, '108', 'Bitter Rivals and Broken Bonds', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(173, 20, '109', 'An Invitation from the Sound', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(174, 20, '110', 'Formation! The Sasuke Retrieval Squad', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(175, 20, '111', 'Sound vs. Leaf', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(176, 20, '112', 'Squad Mutiny: Everything Falls Apart!', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(177, 20, '113', 'Full Throttle Power! Choji, Ablaze!', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(178, 20, '114', 'Good-bye Old Friend...! I\'ll Always Believe in You!', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(179, 20, '115', 'Your Opponent Is Me!', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(180, 20, '116', '360 Degrees of Vision: The Byakugan\'s Blind Spot', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(181, 20, '117', 'Losing is Not an Option!', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(182, 20, '118', 'The Vessel Arrives Too Late', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(183, 20, '119', 'Miscalculation: A New Enemy Appears!', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(184, 20, '120', 'Roar and Howl! The Ultimate Tag Team', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(185, 20, '121', 'To Each His Own Battle', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(186, 20, '122', 'Fakeout: Shikamaru\'s Comeback!', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(187, 20, '123', 'The Leaf\'s Handsome Devil!', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(188, 20, '124', 'The Beast Within', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(189, 20, '125', 'The Sand Shinobi: Allies of the Leaf', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(190, 20, '126', 'Showdown: Gaara vs. Kimimaro!', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(191, 20, '127', 'Vengeful Strike! The Bracken Dance', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(192, 20, '128', 'A Cry on Deaf Ears', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(193, 20, '129', 'Brothers: Distance Among the Uchiha', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(194, 20, '130', 'Father and Son, the Broken Crest', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(195, 20, '131', 'The Secrets of the Mangekyo Sharingan!', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(196, 20, '132', 'For a Friend', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(197, 20, '133', 'A Plea From a Friend', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(198, 20, '134', 'The End of Tears', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(199, 20, '135', 'The Promise That Could Not Be Kept', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(200, 20, '136', 'Deep Cover!? A Super S-Ranked Mission!', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(201, 20, '137', 'A Town of Outlaws, the Shadow of the Fuma Clan', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(202, 20, '138', 'Pure Betrayal, and a Fleeting Plea!', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(203, 20, '139', 'Pure Terror! The House of Orochimaru', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(204, 20, '140', 'Two Heartbeats: Kabuto\'s Trap', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(205, 20, '141', 'Sakura\'s Determination', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(206, 20, '142', 'The Three Villains from the Maximum Security Prison', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(207, 20, '143', 'Tonton! I\'m Counting on You!', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(208, 20, '144', 'A New Squad! Two People and a Dog?!', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(209, 20, '145', 'A New Formation: Ino-Shika-Cho!', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(210, 20, '146', 'Orochimaru\'s Shadow', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(211, 20, '147', 'A Clash of Fate: You Can\'t Bring Me Down', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(212, 20, '148', 'Search for the Rare Bikochu Beetle', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(213, 20, '149', 'What\'s the Difference? Don\'t All Insects Look Alike?', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(214, 20, '150', 'A Battle of Bugs: The Deceivers and the Deceived', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(215, 20, '151', 'Blaze Away Byakugan: This Is My Ninja Way', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(216, 20, '152', 'Funeral March for the Living', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(217, 20, '153', 'A Lesson Learned: The Iron Fist of Love', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(218, 20, '154', 'The Enemy of the Byakugan', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(219, 20, '155', 'The Dark Creeping Clouds', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(220, 20, '156', 'Raiga\'s Counterattack', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(221, 20, '157', 'Run! The Curry of Life', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(222, 20, '158', 'Follow My Lead! The Great Survival Challenge', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(223, 20, '159', 'Bounty Hunter from the Wilderness', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(224, 20, '160', 'Hunt or Be Hunted?! Showdown at the O.K. Temple!', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(225, 20, '161', 'The Appearance of Strange Visitors', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(226, 20, '162', 'The Cursed Warrior', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(227, 20, '163', 'The Tactician\'s Intent', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(228, 20, '164', 'Too Late for Help', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(229, 20, '165', 'The Death of Naruto', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(230, 20, '166', 'When Time Stands Still', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(231, 20, '167', 'When Egrets Flap Their Wings', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(232, 20, '168', 'Mix It, Stretch It, Boil It Up! Burn, Copper Pot, Burn!', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(233, 20, '169', 'Remembrance: The Lost Page', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(234, 20, '170', 'The Closed Door', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(235, 20, '171', 'Infiltration: The Set-Up!', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(236, 20, '172', 'Despair: A Fractured Heart', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(237, 20, '173', 'The Battle at Sea: The Power Unleashed!', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(238, 20, '174', 'Impossible! Celebrity Ninja Art - Money Style Jutsu!', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(239, 20, '175', 'The Treasure Hunt is On!', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(240, 20, '176', 'Run, Dodge, Zigzag! Chase or Be Chased!', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(241, 20, '177', 'Please, Mr. Postman!', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(242, 20, '178', 'Encounter! The Boy with a Star\'s Name', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(243, 20, '179', 'The Remembered Lullaby', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(244, 20, '180', 'Hidden Jutsu: The Price of The Ninja Art: Kujaku', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(245, 20, '181', 'Hoshikage, The Buried Truth', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(246, 20, '182', 'Reunion, The Remaining time', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(247, 20, '183', 'The Star\'s Radiance', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(248, 20, '184', 'Kiba\'s Long Day!', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(249, 20, '185', 'A Legend from the Hidden Leaf: The Onbaa!', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(250, 20, '186', 'Laughing Shino', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(251, 20, '187', 'Open for Business! The Leaf Moving Service', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(252, 20, '188', 'Mystery of the Targeted Merchants', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(253, 20, '189', 'A Limitless Supply of Ninja Tools', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(254, 20, '190', 'The Byakugan Sees the Blind Spot', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(255, 20, '191', 'Forecast: Death! Cloudy with Chance of Sun', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(256, 20, '192', 'Ino Screams! Chubby Paradise!', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(257, 20, '193', 'Viva Dojo Challenge! Youth Is All About Passion!', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(258, 20, '194', 'The Mysterious Curse of the Haunted Castle', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(259, 20, '195', 'The Third Super-Beast!', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(260, 20, '196', 'Hot-Blooded Confrontation: Student vs. Sensei', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(261, 20, '197', 'Crisis! The Hidden Leaf 11 Gather!', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(262, 20, '198', 'The ANBU Gives Up? Naruto\'s Recollection', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(263, 20, '199', 'The Missed Target', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(264, 20, '200', 'The Powerful Helper', '2023-10-23 12:29:35', '2023-10-23 12:29:35', NULL),
(265, 20, '201', 'Multiple Traps! Countdown to Destruction', '2023-10-23 12:29:57', '2023-10-23 12:29:57', NULL),
(266, 20, '202', 'The Top 5 Ninja Battles', '2023-10-23 12:29:57', '2023-10-23 12:29:57', NULL),
(267, 20, '203', 'Kurenai\'s Decision, Squad 8 Left Behind', '2023-10-23 12:29:57', '2023-10-23 12:29:57', NULL),
(268, 20, '204', 'Yakumo\'s Sealed Ability', '2023-10-23 12:29:57', '2023-10-23 12:29:57', NULL),
(269, 20, '205', 'Kurenai\'s Top-Secret Mission: The Promise With the Third Hokage', '2023-10-23 12:29:57', '2023-10-23 12:29:57', NULL),
(270, 20, '206', 'Genjutsu or Reality?', '2023-10-23 12:29:57', '2023-10-23 12:29:57', NULL),
(271, 20, '207', 'The Supposed Sealed Ability', '2023-10-23 12:29:57', '2023-10-23 12:29:57', NULL),
(272, 20, '208', 'The Weight of the Prized Artifact!', '2023-10-23 12:29:57', '2023-10-23 12:29:57', NULL),
(273, 20, '209', 'The Enemy: Ninja Dropouts', '2023-10-23 12:29:57', '2023-10-23 12:29:57', NULL),
(274, 20, '210', 'The Bewildering Forest', '2023-10-23 12:29:57', '2023-10-23 12:29:57', NULL),
(275, 20, '211', 'Memory of Flames', '2023-10-23 12:29:57', '2023-10-23 12:29:57', NULL),
(276, 20, '212', 'To Each His Own Path', '2023-10-23 12:29:57', '2023-10-23 12:29:57', NULL),
(277, 20, '213', 'Vanished Memories', '2023-10-23 12:29:57', '2023-10-23 12:29:57', NULL),
(278, 20, '214', 'Bringing Back Reality', '2023-10-23 12:29:57', '2023-10-23 12:29:57', NULL),
(279, 20, '215', 'A Past to Be Erased', '2023-10-23 12:29:57', '2023-10-23 12:29:57', NULL),
(280, 20, '216', 'The Targeted Shukaku', '2023-10-23 12:29:57', '2023-10-23 12:29:57', NULL),
(281, 20, '217', 'Sand Alliance With The Leaf Shinobi', '2023-10-23 12:29:57', '2023-10-23 12:29:57', NULL),
(282, 20, '218', 'The Counterattack!', '2023-10-23 12:29:57', '2023-10-23 12:29:57', NULL),
(283, 20, '219', 'The Ultimate Weapon Reborn', '2023-10-23 12:29:57', '2023-10-23 12:29:57', NULL),
(284, 20, '220', 'Departure', '2023-10-23 12:29:57', '2023-10-23 12:29:57', NULL),
(285, 21, '1', 'I\'m Luffy! The Man Who\'s Gonna Be King of the Pirates!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(286, 21, '2', 'Enter the Great Swordsman! Pirate Hunter Roronoa Zoro!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(287, 21, '3', 'Morgan versus Luffy! Who\'s the Mysterious Pretty Girl?', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(288, 21, '4', 'Luffy\'s Past! Enter Red-Haired Shanks!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(289, 21, '5', 'A Terrifying Mysterious Power! Captain Buggy, the Clown Pirate!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(290, 21, '6', 'Desperate Situation! Beast Tamer Mohji vs. Luffy!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(291, 21, '7', 'Epic Showdown! Swordsman Zoro vs. Acrobat Cabaji!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(292, 21, '8', 'Who is the Victor? Devil Fruit Power Showdown!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(293, 21, '9', 'The Honorable Liar? Captain Usopp!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(294, 21, '10', 'The Weirdest Guy Ever! Jango the Hypnotist!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(295, 21, '11', 'Expose the Plot! Pirate Butler, Captain Kuro!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(296, 21, '12', 'Clash with the Black Cat Pirates! The Great Battle on the Slope!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(297, 21, '13', 'The Terrifying Duo! Meowban Brothers vs. Zoro!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(298, 21, '14', 'Luffy Back in Action! Miss Kaya\'s Desperate Resistance!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(299, 21, '15', 'Beat Kuro! Usopp the Man\'s Tearful Resolve!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(300, 21, '16', 'Protect Kaya! The Usopp Pirates\' Great Efforts!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(301, 21, '17', 'Angry Explosion! Kuro vs. Luffy! How it Ends!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(302, 21, '18', 'You\'re the Weird Creature! Gaimon and His Strange Friends!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(303, 21, '19', 'The Three-Sword Style\'s Past! Zoro and Kuina\'s Vow!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(304, 21, '20', 'Famous Cook! Sanji of the Sea Restaurant!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(305, 21, '21', 'Unwelcome Customer! Sanji\'s Food and Gin\'s Debt!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(306, 21, '22', 'The Strongest Pirate Fleet! Commodore Don Krieg!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(307, 21, '23', 'Protect Baratie! The Great Pirate, Red Foot Zeff!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(308, 21, '24', 'Hawk-Eye Mihawk! The Great Swordsman Zoro Falls At Sea!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(309, 21, '25', 'The Deadly Foot Technique Bursts Forth! Sanji vs. The Invincible Pearl!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(310, 21, '26', 'Zeff and Sanji\'s Dream! The Illusory All Blue!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(311, 21, '27', 'Cool-headed, Cold-hearted Demon! Pirate Fleet Chief Commander Gin!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(312, 21, '28', 'I Won\'t Die! Fierce Battle, Luffy vs. Krieg!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(313, 21, '29', 'The Conclusion of the Deadly Battle! A Spear of Blind Determination!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(314, 21, '30', 'Set Sail! The Seafaring Cook Sets off With Luffy!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(315, 21, '31', 'The Worst Man in the Eastern Seas! Fishman Pirate Arlong!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(316, 21, '32', 'Witch of Cocoyashi Village! Arlong\'s Female Leader!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(317, 21, '33', 'Usopp Dead?! When is Luffy Going to Make Landfall?!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(318, 21, '34', 'Everyone\'s Gathered! Usopp Speaks the Truth About Nami!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(319, 21, '35', 'Untold Past! Female Warrior Bellemere!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(320, 21, '36', 'Survive! Mother Bellemere and Nami\'s Bond!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(321, 21, '37', 'Luffy Rises! Result of the Broken Promise!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(322, 21, '38', 'Luffy in Big Trouble! Fishmen vs. the Luffy Pirates!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(323, 21, '39', 'Luffy Submerged! Zoro vs. Hatchan the Octopus!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(324, 21, '40', 'Proud Warriors! Sanji and Usopp\'s Fierce Battles!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(325, 21, '41', 'Luffy at Full Power! Nami\'s Determination and the Straw Hat!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(326, 21, '42', 'Explosion! Fishman Arlong\'s Fierce Assault From the Sea!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(327, 21, '43', 'End of the Fishman Empire! Nami\'s My Friend!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(328, 21, '44', 'Setting Out with a Smile! Farewell, Hometown Cocoyashi Village!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(329, 21, '45', 'Bounty! Straw Hat Luffy Becomes Known to the World!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(330, 21, '46', 'Chase Straw Hat! Little Buggy\'s Big Adventure!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(331, 21, '47', 'The Wait is Over! The Return of Captain Buggy!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(332, 21, '48', 'The Town of the Beginning and the End! Landfall at Logue Town!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(333, 21, '49', 'Kitetsu III and Yubashiri! Zoro’s New Swords and the Woman Sergeant Major!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(334, 21, '50', 'Usopp vs. Daddy the Parent! Showdown at High!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(335, 21, '51', 'Fiery Cooking Battle? Sanji vs. the Beautiful Chef!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(336, 21, '52', 'Buggy\'s Revenge! The Man Who Smiles On the Execution Platform!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(337, 21, '53', 'The Legend Has Started! Head for the Grand Line!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(338, 21, '54', 'Precursor to a New Adventure! Apis, a Mysterious Girl!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(339, 21, '55', 'Miraculous Creature! Apis\' Secret and the Legendary Island!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(340, 21, '56', 'Eric Attacks! Great Escape from Warship Island!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(341, 21, '57', 'A Solitary Island in the Distant Sea! The Legendary Lost Island!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(342, 21, '58', 'Showdown in the Ruins! Tense Zoro vs. Eric!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(343, 21, '59', 'Luffy, Completely Surrounded! Commodore Nelson\'s Secret Strategy!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(344, 21, '60', 'Through the Sky They Soar! The 1000 Year Legend Lives Again!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(345, 21, '61', 'An Angry Showdown! Cross the Red Line!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(346, 21, '62', 'The First Line of Defense? The Giant Whale Laboon Appears!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(347, 21, '63', 'A Promise Between Men! Luffy and the Whale Vow to Meet Again!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(348, 21, '64', 'A Town that Welcomes Pirates? Setting Foot on Whisky Peak!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(349, 21, '65', 'Explosion! The Three Swords Style! Zoro vs. Baroque Works!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(350, 21, '66', 'All Out Battle! Luffy vs. Zoro, Mysterious Grand Duel!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(351, 21, '67', 'Deliver Princess Vivi! The Luffy Pirates Set Sail!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(352, 21, '68', 'Try Hard, Coby! Coby and Helmeppo\'s Struggles in the Marines!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(353, 21, '69', 'Coby and Helmeppo\'s Resolve! Vice-Admiral Garp\'s Parental Affection!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(354, 21, '70', 'An Ancient Island! The Shadow Hiding in Little Garden!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(355, 21, '71', 'Huge Duel! The Giants Dorry and Brogy!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(356, 21, '72', 'Luffy Gets Angry! A Dirty Trick Violates the Sacred Duel!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(357, 21, '73', 'Broggy\'s Bitter Tears of Victory! The Conclusion of Elbaf!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(358, 21, '74', 'The Devilish Candle! Tears of Regret and Tears of Anger!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(359, 21, '75', 'A Hex on Luffy! Colors Trap!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(360, 21, '76', 'Time to Fight Back! Usopp\'s Quick Thinking and Fire Star!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(361, 21, '77', 'Farewell Giant Island! Head for Alabasta!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(362, 21, '78', 'Nami\'s Sick? Beyond the Snow Falling on the Sea!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(363, 21, '79', 'A Raid! The Bliking and Blik Wapol!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(364, 21, '80', 'An Island without Doctors? Adventure in a Nameless Land!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(365, 21, '81', 'Are You Happy? The Doctor Called Witch!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(366, 21, '82', 'Dalton\'s Resolve! Wapol\'s Corps Lands on the Island!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(367, 21, '83', 'The Island Where Snow Lives! Climb the Drum Rockies!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(368, 21, '84', 'Blue-nosed Reindeer! Chopper\'s Secret!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(369, 21, '85', 'An Outcast\'s Dream! Hiluluk the Quack!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(370, 21, '86', 'Hiluluk\'s Cherry Blossoms and the Will that Gets Carried On!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(371, 21, '87', 'Fight Wapol\'s Crew! The Power of the Munch Munch Fruit!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(372, 21, '88', 'Zoan-type Devil Fruit! Chopper\'s Seven-form Transformation!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(373, 21, '89', 'When the Kingdom\'s Rule Ends! The Flag of Faith Flies Forever!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(374, 21, '90', 'Hiluluk\'s Cherry Blossoms! Miracle in the Drum Rockies!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(375, 21, '91', 'Goodbye Drum Island! I\'m Going Out to Sea!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(376, 21, '92', 'Alabasta\'s Hero and a Ballerina on the Ship!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(377, 21, '93', 'Off to the Desert Kingdom! The Rain-Summing Powder and the Rebel Army!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(378, 21, '94', 'The Reunion of Heroes! His Name is Fire Fist Ace!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(379, 21, '95', 'Ace and Luffy! Hot Emotions and Brotherly Bonds!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(380, 21, '96', 'Erumalu, the City of Green and the Kung Fu Dugongs!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(381, 21, '97', 'Adventure in the Country of Sand! The Monsters that Live in the Scorching Land!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(382, 21, '98', 'Enter the Desert Pirates! The Men Who Live Freely!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(383, 21, '99', 'False Fortitude! Camu, Rebel Soldier at Heart!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(384, 21, '100', 'Rebel Warrior Kohza! The Dream Vowed to Vivi!', '2023-10-23 12:37:22', '2023-10-23 12:37:22', NULL),
(385, 52991, '1', 'The Journey\'s End', '2023-11-25 08:30:57', '2023-11-25 08:30:57', NULL),
(386, 52991, '2', 'It Didn\'t Have to Be Magic…', '2023-11-25 08:30:57', '2023-11-25 08:30:57', NULL),
(387, 52991, '3', 'Killing Magic', '2023-11-25 08:30:57', '2023-11-25 08:30:57', NULL),
(388, 52991, '4', 'The Land Where Souls Rest', '2023-11-25 08:30:57', '2023-11-25 08:30:57', NULL),
(389, 52991, '5', 'Phantoms of the Dead', '2023-11-25 08:30:57', '2023-11-25 08:30:57', NULL),
(390, 52991, '6', 'The Hero of the Village', '2023-11-25 08:30:57', '2023-11-25 08:30:57', NULL),
(391, 52991, '7', 'Like a Fairy Tale', '2023-11-25 08:30:57', '2023-11-25 08:30:57', NULL),
(392, 52991, '8', 'Frieren the Slayer', '2023-11-25 08:30:57', '2023-11-25 08:30:57', NULL),
(393, 52991, '9', 'Aura the Guillotine', '2023-11-25 08:30:57', '2023-11-25 08:30:57', NULL),
(394, 52991, '10', 'A Powerful Mage', '2023-11-25 08:30:57', '2023-11-25 08:30:57', NULL),
(395, 52991, '11', 'Winter in the Northern Lands', '2023-11-25 08:30:57', '2023-11-25 08:30:57', NULL),
(396, 52991, '12', 'A Real Hero', '2023-11-25 08:30:57', '2023-11-25 08:30:57', NULL);

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
(26, 0, 3, 40496, '13', 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-dub-episode-', 'Default', ''),
(27, 0, 2, 20, '1', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(28, 0, 2, 20, '2', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(29, 0, 2, 20, '3', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(30, 0, 2, 20, '4', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(31, 0, 2, 20, '5', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(32, 0, 2, 20, '6', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(33, 0, 2, 20, '7', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(34, 0, 2, 20, '8', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(35, 0, 2, 20, '9', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(36, 0, 2, 20, '10', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(37, 0, 2, 20, '11', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(38, 0, 2, 20, '12', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(39, 0, 2, 20, '13', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(40, 0, 2, 20, '14', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(41, 0, 2, 20, '15', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(42, 0, 2, 20, '16', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(43, 0, 2, 20, '17', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(44, 0, 2, 20, '18', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(45, 0, 2, 20, '19', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(46, 0, 2, 20, '20', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(47, 0, 2, 20, '21', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(48, 0, 2, 20, '22', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(49, 0, 2, 20, '23', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(50, 0, 2, 20, '24', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(51, 0, 2, 20, '25', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(52, 0, 2, 20, '26', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(53, 0, 2, 20, '27', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(54, 0, 2, 20, '28', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(55, 0, 2, 20, '29', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(56, 0, 2, 20, '30', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(57, 0, 2, 20, '31', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(58, 0, 2, 20, '32', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(59, 0, 2, 20, '33', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(60, 0, 2, 20, '34', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(61, 0, 2, 20, '35', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(62, 0, 2, 20, '36', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(63, 0, 2, 20, '37', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(64, 0, 2, 20, '38', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(65, 0, 2, 20, '39', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(66, 0, 2, 20, '40', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(67, 0, 2, 20, '41', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(68, 0, 2, 20, '42', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(69, 0, 2, 20, '43', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(70, 0, 2, 20, '44', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(71, 0, 2, 20, '45', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(72, 0, 2, 20, '46', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(73, 0, 2, 20, '47', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(74, 0, 2, 20, '48', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(75, 0, 2, 20, '49', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(76, 0, 2, 20, '50', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(77, 0, 2, 20, '51', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(78, 0, 2, 20, '52', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(79, 0, 2, 20, '53', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(80, 0, 2, 20, '54', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(81, 0, 2, 20, '55', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(82, 0, 2, 20, '56', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(83, 0, 2, 20, '57', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(84, 0, 2, 20, '58', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(85, 0, 2, 20, '59', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(86, 0, 2, 20, '60', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(87, 0, 2, 20, '61', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(88, 0, 2, 20, '62', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(89, 0, 2, 20, '63', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(90, 0, 2, 20, '64', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(91, 0, 2, 20, '65', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(92, 0, 2, 20, '66', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(93, 0, 2, 20, '67', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(94, 0, 2, 20, '68', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(95, 0, 2, 20, '69', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(96, 0, 2, 20, '70', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(97, 0, 2, 20, '71', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(98, 0, 2, 20, '72', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(99, 0, 2, 20, '73', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(100, 0, 2, 20, '74', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(101, 0, 2, 20, '75', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(102, 0, 2, 20, '76', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(103, 0, 2, 20, '77', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(104, 0, 2, 20, '78', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(105, 0, 2, 20, '79', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(106, 0, 2, 20, '80', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(107, 0, 2, 20, '81', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(108, 0, 2, 20, '82', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(109, 0, 2, 20, '83', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(110, 0, 2, 20, '84', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(111, 0, 2, 20, '85', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(112, 0, 2, 20, '86', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(113, 0, 2, 20, '87', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(114, 0, 2, 20, '88', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(115, 0, 2, 20, '89', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(116, 0, 2, 20, '90', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(117, 0, 2, 20, '91', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(118, 0, 2, 20, '92', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(119, 0, 2, 20, '93', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(120, 0, 2, 20, '94', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(121, 0, 2, 20, '95', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(122, 0, 2, 20, '96', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(123, 0, 2, 20, '97', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(124, 0, 2, 20, '98', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(125, 0, 2, 20, '99', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(126, 0, 2, 20, '100', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(127, 0, 2, 20, '101', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(128, 0, 2, 20, '102', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(129, 0, 2, 20, '103', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(130, 0, 2, 20, '104', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(131, 0, 2, 20, '105', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(132, 0, 2, 20, '106', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(133, 0, 2, 20, '107', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(134, 0, 2, 20, '108', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(135, 0, 2, 20, '109', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(136, 0, 2, 20, '110', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(137, 0, 2, 20, '111', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(138, 0, 2, 20, '112', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(139, 0, 2, 20, '113', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(140, 0, 2, 20, '114', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(141, 0, 2, 20, '115', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(142, 0, 2, 20, '116', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(143, 0, 2, 20, '117', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(144, 0, 2, 20, '118', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(145, 0, 2, 20, '119', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(146, 0, 2, 20, '120', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(147, 0, 2, 20, '121', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(148, 0, 2, 20, '122', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(149, 0, 2, 20, '123', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(150, 0, 2, 20, '124', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(151, 0, 2, 20, '125', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(152, 0, 2, 20, '126', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(153, 0, 2, 20, '127', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(154, 0, 2, 20, '128', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(155, 0, 2, 20, '129', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(156, 0, 2, 20, '130', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(157, 0, 2, 20, '131', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(158, 0, 2, 20, '132', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(159, 0, 2, 20, '133', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(160, 0, 2, 20, '134', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(161, 0, 2, 20, '135', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(162, 0, 2, 20, '136', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(163, 0, 2, 20, '137', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(164, 0, 2, 20, '138', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(165, 0, 2, 20, '139', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(166, 0, 2, 20, '140', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(167, 0, 2, 20, '141', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(168, 0, 2, 20, '142', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(169, 0, 2, 20, '143', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(170, 0, 2, 20, '144', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(171, 0, 2, 20, '145', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(172, 0, 2, 20, '146', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(173, 0, 2, 20, '147', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(174, 0, 2, 20, '148', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(175, 0, 2, 20, '149', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(176, 0, 2, 20, '150', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(177, 0, 2, 20, '151', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(178, 0, 2, 20, '152', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(179, 0, 2, 20, '153', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(180, 0, 2, 20, '154', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(181, 0, 2, 20, '155', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(182, 0, 2, 20, '156', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(183, 0, 2, 20, '157', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(184, 0, 2, 20, '158', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(185, 0, 2, 20, '159', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(186, 0, 2, 20, '160', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(187, 0, 2, 20, '161', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(188, 0, 2, 20, '162', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(189, 0, 2, 20, '163', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(190, 0, 2, 20, '164', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(191, 0, 2, 20, '165', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(192, 0, 2, 20, '166', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(193, 0, 2, 20, '167', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(194, 0, 2, 20, '168', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(195, 0, 2, 20, '169', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(196, 0, 2, 20, '170', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(197, 0, 2, 20, '171', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(198, 0, 2, 20, '172', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(199, 0, 2, 20, '173', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(200, 0, 2, 20, '174', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(201, 0, 2, 20, '175', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(202, 0, 2, 20, '176', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(203, 0, 2, 20, '177', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(204, 0, 2, 20, '178', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(205, 0, 2, 20, '179', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(206, 0, 2, 20, '180', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(207, 0, 2, 20, '181', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(208, 0, 2, 20, '182', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(209, 0, 2, 20, '183', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(210, 0, 2, 20, '184', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(211, 0, 2, 20, '185', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(212, 0, 2, 20, '186', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(213, 0, 2, 20, '187', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(214, 0, 2, 20, '188', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(215, 0, 2, 20, '189', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(216, 0, 2, 20, '190', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(217, 0, 2, 20, '191', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(218, 0, 2, 20, '192', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(219, 0, 2, 20, '193', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(220, 0, 2, 20, '194', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(221, 0, 2, 20, '195', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(222, 0, 2, 20, '196', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(223, 0, 2, 20, '197', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(224, 0, 2, 20, '198', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(225, 0, 2, 20, '199', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(226, 0, 2, 20, '200', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(227, 0, 2, 20, '201', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(228, 0, 2, 20, '202', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(229, 0, 2, 20, '203', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(230, 0, 2, 20, '204', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(231, 0, 2, 20, '205', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(232, 0, 2, 20, '206', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(233, 0, 2, 20, '207', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(234, 0, 2, 20, '208', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(235, 0, 2, 20, '209', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(236, 0, 2, 20, '210', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(237, 0, 2, 20, '211', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(238, 0, 2, 20, '212', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(239, 0, 2, 20, '213', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(240, 0, 2, 20, '214', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(241, 0, 2, 20, '215', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(242, 0, 2, 20, '216', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(243, 0, 2, 20, '217', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(244, 0, 2, 20, '218', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(245, 0, 2, 20, '219', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(246, 0, 2, 20, '220', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(247, 0, 2, 20, '221', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(248, 0, 2, 20, '222', 'Anitium', 'https://gogoanimehd.io/naruto-episode-', 'Default', ''),
(250, 0, 2, 52991, '2', 'Mp4Upload', 'https://anitaku.to/sousou-no-frieren-episode-1', 'Default', ''),
(251, 0, 2, 52991, '3', 'Mp4Upload', 'https://anitaku.to/sousou-no-frieren-episode-1', 'Default', ''),
(252, 0, 2, 52991, '4', 'Mp4Upload', 'https://anitaku.to/sousou-no-frieren-episode-1', 'Default', ''),
(253, 0, 2, 52991, '5', 'Mp4Upload', 'https://anitaku.to/sousou-no-frieren-episode-1', 'Default', ''),
(254, 0, 2, 52991, '6', 'Mp4Upload', 'https://anitaku.to/sousou-no-frieren-episode-1', 'Default', ''),
(255, 0, 2, 52991, '7', 'Mp4Upload', 'https://anitaku.to/sousou-no-frieren-episode-1', 'Default', ''),
(256, 0, 2, 52991, '8', 'Mp4Upload', 'https://anitaku.to/sousou-no-frieren-episode-1', 'Default', ''),
(257, 0, 2, 52991, '9', 'Mp4Upload', 'https://anitaku.to/sousou-no-frieren-episode-1', 'Default', ''),
(258, 0, 2, 52991, '10', 'Mp4Upload', 'https://anitaku.to/sousou-no-frieren-episode-1', 'Default', ''),
(259, 0, 2, 52991, '11', 'Mp4Upload', 'https://anitaku.to/sousou-no-frieren-episode-1', 'Default', ''),
(260, 0, 2, 52991, '12', 'Mp4Upload', 'https://anitaku.to/sousou-no-frieren-episode-1', 'Default', ''),
(262, 0, 2, 52991, '2', 'Anitium', 'https://anitaku.to/sousou-no-frieren-episode-1', 'Default', ''),
(263, 0, 2, 52991, '3', 'Anitium', 'https://anitaku.to/sousou-no-frieren-episode-1', 'Default', ''),
(264, 0, 2, 52991, '4', 'Anitium', 'https://anitaku.to/sousou-no-frieren-episode-1', 'Default', ''),
(265, 0, 2, 52991, '5', 'Anitium', 'https://anitaku.to/sousou-no-frieren-episode-1', 'Default', ''),
(266, 0, 2, 52991, '6', 'Anitium', 'https://anitaku.to/sousou-no-frieren-episode-1', 'Default', ''),
(267, 0, 2, 52991, '7', 'Anitium', 'https://anitaku.to/sousou-no-frieren-episode-1', 'Default', ''),
(268, 0, 2, 52991, '8', 'Anitium', 'https://anitaku.to/sousou-no-frieren-episode-1', 'Default', ''),
(269, 0, 2, 52991, '9', 'Anitium', 'https://anitaku.to/sousou-no-frieren-episode-1', 'Default', ''),
(270, 0, 2, 52991, '10', 'Anitium', 'https://anitaku.to/sousou-no-frieren-episode-1', 'Default', ''),
(271, 0, 2, 52991, '11', 'Anitium', 'https://anitaku.to/sousou-no-frieren-episode-1', 'Default', ''),
(272, 0, 2, 52991, '12', 'Anitium', 'https://anitaku.to/sousou-no-frieren-episode-1', 'Default', ''),
(274, 0, 2, 52991, '12', 'Mp4Upload', 'https://kayoanime.com/frieren-beyond-journeys-end-episode-12-english-subbed/', 'Default', ''),
(275, 0, 1, 52991, '1', 'Anitium', 'https://ww2.9animes.org/watch/sousou-no-frieren', 'Default', ''),
(276, 0, 1, 52991, '12', 'Anitium', 'https://ww6.gogoanimes.org/watch/sousou-no-frieren-episode-12', 'Anitium', 'HorribleSubs / https://horriblesubs.info');

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
(1, 40496, 1, 27, 27, 27, '2023-10-23 11:02:31', '2023-11-25 14:50:01', NULL),
(2, 40496, 2, 1, 1, 1, '2023-10-23 11:03:41', '2023-10-23 11:03:41', NULL),
(3, 40496, 14, 2, 2, 2, '2023-10-23 11:16:25', '2023-10-27 10:46:47', NULL),
(4, 20, 1, 10, 10, 10, '2023-10-23 12:25:50', '2023-11-10 20:20:05', NULL),
(5, 20, 51, 4, 4, 4, '2023-10-23 12:26:58', '2023-10-23 12:30:51', NULL),
(6, 20, 201, 15, 15, 15, '2023-10-23 12:38:26', '2023-11-25 08:26:19', NULL),
(7, 20, 212, 3, 3, 3, '2023-11-05 03:11:46', '2023-11-20 05:26:51', NULL),
(8, 40496, 13, 1, 1, 1, '2023-11-09 21:02:03', '2023-11-09 21:02:03', NULL),
(9, 20, 208, 1, 1, 1, '2023-11-10 00:43:20', '2023-11-10 00:43:20', NULL),
(10, 20, 42, 1, 1, 1, '2023-11-10 20:19:45', '2023-11-10 20:19:45', NULL),
(11, 20, 53, 1, 1, 1, '2023-11-10 20:19:49', '2023-11-10 20:19:49', NULL),
(12, 52991, 1, 28, 28, 28, '2023-11-25 08:37:33', '2023-11-27 06:30:51', NULL),
(13, 52991, 2, 2, 2, 2, '2023-11-25 08:38:45', '2023-11-25 08:44:07', NULL),
(14, 52991, 3, 1, 1, 1, '2023-11-25 08:44:05', '2023-11-25 08:44:05', NULL),
(15, 52991, 6, 1, 1, 1, '2023-11-25 08:44:08', '2023-11-25 08:44:08', NULL),
(16, 52991, 12, 11, 11, 11, '2023-11-25 08:44:09', '2023-11-27 06:30:54', NULL),
(17, 52991, 11, 2, 2, 2, '2023-11-25 08:44:12', '2023-11-28 18:31:50', NULL),
(18, 52991, 10, 1, 1, 1, '2023-11-25 08:44:13', '2023-11-25 08:44:13', NULL),
(19, 52991, 9, 3, 3, 3, '2023-11-25 08:44:14', '2023-11-25 08:44:24', NULL),
(20, 52991, 4, 1, 1, 1, '2023-11-25 14:51:53', '2023-11-25 14:51:53', NULL),
(21, 52991, 5, 1, 1, 1, '2023-11-25 14:52:12', '2023-11-25 14:52:12', NULL),
(22, 52991, 7, 1, 1, 1, '2023-11-25 14:52:15', '2023-11-25 14:52:15', NULL);

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
(1, 'Arima', '/assest/user/avatar/1698045685_9ae60893202d499555d3.jpg', 1, 1, 1, 1, 1, 1, NULL, NULL, 1, NULL, '2023-05-12 19:52:20', '2023-05-12 19:52:20', NULL),
(10, 'qrwrqr152', '/assest/images/no-avatar.png', 1, 1, 1, 1, 1, 1, NULL, NULL, 1, NULL, '2023-11-28 20:22:04', '2023-11-28 20:22:04', NULL);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `auth_identities`
--
ALTER TABLE `auth_identities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Tablo için AUTO_INCREMENT değeri `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- Tablo için AUTO_INCREMENT değeri `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=397;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Tablo için AUTO_INCREMENT değeri `episode_vote`
--
ALTER TABLE `episode_vote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
