-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 07 Eyl 2023, 18:09:19
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
  `ani_raw` int NOT NULL,
  `ani_sub` int NOT NULL,
  `ani_dub` int NOT NULL,
  `ani_turk` int NOT NULL,
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
  UNIQUE KEY `uid_2` (`uid`),
  KEY `uid` (`uid`),
  KEY `ani_name` (`ani_name`),
  KEY `ani_jname` (`ani_jname`),
  KEY `ani_type` (`ani_type`),
  KEY `ani_stats` (`ani_stats`),
  KEY `ani_source` (`ani_source`),
  KEY `ani_country` (`ani_country`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `anime`
--

INSERT INTO `anime` (`id`, `uid`, `ani_name`, `ani_jname`, `ani_synonyms`, `ani_genre`, `ani_type`, `ani_country`, `ani_stats`, `ani_source`, `ani_ep`, `ani_synopsis`, `ani_poster`, `ani_release`, `ani_release_season`, `ani_rate`, `ani_score`, `ani_raw`, `ani_sub`, `ani_dub`, `ani_turk`, `ani_time`, `ani_pv`, `ani_aired`, `ani_aired_fin`, `ani_studio`, `ani_producers`, `ani_manga_url`, `ani_offical_site`, `view_count`, `view_count_month`, `view_count_years`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 40496, 'Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite Shison-tachi no Gakkou e Kayou', '魔王学院の不適合者 ～史上最強の魔王の始祖、転生して子孫たちの学校へ通う～', 'The Misfit of Demon King Academy: History\'s Strongest Demon King Reincarnates and Goes to School with His Descendants', 'Action,Fantasy,Mythology,Reincarnation,School', 1, 1, 2, 2, '13', 'In the distant past, a war between humans and demons brought about widespread chaos and bloodshed. To put an end to this seemingly endless conflict, Demon King Anos Voldigoad willingly sacrificed his life, hoping to be reborn in a peaceful future.\r\n\r\nIn preparation for their king\'s return, the demon race created the Demon King Academy, an elite institution tasked with determining Anos\' identity when he reawakens. He reincarnates two millennia later, but to his surprise, he soon learns that the level of magic in the world has drastically waned during his absence. Moreover, when he enrolls at the academy to reclaim his rightful title, he finds out that demonkind remembers him differently. His personality, his deeds, and even his legacy are all falsified—masked beneath the name of an impostor. This \"lack\" of common knowledge renders him the academy\'s outlier—a misfit never before seen in history.\r\n\r\nDespite these drawbacks, Anos remains unfazed. As he sets out to uncover those altering his glorious past, he takes it upon himself to make his descendants recognize that their ruler has finally returned.\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/1126/108573l.jpg', '2020', 3, 4, '7.37', 0, 1, 0, 0, '23 min per ep', 'https://www.youtube.com/watch?v=1xmzzF0XQEY', '2020-07-04', '2020-09-26', 'SILVER LINK.', 'Aniplex,Movic,AT-X,Studio Mausu,Tokyo MX,Q-Tec,Docomo Anime Store,Medicos Entertainment,BS11,Contents Seed,Kadokawa,ADK Marketing Solutions', '', '[{\"url\": \"https://maohgakuin.com/1st/\", \"name\": \"Official Site\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=15131\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=22555\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/The_Misfit_of_Demon_King_Academy#Anime\", \"name\": \"Wikipedia\"}]', 24, 24, 24, '2023-08-22 15:48:46', '2023-08-22 15:48:46', NULL),
(2, 20785, 'Mahouka Koukou no Rettousei', '魔法科高校の劣等生', '', 'Action,Fantasy,Romance,Sci-Fi,School', 1, 1, 2, 2, '26', 'In the dawn of the 21st century, magic, long thought to be folklore and fairy tales, has become a systematized technology and is taught as a technical skill. In First High School, the institution for magicians, students are segregated into two groups based on their entrance exam scores: \"Blooms,\" those who receive high scores, are assigned to the First Course, while \"Weeds\" are reserve students assigned to the Second Course.\r\n\r\nMahouka Koukou no Rettousei follows the siblings, Tatsuya and Miyuki Shiba, who are enrolled in First High School. Upon taking the exam, the prodigious Miyuki is placed in the First Course, while Tatsuya is relegated to the Second Course. Though his practical test scores and status as a \"Weed\" show him to be magically inept, he possesses extraordinary technical knowledge, physical combat capabilities, and unique magic techniques—making Tatsuya the irregular at a magical high school.\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/11/61039l.jpg', '2014', 2, 3, '7.4', 0, 1, 0, 0, '23 min per ep', 'https://www.youtube.com/watch?v=v5AOTuxt2XY', '2014-04-06', '2014-09-28', 'Madhouse', 'Aniplex,Square Enix,Movic,ASCII Media Works', '', '[{\"url\": \"http://mahouka.jp/tv/\", \"name\": \"Official Site\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=10182\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=15763\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/The_Irregular_at_Magic_High_School\", \"name\": \"Wikipedia\"}]', 24, 24, 24, '2023-08-29 19:16:36', '2023-08-29 19:16:36', NULL),
(3, 53887, 'Spy x Family Season 2', 'SPY×FAMILY Season 2', '', 'Action,Comedy,Childcare,Shounen', 1, 1, 3, 1, '?', 'Second season of Spy x Family.', 'https://cdn.myanimelist.net/images/anime/1573/136206l.jpg', '2023', 4, 3, '', 0, 0, 0, 0, 'Unknown', 'https://www.youtube.com/watch?v=nbbCX5kAMss', '2023-10-01', '?', 'Wit Studio,CloverWorks', 'TOHO animation,Shueisha', '', '[{\"url\": \"http://spy-family.net/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/spyfamily_anime\", \"name\": \"@spyfamily_anime\"}, {\"url\": \"https://twitter.com/spyfamily_en\", \"name\": \"@spyfamily_en\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17784\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=26746\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/Spy_%C3%97_Family#Anime\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/SPY%C3%97FAMILY\", \"name\": \"Wikipedia\"}]', 1, 1, 1, '2023-08-29 22:37:41', '2023-08-29 22:37:41', NULL),
(4, 55644, 'Dr. Stone: New World Part 2', 'Dr.STONE NEW WORLD', 'Dr. Stone 3rd Season Part 2', 'Adventure,Comedy,Sci-Fi,Time Travel,Shounen', 1, 1, 3, 1, '?', 'Part two of Dr. Stone: New World.', 'https://cdn.myanimelist.net/images/anime/1171/136485l.jpg', '2023', 4, 3, '', 0, 0, 0, 0, 'Unknown', 'https://www.youtube.com/watch?v=g6lRblWDKCk', '2023-10-12', '?', 'TMS Entertainment', '', '', '[{\"url\": \"https://dr-stone.jp/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/STONE_anime_off\", \"name\": \"@STONE_anime_off\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=18064\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=28620\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/Dr._Stone#Anime\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/Dr.STONE#%E3%83%86%E3%83%AC%E3%83%93%E3%82%A2%E3%83%8B%E3%83%A1\", \"name\": \"Wikipedia\"}]', 1, 1, 1, '2023-08-29 22:37:58', '2023-08-29 22:37:58', NULL),
(5, 54918, 'Tokyo Revengers: Tenjiku-hen', '東京リベンジャーズ 天竺編', '', 'Action,Drama,Supernatural,Delinquents,Time Travel,Shounen', 1, 1, 3, 1, '?', 'Third season of Tokyo Revengers.', 'https://cdn.myanimelist.net/images/anime/1265/135056l.jpg', '2023', 4, 4, '', 0, 0, 0, 0, 'Unknown', 'https://www.youtube.com/watch?v=bMeWENMdq3k', '2023-10-01', '?', 'LIDENFILMS', '', '', '[{\"url\": \"https://tokyo-revengers-anime.com/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/anime_toman\", \"name\": \"@anime_toman\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17969\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=27739\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/Tokyo_Revengers#Anime\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E6%9D%B1%E4%BA%AC%E5%8D%8D%E3%83%AA%E3%83%99%E3%83%B3%E3%82%B8%E3%83%A3%E3%83%BC%E3%82%BA\", \"name\": \"Wikipedia\"}]', 5, 5, 5, '2023-08-29 22:38:16', '2023-08-29 22:38:16', NULL),
(6, 52991, 'Sousou no Frieren', '葬送のフリーレン', 'Frieren: Beyond Journey\'s End', 'Adventure,Drama,Fantasy,Shounen', 1, 1, 3, 1, '?', 'The demon king has been defeated, and the victorious hero party returns home before disbanding. The four—mage Frieren, hero Himmel, priest Heiter, and warrior Eisen—reminisce about their decade-long journey as the moment to bid each other farewell arrives. But the passing of time is different for elves, thus Frieren witnesses her companions slowly pass away one by one.\r\n\r\nBefore his death, Heiter manages to foist a young human apprentice called Fern onto Frieren. Driven by the elf\'s passion for collecting a myriad of magic spells, the pair embarks on a seemingly aimless journey, revisiting the places that the heroes of yore had visited. Along their travels, Frieren slowly confronts her regrets of missed opportunities to form deeper bonds with her now-deceased comrades.\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/1015/138006l.jpg', '2023', 4, 1, '', 0, 0, 0, 0, 'Unknown', 'https://www.youtube.com/watch?v=itKPyGXrCVA', '2023-09-29', '?', 'Madhouse', 'TOHO animation,Shogakukan', '', '[{\"url\": \"https://frieren-anime.jp/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/Anime_Frieren\", \"name\": \"@Anime_Frieren\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17617\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=26334\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/Frieren#Anime\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E8%91%AC%E9%80%81%E3%81%AE%E3%83%95%E3%83%AA%E3%83%BC%E3%83%AC%E3%83%B3\", \"name\": \"Wikipedia\"}]', 0, 0, 0, '2023-08-29 22:38:39', '2023-08-29 22:38:39', NULL),
(7, 50664, 'Saihate no Paladin: Tetsusabi no Yama no Ou', '最果てのパラディン 鉄錆の山の王', 'Saihate no Paladin 2nd Season', 'Action,Adventure,Fantasy,Isekai,Reincarnation', 1, 1, 3, 2, '?', 'Second season of Saihate no Paladin.', 'https://cdn.myanimelist.net/images/anime/1665/138037l.jpg', '2023', 4, 3, '', 0, 0, 0, 0, 'Unknown', 'https://www.youtube.com/watch?v=UWUEzEN1EIQ', '2023-10-07', '?', 'OLM,Sunrise Beyond', 'DAX Production', '', '[{\"url\": \"https://farawaypaladin.com/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/faraway_paladin\", \"name\": \"@faraway_paladin\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17078\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=25093\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/The_Faraway_Paladin#Anime\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E6%9C%80%E6%9E%9C%E3%81%A6%E3%81%AE%E3%83%91%E3%83%A9%E3%83%87%E3%82%A3%E3%83%B3\", \"name\": \"Wikipedia\"}]', 0, 0, 0, '2023-08-29 22:39:06', '2023-08-29 22:39:06', NULL),
(8, 54492, 'Kusuriya no Hitorigoto', '薬屋のひとりごと', 'Drugstore Soliloquy', 'Drama,Mystery,Historical,Medical', 1, 1, 3, 2, '?', 'In an imperial court in ancient China, it has been a few months since a 17-year-old girl known as Maomao was kidnapped and forced to work as a low-level servant at the emperor\'s palace. Still, she manages to retain her curious and pragmatic spirit, planning to work until her years of servitude are over. One day, however, she catches wind of the fact that the emperor\'s two infants have fallen gravely ill. She decides to secretly take action, drawing on her experience as a pharmacist raised in the poor red-light district.\r\n\r\nDespite Maomao\'s attempts to remain anonymous, she soon catches the eye of Jinshi, an influential eunuch who recognizes her talents. Maomao soon finds herself in the emperor\'s inner court, where she gradually makes a name for herself by utilizing her knowledge and eccentric personality to solve various medical mysteries.\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/1708/138033l.jpg', '2023', 4, 1, '', 0, 0, 0, 0, 'Unknown', 'https://www.youtube.com/watch?v=OI3MLOX9CpA', '2023-10-22', '?', 'OLM,TOHO animation STUDIO', 'TOHO animation', '', '[{\"url\": \"https://kusuriyanohitorigoto.jp/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/kusuriya_PR\", \"name\": \"@kusuriya_PR\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17870\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=27141\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/The_Apothecary_Diaries\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E8%96%AC%E5%B1%8B%E3%81%AE%E3%81%B2%E3%81%A8%E3%82%8A%E3%81%94%E3%81%A8\", \"name\": \"Wikipedia\"}]', 2, 2, 2, '2023-08-29 22:39:38', '2023-08-29 22:39:38', NULL),
(9, 52990, 'Keikenzumi na Kimi to, Keiken Zero na Ore ga, Otsukiai suru Hanashi.', '経験済みなキミと、 経験ゼロなオレが、 お付き合いする話。', 'Our Dating Story: The Experienced You and The Inexperienced Me, Kimizero', 'Romance,School', 1, 1, 3, 2, '?', 'Ryuuto Kashima is a gloomy high schooler. As part of a punishment game, he was forced to confess to Runa Shirakawa, a girl from the top of the school caste who was admired by everyone.\r\n\r\nThey ended up going out for the unexpected reason of \"Err, I\'m free now so...\" but Ryuuto ends up following and eavesdropping on Runa being confessed by a handsome soccer club member, and Runa bringing Ryuuto, whom she had just begun dating, to her own room as a matter of course.\r\n\r\nThey have different friends and ways to have fun, and they are different in almost every way. Nonetheless, they begin to relate with each other after being surprised by their differences every day and accepting them.\r\n\r\n(Source: MAL News)', 'https://cdn.myanimelist.net/images/anime/1400/137037l.jpg', '2023', 4, 3, '', 0, 0, 0, 0, 'Unknown', 'https://www.youtube.com/watch?v=5pzAENiLIZI', '2023-10-01', '?', 'ENGI', 'Pony Canyon,Kadokawa', '', '[{\"url\": \"https://kimizero.com/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/kimizero_anime\", \"name\": \"@kimizero_anime\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17616\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=26307\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/Keiken_Zumi_na_Kimi_to,_Keiken_Zero_na_Ore_ga,_Otsukiai_Suru_Hanashi#Anime\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E7%B5%8C%E9%A8%93%E6%B8%88%E3%81%BF%E3%81%AA%E3%82%AD%E3%83%9F%E3%81%A8%E3%80%81%E7%B5%8C%E9%A8%93%E3%82%BC%E3%83%AD%E3%81%AA%E3%82%AA%E3%83%AC%E3%81%8C%E3%80%81%E3%81%8A%E4%BB%98%E3%81%8D%E5%90%88%E3%81%84%E3%81%99%E3%82%8B%E8%A9%B1%E3%80%82\", \"name\": \"Wikipedia\"}]', 0, 0, 0, '2023-08-29 22:39:53', '2023-08-29 22:39:53', NULL),
(10, 53040, 'Kanojo mo Kanojo 2nd Season', 'カノジョも彼女 第2期', 'Kanokano', 'Comedy,Romance,Harem,School,Shounen', 1, 1, 3, 1, '?', 'Second season of Kanojo mo Kanojo.', 'https://cdn.myanimelist.net/images/anime/1063/137100l.jpg', '2023', 4, 3, '', 0, 0, 0, 0, 'Unknown', 'https://www.youtube.com/watch?v=rPGS8QOHg5A', '2023-10-01', '?', 'SynergySP', 'Kodansha,Nichion,Myrica Music,Half HP Studio', '', '[{\"url\": \"https://kanokano-anime.com/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/kanokano_anime\", \"name\": \"@kanokano_anime\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17628\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=26339\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/Girlfriend,_Girlfriend#Anime\", \"name\": \"Wikipedia\"}]', 0, 0, 0, '2023-08-29 22:40:08', '2023-08-29 22:40:08', NULL),
(11, 51215, 'Seijo no Maryoku wa Bannou desu 2nd Season', '聖女の魔力は万能です Season2', 'The power of the saint is all around Season 2', 'Fantasy,Romance,Adult Cast,Isekai,Medical', 1, 1, 3, 2, '?', 'Second season of Seijo no Maryoku wa Bannou Desu.', 'https://cdn.myanimelist.net/images/anime/1077/136855l.jpg', '2023', 4, 3, '', 0, 0, 0, 0, 'Unknown', 'https://www.youtube.com/watch?v=VCstkLIXft8', '2023-10-01', '?', 'Diomedéa', 'Lantis,Kadokawa', '', '[{\"url\": \"https://seijyonomaryoku.jp/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/seijyonoanime\", \"name\": \"@seijyonoanime\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17246\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=25417\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/The_Saint\'s_Magic_Power_is_Omnipotent#Anime\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E8%81%96%E5%A5%B3%E3%81%AE%E9%AD%94%E5%8A%9B%E3%81%AF%E4%B8%87%E8%83%BD%E3%81%A7%E3%81%99\", \"name\": \"Wikipedia\"}]', 0, 0, 0, '2023-08-29 22:40:24', '2023-08-29 22:40:24', NULL),
(12, 52741, 'Undead Unluck', 'アンデッドアンラック', '', 'Action,Comedy,Supernatural,Shounen', 1, 1, 3, 1, '?', 'After reading the conclusion of her favorite manga series, Fuuko Izumo finally feels ready to end her existence. For the past 10 years, Fuuko has been afflicted by a condition that brings extreme misfortune to anyone who touches her. This has had a drastic effect on her surroundings, even inadvertently resulting in the deaths of those around her—including her parents.\r\n\r\nAs she stands on a bridge above train tracks, Fuuko is touched by a strange man, causing the footing underneath him to break and dropping him in front of an oncoming train. However, when Fuuko finds the man\'s corpse, she discovers that his body is regenerating and that he is coming back to life.\r\n\r\nThe man, whom Fuuko names Andy, is immortal—and like her, he also wishes for death. Initially dismissive, Fuuko eventually decides to team up with Andy to give him the best death possible; but a mysterious organization lurks in the shadows, hoping to take advantage of the duo\'s bizarre abilities.\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/1425/134762l.jpg', '2023', 4, 1, '', 0, 0, 0, 0, 'Unknown', 'https://www.youtube.com/watch?v=bZGXu-Ts_o4', '2023-10-07', '?', 'David Production', 'TMS Entertainment,Shueisha', '', '[{\"url\": \"https://undead-unluck.net/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/undeadunluck_an\", \"name\": \"@undeadunluck_an\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17586\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=26250\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/Undead_Unluck#Anime\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E3%82%A2%E3%83%B3%E3%83%87%E3%83%83%E3%83%89%E3%82%A2%E3%83%B3%E3%83%A9%E3%83%83%E3%82%AF\", \"name\": \"Wikipedia\"}]', 1, 1, 1, '2023-08-29 22:40:43', '2023-08-29 22:40:43', NULL),
(13, 55742, 'Mahoutsukai no Yome Season 2 Part 2', '魔法使いの嫁 SEASON2', 'The Ancient Magus\' Bride Season 2 Part 2', 'Drama,Fantasy,Romance,Mythology,Shounen', 1, 1, 3, 1, '?', 'Part 2 of Mahoutsukai no Yome Season 2', 'https://cdn.myanimelist.net/images/anime/1518/136823l.jpg', '2023', 4, 3, '', 0, 0, 0, 0, 'Unknown', 'https://www.youtube.com/watch?v=izcEpq2Eu_M', '2023-10-05', '?', 'Studio Kafka', 'flying DOG,Chiptune', '', '[{\"url\": \"https://mahoyome.jp/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/mahoyomeproject\", \"name\": \"@mahoyomeproject\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=18076\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=28732\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/The_Ancient_Magus\'_Bride#Anime\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E9%AD%94%E6%B3%95%E4%BD%BF%E3%81%84%E3%81%AE%E5%AB%81#%E3%83%86%E3%83%AC%E3%83%93%E3%82%A2%E3%83%8B%E3%83%A1\", \"name\": \"Wikipedia\"}]', 0, 0, 0, '2023-08-29 22:41:00', '2023-08-29 22:41:00', NULL),
(14, 54743, 'Dead Mount Death Play Part 2', 'デッドマウント・デスプレイ', '', 'Action,Fantasy,Supernatural,Reincarnation,Seinen', 1, 1, 3, 1, '?', 'Part 2 of Dead Mount Death Play.', 'https://cdn.myanimelist.net/images/anime/1799/137117l.jpg', '2023', 4, 4, '', 0, 0, 0, 0, '23 min', '', '2023-10-01', '?', 'Geek Toys', '', '', '[{\"url\": \"https://dmdp-anime.jp/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/DMDP_anime\", \"name\": \"@DMDP_anime\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17915\", \"name\": \"AniDB\"}, {\"url\": \"https://en.wikipedia.org/wiki/Dead_Mount_Death_Play#Anime\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E3%83%87%E3%83%83%E3%83%89%E3%83%9E%E3%82%A6%E3%83%B3%E3%83%88%E3%83%BB%E3%83%87%E3%82%B9%E3%83%97%E3%83%AC%E3%82%A4#%E3%83%86%E3%83%AC%E3%83%93%E3%82%A2%E3%83%8B%E3%83%A1\", \"name\": \"Wikipedia\"}]', 1, 1, 1, '2023-08-29 22:41:33', '2023-08-29 22:41:33', NULL),
(15, 51794, 'Nanatsu no Taizai: Mokushiroku no Yonkishi', '黙示録の四騎士', 'The Seven Deadly Sins: Four Knights of the Apocalypse', 'Action,Adventure,Fantasy,Shounen', 1, 1, 3, 1, '?', 'Percival has always lived with his grandfather on God’s Finger, a remote haven that sits high above the clouds. And though he loves the simple life, he secretly longs for adventure. But Percival’s life is changed forever when an intruder—who shares a shocking connection with him—tears away everything he’s ever known.\r\n\r\nWith nothing left to do but chase down the one who took everything from him, Percival sets out on his own. During his journey, the sheltered boy discovers that there are a lot of things he doesn’t know about normal life. Luckily, he meets friends along the way who can help him get by—but how will they react when they find out about Percival’s destiny... and how it’s connected to the end of the world? \r\n\r\n(Source: Kodansha USA)', 'https://cdn.myanimelist.net/images/anime/1389/134598l.jpg', '2023', 4, 3, '', 0, 0, 0, 0, 'Unknown', 'https://www.youtube.com/watch?v=FCK1T_jNx4E', '2023-10-08', '?', 'Telecom Animation Film', 'TMS Entertainment,Kodansha', '', '[{\"url\": \"https://7sins-4knights.net/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/7_taizai\", \"name\": \"@7_taizai\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17355\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=25689\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/Four_Knights_of_the_Apocalypse#Anime\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E4%B8%83%E3%81%A4%E3%81%AE%E5%A4%A7%E7%BD%AA_(%E6%BC%AB%E7%94%BB)\", \"name\": \"Wikipedia\"}, {\"url\": \"https://bangumi.tv/subject/380792\", \"name\": \"Bangumi\"}, {\"url\": \"https://baike.baidu.com/item/默示录的四骑士/59064890\", \"name\": \"Baidu Baike\"}, {\"url\": \"https://movie.douban.com/subject/35897629/\", \"name\": \"Douban\"}]', 0, 0, 0, '2023-08-29 22:41:53', '2023-08-29 22:41:53', NULL),
(16, 53879, 'Kamonohashi Ron no Kindan Suiri', '鴨乃橋ロンの禁断推理', '', 'Comedy,Mystery,Detective,Shounen', 1, 1, 3, 1, '?', 'Despite lacking the skills suited for his role on the Metropolitan Police Department investigative team, Totomaru Isshiki wants to solve murders and help people. Following the advice of one of his seniors, he ventures out to enlist the aid of the reclusive Ron Kamonohashi. Five years ago, Ron was the most promising detective from the illustrious Detective Training Academy Blue; yet for reasons unknown to the public, he sank into obscurity.\r\n\r\nTotomaru expects a well-dressed, composed man; but what he gets is a messy-haired and uninhibited eccentric. After years in solitude, Ron barely resembles his former self and he refuses to even hear out the detective. However, as quickly as Ron rebuffs, he flips on a dime and dives headfirst into the current serial murder case.\r\n\r\nThe true reason Ron withdrew from the detective world was not from lack of desire, but rather from something out of his control—and Totomaru might just be the key for his return to his former calling. Together, the wide-eyed officer and deranged detective tackle each mystery that comes their way.\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/1799/137123l.jpg', '2023', 4, 3, '', 0, 0, 0, 0, 'Unknown', 'https://www.youtube.com/watch?v=MtU08sDf4SM', '2023-10-02', '?', 'Diomedéa', 'Shueisha,Kadokawa,Bit grooove promotion', '', '[{\"url\": \"https://kamonohashiron.com/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/kamonohashi_ron\", \"name\": \"@kamonohashi_ron\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17783\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=26745\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/Ron_Kamonohashi\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E9%B4%A8%E4%B9%83%E6%A9%8B%E3%83%AD%E3%83%B3%E3%81%AE%E7%A6%81%E6%96%AD%E6%8E%A8%E7%90%86\", \"name\": \"Wikipedia\"}]', 0, 0, 0, '2023-08-29 22:41:59', '2023-08-29 22:41:59', NULL),
(17, 50184, 'Seiken Gakuin no Makentsukai', '聖剣学院の魔剣使い', 'Magic Sword Master of Holy Sword School', 'Action,Fantasy,Harem,Reincarnation,School', 1, 1, 3, 2, '?', 'Battles for ancient kingdoms are nothing compared to the battles of a classroom!\r\n\r\nAwakening from magical stasis after a thousand years, the Dark Lord Leonis suddenly finds himself in the body of a ten-year-old boy! He quickly meets Riselia, a girl confronting the Voids, creatures that have nearly exterminated humanity. Determined to uncover the mysteries of this strange new era, Leonis enrolls in Excalibur Academy, a school that trains students to fight back against these enigmatic monsters. Could the Voids hold some connection to Leonis\'s past? \r\n\r\n(Source: Yen Press)', 'https://cdn.myanimelist.net/images/anime/1926/137326l.jpg', '2023', 4, 3, '', 0, 0, 0, 0, 'Unknown', 'https://www.youtube.com/watch?v=b6H9exTx9Hg', '2023-10-01', '?', 'Passione', 'Kadokawa', '', '[{\"url\": \"https://seikengakuin.com\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/SEIKEN_MAKEN\", \"name\": \"@SEIKEN_MAKEN\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=16921\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=24894\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/The_Demon_Sword_Master_of_Excalibur_Academy#Anime\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E8%81%96%E5%89%A3%E5%AD%A6%E9%99%A2%E3%81%AE%E9%AD%94%E5%89%A3%E4%BD%BF%E3%81%84\", \"name\": \"Wikipedia\"}]', 3, 3, 3, '2023-08-29 22:42:15', '2023-08-29 22:42:15', NULL),
(18, 54714, 'Kimi no Koto ga Daidaidaidaidaisuki na 100-nin no Kanojo', '君のことが大大大大大好きな100人の彼女', '', 'Comedy,Romance,Harem,Parody,School,Seinen', 1, 1, 3, 1, '?', 'Upon graduating middle school, Rentarou Aijou manages to confess to the girl he loves. Unfortunately, he gets rejected, making it his 100th rejection in a row. Having experienced heartbreak after heartbreak, he goes to a matchmaking shrine and prays with the hope of finally getting a girlfriend in high school. Suddenly, the god of the shrine appears, promising Rentarou that he will meet one hundred soulmates in high school.\r\n\r\nAlthough skeptical at first, Rentarou quickly acknowledges the truth behind the god\'s words when two of his soulmates—Hakari Hanazono and Karane Inda—confess to him the very same day that they meet him. However, there was one detail that the god forgot to tell Rentarou: if any of his soulmates fails to get into a relationship with him, they will die. Now trapped in a matter of life and death, Rentarou decides to date all of his soulmates.\r\n\r\nWith a heart so big that it can be shared among one hundred girlfriends, Rentarou makes the most out of his unanticipated high school life, with the Rentarou family growing ever larger!\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/1812/136764l.jpg', '2023', 4, 1, '', 0, 0, 0, 0, 'Unknown', 'https://www.youtube.com/watch?v=qYsm_HQnEYQ', '2023-10-08', '?', 'Bibury Animation Studios', 'Lantis,Bushiroad,Shueisha,Bushiroad Move', '', '[{\"url\": \"https://hyakkano.com/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/hyakkano_anime\", \"name\": \"@hyakkano_anime\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17906\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=27380\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/The_100_Girlfriends_Who_Really,_Really,_Really,_Really,_Really_Love_You#Anime\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E5%90%9B%E3%81%AE%E3%81%93%E3%81%A8%E3%81%8C%E5%A4%A7%E5%A4%A7%E5%A4%A7%E5%A4%A7%E5%A4%A7%E5%A5%BD%E3%81%8D%E3%81%AA100%E4%BA%BA%E3%81%AE%E5%BD%BC%E5%A5%B3\", \"name\": \"Wikipedia\"}]', 0, 0, 0, '2023-08-29 22:42:31', '2023-08-29 22:42:31', NULL),
(19, 54362, 'Hametsu no Oukoku', 'はめつのおうこく', '', 'Action,Drama,Fantasy,Gore,Shounen', 1, 1, 3, 1, '?', 'For ages, humanity flourished through the power of magic, a gift from witches to aid mankind. But times have changed. The scientific Gear Expansion has made both magic and witches obsolete. In order to liberate humanity from the blight of magic, the mighty Redia Empire began a ruthless hunt to exterminate all witches. Adonis was only a boy when the hunt began, apprentice to a witch he dearly loved. When she perishes at the hands of the empire, Adonis vows revenge. By this furious wizard\'s power, blood will flow!\r\n\r\n(Source: Seven Seas Entertainment)', 'https://cdn.myanimelist.net/images/anime/1455/133116l.jpg', '2023', 4, 1, '', 0, 0, 0, 0, 'Unknown', 'https://www.youtube.com/watch?v=RzT9SDMojB8', '2023-10-01', '?', 'Yokohama Animation Lab', 'Nikkatsu', '', '[{\"url\": \"https://hametsu-anime.com/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/hametsu_anime\", \"name\": \"@hametsu_anime\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17846\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=27066\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/The_Kingdoms_of_Ruin\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E3%81%AF%E3%82%81%E3%81%A4%E3%81%AE%E3%81%8A%E3%81%86%E3%81%93%E3%81%8F\", \"name\": \"Wikipedia\"}]', 0, 0, 0, '2023-08-29 22:42:47', '2023-08-29 22:42:47', NULL),
(20, 54103, 'Hikikomari Kyuuketsuki no Monmon', 'ひきこまり吸血姫の悶々', 'The Shut-In Vampire Princess\' Worries', 'Comedy,Fantasy,Vampire', 1, 1, 3, 2, '?', 'Three years into her life as a shut-in, vampire Terakomari Gandesblood (Komari for short), awakens to find she\'s been appointed as a Commander in the Mulnite Imperial Army! The thing is, her new unit consists solely of belligerent ruffians who revolt against their superiors at the slightest hint of weakness. Although Komari hails from a line of vampires as powerful as they are prestigious, her refusal to drink blood has made her the picture of mediocrity—scrawny, uncoordinated, and inept at magic. With the odds stacked against her, will the help of her trusty (and slightly infatuated) maid Vill be enough for this recluse to blunder her way to success? Or will Komari rue the day she ever left the safety of her room?\r\n\r\n(Source: Yen Press)', 'https://cdn.myanimelist.net/images/anime/1032/137893l.jpg', '2023', 4, 1, '', 0, 0, 0, 0, 'Unknown', 'https://www.youtube.com/watch?v=YRDSausZ4_g', '2023-10-07', '?', 'Project No.9', 'NBCUniversal Entertainment Japan,Bit grooove promotion', '', '[{\"url\": \"https://hikikomari.com/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/komarin_PR\", \"name\": \"@komarin_PR\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17805\", \"name\": \"AniDB\"}, {\"url\": \"https://en.wikipedia.org/wiki/The_Vexations_of_a_Shut-In_Vampire_Princess\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E3%81%B2%E3%81%8D%E3%81%93%E3%81%BE%E3%82%8A%E5%90%B8%E8%A1%80%E5%A7%AB%E3%81%AE%E6%82%B6%E3%80%85#%E3%83%86%E3%83%AC%E3%83%93%E3%82%A2%E3%83%8B%E3%83%A1\", \"name\": \"Wikipedia\"}]', 0, 0, 0, '2023-08-29 22:43:23', '2023-08-29 22:43:23', NULL),
(21, 51304, 'FLCL: Grunge', '', '', 'Action,Avant Garde,Comedy,Sci-Fi,Mecha,Parody', 1, 1, 3, 3, '?', '', 'https://cdn.myanimelist.net/images/anime/1330/121527l.jpg', '2023', 4, 3, '', 0, 0, 0, 0, 'Unknown', 'https://www.youtube.com/watch?v=fD-HHpPws-c', '2023-09-09', '?', 'MontBlanc Pictures', '', '', '[{\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17264\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=25447\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/FLCL\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E3%83%95%E3%83%AA%E3%82%AF%E3%83%AA\", \"name\": \"Wikipedia\"}]', 0, 0, 0, '2023-08-29 22:43:39', '2023-08-29 22:43:39', NULL),
(22, 54959, 'BanG Dream! It\'s MyGO!!!!!', 'バンドリ！It\'s MyGO!!!!!', '', 'Music', 1, 1, 1, 1, '13', '\"Would you be in a band with me for the rest of your life?\"\r\n\r\nIt’s the end of spring of Anon’s first year at Haneoka Girls’ Academy, and almost everyone seems to be in a band. In order to fit in with the rest of the class, Anon, who started school late, scurries to find band members, and finds out that “Haneoka\'s Weirdo\" Tomori has yet to join any bands.\r\n\r\nSo Anon resolves to speak with Tomori at any cost but...\r\n\r\nBruised and unseemly as it is, this is our music, our cry.\r\nWe may be lost, but we’ll keep on moving as we are  lost.\r\n\r\n(Source: Bang Dream website)', 'https://cdn.myanimelist.net/images/anime/1891/136948l.jpg', '2023', 3, 3, '7.97', 0, 0, 0, 0, '24 min per ep', 'https://www.youtube.com/watch?v=YVyXE61eYCA', '2023-06-29', '2023-09-07', 'SANZIGEN', 'Ultra Super Pictures,Bushiroad,Tokyo MX,Good Smile Company,Bushiroad Music,HoriPro International,Ace Crew Entertainment', '', '[{\"url\": \"https://anime.bang-dream.com/mygo/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/bang_dream_mygo\", \"name\": \"@bang_dream_mygo\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17981\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=27861\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/BanG_Dream!#Anime\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/BanG_Dream!#%E3%82%A2%E3%83%8B%E3%83%A1%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3\", \"name\": \"Wikipedia\"}, {\"url\": \"https://cal.syoboi.jp/tid/6716\", \"name\": \"Syoboi\"}]', 1, 1, 1, '2023-08-29 22:45:30', '2023-08-29 22:45:30', NULL),
(23, 54595, 'Kage no Jitsuryokusha ni Naritakute! 2nd Season', '陰の実力者になりたくて！ 2nd Season', 'Shadow Garden 2nd Season', 'Action,Comedy,Fantasy,Isekai,Reincarnation', 1, 1, 1, 2, '12', 'Everything has been going according to plan, but the hour of awakening draws near. Cid Kageno and Shadow Garden investigate the Lawless City, a cesspool where the red moon hangs low in the sky and three powerful monarchs rule the streets. The true draw for Cid, however, is one who can draw blood–the Blood Queen, a vampire who has slumbered in her coffin for eons. Her awakening approaches, and Cid could finally face a day of reckoning.\r\n\r\n(Source: HIDIVE)\r\n\r\nEpisode 1 was previewed at a screening at Anime Expo on July 1, 2023. Regular broadcasting began in October 2023.', 'https://cdn.myanimelist.net/images/anime/1892/133677l.jpg', '2023', 3, 4, '8.49', 0, 0, 0, 0, 'Unknown', 'https://www.youtube.com/watch?v=OqzdUcc3k9Y', '2023-07-01', '?', 'Nexus', '', '', '[{\"url\": \"https://shadow-garden.jp/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/Shadowgarden_PR\", \"name\": \"@Shadowgarden_PR\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17877\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=27193\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/The_Eminence_in_Shadow\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E9%99%B0%E3%81%AE%E5%AE%9F%E5%8A%9B%E8%80%85%E3%81%AB%E3%81%AA%E3%82%8A%E3%81%9F%E3%81%8F%E3%81%A6%21\", \"name\": \"Wikipedia\"}]', 1, 1, 1, '2023-08-29 22:45:57', '2023-08-29 22:45:57', NULL),
(24, 54856, 'Horimiya: Piece', 'ホリミヤ -piece-', '', 'Romance,School,Shounen', 1, 1, 1, 1, '13', 'As the graduation ceremony at Katagiri High School comes to an end, Kyouko Hori, her boyfriend Izumi Miyamura, and their friends begin to look back on their time as students. The moments they shared together may be fleeting, but each one is a colorful piece of their precious memories.\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/1007/136277l.jpg', '2023', 3, 3, '8.2', 0, 0, 0, 0, '23 min per ep', 'https://www.youtube.com/watch?v=MU-Vk5R0vVY', '2023-07-01', '?', 'CloverWorks', 'Aniplex,Square Enix,Mainichi Broadcasting System,Movic,Kanetsu Investment,Global Solutions,Mirai-Kojo', '', '[{\"url\": \"https://horimiya-anime.com/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/horimiya_anime\", \"name\": \"@horimiya_anime\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17946\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=27616\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/Hori-san_to_Miyamura-kun\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E5%A0%80%E3%81%95%E3%82%93%E3%81%A8%E5%AE%AE%E6%9D%91%E3%81%8F%E3%82%93\", \"name\": \"Wikipedia\"}, {\"url\": \"https://cal.syoboi.jp/tid/6749\", \"name\": \"Syoboi\"}]', 1, 1, 1, '2023-08-29 22:46:19', '2023-08-29 22:46:19', NULL),
(25, 54760, 'Ryza no Atelier: Tokoyami no Joou to Himitsu no Kakurega', 'ライザのアトリエ ~常闇の女王と秘密の隠れ家~', '', 'Adventure,Fantasy', 1, 1, 1, 1, '12', 'From her hometown to her daily life on Kurken Island, everything surrounding Reisalin \"Ryza\" Stout is painfully ordinary. Despite being the daughter of a hardworking farmer, she would rather go on pretend adventures as she explores almost every corner of the island. However, the fact that it is against the local customs to venture off Kurken Island irritates her to no end.\r\n\r\nOne day, wishing for something interesting to finally happen in her life, Ryza escapes on a boat with her two good friends: the bookworm Tao Mongarten and the aspiring warrior Lent Marslink. Arriving at a nearby forest, the trio stumbles into Klaudia Valentz, the daughter of a visiting merchant who also wandered off into the woods.\r\n\r\nAs the naive and underprepared group ventures further, they run into dangerous monsters. Thankfully, they are rescued by the alchemist Empel Vollmer and his skilled bodyguard Lila Decyrus. This fateful encounter will lead Ryza to the key that will change her life forever—the creative and wonderful world of alchemy.\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/1079/136949l.jpg', '2023', 3, 3, '6.54', 0, 0, 0, 0, '26 min per ep', 'https://www.youtube.com/watch?v=Ly83UdDhv18', '2023-07-02', '?', 'LIDENFILMS', 'Aniplex,Movic,BS11,Koei Tecmo Games,Wonderful Works', '', '[{\"url\": \"https://ar-anime.com/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/Ryza_PR\", \"name\": \"@Ryza_PR\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17920\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=27522\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/Atelier_Ryza:_Ever_Darkness_&_the_Secret_Hideout\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E3%83%A9%E3%82%A4%E3%82%B6%E3%81%AE%E3%82%A2%E3%83%88%E3%83%AA%E3%82%A8_%E3%80%9C%E5%B8%B8%E9%97%87%E3%81%AE%E5%A5%B3%E7%8E%8B%E3%81%A8%E7%A7%98%E5%AF%86%E3%81%AE%E9%9A%A0%E3%82%8C%E5%AE%B6%E3%80%9C\", \"name\": \"Wikipedia\"}, {\"url\": \"https://cal.syoboi.jp/tid/6713\", \"name\": \"Syoboi\"}]', 0, 0, 0, '2023-08-29 22:46:38', '2023-08-29 22:46:38', NULL),
(26, 53379, 'Uchi no Kaisha no Chiisai Senpai no Hanashi', 'うちの会社の小さい先輩の話', 'My Company\'s Small Senpai, Story of a Small Senior in My Company', 'Comedy,Romance,Adult Cast,Workplace', 1, 1, 1, 1, '12', '\"My senpai from work... is tiny and cute.\"\r\n\r\nShinozaki is an office worker who is taken care of and coddled by his senior team member Shiori Katase: a gorgeous, profoundly kind, loving, and diminutive woman.\r\n\r\nShinozaki certainly hopes that she\'s not doing it out of duty... but her joy of doing so increasingly exposes her feelings! \r\n\r\n(Source: MU)', 'https://cdn.myanimelist.net/images/anime/1984/136274l.jpg', '2023', 3, 3, '6.66', 0, 0, 0, 0, '23 min per ep', 'https://www.youtube.com/watch?v=Z49FwzkfzrM', '2023-07-02', '?', 'Project No.9', 'TV Asahi,Takeshobo,Nagoya Broadcasting Network,Universal Music Japan,DMM.com,Kadokawa Media House,DMM pictures,My Theater D.D.,Good Smile Film,Bit grooove promotion,TV Asahi Music,Vobile Japan', '', '[{\"url\": \"https://chiisaisenpai.com/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/smallsenpai_pr\", \"name\": \"@smallsenpai_pr\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17670\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=26466\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/Uchi_no_Kaisha_no_Chiisai_Senpai_no_Hanashi\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E3%81%86%E3%81%A1%E3%81%AE%E4%BC%9A%E7%A4%BE%E3%81%AE%E5%B0%8F%E3%81%95%E3%81%84%E5%85%88%E8%BC%A9%E3%81%AE%E8%A9%B1\", \"name\": \"Wikipedia\"}, {\"url\": \"https://cal.syoboi.jp/tid/6733\", \"name\": \"Syoboi\"}]', 0, 0, 0, '2023-08-29 22:46:46', '2023-08-29 22:46:46', NULL),
(27, 52969, 'Jitsu wa Ore, Saikyou deshita?', '実は俺、最強でした?', '', 'Adventure,Fantasy,Isekai,Reincarnation', 1, 1, 1, 2, '12', 'A 20-year-old shut-in is suddenly transported from his apartment, only to appear in front of a goddess who offers him a second chance at life. Although she grants him overpowered magical abilities in this new world, when he awakes as the newborn Prince Reinhardt, his talents are only measured at Level 2. Thinking their child to be an abysmal failure, his royal parents abandon him in the woods. There, the prince, who names himself Haruto, encounters Flay, a Flame Fenrir who decides to devote her life in service to him. Haruto\'s relative, Gold Zenfis, meets them both in the woods and decides to adopt the child as his own.\r\n\r\nNine years pass with Haruto under the care of the Zenfis family. His mastery over his overpowered barrier magic increases by the day, though Haruto would rather not use it to help others. He practices his magic in secret, preferring to have his family believe that he is weak. However, his younger sister, Charlotte, discovers his strength, and with the assistance of Flay, Haruto protects her and the rest of the Zenfis family from harm. With a shifty plot stirring in the kingdom, Haruto only wishes to stay inside and watch anime, but it seems he will have to use his magic to keep the family that took him in safe.\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/1496/136558l.jpg', '2023', 3, 3, '6.59', 0, 0, 0, 0, '23 min per ep', 'https://www.youtube.com/watch?v=cKi66qGWH-g', '2023-07-02', '?', 'Staple Entertainment', 'Kodansha,DAX Production,Avex Pictures,Crunchyroll,ABC Animation,MAGNET,ADK Marketing Solutions', '', '[{\"url\": \"https://jitsuhaoresaikyo-anime.com/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/jitsuoresaikyo\", \"name\": \"@jitsuoresaikyo\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17611\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=26297\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/Am_I_Actually_the_Strongest%3F#Anime\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E5%AE%9F%E3%81%AF%E4%BF%BA%E3%80%81%E6%9C%80%E5%BC%B7%E3%81%A7%E3%81%97%E3%81%9F%3F\", \"name\": \"Wikipedia\"}, {\"url\": \"https://cal.syoboi.jp/tid/6754\", \"name\": \"Syoboi\"}]', 0, 0, 0, '2023-08-29 22:47:07', '2023-08-29 22:47:07', NULL),
(28, 51498, 'Masamune-kun no Revenge R', '政宗くんのリベンジR', '', 'Comedy,Romance,Harem,School,Shounen', 1, 1, 1, 1, '12', 'With the tumultuous cultural festival behind him, Masamune Makabe continues his efforts to carry out his revenge: to make the \"Cruel Princess\" Aki Adagaki deeply fall for him and then immediately dump her. As his class is going on a trip to Paris, widely known as the City of Love, Masamune has the perfect opportunity to get even for his childhood heartbreak.\r\n\r\nBefore Masamune can impress Aki, the two meet Muriel Besson, a French high school otaku who aspires to create a romantic comedy manga series. Muriel believes Masamune is the ideal model for the protagonist and asks for his help. The boy reluctantly agrees, dragging Aki along to provide inspiration for the love interest\'s character. But to do so, the two must show Muriel what Japanese love is like.\r\n\r\nTo make matters more complicated, Kanetsugu Gasou is masquerading as Aki\'s childhood friend, Masamune, to trick and use her. With mix-ups and love rivals galore, Masamune\'s revenge is proving to be quite the difficult task.\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/1667/135587l.jpg', '2023', 3, 3, '7.25', 0, 0, 0, 0, '23 min per ep', 'https://www.youtube.com/watch?v=i7x4De9e8qY', '2023-07-03', '?', 'SILVER LINK.', 'Lantis,AT-X,KlockWorx,BS Fuji,Tokyo MX,Crunchyroll,Ichijinsha,FuRyu,Lawson Entertainment,Bandai Namco Music Live', '', '[{\"url\": \"http://masamune-tv.com/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/masamune_tv\", \"name\": \"@masamune_tv\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17294\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=25486\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/Masamune-kun\'s_Revenge#Anime\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E6%94%BF%E5%AE%97%E3%81%8F%E3%82%93%E3%81%AE%E3%83%AA%E3%83%99%E3%83%B3%E3%82%B8#%E3%83%86%E3%83%AC%E3%83%93%E3%82%A2%E3%83%8B%E3%83%A1\", \"name\": \"Wikipedia\"}, {\"url\": \"https://cal.syoboi.jp/tid/6736\", \"name\": \"Syoboi\"}, {\"url\": \"https://bangumi.tv/subject/376433\", \"name\": \"Bangumi\"}, {\"url\": \"https://baike.baidu.com/item/%E6%94%BF%E5%AE%97%E5%90%9B%E7%9A%84%E5%A4%8D%E4%BB%87R?fromModule=lemma_search-box\", \"name\": \"Baidu Baike\"}, {\"url\": \"https://movie.douban.com/subject/35860852/\", \"name\": \"Douban\"}]', 0, 0, 0, '2023-08-29 22:47:25', '2023-08-29 22:47:25', NULL),
(29, 51458, 'Lv1 Maou to One Room Yuusha', 'Lv1魔王とワンルーム勇者', '', 'Comedy,Fantasy', 1, 1, 1, 1, '12', 'Ten years ago, the hero Max defeated the Demon Lord. In order to regain his power, the Demon Lord went into a deep slumber...but when he awakens, his body is only a chibi version of its fearsome form. Now curious to see what his enemy is up to, the Demon Lord visits Max, only to discover the mighty hero living in a dirty one-room apartment. The Demon Lord decides to move in with Max and help his old enemy become a formidable opponent once more! \r\n\r\n(Source: Seven Seas Entertainment)', 'https://cdn.myanimelist.net/images/anime/1879/136721l.jpg', '2023', 3, 3, '6.97', 0, 0, 0, 0, '23 min per ep', 'https://www.youtube.com/watch?v=Hn32Puhz_xo', '2023-07-03', '?', 'SILVER LINK.,Blade', 'Movic,AT-X,Nippon Columbia,Houbunsha,Kadokawa,Bit grooove promotion', '', '[{\"url\": \"https://lv1room.com/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/lv1room\", \"name\": \"@lv1room\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17288\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=25475\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/Level_1_Demon_Lord_and_One_Room_Hero\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/Lv1%E9%AD%94%E7%8E%8B%E3%81%A8%E3%83%AF%E3%83%B3%E3%83%AB%E3%83%BC%E3%83%A0%E5%8B%87%E8%80%85\", \"name\": \"Wikipedia\"}, {\"url\": \"https://cal.syoboi.jp/tid/6746\", \"name\": \"Syoboi\"}]', 2, 2, 2, '2023-08-29 22:47:43', '2023-08-29 22:47:43', NULL);
INSERT INTO `anime` (`id`, `uid`, `ani_name`, `ani_jname`, `ani_synonyms`, `ani_genre`, `ani_type`, `ani_country`, `ani_stats`, `ani_source`, `ani_ep`, `ani_synopsis`, `ani_poster`, `ani_release`, `ani_release_season`, `ani_rate`, `ani_score`, `ani_raw`, `ani_sub`, `ani_dub`, `ani_turk`, `ani_time`, `ani_pv`, `ani_aired`, `ani_aired_fin`, `ani_studio`, `ani_producers`, `ani_manga_url`, `ani_offical_site`, `view_count`, `view_count_month`, `view_count_years`, `created_at`, `updated_at`, `deleted_at`) VALUES
(30, 52611, 'Okashi na Tensei', 'おかしな転生', 'Treat of Reincarnation', 'Fantasy,Isekai,Reincarnation', 1, 1, 1, 2, '12', 'When a genius patissier dies in a tragic accident before achieving his dream of creating the world\'s greatest sweets, he is reincarnated as nine-year-old Pastry Mille \"Pas\" Morteln. Now in a medieval world brimming with swords and magic, Pas enjoys a peaceful life in the Fief of Morteln under the authority of his father, the military hero Lord Casserole. However, scarce ingredients render sweets a luxury, so Pas can only dream of baking.\r\n\r\nOnce news arrives of approaching bandits, Pas must learn magic and fight to defend his land, all to one day create a confectionery paradise!\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/1251/136232l.jpg', '2023', 3, 3, '6.63', 1, 1, 1, 1, '23 min per ep', 'https://www.youtube.com/watch?v=cCGLNfDm9Rg', '2023-07-04', '2023-09-19', 'SynergySP', 'Imagin,MediaNet,Movic,KlockWorx,Crunchyroll,U-NEXT,TO Books,CTW', '', '[{\"url\": \"https://okashinatensei-pr.com\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/okashinatensei\", \"name\": \"@okashinatensei\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17553\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=26180\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/Sweet_Reincarnation#Anime\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E3%81%8A%E3%81%8B%E3%81%97%E3%81%AA%E8%BB%A2%E7%94%9F#%E3%83%86%E3%83%AC%E3%83%93%E3%82%A2%E3%83%8B%E3%83%A1\", \"name\": \"Wikipedia\"}, {\"url\": \"https://cal.syoboi.jp/tid/6735\", \"name\": \"Syoboi\"}, {\"url\": \"https://bangumi.tv/subject/347942\", \"name\": \"Bangumi\"}]', 15, 15, 15, '2023-08-29 22:48:24', '2023-08-29 22:48:24', NULL),
(31, 52619, 'Jidou Hanbaiki ni Umarekawatta Ore wa Meikyuu wo Samayou', '自動販売機に生まれ変わった俺は迷宮を彷徨う', 'I Was Reborn as a Vending Machine, Wandering in the Dungeon, I Reincarnated Into a Vending Machine', 'Comedy,Fantasy,Isekai,Reincarnation', 1, 1, 1, 2, '12', 'A vending machine fanatic meets his demise when he is, quite ironically, crushed by a vending machine. To his dismay, he finds himself reincarnated as a vending machine in another world. Having reemerged within a forest inhabited by frogmen and other monsters—and supplied with only two products—Boxxo the Vending Machine requires coins to keep itself stocked, powered, and upgraded with new skills.\r\n\r\nLuckily, the automat is rescued by a young woman who quickly realizes that it is sentient, and she carries it to a human settlement. Thereafter, the strange piece of machinery gradually makes an impact in the world around it, gaining numerous allies along the way despite being utterly incapable of speech or movement and communicating only by playing out pre-recorded vending machine phrases.\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/1653/136097l.jpg', '2023', 3, 3, '6.43', 0, 0, 0, 0, '23 min per ep', 'https://www.youtube.com/watch?v=3VZEVawzgik', '2023-07-05', '?', 'Studio Gokumi,AXsiZ', 'VAP,Slow Curve,Nippon Television Network,Nippon Television Music,Yomiuri TV Enterprise,BS NTV,NetEase,NTV Wands', '', '[{\"url\": \"https://jihanki-anime.com\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/jihanki_anime\", \"name\": \"@jihanki_anime\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17557\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=26186\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/Reborn_as_a_Vending_Machine,_I_Now_Wander_the_Dungeon#Anime\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E8%87%AA%E5%8B%95%E8%B2%A9%E5%A3%B2%E6%A9%9F%E3%81%AB%E7%94%9F%E3%81%BE%E3%82%8C%E5%A4%89%E3%82%8F%E3%81%A3%E3%81%9F%E4%BF%BA%E3%81%AF%E8%BF%B7%E5%AE%AE%E3%82%92%E5%BD%B7%E5%BE%A8%E3%81%86\", \"name\": \"Wikipedia\"}, {\"url\": \"https://cal.syoboi.jp/tid/6723\", \"name\": \"Syoboi\"}]', 1, 1, 1, '2023-08-29 22:48:45', '2023-08-29 22:48:45', NULL),
(32, 53438, 'Higeki no Genkyou to Naru Saikyou Gedou Last Boss Joou wa Tami no Tame ni Tsukushimasu.', '悲劇の元凶となる最強外道ラスボス女王は民の為に尽くします。', 'The Most Heretical Last Boss Queen Who Will Become the Source of Tragedy Will Devote Herself for the Sake of the People, Lastame', 'Fantasy,Romance,Isekai,Reincarnation,Josei', 1, 1, 1, 2, '12', 'Pride Royal Ivy is the final boss and all-around scum in the otome game To a Beam of Light With You. She committed innumerable crimes—from enslaving her adopted brother in a soul-binding contract to abusing her position against the servants in the household. In short, she is a villain of pure evil.\r\n\r\nA normal high school student in Japan reincarnates into the eight-year-old body of Princess Pride. The first order of business: survive to see another day. Using her cheat-like abilities, she resolves to save her father, rescue the kingdom, and become a kind and benevolent ruler. And so, Pride resolves to change her fate, no matter what it takes!\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/1722/135542l.jpg', '2023', 3, 3, '7.22', 0, 0, 0, 0, '23 min per ep', 'https://www.youtube.com/watch?v=KdmxkRQshic', '2023-07-07', '?', 'OLM Team Yoshioka', 'OLM,Mainichi Broadcasting System,Movic,Tokyo MX,BS11,Ichijinsha,Nichion,FuRyu,MAGNET,Myrica Music,AQUA ARIS,Pia', '', '[{\"url\": \"https://lastame.com/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/lastame_pr\", \"name\": \"@lastame_pr\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17688\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=26507\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/The_Most_Heretical_Last_Boss_Queen\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E6%82%B2%E5%8A%87%E3%81%AE%E5%85%83%E5%87%B6%E3%81%A8%E3%81%AA%E3%82%8B%E6%9C%80%E5%BC%B7%E5%A4%96%E9%81%93%E3%83%A9%E3%82%B9%E3%83%9C%E3%82%B9%E5%A5%B3%E7%8E%8B%E3%81%AF%E6%B0%91%E3%81%AE%E7%82%BA%E3%81%AB%E5%B0%BD%E3%81%8F%E3%81%97%E3%81%BE%E3%81%99%E3%80%82\", \"name\": \"Wikipedia\"}, {\"url\": \"https://cal.syoboi.jp/tid/6757\", \"name\": \"Syoboi\"}, {\"url\": \"https://bangumi.tv/subject/406307\", \"name\": \"Bangumi\"}]', 0, 0, 0, '2023-08-29 22:49:06', '2023-08-29 22:49:06', NULL),
(33, 54112, 'Zom 100: Zombie ni Naru made ni Shitai 100 no Koto', 'ゾン100～ゾンビになるまでにしたい100のこと～', 'Bucket List of The Dead, Zombie 100: 100 Things I Want to do Before I Become a Zombie', 'Action,Comedy,Horror,Supernatural,Suspense,Adult Cast,Survival,Seinen', 1, 1, 1, 1, '12', 'After graduating from a top university with an impressive extracurricular record in the rugby club, Akira Tendou has nailed every step of the way to securing his dream job. On top of that, a beautiful and kind co-worker always brightens his day in the office! Life seems to be going very well for Akira until he slowly realizes that sleepless nights and brutal work are his new reality.\r\n\r\nDue to three years of mind-numbing labor in an exploitative company, Akira is unable to recognize the tired, unaccomplished person he has become. On track to losing all passion in life like several of his overworked colleagues, Akira finds his saving grace in the most unexpected way possible—the breakout of a zombie apocalypse.\r\n\r\nWith the free time he finally has, Akira decides to complete a bucket list of a hundred things he wants to do before he eventually gets turned into a zombie. Although he is surrounded by the dead, Akira has never felt more alive!\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/1384/136408l.jpg', '2023', 3, 4, '8.21', 0, 1, 0, 0, '24 min per ep', 'https://www.youtube.com/watch?v=GAMrUx-esS8', '2023-07-09', '?', 'BUG FILMS', 'Shogakukan-Shueisha Productions,dugout', '', '[{\"url\": \"https://zom100.com\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/Zom100_anime_JP\", \"name\": \"@Zom100_anime_JP\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17806\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=26825\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/Zom_100:_Bucket_List_of_the_Dead#Anime\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E3%82%BE%E3%83%B3100%E3%80%9C%E3%82%BE%E3%83%B3%E3%83%93%E3%81%AB%E3%81%AA%E3%82%8B%E3%81%BE%E3%81%A7%E3%81%AB%E3%81%97%E3%81%9F%E3%81%84100%E3%81%AE%E3%81%93%E3%81%A8%E3%80%9C#%E3%83%86%E3%83%AC%E3%83%93%E3%82%A2%E3%83%8B%E3%83%A1\", \"name\": \"Wikipedia\"}, {\"url\": \"https://cal.syoboi.jp/tid/6720\", \"name\": \"Syoboi\"}]', 12, 12, 12, '2023-09-04 12:16:49', '2023-09-04 12:16:49', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `anime_season`
--

DROP TABLE IF EXISTS `anime_season`;
CREATE TABLE IF NOT EXISTS `anime_season` (
  `id` int NOT NULL AUTO_INCREMENT,
  `main_id` int NOT NULL,
  `season_id` int NOT NULL,
  `season_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `anime_status`
--

INSERT INTO `anime_status` (`id`, `user_id`, `anime_uid`, `user_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 20785, 1, '2023-09-06 18:29:47', '2023-09-06 18:29:47', NULL);

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
  `sc_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sc_time` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `ani_schedule`
--

INSERT INTO `ani_schedule` (`id`, `sc_days`, `sc_id`, `sc_ep`, `sc_name`, `sc_time`) VALUES
(3, 3, 20785, '', 'Mahouka Koukou no Rettousei', '11:20'),
(5, 5, 20785, '', 'Mahouka Koukou no Rettousei', '11:20'),
(6, 6, 20785, '', 'Mahouka Koukou no Rettousei', '11:20'),
(7, 7, 20785, '', 'Mahouka Koukou no Rettousei', '11:20'),
(8, 8, 20785, '', 'Mahouka Koukou no Rettousei', '11:20'),
(9, 9, 20785, '', 'Mahouka Koukou no Rettousei', '11:20'),
(10, 10, 20785, '', 'Mahouka Koukou no Rettousei', '11:20'),
(11, 11, 20785, '', 'Mahouka Koukou no Rettousei', '11:20'),
(12, 12, 20785, '', 'Mahouka Koukou no Rettousei', '11:20'),
(13, 13, 20785, '', 'Mahouka Koukou no Rettousei', '11:20'),
(14, 14, 20785, '', 'Mahouka Koukou no Rettousei', '11:20'),
(15, 15, 20785, '', 'Mahouka Koukou no Rettousei', '11:20'),
(16, 16, 20785, '', 'Mahouka Koukou no Rettousei', '11:20'),
(17, 17, 20785, '', 'Mahouka Koukou no Rettousei', '11:20'),
(18, 18, 20785, '', 'Mahouka Koukou no Rettousei', '11:20'),
(19, 19, 20785, '', 'Mahouka Koukou no Rettousei', '11:20'),
(20, 20, 20785, '', 'Mahouka Koukou no Rettousei', '11:20'),
(21, 21, 20785, '', 'Mahouka Koukou no Rettousei', '11:20'),
(22, 22, 20785, '', 'Mahouka Koukou no Rettousei', '11:20'),
(23, 23, 20785, '', 'Mahouka Koukou no Rettousei', '11:20'),
(24, 24, 20785, '', 'Mahouka Koukou no Rettousei', '11:20'),
(25, 25, 20785, '', 'Mahouka Koukou no Rettousei', '11:20'),
(26, 26, 20785, '', 'Mahouka Koukou no Rettousei', '11:20'),
(27, 27, 20785, '', 'Mahouka Koukou no Rettousei', '11:20'),
(28, 28, 20785, '', 'Mahouka Koukou no Rettousei', '11:20'),
(29, 29, 20785, '', 'Mahouka Koukou no Rettousei', '11:20'),
(30, 30, 20785, '', 'Mahouka Koukou no Rettousei', '11:20'),
(31, 31, 20785, '', 'Mahouka Koukou no Rettousei', '11:20'),
(33, 3, 40496, '', 'Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite Shison-tachi no Gakkou e Kayou', '20:00'),
(34, 5, 40496, '', 'Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite Shison-tachi no Gakkou e Kayou', '20:00'),
(35, 6, 40496, '', 'Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite Shison-tachi no Gakkou e Kayou', '20:00'),
(36, 7, 40496, '', 'Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite Shison-tachi no Gakkou e Kayou', '20:00'),
(37, 10, 40496, '', 'Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite Shison-tachi no Gakkou e Kayou', '20:00'),
(38, 11, 40496, '', 'Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite Shison-tachi no Gakkou e Kayou', '20:00'),
(39, 14, 40496, '', 'Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite Shison-tachi no Gakkou e Kayou', '20:00'),
(40, 16, 40496, '', 'Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite Shison-tachi no Gakkou e Kayou', '20:00'),
(41, 20, 40496, '', 'Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite Shison-tachi no Gakkou e Kayou', '20:00'),
(42, 21, 40496, '', 'Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite Shison-tachi no Gakkou e Kayou', '20:00'),
(43, 25, 40496, '', 'Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite Shison-tachi no Gakkou e Kayou', '20:00'),
(44, 26, 40496, '', 'Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite Shison-tachi no Gakkou e Kayou', '20:00'),
(45, 30, 40496, '', 'Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite Shison-tachi no Gakkou e Kayou', '20:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`id`, `user_id`, `group`, `created_at`) VALUES
(1, 1, 'superadmin', '2023-05-12 19:52:20'),
(2, 2, 'user', '2023-05-16 15:20:43'),
(3, 3, 'user', '2023-06-11 08:09:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `auth_identities`
--

INSERT INTO `auth_identities` (`id`, `user_id`, `type`, `name`, `secret`, `secret2`, `expires`, `extra`, `force_reset`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'email_password', NULL, 'admin@gmail.com', '$2y$10$fNW/eSalcB5LeMBF152cCO1d66QFBnVDaPNO10.xpZ8PPyW6J4a/m', NULL, NULL, 0, '2023-09-07 10:58:00', '2023-05-12 19:52:20', '2023-09-07 10:58:00'),
(2, 2, 'email_password', NULL, 'test123@gmail.com', '$2y$10$HIICb90g2f/6JJHXcXF5x.TSS.2YliEaC7WS444vS/8jocB9K6U5a', NULL, NULL, 0, NULL, '2023-05-16 15:20:43', '2023-05-16 15:20:43'),
(3, 3, 'email_password', NULL, 'test@test.com', '$2y$10$AQO7pnXJp7ye96A.1q2BQOkWmj/yGeGPiMBc72SUx.iDfh99mBypC', NULL, NULL, 0, NULL, '2023-06-11 08:09:00', '2023-06-11 08:09:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `user_agent`, `id_type`, `identifier`, `user_id`, `date`, `success`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-12 20:17:37', 1),
(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-12 20:20:28', 1),
(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-14 15:26:04', 1),
(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-14 17:42:16', 1),
(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-14 19:30:58', 1),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-14 20:26:53', 1),
(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-14 21:06:33', 1),
(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-15 06:55:33', 1),
(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-15 07:50:53', 1),
(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-15 14:46:11', 1),
(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-15 19:45:20', 1),
(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-16 08:15:07', 1),
(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-16 11:36:14', 1),
(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-16 15:11:53', 1),
(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-16 19:00:39', 1),
(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-19 09:29:44', 1),
(17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-19 10:04:09', 1),
(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-19 14:23:56', 1),
(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-19 17:44:43', 1),
(20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-19 18:00:34', 1),
(21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-19 18:04:09', 1),
(22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-19 19:49:21', 1),
(23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-20 06:42:01', 1),
(24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-20 10:16:38', 1),
(25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-20 11:32:28', 1),
(26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-20 21:15:33', 1),
(27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-21 08:35:54', 1),
(28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-22 12:26:29', 1),
(29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-23 13:29:23', 1),
(30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-23 13:53:33', 1),
(31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-23 16:53:57', 1),
(32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-24 06:22:49', 1),
(33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-24 14:02:46', 1),
(34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-24 21:27:25', 1),
(35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-25 08:10:05', 1),
(36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-25 12:19:44', 1),
(37, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-25 13:07:20', 1),
(38, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-29 10:22:07', 1),
(39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-05-31 06:52:46', 1),
(40, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-02 15:36:46', 1),
(41, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-03 10:05:45', 1),
(42, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/113.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-04 12:41:00', 1),
(43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-07 14:50:00', 1),
(44, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-07 18:05:42', 1),
(45, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-07 18:08:57', 1),
(46, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-08 08:21:30', 1),
(47, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-08 12:17:33', 1),
(48, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-11 08:02:10', 1),
(49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-11 13:35:28', 1),
(50, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-11 17:46:10', 1),
(51, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-12 09:40:03', 1),
(52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-12 10:47:31', 1),
(53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-12 11:01:38', 1),
(54, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-12 15:01:45', 1),
(55, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-13 07:15:51', 1),
(56, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-14 08:25:14', 1),
(57, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-16 11:42:42', 1),
(58, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-17 10:37:19', 1),
(59, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-17 18:05:49', 1),
(60, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-18 11:58:45', 1),
(61, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-21 06:39:24', 1),
(62, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-21 16:14:13', 1),
(63, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-23 07:15:01', 1),
(64, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-23 09:24:52', 1),
(65, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-23 10:32:55', 1),
(66, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-23 12:18:16', 1),
(67, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-24 20:41:53', 1),
(68, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-26 11:58:44', 1),
(69, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-26 19:12:30', 1),
(70, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-27 08:59:16', 1),
(71, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-27 12:54:21', 1),
(72, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-27 13:15:48', 1),
(73, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-29 07:05:49', 1),
(74, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-29 15:38:20', 1),
(75, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-30 08:09:04', 1),
(76, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-07-01 13:51:30', 1),
(77, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-07-01 17:15:43', 1),
(78, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-07-02 09:36:56', 1),
(79, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-07-05 10:38:23', 1),
(80, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-07-05 12:05:47', 1),
(81, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-07-05 15:29:19', 1),
(82, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-07-05 19:45:11', 1),
(83, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-07-09 09:05:20', 1),
(84, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-07-09 15:33:35', 1),
(85, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-07-10 06:34:40', 1),
(86, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-07-17 16:24:01', 1),
(87, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-07-18 10:47:29', 1),
(88, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', 'email_password', 'admin@gmail.com', 1, '2023-07-24 12:49:27', 1),
(89, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', 'email_password', 'admin@gmail.com', 1, '2023-07-24 13:07:28', 1),
(90, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', 'email_password', 'admin@gmail.com', 1, '2023-07-25 07:24:45', 1),
(91, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', 'email_password', 'admin@gmail.com', 1, '2023-07-25 11:58:45', 1),
(92, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', 'email_password', 'admin@gmail.com', 1, '2023-07-25 14:08:08', 1),
(93, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', 'email_password', 'admin@gmail.com', 1, '2023-07-25 15:30:17', 1),
(94, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', 'email_password', 'admin@gmail.com', 1, '2023-07-25 18:51:13', 1),
(95, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', 'email_password', 'admin@gmail.com', 1, '2023-07-28 11:58:02', 1),
(96, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', 'email_password', 'admin@gmail.com', 1, '2023-07-29 08:40:04', 1),
(97, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', 'email_password', 'admin@gmail.com', 1, '2023-08-01 10:05:42', 1),
(98, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', 'email_password', 'admin@gmail.com', 1, '2023-08-01 16:57:16', 1),
(99, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', 'email_password', 'admin@gmail.com', 1, '2023-08-02 07:18:29', 1),
(100, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', 'email_password', 'admin@gmail.com', 1, '2023-08-02 15:28:39', 1),
(101, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', 'email_password', 'admin@gmail.com', 1, '2023-08-05 14:11:39', 1),
(102, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', 'email_password', 'admin@gmail.com', 1, '2023-08-07 07:17:14', 1),
(103, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', 'email_password', 'admin@gmail.com', 1, '2023-08-08 12:42:30', 1),
(104, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', 'email_password', 'admin@gmail.com', 1, '2023-08-09 08:00:48', 1),
(105, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', 'email_password', 'admin@gmail.com', 1, '2023-08-09 08:06:22', 1),
(106, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', 'email_password', 'admin@gmail.com', 1, '2023-08-09 18:12:34', 1),
(107, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-10 11:10:09', 1),
(108, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-10 14:05:24', 1),
(109, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-10 20:00:26', 1),
(110, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-13 08:31:06', 1),
(111, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-13 16:42:01', 1),
(112, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-14 07:19:09', 1),
(113, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-14 11:40:46', 1),
(114, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-14 15:53:52', 1),
(115, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-14 15:55:11', 1),
(116, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-17 10:56:23', 1),
(117, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-17 13:34:20', 1),
(118, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-17 17:58:06', 1),
(119, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-18 07:38:34', 1),
(120, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-18 08:45:53', 1),
(121, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-18 09:09:20', 1),
(122, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-18 09:12:04', 1),
(123, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-18 11:07:53', 1),
(124, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-18 11:11:55', 1),
(125, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-18 19:41:53', 1),
(126, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-18 21:31:37', 1),
(127, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-18 21:35:29', 1),
(128, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-18 21:50:12', 1),
(129, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-18 22:26:31', 1),
(130, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-18 22:29:46', 1),
(131, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-21 08:36:44', 1),
(132, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-21 09:06:37', 1),
(133, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-21 10:36:21', 1),
(134, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-21 12:31:51', 1),
(135, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-21 13:35:12', 1),
(136, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-21 13:45:56', 1),
(137, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-21 13:51:32', 1),
(138, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-21 18:59:45', 1),
(139, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-21 21:02:27', 1),
(140, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-22 11:59:42', 1),
(141, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-22 14:05:48', 1),
(142, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-22 18:37:53', 1),
(143, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-22 19:41:51', 1),
(144, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-22 20:27:23', 1),
(145, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-22 20:51:30', 1),
(146, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-25 12:54:32', 1),
(147, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-26 10:40:29', 1),
(148, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-26 13:18:31', 1),
(149, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-26 18:58:42', 1),
(150, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-29 13:43:57', 1),
(151, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-29 19:16:04', 1),
(152, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-30 07:15:36', 1),
(153, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-30 17:09:57', 1),
(154, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-30 19:12:08', 1),
(155, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/116.0', 'email_password', 'admin@gmail.com', 1, '2023-08-31 08:56:09', 1),
(156, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-03 08:56:38', 1),
(157, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-03 18:42:11', 1),
(158, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-03 18:43:27', 1),
(159, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-04 10:35:58', 1),
(160, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-04 14:49:31', 1),
(161, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-05 07:21:28', 1),
(162, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-05 12:33:54', 1),
(163, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-06 09:38:24', 1),
(164, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-06 13:09:21', 1),
(165, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-06 13:23:42', 1),
(166, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-06 13:24:56', 1),
(167, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-06 15:05:44', 1),
(168, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-06 18:01:29', 1),
(169, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-07 09:15:01', 1),
(170, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/117.0', 'email_password', 'admin@gmail.com', 1, '2023-09-07 10:58:00', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `community`
--

INSERT INTO `community` (`id`, `user_id`, `post_id`, `post_tag`, `post_head`, `post_content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 34636881, 2, 'get', 'get', '2023-08-22 20:13:56', '2023-08-26 19:40:59', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `community_main_rep`
--

INSERT INTO `community_main_rep` (`id`, `user_id`, `post_id`, `post_rep`, `post_disrep`) VALUES
(1, 1, 956921399, 0, 1),
(2, 1, 487158320, 1, 0),
(3, 1, 375674543, 1, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `community_post`
--

INSERT INTO `community_post` (`id`, `user_id`, `post_id`, `post_c_id`, `post_content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 34636881, 956921399, '1', '2023-08-26 19:37:55', '2023-08-26 19:37:55', NULL),
(2, 1, 34636881, 487158320, '2', '2023-08-29 14:40:08', '2023-08-29 14:40:08', NULL),
(4, 1, 34636881, 375674543, '3', '2023-08-29 14:40:50', '2023-08-29 14:40:50', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `community_repy_post`
--

INSERT INTO `community_repy_post` (`id`, `user_id`, `post_u_id`, `post_c_id`, `post_content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 6133562, 956921399, '2', '2023-08-26 19:37:59', '2023-08-26 19:37:59', NULL),
(2, 1, 9493765, 956921399, '3', '2023-08-26 19:38:05', '2023-08-26 19:38:05', NULL),
(3, 1, 2159054, 956921399, '4', '2023-08-26 19:38:11', '2023-08-26 19:38:11', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `community_repy_rep`
--

INSERT INTO `community_repy_rep` (`id`, `user_id`, `post_id`, `post_rep`, `post_disrep`) VALUES
(1, 1, 2159054, 0, 1),
(2, 1, 9493765, 0, 1),
(3, 1, 6133562, 1, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `community_vote`
--

INSERT INTO `community_vote` (`id`, `user_id`, `post_id`, `post_rep`, `post_disrep`) VALUES
(1, 1, 34636881, 1, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `episode`
--

INSERT INTO `episode` (`id`, `uid`, `ep_id_name`, `ep_name`, `ep_jname`, `ep_romaji`, `ep_aired`, `ep_view`, `ep_view_month`, `ep_view_years`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 40496, '1', 'The Misfit of Demon King Academy', '魔王学院の不適合者', 'Maou Gakuin no Futekigousha ', '2020-07-04', 307, 307, 307, '2023-08-22 15:49:07', '2023-08-22 15:49:07', NULL),
(2, 40496, '2', 'The Witch of Destruction', '破壊の魔女', 'Hametsu no Majo ', '2020-07-11', 3, 3, 3, '2023-08-22 15:49:07', '2023-08-22 15:49:07', NULL),
(3, 40496, '3', 'Sasha\'s True Intentions', 'サーシャの真意', 'Sasha no Shini ', '2020-07-18', 0, 0, 0, '2023-08-22 15:49:07', '2023-08-22 15:49:07', NULL),
(4, 40496, '4', '15th Birthday', '15歳の誕生日', 'Juugo no Tanjoubi ', '2020-07-25', 0, 0, 0, '2023-08-22 15:49:07', '2023-08-22 15:49:07', NULL),
(5, 40496, '5', 'The Transfer Student', '転入生', 'Tennyuusei ', '2020-08-01', 0, 0, 0, '2023-08-22 15:49:07', '2023-08-22 15:49:07', NULL),
(6, 40496, '6', 'Magic Sword Tournament', '魔剣大会', 'Maken Taikai ', '2020-08-08', 0, 0, 0, '2023-08-22 15:49:07', '2023-08-22 15:49:07', NULL),
(7, 40496, '7', 'Mother\'s Words', '母の言葉', 'Haha no Kotoba ', '2020-08-15', 0, 0, 0, '2023-08-22 15:49:07', '2023-08-22 15:49:07', NULL),
(8, 40496, '8', 'The Final Duel', '二人の決勝戦', 'Futari no Kesshousen ', '2020-08-22', 0, 0, 0, '2023-08-22 15:49:07', '2023-08-22 15:49:07', NULL),
(9, 40496, '9', 'The Mystery of the Hero Academy', '勇者学院の謎', 'Yuusha Gakuin no Nazo ', '2020-08-29', 0, 0, 0, '2023-08-22 15:49:07', '2023-08-22 15:49:07', NULL),
(10, 40496, '10', 'Inter-Academy Exams', '学院別対抗試験', 'Gakuin Betsu Taikou Shiken ', '2020-09-05', 3, 3, 3, '2023-08-22 15:49:07', '2023-08-22 15:49:07', NULL),
(11, 40496, '11', 'The Glow of Life', '命の輝き', 'Inochi no Kagayaki ', '2020-09-12', 0, 0, 0, '2023-08-22 15:49:07', '2023-08-22 15:49:07', NULL),
(12, 40496, '12', 'Taboo Magic', '禁忌の魔法', 'Kinki no Mahou ', '2020-09-19', 0, 0, 0, '2023-08-22 15:49:07', '2023-08-22 15:49:07', NULL),
(13, 40496, '13', 'Let the World Be Filled With Love', '世界が愛に満ちるように', 'Sekai ga Ai ni Michiru You ni ', '2020-09-26', 3, 3, 3, '2023-08-22 15:49:07', '2023-08-22 15:49:07', NULL),
(14, 20785, '1', 'Enrollment Part I', '入学編I', 'Nyuugaku-hen I ', '2014-04-06', 6, 6, 6, '2023-08-29 19:16:53', '2023-08-29 19:16:53', NULL),
(15, 20785, '2', 'Enrollment Part II', '入学編II', 'Nyuugaku-hen II ', '2014-04-13', 0, 0, 0, '2023-08-29 19:16:53', '2023-08-29 19:16:53', NULL),
(16, 20785, '3', 'Enrollment Part III', '入学編III', 'Nyuugaku-hen III ', '2014-04-20', 0, 0, 0, '2023-08-29 19:16:53', '2023-08-29 19:16:53', NULL),
(17, 20785, '4', 'Enrollment Part IV', '入学編IV', 'Nyuugaku-hen IV ', '2014-04-27', 0, 0, 0, '2023-08-29 19:16:53', '2023-08-29 19:16:53', NULL),
(18, 20785, '5', 'Enrollment Part V', '入学編V', 'Nyuugaku-hen V ', '2014-05-04', 4, 4, 4, '2023-08-29 19:16:53', '2023-08-29 19:16:53', NULL),
(19, 20785, '6', 'Enrollment Part VI', '入学編VI', 'Nyuugaku-hen VI ', '2014-05-11', 0, 0, 0, '2023-08-29 19:16:53', '2023-08-29 19:16:53', NULL),
(20, 20785, '7', 'Enrollment Part VII', '入学編VII', 'Nyuugaku-hen VII ', '2014-05-18', 18, 18, 18, '2023-08-29 19:16:53', '2023-08-29 19:16:53', NULL),
(21, 20785, '8', 'Nine Schools Competition Part I', '九校戦編I', 'Kyuukousen-hen I ', '2014-05-25', 0, 0, 0, '2023-08-29 19:16:53', '2023-08-29 19:16:53', NULL),
(22, 20785, '9', 'Nine Schools Competition Part II', '九校戦編II', 'Kyuukousen-hen II ', '2014-06-01', 1, 1, 1, '2023-08-29 19:16:53', '2023-08-29 19:16:53', NULL),
(23, 20785, '10', 'Nine Schools Competition Part III', '九校戦編III', 'Kyuukousen-hen III ', '2014-06-08', 0, 0, 0, '2023-08-29 19:16:53', '2023-08-29 19:16:53', NULL),
(24, 20785, '11', 'Nine Schools Competition Part IV', '九校戦編IV', 'Kyuukousen-hen IV ', '2014-06-15', 0, 0, 0, '2023-08-29 19:16:53', '2023-08-29 19:16:53', NULL),
(25, 20785, '12', 'Nine Schools Competition Part V', '九校戦編V', 'Kyuukousen-hen V ', '2014-06-22', 0, 0, 0, '2023-08-29 19:16:53', '2023-08-29 19:16:53', NULL),
(26, 20785, '13', 'Nine Schools Competition Part VI', '九校戦編VI', 'Kyuukousen-hen VI ', '2014-06-29', 0, 0, 0, '2023-08-29 19:16:53', '2023-08-29 19:16:53', NULL),
(27, 20785, '14', 'Nine Schools Competition Part VII', '九校戦編VII', 'Kyuukousen-hen VII ', '2014-07-06', 0, 0, 0, '2023-08-29 19:16:53', '2023-08-29 19:16:53', NULL),
(28, 20785, '15', 'Nine Schools Competition Part VIII', '九校戦編VIII', 'Kyuukousen-hen VIII ', '2014-07-13', 0, 0, 0, '2023-08-29 19:16:53', '2023-08-29 19:16:53', NULL),
(29, 20785, '16', 'Nine Schools Competition Part IX', '九校戦編IX', 'Kyuukousen-hen IX ', '2014-07-20', 0, 0, 0, '2023-08-29 19:16:53', '2023-08-29 19:16:53', NULL),
(30, 20785, '17', 'Nine Schools Competition Part X', '九校戦編X', 'Kyuukousen-hen X ', '2014-07-27', 0, 0, 0, '2023-08-29 19:16:53', '2023-08-29 19:16:53', NULL),
(31, 20785, '18', 'Nine Schools Competition Part XI', '九校戦編XI', 'Kyuukousen-hen XI ', '2014-08-03', 0, 0, 0, '2023-08-29 19:16:53', '2023-08-29 19:16:53', NULL),
(32, 20785, '19', 'Yokohama Disturbance Part I', '横浜騒乱編I', 'Yokohama Souran-hen I ', '2014-08-10', 0, 0, 0, '2023-08-29 19:16:53', '2023-08-29 19:16:53', NULL),
(33, 20785, '20', 'Yokohama Disturbance Part II', '横浜騒乱編II', 'Yokohama Souran-hen II ', '2014-08-17', 0, 0, 0, '2023-08-29 19:16:53', '2023-08-29 19:16:53', NULL),
(34, 20785, '21', 'Yokohama Disturbance Part III', '横浜騒乱編III', 'Yokohama Souran-hen III ', '2014-08-24', 2, 2, 2, '2023-08-29 19:16:53', '2023-08-29 19:16:53', NULL),
(35, 20785, '22', 'Yokohama Disturbance Part IV', '横浜騒乱編IV', 'Yokohama Souran-hen IV ', '2014-08-31', 2, 2, 2, '2023-08-29 19:16:53', '2023-08-29 19:16:53', NULL),
(36, 20785, '23', 'Yokohama Disturbance Part V', '横浜騒乱編V', 'Yokohama Souran-hen V ', '2014-09-07', 0, 0, 0, '2023-08-29 19:16:53', '2023-08-29 19:16:53', NULL),
(37, 20785, '24', 'Yokohama Disturbance Part VI', '横浜騒乱編VI', 'Yokohama Souran-hen VI ', '2014-09-14', 0, 0, 0, '2023-08-29 19:16:53', '2023-08-29 19:16:53', NULL),
(38, 20785, '25', 'Yokohama Disturbance Part VII', '横浜騒乱編VII', 'Yokohama Souran-hen VII ', '2014-09-21', 5, 5, 5, '2023-08-29 19:16:53', '2023-08-29 19:16:53', NULL),
(39, 20785, '26', 'Yokohama Disturbance Part VIII', '横浜騒乱編VIII', 'Yokohama Souran-hen VIII ', '2014-09-28', 3, 3, 3, '2023-08-29 19:16:53', '2023-08-29 19:16:53', NULL),
(40, 54112, '1', 'Akira of the Dead', 'アキラ オブ ザ デッド', 'Akira of the Dead ', '2023-07-09', 6, 6, 6, '2023-09-04 12:17:04', '2023-09-04 12:17:04', NULL),
(41, 54112, '2', 'Bucket List of the Dead', 'バケットリスト オブ ザ デッド', 'Bucket List of the Dead ', '2023-07-16', 21, 21, 21, '2023-09-04 12:17:04', '2023-09-04 12:17:04', NULL),
(42, 54112, '3', 'Best Friend of the Dead', 'ベストフレンド オブ ザ デッド', 'Best Friend of the Dead ', '2023-07-23', 4, 4, 4, '2023-09-04 12:17:04', '2023-09-04 12:17:04', NULL),
(43, 54112, '4', 'Flight Attendant of the Dead', 'CA オブ ザ デッド', 'CA of the Dead ', '2023-07-30', 10, 10, 10, '2023-09-04 12:17:04', '2023-09-04 12:17:04', NULL),
(44, 54112, '5', 'Hero of the Dead', 'ヒーローオ ブザ ッド', 'Hero of the Dead ', '2023-08-13', 0, 0, 0, '2023-09-04 12:17:04', '2023-09-04 12:17:04', NULL),
(45, 54112, '6', 'RV of the Dead', 'キャンピングカー オブ ザ デッド', 'Camping Car of the Dead ', '2023-08-27', 2, 2, 2, '2023-09-04 12:17:04', '2023-09-04 12:17:04', NULL),
(46, 54112, '7', 'Truck Stop of the Dead', 'SA オブ ザ デッド', 'SA of the Dead ', '2023-09-03', 0, 0, 0, '2023-09-04 12:17:04', '2023-09-04 12:17:04', NULL),
(47, 52611, '1', 'Dreaming of a Land of Sweets', '', '', '', 6, 6, 6, '2023-09-06 11:04:15', '2023-09-06 11:04:15', NULL),
(48, 52611, '2', 'The Patissier and the Fief\'s Defense Line', '', '', '', 0, 0, 0, '2023-09-06 11:04:15', '2023-09-06 11:04:15', NULL),
(49, 52611, '3', 'Apple Pie and Smiles', '', '', '', 0, 0, 0, '2023-09-06 11:04:15', '2023-09-06 11:04:15', NULL),
(50, 52611, '4', 'A Spicy Negotiation and Sweet Baked Treats', '', '', '', 1, 1, 1, '2023-09-06 11:04:15', '2023-09-06 11:04:15', NULL),
(51, 52611, '5', 'Sweet Matchmaking Photos and Twin Ladies', '', '', '', 0, 0, 0, '2023-09-06 11:04:15', '2023-09-06 11:04:15', NULL),
(52, 52611, '6', 'Schemes and Frothy Hearts', '', '', '', 2, 2, 2, '2023-09-06 11:04:15', '2023-09-06 11:04:15', NULL),
(53, 52611, '7', '', '', '', '', 0, 0, 0, '2023-09-06 11:05:04', '2023-09-06 11:05:04', NULL),
(54, 52611, '8', '', '', '', '', 7, 7, 7, '2023-09-06 11:05:23', '2023-09-06 11:05:23', NULL),
(55, 52611, '9', '', '', '', '', 4, 4, 4, '2023-09-06 11:35:53', '2023-09-06 11:35:53', NULL),
(56, 52611, '10', '', '', '', '', 2, 2, 2, '2023-09-06 11:35:58', '2023-09-06 11:35:58', NULL),
(57, 52611, '11', '', '', '', '', 9, 9, 9, '2023-09-06 11:36:01', '2023-09-06 11:36:01', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `episode_comment`
--

INSERT INTO `episode_comment` (`id`, `user_id`, `post_id`, `post_ani`, `post_ep`, `post_spo`, `post_content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1892541102, 40496, '1', 0, '1', '2023-08-22 19:57:31', '2023-08-22 20:04:11', NULL),
(2, 1, 264878869, 40496, '1', 0, '2', '2023-08-22 19:57:42', '2023-08-22 19:57:42', NULL),
(3, 1, 231159866, 40496, '1', 0, '3', '2023-08-22 20:02:54', '2023-08-22 20:02:54', NULL),
(4, 1, 1495458983, 40496, '1', 0, '4', '2023-08-22 20:02:59', '2023-08-22 20:02:59', NULL),
(5, 1, 1429344915, 40496, '1', 0, '5', '2023-08-22 20:03:03', '2023-08-22 20:03:03', NULL),
(6, 1, 539179975, 40496, '1', 0, '6', '2023-08-22 20:03:08', '2023-08-22 20:03:08', NULL),
(7, 1, 1188178335, 40496, '1', 0, '7', '2023-08-22 20:03:12', '2023-08-22 20:03:12', NULL),
(8, 1, 726587134, 40496, '1', 1, '8', '2023-08-22 20:04:01', '2023-08-22 20:04:01', NULL),
(9, 1, 907621696, 40496, '1', 0, '9', '2023-08-26 13:18:37', '2023-08-26 13:18:37', NULL),
(11, 1, 1462592756, 40496, '1', 0, '10', '2023-08-26 13:22:37', '2023-08-26 13:22:37', NULL),
(12, 1, 1025229910, 40496, '1', 1, '11', '2023-08-26 13:26:52', '2023-08-26 13:26:52', NULL),
(13, 1, 2116633883, 40496, '1', 0, '1525de', '2023-08-29 16:04:49', '2023-08-29 16:04:49', NULL),
(14, 1, 707762738, 40496, '1', 0, '122125', '2023-08-29 16:43:32', '2023-08-29 16:43:32', NULL),
(15, 1, 643626003, 40496, '1', 0, '162612', '2023-08-29 16:43:36', '2023-08-29 16:43:36', NULL),
(16, 1, 1704519425, 40496, '1', 0, '12t12t 12t12t12 t12t1 212 t12 t21t 12 t112t12t 12t12t12 t12t1 212 t12 t21t 12 t112t12t 12t12t12 t12t1 212 t12 t21t 12 t112t12t 12t12t12 t12t1 212 t12 t21t 12 t112t12t 12t12t12 t12t1 212 t12 t21t 12 t112t12t 12t12t12 t12t1 212 t12 t21t 12 t112t12t 12t12t12 t12t1 212 t12 t21t 12 t112t12t 12t12t12 t12t1 212 t12 t21t 12 t1', '2023-08-29 16:43:49', '2023-08-29 16:43:49', NULL),
(17, 1, 2078506937, 40496, '1', 0, '12t12t 12t12t12 t12t1 212 t12 t21t 12 t112t12t 12t12t12 t12t1 212 t12 t21t 12 t112t12t 12t12t12 t12t1 212 t12 t21t 12 t112t12t 12t12t12 t12t1 212 t12 t21t 12 t112t12t 12t12t12 t12t1 212 t12 t21t 12 t112t12t 12t12t12 t12t1 212 t12 t21t 12 t112t12t 12t12t12 t12t1 212 t12 t21t 12 t112t12t 12t12t12 t12t1 212 t12 t21t 12 t1', '2023-08-29 16:43:53', '2023-08-29 16:43:53', NULL),
(18, 1, 299922453, 20785, '7', 0, 'test', '2023-09-03 18:42:45', '2023-09-03 18:42:45', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `episode_comment_repy`
--

INSERT INTO `episode_comment_repy` (`id`, `user_id`, `post_id`, `post_u_id`, `post_content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1892541102, 4785107, '2', '2023-08-22 19:57:49', '2023-08-22 20:04:10', NULL),
(2, 1, 726587134, 7365360, '1', '2023-08-22 20:04:20', '2023-08-22 20:04:20', NULL),
(3, 1, 1025229910, 7680964, '12abc', '2023-08-26 15:33:18', '2023-08-26 15:33:18', NULL),
(4, 1, 1025229910, 8313289, '13abc', '2023-08-26 15:33:28', '2023-08-26 15:33:28', NULL),
(5, 1, 299922453, 4739583, 'test2', '2023-09-03 18:42:52', '2023-09-03 18:42:52', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `episode_download`
--

INSERT INTO `episode_download` (`id`, `dw_id`, `dw_ep`, `dw_name`, `dw_link`) VALUES
(8, 40496, '1', 'GogoT', 'https://ddl.animeout.com/index.php?url=slaine.animeout.com/series/Ongoing/Hidan%20no%20Aria%20AA/[AnimeOut]%20Hidan%20no%20Aria%20AA%20-%2001%20(720p)[Chihiro-Senketsu][Daylighter].mkv');

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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `episode_embed`
--

INSERT INTO `episode_embed` (`id`, `embed_order`, `embed_type`, `embed_uid`, `embed_id`, `embed_name`, `embed_frame`) VALUES
(14, 1, 2, 40496, 1, 'AnimeİN', 'https://animein.fun'),
(15, 1, 2, 40496, 2, 'AnimeİN', 'https://animein.fun'),
(16, 1, 2, 40496, 3, 'AnimeİN', 'https://animein.fun'),
(17, 1, 2, 40496, 4, 'AnimeİN', 'https://animein.fun'),
(18, 1, 2, 40496, 5, 'AnimeİN', 'https://animein.fun'),
(19, 1, 2, 40496, 6, 'AnimeİN', 'https://animein.fun'),
(20, 1, 2, 40496, 7, 'AnimeİN', 'https://animein.fun'),
(21, 1, 2, 40496, 8, 'AnimeİN', 'https://animein.fun'),
(22, 1, 2, 40496, 9, 'AnimeİN', 'https://animein.fun'),
(23, 1, 2, 40496, 10, 'AnimeİN', 'https://animein.fun'),
(24, 1, 2, 40496, 11, 'AnimeİN', 'https://animein.fun'),
(25, 1, 2, 40496, 12, 'AnimeİN', 'https://animein.fun'),
(26, 1, 2, 40496, 13, 'AnimeİN', 'https://animein.fun'),
(31, 0, 2, 40496, 1, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(32, 0, 2, 40496, 2, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(33, 0, 2, 40496, 3, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(34, 0, 2, 40496, 4, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(35, 0, 2, 40496, 5, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(36, 0, 2, 40496, 6, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(37, 0, 2, 40496, 7, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(38, 0, 2, 40496, 8, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(39, 0, 2, 40496, 9, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(40, 0, 2, 40496, 10, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(41, 0, 2, 40496, 11, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(42, 0, 2, 40496, 12, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(43, 0, 2, 40496, 13, 'Anitium', 'https://gogoanimehd.io/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(44, 2, 2, 40496, 1, 'PlayTaku', 'http://playtaku.net/videos/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(45, 2, 2, 40496, 2, 'PlayTaku', 'http://playtaku.net/videos/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(46, 2, 2, 40496, 3, 'PlayTaku', 'http://playtaku.net/videos/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(47, 2, 2, 40496, 4, 'PlayTaku', 'http://playtaku.net/videos/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(48, 2, 2, 40496, 5, 'PlayTaku', 'http://playtaku.net/videos/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(49, 2, 2, 40496, 6, 'PlayTaku', 'http://playtaku.net/videos/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(50, 2, 2, 40496, 7, 'PlayTaku', 'http://playtaku.net/videos/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(51, 2, 2, 40496, 8, 'PlayTaku', 'http://playtaku.net/videos/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(52, 2, 2, 40496, 9, 'PlayTaku', 'http://playtaku.net/videos/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(53, 2, 2, 40496, 10, 'PlayTaku', 'http://playtaku.net/videos/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(54, 2, 2, 40496, 11, 'PlayTaku', 'http://playtaku.net/videos/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(55, 2, 2, 40496, 12, 'PlayTaku', 'http://playtaku.net/videos/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(56, 2, 2, 40496, 13, 'PlayTaku', 'http://playtaku.net/videos/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-episode-'),
(57, 2, 2, 20785, 1, 'GogoAnime', 'https://gogoanimehd.io/mahouka-koukou-no-rettousei-episode-'),
(58, 2, 2, 20785, 2, 'GogoAnime', 'https://gogoanimehd.io/mahouka-koukou-no-rettousei-episode-'),
(59, 2, 2, 20785, 3, 'GogoAnime', 'https://gogoanimehd.io/mahouka-koukou-no-rettousei-episode-'),
(60, 2, 2, 20785, 4, 'GogoAnime', 'https://gogoanimehd.io/mahouka-koukou-no-rettousei-episode-'),
(61, 2, 2, 20785, 5, 'GogoAnime', 'https://gogoanimehd.io/mahouka-koukou-no-rettousei-episode-'),
(62, 2, 2, 20785, 6, 'GogoAnime', 'https://gogoanimehd.io/mahouka-koukou-no-rettousei-episode-'),
(63, 2, 2, 20785, 7, 'GogoAnime', 'https://gogoanimehd.io/mahouka-koukou-no-rettousei-episode-'),
(64, 2, 2, 20785, 8, 'GogoAnime', 'https://gogoanimehd.io/mahouka-koukou-no-rettousei-episode-'),
(65, 2, 2, 20785, 9, 'GogoAnime', 'https://gogoanimehd.io/mahouka-koukou-no-rettousei-episode-'),
(66, 2, 2, 20785, 10, 'GogoAnime', 'https://gogoanimehd.io/mahouka-koukou-no-rettousei-episode-'),
(67, 2, 2, 20785, 11, 'GogoAnime', 'https://gogoanimehd.io/mahouka-koukou-no-rettousei-episode-'),
(68, 2, 2, 20785, 12, 'GogoAnime', 'https://gogoanimehd.io/mahouka-koukou-no-rettousei-episode-'),
(69, 2, 2, 20785, 13, 'GogoAnime', 'https://gogoanimehd.io/mahouka-koukou-no-rettousei-episode-'),
(70, 2, 2, 20785, 14, 'GogoAnime', 'https://gogoanimehd.io/mahouka-koukou-no-rettousei-episode-'),
(71, 2, 2, 20785, 15, 'GogoAnime', 'https://gogoanimehd.io/mahouka-koukou-no-rettousei-episode-'),
(72, 2, 2, 20785, 16, 'GogoAnime', 'https://gogoanimehd.io/mahouka-koukou-no-rettousei-episode-'),
(73, 2, 2, 20785, 17, 'GogoAnime', 'https://gogoanimehd.io/mahouka-koukou-no-rettousei-episode-'),
(74, 2, 2, 20785, 18, 'GogoAnime', 'https://gogoanimehd.io/mahouka-koukou-no-rettousei-episode-'),
(75, 2, 2, 20785, 19, 'GogoAnime', 'https://gogoanimehd.io/mahouka-koukou-no-rettousei-episode-'),
(76, 2, 2, 20785, 20, 'GogoAnime', 'https://gogoanimehd.io/mahouka-koukou-no-rettousei-episode-'),
(77, 2, 2, 20785, 21, 'GogoAnime', 'https://gogoanimehd.io/mahouka-koukou-no-rettousei-episode-'),
(78, 2, 2, 20785, 22, 'GogoAnime', 'https://gogoanimehd.io/mahouka-koukou-no-rettousei-episode-'),
(79, 2, 2, 20785, 23, 'GogoAnime', 'https://gogoanimehd.io/mahouka-koukou-no-rettousei-episode-'),
(80, 2, 2, 20785, 24, 'GogoAnime', 'https://gogoanimehd.io/mahouka-koukou-no-rettousei-episode-'),
(81, 2, 2, 20785, 25, 'GogoAnime', 'https://gogoanimehd.io/mahouka-koukou-no-rettousei-episode-'),
(82, 2, 2, 20785, 26, 'GogoAnime', 'https://gogoanimehd.io/mahouka-koukou-no-rettousei-episode-'),
(83, 1, 1, 54112, 2, 'Youtube', 'https://www.youtube.com/watch?v=mBA6-KNN_X4'),
(84, 3, 3, 54112, 2, 'Youtube', 'https://www.youtube.com/watch?v=mBA6-KNN_X4'),
(85, 2, 4, 54112, 1, 'Youtube', 'https://www.youtube.com/watch?v=TPPMzfkMixE'),
(86, 3, 4, 40496, 10, 'Youtube', 'https://www.youtube.com/watch?v=9817Ayyr66g&list=RD9817Ayyr66g&start_radio=1'),
(87, 2, 3, 54112, 3, 'OneUpload', 'https://oneupload.to/fouxqscp1z0m'),
(88, 2, 1, 54112, 4, 'Anitium', 'https://www.2embed.cc/embedanime/maou-gakuin-no-futekigousha-shijou-saikyou-no-maou-no-shiso-tensei-shite-shison-tachi-no-gakkou-e-kayou-ii-episode-'),
(89, 2, 2, 52611, 1, '2Embed', 'https://www.2embed.cc/anime/okashi-na-tensei-episode-'),
(90, 2, 2, 52611, 2, '2Embed', 'https://www.2embed.cc/anime/okashi-na-tensei-episode-'),
(91, 2, 2, 52611, 3, '2Embed', 'https://www.2embed.cc/anime/okashi-na-tensei-episode-'),
(92, 2, 2, 52611, 4, '2Embed', 'https://www.2embed.cc/anime/okashi-na-tensei-episode-'),
(93, 2, 2, 52611, 5, '2Embed', 'https://www.2embed.cc/anime/okashi-na-tensei-episode-'),
(94, 2, 2, 52611, 6, '2Embed', 'https://www.2embed.cc/anime/okashi-na-tensei-episode-'),
(95, 2, 2, 52611, 7, '2Embed', 'https://www.2embed.cc/anime/okashi-na-tensei-episode-'),
(96, 2, 2, 52611, 8, '2Embed', 'https://www.2embed.cc/anime/okashi-na-tensei-episode-'),
(97, 2, 2, 52611, 9, '2Embed', 'https://www.2embed.to/anime/okashi-na-tensei-episode-'),
(98, 2, 2, 52611, 10, '2Embed', 'https://www.2embed.to/anime/okashi-na-tensei-episode-'),
(99, 2, 2, 52611, 11, '2Embed', 'https://www.2embed.to/anime/okashi-na-tensei-episode-');

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `episode_main_rep`
--

INSERT INTO `episode_main_rep` (`id`, `user_id`, `post_id`, `post_rep`, `post_disrep`) VALUES
(1, 1, 1025229910, 1, 0),
(2, 2, 1025229910, 0, 1),
(3, 3, 1025229910, 1, 0),
(4, 4, 1025229910, 0, 1),
(5, 5, 1025229910, 0, 1),
(6, 6, 1025229910, 0, 1),
(7, 7, 1025229910, 0, 1),
(8, 8, 1462592756, 1, 0),
(9, 1, 8313289, 0, 1),
(10, 1, 7680964, 0, 1),
(11, 1, 264878869, 1, 0),
(12, 1, 231159866, 0, 1),
(13, 1, 1495458983, 1, 0),
(14, 1, 726587134, 0, 1),
(15, 1, 7365360, 1, 0),
(16, 1, 1462592756, 1, 0),
(17, 1, 299922453, 1, 0),
(18, 1, 4739583, 0, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `episode_repy_rep`
--

INSERT INTO `episode_repy_rep` (`id`, `user_id`, `post_id`, `post_rep`, `post_disrep`) VALUES
(1, 1, 8313289, 1, 0),
(2, 1, 7680964, 0, 1),
(3, 1, 4739583, 1, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `episode_vote`
--

INSERT INTO `episode_vote` (`id`, `user_id`, `anime_id`, `anime_ep_id`, `anime_ep_score`) VALUES
(17, '1', '40496', '1', '5'),
(18, '1', '20785', '1', '0'),
(19, '1', '54112', '1', '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `files`
--

DROP TABLE IF EXISTS `files`;
CREATE TABLE IF NOT EXISTS `files` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `size` int NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `files`
--

INSERT INTO `files` (`id`, `name`, `type`, `size`, `path`, `created_at`, `updated_at`) VALUES
(39, '1687360287_7ef96876914eb93812cc.png', 'image/png', 2083032, '/uploads/1687360287_7ef96876914eb93812cc.png', '2023-06-21 15:11:27', '2023-06-21 15:11:27');

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
(10, 'Site Logo', '', 'https://anitium.net/files/images/logo.png', 'Advanced', 'Site Logo', '2023-07-24 16:03:40', '2023-07-24 16:03:40'),
(11, 'Site İcon', '', 'https://anitium.net/files/images/logo.png', 'Advanced', 'Site İcon', '2023-07-24 16:03:40', '2023-07-24 16:03:40'),
(12, 'İndex Character', '', '/files/images/indexbg.png', 'İndex', 'İndex Character İmage', '2023-07-24 16:03:40', '2023-07-24 16:03:40'),
(13, 'İndex Wallpaper', '', '/files/images/indexwallpaper.jpg', 'İndex', 'İndex Wallpaper İmage', '2023-07-24 16:03:40', '2023-07-24 16:03:40'),
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
  `avatar` varchar(255) NOT NULL DEFAULT 'http://lic.anitium.net/img/no-avatar.png',
  `schedule_status` int NOT NULL DEFAULT '1',
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `username`, `avatar`, `schedule_status`, `raw_status`, `sub_status`, `dub_status`, `turk_status`, `status`, `status_message`, `active`, `last_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'akaisora09', '/files/images/avatar6.gif', 1, 1, 1, 1, 1, NULL, NULL, 1, NULL, '2023-05-12 19:52:20', '2023-05-12 19:52:20', NULL),
(2, 'test123', 'https://img5.goodfon.com/wallpaper/nbig/9/21/girl-anime-wallpapers-anime-girl.jpg', 0, 0, 0, 0, 0, NULL, NULL, 1, NULL, '2023-05-16 15:20:43', '2023-05-16 15:20:43', NULL),
(3, 'test555', 'http://lic.anitium.net/img/no-avatar.png', 1, 1, 1, 1, 1, NULL, NULL, 1, NULL, '2023-06-11 08:09:00', '2023-06-11 08:09:00', NULL);

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
