-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 25 Eyl 2023, 11:05:48
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
  `external` json DEFAULT NULL,
  `relations` json DEFAULT NULL,
  `view_count` int NOT NULL,
  `view_count_month` int NOT NULL,
  `view_count_years` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid_2` (`uid`),
  KEY `uid` (`uid`),
  KEY `ani_name` (`ani_name`),
  KEY `ani_jname` (`ani_jname`),
  KEY `ani_type` (`ani_type`),
  KEY `ani_stats` (`ani_stats`),
  KEY `ani_source` (`ani_source`),
  KEY `ani_country` (`ani_country`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `anime`
--

INSERT INTO `anime` (`id`, `uid`, `ani_name`, `ani_jname`, `ani_synonyms`, `ani_genre`, `ani_type`, `ani_country`, `ani_stats`, `ani_source`, `ani_ep`, `ani_synopsis`, `ani_poster`, `ani_release`, `ani_release_season`, `ani_rate`, `ani_score`, `ani_quality`, `ani_time`, `ani_pv`, `ani_aired`, `ani_aired_fin`, `ani_studio`, `ani_producers`, `ani_manga_url`, `external`, `relations`, `view_count`, `view_count_month`, `view_count_years`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 21, 'One Piece', 'ONE PIECE', 'OP', 'Action,Adventure,Fantasy,Shounen', 1, 1, 1, 1, '?', 'Barely surviving in a barrel after passing through a terrible whirlpool at sea, carefree Monkey D. Luffy ends up aboard a ship under attack by fearsome pirates. Despite being a naive-looking teenager, he is not to be underestimated. Unmatched in battle, Luffy is a pirate himself who resolutely pursues the coveted One Piece treasure and the King of the Pirates title that comes with it.\r\n\r\nThe late King of the Pirates, Gol D. Roger, stirred up the world before his death by disclosing the whereabouts of his hoard of riches and daring everyone to obtain it. Ever since then, countless powerful pirates have sailed dangerous seas for the prized One Piece only to never return. Although Luffy lacks a crew and a proper ship, he is endowed with a superhuman ability and an unbreakable spirit that make him not only a formidable adversary but also an inspiration to many.\r\n\r\nAs he faces numerous challenges with a big smile on his face, Luffy gathers one-of-a-kind companions to join him in his ambitious endeavor, together embracing perils and wonders on their once-in-a-lifetime adventure.\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/6/73245l.jpg', '1999', 4, 3, '8.7', 1, '24 min', 'l_98K4_6UQ0', '1999-10-20', '?', 'Toei Animation', 'Fuji TV,TAP,Shueisha', '', '[{\"url\": \"http://www.toei-anim.co.jp/tv/onep/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/OnePieceAnime\", \"name\": \"@OnePieceAnime\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=69\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=836\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/One_Piece#Anime\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/ONE_PIECE_%28%E3%82%A2%E3%83%8B%E3%83%A1%29\", \"name\": \"Wikipedia\"}, {\"url\": \"https://cal.syoboi.jp/tid/350\", \"name\": \"Syoboi\"}, {\"url\": \"https://bangumi.tv/subject/975\", \"name\": \"Bangumi\"}, {\"url\": \"https://baike.baidu.com/item/%E8%88%AA%E6%B5%B7%E7%8E%8B/6616881\", \"name\": \"Baidu Baike\"}, {\"url\": \"https://movie.douban.com/subject/1453238/\", \"name\": \"Douban\"}]', '{\"Other\": [{\"type\": \"anime\", \"mal_id\": 22661}, {\"type\": \"anime\", \"mal_id\": 34165}, {\"type\": \"anime\", \"mal_id\": 36239}, {\"type\": \"anime\", \"mal_id\": 38419}, {\"type\": \"anime\", \"mal_id\": 40181}, {\"type\": \"anime\", \"mal_id\": 40970}, {\"type\": \"anime\", \"mal_id\": 51163}, {\"type\": \"anime\", \"mal_id\": 56015}], \"Summary\": [{\"type\": \"anime\", \"mal_id\": 2107}, {\"type\": \"anime\", \"mal_id\": 8171}, {\"type\": \"anime\", \"mal_id\": 15323}, {\"type\": \"anime\", \"mal_id\": 16143}, {\"type\": \"anime\", \"mal_id\": 19123}, {\"type\": \"anime\", \"mal_id\": 28683}, {\"type\": \"anime\", \"mal_id\": 31289}, {\"type\": \"anime\", \"mal_id\": 32437}, {\"type\": \"anime\", \"mal_id\": 36215}, {\"type\": \"anime\", \"mal_id\": 37902}, {\"type\": \"anime\", \"mal_id\": 50696}, {\"type\": \"anime\", \"mal_id\": 51162}, {\"type\": \"anime\", \"mal_id\": 52199}, {\"type\": \"anime\", \"mal_id\": 52921}, {\"type\": \"anime\", \"mal_id\": 53235}, {\"type\": \"anime\", \"mal_id\": 53890}, {\"type\": \"anime\", \"mal_id\": 55289}, {\"type\": \"anime\", \"mal_id\": 55647}], \"Character\": [{\"type\": \"anime\", \"mal_id\": 813}, {\"type\": \"anime\", \"mal_id\": 10033}, {\"type\": \"anime\", \"mal_id\": 23933}, {\"type\": \"anime\", \"mal_id\": 23935}, {\"type\": \"anime\", \"mal_id\": 52139}], \"Adaptation\": [{\"type\": \"manga\", \"mal_id\": 13}, {\"type\": \"manga\", \"mal_id\": 94534}], \"Side story\": [{\"type\": \"anime\", \"mal_id\": 459}, {\"type\": \"anime\", \"mal_id\": 460}, {\"type\": \"anime\", \"mal_id\": 461}, {\"type\": \"anime\", \"mal_id\": 462}, {\"type\": \"anime\", \"mal_id\": 463}, {\"type\": \"anime\", \"mal_id\": 464}, {\"type\": \"anime\", \"mal_id\": 465}, {\"type\": \"anime\", \"mal_id\": 466}, {\"type\": \"anime\", \"mal_id\": 1094}, {\"type\": \"anime\", \"mal_id\": 1237}, {\"type\": \"anime\", \"mal_id\": 1238}, {\"type\": \"anime\", \"mal_id\": 2020}, {\"type\": \"anime\", \"mal_id\": 2385}, {\"type\": \"anime\", \"mal_id\": 2386}, {\"type\": \"anime\", \"mal_id\": 2490}, {\"type\": \"anime\", \"mal_id\": 4155}, {\"type\": \"anime\", \"mal_id\": 5252}, {\"type\": \"anime\", \"mal_id\": 8740}, {\"type\": \"anime\", \"mal_id\": 9999}, {\"type\": \"anime\", \"mal_id\": 12001}, {\"type\": \"anime\", \"mal_id\": 12859}, {\"type\": \"anime\", \"mal_id\": 16239}, {\"type\": \"anime\", \"mal_id\": 16468}, {\"type\": \"anime\", \"mal_id\": 25161}, {\"type\": \"anime\", \"mal_id\": 31490}, {\"type\": \"anime\", \"mal_id\": 32051}, {\"type\": \"anime\", \"mal_id\": 38234}, {\"type\": \"anime\", \"mal_id\": 50410}, {\"type\": \"anime\", \"mal_id\": 53878}, {\"type\": \"anime\", \"mal_id\": 53880}], \"Alternative version\": [{\"type\": \"anime\", \"mal_id\": 3848}]}', 77, 77, 77, '2023-09-24 11:54:04', '2023-09-24 11:54:04', NULL),
(2, 40496, 'Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite Shison-tachi no Gakkou e Kayou', '魔王学院の不適合者 ～史上最強の魔王の始祖、転生して子孫たちの学校へ通う～', 'The Misfit of Demon King Academy: History\'s Strongest Demon King Reincarnates and Goes to School with His Descendants', 'Action,Fantasy,Mythology,Reincarnation,School', 1, 1, 2, 2, '13', 'In the distant past, a war between humans and demons brought about widespread chaos and bloodshed. To put an end to this seemingly endless conflict, Demon King Anos Voldigoad willingly sacrificed his life, hoping to be reborn in a peaceful future.\r\n\r\nIn preparation for their king\'s return, the demon race created the Demon King Academy, an elite institution tasked with determining Anos\' identity when he reawakens. He reincarnates two millennia later, but to his surprise, he soon learns that the level of magic in the world has drastically waned during his absence. Moreover, when he enrolls at the academy to reclaim his rightful title, he finds out that demonkind remembers him differently. His personality, his deeds, and even his legacy are all falsified—masked beneath the name of an impostor. This \"lack\" of common knowledge renders him the academy\'s outlier—a misfit never before seen in history.\r\n\r\nDespite these drawbacks, Anos remains unfazed. As he sets out to uncover those altering his glorious past, he takes it upon himself to make his descendants recognize that their ruler has finally returned.\r\n\r\n', 'https://cdn.myanimelist.net/images/anime/1126/108573l.jpg', '2020', 3, 4, '7.37', 1, '23 min per ep', '1xmzzF0XQEY', '2020-07-04', '2020-09-26', 'SILVER LINK.', 'Aniplex,Movic,AT-X,Studio Mausu,Tokyo MX,Q-Tec,Docomo Anime Store,Medicos Entertainment,BS11,Contents Seed,Kadokawa,ADK Marketing Solutions', 'https://mangahub.io/manga/maou-gakuin-no-futekigousha', '[{\"url\": \"https://maohgakuin.com/1st/\", \"name\": \"Official Site\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=15131\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=22555\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/The_Misfit_of_Demon_King_Academy#Anime\", \"name\": \"Wikipedia\"}]', '{\"Sequel\": [{\"type\": \"anime\", \"mal_id\": 48417}], \"Adaptation\": [{\"type\": \"manga\", \"mal_id\": 115437}]}', 78, 78, 78, '2023-09-24 12:07:13', '2023-09-24 12:07:13', NULL),
(3, 48417, 'Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite Shison-tachi no Gakkou e Kayou II', '魔王学院の不適合者 ～史上最強の魔王の始祖、転生して子孫たちの学校へ通う～ II', 'Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite Shison-tachi no Gakkou e Kayou 2nd Season, The Misfit of Demon King Academy 2nd Season', 'Action,Fantasy,Mythology,Reincarnation,School', 1, 1, 1, 2, '12', 'As peace returns to the demon realm, Anos Voldigoad wishes nothing more than to put his reputation as the Demon King of Tyranny to rest and go back to being a misfit at the prestigious Demon King Academy. Unfortunately, any tranquility is fleeting: sinister demons, kings, and deities plot Anos\'s demise from the shadows.\r\n\r\nRumors spread about the \"Child of God,\" a being whose power may rival that of Anos. To uncover the truth and eliminate the potential threat, Anos must journey deep into the land of spirits. However, the spirit world is shrouded in mystery, and it may only be entered after undergoing a series of difficult trials.\r\n\r\nWith unrivaled power and confidence, Anos braces himself to defeat various formidable enemies with grandiose titles. But he—with the assistance of his trusted allies—will barely have to break a sweat as the true Demon King of Tyranny.\r\n\r\n', 'https://cdn.myanimelist.net/images/anime/1475/137152l.jpg', '2023', 1, 4, '6.83', 1, '23 min per ep', '9u32S8C8L3g', '2023-01-08', '2023-09-24', 'SILVER LINK.', 'Aniplex,Movic,AT-X,Tokyo MX,Q-Tec,Docomo Anime Store,Medicos Entertainment,BS11,Yomiuri TV Enterprise,Contents Seed,Kadokawa,ADK Marketing Solutions', 'https://mangahub.io/manga/maou-gakuin-no-futekigousha', '[{\"url\": \"https://maohgakuin.com/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/maohgakuin\", \"name\": \"@maohgakuin\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=16101\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=24105\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/The_Misfit_of_Demon_King_Academy#Anime\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E9%AD%94%E7%8E%8B%E5%AD%A6%E9%99%A2%E3%81%AE%E4%B8%8D%E9%81%A9%E5%90%88%E8%80%85_%E3%80%9C%E5%8F%B2%E4%B8%8A%E6%9C%80%E5%BC%B7%E3%81%AE%E9%AD%94%E7%8E%8B%E3%81%AE%E5%A7%8B%E7%A5%96%E3%80%81%E8%BB%A2%E7%94%9F%E3%81%97%E3%81%A6%E5%AD%90%E5%AD%AB%E3%81%9F%E3%81%A1%E3%81%AE%E5%AD%A6%E6%A0%A1%E3%81%B8%E9%80%9A%E3%81%86%E3%80%9C\", \"name\": \"Wikipedia\"}, {\"url\": \"https://cal.syoboi.jp/tid/6567\", \"name\": \"Syoboi\"}]', '{\"Sequel\": [{\"type\": \"anime\", \"mal_id\": 48418}], \"Prequel\": [{\"type\": \"anime\", \"mal_id\": 40496}], \"Adaptation\": [{\"type\": \"manga\", \"mal_id\": 115437}]}', 122, 122, 122, '2023-09-24 12:07:28', '2023-09-24 12:07:28', NULL),
(4, 48418, 'Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite Shison-tachi no Gakkou e Kayou II Part 2', '魔王学院の不適合者 ～史上最強の魔王の始祖、転生して子孫たちの学校へ通う～ II', 'Maou Gakuin no Futekigousha 2nd Season, The Misfit of Demon King Academy 2nd Season', 'Action,Fantasy,Mythology,Reincarnation,School', 1, 1, 3, 2, '?', 'Second half of Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite Shison-tachi no Gakkou e Kayou II.', 'https://cdn.myanimelist.net/images/anime/1421/113319l.jpg', '', 1, 4, '', 1, 'Unknown', '', '', '?', 'SILVER LINK.', 'Aniplex,Kadokawa', '', '[{\"url\": \"https://maohgakuin.com/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/maohgakuin\", \"name\": \"@maohgakuin\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=16102\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=24105\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/The_Misfit_of_Demon_King_Academy#Anime\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E9%AD%94%E7%8E%8B%E5%AD%A6%E9%99%A2%E3%81%AE%E4%B8%8D%E9%81%A9%E5%90%88%E8%80%85_%E3%80%9C%E5%8F%B2%E4%B8%8A%E6%9C%80%E5%BC%B7%E3%81%AE%E9%AD%94%E7%8E%8B%E3%81%AE%E5%A7%8B%E7%A5%96%E3%80%81%E8%BB%A2%E7%94%9F%E3%81%97%E3%81%A6%E5%AD%90%E5%AD%AB%E3%81%9F%E3%81%A1%E3%81%AE%E5%AD%A6%E6%A0%A1%E3%81%B8%E9%80%9A%E3%81%86%E3%80%9C\", \"name\": \"Wikipedia\"}]', '{\"Prequel\": [{\"type\": \"anime\", \"mal_id\": 48417}], \"Adaptation\": [{\"type\": \"manga\", \"mal_id\": 115437}]}', 11, 11, 11, '2023-09-24 12:07:36', '2023-09-24 12:07:36', NULL),
(5, 39535, 'Mushoku Tensei: Isekai Ittara Honki Dasu', '無職転生 ～異世界行ったら本気だす～', 'Jobless Reincarnation: I Will Seriously Try If I Go To Another World', 'Adventure,Drama,Fantasy,Ecchi,Isekai,Reincarnation', 1, 1, 2, 2, '11', 'Despite being bullied, scorned, and oppressed all of his life, a 34-year-old shut-in still found the resolve to attempt something heroic—only for it to end in a tragic accident. But in a twist of fate, he awakens in another world as Rudeus Greyrat, starting life again as a baby born to two loving parents.\r\n\r\nPreserving his memories and knowledge from his previous life, Rudeus quickly adapts to his new environment. With the mind of a grown adult, he starts to display magical talent that exceeds all expectations, honing his skill with the help of a mage named Roxy Migurdia. Rudeus learns swordplay from his father, Paul, and meets Sylphiette, a girl his age who quickly becomes his closest friend.\r\n\r\nAs Rudeus\' second chance at life begins, he tries to make the most of his new opportunity while conquering his traumatic past. And perhaps, one day, he may find the one thing he could not find in his old world—love.\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/1530/117776l.jpg', '2021', 1, 4, '8.37', 1, '23 min per ep', 'Qx01pn9l-6g', '2021-01-11', '2021-03-22', 'Studio Bind', 'Frontier Works,TOHO animation,Hakuhodo DY Music & Pictures,BS11,Egg Firm,Kadokawa,GREE,Toho Music', '', '[{\"url\": \"https://mushokutensei.jp/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/mushokutensei_A\", \"name\": \"@mushokutensei_A\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=14758\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=22589\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/Mushoku_Tensei#Anime\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E7%84%A1%E8%81%B7%E8%BB%A2%E7%94%9F_-_%E7%95%B0%E4%B8%96%E7%95%8C%E8%A1%8C%E3%81%A3%E3%81%9F%E3%82%89%E6%9C%AC%E6%B0%97%E3%81%A0%E3%81%99_-\", \"name\": \"Wikipedia\"}, {\"url\": \"https://cal.syoboi.jp/tid/5851\", \"name\": \"Syoboi\"}, {\"url\": \"https://bangumi.tv/subject/277554\", \"name\": \"Bangumi\"}]', '{\"Sequel\": [{\"type\": \"anime\", \"mal_id\": 45576}], \"Adaptation\": [{\"type\": \"manga\", \"mal_id\": 70261}]}', 111, 111, 111, '2023-09-24 14:42:19', '2023-09-24 14:42:19', NULL),
(6, 45576, 'Mushoku Tensei: Isekai Ittara Honki Dasu Part 2', '無職転生 ～異世界行ったら本気だす～ 第2クール', '', 'Adventure,Drama,Fantasy,Ecchi,Isekai,Reincarnation', 1, 1, 2, 2, '12', 'After the mysterious mana calamity, Rudeus Greyrat and his fierce student Eris Boreas Greyrat are teleported to the Demon Continent. There, they team up with their newfound companion Ruijerd Supardia—the former leader of the Superd\'s Warrior group—to form \"Dead End,\" a successful adventurer party. Making a name for themselves, the trio journeys across the continent to make their way back home to Fittoa.\r\n\r\nFollowing the advice he received from the faceless god Hitogami, Rudeus saves Kishirika Kishirisu, the Great Emperor of the Demon World, who rewards him by granting him a strange power. Now, as Rudeus masters the powerful ability that offers a number of new opportunities, it might prove to be more than what he bargained for when unexpected dangers threaten to hinder their travels.\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/1028/117777l.jpg', '2021', 4, 4, '8.69', 1, '23 min per ep', 'BbbRytVhaDs', '2021-10-04', '2021-12-20', 'Studio Bind', 'Frontier Works,TOHO animation,Tokyo MX,Hakuhodo DY Music & Pictures,BS11,Egg Firm,Kadokawa,GREE Entertainment', '', '[{\"url\": \"https://mushokutensei.jp/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/mushokutensei_A\", \"name\": \"@mushokutensei_A\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=15954\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=24164\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/Mushoku_Tensei#Anime\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E7%84%A1%E8%81%B7%E8%BB%A2%E7%94%9F_%E3%80%9C%E7%95%B0%E4%B8%96%E7%95%8C%E8%A1%8C%E3%81%A3%E3%81%9F%E3%82%89%E6%9C%AC%E6%B0%97%E3%81%A0%E3%81%99%E3%80%9C\", \"name\": \"Wikipedia\"}, {\"url\": \"https://cal.syoboi.jp/tid/6113\", \"name\": \"Syoboi\"}, {\"url\": \"https://bangumi.tv/subject/325585\", \"name\": \"Bangumi\"}]', '{\"Sequel\": [{\"type\": \"anime\", \"mal_id\": 55818}], \"Prequel\": [{\"type\": \"anime\", \"mal_id\": 39535}], \"Adaptation\": [{\"type\": \"manga\", \"mal_id\": 70261}], \"Side story\": [{\"type\": \"anime\", \"mal_id\": 50360}]}', 14, 14, 14, '2023-09-24 14:42:32', '2023-09-24 14:42:32', NULL),
(7, 50360, 'Mushoku Tensei: Isekai Ittara Honki Dasu - Eris no Goblin Toubatsu', '無職転生 ～異世界行ったら本気だす～ エリスのゴブリン討伐', 'Mushoku Tensei: Jobless Reincarnation Special, Mushoku Tensei: Isekai Ittara Honki Dasu Special', 'Drama,Fantasy,Ecchi,Isekai,Reincarnation', 5, 1, 2, 2, '1', 'Unaired episode included in the fourth Blu-ray volume. The episode will take place during the same time in episode 16 (episode 5 in second cours) and depict what Eris and Ruijerd were up to outside the main story, as teased by the comment \"Goblin Extermination.\"\r\n\r\n(Source: MAL News)', 'https://cdn.myanimelist.net/images/anime/1094/120148l.jpg', '2022', 1, 4, '7.86', 1, '23 min', 'D_u6BZYp93U', '2022-03-16', '?', 'Studio Bind', 'Frontier Works,TOHO animation,Hakuhodo DY Music & Pictures,BS11,Egg Firm,Kadokawa,GREE Entertainment', '', '[{\"url\": \"https://mushokutensei.jp/bluray/bluray04/\", \"name\": \"Official Site\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=15954\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=24969\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/Mushoku_Tensei#Anime\", \"name\": \"Wikipedia\"}]', '{\"Adaptation\": [{\"type\": \"manga\", \"mal_id\": 70261}], \"Parent story\": [{\"type\": \"anime\", \"mal_id\": 45576}]}', 76, 76, 76, '2023-09-24 14:43:03', '2023-09-24 14:43:03', NULL),
(8, 55818, 'Mushoku Tensei II: Isekai Ittara Honki Dasu - Shugo Jutsushi Fitz', '無職転生Ⅱ ～異世界行ったら本気だす～ 第0話「守護術師フィッツ」', 'Mushoku Tensei Ⅱ: Isekai Ittara Honki Dasu Episode 0', 'Adventure,Drama,Fantasy,Ecchi,Isekai,Reincarnation', 5, 1, 2, 2, '1', 'Episode 0 of Mushoku Tensei II: Isekai Ittara Honki Dasu.', 'https://cdn.myanimelist.net/images/anime/1627/136934l.jpg', '2023', 1, 4, '7.49', 1, '24 min', '', '2023-07-03', '?', 'Studio Bind', 'Frontier Works,TOHO animation,Hakuhodo DY Music & Pictures,BS11,Egg Firm,Kadokawa,GREE Entertainment', '', '[{\"url\": \"https://mushokutensei.jp/\", \"name\": \"Official Site\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17236\", \"name\": \"AniDB\"}]', '{\"Sequel\": [{\"type\": \"anime\", \"mal_id\": 51179}], \"Prequel\": [{\"type\": \"anime\", \"mal_id\": 45576}], \"Adaptation\": [{\"type\": \"manga\", \"mal_id\": 70261}]}', 33, 33, 33, '2023-09-24 14:43:21', '2023-09-24 14:43:21', NULL),
(9, 51179, 'Mushoku Tensei II: Isekai Ittara Honki Dasu', '無職転生 II ～異世界行ったら本気だす～', 'Jobless Reincarnation: I Will Seriously Try If I Go To Another World, Mushoku Tensei: Isekai Ittara Honki Dasu 2nd Season', 'Adventure,Drama,Fantasy,Ecchi,Isekai,Reincarnation', 1, 1, 1, 2, '12', 'After his relationship with Eris Boreas Greyrat reaches new heights, Rudeus Greyrat is ecstatic. Unfortunately, his joy is short-lived, as Eris suddenly abandons him to embark on her own journey. Believing that Eris has lost all interest in him, a heartbroken and depressed Rudeus sets forth to the Northern Territories. With his sole goal being to locate his mother on the vast continent, Rudeus wonders if persisting through daily life is worth the pain, falling into a robotic routine as he endlessly ruminates on his lost love.\r\n\r\nHowever, the dangers of the North soon prove that one cannot survive with a dulled mind. While on a quest with the party Counter Arrow, with whom he recently became acquainted, Rudeus has a brush with death—an experience that forces him to finally snap out of his despair. With his newfound teammates, Rudeus rediscovers the pleasure of daily adventuring and moves forward with his original goal of living his second lease on life to the fullest.\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/1898/138005l.jpg', '2023', 3, 4, '8.5', 1, '23 min per ep', 'keti2rbgI6c', '2023-07-10', '2023-09-25', 'Studio Bind', 'Frontier Works,TOHO animation,Hakuhodo DY Music & Pictures,BS11,Egg Firm,Kadokawa,GREE Entertainment', '', '[{\"url\": \"https://mushokutensei.jp/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/mushokutensei_A\", \"name\": \"@mushokutensei_A\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17236\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=25412\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/Mushoku_Tensei#Anime\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E7%84%A1%E8%81%B7%E8%BB%A2%E7%94%9F_%E3%80%9C%E7%95%B0%E4%B8%96%E7%95%8C%E8%A1%8C%E3%81%A3%E3%81%9F%E3%82%89%E6%9C%AC%E6%B0%97%E3%81%A0%E3%81%99%E3%80%9C_(%E3%82%A2%E3%83%8B%E3%83%A1)\", \"name\": \"Wikipedia\"}, {\"url\": \"https://cal.syoboi.jp/tid/6721\", \"name\": \"Syoboi\"}, {\"url\": \"https://bgm.tv/subject/373247\", \"name\": \"Bangumi\"}]', '{\"Sequel\": [{\"type\": \"anime\", \"mal_id\": 55888}], \"Prequel\": [{\"type\": \"anime\", \"mal_id\": 55818}], \"Adaptation\": [{\"type\": \"manga\", \"mal_id\": 70261}]}', 5, 5, 5, '2023-09-24 14:43:39', '2023-09-24 14:43:39', NULL),
(10, 55888, 'Mushoku Tensei II: Isekai Ittara Honki Dasu Part 2', '無職転生 II ～異世界行ったら本気だす～', 'Jobless Reincarnation: I Will Seriously Try If I Go To Another World, Mushoku Tensei: Isekai Ittara Honki Dasu 2nd Season Part 2', 'Adventure,Drama,Fantasy,Ecchi,Isekai,Reincarnation', 1, 1, 3, 2, '12', 'Part 2 of Mushoku Tensei II: Isekai Ittara Honki Dasu', 'https://cdn.myanimelist.net/images/anime/1267/136999l.jpg', '2024', 2, 4, '', 1, 'Unknown', '', '2024-04-01', '?', 'Studio Bind', '', '', '[{\"url\": \"https://mushokutensei.jp/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/mushokutensei_A\", \"name\": \"@mushokutensei_A\"}, {\"url\": \"https://en.wikipedia.org/wiki/Mushoku_Tensei#Anime\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E7%84%A1%E8%81%B7%E8%BB%A2%E7%94%9F_%E3%80%9C%E7%95%B0%E4%B8%96%E7%95%8C%E8%A1%8C%E3%81%A3%E3%81%9F%E3%82%89%E6%9C%AC%E6%B0%97%E3%81%A0%E3%81%99%E3%80%9C_(%E3%82%A2%E3%83%8B%E3%83%A1)\", \"name\": \"Wikipedia\"}]', '{\"Prequel\": [{\"type\": \"anime\", \"mal_id\": 51179}], \"Adaptation\": [{\"type\": \"manga\", \"mal_id\": 70261}]}', 9, 9, 9, '2023-09-24 14:43:53', '2023-09-24 14:43:53', NULL);

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
(1, '', ''),
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `auth_identities`
--

INSERT INTO `auth_identities` (`id`, `user_id`, `type`, `name`, `secret`, `secret2`, `expires`, `extra`, `force_reset`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'email_password', NULL, 'akaisora09@gmail.com', '$2y$10$fNW/eSalcB5LeMBF152cCO1d66QFBnVDaPNO10.xpZ8PPyW6J4a/m', NULL, NULL, 0, '2023-09-25 10:30:13', '2023-05-12 19:52:20', '2023-09-25 10:30:13'),
(19, 1, 'magic-link', NULL, '76ff8bcade7ee43313a9', NULL, '2023-09-25 11:56:36', NULL, 0, NULL, '2023-09-25 10:56:36', '2023-09-25 10:56:36');

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
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb3;

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
(205, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-25 10:30:13', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `episode`
--

INSERT INTO `episode` (`id`, `uid`, `ep_id_name`, `ep_name`, `ep_jname`, `ep_romaji`, `ep_aired`, `ep_view`, `ep_view_month`, `ep_view_years`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 40496, '1', 'The Misfit of Demon King Academy', '魔王学院の不適合者', 'Maou Gakuin no Futekigousha ', '2020-07-04', 37, 37, 37, '2023-09-24 17:52:57', '2023-09-24 17:52:57', NULL),
(2, 40496, '2', 'The Witch of Destruction', '破壊の魔女', 'Hametsu no Majo ', '2020-07-11', 0, 0, 0, '2023-09-24 17:52:57', '2023-09-24 17:52:57', NULL),
(3, 40496, '3', 'Sasha\'s True Intentions', 'サーシャの真意', 'Sasha no Shini ', '2020-07-18', 0, 0, 0, '2023-09-24 17:52:57', '2023-09-24 17:52:57', NULL),
(4, 40496, '4', '15th Birthday', '15歳の誕生日', 'Juugo no Tanjoubi ', '2020-07-25', 0, 0, 0, '2023-09-24 17:52:57', '2023-09-24 17:52:57', NULL),
(5, 40496, '5', 'The Transfer Student', '転入生', 'Tennyuusei ', '2020-08-01', 0, 0, 0, '2023-09-24 17:52:57', '2023-09-24 17:52:57', NULL),
(6, 40496, '6', 'Magic Sword Tournament', '魔剣大会', 'Maken Taikai ', '2020-08-08', 0, 0, 0, '2023-09-24 17:52:57', '2023-09-24 17:52:57', NULL),
(7, 40496, '7', 'Mother\'s Words', '母の言葉', 'Haha no Kotoba ', '2020-08-15', 0, 0, 0, '2023-09-24 17:52:57', '2023-09-24 17:52:57', NULL),
(8, 40496, '8', 'The Final Duel', '二人の決勝戦', 'Futari no Kesshousen ', '2020-08-22', 0, 0, 0, '2023-09-24 17:52:57', '2023-09-24 17:52:57', NULL),
(9, 40496, '9', 'The Mystery of the Hero Academy', '勇者学院の謎', 'Yuusha Gakuin no Nazo ', '2020-08-29', 0, 0, 0, '2023-09-24 17:52:57', '2023-09-24 17:52:57', NULL),
(10, 40496, '10', 'Inter-Academy Exams', '学院別対抗試験', 'Gakuin Betsu Taikou Shiken ', '2020-09-05', 0, 0, 0, '2023-09-24 17:52:57', '2023-09-24 17:52:57', NULL),
(11, 40496, '11', 'The Glow of Life', '命の輝き', 'Inochi no Kagayaki ', '2020-09-12', 0, 0, 0, '2023-09-24 17:52:57', '2023-09-24 17:52:57', NULL),
(12, 40496, '12', 'Taboo Magic', '禁忌の魔法', 'Kinki no Mahou ', '2020-09-19', 0, 0, 0, '2023-09-24 17:52:57', '2023-09-24 17:52:57', NULL),
(13, 40496, '13', 'Let the World Be Filled With Love', '世界が愛に満ちるように', 'Sekai ga Ai ni Michiru You ni ', '2020-09-26', 0, 0, 0, '2023-09-24 17:52:57', '2023-09-24 17:52:57', NULL),
(14, 48417, '1', 'A Lesson by God', '神の授業', 'Kami no Jugyou ', '2023-01-08', 7, 7, 7, '2023-09-24 17:53:24', '2023-09-24 17:53:24', NULL),
(15, 48417, '2', 'The Demon King’s Duel of Intellect', '', '', '', 1, 1, 1, '2023-09-24 17:53:24', '2023-09-24 17:53:24', NULL),
(16, 48417, '3', 'The Spirit\'s School Building', '', '', '', 0, 0, 0, '2023-09-24 17:53:24', '2023-09-24 17:53:24', NULL),
(17, 48417, '4', 'The Spirit’s Trial', '', '', '', 0, 0, 0, '2023-09-24 17:53:24', '2023-09-24 17:53:24', NULL),
(18, 48417, '5', 'In Between Royalty and Mixed Blood', '', '', '', 0, 0, 0, '2023-09-24 17:53:24', '2023-09-24 17:53:24', NULL),
(19, 48417, '6', 'The Great Spirit Mother and the Demon King\'s Right-hand Man', '', '', '', 1, 1, 1, '2023-09-24 17:53:24', '2023-09-24 17:53:24', NULL),
(20, 48417, '7', '', '', '', '', 0, 0, 0, '2023-09-24 17:53:47', '2023-09-24 17:53:47', NULL),
(21, 48417, '8', '', '', '', '', 0, 0, 0, '2023-09-24 17:53:52', '2023-09-24 17:53:52', NULL),
(22, 48417, '9', '', '', '', '', 0, 0, 0, '2023-09-24 17:54:26', '2023-09-24 17:54:26', NULL),
(23, 48417, '10', '', '', '', '', 0, 0, 0, '2023-09-24 17:54:31', '2023-09-24 17:54:31', NULL),
(24, 48417, '11', '', '', '', '', 0, 0, 0, '2023-09-24 17:54:35', '2023-09-24 17:54:35', NULL),
(25, 48417, '12', '', '', '', '', 56, 56, 56, '2023-09-24 17:54:38', '2023-09-24 17:54:38', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `episode_embed`
--

INSERT INTO `episode_embed` (`id`, `embed_order`, `embed_type`, `embed_uid`, `embed_id`, `embed_name`, `embed_frame`) VALUES
(27, 0, 2, 40496, 1, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(28, 0, 2, 40496, 2, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(29, 0, 2, 40496, 3, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(30, 0, 2, 40496, 4, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(31, 0, 2, 40496, 5, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(32, 0, 2, 40496, 6, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(33, 0, 2, 40496, 7, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(34, 0, 2, 40496, 8, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(35, 0, 2, 40496, 9, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(36, 0, 2, 40496, 10, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(37, 0, 2, 40496, 11, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(38, 0, 2, 40496, 12, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(39, 0, 2, 40496, 13, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(40, 0, 3, 40496, 1, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-dub-episode-'),
(41, 0, 3, 40496, 2, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-dub-episode-'),
(42, 0, 3, 40496, 3, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-dub-episode-'),
(43, 0, 3, 40496, 4, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-dub-episode-'),
(44, 0, 3, 40496, 5, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-dub-episode-'),
(45, 0, 3, 40496, 6, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-dub-episode-'),
(46, 0, 3, 40496, 7, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-dub-episode-'),
(47, 0, 3, 40496, 8, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-dub-episode-'),
(48, 0, 3, 40496, 9, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-dub-episode-'),
(49, 0, 3, 40496, 10, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-dub-episode-'),
(50, 0, 3, 40496, 11, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-dub-episode-'),
(51, 0, 3, 40496, 12, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-dub-episode-'),
(52, 0, 3, 40496, 13, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-dub-episode-'),
(53, 0, 2, 48417, 1, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-kayou-ii-episode-'),
(54, 0, 2, 48417, 2, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-kayou-ii-episode-'),
(55, 0, 2, 48417, 3, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-kayou-ii-episode-'),
(56, 0, 2, 48417, 4, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-kayou-ii-episode-'),
(57, 0, 2, 48417, 5, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-kayou-ii-episode-'),
(58, 0, 2, 48417, 6, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-kayou-ii-episode-'),
(59, 0, 2, 48417, 7, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-kayou-ii-episode-'),
(60, 0, 2, 48417, 8, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-kayou-ii-episode-'),
(61, 0, 2, 48417, 9, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-kayou-ii-episode-'),
(62, 0, 2, 48417, 10, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-kayou-ii-episode-'),
(63, 0, 2, 48417, 11, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-kayou-ii-episode-'),
(64, 0, 2, 48417, 12, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-kayou-ii-episode-'),
(65, 0, 3, 48417, 1, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-kayou-ii-dub-episode-'),
(66, 0, 3, 48417, 2, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-kayou-ii-dub-episode-'),
(67, 0, 3, 48417, 3, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-kayou-ii-dub-episode-'),
(68, 0, 3, 48417, 4, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-kayou-ii-dub-episode-'),
(69, 0, 3, 48417, 5, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-kayou-ii-dub-episode-'),
(70, 0, 3, 48417, 6, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-kayou-ii-dub-episode-');

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
-- Tablo için tablo yapısı `license`
--

DROP TABLE IF EXISTS `license`;
CREATE TABLE IF NOT EXISTS `license` (
  `id` int NOT NULL AUTO_INCREMENT,
  `web_site` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lic_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lic_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lic_check` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lic_date` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `web_site` (`web_site`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(1, 'Site Url', '', 'https://localhost/', 'License', 'License Url', '2023-07-24 16:03:40', '2023-07-24 16:03:40'),
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
