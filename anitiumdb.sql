-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 23 Haz 2023, 12:46:24
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
  `ani_wallpaper` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ani_release` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ani_release_season` int NOT NULL,
  `ani_rate` int NOT NULL,
  `ani_score` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ani_raw` int NOT NULL,
  `ani_sub` int NOT NULL,
  `ani_dub` int NOT NULL,
  `ani_turk` int NOT NULL,
  `ani_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ani_pv` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `ani_aired` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ani_aired_fin` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ani_studio` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `ani_producers` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `ani_offical_site` json DEFAULT NULL,
  `ani_manga_url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `anime`
--

INSERT INTO `anime` (`id`, `uid`, `ani_name`, `ani_jname`, `ani_synonyms`, `ani_genre`, `ani_type`, `ani_country`, `ani_stats`, `ani_source`, `ani_ep`, `ani_synopsis`, `ani_poster`, `ani_wallpaper`, `ani_release`, `ani_release_season`, `ani_rate`, `ani_score`, `ani_raw`, `ani_sub`, `ani_dub`, `ani_turk`, `ani_time`, `ani_pv`, `ani_aired`, `ani_aired_fin`, `ani_studio`, `ani_producers`, `ani_offical_site`, `ani_manga_url`, `view_count`, `view_count_month`, `view_count_years`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 51096, 'Youkoso Jitsuryoku Shijou Shugi no Kyoushitsu e 2nd Season', 'ようこそ実力至上主義の教室へ 2期', 'Classroom of the Elite 2nd Season, You-jitsu 2nd Season, You-zitsu 2nd Season', 'Drama,Suspense,Psychological,School', 1, 1, 2, 2, '13', 'Life back on the cruise following the Island Special Examination is anything but smooth sailing. Almost immediately after their return, the first-year students of Tokyo Metropolitan Advanced Nurturing High School face yet another special exam, with both class and individual points on the line.\r\n\r\nIn addition to the complicated ruleset, more issues arise in the form of Kakeru Ryuuen and Kei Karuizawa. Angered by the previous test\'s outcome, Ryuuen is dead set on outdoing every class in the new challenge using any means necessary. Meanwhile, Karuizawa, a crucial pillar of Class D, is close to crumbling under the pressure of her past.\r\n\r\nThe stage is now set for Kiyotaka Ayanokouji to once again—using the full extent of his planning, foresight, and ruthless manipulation—steer Class D to victory as dangerously close enemy forces try to bring it down.\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/1010/124180l.jpg', '/uploads/1687360287_7ef96876914eb93812cc.png', '2022', 3, 3, '8.13', 0, 1, 0, 0, '23 min per ep', 'https://www.youtube.com/watch?v=0mM3lQytac4', '2022-07-04', '2022-09-26', 'Lerche', 'Studio Hibari,Movic,AT-X,Sammy,Crunchyroll,Kadokawa Media House,Kadokawa,Bandai Namco Music Live', '[{\"url\": \"http://you-zitsu.com/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/youkosozitsu\", \"name\": \"@youkosozitsu\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17208\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=25370\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/Classroom_of_the_Elite\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E3%82%88%E3%81%86%E3%81%93%E3%81%9D%E5%AE%9F%E5%8A%9B%E8%87%B3%E4%B8%8A%E4%B8%BB%E7%BE%A9%E3%81%AE%E6%95%99%E5%AE%A4%E3%81%B8_(%E3%83%86%E3%83%AC%E3%83%93%E3%82%A2%E3%83%8B%E3%83%A1)\", \"name\": \"Wikipedia\"}, {\"url\": \"https://cal.syoboi.jp/tid/6369\", \"name\": \"Syoboi\"}, {\"url\": \"https://bangumi.tv/subject/371546\", \"name\": \"Bangumi\"}, {\"url\": \"https://movie.douban.com/subject/35778747/\", \"name\": \"Douban\"}]', 'https://classroomofelite.online/', 34, 34, 34, '2023-06-21 12:49:42', '2023-06-21 12:49:42', NULL),
(5, 35507, 'Youkoso Jitsuryoku Shijou Shugi no Kyoushitsu e', 'ようこそ実力至上主義の教室へ', 'Welcome to the Classroom of the Elite, You-jitsu', 'Drama,Psychological,School', 1, 1, 2, 2, '12', 'On the surface, Koudo Ikusei Senior High School is a utopia. The students enjoy an unparalleled amount of freedom, and it is ranked highly in Japan. However, the reality is less than ideal. Four classes, A through D, are ranked in order of merit, and only the top classes receive favorable treatment.\r\n\r\nKiyotaka Ayanokouji is a student of Class D, where the school dumps its worst. There he meets the unsociable Suzune Horikita, who believes she was placed in Class D by mistake and desires to climb all the way to Class A, and the seemingly amicable class idol Kikyou Kushida, whose aim is to make as many friends as possible.\r\n\r\nWhile class membership is permanent, class rankings are not; students in lower ranked classes can rise in rankings if they score better than those in the top ones. Additionally, in Class D, there are no bars on what methods can be used to get ahead. In this cutthroat school, can they prevail against the odds and reach the top?\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/5/86830l.jpg', 'https://cdn.myanimelist.net/images/anime/5/86830l.jpg', '2017', 3, 3, '7.86', 0, 0, 0, 0, '24 min per ep', 'https://www.youtube.com/watch?v=iYsx6w5PNno', '2017-07-12', '2017-09-27', 'Lerche', 'Studio Hibari,Lantis,AT-X,Sony Music Communications,Toranoana,Crunchyroll,Kadokawa Media House,Kadokawa,AKABEiSOFT2', '[{\"url\": \"http://you-zitsu.com/\", \"name\": \"Official Site\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=13153\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=19544\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/Classroom_of_the_Elite\", \"name\": \"Wikipedia\"}]', '', 11, 11, 11, '2023-06-21 14:03:06', '2023-06-21 14:03:06', NULL),
(6, 21, 'One Piece', 'ONE PIECE', 'OP', 'Action,Adventure,Fantasy,Shounen', 1, 1, 1, 1, '?', 'Gol D. Roger was known as the \"Pirate King,\" the strongest and most infamous being to have sailed the Grand Line. The capture and execution of Roger by the World Government brought a change throughout the world. His last words before his death revealed the existence of the greatest treasure in the world, One Piece. It was this revelation that brought about the Grand Age of Pirates, men who dreamed of finding One Piece—which promises an unlimited amount of riches and fame—and quite possibly the pinnacle of glory and the title of the Pirate King.\r\n\r\nEnter Monkey D. Luffy, a 17-year-old boy who defies your standard definition of a pirate. Rather than the popular persona of a wicked, hardened, toothless pirate ransacking villages for fun, Luffy\'s reason for being a pirate is one of pure wonder: the thought of an exciting adventure that leads him to intriguing people and ultimately, the promised treasure. Following in the footsteps of his childhood hero, Luffy and his crew travel across the Grand Line, experiencing crazy adventures, unveiling dark mysteries and battling strong enemies, all in order to reach the most coveted of all fortunes—One Piece.\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/6/73245l.jpg', 'https://cdn.myanimelist.net/images/anime/6/73245l.jpg', '1999', 4, 3, '8.69', 0, 1, 0, 0, '24 min', 'https://www.youtube.com/watch?v=l_98K4_6UQ0', '1999-10-20', '?', 'Toei Animation', 'Fuji TV,TAP,Shueisha', '[{\"url\": \"http://www.toei-anim.co.jp/tv/onep/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/OnePieceAnime\", \"name\": \"@OnePieceAnime\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=69\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=836\", \"name\": \"ANN\"}, {\"url\": \"http://en.wikipedia.org/wiki/One_Piece\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/ONE_PIECE_%28%E3%82%A2%E3%83%8B%E3%83%A1%29\", \"name\": \"Wikipedia\"}, {\"url\": \"https://cal.syoboi.jp/tid/350\", \"name\": \"Syoboi\"}]', '', 17, 17, 17, '2023-06-21 14:50:51', '2023-06-21 14:50:51', NULL),
(7, 52830, 'Isekai de Cheat Skill wo Te ni Shita Ore wa, Genjitsu Sekai wo mo Musou Suru: Level Up wa Jinsei wo Kaeta', '異世界でチート能力を手にした俺は、現実世界をも無双する ～レベルアップは人生を変えた～', 'Iseleve', 'Action,Adventure,Fantasy,Isekai,School', 1, 1, 1, 2, '13', 'All his life, Yuuya Tenjou has been the subject of resentment and contempt from everyone around him, even from his parents. To make matters worse, his grandfather—the only person who ever showed him affection—suddenly dies, leaving Yuuya truly alone.\r\n\r\nDespite facing many adversities, Yuuya does what he can to offer kindness to those who need it—but even the most good-natured people can only tolerate so much abuse. Just when he reaches his breaking point, a flicker of hope appears in the form of a hidden door in his bathroom.\r\n\r\nThis door provides two-way access to an abandoned house in another world, where he instantly gains game-like stats and skills. Moreover, the house once belonged to a sage, which gives Yuuya access to remarkable weapons, equipment, and crops with extraordinary effects. With these newfound blessings, the once-undesirable Yuuya may just reach his true potential and become unstoppable.\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/1316/134327l.jpg', 'https://cdn.myanimelist.net/images/anime/1316/134327l.jpg', '2023', 2, 3, '6.56', 0, 1, 0, 0, '24 min per ep', 'https://www.youtube.com/watch?v=u7YOzGniO5g', '2023-04-07', '2023-06-30', 'Millepensee', 'TMS Entertainment,Tokyo MX,BS11,Kadokawa,CTW', '[{\"url\": \"https://www.iseleve.com/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/iseleve_anime\", \"name\": \"@iseleve_anime\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17580\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=26234\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/I_Got_a_Cheat_Skill_in_Another_World_and_Became_Unrivaled_in_the_Real_World,_Too\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E7%95%B0%E4%B8%96%E7%95%8C%E3%81%A7%E3%83%81%E3%83%BC%E3%83%88%E8%83%BD%E5%8A%9B%E3%82%92%E6%89%8B%E3%81%AB%E3%81%97%E3%81%9F%E4%BF%BA%E3%81%AF%E3%80%81%E7%8F%BE%E5%AE%9F%E4%B8%96%E7%95%8C%E3%82%92%E3%82%82%E7%84%A1%E5%8F%8C%E3%81%99%E3%82%8B%E3%80%9C%E3%83%AC%E3%83%99%E3%83%AB%E3%82%A2%E3%83%83%E3%83%97%E3%81%AF%E4%BA%BA%E7%94%9F%E3%82%92%E5%A4%89%E3%81%88%E3%81%9F%E3%80%9C#%E3%83%86%E3%83%AC%E3%83%93%E3%82%A2%E3%83%8B%E3%83%A1\", \"name\": \"Wikipedia\"}, {\"url\": \"https://cal.syoboi.jp/tid/6662\", \"name\": \"Syoboi\"}, {\"url\": \"https://bangumi.tv/subject/397025\", \"name\": \"Bangumi\"}, {\"url\": \"https://baike.baidu.com/item/%E5%9C%A8%E5%BC%82%E4%B8%96%E7%95%8C%E8%8E%B7%E5%BE%97%E8%B6%85%E5%BC%BA%E8%83%BD%E5%8A%9B%E7%9A%84%E6%88%91%EF%BC%8C%E5%9C%A8%E7%8E%B0%E5%AE%9E%E4%B8%96%E7%95%8C%E7%85%A7%E6%A0%B7%E6%97%A0%E6%95%8C%EF%BD%9E%E7%AD%89%E7%BA%A7%E6%8F%90%E5%8D%87%E6%94%B9%E5%8F%98%E4%BA%BA%E7%94%9F%E5%91%BD%E8%BF%90%EF%BD%9E/61904008?fromModule=lemma-qiyi_sense-lemma\", \"name\": \"Baidu Baike\"}, {\"url\": \"https://movie.douban.com/subject/36066424/\", \"name\": \"Douban\"}]', '', 6, 6, 6, '2023-06-21 15:08:58', '2023-06-21 15:08:58', NULL),
(8, 51706, 'Yuusha ga Shinda!', '勇者が死んだ！', 'The Hero Is Dead!', 'Action,Comedy,Fantasy,Ecchi,Harem,Parody', 1, 1, 1, 1, '12', 'Far to the north of the world lies Hell\'s Gate, a portal formerly used by the Demon Lord to invade the human realm. Thanks to the legendary hero Shion Bladearts, wielder of Excalibur, and his loyal band of companions, the Gate was sealed off and the demonic threat was vanquished.\r\n\r\nUnfortunately, the seal was incomplete and has begun to weaken, allowing the demons to once again begin their attack. Worried about the safety of his village, selfish and perverted farmer Touka Scott dig pitfalls to defend against the demons. But fear not, for Shion is on his way to reseal Hell\'s Gate and save humanity!\r\n\r\nOr at least he was, because the legendary hero is dead, having fallen into one of the pitfalls Touka dug. Luckily, dealing with the dead is the specialty of necromancer Anri Haynesworth. While she can\'t revive him, Anri can at least salvage their quest by forcing Touka\'s soul into Shion\'s rotting body and dragging him along to Hell\'s Gate in Shion\'s place. Not wanting to be left behind, Touka\'s childhood friend Yuna Yunis tags along. Together, the three of them set out as what just might be the most unsuitable party to ever try to save the world!\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/1868/133866l.jpg', 'https://cdn.myanimelist.net/images/anime/1868/133866l.jpg', '2023', 2, 3, '6.27', 0, 1, 0, 0, '23 min per ep', 'https://www.youtube.com/watch?v=0ApTw19ZTQg', '2023-04-07', '2023-06-23', 'LIDENFILMS', 'Pony Canyon,Tohokushinsha Film Corporation,Shogakukan,Crunchyroll,WOWMAX', '[{\"url\": \"https://heroisdead.com/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/yuusyagasinda\", \"name\": \"@yuusyagasinda\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17340\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=25602\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/The_Legendary_Hero_Is_Dead!\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E5%8B%87%E8%80%85%E3%81%8C%E6%AD%BB%E3%82%93%E3%81%A0!#%E3%83%86%E3%83%AC%E3%83%93%E3%82%A2%E3%83%8B%E3%83%A1\", \"name\": \"Wikipedia\"}, {\"url\": \"https://cal.syoboi.jp/tid/6661\", \"name\": \"Syoboi\"}, {\"url\": \"https://bangumi.tv/subject/379639\", \"name\": \"Bangumi\"}, {\"url\": \"https://baike.baidu.com/item/%E5%8B%87%E8%80%85%E6%AD%BB%E4%BA%86%EF%BC%81/60939827?fromModule=lemma-qiyi_sense-lemma\", \"name\": \"Baidu Baike\"}, {\"url\": \"https://movie.douban.com/subject/35885091/\", \"name\": \"Douban\"}]', '', 1, 1, 1, '2023-06-21 15:16:36', '2023-06-21 15:16:36', NULL),
(9, 50307, 'Tonikaku Kawaii 2nd Season', 'トニカクカワイイ', '', 'Comedy,Romance,Shounen', 1, 1, 1, 1, '12', 'In the wake of their first home burning down, Nasa and Tsukasa Yuzaki are seeking temporary shelter at the Arisugawas\' bathhouse. Though they have only been married for a short time, their relationship has only become sweeter by the day. Nasa is determined to spend as much time with his wife as possible, basking in the happiness of their marriage.\r\n\r\nThe newlyweds find new ways to explore their relationship. From adopting a cat, going to an amusement park, and even watching an impromptu romantic comedy featuring Nasa\'s former teacher, every day is a new experience. But while Tsukasa continues to meet the people in Nasa\'s life, Nasa has yet to meet more of Tsukasa\'s family. Though they appear to be the picture-perfect couple to everyone around them, Nasa begins to wonder if he will ever learn more about his wife\'s mysterious past.\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/1996/133361l.jpg', 'https://cdn.myanimelist.net/images/anime/1996/133361l.jpg', '2023', 2, 3, '7.81', 0, 1, 0, 0, '23 min per ep', 'https://www.youtube.com/watch?v=cksQYKGvr6U', '2023-04-08', '2023-06-24', 'Seven Arcs', 'Shogakukan-Shueisha Productions,Warner Bros. Japan,KlockWorx,Shogakukan,Crunchyroll', '[{\"url\": \"http://tonikawa.com/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/tonikawa_anime\", \"name\": \"@tonikawa_anime\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=16961\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=24951\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/Fly_Me_to_the_Moon_(manga)#Anime\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E3%83%88%E3%83%8B%E3%82%AB%E3%82%AF%E3%82%AB%E3%83%AF%E3%82%A4%E3%82%A4#%E3%82%A2%E3%83%8B%E3%83%A1\", \"name\": \"Wikipedia\"}, {\"url\": \"https://cal.syoboi.jp/tid/6669\", \"name\": \"Syoboi\"}]', '', 1, 1, 1, '2023-06-21 15:16:49', '2023-06-21 15:16:49', NULL),
(10, 2928, '.hack//G.U. Returner', '.HACK//G.U. RETURNER', '', 'Adventure,Drama,Fantasy,Video Game', 3, 1, 2, 1, '1', 'The characters from previous .hack//G.U. Games and .hack//Roots receive an email from Ovan. He is requesting them to go to Hidden Forbidden Festival where is set up a mysterious summer festival. There they find an AIDA Chim Chim who wishes to peacefully co-exist with the other players of The World. It then transforms into the word \"Returner\", so they assume it to mean that Ovan will return to The World.\r\n\r\n(Source: ANN)', 'https://cdn.myanimelist.net/images/anime/1798/115989l.jpg', 'https://cdn.myanimelist.net/images/anime/1798/115989l.jpg', '2007', 1, 3, '6.67', 0, 1, 0, 0, '24 min', '', '2007-01-18', '', 'Bee Train', 'Bandai Visual,CyberConnect2', '[{\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=5391\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=9179\", \"name\": \"ANN\"}]', '', 2, 2, 2, '2023-06-21 15:17:05', '2023-06-21 15:17:05', NULL),
(11, 51693, 'Kaminaki Sekai no Kamisama Katsudou', '神無き世界のカミサマ活動', 'Kamikatsu, What God Does in a World Without Gods', 'Action,Comedy,Fantasy,Isekai,Parody,Reincarnation,Seinen', 1, 1, 1, 1, '12', 'Under the belief that the omnipotent god Mitama will come to save him, Yukito Urabe participates in a ritual to become the new leader of his father\'s cult. But when the boy drowns during the ritual, he wishes to be reborn in a world without gods or religion.\r\n\r\nReawakening in a completely different world devoid of spirituality. He meets a deviant girl named Aruaru, who introduces him to her village. However, his idyllic image of this world\'s society is short-lived when he witnesses a public group suicide and learns of the country\'s end-of-life system: at any moment, the government may order any citizen to die.\r\n\r\nAruaru and her sister are forcibly taken for execution soon after, prompting Yukito to rush to their rescue—but to no avail. In a moment of desperation, Yukito recalls his father\'s teachings and utters a prayer for Mitama to save them. Seemingly answering his call, a little girl descends from the sky and annihilates everyone who harmed Yukito and his friends. To Yukito\'s surprise, the girl introduces herself as Mitama.\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/1794/135148l.jpg', 'https://cdn.myanimelist.net/images/anime/1794/135148l.jpg', '2023', 2, 4, '6.79', 0, 1, 0, 0, '23 min per ep', 'https://www.youtube.com/watch?v=MD_q7xYb-Xs', '2023-04-06', '2023-07-06', 'Studio Palette', 'Lantis,DAX Production,Kansai Telecasting,BS NTV,Kadokawa,MAGNET,Bandai Namco Music Live', '[{\"url\": \"https://kamikatsu-anime.jp/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/kamikatsu_anime\", \"name\": \"@kamikatsu_anime\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17337\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=25576\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/Kaminaki_Sekai_no_Kamisama_Katsud%C5%8D#Anime\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E7%A5%9E%E7%84%A1%E3%81%8D%E4%B8%96%E7%95%8C%E3%81%AE%E3%82%AB%E3%83%9F%E3%82%B5%E3%83%9E%E6%B4%BB%E5%8B%95\", \"name\": \"Wikipedia\"}, {\"url\": \"https://cal.syoboi.jp/tid/6659\", \"name\": \"Syoboi\"}]', '', 3, 3, 3, '2023-06-21 15:17:21', '2023-06-21 15:17:21', NULL),
(12, 5525, '07-Ghost', 'セブンゴースト', '07 Ghost, Seven Ghost, 7 Ghosts, The Seven Ghosts', 'Action,Fantasy,Military,Mythology,Josei', 1, 1, 2, 1, '25', 'Barsburg Empire\'s Military Academy is known for training elites who bring victory to the empire. Students of the academy freely utilize an ability called \"Zaiphon\" to fight, while the types of Zaiphon usable depends on the nature of the soldier.\r\n\r\nTeito Klein, a student at the academy, is one of the most promising soldiers produced. Although ridiculed by everyone for being a sklave (German for slave) with no memories of his past, he is befriended by a fellow student called Mikage. While preparing for the final exam, Teito uncovers a dark secret related to his past. When an attempt to assassinate Ayanami, a high-ranking official who killed his father, fails, Teito is locked away awaiting punishment.\r\n\r\nOnly wanting the best for Teito, Mikage helps him escape. Teito ends up at the 7th District Church where he is taken in by the bishops. It is here that Teito attempts to evade the grasp of Ayanami and the Military, so he can rediscover his memories and learn why he is the person that can change the fate of the world.\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/3/22605l.jpg', 'https://cdn.myanimelist.net/images/anime/3/22605l.jpg', '2009', 2, 3, '7.19', 0, 1, 0, 0, '23 min per ep', 'https://www.youtube.com/watch?v=vRjlJDDfhJI', '2009-04-07', '2009-09-22', 'Studio Deen', 'Ichijinsha', '[{\"url\": \"http://07-ghost.net/\", \"name\": \"Official Site\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=6239\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=10468\", \"name\": \"ANN\"}, {\"url\": \"http://en.wikipedia.org/wiki/07_Ghost\", \"name\": \"Wikipedia\"}]', '', 0, 0, 0, '2023-06-21 15:17:36', '2023-06-21 15:17:36', NULL),
(13, 50220, 'Isekai Shoukan wa Nidome desu', '異世界召喚は二度目です', 'Isenido', 'Adventure,Comedy,Fantasy,Romance,Harem,Isekai', 1, 1, 1, 2, '12', 'There was once a man who was summoned to another world, and saved it. Of course, he became too popular there, and turned into an isekai-normie. However, that man fell into a \"trap\" and was forcibly returned to his original world. Moreover, he had to start over as a baby!\r\n\r\nThis is the story of the way-too-fantastic ex-hero who lived as a gloomy high-schooler, as he gets summoned once again to that same other world in a very unexpected development! \r\n\r\n(Source: Coolmic, edited)', 'https://cdn.myanimelist.net/images/anime/1387/134151l.jpg', 'https://cdn.myanimelist.net/images/anime/1387/134151l.jpg', '2023', 2, 3, '6', 0, 1, 0, 0, '23 min per ep', 'https://www.youtube.com/watch?v=FNoriLaH0IM', '2023-04-09', '2023-06-25', 'Studio Elle', 'Futabasha,BS11,ABC Animation,Jinnan Studio,Bushiroad Move,Crest', '[{\"url\": \"https://isenido.com/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/isenido_anime\", \"name\": \"@isenido_anime\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=16936\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=24905\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/Isekai_Sh%C5%8Dkan_wa_Nidome_Desu\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E7%95%B0%E4%B8%96%E7%95%8C%E5%8F%AC%E5%96%9A%E3%81%AF%E4%BA%8C%E5%BA%A6%E7%9B%AE%E3%81%A7%E3%81%99#%E3%83%86%E3%83%AC%E3%83%93%E3%82%A2%E3%83%8B%E3%83%A1\", \"name\": \"Wikipedia\"}, {\"url\": \"https://cal.syoboi.jp/tid/6630\", \"name\": \"Syoboi\"}, {\"url\": \"https://bangumi.tv/subject/354421\", \"name\": \"Bangumi\"}, {\"url\": \"https://baike.baidu.com/item/%E7%AC%AC%E4%BA%8C%E6%AC%A1%E8%A2%AB%E5%BC%82%E4%B8%96%E7%95%8C%E5%8F%AC%E5%94%A4/61838780?fromModule=lemma-qiyi_sense-lemma\", \"name\": \"Baidu Baike\"}, {\"url\": \"https://movie.douban.com/subject/35639789/\", \"name\": \"Douban\"}]', '', 3, 3, 3, '2023-06-21 15:17:53', '2023-06-21 15:17:53', NULL),
(19, 49470, 'Mamahaha no Tsurego ga Motokano datta', '継母の連れ子が元カノだった', 'My Stepsister is My Ex-Girlfriend, Tsurekano', 'Comedy,Romance', 1, 1, 2, 2, '12', 'Listless geek Mizuto Irido and introverted nerd Yume Ayai seemed like a match made in heaven, connected by their mutual love for literature. Unfortunately, their differences gradually grew, and they separated just after their middle school graduation. But, as if by divine comedy, the two find themselves reunited as step-siblings.\r\n\r\nA rivalry begins to brew between the former couple, both unwilling to acknowledge the other as the older sibling. In an attempt to \"solve\" this issue, Mizuto and Yume agree upon a rule: whoever crosses the boundaries of siblinghood norms loses, and the winner will not only be called the older sibling, but also get to make a request. However, now that they live under the same roof, the lingering memories they share start to influence their actions—possibly rekindling the feelings that may not have been fully extinguished in the first place.\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/1708/123281l.jpg', 'https://cdn.myanimelist.net/images/anime/1708/123281l.jpg', '2022', 3, 3, '6.77', 0, 1, 0, 0, '23 min per ep', 'https://www.youtube.com/watch?v=QHTffxJep_E', '2022-07-06', '2022-09-21', 'Project No.9', 'Sotsu,Pony Canyon,Movic,AT-X,KlockWorx,Asmik Ace,BS Fuji,DMM pictures,BS NTV,Kadokawa,Yomiuri Shimbun,APDREAM,Bit grooove promotion,Happinet Phantom Studios,Bergamo', '[{\"url\": \"https://tsurekano-anime.com/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/tsurekano\", \"name\": \"@tsurekano\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=16457\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=24548\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/My_Stepmom\'s_Daughter_Is_My_Ex#Anime\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E7%B6%99%E6%AF%8D%E3%81%AE%E9%80%A3%E3%82%8C%E5%AD%90%E3%81%8C%E5%85%83%E3%82%AB%E3%83%8E%E3%81%A0%E3%81%A3%E3%81%9F\", \"name\": \"Wikipedia\"}, {\"url\": \"https://cal.syoboi.jp/tid/6367\", \"name\": \"Syoboi\"}, {\"url\": \"https://bangumi.tv/subject/343106\", \"name\": \"Bangumi\"}, {\"url\": \"https://movie.douban.com/subject/35539827/\", \"name\": \"Douban\"}]', '', 22, 22, 22, '2023-06-21 19:29:03', '2023-06-21 19:29:03', NULL),
(20, 20785, 'Mahouka Koukou no Rettousei', '魔法科高校の劣等生', '', 'Action,Fantasy,Romance,Sci-Fi,School', 1, 1, 2, 2, '26', 'In the dawn of the 21st century, magic, long thought to be folklore and fairy tales, has become a systematized technology and is taught as a technical skill. In First High School, the institution for magicians, students are segregated into two groups based on their entrance exam scores: \"Blooms,\" those who receive high scores, are assigned to the First Course, while \"Weeds\" are reserve students assigned to the Second Course.\r\n\r\nMahouka Koukou no Rettousei follows the siblings, Tatsuya and Miyuki Shiba, who are enrolled in First High School. Upon taking the exam, the prodigious Miyuki is placed in the First Course, while Tatsuya is relegated to the Second Course. Though his practical test scores and status as a \"Weed\" show him to be magically inept, he possesses extraordinary technical knowledge, physical combat capabilities, and unique magic techniques—making Tatsuya the irregular at a magical high school.\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/11/61039l.jpg', 'https://cdn.myanimelist.net/images/anime/11/61039l.jpg', '2014', 2, 3, '7.41', 0, 1, 0, 0, '23 min per ep', 'https://www.youtube.com/watch?v=v5AOTuxt2XY', '2014-04-06', '2014-09-28', 'Madhouse', 'Aniplex,Square Enix,Movic,ASCII Media Works', '[{\"url\": \"http://mahouka.jp/tv/\", \"name\": \"Official Site\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=10182\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=15763\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/The_Irregular_at_Magic_High_School\", \"name\": \"Wikipedia\"}]', '', 40, 40, 40, '2023-06-21 21:27:02', '2023-06-21 21:27:02', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `animeseason`
--

DROP TABLE IF EXISTS `animeseason`;
CREATE TABLE IF NOT EXISTS `animeseason` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL,
  `sname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `suid` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `animeseason`
--

INSERT INTO `animeseason` (`id`, `uid`, `sname`, `suid`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 35507, 'Season-1', 35507, '2023-06-21 15:28:48', '2023-06-21 15:28:48', NULL),
(3, 35507, 'Season-2', 51096, '2023-06-21 15:30:23', '2023-06-21 15:30:23', NULL),
(4, 51096, 'Season-1', 35507, '2023-06-21 15:30:57', '2023-06-21 15:30:57', NULL),
(5, 51096, 'Season-2', 51096, '2023-06-21 15:31:05', '2023-06-21 15:31:05', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `animestatus`
--

DROP TABLE IF EXISTS `animestatus`;
CREATE TABLE IF NOT EXISTS `animestatus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `animestatus`
--

INSERT INTO `animestatus` (`id`, `userid`, `uid`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(8, '1', '52830', '1', '2023-06-21 15:22:03', '2023-06-21 15:22:03', NULL),
(9, '1', '50220', '3', '2023-06-21 15:22:11', '2023-06-21 15:22:11', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `anime_slider`
--

DROP TABLE IF EXISTS `anime_slider`;
CREATE TABLE IF NOT EXISTS `anime_slider` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slideruid` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `anime_slider`
--

INSERT INTO `anime_slider` (`id`, `slideruid`) VALUES
(1, '52830'),
(2, '51096'),
(3, ''),
(4, ''),
(5, ''),
(6, ''),
(7, ''),
(8, ''),
(9, ''),
(10, '');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `ani_schedule`
--

INSERT INTO `ani_schedule` (`id`, `sc_days`, `sc_id`, `sc_ep`, `sc_name`, `sc_time`) VALUES
(1, 23, 20785, '27', 'Mahouka Koukou no Rettousei', '11:20');

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
(1, 1, 'email_password', NULL, 'akaisora09@gmail.com', '$2y$10$fNW/eSalcB5LeMBF152cCO1d66QFBnVDaPNO10.xpZ8PPyW6J4a/m', NULL, NULL, 0, '2023-06-23 12:18:16', '2023-05-12 19:52:20', '2023-06-23 12:18:16'),
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3;

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
(66, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-23 12:18:16', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

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
  `post_rep` int NOT NULL,
  `post_disrep` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `community`
--

INSERT INTO `community` (`id`, `user_id`, `post_id`, `post_tag`, `post_head`, `post_content`, `post_rep`, `post_disrep`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 898656356, 2, 'Hello! ', 'Welcome Anitium!', 0, 0, '2023-05-24 14:09:22', '2023-05-24 14:09:22', NULL),
(2, 3, 223413779, 2, 'Hello Word!', 'My DOc\r\n12143', 0, 0, '2023-06-11 09:56:15', '2023-06-11 09:56:15', NULL),
(3, 3, 807017952, 4, 'where you where we boodddoo  rooo le loce ', '124125  v51221v51v51 51v215', 0, 0, '2023-06-11 13:34:53', '2023-06-11 13:34:53', NULL),
(5, 1, 1826121597, 3, '1424', '214124', 0, 0, '2023-06-21 15:54:29', '2023-06-21 15:54:29', NULL),
(6, 1, 1826121597, 3, '1424', '214124', 0, 0, '2023-06-21 15:54:50', '2023-06-21 15:54:50', NULL),
(7, 1, 207816215, 3, '125', '125', 0, 0, '2023-06-21 15:55:08', '2023-06-21 15:55:08', NULL),
(8, 1, 207816215, 3, '125', '125', 0, 0, '2023-06-21 15:57:21', '2023-06-21 15:57:21', NULL),
(9, 1, 1411124851, 3, '1f', '12f', 0, 0, '2023-06-21 15:57:30', '2023-06-21 15:57:30', NULL),
(10, 1, 1411124851, 3, '1f', '12f', 0, 0, '2023-06-21 15:58:37', '2023-06-21 15:58:37', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `community_post`
--

DROP TABLE IF EXISTS `community_post`;
CREATE TABLE IF NOT EXISTS `community_post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  `post_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `post_rep` int NOT NULL,
  `post_disrep` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `community_post`
--

INSERT INTO `community_post` (`id`, `user_id`, `post_id`, `post_content`, `post_rep`, `post_disrep`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 898656356, 'Good job.', 0, 0, '2023-05-24 14:29:19', '2023-05-24 14:29:19', NULL),
(2, 1, 898656356, 'Bolos', 0, 0, '2023-05-24 14:40:26', '2023-05-24 14:40:26', NULL),
(3, 3, 223413779, 'qwq', 0, 0, '2023-06-11 11:05:22', '2023-06-11 11:05:22', NULL),
(4, 3, 807017952, '1525', 0, 0, '2023-06-11 13:35:09', '2023-06-11 13:35:09', NULL),
(5, 1, 807017952, '12414', 1, 1, '2023-06-11 13:35:41', '2023-06-21 15:51:11', NULL);

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
  `ep_jname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `ep_romaji` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `ep_aired` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `ep_pv` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ep_view` int NOT NULL,
  `ep_view_month` int NOT NULL,
  `ep_view_years` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `episode`
--

INSERT INTO `episode` (`id`, `uid`, `ep_id_name`, `ep_name`, `ep_jname`, `ep_romaji`, `ep_aired`, `ep_pv`, `ep_view`, `ep_view_month`, `ep_view_years`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2928, '1', '', '', '', '', 'https://www.youtube.com/watch?v=XlqCxnEocqM&ab_channel=Anitium', 27, 27, 27, '2023-05-20 10:49:26', '2023-05-20 13:59:30', NULL),
(2, 5525, '1', 'The Future Of Painful Thoughts Is', '', '', '', '', 9, 9, 9, '2023-05-20 11:35:21', '2023-05-20 12:03:44', NULL),
(3, 5525, '2', 'Nostalgic Memories Accompany Pain', '', '', '', '', 1, 1, 1, '2023-05-20 11:35:46', '2023-05-20 11:58:10', NULL),
(4, 5525, '3', 'My Innocent Child, Sleep Within The Light', '', '', '', '', 3, 3, 3, '2023-05-20 11:36:04', '2023-05-20 12:00:47', NULL),
(5, 5525, '4', 'To the Depths of the Earnest Prayer', '', '', '', '', 2, 2, 2, '2023-05-20 11:36:26', '2023-05-20 12:02:42', NULL),
(6, 5525, '5', 'Hot Tears, Gently Fill His Heart...', '', '', '', '', 2, 2, 2, '2023-05-20 11:38:06', '2023-05-20 12:05:05', NULL),
(7, 5525, '6', 'The Path of Justice Lead to Light', '', '', '', '', 1, 1, 1, '2023-05-20 11:38:20', '2023-05-20 12:11:03', NULL),
(8, 5525, '7', 'Does the Soul that was Devoured by the Wings, Dream of Its Beloved Child?', '', '', '', '', 0, 0, 0, '2023-05-20 11:38:36', '2023-05-20 11:38:36', NULL),
(9, 5525, '8', 'Half of His Soul Arouses a Sad Awakening', '', '', '', '', 0, 0, 0, '2023-05-20 11:38:52', '2023-05-20 11:38:52', NULL),
(10, 5525, '9', 'The Color of His Soul Will be Forever...', '', '', '', '', 1, 1, 1, '2023-05-20 11:39:07', '2023-05-20 12:11:10', NULL),
(11, 5525, '10', 'That Is But One Form of Atonement', '', '', '', '', 3, 3, 3, '2023-05-20 11:39:31', '2023-05-20 12:14:48', NULL),
(12, 5525, '11', 'Atonement For Loved Ones Is...', '', '', '', '', 1, 1, 1, '2023-05-20 11:39:48', '2023-05-20 12:14:51', NULL),
(13, 5525, '12', 'The Darkness Called \"Pain\" Treads Ever Closer...', '', '', '', '', 0, 0, 0, '2023-05-20 11:40:04', '2023-05-20 11:40:04', NULL),
(14, 5525, '13', 'Down the Path of Light I See...', '', '', '', '', 0, 0, 0, '2023-05-20 11:40:18', '2023-05-20 11:40:18', NULL),
(15, 5525, '14', 'A Reason to Fight Together... The Right to be Called Brothers in Arms', '', '', '', '', 1, 1, 1, '2023-05-20 11:40:35', '2023-05-20 12:12:55', NULL),
(16, 5525, '15', 'That Day, I was With Him', '', '', '', '', 1, 1, 1, '2023-05-20 11:40:52', '2023-05-20 12:21:29', NULL),
(17, 5525, '16', 'The Truth lies Deep within the Darkness Where Light Cannot Reach', '', '', '', '', 3, 3, 3, '2023-05-20 11:41:19', '2023-05-20 12:22:18', NULL),
(18, 5525, '17', 'The Family With Wings of Darkness, Enshrounded in Misery, Flies Down', '', '', '', '', 0, 0, 0, '2023-05-20 11:41:37', '2023-05-20 11:41:37', NULL),
(19, 5525, '18', 'The One Who Must be Forgiven Drown in Darkness... The One Who Loves Him is Filled With Tears', '', '', '', '', 0, 0, 0, '2023-05-20 11:42:10', '2023-05-20 11:42:10', NULL),
(20, 5525, '19', 'The One-Sided, Yet Never Dying Love Finds Itself...', '', '', '', '', 0, 0, 0, '2023-05-20 11:42:24', '2023-05-20 11:42:24', NULL),
(21, 5525, '20', 'They Both Offer a Requiem', '', '', '', '', 1, 1, 1, '2023-05-20 11:42:42', '2023-05-20 11:58:07', NULL),
(22, 5525, '21', 'Therefore, You Pass Through the Door of the Defeated', '', '', '', '', 0, 0, 0, '2023-05-20 11:43:02', '2023-05-20 11:43:02', NULL),
(23, 5525, '22', 'Led by the Light in the Water`s Depths, He Spies Upon...', '', '', '', '', 0, 0, 0, '2023-05-20 11:43:19', '2023-05-20 11:43:19', NULL),
(24, 5525, '23', 'Before the Darkness of the Heart', '', '', '', '', 0, 0, 0, '2023-05-20 11:43:33', '2023-05-20 11:43:33', NULL),
(25, 5525, '24', 'The Justice of Those Who Lack Love is... . Oh Heart That is Stolen by Darkness, Forever...', '', '', '', '', 1, 1, 1, '2023-05-20 11:43:50', '2023-05-20 12:35:01', NULL),
(26, 5525, '25', 'The Heart Is Led by the Truth Repeated on the Other Side...', '', '', '', '', 0, 0, 0, '2023-05-20 11:44:10', '2023-05-20 11:44:10', NULL),
(27, 52830, '1', 'To Another World', '', '', '', '', 77, 77, 77, '2023-05-20 12:52:04', '2023-05-20 13:24:45', NULL),
(28, 52830, '2', 'Ousei Academy', '', '', '', '', 3, 3, 3, '2023-05-20 12:52:22', '2023-05-20 13:21:26', NULL),
(29, 52830, '3', 'Life Changes', '', '', '', '', 2, 2, 2, '2023-05-20 12:52:37', '2023-05-20 12:52:37', NULL),
(30, 52830, '4', 'A Step of Courage', '', '', '', '', 1, 1, 1, '2023-05-20 12:52:54', '2023-05-20 12:52:54', NULL),
(31, 52830, '5', 'New Family', '', '', '', '', 1, 1, 1, '2023-05-20 12:53:05', '2023-05-20 12:53:05', NULL),
(32, 52830, '6', '', '', '', '', '', 4, 4, 4, '2023-05-20 13:14:08', '2023-05-20 13:23:04', NULL),
(34, 51693, '1', '', '', '', '', '', 10, 10, 10, '2023-05-20 13:32:17', '2023-05-20 13:50:30', NULL),
(35, 51693, '2', 'We know we are not worthy great Lord Mitama Beautiful is—', '', '', '', '', 2, 2, 2, '2023-05-20 13:32:32', '2023-05-20 13:50:18', NULL),
(36, 51693, '3', '', '', '', '', '', 0, 0, 0, '2023-05-20 13:32:38', '2023-05-20 13:32:38', NULL),
(37, 51693, '4', 'We know we are not worthy O great Lord Mitama You have aaahhhhh-', '', '', '', '', 0, 0, 0, '2023-05-20 13:32:49', '2023-05-20 13:32:49', NULL),
(38, 51693, '5', '', '', '', '', '', 0, 0, 0, '2023-05-20 13:32:56', '2023-05-20 13:32:56', NULL),
(39, 51693, '6', '', '', '', '', '', 0, 0, 0, '2023-05-20 13:33:05', '2023-05-20 13:33:05', NULL),
(40, 51693, '7', '', '', '', '', '', 3, 3, 3, '2023-05-20 13:33:11', '2023-05-20 19:06:42', NULL),
(41, 50220, '1', 'Summoned to Another World for a Second Time', '', '', '', '', 1, 1, 1, '2023-05-20 19:15:32', '2023-05-20 19:25:21', NULL),
(42, 50220, '2', 'Going on a Trip for a Second Time', '', '', '', '', 0, 0, 0, '2023-05-20 19:15:44', '2023-05-20 19:15:44', NULL),
(43, 50220, '3', '', '', '', '', '', 0, 0, 0, '2023-05-20 19:15:55', '2023-05-20 19:15:55', NULL),
(44, 50220, '4', '', '', '', '', '', 0, 0, 0, '2023-05-20 19:16:30', '2023-05-20 19:16:30', NULL),
(45, 50220, '5', '', '', '', '', '', 0, 0, 0, '2023-05-20 19:16:36', '2023-05-20 19:16:36', NULL),
(46, 50220, '6', '', '', '', '', '', 0, 0, 0, '2023-05-20 19:16:43', '2023-05-20 19:16:43', NULL),
(47, 50220, '7', '', '', '', '', '', 2, 2, 2, '2023-05-20 19:17:02', '2023-05-20 19:28:21', NULL),
(48, 50307, '1', 'All because of you', '', '', '', '', 26, 26, 26, '2023-05-20 19:37:24', '2023-05-24 14:22:18', NULL),
(49, 50307, '2', 'On the Subject of Happiness', '', '', '', '', 0, 0, 0, '2023-05-20 19:37:39', '2023-05-20 19:37:39', NULL),
(50, 50307, '3', 'Before the Fireworks Go Out', '', '', '', '', 0, 0, 0, '2023-05-20 19:37:52', '2023-05-20 19:37:52', NULL),
(51, 50307, '4', '', '', '', '', '', 0, 0, 0, '2023-05-20 19:38:01', '2023-05-20 19:38:01', NULL),
(52, 50307, '5', '', '', '', '', '', 0, 0, 0, '2023-05-20 19:38:07', '2023-05-20 19:38:07', NULL),
(53, 50307, '6', '', '', '', '', '', 0, 0, 0, '2023-05-20 19:38:29', '2023-05-20 19:38:29', NULL),
(54, 50307, '7', '', '', '', '', '', 0, 0, 0, '2023-05-20 19:38:42', '2023-05-20 19:38:42', NULL),
(55, 51706, '1', 'The Legendary Hero Is Dead?!', '', '', '', '', 0, 0, 0, '2023-05-20 19:58:06', '2023-05-20 19:58:06', NULL),
(56, 51706, '2', 'The Legendary Hero Impostor', '', '', '', '', 0, 0, 0, '2023-05-20 19:58:27', '2023-05-20 19:58:27', NULL),
(57, 51706, '3', 'The Legendary Hero Is a Skeleton!', '', '', '', '', 0, 0, 0, '2023-05-20 19:58:39', '2023-05-20 19:58:39', NULL),
(58, 51706, '4', 'The Legendary Hero and Bride', '', '', '', '', 0, 0, 0, '2023-05-20 19:58:57', '2023-05-20 19:58:57', NULL),
(59, 51706, '5', '', '', '', '', '', 0, 0, 0, '2023-05-20 19:59:04', '2023-05-20 19:59:04', NULL),
(60, 51706, '6', '', '', '', '', '', 0, 0, 0, '2023-05-20 19:59:10', '2023-05-20 19:59:10', NULL),
(61, 51706, '7', '', '', '', '', '', 2, 2, 2, '2023-05-20 19:59:16', '2023-05-20 20:14:30', NULL),
(62, 35507, '1', 'What is evil? Whatever springs from weakness.', '', '', '', '', 4, 4, 4, '2023-05-20 20:29:31', '2023-05-20 20:51:00', NULL),
(63, 35507, '2', 'It takes a great talent and skill to conceal one\'s talent and skill.', '', '', '', '', 0, 0, 0, '2023-05-20 20:29:48', '2023-05-20 20:29:48', NULL),
(64, 35507, '3', 'Man is an animal that makes bargains: no other animal does this—no dog exchanges bones with another.', '', '', '', '', 2, 2, 2, '2023-05-20 20:30:01', '2023-05-20 20:42:08', NULL),
(65, 35507, '4', 'We should not be upset that others hide the truth from us, when we hide it so often from ourselves.', '', '', '', '', 0, 0, 0, '2023-05-20 20:30:15', '2023-05-20 20:30:15', NULL),
(66, 35507, '5', 'Hell is other people.', '', '', '', '', 0, 0, 0, '2023-05-20 20:30:32', '2023-05-20 20:30:32', NULL),
(67, 35507, '6', 'There are two kinds of lies; one concerns an accomplished fact, the other concerns a future duty.', '', '', '', '', 0, 0, 0, '2023-05-20 20:30:50', '2023-05-20 20:30:50', NULL),
(68, 35507, '7', 'Nothing is as dangerous as an ignorant friend; a wise enemy is to be preferred', '', '', '', '', 1, 1, 1, '2023-05-20 20:31:05', '2023-05-20 20:47:12', NULL),
(69, 35507, '8', 'Abandon all hope, ye who enter here.', '', '', '', '', 1, 1, 1, '2023-05-20 20:31:20', '2023-05-20 20:42:14', NULL),
(70, 35507, '9', 'Man is condemned to be free.', '', '', '', '', 3, 3, 3, '2023-05-20 20:31:34', '2023-05-20 20:43:15', NULL),
(71, 35507, '10', 'Every man has in himself the most dangerous traitor of all', '', '', '', '', 0, 0, 0, '2023-05-20 20:31:47', '2023-05-20 20:31:47', NULL),
(72, 35507, '11', 'What people commonly call fate is mostly their own stupidity.', '', '', '', '', 0, 0, 0, '2023-05-20 20:32:02', '2023-05-20 20:32:02', NULL),
(73, 35507, '12', 'Genius lives only one story above madness.', '', '', '', '', 12, 12, 12, '2023-05-20 20:32:15', '2023-05-21 08:36:01', NULL),
(74, 51096, '1', 'Remember to Keep a Clear Head in Difficult Times', '', '', '', '', 32, 32, 32, '2023-05-21 13:20:34', '2023-05-23 13:16:38', NULL),
(75, 51096, '2', 'There Are Two Main Human Sins from Which All the Others Derive: Impatience and Indolence.', '', '', '', '', 1, 1, 1, '2023-05-21 13:20:46', '2023-05-21 13:20:46', NULL),
(76, 51096, '3', 'The Greatest Souls Are Capable of the Greatest Vices as Well as of the Greatest Virtues.', '', '', '', '', 5, 5, 5, '2023-05-21 13:20:58', '2023-05-21 13:21:24', NULL),
(77, 51096, '4', 'The Material Has to Be Created.', '', '', '', '', 0, 0, 0, '2023-05-21 13:21:56', '2023-05-21 13:21:56', NULL),
(78, 51096, '5', 'Every failure is a step to success.', '', '', '', '', 2, 2, 2, '2023-05-21 13:23:50', '2023-05-21 13:23:50', NULL),
(79, 51096, '6', 'Adversity Is the First Path to Truth.', '', '', '', '', 1, 1, 1, '2023-05-21 13:24:04', '2023-05-21 13:24:04', NULL),
(80, 51096, '7', 'To Doubt Everything or to Believe Everything Are Two Equally Convenient Solutions; Both Dispense with the Necessity of Reflection.', '', '', '', '', 1, 1, 1, '2023-05-21 13:24:21', '2023-05-21 13:24:21', NULL),
(81, 51096, '8', 'The Wound Is at Her Heart.', '', '', '', '', 0, 0, 0, '2023-05-21 13:24:33', '2023-05-21 13:24:33', NULL),
(82, 51096, '9', 'If You Make a Mistake and Do Not Correct It, This Is Called a Mistake.', '', '', '', '', 2, 2, 2, '2023-05-21 13:24:50', '2023-05-21 13:24:50', NULL),
(83, 51096, '10', 'People, Often Deceived by An Illusive Good, Desire Their Own Ruin.', '', '', '', '', 0, 0, 0, '2023-05-21 13:25:05', '2023-05-21 13:25:05', NULL),
(84, 51096, '11', 'A Man Who Cannot Command Himself Will Always Be a Slave.', '', '', '', '', 0, 0, 0, '2023-05-21 13:25:15', '2023-05-21 13:25:15', NULL),
(85, 51096, '12', 'Force Without Wisdom Falls of Its Own Weight.', '', '', '', '', 12, 12, 12, '2023-05-21 13:25:33', '2023-05-24 14:48:07', NULL),
(86, 51096, '13', 'The Worst Enemy You Can Meet Will Always Be Yourself.', '', '', '', '', 15, 15, 15, '2023-05-21 13:25:48', '2023-05-24 14:48:21', NULL),
(88, 52830, '8', '', '', '', '', '', 5, 5, 5, '2023-05-31 12:08:24', '2023-05-31 12:08:24', NULL),
(89, 52830, '7', '', '', '', '', '', 1, 1, 1, '2023-05-31 12:09:27', '2023-05-31 12:09:27', NULL),
(91, 52830, '9', '', '', '', '', '', 86, 86, 86, '2023-05-31 12:16:58', '2023-05-31 12:16:58', NULL),
(96, 52830, '10', '', '', '', '', '', 15, 15, 15, '2023-06-12 13:23:49', '2023-06-12 13:23:49', NULL),
(97, 21, '1', 'One Piece', '', '', '', '', 46, 46, 46, '2023-06-18 11:59:30', '2023-06-18 11:59:30', NULL),
(98, 21, '2', '', '', '', '', '', 5, 5, 5, '2023-06-18 11:59:40', '2023-06-18 11:59:40', NULL),
(99, 21, '3', '', '', '', '', '', 30, 30, 30, '2023-06-18 11:59:48', '2023-06-18 11:59:48', NULL),
(100, 21, '4', '', '', '', '', '', 18, 18, 18, '2023-06-21 14:54:37', '2023-06-21 14:54:37', NULL),
(101, 49470, '1', 'The Former Couple Refuses to Say... ', '元カップルは呼びたくない「そういうところが……！」', 'Moto Couple wa Yobitakunai ', '2022-07-06', '', 34, 34, 34, '2023-06-21 20:53:28', '2023-06-21 20:53:28', NULL),
(102, 49470, '2', 'My Ex Needs Taking Care Of ', '元カップルの看病な日「三十八度って聞いたけど」', 'Moto Couple no Kanbyou na Hi ', '2022-07-13', '', 10, 10, 10, '2023-06-21 20:53:28', '2023-06-21 20:53:28', NULL),
(103, 49470, '3', 'My Ex Has a Confession to Make \'You Didn\'t Do Anything Weird, Did You?\'', '元カップルは白状する「変なこと、してないだろうな？」', 'Moto Couple wa Hakujou Suru ', '2022-07-20', '', 2, 2, 2, '2023-06-21 20:53:28', '2023-06-21 20:53:28', NULL),
(104, 49470, '4', 'That\'s Not What You\'re Supposed to Say', 'そういうのじゃない', 'So Iu no Janai ', '2022-07-27', '', 1, 1, 1, '2023-06-21 20:53:28', '2023-06-21 20:53:28', NULL),
(105, 49470, '5', 'The Former Couple Spends the Night \'You\'re Welcome\'', '元カップルはお泊まりする「どういたしまして」', 'Moto Couple wa Otomari Suru ', '2022-08-03', '', 2, 2, 2, '2023-06-21 20:53:28', '2023-06-21 20:53:28', NULL),
(106, 49470, '6', 'The Former Couple Goes Head-to-Head \'Do You Think I\'m Stupid?\'', '元カップルは競い合う「馬鹿にしないでよっ！！」', 'Moto Couple wa Kisoiau ', '2022-08-10', '', 2, 2, 2, '2023-06-21 20:53:28', '2023-06-21 20:53:28', NULL),
(107, 49470, '7', 'Higashira Isana Doesn\'t Know What Love Is', '東頭いさなは恋を知らない', 'Higashira Isana wa Koi wo Shiranai ', '2022-08-17', '', 1, 1, 1, '2023-06-21 20:53:28', '2023-06-21 20:53:28', NULL),
(108, 49470, '8', 'The Former Couple\'s On Edge \'I\'ve Already Been Rejected, So It\'s Fine.\'', '元カップルは警戒する「わたしはもうフラれてるんですから、大丈夫ですよ」', 'Moto Couple wa Keikai Suru ', '2022-08-24', '', 1, 1, 1, '2023-06-21 20:53:28', '2023-06-21 20:53:28', NULL),
(109, 49470, '9', 'Youthful Indiscretion', '若気の至り', 'Wakagenoitari ', '2022-08-31', '', 1, 1, 1, '2023-06-21 20:53:28', '2023-06-21 20:53:28', NULL),
(110, 49470, '10', 'The Former Couple Doesn\'t Know How to Act \'Aren\'t You Two Acting a Little Awkward?\'', '元カップルは距離感がわからない「なんかよそよそしくなってないか？」', 'Moto Couple wa Kyorikan ga Wakaranai \'Nanka Yosoyososhiku Nattenai ka?\' ', '2022-09-07', '', 3, 3, 3, '2023-06-21 20:53:28', '2023-06-21 20:53:28', NULL),
(111, 49470, '11', 'The Former Couple Visits Relatives \'I Guess You Could Say She Loved to Laugh\'', '元カップルは帰省する「よく、笑う人だったかな」', 'Moto Couple wa Kisei Suru ', '2022-09-14', '', 2, 2, 2, '2023-06-21 20:53:28', '2023-06-21 20:53:28', NULL),
(112, 49470, '12', 'I Bestow Unto You My First Kiss', 'ファースト・キスは布告する', 'First Kiss wa Fukoku Suru ', '2022-09-21', '', 2, 2, 2, '2023-06-21 20:53:28', '2023-06-21 20:53:28', NULL),
(113, 20785, '1', 'Enrollment Part I', '入学編I', 'Nyuugaku-hen I ', '2014-04-06', '', 19, 19, 19, '2023-06-21 21:28:48', '2023-06-21 21:28:48', NULL),
(114, 20785, '2', 'Enrollment Part II', '入学編II', 'Nyuugaku-hen II ', '2014-04-13', '', 4, 4, 4, '2023-06-21 21:28:48', '2023-06-21 21:28:48', NULL),
(115, 20785, '3', 'Enrollment Part III', '入学編III', 'Nyuugaku-hen III ', '2014-04-20', '', 2, 2, 2, '2023-06-21 21:28:48', '2023-06-21 21:28:48', NULL),
(116, 20785, '4', 'Enrollment Part IV', '入学編IV', 'Nyuugaku-hen IV ', '2014-04-27', '', 0, 0, 0, '2023-06-21 21:28:48', '2023-06-21 21:28:48', NULL),
(117, 20785, '5', 'Enrollment Part V', '入学編V', 'Nyuugaku-hen V ', '2014-05-04', '', 2, 2, 2, '2023-06-21 21:28:48', '2023-06-21 21:28:48', NULL),
(118, 20785, '6', 'Enrollment Part VI', '入学編VI', 'Nyuugaku-hen VI ', '2014-05-11', '', 0, 0, 0, '2023-06-21 21:28:48', '2023-06-21 21:28:48', NULL),
(119, 20785, '7', 'Enrollment Part VII', '入学編VII', 'Nyuugaku-hen VII ', '2014-05-18', '', 35, 35, 35, '2023-06-21 21:28:48', '2023-06-21 21:28:48', NULL),
(120, 20785, '8', 'Nine Schools Competition Part I', '九校戦編I', 'Kyuukousen-hen I ', '2014-05-25', '', 75, 75, 75, '2023-06-21 21:28:48', '2023-06-21 21:28:48', NULL),
(121, 20785, '9', 'Nine Schools Competition Part II', '九校戦編II', 'Kyuukousen-hen II ', '2014-06-01', '', 9, 9, 9, '2023-06-21 21:28:48', '2023-06-21 21:28:48', NULL),
(122, 20785, '10', 'Nine Schools Competition Part III', '九校戦編III', 'Kyuukousen-hen III ', '2014-06-08', '', 0, 0, 0, '2023-06-21 21:28:48', '2023-06-21 21:28:48', NULL),
(123, 20785, '11', 'Nine Schools Competition Part IV', '九校戦編IV', 'Kyuukousen-hen IV ', '2014-06-15', '', 0, 0, 0, '2023-06-21 21:28:48', '2023-06-21 21:28:48', NULL),
(124, 20785, '12', 'Nine Schools Competition Part V', '九校戦編V', 'Kyuukousen-hen V ', '2014-06-22', '', 0, 0, 0, '2023-06-21 21:28:48', '2023-06-21 21:28:48', NULL),
(125, 20785, '13', 'Nine Schools Competition Part VI', '九校戦編VI', 'Kyuukousen-hen VI ', '2014-06-29', '', 0, 0, 0, '2023-06-21 21:28:48', '2023-06-21 21:28:48', NULL),
(126, 20785, '14', 'Nine Schools Competition Part VII', '九校戦編VII', 'Kyuukousen-hen VII ', '2014-07-06', '', 0, 0, 0, '2023-06-21 21:28:48', '2023-06-21 21:28:48', NULL),
(127, 20785, '15', 'Nine Schools Competition Part VIII', '九校戦編VIII', 'Kyuukousen-hen VIII ', '2014-07-13', '', 1, 1, 1, '2023-06-21 21:28:48', '2023-06-21 21:28:48', NULL),
(128, 20785, '16', 'Nine Schools Competition Part IX', '九校戦編IX', 'Kyuukousen-hen IX ', '2014-07-20', '', 0, 0, 0, '2023-06-21 21:28:48', '2023-06-21 21:28:48', NULL),
(129, 20785, '17', 'Nine Schools Competition Part X', '九校戦編X', 'Kyuukousen-hen X ', '2014-07-27', '', 0, 0, 0, '2023-06-21 21:28:48', '2023-06-21 21:28:48', NULL),
(130, 20785, '18', 'Nine Schools Competition Part XI', '九校戦編XI', 'Kyuukousen-hen XI ', '2014-08-03', '', 0, 0, 0, '2023-06-21 21:28:48', '2023-06-21 21:28:48', NULL),
(131, 20785, '19', 'Yokohama Disturbance Part I', '横浜騒乱編I', 'Yokohama Souran-hen I ', '2014-08-10', '', 0, 0, 0, '2023-06-21 21:28:48', '2023-06-21 21:28:48', NULL),
(132, 20785, '20', 'Yokohama Disturbance Part II', '横浜騒乱編II', 'Yokohama Souran-hen II ', '2014-08-17', '', 0, 0, 0, '2023-06-21 21:28:48', '2023-06-21 21:28:48', NULL),
(133, 20785, '21', 'Yokohama Disturbance Part III', '横浜騒乱編III', 'Yokohama Souran-hen III ', '2014-08-24', '', 0, 0, 0, '2023-06-21 21:28:48', '2023-06-21 21:28:48', NULL),
(134, 20785, '22', 'Yokohama Disturbance Part IV', '横浜騒乱編IV', 'Yokohama Souran-hen IV ', '2014-08-31', '', 1, 1, 1, '2023-06-21 21:28:48', '2023-06-21 21:28:48', NULL),
(135, 20785, '23', 'Yokohama Disturbance Part V', '横浜騒乱編V', 'Yokohama Souran-hen V ', '2014-09-07', '', 0, 0, 0, '2023-06-21 21:28:48', '2023-06-21 21:28:48', NULL),
(136, 20785, '24', 'Yokohama Disturbance Part VI', '横浜騒乱編VI', 'Yokohama Souran-hen VI ', '2014-09-14', '', 0, 0, 0, '2023-06-21 21:28:48', '2023-06-21 21:28:48', NULL),
(137, 20785, '25', 'Yokohama Disturbance Part VII', '横浜騒乱編VII', 'Yokohama Souran-hen VII ', '2014-09-21', '', 0, 0, 0, '2023-06-21 21:28:48', '2023-06-21 21:28:48', NULL),
(138, 20785, '26', 'Yokohama Disturbance Part VIII', '横浜騒乱編VIII', 'Yokohama Souran-hen VIII ', '2014-09-28', '', 15, 15, 15, '2023-06-21 21:28:48', '2023-06-21 21:28:48', NULL);

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
  `post_rep` int NOT NULL,
  `post_disrep` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `episode_comment`
--

INSERT INTO `episode_comment` (`id`, `user_id`, `post_id`, `post_ani`, `post_ep`, `post_spo`, `post_content`, `post_rep`, `post_disrep`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 1, 140031428, 21, '3', 0, 'Hello.', 1, 1, '2023-06-18 12:24:39', '2023-06-21 06:54:59', NULL),
(4, 1, 295542008, 21, '1', 0, 'Episode-1 watch', 0, 0, '2023-06-21 14:57:13', '2023-06-21 14:57:13', NULL),
(7, 1, 2048566356, 21, '4', 0, 'qr', 0, 0, '2023-06-21 16:06:29', '2023-06-21 16:06:29', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `episode_download`
--

INSERT INTO `episode_download` (`id`, `dw_id`, `dw_ep`, `dw_name`, `dw_link`) VALUES
(1, 21, '4', 'gotaku1', 'https://gotaku1.com/download?id=MzUyNw==&title=One+Piece+Episode+4&mip=0.0.0.0&refer=https://gogoanime.hu/&ch=d41d8cd98f00b204e9800998ecf8427e&token2=n65q6uAHSLeR-Vn8Yk_nLA&expires2=1687361059&op=1'),
(4, 52830, '1', 'T12T', '12T12T'),
(5, 52830, '1', '21515', '125125');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `episode_dub`
--

DROP TABLE IF EXISTS `episode_dub`;
CREATE TABLE IF NOT EXISTS `episode_dub` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL,
  `ep_dub_webconverter` int NOT NULL,
  `dub_id` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dub_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dub_frame` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `episode_raw`
--

DROP TABLE IF EXISTS `episode_raw`;
CREATE TABLE IF NOT EXISTS `episode_raw` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL,
  `ep_raw_webconverter` int NOT NULL,
  `raw_id` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `raw_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `raw_frame` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `episode_sub`
--

DROP TABLE IF EXISTS `episode_sub`;
CREATE TABLE IF NOT EXISTS `episode_sub` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL,
  `ep_sub_webconverter` int NOT NULL,
  `sub_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sub_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sub_frame` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=438 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `episode_sub`
--

INSERT INTO `episode_sub` (`id`, `uid`, `ep_sub_webconverter`, `sub_id`, `sub_name`, `sub_frame`) VALUES
(1, 2928, 1, '1', 'Playtaku', 'https://playtaku.online/streaming.php?id=NDA3OTI=&title=.Hack%2F%2FG.U.+Returner+Episode+1'),
(2, 2928, 1, '1', 'Streamsb', 'https://sbani.pro/e/env0jxmpf678'),
(7, 2928, 1, '1', 'Mp4upload', 'https://www.mp4upload.com/embed-e5t1flv0otkb.html'),
(8, 5525, 1, '1', 'PlayTaku', 'https://playtaku.online/streaming.php?id=NTkyNw==&title=07-GHOST+Episode+1'),
(9, 5525, 1, '1', 'Vidcdn', 'https://playtaku.online/embedplus?id=NTkyNw==&token=qRmy6NJhPLdnTWF9oiPz0w&expires=1684590298'),
(10, 5525, 1, '1', 'Streamsb', 'https://sbani.pro/e/7zlsdvtpm3my'),
(11, 5525, 1, '1', 'Mp4Upload', 'https://www.mp4upload.com/embed-jttv2od52kgm.html'),
(12, 5525, 1, '1', 'Doodstream', 'https://dood.wf/e/h7u1kz746xjo'),
(13, 5525, 1, '2', 'PlayTaku', 'https://playtaku.online/streaming.php?id=NTkzMQ==&title=07-GHOST+Episode+2'),
(14, 5525, 1, '2', 'Vidcdn', 'https://playtaku.online/embedplus?id=NTkzMQ==&token=jAkttRxcL9v8lhaqICPk7w&expires=1684590912'),
(15, 5525, 1, '2', 'Streamsb', 'https://sbani.pro/e/lnfz2b8yjfwv'),
(16, 5525, 1, '2', 'Mp4Upload', 'https://www.mp4upload.com/embed-491ow2vg2rwn.html'),
(17, 5525, 1, '2', 'Doodstream', 'https://dood.wf/e/s4glw1isat7w'),
(18, 5525, 1, '3', 'PlayTaku', 'https://playtaku.online/streaming.php?id=NTkzOA==&title=07-GHOST+Episode+3'),
(19, 5525, 1, '3', 'Vidcdn', 'https://playtaku.online/embedplus?id=NTkzOA==&token=FcCjXiQYSwmmxuuthdLUIQ&expires=1684590989'),
(20, 5525, 1, '3', 'Streamsb', 'https://sbani.pro/e/la6xeqlg9qdm'),
(21, 5525, 1, '3', 'Mp4Upload', 'https://www.mp4upload.com/embed-7j2bm7cfetq3.html'),
(22, 5525, 1, '3', 'Doodstream', 'https://dood.wf/e/0z97l4cim5id'),
(23, 5525, 1, '4', 'PlayTaku', 'https://playtaku.online/streaming.php?id=NTk0Mg==&title=07-GHOST+Episode+4'),
(24, 5525, 1, '4', 'Vidcdn', 'https://playtaku.online/embedplus?id=NTk0Mg==&token=ClVh-H0dfPMA7ieWfbXPrQ&expires=1684591274'),
(25, 5525, 1, '4', 'Streamsb', 'https://sbani.pro/e/il881blt4urs'),
(26, 5525, 1, '4', 'Mp4Upload', 'https://www.mp4upload.com/embed-bouyvkvcxrxn.html'),
(27, 5525, 1, '4', 'Doodstream', 'https://dood.wf/e/r2zhrpl1yx1g'),
(28, 5525, 1, '5', 'PlayTaku', 'https://playtaku.online/streaming.php?id=NTk0NA==&title=07-GHOST+Episode+5'),
(29, 5525, 1, '5', 'Vidcdn', 'https://playtaku.online/embedplus?id=NTk0NA==&token=KrYDAs7hT3MQaebTt5YddQ&expires=1684591518'),
(30, 5525, 1, '5', 'Streamsb', 'https://sbani.pro/e/bbag9cqx71tm'),
(31, 5525, 1, '5', 'Mp4Upload', 'https://www.mp4upload.com/embed-bouyvkvcxrxn.html'),
(32, 5525, 1, '5', 'Doodstream', 'https://dood.wf/e/da6ll0ea874y'),
(33, 5525, 1, '6', 'PlayTaku', 'https://playtaku.online/streaming.php?id=NTk1MA==&title=07-GHOST+Episode+6'),
(34, 5525, 1, '6', 'Vidcdn', 'https://playtaku.online/embedplus?id=NTk1MA==&token=6Y_Bd1e1AFQgSrZ7WRVlbA&expires=1684591586'),
(35, 5525, 1, '6', 'Streamsb', 'https://sbani.pro/e/zq5zolqkcuo9'),
(36, 5525, 1, '6', 'Mp4Upload', 'https://www.mp4upload.com/embed-06wm1sckrxso.html'),
(37, 5525, 1, '6', 'Doodstream', 'https://dood.wf/e/vlaltq0d8v41'),
(38, 5525, 1, '7', 'PlayTaku', 'https://playtaku.online/streaming.php?id=NTk1Mw==&title=07-GHOST+Episode+7'),
(39, 5525, 1, '7', 'Vidcdn', 'https://playtaku.online/embedplus?id=NTk1Mw==&token=eQ7WYdls-PM9rhsZsHU2JA&expires=1684591668'),
(40, 5525, 1, '7', 'Streamsb', 'https://sbani.pro/e/bz1z05d7yx91'),
(41, 5525, 1, '7', 'Mp4Upload', 'https://www.mp4upload.com/embed-jsmtjso644zk.html'),
(42, 5525, 1, '7', 'Doodstream', 'https://dood.wf/e/kx1qxuoor1gs'),
(43, 5525, 1, '8', 'PlayTaku', 'https://playtaku.online/streaming.php?id=NTk1Ng==&title=07-GHOST+Episode+8'),
(44, 5525, 1, '8', 'Vidcdn', 'https://playtaku.online/embedplus?id=NTk1Ng==&token=z1aGU9_xx0wfdwrFzufL4Q&expires=1684591732'),
(45, 5525, 1, '8', 'Streamsb', 'https://sbani.pro/e/hkznzfr43rd3'),
(46, 5525, 1, '8', 'Mp4Upload', 'https://www.mp4upload.com/embed-ks4lpfv3kbfv.html'),
(47, 5525, 1, '8', 'Doodstream', 'https://dood.wf/e/nfeefwymidj3'),
(48, 5525, 1, '9', 'PlayTaku', 'https://playtaku.online/streaming.php?id=NTk1OA==&title=07-GHOST+Episode+9'),
(49, 5525, 1, '9', 'Vidcdn', 'https://playtaku.online/embedplus?id=NTk1OA==&token=np54sYcyp9pqqFhnO7MIBw&expires=1684591802'),
(50, 5525, 1, '9', 'Streamsb', 'https://sbani.pro/e/psw6d6qmnlua'),
(51, 5525, 1, '9', 'Mp4Upload', 'https://www.mp4upload.com/embed-8hbl5ygkfqdb.html'),
(52, 5525, 1, '9', 'Doodstream', 'https://dood.wf/e/0nrvcldeum56'),
(53, 5525, 1, '10', 'PlayTaku', 'https://playtaku.online/streaming.php?id=NTk1OA==&title=07-GHOST+Episode+9'),
(54, 5525, 1, '10', 'Vidcdn', 'https://playtaku.online/embedplus?id=NTk1OA==&token=np54sYcyp9pqqFhnO7MIBw&expires=1684591802'),
(55, 5525, 1, '10', 'Streamsb', 'https://sbani.pro/e/psw6d6qmnlua'),
(56, 5525, 1, '10', 'Mp4Upload', 'https://www.mp4upload.com/embed-8hbl5ygkfqdb.html'),
(57, 5525, 1, '10', 'Doodstream', 'https://dood.wf/e/0nrvcldeum56'),
(58, 5525, 1, '11', 'PlayTaku', 'https://playtaku.online/streaming.php?id=NTk2Mg==&title=07-GHOST+Episode+11'),
(59, 5525, 1, '11', 'Vidcdn', 'https://playtaku.online/embedplus?id=NTk2Mg==&token=lPHMB_OVkqMcPnTnFfEHpA&expires=1684592108'),
(60, 5525, 1, '11', 'Streamsb', 'https://sbani.pro/e/rw3bcsuwi4xi'),
(61, 5525, 1, '11', 'Doodstream', 'https://dood.wf/e/az2y62f2kb0s'),
(62, 5525, 1, '11', 'Mp4Upload', 'https://www.mp4upload.com/embed-paubjecnop71.html'),
(63, 5525, 1, '12', 'PlayTaku', 'https://playtaku.online/streaming.php?id=NTk3Nw==&title=07-GHOST+Episode+12'),
(64, 5525, 1, '12', 'Vidcdn', 'https://playtaku.online/embedplus?id=NTk3Nw==&token=KNnY9w8qcpLyYVJybefUwg&expires=1684592167'),
(65, 5525, 1, '12', 'Streamsb', 'https://sbani.pro/e/cf5o0bfhfn4a'),
(66, 5525, 1, '12', 'Mp4Upload', 'https://www.mp4upload.com/embed-9443cgiq9w4l.html'),
(67, 5525, 1, '12', 'Doodstream', 'https://dood.wf/e/3xyk43p854ps'),
(68, 5525, 1, '13', 'PlayTaku', 'https://playtaku.online/streaming.php?id=NTk4MA==&title=07-GHOST+Episode+13'),
(69, 5525, 1, '13', 'Vidcdn', 'https://playtaku.online/embedplus?id=NTk4MA==&token=Pg9WpfzStdV2Zex2W-d0fQ&expires=1684592254'),
(70, 5525, 1, '13', 'Streamsb', 'https://sbani.pro/e/fuwci8nuz66t'),
(71, 5525, 1, '13', 'Mp4Upload', 'https://www.mp4upload.com/embed-ydm6ckrtj5ab.html'),
(72, 5525, 1, '13', 'Doodstream', 'https://dood.wf/e/6g8sj75b6pv2'),
(73, 5525, 1, '14', 'PlayTaku', 'https://playtaku.online/streaming.php?id=NTk4Mw==&title=07-GHOST+Episode+14'),
(74, 5525, 1, '14', 'Vidcdn', 'https://playtaku.online/embedplus?id=NTk4Mw==&token=SPYkrVo1-ZvuxWiV26j4NA&expires=1684592311'),
(75, 5525, 1, '14', 'Streamsb', 'https://sbani.pro/e/brkqyluzetcu'),
(76, 5525, 1, '14', 'Mp4Upload', 'https://www.mp4upload.com/embed-eu7g1zg1i0bv.html'),
(77, 5525, 1, '14', 'Doodstream', 'https://dood.wf/e/czq4jxbfjbgm'),
(78, 5525, 1, '15', 'PlayTaku', 'https://playtaku.online/streaming.php?id=NTk5Mw==&title=07-GHOST+Episode+15'),
(79, 5525, 1, '15', 'Vidcdn', 'https://playtaku.online/embedplus?id=NTk5Mw==&token=kLBphTOMJWF6uD8HiVaoSw&expires=1684592391'),
(80, 5525, 1, '15', 'Streamsb', 'https://sbani.pro/e/0ii79yfmq6pn'),
(81, 5525, 1, '15', 'Mp4Upload', 'https://www.mp4upload.com/embed-u199uaoge1a0.html'),
(82, 5525, 1, '15', 'Doodstream', 'https://dood.wf/e/mg0ff5ds6p07'),
(83, 5525, 1, '16', 'PlayTaku', 'https://playtaku.online/streaming.php?id=NTk5NA==&title=07-GHOST+Episode+16'),
(84, 5525, 1, '16', 'Vidcdn', 'https://playtaku.online/embedplus?id=NTk5NA==&token=syUY2ZqP3LXlpaZ1FLC_HQ&expires=1684592469'),
(85, 5525, 1, '16', 'Streamsb', 'https://sbani.pro/e/eazs4xbvurjb'),
(86, 5525, 1, '16', 'Mp4Upload', 'https://www.mp4upload.com/embed-hf944cxa8nr5.html'),
(87, 5525, 1, '16', 'Doodstream', 'https://dood.wf/e/dsf7f50uy9ly'),
(88, 5525, 1, '17', 'PlayTaku', 'https://playtaku.online/streaming.php?id=NTk5NQ==&title=07-GHOST+Episode+17'),
(89, 5525, 1, '17', 'Vidcdn', 'https://playtaku.online/embedplus?id=NTk5NQ==&token=dRhya4qtnzpNFpWtHbofMw&expires=1684592616'),
(90, 5525, 1, '17', 'Streamsb', 'https://sbani.pro/e/8duy5opuy17x'),
(91, 5525, 1, '17', 'Mp4Upload', 'https://www.mp4upload.com/embed-mqq3nzm162ws.html'),
(92, 5525, 1, '17', 'Doodstream', 'https://dood.wf/e/vpzup8pieedt'),
(93, 5525, 1, '18', 'PlayTaku', 'https://playtaku.online/streaming.php?id=NjAwMQ==&title=07-GHOST+Episode+18'),
(94, 5525, 1, '18', 'Vidcdn', 'https://playtaku.online/embedplus?id=NjAwMQ==&token=zXr1_Bpwl9ygq8TWGnTHXw&expires=1684592705'),
(95, 5525, 1, '18', 'Streamsb', 'https://sbani.pro/e/vh4egw1h7i04'),
(96, 5525, 1, '18', 'Mp4Upload', 'https://www.mp4upload.com/embed-wca38ye9cr1s.html'),
(97, 5525, 1, '18', 'Doodstream', 'https://dood.wf/e/r3dnhvzc96xx'),
(98, 5525, 1, '19', 'PlayTaku', 'https://playtaku.online/streaming.php?id=NjAwMw==&title=07-GHOST+Episode+19'),
(99, 5525, 1, '19', 'Vidcdn', 'https://playtaku.online/embedplus?id=NjAwMw==&token=yC0Z7es_WCOrBl8qOApUMA&expires=1684592812'),
(100, 5525, 1, '19', 'Streamsb', 'https://sbani.pro/e/ozu79v1aow55'),
(101, 5525, 1, '19', 'Mp4Upload', 'https://www.mp4upload.com/embed-hwvmq3vn1vd7.html'),
(102, 5525, 1, '19', 'Doodstream', 'https://dood.wf/e/4jk944ylsp80'),
(103, 5525, 1, '20', 'PlayTaku', 'https://playtaku.online/streaming.php?id=NjAwNQ==&title=07-GHOST+Episode+20'),
(104, 5525, 1, '20', 'Vidcdn', 'https://playtaku.online/embedplus?id=NjAwNQ==&token=S9xQmPVx9uA5TkdJrulKaA&expires=1684592888'),
(105, 5525, 1, '20', 'Streamsb', 'https://sbani.pro/e/sy3n9o6onwmq'),
(106, 5525, 1, '20', 'Mp4Upload', 'https://www.mp4upload.com/embed-fbaaf4gz7d4c.html'),
(107, 5525, 1, '20', 'Doodstream', 'https://dood.wf/e/m9hdu1nvaglt'),
(108, 5525, 1, '21', 'PlayTaku', 'https://playtaku.online/streaming.php?id=NjAxMw==&title=07-GHOST+Episode+21'),
(109, 5525, 1, '21', 'Vidcdn', 'https://playtaku.online/embedplus?id=NjAxMw==&token=6u-mEPugjtPD8aUtI5_qbQ&expires=1684592958'),
(110, 5525, 1, '21', 'Streamsb', 'https://sbani.pro/e/gstpqbbptz41'),
(111, 5525, 1, '21', 'Mp4Upload', 'https://www.mp4upload.com/embed-grcltcbav88x.html'),
(112, 5525, 1, '21', 'Doodstream', 'https://dood.wf/e/sx9fe770edno'),
(113, 5525, 1, '22', 'PlayTaku', 'https://playtaku.online/streaming.php?id=NjAxNQ==&title=07-GHOST+Episode+22'),
(114, 5525, 1, '22', 'Vidcdn', 'https://playtaku.online/embedplus?id=NjAxNQ==&token=9gQTfbtOLELLAmG9MEzY7A&expires=1684593030'),
(115, 5525, 1, '22', 'Streamsb', 'https://sbani.pro/e/jxkpij8vxixz'),
(116, 5525, 1, '22', 'Mp4Upload', 'https://www.mp4upload.com/embed-yvgqhpxa5m61.html'),
(117, 5525, 1, '22', 'Doodstream', 'https://dood.wf/e/2k8521i3w98k'),
(118, 5525, 1, '23', 'PlayTaku', 'https://playtaku.online/streaming.php?id=NjAyMQ==&title=07-GHOST+Episode+23'),
(119, 5525, 1, '23', 'Vidcdn', 'https://playtaku.online/embedplus?id=NjAyMQ==&token=TCePBQE55OaZ7u7L16khXw&expires=1684593094'),
(120, 5525, 1, '23', 'Streamsb', 'https://sbani.pro/e/4f1rdogocj6q'),
(121, 5525, 1, '23', 'Mp4Upload', 'https://www.mp4upload.com/embed-xv40ycw4tqbv.html'),
(122, 5525, 1, '23', 'Doodstream', 'https://dood.wf/e/gkv23lv4cgbg'),
(123, 5525, 1, '24', 'PlayTaku', 'https://playtaku.online/streaming.php?id=NjAyMw==&title=07-GHOST+Episode+24'),
(124, 5525, 1, '24', 'Vidcdn', 'https://playtaku.online/embedplus?id=NjAyMw==&token=Ts77Wpmd9XdIRYzSHC3kZw&expires=1684593168'),
(125, 5525, 1, '24', 'Streamsb', 'https://sbani.pro/e/vhg1m9e0om9m'),
(126, 5525, 1, '24', 'Mp4Upload', 'https://www.mp4upload.com/embed-u8o5aqmnkg2p.html'),
(127, 5525, 1, '24', 'Doodstream', 'https://dood.wf/e/82dpe0zn1zjs'),
(128, 5525, 1, '25', 'PlayTaku', 'https://playtaku.online/streaming.php?id=NjAyOQ==&title=07-GHOST+Episode+25'),
(129, 5525, 1, '25', 'Vidcdn', 'https://playtaku.online/embedplus?id=NjAyOQ==&token=BeZOMT4QVh8GRMcYe3cOhg&expires=1684593236'),
(130, 5525, 1, '25', 'Streamsb', 'https://sbani.pro/e/ajzx3f4fo01j'),
(131, 5525, 1, '25', 'Mp4Upload', 'https://www.mp4upload.com/embed-fjg6b929octw.html'),
(132, 5525, 1, '25', 'Doodstream', 'https://dood.wf/e/x9z1ykvjmgz8'),
(133, 52830, 1, '1', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjAyMTM1&title=Isekai+de+Cheat+Skill+wo+Te+ni+Shita+Ore+wa%2C+Genjitsu+Sekai+wo+mo+Musou+Suru%3A+Level+Up+wa+Jinsei+wo+Kaeta+Episode+1'),
(134, 52830, 1, '1', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjAyMTM1&token=YvWz4IQfjFqBBlfvLgetMw&expires=1684595615'),
(135, 52830, 1, '1', 'Streamsb', 'https://sbani.pro/e/ebx1812lkbog'),
(137, 52830, 1, '1', 'Doodstream', 'https://dood.wf/e/opnzi4gtmits'),
(138, 52830, 1, '2', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjAyNTMz&title=Isekai+de+Cheat+Skill+wo+Te+ni+Shita+Ore+wa%2C+Genjitsu+Sekai+wo+mo+Musou+Suru%3A+Level+Up+wa+Jinsei+wo+Kaeta+Episode+2'),
(139, 52830, 1, '2', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjAyNTMz&token=POxkSB8RDj3k5ArT7-aZ2A&expires=1684595744'),
(140, 52830, 1, '2', 'Streamsb', 'https://sbani.pro/e/pmxol3q7cjsa'),
(141, 52830, 1, '2', 'Doodstream', 'https://dood.wf/e/9t3yjtrkt0xb'),
(142, 52830, 1, '3', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjAzMDAz&title=Isekai+de+Cheat+Skill+wo+Te+ni+Shita+Ore+wa%2C+Genjitsu+Sekai+wo+mo+Musou+Suru%3A+Level+Up+wa+Jinsei+wo+Kaeta+Episode+3'),
(143, 52830, 1, '3', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjAzMDAz&token=CHKA7FRe4bfSbTRQ6HxrBw&expires=1684595795'),
(144, 52830, 1, '3', 'Streamsb', 'https://sbani.pro/e/ilwcs6vowxxj'),
(145, 52830, 1, '3', 'Doodstream', 'https://dood.wf/e/91jfd6hxnz2j'),
(146, 52830, 1, '4', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjAzMzQx&title=Isekai+de+Cheat+Skill+wo+Te+ni+Shita+Ore+wa%2C+Genjitsu+Sekai+wo+mo+Musou+Suru%3A+Level+Up+wa+Jinsei+wo+Kaeta+Episode+4'),
(147, 52830, 1, '4', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjAzMzQx&token=NL3uelbKENtuEVCOzZd9_g&expires=1684595849'),
(148, 52830, 1, '4', 'Doodstream', 'https://dood.wf/e/vsq6q0apmmds'),
(149, 52830, 1, '4', 'Mp4Upload', 'https://www.mp4upload.com/embed-hnfz3fxphypl.html'),
(150, 52830, 1, '5', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjAzNzY0&title=Isekai+de+Cheat+Skill+wo+Te+ni+Shita+Ore+wa%2C+Genjitsu+Sekai+wo+mo+Musou+Suru%3A+Level+Up+wa+Jinsei+wo+Kaeta+Episode+5'),
(151, 52830, 1, '5', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjAzNzY0&token=liHxGlVE-Qbjrkx9kTZ76g&expires=1684595905'),
(152, 52830, 1, '5', 'Streamsb', 'https://sbani.pro/e/60z6cknlx81i'),
(153, 52830, 1, '5', 'Mp4Upload', 'https://www.mp4upload.com/embed-j8hg43o8efkq.html'),
(154, 52830, 1, '5', 'Doodstream', 'https://dood.wf/e/w8c0s9pdqx3e'),
(155, 52830, 1, '6', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjA0MTQ0&title=Isekai+de+Cheat+Skill+wo+Te+ni+Shita+Ore+wa%2C+Genjitsu+Sekai+wo+mo+Musou+Suru%3A+Level+Up+wa+Jinsei+wo+Kaeta+Episode+6'),
(156, 52830, 1, '6', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjA0MTQ0&token=TVeRDa9OyH8iYQB7HYOYKQ&expires=1684595959'),
(157, 52830, 1, '6', 'Streamsb', 'https://sbani.pro/e/kh6v19u5i6gj'),
(158, 52830, 1, '6', 'Doodstream', 'https://dood.wf/e/i95mfc46wg3a'),
(159, 52830, 1, '6', 'Mp4Upload', 'https://www.mp4upload.com/embed-98yhksylyxk6.html'),
(160, 52830, 1, '7', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjA0NTYx&title=Isekai+de+Cheat+Skill+wo+Te+ni+Shita+Ore+wa%2C+Genjitsu+Sekai+wo+mo+Musou+Suru%3A+Level+Up+wa+Jinsei+wo+Kaeta+Episode+7'),
(161, 52830, 1, '7', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjA0NTYx&token=Fuy90EgcAOUcytU0GsnNCQ&expires=1684596025'),
(162, 52830, 1, '7', 'Streamsb', 'https://sbani.pro/e/qasrspqirw1p'),
(163, 52830, 1, '7', 'Mp4Upload', 'https://www.mp4upload.com/embed-xzjz1rfzabt7.html'),
(164, 52830, 1, '7', 'Doodstream', 'https://dood.wf/e/aq0kdtwyarra'),
(165, 51693, 1, '1', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjAyMjYy&title=Kaminaki+Sekai+no+Kamisama+Katsudou+Episode+1'),
(166, 51693, 1, '1', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjAyMjYy&token=_AWfEz79hyY76tud-AsxcQ&expires=1684596977'),
(167, 51693, 1, '1', 'Streamsb', 'https://sbani.pro/e/38oafvuhp6kq'),
(168, 51693, 1, '1', 'Mp4Upload', 'https://www.mp4upload.com/embed-8b259h4d1u10.html'),
(169, 51693, 1, '1', 'Doodstream', 'https://dood.wf/e/u0f35o9j4746'),
(170, 51693, 1, '2', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjAyNjUw&title=Kaminaki+Sekai+no+Kamisama+Katsudou+Episode+2'),
(171, 51693, 1, '2', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjAyNjUw&token=ZPmcs3u1w3XGxghdNUo8qQ&expires=1684597043'),
(172, 51693, 1, '2', 'Streamsb', 'https://sbani.pro/e/87q4lxxbl514'),
(173, 51693, 1, '2', 'Mp4Upload', 'https://www.mp4upload.com/embed-n0mqx2i0g526.html'),
(174, 51693, 1, '2', 'Doodstream', 'https://dood.wf/e/x57c2z8tfpam'),
(175, 51693, 1, '3', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjAzMDk2&title=Kaminaki+Sekai+no+Kamisama+Katsudou+Episode+3'),
(176, 51693, 1, '3', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjAzMDk2&token=cOXhayULapG5oXqk8iVKpQ&expires=1684597104'),
(177, 51693, 1, '3', 'Streamsb', 'https://sbani.pro/e/3hax01fsjgxa'),
(178, 51693, 1, '3', 'Mp4Upload', 'https://www.mp4upload.com/embed-9d83jqi0cztc.html'),
(179, 51693, 1, '3', 'Doodstream', 'https://dood.wf/e/2mpj7xpy7l7f'),
(180, 51693, 1, '4', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjAzNDYw&title=Kaminaki+Sekai+no+Kamisama+Katsudou+Episode+4'),
(181, 51693, 1, '4', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjAzNDYw&token=Jxyvqrw844A7oGPvsDUuFg&expires=1684597177'),
(182, 51693, 1, '4', 'Streamsb', 'https://sbani.pro/e/wuxlkxecn8jo'),
(183, 51693, 1, '4', 'Mp4Upload', 'https://www.mp4upload.com/embed-a1abxmz2ojuf.html'),
(184, 51693, 1, '4', 'Doodstream', 'https://dood.wf/e/lh2vbf4wa5rb'),
(185, 51693, 1, '5', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjAzODc3&title=Kaminaki+Sekai+no+Kamisama+Katsudou+Episode+5'),
(186, 51693, 1, '5', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjAzODc3&token=t2jZHNJvQ9lQ5zKjs6P_TQ&expires=1684597243'),
(187, 51693, 1, '5', 'Streamsb', 'https://sbani.pro/e/lk0e997mmtox'),
(188, 51693, 1, '5', 'Mp4Upload', 'https://www.mp4upload.com/embed-mz7k9frxf6jt.html'),
(189, 51693, 1, '5', 'Doodstream', 'https://dood.wf/e/o5tjvdol3bmr'),
(190, 51693, 1, '6', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjA0Mjg0&title=Kaminaki+Sekai+no+Kamisama+Katsudou+Episode+6'),
(191, 51693, 1, '6', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjA0Mjg0&token=9W_glAzJfO4ib2iaefsgyw&expires=1684597301'),
(192, 51693, 1, '6', 'Streamsb', 'https://sbani.pro/e/2ylyj01nwqx1'),
(193, 51693, 1, '6', 'Mp4Upload', 'https://www.mp4upload.com/embed-aenxc79iboor.html'),
(194, 51693, 1, '6', 'Doodstream', 'https://dood.wf/e/ljmz9ged7zf0'),
(195, 51693, 1, '7', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjA0NjUx&title=Kaminaki+Sekai+no+Kamisama+Katsudou+Episode+7'),
(196, 51693, 1, '7', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjA0NjUx&token=5NVHzAo9dXWDmy9qSIHSRQ&expires=1684597366'),
(197, 51693, 1, '7', 'Streamsb', 'https://sbani.pro/e/z20yhsfxdw8o'),
(198, 51693, 1, '7', 'Mp4Upload', 'https://www.mp4upload.com/embed-cl14ii5f5ooo.html'),
(199, 51693, 1, '7', 'Doodstream', 'https://dood.wf/e/9ymboonhqvjc'),
(200, 50220, 1, '1', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjAyNDQz&title=Isekai+Shoukan+wa+Nidome+desu+Episode+1'),
(201, 50220, 1, '1', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjAyNDQz&token=kUQleySEKCBmH6etJgLUSQ&expires=1684617433'),
(202, 50220, 1, '1', 'Streamsb', 'https://sbani.pro/e/jbkmcf12wcuk'),
(203, 50220, 1, '1', 'Doodstream', 'https://dood.wf/e/sd89p7muf9i2'),
(204, 50220, 1, '2', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjAyOTIz&title=Isekai+Shoukan+wa+Nidome+desu+Episode+2'),
(205, 50220, 1, '2', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjAyOTIz&token=03vESTqMA2Vg03q1r4zorg&expires=1684617490'),
(206, 50220, 1, '2', 'Streamsb', 'https://sbani.pro/e/ei5wrvf4cqmu'),
(207, 50220, 1, '2', 'Doodstream', 'https://dood.wf/e/j23qoqk62h0u'),
(208, 50220, 1, '3', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjAzMjY2&title=Isekai+Shoukan+wa+Nidome+desu+Episode+3'),
(209, 50220, 1, '3', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjAzMjY2&token=FSAf4WZexEvuOsKznXZdtg&expires=1684617547'),
(210, 50220, 1, '3', 'Streamsb', 'https://sbani.pro/e/c6gpo0grou5z'),
(211, 50220, 1, '3', 'Mp4Upload', 'https://www.mp4upload.com/embed-lgn8mn5b2n4e.html'),
(212, 50220, 1, '3', 'Doodstream', 'https://dood.wf/e/2bbthimw4u30'),
(213, 50220, 1, '4', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjAzNjY0&title=Isekai+Shoukan+wa+Nidome+desu+Episode+4'),
(214, 50220, 1, '4', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjAzNjY0&token=CKAlG4Ua6JZRH-0EJwgkdg&expires=1684617606'),
(215, 50220, 1, '4', 'Streamsb', 'https://sbani.pro/e/b9dlp59squ1s'),
(216, 50220, 1, '4', 'Mp4Upload', 'https://www.mp4upload.com/embed-g24zigpl52lj.html'),
(217, 50220, 1, '4', 'Doodstream', 'https://dood.wf/e/5ygitg1th8rl'),
(218, 50220, 1, '5', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjA0MDYy&title=Isekai+Shoukan+wa+Nidome+desu+Episode+5'),
(219, 50220, 1, '5', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjA0MDYy&token=0PyYOHKdh6CfQ1WSW5HMTw&expires=1684617668'),
(220, 50220, 1, '5', 'Streamsb', 'https://sbani.pro/e/sx9m0cy4mw37'),
(221, 50220, 1, '5', 'Doodstream', 'https://dood.wf/e/8zi4o88js9su'),
(222, 50220, 1, '6', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjA0NDcy&title=Isekai+Shoukan+wa+Nidome+desu+Episode+6'),
(223, 50220, 1, '6', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjA0NDcy&token=oqqnuQH8owxxta4cfRKukA&expires=1684617719'),
(224, 50220, 1, '6', 'Streamsb', 'https://sbani.pro/e/0om9k3mjkorr'),
(225, 50220, 1, '6', 'Mp4Upload', 'https://www.mp4upload.com/embed-vl7as0fcfr71.html'),
(226, 50220, 1, '6', 'Doodstream', 'https://dood.wf/e/8pnpd0011pl5'),
(227, 50220, 1, '7', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjA0NzQx&title=Isekai+Shoukan+wa+Nidome+desu+Episode+7'),
(228, 50220, 1, '7', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjA0NzQx&token=40es4XHXbjwCFc2GGpdoew&expires=1684617827'),
(229, 50220, 1, '7', 'Streamsb', 'https://sbani.pro/e/ga3wbgyvsj4b'),
(230, 50220, 1, '7', 'Mp4Upload', 'https://www.mp4upload.com/embed-7lbes69kc1y7.html'),
(231, 50220, 1, '7', 'Doodstream', 'https://dood.wf/e/3ycfzycf8f2z'),
(232, 50307, 1, '1', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjAyMzc1&title=Tonikaku+Kawaii+2nd+Season+Episode+1'),
(233, 50307, 1, '1', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjAyMzc1&token=SxfQjz8HqyOBUO6WxlEp4Q&expires=1684618735'),
(234, 50307, 1, '1', 'Streamsb', 'https://sbani.pro/e/ehms7h3asiuj'),
(235, 50307, 1, '1', 'Mp4Upload', 'https://www.mp4upload.com/embed-tsxo7bpw8p5o.html'),
(236, 50307, 1, '1', 'Doodstream', 'https://dood.wf/e/9h4kq1eq36bc'),
(237, 50307, 1, '2', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjAyNzg3&title=Tonikaku+Kawaii+2nd+Season+Episode+2'),
(238, 50307, 1, '2', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjAyNzg3&token=UTkrlMe9i65Q3boA8R_OZQ&expires=1684618792'),
(239, 50307, 1, '2', 'Streamsb', 'https://sbani.pro/e/17fm36918mna'),
(240, 50307, 1, '2', 'Mp4Upload', 'https://www.mp4upload.com/embed-1dxhpsowv273.html'),
(241, 50307, 1, '2', 'Doodstream', 'https://dood.wf/e/02xey00u436q'),
(242, 50307, 1, '3', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjAzMjAy&title=Tonikaku+Kawaii+2nd+Season+Episode+3'),
(243, 50307, 1, '3', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjAzMjAy&token=5WKc6eENnAPED0v4OTKykQ&expires=1684618843'),
(244, 50307, 1, '3', 'Streamsb', 'https://sbani.pro/e/4c3jvv2hdfrc'),
(245, 50307, 1, '3', 'Mp4Upload', 'https://www.mp4upload.com/embed-raw0wyxanzmv.html'),
(246, 50307, 1, '3', 'Doodstream', 'https://dood.wf/e/0s47fcrx259j'),
(247, 50307, 1, '4', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjAzNjAw&title=Tonikaku+Kawaii+2nd+Season+Episode+4'),
(248, 50307, 1, '4', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjAzNjAw&token=eUCCG5edAGiadRzikGwjDA&expires=1684618902'),
(249, 50307, 1, '4', 'Streamsb', 'https://sbani.pro/e/ripx12w9xztw'),
(250, 50307, 1, '4', 'Mp4Upload', 'https://www.mp4upload.com/embed-i17qur69cijx.html'),
(251, 50307, 1, '4', 'Doodstream', 'https://dood.wf/e/tko23bi6vdrn'),
(252, 50307, 1, '5', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjAzOTk3&title=Tonikaku+Kawaii+2nd+Season+Episode+5'),
(253, 50307, 1, '5', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjAzOTk3&token=VYcU2S3r24amYm_9qUOhYA&expires=1684618960'),
(254, 50307, 1, '5', 'Streamsb', 'https://sbani.pro/e/wmq25bo08exz'),
(255, 50307, 1, '5', 'Mp4Upload', 'https://www.mp4upload.com/embed-l1hgz8xpxoxi.html'),
(256, 50307, 1, '5', 'Doodstream', 'https://dood.wf/e/knvysqqd5jwm'),
(257, 50307, 1, '6', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjA0NDE5&title=Tonikaku+Kawaii+2nd+Season+Episode+6'),
(258, 50307, 1, '6', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjA0NDE5&token=NEnH60k-XS9lzdEWFOWO7A&expires=1684619022'),
(259, 50307, 1, '6', 'Streamsb', 'https://sbani.pro/e/n2on09m5gja2'),
(260, 50307, 1, '6', 'Mp4Upload', 'https://www.mp4upload.com/embed-f1pqyr3l6m87.html'),
(261, 50307, 1, '6', 'Doodstream', 'https://dood.wf/e/s6yi86hl2zdm'),
(262, 50307, 1, '7', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjA0NzEy&title=Tonikaku+Kawaii+2nd+Season+Episode+7'),
(263, 50307, 1, '7', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjA0NzEy&token=eFSlnNso-bf2QYjAiYK_TQ&expires=1684619088'),
(264, 50307, 1, '7', 'Streamsb', 'https://sbani.pro/e/ecd7qjthtc1s'),
(265, 50307, 1, '7', 'Mp4Upload', 'https://www.mp4upload.com/embed-6jal694zxh8s.html'),
(266, 50307, 1, '7', 'Doodstream', 'https://dood.wf/e/4apggarws0dm'),
(267, 51706, 1, '1', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjAyMzI2&title=Yuusha+ga+Shinda%21+Episode+1'),
(268, 51706, 1, '1', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjAyMzI2&token=tcoIJTTk65NcdxDyaTlF3g&expires=1684619972'),
(269, 51706, 1, '1', 'Streamsb', 'https://sbani.pro/e/ic21h1sfa374'),
(270, 51706, 1, '1', 'Mp4Upload', 'https://www.mp4upload.com/embed-sssa2k23a339.html'),
(271, 51706, 1, '1', 'Doodstream', 'https://dood.wf/e/0lw1nc6bqncw'),
(272, 51706, 1, '2', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjAyNjg5&title=Yuusha+ga+Shinda%21+Episode+2'),
(273, 51706, 1, '2', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjAyNjg5&token=4L1gOCn5PrnIg_zhhdEhTw&expires=1684620455'),
(274, 51706, 1, '2', 'Streamsb', 'https://sbani.pro/e/oveh7trzs2k2'),
(275, 51706, 1, '2', 'Mp4Upload', 'https://www.mp4upload.com/embed-oywrldy87ct5.html'),
(276, 51706, 1, '2', 'Doodstream', 'https://dood.wf/e/bf02190tdkja'),
(277, 51706, 1, '3', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjAzMTM2&title=Yuusha+ga+Shinda%21+Episode+3'),
(278, 51706, 1, '3', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjAzMTM2&token=mfwN1sj9VzDzevXzRRVMuQ&expires=1684620512'),
(279, 51706, 1, '3', 'Streamsb', 'https://sbani.pro/e/p3t8rdnt3x2g'),
(280, 51706, 1, '3', 'Mp4Upload', 'https://www.mp4upload.com/embed-ad28l098mksw.html'),
(281, 51706, 1, '3', 'Doodstream', 'https://dood.wf/e/78ontpqvzg31'),
(282, 51706, 1, '4', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjAzNTM2&title=Yuusha+ga+Shinda%21+Episode+4'),
(283, 51706, 1, '4', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjAzNTM2&token=HfV3hfnRCTMBjPe-6MUc5Q&expires=1684620569'),
(284, 51706, 1, '4', 'Streamsb', 'https://sbani.pro/e/tmvvu3aghpw6'),
(285, 51706, 1, '4', 'Mp4Upload', 'https://www.mp4upload.com/embed-8fpwxmisdqva.html'),
(286, 51706, 1, '4', 'Doodstream', 'https://dood.wf/e/q25dh4orw0pp'),
(287, 51706, 1, '5', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjAzOTIx&title=Yuusha+ga+Shinda%21+Episode+5'),
(288, 51706, 1, '5', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjAzOTIx&token=t3sLE9igb89Ze2sZ2Vchvg&expires=1684620621'),
(289, 51706, 1, '5', 'Streamsb', 'https://sbani.pro/e/k8llcfe1d9h3'),
(290, 51706, 1, '5', 'Mp4Upload', 'https://www.mp4upload.com/embed-63oif5w38jjr.html'),
(291, 51706, 1, '5', 'Doodstream', 'https://dood.wf/e/brchhj4w6eyl'),
(292, 51706, 1, '6', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjA0MzI3&title=Yuusha+ga+Shinda%21+Episode+6'),
(293, 51706, 1, '6', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjA0MzI3&token=G8qQgjmAY-Mx_AshHCNCtw&expires=1684620712'),
(294, 51706, 1, '6', 'Streamsb', 'https://sbani.pro/e/eligzduc8ou5'),
(295, 51706, 1, '6', 'Mp4Upload', 'https://www.mp4upload.com/embed-8z2dmsqig3d4.html'),
(296, 51706, 1, '6', 'Doodstream', 'https://dood.wf/e/asq384t2aaxe'),
(297, 51706, 1, '7', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MjA0Njc5&title=Yuusha+ga+Shinda%21+Episode+7'),
(298, 51706, 1, '7', 'Vidcdn', 'https://playtaku.online/embedplus?id=MjA0Njc5&token=XpgVOvDEUG4f6o8ZMrZaxA&expires=1684620768'),
(299, 51706, 1, '7', 'Streamsb', 'https://sbani.pro/e/l073xkm8a9gg'),
(300, 51706, 1, '7', 'Mp4Upload', 'https://www.mp4upload.com/embed-e3ye265ag8mc.html'),
(301, 51706, 1, '7', 'Doodstream', 'https://dood.wf/e/z47w8xgev4na'),
(302, 35507, 1, '1', 'PlayTaku', 'https://playtaku.online/streaming.php?id=OTk0Mzg=&title=Youkoso+Jitsuryoku+Shijou+Shugi+no+Kyoushitsu+e+%28TV%29+Episode+1'),
(303, 35507, 1, '1', 'Vidcdn', 'https://playtaku.online/embedplus?id=OTk0Mzg=&token=Vys0VsI7t51y6loM5J9xjw&expires=1684621958'),
(304, 35507, 1, '1', 'Streamsb', 'https://sbani.pro/e/x49m8leig5g2'),
(305, 35507, 1, '1', 'Mp4Upload', 'https://www.mp4upload.com/embed-fw91pr8fbcw4.html'),
(306, 35507, 1, '1', 'Doodstream', 'https://dood.wf/e/cb6shzynrw36'),
(307, 35507, 1, '2', 'PlayTaku', 'https://playtaku.online/streaming.php?id=OTk1Mjc=&title=Youkoso+Jitsuryoku+Shijou+Shugi+no+Kyoushitsu+e+%28TV%29+Episode+2'),
(308, 35507, 1, '2', 'Vidcdn', 'https://playtaku.online/embedplus?id=OTk1Mjc=&token=urBs4817jkMnm-w4maEQEg&expires=1684622018'),
(309, 35507, 1, '2', 'Streamsb', 'https://sbani.pro/e/yla2xwl0ix1r'),
(310, 35507, 1, '2', 'Mp4Upload', 'https://www.mp4upload.com/embed-z04t397iwdn7.html'),
(311, 35507, 1, '2', 'Doodstream', 'https://dood.wf/e/6rtoz656wub0'),
(312, 35507, 1, '3', 'PlayTaku', 'https://playtaku.online/streaming.php?id=OTk2NTg=&title=Youkoso+Jitsuryoku+Shijou+Shugi+no+Kyoushitsu+e+%28TV%29+Episode+3'),
(313, 35507, 1, '3', 'Vidcdn', 'https://playtaku.online/embedplus?id=OTk2NTg=&token=IEpTsfsfH5iSgWjYSCafpg&expires=1684622089'),
(314, 35507, 1, '3', 'Streamsb', 'https://sbani.pro/e/ht8siq9xcjaf'),
(315, 35507, 1, '3', 'Mp4Upload', 'https://www.mp4upload.com/embed-43sls3ffywkg.html'),
(316, 35507, 1, '3', 'Doodstream', 'https://dood.wf/e/ll6ifkt2pfcv'),
(317, 35507, 1, '4', 'PlayTaku', 'https://playtaku.online/streaming.php?id=OTk4NDY=&title=Youkoso+Jitsuryoku+Shijou+Shugi+no+Kyoushitsu+e+%28TV%29+Episode+4'),
(318, 35507, 1, '4', 'Vidcdn', 'https://playtaku.online/embedplus?id=OTk4NDY=&token=Yj22_0qLl9jLMgHZYK1-aw&expires=1684622156'),
(319, 35507, 1, '4', 'Streamsb', 'https://sbani.pro/e/gzf2gzwtfu2w'),
(320, 35507, 1, '4', 'Mp4Upload', 'https://www.mp4upload.com/embed-g7532zz8pnvi.html'),
(321, 35507, 1, '4', 'Doodstream', 'https://dood.wf/e/8epnlbbj9g4x'),
(322, 35507, 1, '5', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MTAwMTIx&title=Youkoso+Jitsuryoku+Shijou+Shugi+no+Kyoushitsu+e+%28TV%29+Episode+5'),
(323, 35507, 1, '5', 'Vidcdn', 'https://playtaku.online/embedplus?id=MTAwMTIx&token=292IEnBtknoLok7ekhASpg&expires=1684622203'),
(324, 35507, 1, '5', 'Streamsb', 'https://sbani.pro/e/vl64m5isowlm'),
(325, 35507, 1, '5', 'Mp4Upload', 'https://www.mp4upload.com/embed-2b8h4ivynrwl.html'),
(326, 35507, 1, '5', 'Doodstream', 'https://dood.wf/e/7c2192q5g4xx'),
(327, 35507, 1, '6', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MTAwMjUx&title=Youkoso+Jitsuryoku+Shijou+Shugi+no+Kyoushitsu+e+%28TV%29+Episode+6'),
(328, 35507, 1, '6', 'Vidcdn', 'https://playtaku.online/embedplus?id=MTAwMjUx&token=YoPU5Q2fxAl30zM-8LP1CA&expires=1684622273'),
(329, 35507, 1, '6', 'Streamsb', 'https://sbani.pro/e/ottl8z7uuqa9'),
(330, 35507, 1, '6', 'Mp4Upload', 'https://www.mp4upload.com/embed-0vvxegxb5eie.html'),
(331, 35507, 1, '6', 'Doodstream', 'https://dood.wf/e/2aq04a03kxol'),
(332, 35507, 1, '7', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MTAwNTcw&title=Youkoso+Jitsuryoku+Shijou+Shugi+no+Kyoushitsu+e+%28TV%29+Episode+7'),
(333, 35507, 1, '7', 'Vidcdn', 'https://playtaku.online/embedplus?id=MTAwNTcw&token=5RDBdLS55gmuvoich6FqDg&expires=1684622335'),
(334, 35507, 1, '7', 'Streamsb', 'https://sbani.pro/e/pf7wc9cjj2m9'),
(335, 35507, 1, '7', 'Mp4Upload', 'https://www.mp4upload.com/embed-ej8gktessdu2.html'),
(336, 35507, 1, '7', 'Doodstream', 'https://dood.wf/e/hj22zgsfdnlc'),
(337, 35507, 1, '8', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MTAwNjc1&title=Youkoso+Jitsuryoku+Shijou+Shugi+no+Kyoushitsu+e+%28TV%29+Episode+8'),
(338, 35507, 1, '8', 'Vidcdn', 'https://playtaku.online/embedplus?id=MTAwNjc1&token=FU0RVcIO1pY_Pn_ZEbCc-w&expires=1684622390'),
(339, 35507, 1, '8', 'Streamsb', 'https://sbani.pro/e/33oxppkunekh'),
(340, 35507, 1, '8', 'Mp4Upload', 'https://www.mp4upload.com/embed-po1za0z6uyej.html'),
(341, 35507, 1, '8', 'Doodstream', 'https://dood.wf/e/tizqdq0hexp6'),
(342, 35507, 1, '9', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MTAwNzkz&title=Youkoso+Jitsuryoku+Shijou+Shugi+no+Kyoushitsu+e+%28TV%29+Episode+9'),
(343, 35507, 1, '9', 'Vidcdn', 'https://playtaku.online/embedplus?id=MTAwNzkz&token=YrI3azkBuALIKHfLQq42cg&expires=1684622450'),
(344, 35507, 1, '9', 'Streamsb', 'https://sbani.pro/e/trtms5jcq7w6'),
(345, 35507, 1, '9', 'Mp4Upload', 'https://www.mp4upload.com/embed-l80b3qpkumau.html'),
(346, 35507, 1, '9', 'Doodstream', 'https://dood.wf/e/q8kh4juz6u2o'),
(347, 35507, 1, '10', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MTAwOTI0&title=Youkoso+Jitsuryoku+Shijou+Shugi+no+Kyoushitsu+e+%28TV%29+Episode+10'),
(348, 35507, 1, '10', 'Vidcdn', 'https://playtaku.online/embedplus?id=MTAwOTI0&token=bsy_NRDir-AgqVHdXmDLcQ&expires=1684622615'),
(349, 35507, 1, '10', 'Streamsb', 'https://sbani.pro/e/mb3gmc8gb0ig'),
(350, 35507, 1, '10', 'Mp4Upload', 'https://www.mp4upload.com/embed-m3jst5g4pw82.html'),
(351, 35507, 1, '10', 'Doodstream', 'https://dood.wf/e/wyi6tpdkchxa'),
(352, 35507, 1, '11', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MTAxMDQ5&title=Youkoso+Jitsuryoku+Shijou+Shugi+no+Kyoushitsu+e+%28TV%29+Episode+11'),
(353, 35507, 1, '11', 'Vidcdn', 'https://playtaku.online/embedplus?id=MTAxMDQ5&token=LRbSICd3Zl6d6oEnWLmvRg&expires=1684622673'),
(354, 35507, 1, '11', 'Streamsb', 'https://sbani.pro/e/jtpdct9vnyp6'),
(355, 35507, 1, '11', 'Mp4Upload', 'https://www.mp4upload.com/embed-pa1yx6r492ro.html'),
(356, 35507, 1, '11', 'Doodstream', 'https://dood.wf/e/pdss1n2m2g9e'),
(357, 35507, 1, '12', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MTAxMTU3&title=Youkoso+Jitsuryoku+Shijou+Shugi+no+Kyoushitsu+e+%28TV%29+Episode+12'),
(358, 35507, 1, '12', 'Vidcdn', 'https://playtaku.online/embedplus?id=MTAxMTU3&token=0gkUxe8qXMxsju66uvF0Gg&expires=1684622727'),
(359, 35507, 1, '12', 'Streamsb', 'https://sbani.pro/e/kkmyl071xci3'),
(360, 35507, 1, '12', 'Mp4Upload', 'https://www.mp4upload.com/embed-eukrvdx1lny0.html'),
(361, 35507, 1, '12', 'Doodstream', 'https://dood.wf/e/vsew6xml2y68'),
(362, 51096, 1, '1', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MTg4NzQ2&title=Youkoso+Jitsuryoku+Shijou+Shugi+no+Kyoushitsu+e+%28TV%29+2nd+Season+Episode+1'),
(363, 51096, 1, '1', 'Vidcdn', 'https://playtaku.online/embedplus?id=MTg4NzQ2&token=fuVIkyalzveNbyXeYYog1A&expires=1684682915'),
(364, 51096, 1, '1', 'Streamsb', 'https://sbani.pro/e/sveu8qhwx1ek'),
(366, 51096, 1, '1', 'Doodstream', 'https://dood.wf/e/ncxr1rf8n9oo'),
(367, 51096, 1, '2', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MTg5MDMy&title=Youkoso+Jitsuryoku+Shijou+Shugi+no+Kyoushitsu+e+%28TV%29+2nd+Season+Episode+2'),
(368, 51096, 1, '2', 'Vidcdn', 'https://playtaku.online/embedplus?id=MTg5MDMy&token=U6Ugrfeu-EoHU5DBrjZcZA&expires=1684683082'),
(369, 51096, 1, '2', 'Streamsb', 'https://sbani.pro/e/g90kvovs147b'),
(370, 51096, 1, '2', 'Mp4Upload', 'https://www.mp4upload.com/embed-22v3n1tir18u.html'),
(371, 51096, 1, '2', 'Doodstream', 'https://dood.wf/e/y3ng2szas49a'),
(372, 51096, 1, '3', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MTg5MzE2&title=Youkoso+Jitsuryoku+Shijou+Shugi+no+Kyoushitsu+e+%28TV%29+2nd+Season+Episode+3'),
(373, 51096, 1, '3', 'Vidcdn', 'https://playtaku.online/embedplus?id=MTg5MzE2&token=Z1f9LEJvqSBM80VWM5X5PA&expires=1684683141'),
(374, 51096, 1, '3', 'Streamsb', 'https://sbani.pro/e/v320ou1vl35m'),
(375, 51096, 1, '3', 'Doodstream', 'https://dood.wf/e/k0er9snqjytj'),
(376, 51096, 1, '4', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MTg5NTg2&title=Youkoso+Jitsuryoku+Shijou+Shugi+no+Kyoushitsu+e+%28TV%29+2nd+Season+Episode+4'),
(377, 51096, 1, '4', 'Vidcdn', 'https://playtaku.online/embedplus?id=MTg5NTg2&token=TujBcYF52x0J8-89V514XQ&expires=1684683191'),
(378, 51096, 1, '4', 'Streamsb', 'https://sbani.pro/e/m8pkpfcshpy8'),
(379, 51096, 1, '4', 'Doodstream', 'https://dood.wf/e/5cp4syao9xjd'),
(380, 51096, 1, '5', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MTg5OTQ4&title=Youkoso+Jitsuryoku+Shijou+Shugi+no+Kyoushitsu+e+%28TV%29+2nd+Season+Episode+5'),
(381, 51096, 1, '5', 'Vidcdn', 'https://playtaku.online/embedplus?id=MTg5OTQ4&token=Mbwm8JzNKMmCWEZGdprvaQ&expires=1684683239'),
(382, 51096, 1, '5', 'Streamsb', 'https://sbani.pro/e/mlf40e40nwmf'),
(383, 51096, 1, '5', 'Doodstream', 'https://dood.wf/e/9gc6bot4pzom'),
(384, 51096, 1, '6', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MTkwMjgx&title=Youkoso+Jitsuryoku+Shijou+Shugi+no+Kyoushitsu+e+%28TV%29+2nd+Season+Episode+6'),
(385, 51096, 1, '6', 'Vidcdn', 'https://playtaku.online/embedplus?id=MTkwMjgx&token=11-gchguuZwG6Nm45G9FwQ&expires=1684683374'),
(386, 51096, 1, '6', 'Streamsb', 'https://sbani.pro/e/dc609oykage9'),
(387, 51096, 1, '6', 'Doodstream', 'https://dood.wf/e/acg427p033u9'),
(388, 51096, 1, '7', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MTkwNTc1&title=Youkoso+Jitsuryoku+Shijou+Shugi+no+Kyoushitsu+e+%28TV%29+2nd+Season+Episode+7'),
(389, 51096, 1, '7', 'Vidcdn', 'https://playtaku.online/embedplus?id=MTkwNTc1&token=DOCE2qqAJcZz0yNlDyWxbQ&expires=1684683410'),
(390, 51096, 1, '7', 'Streamsb', 'https://sbani.pro/e/nh4ucs11plwh'),
(391, 51096, 1, '7', 'Mp4Upload', 'https://www.mp4upload.com/embed-vupwq08q8dsg.html'),
(392, 51096, 1, '7', 'Doodstream', 'https://dood.wf/e/gvim9m3ig739'),
(393, 51096, 1, '8', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MTkwODI1&title=Youkoso+Jitsuryoku+Shijou+Shugi+no+Kyoushitsu+e+%28TV%29+2nd+Season+Episode+8'),
(394, 51096, 1, '8', 'Vidcdn', 'https://playtaku.online/embedplus?id=MTkwODI1&token=7pf3x7XbNiBpas_WvpvKhA&expires=1684683508'),
(395, 51096, 1, '8', 'Streamsb', 'https://sbani.pro/e/pej0830bw0wg'),
(396, 51096, 1, '8', 'Mp4Upload', 'https://www.mp4upload.com/embed-0mzu1vpy6r9g.html'),
(397, 51096, 1, '8', 'Doodstream', 'https://dood.wf/e/w1nrjnw7up7s'),
(398, 51096, 1, '9', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MTkxMjY4&title=Youkoso+Jitsuryoku+Shijou+Shugi+no+Kyoushitsu+e+%28TV%29+2nd+Season+Episode+9'),
(399, 51096, 1, '9', 'Vidcdn', 'https://playtaku.online/embedplus?id=MTkxMjY4&token=xvYNr9SXHhn6heQ3Nxj7EA&expires=1684683570'),
(400, 51096, 1, '9', 'Streamsb', 'https://sbani.pro/e/sinbitqgnluk'),
(401, 51096, 1, '9', 'Doodstream', 'https://dood.wf/e/bjn15ben9wx5'),
(402, 51096, 1, '10', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MTkxNzAx&title=Youkoso+Jitsuryoku+Shijou+Shugi+no+Kyoushitsu+e+%28TV%29+2nd+Season+Episode+10'),
(403, 51096, 1, '10', 'Vidcdn', 'https://playtaku.online/embedplus?id=MTkxNzAx&token=WU_utD32yB6Jzyim-f5aWA&expires=1684683619'),
(404, 51096, 1, '10', 'Streamsb', 'https://sbani.pro/e/lgbkprk3a4ow'),
(405, 51096, 1, '10', 'Mp4Upload', 'https://www.mp4upload.com/embed-sbf8fb9yubgf.html'),
(406, 51096, 1, '10', 'Doodstream', 'https://dood.wf/e/xyzumw5sfhuk'),
(407, 51096, 1, '11', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MTkyMDcw&title=Youkoso+Jitsuryoku+Shijou+Shugi+no+Kyoushitsu+e+%28TV%29+2nd+Season+Episode+11'),
(408, 51096, 1, '11', 'Vidcdn', 'https://playtaku.online/embedplus?id=MTkyMDcw&token=vW42TnU6jU6kFNddzgcxrg&expires=1684683686'),
(409, 51096, 1, '11', 'Streamsb', 'https://sbani.pro/e/xbgbdkx04nv1'),
(410, 51096, 1, '11', 'Mp4Upload', 'https://www.mp4upload.com/embed-7uhldf5q9fbm.html'),
(411, 51096, 1, '11', 'Doodstream', 'https://dood.wf/e/9l6kgu9ghi6s'),
(412, 51096, 1, '12', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MTkyNTAz&title=Youkoso+Jitsuryoku+Shijou+Shugi+no+Kyoushitsu+e+%28TV%29+2nd+Season+Episode+12'),
(413, 51096, 1, '12', 'Vidcdn', 'https://playtaku.online/embedplus?id=MTkyNTAz&token=B6cvYX1XpNtesfNPPYDHag&expires=1684683745'),
(414, 51096, 1, '12', 'Streamsb', 'https://sbani.pro/e/48696i5d7ox9'),
(415, 51096, 1, '12', 'Mp4Upload', 'https://www.mp4upload.com/embed-pmylm8698tfk.html'),
(416, 51096, 1, '12', 'Doodstream', 'https://dood.wf/e/s7cekv9v62og'),
(417, 51096, 1, '13', 'PlayTaku', 'https://playtaku.online/streaming.php?id=MTkyODM2&title=Youkoso+Jitsuryoku+Shijou+Shugi+no+Kyoushitsu+e+%28TV%29+2nd+Season+Episode+13'),
(418, 51096, 1, '13', 'Vidcdn', 'https://playtaku.online/embedplus?id=MTkyODM2&token=Q4q5ypkazWrOwq5t9zXb1g&expires=1684683801'),
(419, 51096, 1, '13', 'Streamsb', 'https://sbani.pro/e/cbcdbkwvzfqu'),
(420, 51096, 1, '13', 'Mp4Upload', 'https://www.mp4upload.com/embed-v4f1rgchv2ga.html'),
(421, 51096, 1, '13', 'Doodstream', 'https://dood.wf/e/t9j27xo1wgse'),
(422, 52830, 1, '8', 'PlayTaku', 'https://gotaku1.com/streaming.php?id=MjA0ODEx&title=Isekai+de+Cheat+Skill+wo+Te+ni+Shita+Ore+wa%2C+Genjitsu+Sekai+wo+mo+Musou+Suru%3A+Level+Up+wa+Jinsei+wo+Kaeta+Episode+8'),
(423, 52830, 1, '8', 'Vidcdn', 'https://gotaku1.com/embedplus?id=MjA0ODEx&token=FgxPl9WcR5sb2BooS0YEUg&expires=1685542074'),
(424, 52830, 1, '8', 'Streamsb', 'https://sbani.pro/e/1v0ivz9sy43j'),
(425, 52830, 1, '8', 'Mp4Upload', 'https://www.mp4upload.com/embed-b1oodo4yicyr.html'),
(426, 52830, 1, '8', 'Doodstream', 'https://dood.wf/e/f0fqcf08hiyz'),
(427, 52830, 1, '9', 'PlayTaku', 'https://gotaku1.com/streaming.php?id=MjA1MTUw&title=Isekai+de+Cheat+Skill+wo+Te+ni+Shita+Ore+wa%2C+Genjitsu+Sekai+wo+mo+Musou+Suru%3A+Level+Up+wa+Jinsei+wo+Kaeta+Episode+9'),
(428, 52830, 1, '9', 'Vidcdn', 'https://gotaku1.com/embedplus?id=MjA1MTUw&token=HIUjjvjme5UuoFG7kTsr8w&expires=1685542360'),
(429, 52830, 1, '9', 'Streamsb', 'https://sbani.pro/e/8amcfv48wnnf'),
(430, 52830, 1, '9', 'Mp4Upload', 'https://www.mp4upload.com/embed-gqgb00aa4v5f.html'),
(431, 52830, 1, '9', 'Doodstream', 'https://dood.wf/e/455ey89lvvbh'),
(432, 52830, 2, '10', 'Gogo.hu', 'isekai-de-cheat-skill-wo-te-ni-shita-ore-wa-genjitsu-sekai-wo-mo-musou-suru-level-up-wa-jinsei-wo-kaeta-episode-10'),
(434, 21, 2, '1', 'Gogo.hu', 'one-piece-episode-1'),
(435, 21, 2, '2', 'Gogo.hu', 'one-piece-episode-2'),
(436, 21, 2, '3', 'Gogo.hu', 'one-piece-episode-3'),
(437, 21, 2, '4', 'Gogo.hu', 'one-piece-episode-4');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `episode_turk`
--

DROP TABLE IF EXISTS `episode_turk`;
CREATE TABLE IF NOT EXISTS `episode_turk` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL,
  `ep_turk_webconverter` int NOT NULL,
  `turk_id` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `turk_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `turk_frame` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `episode_vote`
--

DROP TABLE IF EXISTS `episode_vote`;
CREATE TABLE IF NOT EXISTS `episode_vote` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(25) NOT NULL,
  `anime_id` varchar(25) NOT NULL,
  `anime_ep_id` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `anime_ep_score` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `episode_vote`
--

INSERT INTO `episode_vote` (`id`, `user_id`, `anime_id`, `anime_ep_id`, `anime_ep_score`) VALUES
(7, '2', '20785', '8', '10'),
(6, '1', '20785', '8', '5'),
(8, '3', '20785', '8', '5'),
(9, '1', '20785', '9', '10');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `files`
--

DROP TABLE IF EXISTS `files`;
CREATE TABLE IF NOT EXISTS `files` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `size` int NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
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
-- Tablo için tablo yapısı `reportpost`
--

DROP TABLE IF EXISTS `reportpost`;
CREATE TABLE IF NOT EXISTS `reportpost` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `postid` int NOT NULL,
  `ids` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reports`
--

DROP TABLE IF EXISTS `reports`;
CREATE TABLE IF NOT EXISTS `reports` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(355) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `reports`
--

INSERT INTO `reports` (`id`, `url`, `created_at`) VALUES
(3, 'http://localhost/watch/21/One-Piece/4', '2023-06-21 16:02:42');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

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
(1, 'akaisora09', '/files/images/avatar1.gif', 1, 1, 1, 1, 1, NULL, NULL, 1, NULL, '2023-05-12 19:52:20', '2023-05-12 19:52:20', NULL),
(2, 'test123', 'https://img5.goodfon.com/wallpaper/nbig/9/21/girl-anime-wallpapers-anime-girl.jpg', 0, 0, 0, 0, 0, NULL, NULL, 1, NULL, '2023-05-16 15:20:43', '2023-05-16 15:20:43', NULL),
(3, 'test555', 'http://lic.anitium.net/img/no-avatar.png', 1, 1, 1, 1, 1, NULL, NULL, 1, NULL, '2023-06-11 08:09:00', '2023-06-11 08:09:00', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `websettings`
--

DROP TABLE IF EXISTS `websettings`;
CREATE TABLE IF NOT EXISTS `websettings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `webname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `weburl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `weblic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `webconvert` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `webconvert2` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `webdisqus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `webdiscord` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `webtwitter` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `webdonation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `webdonation2` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `weblogo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `webicon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `webindexbg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `webinfo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `webaniscover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `webfooter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `websettings`
--

INSERT INTO `websettings` (`id`, `webname`, `weburl`, `weblic`, `webconvert`, `webconvert2`, `webdisqus`, `webdiscord`, `webtwitter`, `webdonation`, `webdonation2`, `weblogo`, `webicon`, `webindexbg`, `webinfo`, `webaniscover`, `webfooter`) VALUES
(1, 'Anitium', 'localhost', '08.04.2024-XACREX888794', 'https://lic.anitium.net/aniconvert.php?url=', 'https://lic.anitium.net/aniconvert2.php?url=', 'https://anitium.disqus.com', 'https://discord.gg/YmDHnQGxCn', 'https://twitter.com/', 'https://www.patreon.com/anitium', 'TWeF6nT13HjVtjTtH7TxTo4rGn1ErUCuf5', 'https://anitium.net/files/images/logo.png', 'https://anitium.net/files/images/logo.png', 'https://i.hizliresim.com/god644q.png', 'Free Watch Anime!', 'https://i.hizliresim.com/kuktn70.jpg', 'https://i.hizliresim.com/5yv5uk8.jpg');

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
