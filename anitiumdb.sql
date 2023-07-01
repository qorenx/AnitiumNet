-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 01 Tem 2023, 20:18:25
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `anime`
--

INSERT INTO `anime` (`id`, `uid`, `ani_name`, `ani_jname`, `ani_synonyms`, `ani_genre`, `ani_type`, `ani_country`, `ani_stats`, `ani_source`, `ani_ep`, `ani_synopsis`, `ani_poster`, `ani_wallpaper`, `ani_release`, `ani_release_season`, `ani_rate`, `ani_score`, `ani_raw`, `ani_sub`, `ani_dub`, `ani_turk`, `ani_time`, `ani_pv`, `ani_aired`, `ani_aired_fin`, `ani_studio`, `ani_producers`, `ani_offical_site`, `ani_manga_url`, `view_count`, `view_count_month`, `view_count_years`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 51096, 'Youkoso Jitsuryoku Shijou Shugi no Kyoushitsu e 2nd Season', 'ようこそ実力至上主義の教室へ 2期', 'Classroom of the Elite 2nd Season, You-jitsu 2nd Season, You-zitsu 2nd Season', 'Drama,Suspense,Psychological,School', 1, 1, 2, 2, '13', 'Life back on the cruise following the Island Special Examination is anything but smooth sailing. Almost immediately after their return, the first-year students of Tokyo Metropolitan Advanced Nurturing High School face yet another special exam, with both class and individual points on the line.\r\n\r\nIn addition to the complicated ruleset, more issues arise in the form of Kakeru Ryuuen and Kei Karuizawa. Angered by the previous test\'s outcome, Ryuuen is dead set on outdoing every class in the new challenge using any means necessary. Meanwhile, Karuizawa, a crucial pillar of Class D, is close to crumbling under the pressure of her past.\r\n\r\nThe stage is now set for Kiyotaka Ayanokouji to once again—using the full extent of his planning, foresight, and ruthless manipulation—steer Class D to victory as dangerously close enemy forces try to bring it down.\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/1010/124180l.jpg', '/uploads/1687360287_7ef96876914eb93812cc.png', '2022', 3, 3, '8.13', 0, 1, 0, 0, '23 min per ep', 'https://www.youtube.com/watch?v=0mM3lQytac4', '2022-07-04', '2022-09-26', 'Lerche', 'Studio Hibari,Movic,AT-X,Sammy,Crunchyroll,Kadokawa Media House,Kadokawa,Bandai Namco Music Live', '[{\"url\": \"http://you-zitsu.com/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/youkosozitsu\", \"name\": \"@youkosozitsu\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17208\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=25370\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/Classroom_of_the_Elite\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E3%82%88%E3%81%86%E3%81%93%E3%81%9D%E5%AE%9F%E5%8A%9B%E8%87%B3%E4%B8%8A%E4%B8%BB%E7%BE%A9%E3%81%AE%E6%95%99%E5%AE%A4%E3%81%B8_(%E3%83%86%E3%83%AC%E3%83%93%E3%82%A2%E3%83%8B%E3%83%A1)\", \"name\": \"Wikipedia\"}, {\"url\": \"https://cal.syoboi.jp/tid/6369\", \"name\": \"Syoboi\"}, {\"url\": \"https://bangumi.tv/subject/371546\", \"name\": \"Bangumi\"}, {\"url\": \"https://movie.douban.com/subject/35778747/\", \"name\": \"Douban\"}]', 'https://classroomofelite.online/', 34, 34, 34, '2023-06-21 12:49:42', '2023-06-21 12:49:42', NULL),
(5, 35507, 'Youkoso Jitsuryoku Shijou Shugi no Kyoushitsu e', 'ようこそ実力至上主義の教室へ', 'Welcome to the Classroom of the Elite, You-jitsu', 'Drama,Psychological,School', 1, 1, 2, 2, '12', 'On the surface, Koudo Ikusei Senior High School is a utopia. The students enjoy an unparalleled amount of freedom, and it is ranked highly in Japan. However, the reality is less than ideal. Four classes, A through D, are ranked in order of merit, and only the top classes receive favorable treatment.\r\n\r\nKiyotaka Ayanokouji is a student of Class D, where the school dumps its worst. There he meets the unsociable Suzune Horikita, who believes she was placed in Class D by mistake and desires to climb all the way to Class A, and the seemingly amicable class idol Kikyou Kushida, whose aim is to make as many friends as possible.\r\n\r\nWhile class membership is permanent, class rankings are not; students in lower ranked classes can rise in rankings if they score better than those in the top ones. Additionally, in Class D, there are no bars on what methods can be used to get ahead. In this cutthroat school, can they prevail against the odds and reach the top?\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/5/86830l.jpg', 'https://cdn.myanimelist.net/images/anime/5/86830l.jpg', '2017', 3, 3, '7.86', 0, 0, 0, 0, '24 min per ep', 'https://www.youtube.com/watch?v=iYsx6w5PNno', '2017-07-12', '2017-09-27', 'Lerche', 'Studio Hibari,Lantis,AT-X,Sony Music Communications,Toranoana,Crunchyroll,Kadokawa Media House,Kadokawa,AKABEiSOFT2', '[{\"url\": \"http://you-zitsu.com/\", \"name\": \"Official Site\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=13153\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=19544\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/Classroom_of_the_Elite\", \"name\": \"Wikipedia\"}]', '', 11, 11, 11, '2023-06-21 14:03:06', '2023-06-21 14:03:06', NULL),
(6, 21, 'One Piece', 'ONE PIECE', 'OP', 'Action,Adventure,Fantasy,Shounen', 1, 1, 1, 1, '?', 'Gol D. Roger was known as the \"Pirate King,\" the strongest and most infamous being to have sailed the Grand Line. The capture and execution of Roger by the World Government brought a change throughout the world. His last words before his death revealed the existence of the greatest treasure in the world, One Piece. It was this revelation that brought about the Grand Age of Pirates, men who dreamed of finding One Piece—which promises an unlimited amount of riches and fame—and quite possibly the pinnacle of glory and the title of the Pirate King.\r\n\r\nEnter Monkey D. Luffy, a 17-year-old boy who defies your standard definition of a pirate. Rather than the popular persona of a wicked, hardened, toothless pirate ransacking villages for fun, Luffy\'s reason for being a pirate is one of pure wonder: the thought of an exciting adventure that leads him to intriguing people and ultimately, the promised treasure. Following in the footsteps of his childhood hero, Luffy and his crew travel across the Grand Line, experiencing crazy adventures, unveiling dark mysteries and battling strong enemies, all in order to reach the most coveted of all fortunes—One Piece.\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/6/73245l.jpg', 'https://cdn.myanimelist.net/images/anime/6/73245l.jpg', '1999', 4, 3, '8.69', 0, 1, 0, 0, '24 min', 'https://www.youtube.com/watch?v=fX9NK-_YqlI', '1999-10-20', '?', 'Toei Animation', 'Fuji TV,TAP,Shueisha', '[{\"url\": \"http://www.toei-anim.co.jp/tv/onep/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/OnePieceAnime\", \"name\": \"@OnePieceAnime\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=69\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=836\", \"name\": \"ANN\"}, {\"url\": \"http://en.wikipedia.org/wiki/One_Piece\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/ONE_PIECE_%28%E3%82%A2%E3%83%8B%E3%83%A1%29\", \"name\": \"Wikipedia\"}, {\"url\": \"https://cal.syoboi.jp/tid/350\", \"name\": \"Syoboi\"}]', '', 25, 25, 25, '2023-06-21 14:50:51', '2023-06-21 14:50:51', NULL),
(7, 52830, 'Isekai de Cheat Skill wo Te ni Shita Ore wa, Genjitsu Sekai wo mo Musou Suru: Level Up wa Jinsei wo Kaeta', '異世界でチート能力を手にした俺は、現実世界をも無双する ～レベルアップは人生を変えた～', 'Iseleve', 'Action,Adventure,Fantasy,Isekai,School', 1, 1, 1, 2, '13', 'All his life, Yuuya Tenjou has been the subject of resentment and contempt from everyone around him, even from his parents. To make matters worse, his grandfather—the only person who ever showed him affection—suddenly dies, leaving Yuuya truly alone.\r\n\r\nDespite facing many adversities, Yuuya does what he can to offer kindness to those who need it—but even the most good-natured people can only tolerate so much abuse. Just when he reaches his breaking point, a flicker of hope appears in the form of a hidden door in his bathroom.\r\n\r\nThis door provides two-way access to an abandoned house in another world, where he instantly gains game-like stats and skills. Moreover, the house once belonged to a sage, which gives Yuuya access to remarkable weapons, equipment, and crops with extraordinary effects. With these newfound blessings, the once-undesirable Yuuya may just reach his true potential and become unstoppable.\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/1316/134327l.jpg', 'https://cdn.myanimelist.net/images/anime/1316/134327l.jpg', '2023', 2, 3, '6.56', 0, 1, 0, 0, '24 min per ep', 'https://www.youtube.com/watch?v=u7YOzGniO5g', '2023-04-07', '2023-06-30', 'Millepensee', 'TMS Entertainment,Tokyo MX,BS11,Kadokawa,CTW', '[{\"url\": \"https://www.iseleve.com/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/iseleve_anime\", \"name\": \"@iseleve_anime\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17580\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=26234\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/I_Got_a_Cheat_Skill_in_Another_World_and_Became_Unrivaled_in_the_Real_World,_Too\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E7%95%B0%E4%B8%96%E7%95%8C%E3%81%A7%E3%83%81%E3%83%BC%E3%83%88%E8%83%BD%E5%8A%9B%E3%82%92%E6%89%8B%E3%81%AB%E3%81%97%E3%81%9F%E4%BF%BA%E3%81%AF%E3%80%81%E7%8F%BE%E5%AE%9F%E4%B8%96%E7%95%8C%E3%82%92%E3%82%82%E7%84%A1%E5%8F%8C%E3%81%99%E3%82%8B%E3%80%9C%E3%83%AC%E3%83%99%E3%83%AB%E3%82%A2%E3%83%83%E3%83%97%E3%81%AF%E4%BA%BA%E7%94%9F%E3%82%92%E5%A4%89%E3%81%88%E3%81%9F%E3%80%9C#%E3%83%86%E3%83%AC%E3%83%93%E3%82%A2%E3%83%8B%E3%83%A1\", \"name\": \"Wikipedia\"}, {\"url\": \"https://cal.syoboi.jp/tid/6662\", \"name\": \"Syoboi\"}, {\"url\": \"https://bangumi.tv/subject/397025\", \"name\": \"Bangumi\"}, {\"url\": \"https://baike.baidu.com/item/%E5%9C%A8%E5%BC%82%E4%B8%96%E7%95%8C%E8%8E%B7%E5%BE%97%E8%B6%85%E5%BC%BA%E8%83%BD%E5%8A%9B%E7%9A%84%E6%88%91%EF%BC%8C%E5%9C%A8%E7%8E%B0%E5%AE%9E%E4%B8%96%E7%95%8C%E7%85%A7%E6%A0%B7%E6%97%A0%E6%95%8C%EF%BD%9E%E7%AD%89%E7%BA%A7%E6%8F%90%E5%8D%87%E6%94%B9%E5%8F%98%E4%BA%BA%E7%94%9F%E5%91%BD%E8%BF%90%EF%BD%9E/61904008?fromModule=lemma-qiyi_sense-lemma\", \"name\": \"Baidu Baike\"}, {\"url\": \"https://movie.douban.com/subject/36066424/\", \"name\": \"Douban\"}]', '', 9, 9, 9, '2023-06-21 15:08:58', '2023-06-21 15:08:58', NULL),
(8, 51706, 'Yuusha ga Shinda!', '勇者が死んだ！', 'The Hero Is Dead!', 'Action,Comedy,Fantasy,Ecchi,Harem,Parody', 1, 1, 1, 1, '12', 'Far to the north of the world lies Hell\'s Gate, a portal formerly used by the Demon Lord to invade the human realm. Thanks to the legendary hero Shion Bladearts, wielder of Excalibur, and his loyal band of companions, the Gate was sealed off and the demonic threat was vanquished.\r\n\r\nUnfortunately, the seal was incomplete and has begun to weaken, allowing the demons to once again begin their attack. Worried about the safety of his village, selfish and perverted farmer Touka Scott dig pitfalls to defend against the demons. But fear not, for Shion is on his way to reseal Hell\'s Gate and save humanity!\r\n\r\nOr at least he was, because the legendary hero is dead, having fallen into one of the pitfalls Touka dug. Luckily, dealing with the dead is the specialty of necromancer Anri Haynesworth. While she can\'t revive him, Anri can at least salvage their quest by forcing Touka\'s soul into Shion\'s rotting body and dragging him along to Hell\'s Gate in Shion\'s place. Not wanting to be left behind, Touka\'s childhood friend Yuna Yunis tags along. Together, the three of them set out as what just might be the most unsuitable party to ever try to save the world!\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/1868/133866l.jpg', 'https://cdn.myanimelist.net/images/anime/1868/133866l.jpg', '2023', 2, 3, '6.27', 0, 1, 0, 0, '23 min per ep', 'https://www.youtube.com/watch?v=0ApTw19ZTQg', '2023-04-07', '2023-06-23', 'LIDENFILMS', 'Pony Canyon,Tohokushinsha Film Corporation,Shogakukan,Crunchyroll,WOWMAX', '[{\"url\": \"https://heroisdead.com/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/yuusyagasinda\", \"name\": \"@yuusyagasinda\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17340\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=25602\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/The_Legendary_Hero_Is_Dead!\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E5%8B%87%E8%80%85%E3%81%8C%E6%AD%BB%E3%82%93%E3%81%A0!#%E3%83%86%E3%83%AC%E3%83%93%E3%82%A2%E3%83%8B%E3%83%A1\", \"name\": \"Wikipedia\"}, {\"url\": \"https://cal.syoboi.jp/tid/6661\", \"name\": \"Syoboi\"}, {\"url\": \"https://bangumi.tv/subject/379639\", \"name\": \"Bangumi\"}, {\"url\": \"https://baike.baidu.com/item/%E5%8B%87%E8%80%85%E6%AD%BB%E4%BA%86%EF%BC%81/60939827?fromModule=lemma-qiyi_sense-lemma\", \"name\": \"Baidu Baike\"}, {\"url\": \"https://movie.douban.com/subject/35885091/\", \"name\": \"Douban\"}]', '', 1, 1, 1, '2023-06-21 15:16:36', '2023-06-21 15:16:36', NULL),
(9, 50307, 'Tonikaku Kawaii 2nd Season', 'トニカクカワイイ', '', 'Comedy,Romance,Shounen', 1, 1, 1, 1, '12', 'In the wake of their first home burning down, Nasa and Tsukasa Yuzaki are seeking temporary shelter at the Arisugawas\' bathhouse. Though they have only been married for a short time, their relationship has only become sweeter by the day. Nasa is determined to spend as much time with his wife as possible, basking in the happiness of their marriage.\r\n\r\nThe newlyweds find new ways to explore their relationship. From adopting a cat, going to an amusement park, and even watching an impromptu romantic comedy featuring Nasa\'s former teacher, every day is a new experience. But while Tsukasa continues to meet the people in Nasa\'s life, Nasa has yet to meet more of Tsukasa\'s family. Though they appear to be the picture-perfect couple to everyone around them, Nasa begins to wonder if he will ever learn more about his wife\'s mysterious past.\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/1996/133361l.jpg', 'https://cdn.myanimelist.net/images/anime/1996/133361l.jpg', '2023', 2, 3, '7.81', 0, 1, 0, 0, '23 min per ep', 'https://www.youtube.com/watch?v=cksQYKGvr6U', '2023-04-08', '2023-06-24', 'Seven Arcs', 'Shogakukan-Shueisha Productions,Warner Bros. Japan,KlockWorx,Shogakukan,Crunchyroll', '[{\"url\": \"http://tonikawa.com/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/tonikawa_anime\", \"name\": \"@tonikawa_anime\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=16961\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=24951\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/Fly_Me_to_the_Moon_(manga)#Anime\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E3%83%88%E3%83%8B%E3%82%AB%E3%82%AF%E3%82%AB%E3%83%AF%E3%82%A4%E3%82%A4#%E3%82%A2%E3%83%8B%E3%83%A1\", \"name\": \"Wikipedia\"}, {\"url\": \"https://cal.syoboi.jp/tid/6669\", \"name\": \"Syoboi\"}]', '', 1, 1, 1, '2023-06-21 15:16:49', '2023-06-21 15:16:49', NULL),
(10, 2928, '.hack//G.U. Returner', '.HACK//G.U. RETURNER', '', 'Adventure,Drama,Fantasy,Video Game', 3, 1, 2, 1, '1', 'The characters from previous .hack//G.U. Games and .hack//Roots receive an email from Ovan. He is requesting them to go to Hidden Forbidden Festival where is set up a mysterious summer festival. There they find an AIDA Chim Chim who wishes to peacefully co-exist with the other players of The World. It then transforms into the word \"Returner\", so they assume it to mean that Ovan will return to The World.\r\n\r\n(Source: ANN)', 'https://cdn.myanimelist.net/images/anime/1798/115989l.jpg', 'https://cdn.myanimelist.net/images/anime/1798/115989l.jpg', '2007', 1, 3, '6.67', 0, 1, 0, 0, '24 min', '', '2007-01-18', '', 'Bee Train', 'Bandai Visual,CyberConnect2', '[{\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=5391\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=9179\", \"name\": \"ANN\"}]', '', 2, 2, 2, '2023-06-21 15:17:05', '2023-06-21 15:17:05', NULL),
(11, 51693, 'Kaminaki Sekai no Kamisama Katsudou', '神無き世界のカミサマ活動', 'Kamikatsu, What God Does in a World Without Gods', 'Action,Comedy,Fantasy,Isekai,Parody,Reincarnation,Seinen', 1, 1, 1, 1, '12', 'Under the belief that the omnipotent god Mitama will come to save him, Yukito Urabe participates in a ritual to become the new leader of his father\'s cult. But when the boy drowns during the ritual, he wishes to be reborn in a world without gods or religion.\r\n\r\nReawakening in a completely different world devoid of spirituality. He meets a deviant girl named Aruaru, who introduces him to her village. However, his idyllic image of this world\'s society is short-lived when he witnesses a public group suicide and learns of the country\'s end-of-life system: at any moment, the government may order any citizen to die.\r\n\r\nAruaru and her sister are forcibly taken for execution soon after, prompting Yukito to rush to their rescue—but to no avail. In a moment of desperation, Yukito recalls his father\'s teachings and utters a prayer for Mitama to save them. Seemingly answering his call, a little girl descends from the sky and annihilates everyone who harmed Yukito and his friends. To Yukito\'s surprise, the girl introduces herself as Mitama.\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/1794/135148l.jpg', 'https://cdn.myanimelist.net/images/anime/1794/135148l.jpg', '2023', 2, 4, '6.79', 0, 1, 0, 0, '23 min per ep', 'https://www.youtube.com/watch?v=MD_q7xYb-Xs', '2023-04-06', '2023-07-06', 'Studio Palette', 'Lantis,DAX Production,Kansai Telecasting,BS NTV,Kadokawa,MAGNET,Bandai Namco Music Live', '[{\"url\": \"https://kamikatsu-anime.jp/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/kamikatsu_anime\", \"name\": \"@kamikatsu_anime\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=17337\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=25576\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/Kaminaki_Sekai_no_Kamisama_Katsud%C5%8D#Anime\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E7%A5%9E%E7%84%A1%E3%81%8D%E4%B8%96%E7%95%8C%E3%81%AE%E3%82%AB%E3%83%9F%E3%82%B5%E3%83%9E%E6%B4%BB%E5%8B%95\", \"name\": \"Wikipedia\"}, {\"url\": \"https://cal.syoboi.jp/tid/6659\", \"name\": \"Syoboi\"}]', '', 19, 19, 19, '2023-06-21 15:17:21', '2023-06-21 15:17:21', NULL),
(12, 5525, '07-Ghost', 'セブンゴースト', '07 Ghost, Seven Ghost, 7 Ghosts, The Seven Ghosts', 'Action,Fantasy,Military,Mythology,Josei', 1, 1, 2, 1, '25', 'Barsburg Empire\'s Military Academy is known for training elites who bring victory to the empire. Students of the academy freely utilize an ability called \"Zaiphon\" to fight, while the types of Zaiphon usable depends on the nature of the soldier.\r\n\r\nTeito Klein, a student at the academy, is one of the most promising soldiers produced. Although ridiculed by everyone for being a sklave (German for slave) with no memories of his past, he is befriended by a fellow student called Mikage. While preparing for the final exam, Teito uncovers a dark secret related to his past. When an attempt to assassinate Ayanami, a high-ranking official who killed his father, fails, Teito is locked away awaiting punishment.\r\n\r\nOnly wanting the best for Teito, Mikage helps him escape. Teito ends up at the 7th District Church where he is taken in by the bishops. It is here that Teito attempts to evade the grasp of Ayanami and the Military, so he can rediscover his memories and learn why he is the person that can change the fate of the world.\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/3/22605l.jpg', 'https://cdn.myanimelist.net/images/anime/3/22605l.jpg', '2009', 2, 3, '7.19', 0, 1, 0, 0, '23 min per ep', 'https://www.youtube.com/watch?v=vRjlJDDfhJI', '2009-04-07', '2009-09-22', 'Studio Deen', 'Ichijinsha', '[{\"url\": \"http://07-ghost.net/\", \"name\": \"Official Site\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=6239\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=10468\", \"name\": \"ANN\"}, {\"url\": \"http://en.wikipedia.org/wiki/07_Ghost\", \"name\": \"Wikipedia\"}]', '', 0, 0, 0, '2023-06-21 15:17:36', '2023-06-21 15:17:36', NULL),
(13, 50220, 'Isekai Shoukan wa Nidome desu', '異世界召喚は二度目です', 'Isenido', 'Adventure,Comedy,Fantasy,Romance,Harem,Isekai', 1, 1, 1, 2, '12', 'There was once a man who was summoned to another world, and saved it. Of course, he became too popular there, and turned into an isekai-normie. However, that man fell into a \"trap\" and was forcibly returned to his original world. Moreover, he had to start over as a baby!\r\n\r\nThis is the story of the way-too-fantastic ex-hero who lived as a gloomy high-schooler, as he gets summoned once again to that same other world in a very unexpected development! \r\n\r\n(Source: Coolmic, edited)', 'https://cdn.myanimelist.net/images/anime/1387/134151l.jpg', 'https://cdn.myanimelist.net/images/anime/1387/134151l.jpg', '2023', 2, 3, '6', 0, 1, 0, 0, '23 min per ep', 'https://www.youtube.com/watch?v=FNoriLaH0IM', '2023-04-09', '2023-06-25', 'Studio Elle', 'Futabasha,BS11,ABC Animation,Jinnan Studio,Bushiroad Move,Crest', '[{\"url\": \"https://isenido.com/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/isenido_anime\", \"name\": \"@isenido_anime\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=16936\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=24905\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/Isekai_Sh%C5%8Dkan_wa_Nidome_Desu\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E7%95%B0%E4%B8%96%E7%95%8C%E5%8F%AC%E5%96%9A%E3%81%AF%E4%BA%8C%E5%BA%A6%E7%9B%AE%E3%81%A7%E3%81%99#%E3%83%86%E3%83%AC%E3%83%93%E3%82%A2%E3%83%8B%E3%83%A1\", \"name\": \"Wikipedia\"}, {\"url\": \"https://cal.syoboi.jp/tid/6630\", \"name\": \"Syoboi\"}, {\"url\": \"https://bangumi.tv/subject/354421\", \"name\": \"Bangumi\"}, {\"url\": \"https://baike.baidu.com/item/%E7%AC%AC%E4%BA%8C%E6%AC%A1%E8%A2%AB%E5%BC%82%E4%B8%96%E7%95%8C%E5%8F%AC%E5%94%A4/61838780?fromModule=lemma-qiyi_sense-lemma\", \"name\": \"Baidu Baike\"}, {\"url\": \"https://movie.douban.com/subject/35639789/\", \"name\": \"Douban\"}]', '', 4, 4, 4, '2023-06-21 15:17:53', '2023-06-21 15:17:53', NULL),
(19, 49470, 'Mamahaha no Tsurego ga Motokano datta', '継母の連れ子が元カノだった', 'My Stepsister is My Ex-Girlfriend, Tsurekano', 'Comedy,Romance', 1, 1, 2, 2, '12', 'Listless geek Mizuto Irido and introverted nerd Yume Ayai seemed like a match made in heaven, connected by their mutual love for literature. Unfortunately, their differences gradually grew, and they separated just after their middle school graduation. But, as if by divine comedy, the two find themselves reunited as step-siblings.\r\n\r\nA rivalry begins to brew between the former couple, both unwilling to acknowledge the other as the older sibling. In an attempt to \"solve\" this issue, Mizuto and Yume agree upon a rule: whoever crosses the boundaries of siblinghood norms loses, and the winner will not only be called the older sibling, but also get to make a request. However, now that they live under the same roof, the lingering memories they share start to influence their actions—possibly rekindling the feelings that may not have been fully extinguished in the first place.\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/1708/123281l.jpg', 'https://cdn.myanimelist.net/images/anime/1708/123281l.jpg', '2022', 3, 3, '6.77', 0, 1, 0, 0, '23 min per ep', 'https://www.youtube.com/watch?v=QHTffxJep_E', '2022-07-06', '2022-09-21', 'Project No.9', 'Sotsu,Pony Canyon,Movic,AT-X,KlockWorx,Asmik Ace,BS Fuji,DMM pictures,BS NTV,Kadokawa,Yomiuri Shimbun,APDREAM,Bit grooove promotion,Happinet Phantom Studios,Bergamo', '[{\"url\": \"https://tsurekano-anime.com/\", \"name\": \"Official Site\"}, {\"url\": \"https://twitter.com/tsurekano\", \"name\": \"@tsurekano\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=16457\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=24548\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/My_Stepmom\'s_Daughter_Is_My_Ex#Anime\", \"name\": \"Wikipedia\"}, {\"url\": \"https://ja.wikipedia.org/wiki/%E7%B6%99%E6%AF%8D%E3%81%AE%E9%80%A3%E3%82%8C%E5%AD%90%E3%81%8C%E5%85%83%E3%82%AB%E3%83%8E%E3%81%A0%E3%81%A3%E3%81%9F\", \"name\": \"Wikipedia\"}, {\"url\": \"https://cal.syoboi.jp/tid/6367\", \"name\": \"Syoboi\"}, {\"url\": \"https://bangumi.tv/subject/343106\", \"name\": \"Bangumi\"}, {\"url\": \"https://movie.douban.com/subject/35539827/\", \"name\": \"Douban\"}]', '', 22, 22, 22, '2023-06-21 19:29:03', '2023-06-21 19:29:03', NULL),
(20, 20785, 'Mahouka Koukou no Rettousei', '魔法科高校の劣等生', '', 'Action,Fantasy,Romance,Sci-Fi,School', 1, 1, 2, 2, '26', 'In the dawn of the 21st century, magic, long thought to be folklore and fairy tales, has become a systematized technology and is taught as a technical skill. In First High School, the institution for magicians, students are segregated into two groups based on their entrance exam scores: \"Blooms,\" those who receive high scores, are assigned to the First Course, while \"Weeds\" are reserve students assigned to the Second Course.\r\n\r\nMahouka Koukou no Rettousei follows the siblings, Tatsuya and Miyuki Shiba, who are enrolled in First High School. Upon taking the exam, the prodigious Miyuki is placed in the First Course, while Tatsuya is relegated to the Second Course. Though his practical test scores and status as a \"Weed\" show him to be magically inept, he possesses extraordinary technical knowledge, physical combat capabilities, and unique magic techniques—making Tatsuya the irregular at a magical high school.\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/11/61039l.jpg', 'https://cdn.myanimelist.net/images/anime/11/61039l.jpg', '2014', 2, 3, '7.41', 0, 1, 0, 0, '23 min per ep', 'https://www.youtube.com/watch?v=v5AOTuxt2XY', '2014-04-06', '2014-09-28', 'Madhouse', 'Aniplex,Square Enix,Movic,ASCII Media Works', '[{\"url\": \"http://mahouka.jp/tv/\", \"name\": \"Official Site\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=10182\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=15763\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/The_Irregular_at_Magic_High_School\", \"name\": \"Wikipedia\"}]', '', 40, 40, 40, '2023-06-21 21:27:02', '2023-06-21 21:27:02', NULL),
(21, 40496, 'Maou Gakuin no Futekigousha: Shijou Saikyou no Maou no Shiso, Tensei shite Shison-tachi no Gakkou e Kayou', '魔王学院の不適合者 ～史上最強の魔王の始祖、転生して子孫たちの学校へ通う～', 'The Misfit of Demon King Academy: History\'s Strongest Demon King Reincarnates and Goes to School with His Descendants', 'Action,Fantasy,Mythology,Reincarnation,School', 1, 1, 2, 2, '13', 'In the distant past, a war between humans and demons brought about widespread chaos and bloodshed. To put an end to this seemingly endless conflict, Demon King Anos Voldigoad willingly sacrificed his life, hoping to be reborn in a peaceful future.\r\n\r\nIn preparation for their king\'s return, the demon race created the Demon King Academy, an elite institution tasked with determining Anos\' identity when he reawakens. He reincarnates two millennia later, but to his surprise, he soon learns that the level of magic in the world has drastically waned during his absence. Moreover, when he enrolls at the academy to reclaim his rightful title, he finds out that demonkind remembers him differently. His personality, his deeds, and even his legacy are all falsified—masked beneath the name of an impostor. This \"lack\" of common knowledge renders him the academy\'s outlier—a misfit never before seen in history.\r\n\r\nDespite these drawbacks, Anos remains unfazed. As he sets out to uncover those altering his glorious past, he takes it upon himself to make his descendants recognize that their ruler has finally returned.\r\n\r\n[Written by MAL Rewrite]', 'https://cdn.myanimelist.net/images/anime/1126/108573l.jpg', 'https://cdn.myanimelist.net/images/anime/1126/108573l.jpg', '2020', 3, 4, '7.38', 0, 0, 0, 0, '23 min per ep', 'https://www.youtube.com/watch?v=1xmzzF0XQEY', '2020-07-04', '2020-09-26', 'SILVER LINK.', 'Aniplex,Movic,AT-X,Studio Mausu,Tokyo MX,Q-Tec,Docomo Anime Store,Medicos Entertainment,BS11,Contents Seed,Kadokawa,ADK Marketing Solutions', '[{\"url\": \"https://maohgakuin.com/1st/\", \"name\": \"Official Site\"}, {\"url\": \"https://anidb.net/perl-bin/animedb.pl?show=anime&aid=15131\", \"name\": \"AniDB\"}, {\"url\": \"https://www.animenewsnetwork.com/encyclopedia/anime.php?id=22555\", \"name\": \"ANN\"}, {\"url\": \"https://en.wikipedia.org/wiki/The_Misfit_of_Demon_King_Academy#Anime\", \"name\": \"Wikipedia\"}]', '', 1, 1, 1, '2023-06-27 15:34:03', '2023-06-27 15:34:03', NULL);

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
(1, 1, 'email_password', NULL, 'akaisora09@gmail.com', '$2y$10$fNW/eSalcB5LeMBF152cCO1d66QFBnVDaPNO10.xpZ8PPyW6J4a/m', NULL, NULL, 0, '2023-07-01 17:15:43', '2023-05-12 19:52:20', '2023-07-01 17:15:43'),
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb3;

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
(77, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-07-01 17:15:43', 1);

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
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12515 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `post_rep` int NOT NULL,
  `post_disrep` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `post_content` text NOT NULL,
  `post_rep` int NOT NULL,
  `post_disrep` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=1217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `episode`
--

INSERT INTO `episode` (`id`, `uid`, `ep_id_name`, `ep_name`, `ep_jname`, `ep_romaji`, `ep_aired`, `ep_pv`, `ep_view`, `ep_view_month`, `ep_view_years`, `created_at`, `updated_at`, `deleted_at`) VALUES
(152, 21, '1', 'I\'m Luffy! The Man Who\'s Gonna Be King of the Pirates!', '俺はルフィ!海賊王になる男だ!', 'Ore wa Luffy! Kaizoku Ou ni Naru Otoko Da! ', '1999-10-20', '', 53, 53, 53, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(153, 21, '2', 'Enter the Great Swordsman! Pirate Hunter Roronoa Zoro!', '大剣豪現る!海賊狩りロロノア·ゾロ', 'Daikengou Arawaru! Kaizokugari Roronoa Zoro ', '1999-11-17', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(154, 21, '3', 'Morgan versus Luffy! Who\'s the Mysterious Pretty Girl?', 'モーガンVSルフィ!謎の美少女は誰?', 'Morgan vs. Luffy! Nazo no Bishoujo wa Dare? ', '1999-11-24', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(155, 21, '4', 'Luffy\'s Past! Enter Red-Haired Shanks!', 'ルフィの過去!赤髪のシャンクス登場', 'Luffy no Kako! Akagami no Shanks Toujou ', '1999-12-08', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(156, 21, '5', 'A Terrifying Mysterious Power! Captain Buggy, the Clown Pirate!', '恐怖!謎の力·海賊道化バギー船長!', 'Kyoufu Nazo no Chikara! Kaizoku Douke Buggy-senchou! ', '1999-12-15', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(157, 21, '6', 'Desperate Situation! Beast Tamer Mohji vs. Luffy!', '絶体絶命!猛獣使いモージvsルフィ!', 'Zettai Zetsumei! Moujuutsukai Mohji VS Luffy! ', '1999-12-29', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(158, 21, '7', 'Epic Showdown! Swordsman Zoro vs. Acrobat Cabaji!', '壮絶決闘!剣豪ゾロvs曲芸のカバジ!', 'Souzetsu Kettou! Kengou Zoro vs Kyokugei no Cabaji! ', '1999-12-29', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(159, 21, '8', 'Who is the Victor? Devil Fruit Power Showdown!', '勝者はどっち?悪魔の実の能力対決!', 'Shousha wa Dotchi? Akuma no Mi no Nouryoku Taiketsu! ', '1999-12-29', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(160, 21, '9', 'The Honorable Liar? Captain Usopp!', '正義のうそつき?キャプテンウソップ', 'Seigi no Usotsuki? Captain Usopp ', '2000-01-12', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(161, 21, '10', 'The Weirdest Guy Ever! Jango the Hypnotist!', '史上最強の変な奴!催眠術師ジャンゴ', 'Shijou Saikyou no Hen na Yatsu! Saiminjutsushi Jango ', '2000-01-19', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(162, 21, '11', 'Expose the Plot! Pirate Butler, Captain Kuro!', '陰謀を暴け!海賊執事キャプテンクロ', 'Inbou wo Abake! Kaizoku Shitsuji Captain Kuro ', '2000-01-26', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(163, 21, '12', 'Clash with the Black Cat Pirates! The Great Battle on the Slope!', '激突!クロネコ海賊団坂道の大攻防!', 'Gekitotsu! Kuroneko Kaizoku-dan Sakamichi no Daikoubou! ', '2000-02-02', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(164, 21, '13', 'The Terrifying Duo! Meowban Brothers vs. Zoro!', '恐怖の二人組!ニャーバン兄弟VSゾロ', 'Kyoufu no Futarigumi! Nyaban Brothers VS Zoro ', '2000-02-09', '', 2, 2, 2, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(165, 21, '14', 'Luffy Back in Action! Miss Kaya\'s Desperate Resistance!', 'ルフィ復活!カヤお嬢様の決死の抵抗', 'Luffy Fukkatsu! Kaya-ojousama no Kesshi no Teikou ', '2000-02-16', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(166, 21, '15', 'Beat Kuro! Usopp the Man\'s Tearful Resolve!', 'クロを倒せ!男ウソップ涙の決意!', 'Kuro wo Taose! Otoko Usopp Namida no Ketsui! ', '2000-02-23', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(167, 21, '16', 'Protect Kaya! The Usopp Pirates\' Great Efforts!', 'カヤを守れ!ウソップ海賊団大活躍!', 'Kayaw wo Mamore! Usopp Kaizoku-dan dai Katsuyaku! ', '2000-03-01', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(168, 21, '17', 'Angry Explosion! Kuro vs. Luffy! How it Ends!', '怒り爆発!クロVSルフィ決着の行方!', 'Ikari Bakuhatsu! Kuro vs Luffy Ketchaku no Yukue! ', '2000-03-08', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(169, 21, '18', 'You\'re the Weird Creature! Gaimon and His Strange Friends!', 'あんたが珍獣!ガイモンと奇妙な仲間', 'Anta ga Chinju! Gaimon to Kimyou na Nakama ', '2000-03-15', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(170, 21, '19', 'The Three-Sword Style\'s Past! Zoro and Kuina\'s Vow!', '三刀流の過去!ゾロとくいなの誓い!', 'Santouryuu no Kako! Zoro to Kuina no Chikai! ', '2000-03-22', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(171, 21, '20', 'Famous Cook! Sanji of the Sea Restaurant!', '名物コック!海上レストランのサンジ', 'Meibutsu Kokku! Kaijou Restaurant no Sanji ', '2000-04-12', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(172, 21, '21', 'Unwelcome Customer! Sanji\'s Food and Gin\'s Debt!', '招かれざる客!サンジの飯とギンの恩', 'Manekarezaru Kyaku! Sanji no Meshi to Gin no On ', '2000-04-12', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(173, 21, '22', 'The Strongest Pirate Fleet! Commodore Don Krieg!', '最強の海賊艦隊!提督ドン·クリーク', 'Saikyou no Kaizoku Kantai! Teitoku Don Krieg ', '2000-04-26', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(174, 21, '23', 'Protect Baratie! The Great Pirate, Red Foot Zeff!', '守れバラティエ!大海賊·赫足のゼフ', 'Mamore Baratie! Dai Kaizoku: Akaashi no Zeff ', '2000-05-03', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(175, 21, '24', 'Hawk-Eye Mihawk! The Great Swordsman Zoro Falls At Sea!', '鷹の目のミホーク!剣豪ゾロ海に散る', 'Taka no Me no Mihawk! Kengou Zoro Umi ni Chiru ', '2000-05-10', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(176, 21, '25', 'The Deadly Foot Technique Bursts Forth! Sanji vs. The Invincible Pearl!', '必殺足技炸裂!サンジVS鉄壁のパール', 'Hissatsu Ashiwaza Sakuretsu! Sanji vs Teppeki no Pearl ', '2000-05-17', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(177, 21, '26', 'Zeff and Sanji\'s Dream! The Illusory All Blue!', 'ゼフとサンジの夢·幻のオールブルー', 'Zeff to Sanji no Yume Maboroshi no All Blue ', '2000-05-24', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(178, 21, '27', 'Cool-headed, Cold-hearted Demon! Pirate Fleet Chief Commander Gin!', '冷徹非情の鬼人·海賊艦隊総隊長ギン', 'Reitetsu Hijou no Kijin Kaizoku Kantai Souchou Gin ', '2000-05-31', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(179, 21, '28', 'I Won\'t Die! Fierce Battle, Luffy vs. Krieg!', '死なねェよ!激闘ルフィVSクリーク!', 'Shinanee yo! Gekitou Luffy vs Krieg! ', '2000-06-07', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(180, 21, '29', 'The Conclusion of the Deadly Battle! A Spear of Blind Determination!', '決闘の決着!腹にくくった1本の槍!', 'Shitou no Ketchaku! Hara ni Kukutta Ippon no Yari! ', '2000-06-21', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(181, 21, '30', 'Set Sail! The Seafaring Cook Sets off With Luffy!', '旅立ち!海のコックはルフィとともに', 'Tabidachi! Umi no Kokku wa Luffy to Tomo Ni ', '2000-06-28', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(182, 21, '31', 'The Worst Man in the Eastern Seas! Fishman Pirate Arlong!', '東の海最悪の男!魚人海賊アーロン!', 'Higashi no Umi Saiaku no Otoko! Gyojin Kaizoku Arlong! ', '2000-07-12', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(183, 21, '32', 'Witch of Cocoyashi Village! Arlong\'s Female Leader!', 'ココヤシ村の魔女!アーロンの女幹部', 'Kokoyashi Mura no Majo! Arlong no Onna Kanbu ', '2000-07-19', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(184, 21, '33', 'Usopp Dead?! When is Luffy Going to Make Landfall?!', 'ウソップ死す!?ルフィ上陸はまだ?', 'Usopp Shisu? Luffy Jouriku wa Mada? ', '2000-07-19', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(185, 21, '34', 'Everyone\'s Gathered! Usopp Speaks the Truth About Nami!', '全員集結!ウソップが語るナミの真実', 'Zenin Shuuketsu! Usopp ga Kataru Nami no Shinjitsu ', '2000-07-26', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(186, 21, '35', 'Untold Past! Female Warrior Bellemere!', '秘められた過去!女戦士ベルメール!', 'Himerareta Kako! Onna Senshi Bellemere! ', '2000-08-02', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(187, 21, '36', 'Survive! Mother Bellemere and Nami\'s Bond!', '生き抜け!母ベルメールとナミの絆!', 'Ikinuke! Haha Bellemere to Nami no Kizuna! ', '2000-08-09', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(188, 21, '37', 'Luffy Rises! Result of the Broken Promise!', 'ルフィ立つ!裏切られた約束の結末', 'Luffy Tatsu! Uragirareta Yakusoku no Ketsumatsu! ', '2000-08-16', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(189, 21, '38', 'Luffy in Big Trouble! Fishmen vs. the Luffy Pirates!', 'ルフィ大ピンチ!魚人VSルフィ海賊団', 'Luffy Dai Pinchi! Gyojin vs Luffy Kaizoku-dan ', '2000-08-23', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(190, 21, '39', 'Luffy Submerged! Zoro vs. Hatchan the Octopus!', 'ルフィ水没!ゾロVSタコのはっちゃん', 'Luffy Suibotsu! Zoro vs Tako no Hatchan ', '2000-08-30', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(191, 21, '40', 'Proud Warriors! Sanji and Usopp\'s Fierce Battles!', '誇り高き戦士!激闘サンジとウソップ', 'Hokori Takaki Senshi! Gekitou Sanji to Usopp ', '2000-09-06', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(192, 21, '41', 'Luffy at Full Power! Nami\'s Determination and the Straw Hat!', 'ルフィ全開!ナミの決意と麦わら帽子', 'Luffy Zenkai! Nami no Ketsui to Mugiwara Boushi ', '2000-09-13', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(193, 21, '42', 'Explosion! Fishman Arlong\'s Fierce Assault From the Sea!', '炸裂!魚人アーロン海からの猛攻撃!', 'Sakuretsu! Gyojin Arlong Umi Kara no Moukougeki! ', '2000-09-27', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(194, 21, '43', 'End of the Fishman Empire! Nami\'s My Friend!', '魚人帝国の終り!ナミは俺の仲間だ!', 'Gyojin Teikoku no Owari! Nami wa Ore no Nakama da! ', '2000-09-27', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(195, 21, '44', 'Setting Out with a Smile! Farewell, Hometown Cocoyashi Village!', '笑顔の旅立ち!さらば故郷ココヤシ村', 'Egao no Tabitachi! Saraba Kokyou Cocoyashi Mura ', '2000-10-11', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(196, 21, '45', 'Bounty! Straw Hat Luffy Becomes Known to the World!', '賞金首!麦わらのルフィ世に知れ渡る', 'Shoukinkubi! Mugiwara no Luffy yo ni Shirewataru ', '2000-10-25', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(197, 21, '46', 'Chase Straw Hat! Little Buggy\'s Big Adventure!', '麦わらを追え!小さなバギーの大冒険', 'Mugiwara wo Oe! Chiisana Buggy no Dai Bouken ', '2000-11-01', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(198, 21, '47', 'The Wait is Over! The Return of Captain Buggy!', 'お待ちかね!ああ復活のバギー船長', 'Omachi Ka Ne! Aa Fukkatsu no Buggy Senchou ', '2000-11-08', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(199, 21, '48', 'The Town of the Beginning and the End! Landfall at Logue Town!', '始まりと終わりの町·ローグタウン上陸', 'Hajimari to Owari no Machi: Logue Town Jouriku ', '2000-11-22', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(200, 21, '49', 'Kitetsu III and Yubashiri! Zoro’s New Swords and the Woman Sergeant Major!', '三代鬼徹と雪走!ゾロの新刀と女曹長', 'Sandai Kitetsu to Yubashiri! Zoro no Shintou to Josouchou ', '2000-11-22', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(201, 21, '50', 'Usopp vs. Daddy the Parent! Showdown at High!', 'ウソップVS子連れのダディ真昼の決闘', 'Usopp vs Kozure no Dadi Mahiru no Kettou ', '2000-11-29', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(202, 21, '51', 'Fiery Cooking Battle? Sanji vs. the Beautiful Chef!', '炎の料理バトル?サンジVS美人シェフ', 'Hono no Ryouri Battle? Sanji vs Bijin Chef ', '2000-12-06', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(203, 21, '52', 'Buggy\'s Revenge! The Man Who Smiles On the Execution Platform!', 'バギーのリベンジ!処刑台で笑う男!', 'Buggy no Revenge! Shokeidai de Warau Otoko! ', '2000-12-13', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(204, 21, '53', 'The Legend Has Started! Head for the Grand Line!', '伝説は始まった!目指せ偉大なる航路', 'Densetsu wa Hajimatta! Mezase Idai Naru Kouro ', '2001-01-10', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(205, 21, '54', 'Precursor to a New Adventure! Apis, a Mysterious Girl!', '新たなる冒険の予感!謎の少女アピス', 'Arata Naru Bouken no Yokan! Nazo no Shoujo Apis ', '2001-01-17', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(206, 21, '55', 'Miraculous Creature! Apis\' Secret and the Legendary Island!', '奇跡の生物!アピスの秘密と伝説の島', 'Kiseki no Ikimono! Apis no Himitsu to Densetsu no Shima ', '2001-01-24', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(207, 21, '56', 'Eric Attacks! Great Escape from Warship Island!', 'エリック出撃!軍艦島からの大脱出!', 'Eric Shutsugeki! Gunkanjima Kara no Dai Dasshutsu! ', '2001-01-31', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(208, 21, '57', 'A Solitary Island in the Distant Sea! The Legendary Lost Island!', '絶海の孤島!伝説のロストアイランド', 'Zekkai no Kotou! Densetsu no Lost Island ', '2001-02-07', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(209, 21, '58', 'Showdown in the Ruins! Tense Zoro vs. Eric!', '廃虚の決闘!緊迫のゾロVSエリック', 'Haikyou no Kettou! Kinpaku no Zoro vs Eric! ', '2001-02-21', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(210, 21, '59', 'Luffy, Completely Surrounded! Commodore Nelson\'s Secret Strategy!', 'ルフィ完全包囲!提督ネルソンの秘策', 'Luffy Kanzen Houi! Teitoku Nelson no Hissaku ', '2001-02-21', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(211, 21, '60', 'Through the Sky They Soar! The 1000 Year Legend Lives Again!', '大空を舞うもの!甦る千年の伝説', 'Ousora wo Mau Mono! Yomigaeru Sennen no Densetsu! ', '2001-02-28', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(212, 21, '61', 'An Angry Showdown! Cross the Red Line!', '怒りの決着!赤い大陸を乗り越えろ!', 'Ikari no Ketchaku! Akai Dairiku wo Norikoero! ', '2001-03-07', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(213, 21, '62', 'The First Line of Defense? The Giant Whale Laboon Appears!', '最初の砦?巨大クジラ·ラブーン現る', 'Sasho no Toride? Kyodai Kujira Laboon Arawareru ', '2001-03-21', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(214, 21, '63', 'A Promise Between Men! Luffy and the Whale Vow to Meet Again!', '男の約束! ルフィとクジラ再会の誓い', 'Otoko no Yakusoku! Luffy to Kujira Saikai no Chikai ', '2001-03-21', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(215, 21, '64', 'A Town that Welcomes Pirates? Setting Foot on Whisky Peak!', '海賊歓迎の町? ウイスキーピーク上陸', 'Kaizoku Kangei no Machi? Whisky Jouriku ', '2001-04-15', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(216, 21, '65', 'Explosion! The Three Swords Style! Zoro vs. Baroque Works!', '炸裂三刀流! ゾロVSバロックワークス', 'Sakuretsu Santouryuu! Zoro vs Baroque Works ', '2001-04-15', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(217, 21, '66', 'All Out Battle! Luffy vs. Zoro, Mysterious Grand Duel!', '真剣勝負! ルフィVSゾロ謎の大決闘!', 'Shinken Shoubu! Luffy vs Zoro Nazo no Dai Kettou ', '2001-04-22', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(218, 21, '67', 'Deliver Princess Vivi! The Luffy Pirates Set Sail!', '王女ビビを届けろ! ルフィ海賊団出航', 'Oujo Vivi wo Todokero! Luffy Kaizoku Dan Shukkou ', '2001-04-29', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(219, 21, '68', 'Try Hard, Coby! Coby and Helmeppo\'s Struggles in the Marines!', '頑張れコビー! コビメッポ海軍奮闘記', 'Ganbare Coby! Coby-Meppo Kaigun Funtouki ', '2001-05-13', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(220, 21, '69', 'Coby and Helmeppo\'s Resolve! Vice-Admiral Garp\'s Parental Affection!', 'コビメッポの決意! ガープ中将の親心', 'Coby-Meppo no Ketsui! Garp Chuushou no Oyagokoro ', '2001-05-20', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(221, 21, '70', 'An Ancient Island! The Shadow Hiding in Little Garden!', '太古の島! リトルガーデンに潜む影!', 'Taiko no Shima! Little Garden ni Hisomu Kage! ', '2001-05-27', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(222, 21, '71', 'Huge Duel! The Giants Dorry and Brogy!', 'でっかい決闘! 巨人ドリーとブロギー', 'Dekkai Kettou! Kyojin Dorry to Brogy ', '2001-06-03', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(223, 21, '72', 'Luffy Gets Angry! A Dirty Trick Violates the Sacred Duel!', 'ルフィ怒る! 聖なる決闘に卑劣な罠', 'Luffy Okoru! Seinaru Kettou ni Hiretsu na Wana ', '2001-06-17', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(224, 21, '73', 'Broggy\'s Bitter Tears of Victory! The Conclusion of Elbaf!', 'ブロギー勝利の号泣! エルバフの決着', 'Broggy Shouri no Goukyuu! Elbaf no Ketchaku! ', '2001-06-24', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(225, 21, '74', 'The Devilish Candle! Tears of Regret and Tears of Anger!', '魔のキャンドル! 無念の涙と怒りの涙', 'Ma no Candle! Munen no Namida to Okari no Namida ', '2001-07-15', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(226, 21, '75', 'A Hex on Luffy! Colors Trap!', 'ルフィを襲う魔力! カラーズトラップ', 'Luffy wo Osou Maryoku! Colors Trap! ', '2001-08-12', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(227, 21, '76', 'Time to Fight Back! Usopp\'s Quick Thinking and Fire Star!', 'いざ反撃! ウソップの機転と火炎星!', 'Iza Hangeki! Usopp no Kiten to Kaenboshi! ', '2001-08-19', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(228, 21, '77', 'Farewell Giant Island! Head for Alabasta!', 'さらば巨人の島! アラバスタを目指せ', 'Saraba Kyojin no Shima! Alabasta wo Mezase ', '2001-08-19', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(229, 21, '78', 'Nami\'s Sick? Beyond the Snow Falling on the Sea!', 'ナミが病気?海に降る雪の向こうに!', 'Nami ga Byouki? Umi ni Furu Yuki no Mukou ni! ', '2001-08-26', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(230, 21, '79', 'A Raid! The Bliking and Blik Wapol!', '奇襲!ブリキング号とブリキのワポル', 'Kishuu! Bliking Gou to Blik no Wapol ', '2001-09-02', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(231, 21, '80', 'An Island without Doctors? Adventure in a Nameless Land!', '医者のいない島?名も無き国の冒険!', 'Isha no Inai Shima? Na mo Naki Kuni no Bouken ', '2001-09-09', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(232, 21, '81', 'Are You Happy? The Doctor Called Witch!', 'ハッピーかい?魔女と呼ばれた医者!', 'Happy Kai? Majo to Yobareta Isha! ', '2001-09-16', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(233, 21, '82', 'Dalton\'s Resolve! Wapol\'s Corps Lands on the Island!', 'ドルトンの覚悟!ワポル軍団島に上陸', 'Dalton no Kakugo! Wapol Gundan Shima ni Jouriku ', '2001-10-07', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(234, 21, '83', 'The Island Where Snow Lives! Climb the Drum Rockies!', '雪の住む島!ドラムロッキーを登れ!', 'Yuki no Sumi Shima! Drum Rockies wo Nobore! ', '2001-10-07', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(235, 21, '84', 'Blue-nosed Reindeer! Chopper\'s Secret!', 'トナカイは青っ鼻!チョッパーの秘密', 'Tonakai wa Aoppana! Chopper no Himitsu! ', '2001-10-21', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(236, 21, '85', 'An Outcast\'s Dream! Hiluluk the Quack!', 'はみだし者の夢!やぶ医者ヒルルク!', 'Hamidashimono no Yume! Yabu Isha Hiluluk! ', '2001-10-28', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(237, 21, '86', 'Hiluluk\'s Cherry Blossoms and the Will that Gets Carried On!', 'ヒルルクの桜と受け継がれゆく意志!', 'Hiluluk no Sakura to Uketsugare Yuku Ishi! ', '2001-11-04', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(238, 21, '87', 'Fight Wapol\'s Crew! The Power of the Munch Munch Fruit!', 'VSワポル軍団!バクバクの実の能力!', 'VS Wapol Gundan! Bakubaku no mi no Nouryoku! ', '2001-11-11', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(239, 21, '88', 'Zoan-type Devil Fruit! Chopper\'s Seven-form Transformation!', '動物系悪魔の実!チョッパー七段変形', 'Zoan Kei Akuma no mi! Chopper Shichidan Hengei ', '2001-11-18', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(240, 21, '89', 'When the Kingdom\'s Rule Ends! The Flag of Faith Flies Forever!', '王国の支配終る時!信念の旗は永遠に', 'Oukoku no Shihai Owaru Toki! Shinnen no Hata wa Eien ni ', '2001-11-25', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(241, 21, '90', 'Hiluluk\'s Cherry Blossoms! Miracle in the Drum Rockies!', 'ヒルルクの桜!ドラムロッキーの奇跡', 'Hiluluk no Sakura! Drum Rockies no Kiseki ', '2001-12-02', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(242, 21, '91', 'Goodbye Drum Island! I\'m Going Out to Sea!', 'さようならドラム島!僕は海へ出る!', 'Sayounara Drum-tou! Boku wa Umi e Deru! ', '2001-12-09', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(243, 21, '92', 'Alabasta\'s Hero and a Ballerina on the Ship!', 'アラバスタの英雄と船上のバレリーナ', 'Alabasta no Eiyuu to Senjou no Ballerina ', '2001-12-09', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(244, 21, '93', 'Off to the Desert Kingdom! The Rain-Summing Powder and the Rebel Army!', 'いざ砂漠の国へ!雨を呼ぶ粉と反乱軍', 'Iza Sabaku no Kuni e! Ame wo Yobu Kona to Hanrangun ', '2001-12-16', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(245, 21, '94', 'The Reunion of Heroes! His Name is Fire Fist Ace!', '豪傑達の再会!奴の名は火拳のエース', 'Gouketsutachi no Saikai! Yatsu no na wa Hiken no Ace ', '2001-12-23', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(246, 21, '95', 'Ace and Luffy! Hot Emotions and Brotherly Bonds!', 'エースとルフィ!熱き想いと兄弟の絆', 'Ace to Luffy! Atsuki Omoi to Kyoudai no Kizuna ', '2002-01-06', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(247, 21, '96', 'Erumalu, the City of Green and the Kung Fu Dugongs!', '緑の町エルマルとクンフージュゴン!', 'Midori no Machi Erumalu to Kung fu Jugon! ', '2002-01-13', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(248, 21, '97', 'Adventure in the Country of Sand! The Monsters that Live in the Scorching Land!', '砂の国の冒険!炎熱の大地に棲む魔物', 'Suna no Kuni no Bouken! Ennetsu no Daichi ni Sugomu Mamono ', '2002-01-20', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(249, 21, '98', 'Enter the Desert Pirates! The Men Who Live Freely!', '砂漠の海賊団登場!自由に生きる男達', 'Sabaku no Kaizokudan Toujou! Jiyuu ni Ikiru Otokotachi ', '2002-01-27', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(250, 21, '99', 'False Fortitude! Camu, Rebel Soldier at Heart!', 'ニセモノの意地!心の反乱軍カミュ!', 'Nisemono no Iji! Kokoro no Hanrangun Kamyu! ', '2002-02-03', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(251, 21, '100', 'Rebel Warrior Kohza! The Dream Vowed to Vivi!', '反乱軍戦士コーザ!ビビに誓った夢!', 'Hanrangun Senshi Kohza! Vivi ni Chikatta Yume! ', '2002-02-10', '', 0, 0, 0, '2023-06-27 16:25:04', '2023-06-27 16:25:04', NULL),
(252, 21, '101', 'Showdown in a Heat Haze! Ace vs. the Gallant Scorpion!', '陽炎の決闘!エースVS男スコーピオン', 'Youen no Kettou! Ace vs Otoko Scorpion ', '2002-02-17', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(253, 21, '102', 'Ruins and Lost Ways! Vivi, Her Friends, and the Country\'s Form!', '遺跡と迷子!ビビと仲間と国のかたち', 'Kiseki to Maigo! Vivi to Nakama to Kuni no Katachi ', '2002-02-24', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(254, 21, '103', 'Spiders Café at 8 o\'Clock! The Enemy Leaders Gather!', 'スパイダーズカフェに8時敵幹部集合', 'Spider\'s Café ni Hachiji Teki Kanbu Shuugou ', '2002-03-03', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(255, 21, '104', 'Luffy vs. Vivi! The Tearful Vow to Put Friends on the Line!', 'ルフィVSビビ!仲間に賭ける涙の誓い', 'Luffy vs Vivi! Nakama ni Kakeru Namida no Chikai ', '2002-03-10', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(256, 21, '105', 'The Battlefront of Alabasta! Rainbase, the City of Dreams!', 'アラバスタ戦線!夢の町レインベース', 'Alabasta Sensen! Yume no Machi Rainbase! ', '2002-03-17', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(257, 21, '106', 'The Trap of Certain Defeat! Storming Raindinners!', '絶体絶命の罠!レインディナーズ突入', 'Zettai Zetsumei no Wana! Rain Dinners Totsunyuu ', '2002-03-24', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(258, 21, '107', 'Operation Utopia Commences! The Swell of Rebellion Stirs!', 'ユートピア作戦発動!動き出した反乱', 'Utopia Sakusen Hatsudou! Ugokidashita Hanran ', '2002-04-14', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(259, 21, '108', 'The Terrifying Banana Gators and Mr. Prince!', '恐怖のバナナワニとミスタープリンス', 'Kyoufu no Bananawani to Mr. Prince ', '2002-04-21', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(260, 21, '109', 'The Key to a Great Comeback Escape! The Wax-Wax Ball!', '逆転大脱出への鍵!ドルドルボール!', 'Gyakuden Dai Dasshutsu e no Kagi! Dorudoru Ball! ', '2002-04-28', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(261, 21, '110', 'Merciless Mortal Combat! Luffy vs. Crocodile!', '情無用の死闘!ルフィVSクロコダイル', 'Joumuyou no Shitou! Luffy vs Crocodile! ', '2002-05-05', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(262, 21, '111', 'Dash For a Miracle! Alabasta Animal Land!', '奇跡への疾走!アラバスタ動物ランド', 'Kiseki e no Shissou! Alabasta Doubutsu Land ', '2002-05-12', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(263, 21, '112', 'Rebel Army vs. Royal Army! Showdown at Alubarna!', '反乱軍VS国王軍!決戦はアルバーナ!', 'Hanrangun vs Kokuougun! Kessen wa Alubarna! ', '2002-05-19', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(264, 21, '113', 'Alubarna Grieves! The Fierce Captain Carue!', '嘆きのアルバーナ!激闘カルー隊長!', 'Naki no Alubarna! Gekitou Carue Taichou ', '2002-06-02', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(265, 21, '114', 'Sworn on a Friend\'s Dream! The Battle of Molehill, Block 4!', '仲間の夢に誓う!決闘モグラ塚4番街', 'Nakama no Yumi ni Chikau! Kettou Mogura Tsuka 4 Banchou ', '2002-06-09', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(266, 21, '115', 'Big Performance\'s Today! The Copy-Copy Montage!', '本日大公開!マネマネモンタージュ!', 'Honjitsu Dai Koukai! Manemane Montage! ', '2002-06-16', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(267, 21, '116', 'Transformed into Nami! Bon Clay\'s Rapid-Fire Ballet Kenpo!', 'ナミに変身!ボンクレ-連発バレエ拳法', 'Nami ni Henshin! Bon Clay Renpatsu Ballet Kenpou ', '2002-06-23', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(268, 21, '117', 'Nami\'s Cyclone Advisory! Clima Tact Burst!', 'ナミの旋風注意報!クリマタクト炸裂', 'Nami no Senpuu Chuuihou! Clima Tact Sakuretsu! ', '2002-06-30', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(269, 21, '118', 'Secret Passed Down in the Royal Family! The Ancient Weapon Pluton!', '王家に伝わる秘密!古代兵器プルトン', 'Ouke ni Tsuwaru Himitsu! Kodai Heiki Pluton ', '2002-07-14', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(270, 21, '119', 'Secret of Powerful Swordplay! Ability to Cut Steel and the Rhythm Things Have!', '豪剣の極意!鋼鉄を斬る力と物の呼吸', 'Gouken no Kyokui! Hagane wo Kiru Chikara to Mono no Kokyuu ', '2002-07-21', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(271, 21, '120', 'The Battle is Over! Kohza Raises the White Flag!', '戦いは終わった!コーザが掲げた白い旗', 'Tatakai wa Owatta! Kohza ga Ageta Shiroi Hata ', '2002-08-04', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(272, 21, '121', 'Where Vivi\'s Voice Gets Heard! The Hero Descends!', 'ビビの声の行方!英雄は舞い降りた!', 'Vivi no Koe no Yuke! Eiyuu wa Maiorita! ', '2002-08-11', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(273, 21, '122', 'Sand Croc and Water Luffy! The Second Round of the Duel!', '砂ワニと水ルフィ!決闘第2ラウンド', 'Suna Wani to Mizu Luffy! Kettou Dai ni Round ', '2002-08-18', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(274, 21, '123', 'That Looks Croc-ish! Luffy, Run to the Royal Tomb!', 'ワニっぽい!王家の墓へ走れルフィ!', 'Wanippoi! Ouke no Haka e Hashire Luffy! ', '2002-08-25', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(275, 21, '124', 'The Nightmare Draws Near! This is the Sand-Sand Clan\'s Secret Base!', '悪夢の時迫る!ここは砂砂団秘密基地', 'Akumu no Toki Hakaru! Koko wa Sunasunadan Himitsu Kichi ', '2002-09-01', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(276, 21, '125', 'Magnificent Wings! My Name is Pell, Guardian Deity of the Country!', '偉大なる翼!我が名は国の守護神ペル', 'Idai Naru Tsubame! Wa ga na wa Kuno no Shigoshin Pell ', '2002-09-08', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(277, 21, '126', 'I Will Surpass You! Rain Falls in Alabasta!', '越えていく!アラバスタに雨が降る!', 'Koete Iku! Alabasta ni Ame ga Furu! ', '2002-09-15', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(278, 21, '127', 'A Farewell to Arms! Pirates and Different Ideas of Justice!', '武器よさらば!海賊といくつかの正義', 'Buki yo Saraba! Kaizoku to Ikutsu ka no Seigi ', '2002-10-06', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(279, 21, '128', 'The Pirates\' Banquet and Operation Escape from Alabasta!', '海賊たちの宴とアラバスタ脱出作戦!', 'Kaizokutachi no Utage to Alabasta Dasshutsu Sakusen! ', '2002-10-06', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(280, 21, '129', 'It All Started On That Day! Vivi Tells the Story of Her Adventure!', '始まりはあの日!ビビが語る冒険譚', 'Hajimaru wa Ano hi! Vivi ga Kataru Boukendan ', '2002-10-20', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(281, 21, '130', 'Scent of Danger! The Seventh Member is Nico Robin!', '危険な香り!七人目はニコ·ロビン!', 'Kiken na Kaori! Shichininme wa Nico Robin! ', '2002-10-27', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(282, 21, '131', 'The First Patient! The Untold Story of the Rumble Ball!', 'はじめての患者! ランブルボール秘話', 'Hajimete no Kanja! Rumble Ball Hiwa ', '2002-11-03', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(283, 21, '132', 'Uprising of the Navigator! For the Unyielding Dream!', '航海士の反乱! ゆずれない夢の為に!', 'Koukaishi no Hanran! Yuzure Nai Yume no Tame ni! ', '2002-11-10', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(284, 21, '133', 'A Recipe Handed Down! Sanji, the Iron Man of Curry!', '受け継がれる夢! カレーの鉄人サンジ', 'Uketsugareru Yume! Curry no Tetsujin Sanji ', '2002-11-17', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(285, 21, '134', 'I Will Make it Bloom! Usopp, the Man, and the Eight-Foot Shell!', '咲かせてみせます! 男ウソップ八尺玉', 'Sakasete Misemasu! Otoko Usopp Hachi Shaku Tama ', '2002-11-24', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(286, 21, '135', 'The Fabled Pirate Hunter! Zoro, the Wandering Swordsman!', '噂の海賊狩り! さすらいの剣士ゾロ', 'Uwasa no Kaizoku Gari! Sasurai no Kenshi Zoro ', '2002-12-01', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(287, 21, '136', 'Zenny of the Island of Goats and the Pirate Ship in the Mountains!', 'ヤギの島のゼニィと山の中の海賊船!', 'Yagi no Shima no Zenny to Yama no Naka no Kaizoku Sen! ', '2002-12-08', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(288, 21, '137', 'How\'s Tricks? The Designs of Zenny the Moneylender!', '儲かりまっか? 金貸しゼニィの野望!', 'Moukarimakka? Kanekashi Zenny no Yabou! ', '2002-12-15', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(289, 21, '138', 'Whereabouts of the Island Treasure! Attack of the Zenny Pirates!', '島のお宝の行方! ゼニィ海賊団出撃!', 'Shima no Otakara no Yukue! Zenny Kaizoku Dan Shutsugeki! ', '2002-12-22', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(290, 21, '139', 'Legend of the Rainbow Mist! Old Man Henzo of Luluka Island!', '虹色の霧伝説! ルルカ島の老人ヘンゾ', 'Nijiiro no Kiri Densetsu! Rurukajima no Roujin Henzo ', '2003-01-05', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(291, 21, '140', 'Residents of the Land of Eternity! The Pumpkin Pirates!', '永遠の国の住人! パンプキン海賊団!', 'Eien no Kuni no Junin! Panpukin Kaizoku Dan! ', '2003-01-12', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(292, 21, '141', 'Thoughts of Home! The Pirate Graveyard of No Escape!', '故郷への想い! 脱出不能の海賊墓場!', 'Kokyuu e no Omoi! Dasshutsu Funou no Kaizoku Hakaba! ', '2003-01-19', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(293, 21, '142', 'An Inevitable Melee! Wetton\'s Schemes and the Rainbow Tower!', '乱戦必死! ウエットンの野望と虹の塔', 'Ransen Hissu! Uetton no Yabou to Niji no Tou ', '2003-01-26', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(294, 21, '143', 'And so, the Legend Begins! To the Other Side of the Rainbow!', 'そして伝説が始まる! いざ虹の彼方へ', 'Soshite Densetsu ga Hajimaru! Iza Niji no Kanata e ', '2003-02-02', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(295, 21, '144', 'Caught Log! The King of Salvagers, Masira!', '奪われた記録!サルベージ王マシラ!', 'Ubawareta Kiroku! Salvage ou Masira! ', '2003-02-09', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(296, 21, '145', 'Monsters Appear! Don\'t Mess with the Whitebeard Pirates!', '怪物登場!白ひげ一味には手を出すな', 'Kaibutsu Toujou! Shirohige Ichimi ni wa te wo Dasu na ', '2003-02-16', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(297, 21, '146', 'Quit Dreaming! Mock Town, the Town of Ridicule!', '夢を見るな!嘲りの街モックタウン!', 'Yume wo Miru na! Azakeri no Machi Mock Town! ', '2003-02-23', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(298, 21, '147', 'Distinguished Pirates! A Man Who Talks of Dreams and the King of Undersea Search!', '海賊の高み!夢を語る男と海底探索王', 'Kaizoku no Takami! Yume wo Kataru Otoko to Kaitei Shinsaku ou ', '2003-03-09', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(299, 21, '148', 'Legendary Family! Noland, the Liar!', '伝説の一族!「うそつきノーラン', 'Densetsu no Ichizoku! Usotsuki Norland ', '2003-03-16', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(300, 21, '149', 'Steer for the Clouds! Capture the South Bird!', '雲舵いっぱい!サウスバードを追え!', 'Kumo Kaji Ippai! South Bird wo oe! ', '2003-03-23', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(301, 21, '150', 'Dreams Don\'t Come True?! Bellamy vs. the Saruyama Alliance!', '幻想は叶わない!?ベラミーVS猿山連合', 'Gensou wa Kanawanai!? Bellamy vs Saruyama Rengou ', '2003-04-13', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(302, 21, '151', '100 Million Man! World\'s Greatest Power and Pirate Black Beard!', '一億の男!世界最高権力と海賊黒ひげ', 'Ichioku no Otoko! Sekai Saikou Kenryoku to Kaizoku Kurohige ', '2003-04-20', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(303, 21, '152', 'Take to the Sky! Ride the Knockup Stream!', '船は空をゆく!突き上げる海流に乗れ', 'Fune wa Sora wo Yuku! Tsukiageru Kairyuu ni Nore ', '2003-04-27', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(304, 21, '153', 'Sail the White Sea! The Sky Knight and the Gate in the Clouds!', 'ここは空の海!空の騎士と天国の門', 'Koko wa Sora no Umi! Sora no Kishi to Tengoku no Mon ', '2003-05-04', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(305, 21, '154', 'Godland, Skypiea! Angels on a Beach of Clouds!', '神の国スカイピア!雲の渚の天使たち', 'Kami no Kuni Skypiea! Kumo no Nagisa no Tenshitachi ', '2003-05-11', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(306, 21, '155', 'The Forbidden Sacred Ground! The Island Where God Lives and Heaven\'s Judgement!', '禁断の聖地!神の住む島と天の裁き!', 'Kindan no Seichi! Kami no Sumi Shima to Ten no Sabaki! ', '2003-05-18', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(307, 21, '156', 'Already Criminals?! Skypiea\'s Upholder of the Law!', '早くも犯罪者!?スカイピアの法の番人', 'Hayaku mo Hanzaisha!? Skypiea no Hou no Banjin ', '2003-06-08', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(308, 21, '157', 'Is Escape Possible?!? God\'s Challenge is Set in Motion', '脱出なるか!?動きはじめた神の試練!', 'Dasshutsu Naru ka!? Ugokihajimeta Kami no Shiren! ', '2003-06-15', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(309, 21, '158', 'A Trap on Lovely Street! The Almighty God Eneru', 'ラブリー通りの罠!全能なる神エネル', 'Lovely Doori no Wana! Zennou Naru God Enel ', '2003-06-22', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(310, 21, '159', 'Onward Crow! To the Sacrificial Altar!', 'すすめカラス丸!生贄の祭壇を目指せ', 'Susume Karasumaru! Ikenie no Saidan wo Mezase ', '2003-07-06', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(311, 21, '160', '10% Survival Rate! Satori, the Mantra Master!', '生存率10%!心綱使いの神官サトリ!', 'Seizonritsu 10%! Mantora Tsukai no Shinkan Satori ', '2003-07-13', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(312, 21, '161', 'The Ordeal of Spheres! Desperate Struggle in the Lost Forest!', '「玉の試練」の脅威!迷いの森の死闘', 'Tama no Shiren\' no Kyoui! Mayoi no Mori no Shitou ', '2003-07-20', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(313, 21, '162', 'Chopper in Danger! Former God vs. Priest Shura!', 'チョッパー危うし!元神VS神官シュラ', 'Chopper Abunau Shi! Moto Kami vs Shinkan Shura ', '2003-08-03', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(314, 21, '163', 'Profound Mystery! Ordeal of String and Ordeal of Love?!?', '摩訶不思議!紐の試練と恋の試練!?', 'Makafushigi! Himo no Shiren to Koi no Shiren!? ', '2003-08-10', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(315, 21, '164', 'Light the Fire of Shandora! Wiper the Warrior!', 'シャンドラの灯を燈せ!戦士ワイパー', 'Shandora no tou wo Nobose! Senshi Wiper ', '2003-08-17', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(316, 21, '165', 'Jaya, City of Gold in the Sky! Head for God\'s Shrine!', '天空の黄金卿ジャヤ!目指せ神の社!', 'Tenkuu no Ougonkyou Jaya! Mezase Kami no Yashiro! ', '2003-08-24', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(317, 21, '166', 'Festival on the Night Before Gold-Hunting! Feelings for Varse!', '黄金前夜祭!「ヴァース」への想い!', 'Ougon Zenya Matsuri! Varse e no Omoi! ', '2003-09-07', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(318, 21, '167', 'Enter God Eneru! Farewell to the Survivors!', '神·エネル登場!!生き残りへの夜明曲', 'God Enel Toujou!! Ikinokori e no Yoake Kyoku ', '2003-09-21', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(319, 21, '168', 'A Giant Snake Bares Its Fangs! The Survival Game Begins!', '牙むく大蛇!遂に始まる生き残り合戦', 'Kiba Muku Ouhebi! Tsui ni Hajimaru Ikinokori Gassen ', '2003-10-12', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(320, 21, '169', 'The Deadly Reject! War Demon Wiper\'s Resolve!', '捨身の排撃!!「戦鬼」ワイパーの覚悟', 'Sutemi no Haigeki! Senki Wiper no Kakugo ', '2003-10-19', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(321, 21, '170', 'Fierce Mid-Air Battle! Pirate Zoro vs. Warrior Braham!', '空中の激戦!海賊ゾロVS戦士ブラハム', 'Kuuchuu no Gekisen! Kaizoku Zoro vs Senshi Braham ', '2003-10-19', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(322, 21, '171', 'The Roaring Burn Bazooka! Luffy vs. War Demon Wyper!', '唸る燃焼砲!!ルフィVS戦鬼ワイパー闘', 'Unaru Nenshouhou!! Luffy vs Senki Wiper ', '2003-10-26', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(323, 21, '172', 'The Ordeal of the Swamp! Chopper vs. Sky Punk Gedatsu!', '沼の試練!チョッパーVS神官ゲダツ!!', 'Numa no Shiren! Chopper vs Shinkan Gedatsu!! ', '2003-11-02', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(324, 21, '173', 'Unbeatable Powers! Eneru\'s True Form is Revealed!', '無敵の能力!明かされるエネルの正体', 'Muteki no Nouryoku! Akasareru Enel no Shoutai ', '2003-11-09', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(325, 21, '174', 'A Mystical City! The Grand Ruins of Shandora!', '幻の都!雄大なるシャンドラの遺跡!!', 'Maboroshi no to! Yuudai Naru Shandora no Iseki!! ', '2003-11-16', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(326, 21, '175', '0% Survival Rate! Chopper vs Ohm, the Sword Wielding Priest!', '生存率0%!!チョッパーVS神官オーム', 'Seisonritsu 0%!! Chopper vs Shinkan Ohm ', '2003-12-21', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(327, 21, '176', 'Climb Giant Jack! Deadly Combat in the Upper Ruins!', '巨大豆蔓”を登れ!!上層遺跡の死闘', 'Kyodai MameTsuru wo Nobore!! Jousou Iseki no Shitou ', '2004-01-11', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(328, 21, '177', 'The Ordeal of Iron! White Barbed Death Match!', '鉄の試練の真骨頂!白荊デスマッチ!!', 'Tetsu no Shiren no Shinkocchou! Shiroibara Desumacchi!! ', '2004-01-18', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(329, 21, '178', 'Bursting Slash! Zoro vs Ohm!', 'ほとばしる斬撃!ゾロVS神官オーム!!', 'Hotobashiru Zangeki! Zoro vs Shinkan Ohm!! ', '2004-01-25', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(330, 21, '179', 'Collapsing Upper Ruins! The Quintet for the Finale!', '崩れゆく上層遺跡!終曲への五重奏!!', 'Kuzure Yuku Jousou Iseki! Shuukyoku e no Gojuusou!! ', '2004-02-01', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(331, 21, '180', 'Showdown in the Ancient Ruins! Sky God Enel\'s Goal!', '古代遺跡の対決!神·エネルの目的', 'Kodai Iseki no Taiketsu! God Enel no Mokuteki ', '2004-02-08', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(332, 21, '181', 'Ambition Towards the Endless Vearth! The Ark Maxim!', '限りない大地への野望方舟マクシム!!', 'Kagirinai Daichi e no Yabou Hakobune Maxim!! ', '2004-02-15', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(333, 21, '182', 'They Finally Clash! Pirate Luffy vs God Enel!', '遂に激突!海賊ルフィVS神·エネル!!', 'Tsui ni Gekitotsu! Kaizoku Luffy vs God Enel!! ', '2004-02-22', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(334, 21, '183', 'Maxim Surfaces! Deathpiea is Activated!', 'マクシム浮上!動き始めたデスピア!!', 'Maxim Ujou! Ugokihajimeta Deathpiea!! ', '2004-02-29', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(335, 21, '184', 'Luffy Falls! Eneru\'s Judgement and Nami\'s Wish!', 'ルフィ落下!神の裁きとナミの望み!!', 'Luffy Rakka! Kami no Sabaki to Nami no Nozomi!! ', '2004-03-07', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(336, 21, '185', 'The Two Awaken! On the Front Lines of the Burning Love Rescue!', '目覚めた二人!燃える恋の救出前線!!', 'Mesameta Futari! Moeru Koi no Kyuushutsu Zensen!! ', '2004-03-14', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(337, 21, '186', 'Capriccio for Despair! The Impending Doom of Sky Island!', '絶望への狂想曲迫り来る空島の消滅!!', 'Zetsubou e no Kyousoukyoku Hakari Kuru Sorajima no Shoumetsu!! ', '2004-03-21', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(338, 21, '187', 'Lead by a Bell\'s Sound! Tale of the Great Warrior and the Explorer!', '鐘の音の導き!大戦士と探検家の物語', 'Kane no Oto no Michibiki! Daisenshi to Shinkenka no Monogatari ', '2004-03-28', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(339, 21, '188', 'Free From the Spell! The Great Warrior Sheds Tears!', '呪縛からの解放!大戦士が流した涙!!', 'Jubaku Kara no Kaihou! Daisenshi ga Nagashita Namida!! ', '2004-03-28', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(340, 21, '189', 'Eternal Friends! The Vowed Bell Echoes Across the Mighty Seas!', '永遠の親友!大海原に響く誓いの鐘', 'Eien no Shinyuu! Daikaigen ni Hibiku Chikai no Kane ', '2004-04-04', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(341, 21, '190', 'Angel Island, Obliterated! The Horror of The Raigo\'s Advent!!', 'エンジェル島消滅!雷迎降臨の恐怖!!', 'Enjerushima Shoumetsu! Raigo Kourin no Kyoufu!! ', '2004-04-25', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(342, 21, '191', 'Knock Over Giant Jack! Last Hope for Escape!', '巨大豆蔓を倒せ!脱出への最後の望み', 'Kyodai Mame Tsuru wo Taose! Dasshutsu e no Saigou no Nozomi ', '2004-05-02', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(343, 21, '192', 'Miracle on Skypiea! The Love Song Heard in the Clouds!', '神の国の奇跡!天使に届いた島の歌声', 'Kami no Kuni no Kiseki! Tenshi ni Todoita Shima no Kasei ', '2004-05-09', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(344, 21, '193', 'The Battle Ends! Proud Fantasia Echoes Far!', '戦いの終焉!遠く響く誇り高き幻想曲', 'Tatakai no Shuuen! Touku Hibiku Hokori Takaki Gensoukyoku ', '2004-05-23', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(345, 21, '194', 'I Made it here! The Yarn the Poneglyphs Spin!', '我ここに至る!歴史の本文が紡ぐもの', 'Ware koko ni itaru! Rekishi no honbun ga tsumugu mono ', '2004-06-06', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(346, 21, '195', 'Off to the Blue Sea!! A Heartfelt Finale!!', 'いざ青海へ!!想いが織りなす最終楽章', 'Iza Seikai e!! Omoi ga Shibarinasu Saishuu Gakushou ', '2004-06-13', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(347, 21, '196', 'A State of Emergency is Issued! A Notorious Pirate Ship has Infiltrated!', '非常事態発令!悪名高き海賊船潜入!', 'Hijou Jitai Hatsumei! Akumei Takaki Kaizokusen Sennyuu ', '2004-06-20', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(348, 21, '197', 'Sanji the Cook! Proving His Merit at the Marine Dining Hall!', '料理人サンジ!海軍食堂で真価発揮!', 'Ryourinin Sanji! Kaigun Shokudou de Shinka Hakki! ', '2004-07-04', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(349, 21, '198', 'Captured Zoro! Chopper\'s Emergency Operations!', '囚われたゾロとチョッパー緊急執刀!', 'Towareta Zoro to Chopper Kinkyuu Shittou ', '2004-07-11', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(350, 21, '199', 'The Marines Dragnet Closes In! The Second Member Captured!', '迫る海軍の捜査網!囚われた二人目!', 'Hakaru Kaigun no Sousamou! Towareta Futarime! ', '2004-07-18', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(351, 21, '200', 'Luffy and Sanji\'s Daring Rescue Mission!', '決死のルフィとサンジ!救出大作戦!', 'Kesshi no Luffy to Sanji! Kuushutsu Daisakusen! ', '2004-08-08', '', 0, 0, 0, '2023-06-27 16:25:37', '2023-06-27 16:25:37', NULL),
(352, 21, '201', 'Enter the Hot-Blooded Special Forces! Battle on the Bridge!', '熱血特別部隊参戦!ブリッジ攻防戦!', 'Netsuketsu Tokubetsu Butai Sansen! Burijji Koubousen! ', '2004-09-05', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(353, 21, '202', 'Breaking Through the Siege! The Going Merry is Recovered!', '包囲網突破!奪還ゴーイングメリー号', 'Houimou Toppa! Dakkan Going Merry-gou ', '2004-09-19', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(354, 21, '203', 'The Pirate Ship Disappears! Fortress Battle, Round #2!', '消えた海賊船!要塞攻防第2ラウンド', 'Kieta Kaizokusen! Yousai Koubou Dai 2 Round ', '2004-09-26', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(355, 21, '204', 'The Gold and Waver Recovery Operations!', '黄金奪還作戦とウエイバー回収作戦!', 'Ougon Dakkan Sakusen to Ueibaa Kaishuu Sakusen! ', '2004-10-03', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(356, 21, '205', 'The One Fell Swoop Plan! Jonathan\'s Surefire Secret Tactic!', '一網打尽計画!ジョナサン自信の秘策', 'Ichimoudajin Keikaku! Jonasan Jishin no Hisaku! ', '2004-10-03', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(357, 21, '206', 'Farewell, Marine Fortress! The Last Battle for Escape!', 'さらば海軍要塞!脱出への最後の攻防', 'Saraba Kaigun Yousai! Dasshutsu e no Saigou no Koubou ', '2004-10-10', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(358, 21, '207', 'Great Adventure in Long Ring Long Land!', 'ロングリングロングランドの大冒険!', 'Rongu Ringu Rongu Rando no Daibouken! ', '2004-10-31', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(359, 21, '208', 'A Davy Back with the Foxy Pirates!', 'フォクシー海賊団とデービーバック!', 'Fokushii Kaizokudan to Davy Back! ', '2004-11-07', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(360, 21, '209', 'Round 1! One Lap of the Donut Race!', '第一回戦!ぐるり一周ドーナツレース', 'Dai Ikkaisen! Gururi Ishuu Donut Race ', '2004-11-14', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(361, 21, '210', 'Silver Fox Foxy! The Merciless Interference!', '銀ギツネのフォクシー!猛烈妨害攻勢', 'Gin Gitsune no Fokushii! Mouretsu Bougai Kousei! ', '2004-11-21', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(362, 21, '211', 'Round 2! Shoot It into the Groggy Ring!', '第二回戦!ブチ込めグロッキーリング', 'Dai Ni Kaisen! Buchikome Groggy Ring! ', '2004-11-28', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(363, 21, '212', 'A Barrage of Red Cards in Groggy Ring!', 'レッドカード連発!グロッキーリング', 'Red Card Renpatsu! Groggy Ring ', '2004-12-05', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(364, 21, '213', 'Round 3! The Round-and-Round Roller Race!', '第三回戦!ぐるぐるローラーレース!', 'Daisan Kaisen! Guruguru Roller Race! ', '2004-12-12', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(365, 21, '214', 'A Seriously Heated Race! Into the Final Round!', '白熱爆走レース!最終ラウンド突入!', 'Hakunetsu Bakusou Race! Saishuu Round Totsunyuu ', '2004-12-19', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(366, 21, '215', 'Screaming-Hot Bombardment! Pirate Dodgeball!', 'うなる熱球剛球! 海賊ドッジボール!', 'Unaru Netsukyuu Goukyu! Kaizoku Dodgeball! ', '2005-01-09', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(367, 21, '216', 'Showdown on the Cliff! Red Light, Green Light!', '断崖の決戦!だるまさんがころんだ!', 'Dangai no Kessen! Daruma-san ga Koronda! ', '2005-01-09', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(368, 21, '217', 'The Captains Square Off! The Final Combat Round!', 'キャプテン対決!最終戦コンバット!', 'Kyaputen Taiketsu! Saishuusen Konbatto! ', '2005-01-16', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(369, 21, '218', 'Full-Blast Slow-Slow Onslaught Vs. Invulnerable Luffy!', '全開ノロノロ攻撃VS不死身のルフィ', 'Zenkai Noro Noro Kougeki vs Fujimi no Luffy ', '2005-01-23', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(370, 21, '219', 'Epic, Heated Combat! The Fateful Final Conclusion!', '壮絶熱闘コンバット!運命の最終決着', 'Souzetsu Nettou Combat! Unmei no Saishuu Ketchaku! ', '2005-01-30', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(371, 21, '220', 'Was It Lost? Stolen? Who Are You?', '失った?奪われた?おまえはだれだ?', 'Ushinatta? Ubawareta? Omae wa Dare da? ', '2005-02-06', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(372, 21, '221', 'A Mysterious Boy With a Horn and Robin\'s Deduction!', '笛を抱いた謎の少年とロビンの推理!', 'Fude wo Daita Nazo no Shounen to Robin no Suiri! ', '2005-02-13', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(373, 21, '222', 'Now, Let\'s Get Back Our Memories! The Pirate Crew Lands On the Island!', 'いざ記憶を奪還せよ!海賊団島に上陸', 'Iza Kioku wo Dakkan Seyo! Kaizokudan Shima ni Jouriku ', '2005-02-20', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(374, 21, '223', 'Zoro Bares His Fangs! A Savage Animal Stands in the Way!', '牙をむくゾロ!立ちはだかった野獣!', 'Kiba wo Muku Zoro! Tachihadakatta Yajuu ', '2005-02-27', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL);
INSERT INTO `episode` (`id`, `uid`, `ep_id_name`, `ep_name`, `ep_jname`, `ep_romaji`, `ep_aired`, `ep_pv`, `ep_view`, `ep_view_month`, `ep_view_years`, `created_at`, `updated_at`, `deleted_at`) VALUES
(375, 21, '224', 'The Last Counterattack by the Memory Thief Who Reveals His True Colors!', '本性を現した記憶泥棒の最後の逆襲!', 'Honsei wo Arawashita Kioku Dorobou no Saigo no Gyakushuu ', '2005-03-06', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(376, 21, '225', 'Proud Man! Silver Fox Foxy!', '誇り高き男!銀ギツネのフォクシー', 'Hokori Takaki Otoko! Gin Gitsune no Foxy ', '2005-03-13', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(377, 21, '226', 'The Guy Who’s the Closest to Invincible? And the Most Dangerous Man!', '最も無敵に近い奴?と最も危険な男!', 'Mottomo Muteki ni Chikai Yatsu? To Mottomo Kiken na Otoko! ', '2005-03-20', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(378, 21, '227', 'Navy Headquarters Admiral Aokiji! The Ferocity of an Ultimate Powerhouse!', '海軍本部大将青キジ!最高戦力の脅威', 'Kaigun Hombu Taishou Aokiji! Saikou Senryoku no Kyoui ', '2005-03-27', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(379, 21, '228', 'Duel Between Rubber and Ice! Luffy vs. Aokiji!', 'ゴムと氷の一騎打ち!ルフィVS青キジ', 'Gomu to Koori no Ikkiuchi! Luffy vs Aokiji! ', '2005-03-27', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(380, 21, '229', 'The Dashing Sea Train and the City of Water: Water Seven!', '疾走海列車と水の都ウォーターセブン', 'Shissou Umi Ressha to Mizu no Miyako Water Seven ', '2005-04-17', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(381, 21, '230', 'Adventure in the City on the Water! Head to the Mammoth Shipbuilding Plant!', '水上都市の冒険!目指せ巨大造船工場', 'Suijou Toshi no Bouken! Mezase Kyodai Sousen Koujou ', '2005-04-24', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(382, 21, '231', 'The Franky Family and Iceburg!', 'フランキー一家とアイスバーグさん', 'Franky Ikka to Iceburg-san ', '2005-05-01', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(383, 21, '232', 'Galley-La Company! A Grand Sight: Dock #1!', 'ガレーラカンパニー!壮観一番ドック', 'Galley-La Company! Soukan Ichiban Dock ', '2005-05-15', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(384, 21, '233', 'Pirate Abduction Incident! A Pirate Ship That Can Only Await Her End!', '海賊誘拐事件と死を待つだけの海賊船', 'Kaizoku Yuukai Jiken to shi wo Matsu Dake no Kaizokusen ', '2005-05-22', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(385, 21, '234', 'Rescuing Our Friend! Raid On the Franky House!', '仲間救出!殴りこみフランキーハウス', 'Nakama Kyuushutsu! Nagarikomi Franky House ', '2005-06-05', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(386, 21, '235', 'Big Fight Under the Moon! The Pirate Flag Flutters With Sorrow!', '月下の大喧嘩!哀しみに翻る海賊旗!', 'Gekka no dai Kenka! Kanashimi ni Hirugaeru Kaizoku Hata! ', '2005-06-12', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(387, 21, '236', 'Luffy vs. Usopp! Collision of Two Men\'s Pride!', 'ルフィvsウソップ!ぶつかる男の意地', 'Luffy vs Usopp! Butsukaru Otoko no Iji ', '2005-06-19', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(388, 21, '237', 'Severe Shock Hits the City of Water! Iceberg Targeted!', '激震水の都!狙われたアイスバーグ', 'Gekishin Mizu no Miyako! Newareta Iceberg ', '2005-07-03', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(389, 21, '238', 'Gum-Gum Human vs. Fire-Breathing Cyborg!', 'ゴムゴム人間VS火を吹く改造人間', 'Gomu Gomu Ningen vs hi wo Fuku Kaizou Ningen ', '2005-07-10', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(390, 21, '239', 'The Straw Hat Pirates Are the Culprits? The Protectors of the City of Water!', '犯人は麦わら海賊団?水の都の用心棒', 'Hannin wa Mugiwara Laizokudan? Mizu no miyako no Youjinbo ', '2005-07-31', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(391, 21, '240', 'Eternal Farewell? Nico Robin: The Woman Who Draws Darkness!', '永遠の別れ?闇を引く女ニコ·ロビン', 'Eien no Wakare? Yami Wo Hiku Onna Niko Robin ', '2005-08-07', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(392, 21, '241', 'Capture Robin! The Determination of the Straw Hats!', 'ロビンを捕まえろ!麦わら一味の決意', 'Robin wo Tsukamaero! Mugiwara Ichimi no Ketsui ', '2005-08-14', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(393, 21, '242', 'Cannon Fire Is the Signal! CP9 Goes Into Action!', '合図は砲撃と共に!動き出したCP9', 'Aizu wa Hougeki to Tomo ni! Ugokidashita CP9 ', '2005-08-21', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(394, 21, '243', 'CP9 Takes Off Their Masks! Their Shocking True Faces!', '仮面を取ったCP9!その驚きの素顔', 'Kamen wo Totta CP9! Sono Odoroki no Sugao ', '2005-09-04', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(395, 21, '244', 'Secret Bond! Iceberg and Franky!', '秘めた絆!アイスバーグとフランキー', 'Hisometa Kizuna! Iceberg to Franky ', '2005-09-11', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(396, 21, '245', 'Come Back, Robin! Showdown With CP9!', '帰って来いロビン!CP9との対決!', 'Kaette koi Robin! CP9 to no Taiketsu! ', '2005-09-18', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(397, 21, '246', 'The Straw Hat Pirates Annihilated? The Menace of the Leopard Model!', '麦わら海賊団全滅?モデル豹の脅威!', 'Mugiwara Kaizokudan Zenmetsu? Model Hyou no Kyoui ', '2005-10-23', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(398, 21, '247', 'The Man Who Is Loved Even by His Ship! Usopp\'s Tears!', '船からも愛された男!ウソップの涙!', 'Fune Kara mo Aisareta Otoko! Usopp no Namida! ', '2005-10-30', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(399, 21, '248', 'Franky\'s Past! The Day the Sea Train First Ran!', 'フランキーの過去!海列車が走った日', 'Franky no Kako! Umi Ressha ga Hashitta hi ', '2005-11-06', '', 1, 1, 1, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(400, 21, '249', 'Spandam\'s Scheme! The Day the Sea Train Shook!', 'スパンダムの陰謀!海列車が揺れた日', 'Spandam no Inbou! Umi Ressha ga Ureta hi ', '2005-11-13', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(401, 21, '250', 'The End of the Legendary Man! The Day the Sea Train Cried!', '伝説の男の最期!海列車が泣いた日', 'Densetsu no Otoko no Saigo! Umi Ressha ga Naita hi ', '2005-11-27', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(402, 21, '251', 'The Truth Behind Her Betrayal! Robin\'s Sorrowful Decision!', '裏切りの真相!ロビンの哀しき決意!', 'Uragiri no Shinsou! Robin no Kanashiki Ketsui! ', '2005-11-27', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(403, 21, '252', 'The Steam Whistle Forces Friends Apart! The Sea Train Starts to Run!', '仲間を引き離す汽笛!走り出す海列車', 'Nakama wo Hikihanasu Kiteki! Hashiridasu Umi Ressha ', '2005-12-04', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(404, 21, '253', 'Sanji Barges In! Sea Train Battle in the Storm!', 'サンジ突入!嵐の中の海列車バトル!', 'Sanji Tsotsunyuu! Arashi no Naka no Umi Ressha Battle! ', '2005-12-11', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(405, 21, '254', 'Nami\'s Soul Cries Out! Straw Hat Luffy Makes a Comeback!', 'ナミ魂の叫び!麦わらのルフィ復活!', 'Nami Tamashii no Sakebi! Mugiwara no Luffy Fukukatsu! ', '2006-01-22', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(406, 21, '255', 'Another Sea Train? Rocketman Charges Forth!', 'もう一つの海列車?ロケットマン出撃', 'Mou Hitotsu no Umi Ressha? Roketoman Shutsugeki ', '2006-01-29', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(407, 21, '256', 'Rescue Our Friends! A Bond Among Foes Sworn with Fists!', '仲間を救え!拳に誓った敵同士の絆!', 'Nakama wo Sukue! Kobushi ni Chikatta Teki Doushi no Kizuna! ', '2006-02-05', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(408, 21, '257', 'Smash the Wave! Luffy and Zoro Use the Strongest Combo!', '波を砕け!ルフィとゾロの最強合体技', 'Nami wo Sake! Luffy to Zoro no Saikyou Gattai Waza ', '2006-02-26', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(409, 21, '258', 'A Mysterious Man Appears?! His Name Is Sniperking!', '謎の男登場!?その名はそげキング!', 'Nazo no Otoko Toujou!? Sono na wa Sogeking! ', '2006-03-05', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(410, 21, '259', 'Showdown Between Cooks! Sanji vs. Ramen Kenpo', 'コック対決!サンジVSラーメン拳法', 'Kokku Taiketsu! Sanji vs Ramen Kenpou ', '2006-03-12', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(411, 21, '260', 'Rooftop Duel! Franky vs. Nero', '屋根の上の決闘!フランキーVSネロ', 'Yane no ue no Kettou! Franky vs Nero ', '2006-03-19', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(412, 21, '261', 'Clash! Demon-Slasher Zoro vs. Ship-Slasher T-Bone!', '激突!鬼斬りゾロVS船斬りTボーン', 'Gekitotsu! Onigiri Zoro vs Funegiri T-Bone ', '2006-04-02', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(413, 21, '262', 'Scramble over Robin! A Cunning Plan by Sniperking!!', 'ロビン争奪戦!そげキングの奇策!!', 'Robin Soudatsusen! Sogeking no Kisaku!! ', '2006-04-16', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(414, 21, '263', 'The Judicial Island! Full View of Enies Lobby!', '司法の島!エニエス·ロビーの全貌!', 'Shihou no Shima! Enies Lobby no Zenbou ', '2006-04-30', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(415, 21, '264', 'Landing Operations Start! Charge in, Straw Hats!', '上陸作戦始動! 麦わら一味突入せよ!', 'Jouriku Sakusen Shidou! Mugiwara Ichimi Totsunyuu seyo! ', '2006-05-21', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(416, 21, '265', 'Luffy Cuts Through! Big Showdown on the Judicial Island!', 'ルフィ快進撃! 司法の島で大決戦!!', 'Luffy Kai Shingeki! Shihou no Shima de Dai Kessen! ', '2006-06-04', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(417, 21, '266', 'Battle Against Giants! Open the Second Gate!', '巨人族との攻防! 第2の門を開けろ!', 'Kyojinzoku to no Koubou! Dai Ni no Mon wo Akero! ', '2006-06-11', '', 0, 0, 0, '2023-06-27 16:25:51', '2023-06-27 16:25:51', NULL),
(418, 21, '267', 'Find a Way Out! Rocketman Takes Flight!', '活路を開け! 空を飛ぶロケットマン!', 'Katsuro wo Hirake! Sora wo Tobu Roketman! ', '2006-06-18', '', 0, 0, 0, '2023-06-27 16:25:52', '2023-06-27 16:25:52', NULL),
(419, 21, '268', 'Catch Up with Luffy! The Straw Hats’ All-Out Battle', 'ルフィに追いつけ! 麦わら一味総力戦', 'Luffy ni Oitsuke! Mugiwara Ichimi Souryokusen ', '2006-06-25', '', 0, 0, 0, '2023-06-27 16:25:52', '2023-06-27 16:25:52', NULL),
(420, 21, '269', 'Robin Betrayed! The Motive of the World Government!', '裏切られたロビン! 世界政府の思惑!', 'Uragira re ta Robin! Sekai Seifu no Omowaku! ', '2006-06-25', '', 0, 0, 0, '2023-06-27 16:25:52', '2023-06-27 16:25:52', NULL),
(421, 21, '270', 'Give Robin Back! Luffy vs. Blueno!', 'ロビンを返せ! ルフィvsブルーノ!', 'Robin wo Kaese! Luffy vs. Blueno! ', '2006-07-02', '', 0, 0, 0, '2023-06-27 16:25:52', '2023-06-27 16:25:52', NULL),
(422, 21, '271', 'Don’t Stop! Hoist the Counterattack Signal!', '立ち止まるな! 反撃の狼煙を上げろ!', 'Tachidomaru na! Hangeki no Noroshi wo Agero! ', '2006-07-09', '', 0, 0, 0, '2023-06-27 16:25:52', '2023-06-27 16:25:52', NULL),
(423, 21, '272', 'Almost to Luffy! Gather at the Courthouse Plaza!', 'ルフィ目前! 裁判所前広場へ集結せよ', 'Luffy Mokuzen! Saibanshomae Hiroba e Shuuketsu se yo ', '2006-07-23', '', 0, 0, 0, '2023-06-27 16:25:52', '2023-06-27 16:25:52', NULL),
(424, 21, '273', 'Everything is to Protect My Friends! Second Gear Activated!', '全ては仲間を守る為に! ギア2発動!', 'Subete wa Nakama wo Mamoru Tame ni! Gia Sekando Hatsudou ', '2006-07-30', '', 0, 0, 0, '2023-06-27 16:25:52', '2023-06-27 16:25:52', NULL),
(425, 21, '274', 'Give us your answer, Robin! The Straw Hats\' Outcry!', '答えろロビン! 麦わら一味の叫び!!', 'Kotaero Robin! Mugiwara Ichimi no Sakebi!! ', '2006-08-06', '', 0, 0, 0, '2023-06-27 16:25:52', '2023-06-27 16:25:52', NULL),
(426, 21, '275', 'Robin\'s Past! The Girl was called a Devil!', 'ロビンの過去! 悪魔と呼ばれた少女!', 'Robin no Kako! Akuma to Yoba re ta Shoujo! ', '2006-08-13', '', 0, 0, 0, '2023-06-27 16:25:52', '2023-06-27 16:25:52', NULL),
(427, 21, '276', 'Fated Mother and Daughter! The Mother\'s Name is Olvia!', '宿命の母娘! その母の名はオルビア!', 'Shukumei no Oyako! Sono Haha no Na wa Orubia! ', '2006-09-10', '', 0, 0, 0, '2023-06-27 16:25:52', '2023-06-27 16:25:52', NULL),
(428, 21, '277', 'The Tragedy of Ohara! The Terror of the Buster Call!', 'オハラの悲劇! バスターコールの恐怖', 'Ohara no Higeki! Buster Call no Kyoufu ', '2006-09-24', '', 0, 0, 0, '2023-06-27 16:25:52', '2023-06-27 16:25:52', NULL),
(429, 21, '278', 'Say You Want to Live! We Are Your Friends!!', '生きたいと言え! オレ達は仲間だ!!', 'Ikitai to Ie! Oretachi wa Nakama da!! ', '2006-09-24', '', 0, 0, 0, '2023-06-27 16:25:52', '2023-06-27 16:25:52', NULL),
(430, 21, '279', 'Jump Towards the Falls! Luffy\'s Feelings!', '滝に向かって飛べ! ルフィの想い!!', 'Taki ni Mukatte Tobe! Luffy no Omoi!! ', '2006-10-01', '', 0, 0, 0, '2023-06-27 16:25:52', '2023-06-27 16:25:52', NULL),
(431, 21, '280', 'The Ways of Men! Zoro\'s Techniques, Usopp\'s Dream!', '男の生き様! ゾロの業·ウソップの夢', 'Otoko no Ikisama! Zoro no Waza Usoppu no Yume ', '2006-10-08', '', 0, 0, 0, '2023-06-27 16:25:52', '2023-06-27 16:25:52', NULL),
(432, 21, '281', 'A Bond of Friendship Woven by Tears! Nami\'s World Map!', '涙が紡いだ仲間の絆! ナミの世界地図', 'Namida ga Tsumui da Nakama no Kizuna! Nami no Sekai Chizu ', '2006-10-15', '', 0, 0, 0, '2023-06-27 16:25:52', '2023-06-27 16:25:52', NULL),
(433, 21, '282', 'Parting Builds a Man\'s Character! Sanji and Chopper!', '別れが男を磨く! サンジとチョッパー', 'Wakare ga Otoko wo Migaku! Sanji to Chopper ', '2006-10-22', '', 0, 0, 0, '2023-06-27 16:25:52', '2023-06-27 16:25:52', NULL),
(434, 21, '283', 'Everything is for Her Friends! Robin in the Darkness!', '全ては仲間の為に! 闇の中のロビン!', 'Subete wa Nakama no Tame ni! Yami no Naka no Robin! ', '2006-10-29', '', 0, 0, 0, '2023-06-27 16:25:52', '2023-06-27 16:25:52', NULL),
(435, 21, '284', 'I\'m Not Gonna Hand Over the Blueprints! Franky\'s Decision!', '設計図は渡さない! フランキーの決断', 'Sekkeizu wa Watasanai! Franky no Ketsudan ', '2006-11-05', '', 0, 0, 0, '2023-06-27 16:25:52', '2023-06-27 16:25:52', NULL),
(436, 21, '285', 'Obtain the 5 Keys! The Straw Hat Pirates vs. CP9!', '5つの鍵を奪え! 麦わら一味対CP9', 'Itsutsu no Kage wo Ubae! Mugiwara Ichimi tai CP9 ', '2006-11-12', '', 0, 0, 0, '2023-06-27 16:25:52', '2023-06-27 16:25:52', NULL),
(437, 21, '286', 'Devil Fruit Powers! Kaku and Jabra Transform!', '悪魔の実の力! カクとジャブラ大変身', 'Akuma no Mi no Chikara! Kaku to Jabra Daihenshin ', '2006-11-19', '', 0, 0, 0, '2023-06-27 16:25:52', '2023-06-27 16:25:52', NULL),
(438, 21, '287', 'I Won\'t Kick Even If It Costs Me My Life! Sanji\'s Chivalry!', '死んでも蹴らん! サンジ男の騎士道!', 'Shin demo Keran! Sanji Otoko no Kishidou ', '2006-11-26', '', 0, 0, 0, '2023-06-27 16:25:52', '2023-06-27 16:25:52', NULL),
(439, 21, '288', 'Fukurou\'s Miscalculation! My Cola is the Water of Life!', 'フクロウの誤算! 俺のコーラは命の水', 'Fukurou no Gosan! Ore no Koura wa Inochi no Mizu ', '2006-12-03', '', 0, 0, 0, '2023-06-27 16:25:52', '2023-06-27 16:25:52', NULL),
(440, 21, '289', 'Zoro Busts Out a New Technique! The Sword\'s Name is Sniperking?', 'ゾロ新技炸裂! 刀の名はそげキング?', 'Zoro Shinwaza Sakuretsu! Katana no Na wa Sogekingu? ', '2006-12-10', '', 0, 0, 0, '2023-06-27 16:25:52', '2023-06-27 16:25:52', NULL),
(441, 21, '290', 'Uncontrollable! Chopper\'s Forbidden Rumble!', '制御不能! チョッパー禁断のランブル', 'Seigyo Funou! Chopper Kindan no Rumble! ', '2006-12-17', '', 0, 0, 0, '2023-06-27 16:25:52', '2023-06-27 16:25:52', NULL),
(442, 21, '291', 'Boss Luffy Returns! Is It a Dream or Reality? Lottery Ruckus!', 'ルフィ親分再び! 夢か現か富くじ騒動', 'Luffy Oyabun Futatabi! Yume ga Aware ka Tomikuji Zoudou ', '2006-12-24', '', 0, 0, 0, '2023-06-27 16:25:52', '2023-06-27 16:25:52', NULL),
(443, 21, '292', 'A Big Rice Cake Tossing Race at the Castle! Red Nose\'s Plot!', 'お城で餅まき大レース! 赤い鼻の陰謀', 'Oshiro de Mochi Maki Dai Race! Akai Hana no Inbou ', '2007-01-07', '', 0, 0, 0, '2023-06-27 16:25:52', '2023-06-27 16:25:52', NULL),
(444, 21, '293', 'Bubble Master Kalifa! The Soap Trap Closes in on Nami!', '泡使いカリファ! ナミに迫る石鹸の罠', 'Awatsukai Karifa! Nami ni Hakaru Sekken no Wana ', '2007-01-14', '', 0, 0, 0, '2023-06-27 16:25:52', '2023-06-27 16:25:52', NULL),
(445, 21, '294', 'Resounding Bad News! The Buster Call Invoked!', '響き渡る凶報! 発動バスターコール!', 'Hibikiwataru Kyouhou! Hatsudou Buster Call! ', '2007-01-21', '', 0, 0, 0, '2023-06-27 16:25:52', '2023-06-27 16:25:52', NULL),
(446, 21, '295', 'Five Namis? Nami Strikes Back With Mirages!', '5人のナミ? 反撃は蜃気楼とともに!', 'Gonin no Nami? Hangeki wa Shinkirou to Tomo ni! ', '2007-01-28', '', 0, 0, 0, '2023-06-27 16:25:52', '2023-06-27 16:25:52', NULL),
(447, 21, '296', 'Nami\'s Decision! Fire at the Out-Of-Control Chopper!', 'ナミの決断! 暴走チョッパーを撃て!', 'Nami no Ketsudan! Bousou Chopper wo Ute! ', '2007-02-04', '', 0, 0, 0, '2023-06-27 16:25:52', '2023-06-27 16:25:52', NULL),
(448, 21, '297', 'Hunter Sanji Makes An Entrence? Elegy for a Lying Wolf!', '狩人サンジ登場!? 嘘つき狼に贈る挽歌', 'Garibito Sanji Toujou? Usotsuki Ookami ni Okuru Banka ', '2007-02-11', '', 0, 0, 0, '2023-06-27 16:25:52', '2023-06-27 16:25:52', NULL),
(449, 21, '298', 'Fiery Kicks! Sanji\'s Full Course of Foot Techniques!', '灼熱の蹴り! サンジ足技のフルコース', 'Shakunetsu no Keri! Sanji Ashiwaza no Furukousu ', '2007-02-25', '', 0, 0, 0, '2023-06-27 16:25:52', '2023-06-27 16:25:52', NULL),
(450, 21, '299', 'Fierce Sword Attacks! Zoro vs. Kaku, Powerful Sword Fighting Showdown!', '白刃の猛襲! ゾロ対カク強力斬撃対決', 'Hakujin no Mougeki! Zoro tai Kaku Kyouryoku Sangeki Taiketsu ', '2007-03-04', '', 0, 0, 0, '2023-06-27 16:25:52', '2023-06-27 16:25:52', NULL),
(451, 21, '300', 'Demon God Zoro! An Incarnation Of Asura Born From Fighting Spirit!', '鬼神ゾロ! 気迫が見せた阿修羅の化身', 'Kishin Zoro! Kihaku ga Miseta Ashura no Keshin ', '2007-03-11', '', 0, 0, 0, '2023-06-27 16:25:52', '2023-06-27 16:25:52', NULL),
(452, 21, '301', 'Spandam Frightened! The Hero on the Tower of Law!', 'スパンダム驚愕! 司法の塔に立つ英雄', 'Spandam Kyougo! Shihou no Tou ni Tatsu Eiyuu ', '2007-03-18', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(453, 21, '302', 'Robin Freed! Luffy vs. Lucci, Showdown Between Leaders!', 'ロビン解放! ルフィ対ルッチ頂上決戦', 'Robin Kaihou! Luffy tai Lucci Choujou Kessen ', '2007-03-25', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(454, 21, '303', 'Boss Luffy is the Culprit? Track Down the Missing Great Cherry Tree!', '犯人はルフィ親分? 消えた大桜を追え', 'Hannin wa Luffy Oyabun? Kieta Oozakura wo Oe ', '2007-04-01', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(455, 21, '304', 'I Can\'t Protect Anyone Unless I Win! Third Gear Activated!', '勝てなきゃ誰も守れない! ギア3始動', 'Katenakya Dare mo Mamorenai! Gia Sado Shidou ', '2007-04-08', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(456, 21, '305', 'Shivering Past! Dark Justice and Rob Lucci!', '戦慄の過去! 闇の正義とロブ·ルッチ', 'Senritsu no Kako! Yami no Seigi to Robu Rutchi ', '2007-04-15', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(457, 21, '306', 'A Mysterious Mermaid Appears? As Consciousness Fades Away...', '幻の人魚現る? 薄れゆく意識のなかで', 'Maboroshi no Ningyo Awareru? Usure Yuku Ishiki no Naka de ', '2007-04-22', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(458, 21, '307', 'Cannon Fire Sinks the Island! Franky\'s Lamentation!', '砲火に沈む島! フランキー無念の叫び', 'Houka ni Shizumu Shima! Franky Munen no Sakebi ', '2007-04-29', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(459, 21, '308', 'Wait for Luffy! Mortal Combat on the Bridge of Hesitation!', 'ルフィを待て! ためらいの橋の死闘!', 'Luffy wo Mate! Tamerai no Hashi no Shitou! ', '2007-05-06', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(460, 21, '309', 'Fists Full of Emotion! Luffy Unleashes Gatling with All His Might!', '拳に込めた想い! ルフィ渾身の銃乱打', 'Kobushi ni Kometa Omoi! Luffy Konshin no Gatling ', '2007-05-13', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(461, 21, '310', 'From the Sea, a Friend Arrives! The Straw Hats Share the Strongest Bond!', '友, 海より来る! 麦わら一味最強の絆', 'Tomo, Umi Yori Kuru! Mugiwara Ichimi Saikyou no Kizuna ', '2007-05-20', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(462, 21, '311', 'Everyone Makes a Great Escape! The Road to Victory is for the Pirates!', '全員大脱出! 勝者の道は海賊のために', 'Zenin Dai Dasshutsu! Shousha no Michi wa Kaizoku no Tame ni ', '2007-05-27', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(463, 21, '312', 'Thank You, Merry! Snow Falls over the Parting Sea!', 'ありがとうメリー! 雪に煙る別れの海', 'Arigatou Merry! Yuki ni Kemuru Wakare no Umi ', '2007-06-03', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(464, 21, '313', 'Peace Interrupted! A Navy Vice Admiral with a Fist of Love!', '破られた安息! 愛の拳を持つ海軍中将', 'Yaburareta Ansoku! Ai no Kobushi wo Motsu Kaigun Chuujou ', '2007-06-10', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(465, 21, '314', 'The Strongest Family? Luffy\'s Father Revealed!', '最強の家系? 明かされたルフィの父!', 'Saikyou no Kakei? Akasareta Luffy no Chichi! ', '2007-06-17', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(466, 21, '315', 'Its Name Is The New World! The Fate of the Grand Line!', 'その名は新世界! 偉大なる航路の行方', 'Sono Na wa Shin Sekai! Grand Line no Yukue ', '2007-06-24', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(467, 21, '316', 'Shanks Makes a Move! The Linchpin to the Reckless Era!', 'シャンクス動く! 暴走する時代への楔', 'Shanks Ugoku! Bousousuru Jidai e no Kusabi ', '2007-07-01', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(468, 21, '317', 'The Girl in Search of Her Yagara! Great Search in the City of Water!', 'ヤガラを探す少女! 水の都大捜査線!', 'Yagara wo Sagasu Shoujo! Mizu no Miyako Daisousasen! ', '2007-07-08', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(469, 21, '318', 'Mothers are Strong! Zoro\'s Hectic Household Chores!', '母は強し! ゾロのドタバタ家事手伝い', 'Haha wa Tsuyoshi! Zoro no Dotabata Kaji Tetsudai ', '2007-07-15', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(470, 21, '319', 'Sanji’s Shock! Mysterious Old Man and His Super Yummy Cooking!', 'サンジ衝撃! 謎の爺さんと激ウマ料理', 'Sanji Shougeki! Nazo no Jii-san to Hageuma Ryouri ', '2007-07-22', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(471, 21, '320', 'Everyone Finally Has A Bounty! A Pirate Group Worth Over Six Hundred Million!', 'ついに全員賞金首! 6億超えの一味!', 'Tsui ni Zenin Shoukinkubi! Rokuoku Koe no Ichimi! ', '2007-08-19', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(472, 21, '321', 'The King of Animals that Overlooks the Sea! The Dream Ship Magnificently Completed!', '海を臨む百獣の王! 夢の船堂々完成!', 'Umi wo Nozomu Hyakujuu no Ou! Yume no Fune Doudou Kansei! ', '2007-08-26', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(473, 21, '322', 'Goodbye My Dear Underlings! Franky Departs!', 'さらば愛しき子分達! フランキー発つ', 'Saraba Itoshiki Kobun-tachi! Franky Tatsu ', '2007-09-02', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(474, 21, '323', 'Departing the City of Water! Usopp Mans Up and Brings Closure to the Duel!', '出港水の都! 男ウソップ決闘のケジメ', 'Shukkou Mizu no Miyako! Otoko Usopp Kettou no Kejime ', '2007-09-09', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(475, 21, '324', 'Wanted Posters Make It Around the World! Celebrations in Their Hometowns as the Ship Moves Forward!', 'めぐる手配書! 故郷は踊る 船は進む!', 'Meguru Tehaisho! Kokyou wa Odoru Fune wa Susumu! ', '2007-09-16', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(476, 21, '325', 'The Most Heinous Power! Blackbeard\'s Darkness Attacks Ace!', '最凶の能力! エースを襲う黒ひげの闇', 'Saikyou no Nouryoku! Ace wo Osou Kurohige no Yami ', '2007-09-23', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(477, 21, '326', 'The Mysterious Band of Pirates! Sunny and the Dangerous Trap!', '謎の海賊ご一行!サニー号と危険な罠', 'Nazo no Kaizoku Go Ichigyou! Sunny-gou to Kikken na Wana ', '2007-10-14', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(478, 21, '327', 'Sunny in a Pinch! Roar, Secret Superspeed Mecha!', 'サニー号ピンチ!唸れ超速の秘密メカ', 'Sunny-gou Pinchi! Unare Chousoku no Himitsu Mecha ', '2007-10-21', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(479, 21, '328', 'The Dream Sinking in the New World! The Disillusioned Pirate, Puzzle!', '新世界に沈む夢!失意の海賊パズール', 'Shinsekai ni Shizumu Yume! Shitsui no Kaizoku Puzzle ', '2007-10-28', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(480, 21, '329', 'The Assassins Attack! The Great Battle on Ice Begins!', '襲い来る刺客たち!氷上大バトル開始', 'Osoi Kuru Shikaku-tachi! Kouri Ue Daibatoru Kaishi ', '2007-11-04', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(481, 21, '330', 'The Staw Hat’s Hard Battles! A Pirate Soul Risking It All for the Flag!', '大苦戦麦わら一味!旗にかける海賊魂', 'Taikusen Mugiwara Ichimi! Hata ni Kakeru Kaizoku Tamashii ', '2007-11-11', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(482, 21, '331', 'Hot Full Throttle! The Twin’s Magnetic Power Drawing Near!', '暑苦しさ全開! 迫る双子の磁力パワー', 'Atsukurushisa Zenkai! Semaru Futago no Jiryoku Power ', '2007-11-18', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(483, 21, '332', 'Mansion of Great Chaos! The Enraged Don and the Captured Crew!', '大混乱の館! 怒るドンと囚われの一味', 'Daikouran no Kan! Ikaru Don to Toraware no Ichimi ', '2007-11-25', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(484, 21, '333', 'The Return of the Phoenix! The Dream of the Pirate Flag Sworn to a Friend!', '不死鳥ふたたび! 友に誓う海賊旗の夢', 'Fushichou Futatabi! Tomo ni Chikau Kaizokuki no Yume ', '2007-12-02', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(485, 21, '334', 'The Red Hot Decisive Battle! Luffy vs. The Scorching Don!', 'アツアツ超決戦! ルフィvs灼熱のドン', 'Atsu Atsu Choukessen! Luffy vs. Shakuretsu no Don ', '2007-12-09', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(486, 21, '335', 'Waiting in the New World! Farewell to the Brave Pirates!', '新世界で待つ! 勇ましき海賊との別れ', 'Shinsekai de Matsu! Isamashiki Kaizoku to no Wakare ', '2007-12-16', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(487, 21, '336', 'Chopperman to the Rescue! Protect the TV Station by the Shore!', '出動チョッパーマン！守れ渚のＴＶ局', 'Shutsudou Chopperman! Mamore Nagisa no Terebi Kyoku ', '2007-12-23', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(488, 21, '337', 'Plunging into the Devil’s Sea! The Mysterious Skeleton Floating in the Fog!', '魔の海突入! 霧に浮かぶ謎のガイコツ', 'Ma no Umi Totsunyuu! Kiri ni Ukabu Nazo no Gaikotsu ', '2008-01-06', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(489, 21, '338', 'The Joy of Seeing People! The Gentleman Skeleton’s True Identity!', '人に逢えた喜び! ガイコツ紳士の正体', 'Hito ni Aeta Yorokobi! Gaikotsu Shinshi no Shoutai ', '2008-01-13', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(490, 21, '339', 'One Unnatural Phenomenon After the Next! Disembarking on Thriller Bark!', '怪現象ぞくぞく! スリラーバーク上陸', 'Kai Genshou Zokuzoku! Thriller Bark Jouriku ', '2008-01-20', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(491, 21, '340', 'The Man Called a Genius! Hogback Makes His Appearance!', '天才と呼ばれた男! ホグバック現る!', 'Tensai to Yobareta Otoko! Hogback Awararu! ', '2008-01-27', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(492, 21, '341', 'Nami’s in a Major Pinch! The Zombie Mansion and the Invisible Man!', 'ナミ大ピンチ! ゾンビ屋敷と透明人間', 'Nami Daipinchi! Zombie Yashiki to Toumei Ningen ', '2008-02-03', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(493, 21, '342', 'The Zombie’s Secret! Hogback’s Nightmarish Laboratory!', 'ゾンビの謎! 悪夢のホグバック研究所', 'Zombie no Nazo! Akumu no Hogback Kenkyuusho ', '2008-02-10', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(494, 21, '343', 'His Name is Moria! The Great Shadow-Seizing Pirate\'s Trap!', 'その名はモリア! 影を握る大海賊の罠', 'Sono Na wa Moria! Kage wo Nigiru Daikaizoku no Wana ', '2008-02-17', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(495, 21, '344', 'Feast of the Zombie Song! The Night Raid\'s Bell is the Sound of Darkness!', 'ゾンビ歌の饗宴! 夜討ちの鐘は闇の音', 'Zombie Song no Kyouen! Youchi no Kane wa Yami no Oto ', '2008-02-24', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(496, 21, '345', 'A Bunch of Animals? Perona\'s Wonder Garden!', '動物いっぱい? ペローナの不思議の庭', 'Doubutsu Ippai? Perona no Wonder Garden ', '2008-03-02', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(497, 21, '346', 'The Vanishing Straw Hat Crew! A Mysterious Swordsman Appears!', '消える麦わら一味! 現れた謎の剣士!', 'Kieru Mugiwara Ichimi! Arawareta Nazo no Kenshi! ', '2008-03-09', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(498, 21, '347', 'Chivalry Remains! The Traitorous Zombie Protects Nami!', '残る騎士道! ナミを守る裏切りゾンビ', 'Nokoru Kishidou! Nami wo Mamoru Uragiri Zombie ', '2008-03-16', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(499, 21, '348', 'Appearing from the Sky! That Man Is the Humming Swordsman!', '空から参上! 剣狭ハナウタはあの男!', 'Sora kara Sanjou! Kenkyou Hanauta wa Ano Otoko! ', '2008-03-23', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(500, 21, '349', 'Luffy\'s Emergency Situation! The Ultimate Shadow\'s Destination!', 'ルフィ緊急事態! 最強の影の行き先!', 'Luffy Kinkyuujitai! Saikyou no Kage no Ikisaki! ', '2008-03-30', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(501, 21, '350', 'The Warrior Known As the Devil!! The Moment of Oars\' Revival', '魔人と呼ばれた戦士!! オーズ復活の時', 'Majin to Yobareta Senshi!! Oars Fukkatsu no Toki ', '2008-04-20', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(502, 21, '351', 'Awakening After 500 Years!! Oars Opens His Eyes!!', '500年ぶりの目覚め!! オーズ開眼!!', 'Gohyakunen Buri no Mezame!! Oars Kaigan!! ', '2008-04-27', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(503, 21, '352', 'A Belief Worth Begging to Live for!! Brook Defends His Afro', '信念の命乞い!! アフロを守るブルック', 'Shinnen no Inochigoi!! Afro wo Mamoru Brook ', '2008-05-04', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(504, 21, '353', 'A Man\'s Promise Never Dies!! To the Friend Waiting Under the Distant Sky', '男の誓いは死なず!! 遠い空で待つ友へ', 'Otoko no Chikai wa Shinazu!! Toui Sora de Matsu Tomo e ', '2008-05-11', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(505, 21, '354', 'I Swear to Go See Him! Brook and the Cape of Promise', '必ず会いに行く!! ブルックと約束の岬', 'Kanarazu Ai ni Iku!! Brook to Yakusoku no Misaki ', '2008-05-18', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(506, 21, '355', 'Food, Nami and Shadows!! Luffy\'s Enraged Counterattack', 'メシとナミと影!! ルフィ怒りの大反撃', 'Meshi to Nami to Kage!! Luffy Ikari no Daihangeki ', '2008-05-25', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(507, 21, '356', 'Usopp\'s the Strongest? Leave Anything Negative to Him', 'ウソップ最強? ネガティブは任せとけ', 'Usopp Saikyou? Negative wa Makasetoke ', '2008-06-01', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(508, 21, '357', 'The General Zombies Are Down in a Flash!! Oars Feels Like an Adventure!!', '将軍ゾンビ瞬殺!! オーズは冒険気分!!', 'General Zombie Shunsetsu!! Oars wa Bouken Kibun!! ', '2008-06-08', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(509, 21, '358', 'Blazing Knight Sanji!! Kick Down the Fake Wedding', '炎の騎士サンジ!! 蹴り潰せの偽り挙式', 'Honou no Naito Sanji!! Keri Tsubuse Itsuwari no Kyoshiki ', '2008-06-15', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(510, 21, '359', 'A Clear-Clear History? Sanji\'s Stolen Dream', 'スケスケの因縁? 奪われたサンジの夢', 'Suke Suke no Innen? Ubawareta Sanji no Yume ', '2008-06-22', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(511, 21, '360', 'Save Me, Hero!! My Enemy Is the Immortal Princess', '助けて英雄!! 敵は不死身のプリンセス', 'Tasukete Hero!! Teki wa Fujimi no Princess ', '2008-06-29', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(512, 21, '361', 'Perona Is Terrified!! Usopp and Untruthful Share the Same U', 'ペローナ恐怖!! 嘘のウはウソップのウ', 'Perona Kyoufu!! Uso no U wa Usopp no U ', '2008-07-06', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(513, 21, '362', 'Slashes Dancing On the Rooftop!! Zoro vs. Ryuma\'s Showdown', '屋根に舞う斬撃!! 決着ゾロVSリューマ', 'Yane ni Mau Zangeki!! Ketchaku Zoro vs Ryuuma ', '2008-07-13', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(514, 21, '363', 'Chopper Is Furious!! Hogback\'s Evil Medical Practices', 'チョッパー激怒!! ホグバック魔の医術', 'Chopper Gekido!! Hogubakku Ma no Ijutsu ', '2008-07-20', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(515, 21, '364', 'Oars Roars! Come Out, Straw Hat Crew', 'オーズ吼える!! 出て来い麦わらの一味', 'Oars Hoeru!! Dete Koi Mugiwara no Ichimi ', '2008-08-03', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(516, 21, '365', 'Luffy Is the Enemy! The Ultimate Zombie vs. The Straw Hat Crew', '敵はルフィ!! 最強ゾンビ対麦わらの一味', 'Teki wa Luffy!! Saikyou Zombie tai Mugiwara no Ichimi ', '2008-08-10', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(517, 21, '366', 'You\'re Going Down, Absalom!! Nami\'s Lightning Attack of Friendship!!', '倒れろアブサロム!! ナミ友情の雷撃!!', 'Taorero Absalom!! Nami Yuujou no Raigeki!! ', '2008-08-17', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(518, 21, '367', 'Knock Him Down!! Special Attack: Straw Hat Docking?', '奪えダウン!! 必殺麦わらドッキング?', 'Ubae Daun!! Hissatsu Mugiwara Docking? ', '2008-08-24', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(519, 21, '368', 'The Silent Assault!! The Mysterious Visitor, Tyrant Kuma', '足音なき襲来!! 謎の訪問者•暴君くま', 'Ashioto Naki Shuurai!! Nazo no Boumonsha: Boukun Kuma ', '2008-08-31', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(520, 21, '369', 'Oars + Moria! The Most Heinous Combination of Brains and Brawn', 'オーズ+モリア 力と頭脳の最強合体', 'Oars + Moria: Chikara to Zunou no Saikyou Gattai ', '2008-09-07', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(521, 21, '370', 'The Secret Plan to Turn the Tables! Nightmare Luffy Makes His Appearance', '逆転への秘策 ナイトメア•ルフィ見参', 'Gyakuten e no Hisaku: Nightmare Luffy Kenzan ', '2008-09-14', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(522, 21, '371', 'The Straw Hat Crew Gets Wiped Out! The Shadow-Shadow\'s Powers in Full Swing', '壊滅, 麦わら一味 カゲカゲの能力全開', 'Kaimetsu, Mugiwara Ichimi: Kage Kage no Chikara Zenkai ', '2008-09-21', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(523, 21, '372', 'The Incredible Battle Starts! Luffy vs Luffy', '超絶バトルスタート! ルフィVSルフィ', 'Chouzetsu Battle Start! Luffy tai Luffy ', '2008-09-28', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(524, 21, '373', 'The End of the Battle Is Nigh! Pound in the Finishing Move', '決着迫る! たたき込め, とどめの一撃', 'Ketchaku Semaru! Tatakikome, Todome no Ichigeki ', '2008-10-05', '', 0, 0, 0, '2023-06-27 16:26:10', '2023-06-27 16:26:10', NULL),
(525, 21, '374', 'Our Bodies Vanish! The Morning Sun Shines On the Nightmarish Island!', '肉体が消える! 悪夢の島に射す朝日!', 'Karada ga Kieru! Akumu no Shima ni Sasu Asahi! ', '2008-10-12', '', 0, 0, 0, '2023-06-27 16:26:11', '2023-06-27 16:26:11', NULL),
(526, 21, '375', 'Not Out of Danger Yet! Orders to Annihilate the Straw Hat Crew', '終わらない危機! 麦わら一味抹殺指令', 'Owaranai Kiki! Mugiwara Ichimi Massatsu Shirei ', '2008-10-19', '', 0, 0, 0, '2023-06-27 16:26:11', '2023-06-27 16:26:11', NULL),
(527, 21, '376', 'It Repels Everything! Kuma’s Paw-Paw Power!', 'すべてを弾くくまのニキュニキュの能力', 'Subete wo Hajiku Kuma no Nikyu Nikyu no Nouryoku ', '2008-11-09', '', 0, 0, 0, '2023-06-27 16:26:11', '2023-06-27 16:26:11', NULL),
(528, 21, '377', 'The Pain of My Crewmates Is My Pain! Zoro\'s Desperate Fight!', '仲間の痛みは我が痛みゾロ決死の戦い', 'Nakama no Itami wa Waga Itami: Zoro Kesshi no Tatakai ', '2008-11-16', '', 0, 0, 0, '2023-06-27 16:26:11', '2023-06-27 16:26:11', NULL),
(529, 21, '378', 'The Promise from a Distant Day! The Pirates\' Song and a Small Whale!', '遠い日の約束 海賊の唄と小さなクジラ', 'Toui Hi no Yakusoku: Kaizoku no Uta to Chiisa na Kujira ', '2008-11-23', '', 0, 0, 0, '2023-06-27 16:26:11', '2023-06-27 16:26:11', NULL),
(530, 21, '379', 'Brook\'s Past! A Sad Farewell with His Cheerful Comrade!', 'ブルックの過去 陽気な仲間悲しき別れ', 'Brook no Kako: Youki na Nakama Kanashiki Wakare ', '2008-11-30', '', 0, 0, 0, '2023-06-27 16:26:11', '2023-06-27 16:26:11', NULL),
(531, 21, '380', 'Bink\'s Booze! The Song that Connects the Past with the Present!', 'ビンクスの酒 過去と現在をつなぐ唄', 'Binks no Sake: Kako to Ima wo Tsunagu Uta ', '2008-12-07', '', 0, 0, 0, '2023-06-27 16:26:11', '2023-06-27 16:26:11', NULL),
(532, 21, '381', 'A New Crewmate! The Musician, Humming Brook!', '新たな仲間! 音楽家·鼻唄のブルック', 'Aratana Nakama! Ongakuka: Hanauta no Burukku ', '2008-12-14', '', 0, 0, 0, '2023-06-27 16:26:11', '2023-06-27 16:26:11', NULL),
(533, 21, '382', 'The Slow-Slow Menace! \'Silver Fox\' Foxy Returns!', 'ノロノロの脅威 銀狐のフォクシー再び', 'Noro Noro no Kyoui: Gingitsune no Fox Futatabi ', '2008-12-21', '', 0, 0, 0, '2023-06-27 16:26:11', '2023-06-27 16:26:11', NULL),
(534, 21, '383', 'The Great Scramble for Treasure! Collapse! Spa Island!', 'お宝大争奪戦! 崩壊! スパアイランド号', 'Otakara Daisoudatsusen! Houkai! Spa Island-gou ', '2008-12-28', '', 0, 0, 0, '2023-06-27 16:26:11', '2023-06-27 16:26:11', NULL),
(535, 21, '384', 'Brook\'s Great Struggle! Is the Path to Becoming a True Comrade Rigorous?', 'ブルック大奮闘 真の仲間への道険し?', 'Brook Daifuntou: Shin no Nakama e no Michi Kewashi? ', '2009-01-11', '', 0, 0, 0, '2023-06-27 16:26:11', '2023-06-27 16:26:11', NULL),
(536, 21, '385', 'Arriving at Halfway Through the Grand Line! The Red Line', '偉大なる航路半周到達! 赤い土の大陸', 'Grand Line Hanshuu Toutatsu! Red Line ', '2009-01-18', '', 0, 0, 0, '2023-06-27 16:26:11', '2023-06-27 16:26:11', NULL),
(537, 21, '386', 'Hatred of the Straw Hat Crew – Enter Iron Mask Duval', '麦わら一味憎し 鉄仮面のデュバル登場', 'Mugiwara Ichimi Nikushi: Tekkamen no Dyubaru Toujou ', '2009-01-25', '', 0, 0, 0, '2023-06-27 16:26:11', '2023-06-27 16:26:11', NULL),
(538, 21, '387', 'The Fated Reunion! Save the Imprisoned Fish-man', '因縁の再会! 囚われの魚人を救い出せ', 'Innen no Saikai! Toraware no Gyojin wo Sukuidase ', '2009-02-01', '', 0, 0, 0, '2023-06-27 16:26:11', '2023-06-27 16:26:11', NULL),
(539, 21, '388', 'Tragedy! The Truth of the Unmasked Duval', '悲劇! 仮面に隠されたデュバルの真実', 'Higeki! Kamen ni Kakusareta Duval no Shinjitsu ', '2009-02-08', '', 0, 0, 0, '2023-06-27 16:26:11', '2023-06-27 16:26:11', NULL),
(540, 21, '389', 'Explosion! The Sunny\'s Super Secret Weapon: Gaon Cannon', '炸裂! サニー号の超秘密兵器ガオン砲', 'Sakuretsu! Sunny-gou no Chouhimitsu Heiki Gaon Hou ', '2009-02-15', '', 0, 0, 0, '2023-06-27 16:26:11', '2023-06-27 16:26:11', NULL),
(541, 21, '390', 'Landing to Get to Fish-man Island – The Sabaody Archipelago', '魚人島を目指して上陸 シャボンディ諸島', 'Gyojintou wo Mokushishite Jouriku: Sabaody Shotou ', '2009-02-22', '', 0, 0, 0, '2023-06-27 16:26:11', '2023-06-27 16:26:11', NULL),
(542, 21, '391', 'Tyranny! The Rulers of Sabaody, the Celestial Dragons', '暴虐! シャボンディの支配者天竜人', 'Bougyaku! Sabaosy no Shihaisha Tenryuubito ', '2009-03-01', '', 0, 0, 0, '2023-06-27 16:26:11', '2023-06-27 16:26:11', NULL),
(543, 21, '392', 'New Rivals Gather! The 11 Supernovas', '新たなライバル集結! 11人の超新星', 'Aratana Rival Shuuketsu! Juuichinin no Choushinsei ', '2009-03-08', '', 0, 0, 0, '2023-06-27 16:26:11', '2023-06-27 16:26:11', NULL),
(544, 21, '393', 'The Target is Camie! The Looming Clutches of a Professional Kidnapper', '標的はケイミー!! 迫る人攫い屋の魔手', 'Hyouteki wa Camie!! Semaru Hitosarai-ya no Mashu ', '2009-03-15', '', 0, 0, 0, '2023-06-27 16:26:11', '2023-06-27 16:26:11', NULL),
(545, 21, '394', 'Rescue Camie! The Archipelago’s Lingering Dark History', 'ケイミーを救え 諸島に残る暗黒の歴史', 'Camie wo Sukue: Shotou ni Nokoru Ankoku no Rekishi ', '2009-03-29', '', 0, 0, 0, '2023-06-27 16:26:11', '2023-06-27 16:26:11', NULL),
(546, 21, '395', 'Time Limit – The Human Auction Begins', 'タイムリミット 人間オークション開幕', 'Time Limit: Human Auction Kaimaku ', '2009-04-05', '', 0, 0, 0, '2023-06-27 16:26:11', '2023-06-27 16:26:11', NULL),
(547, 21, '396', 'The Fist Explodes! Destroy the Auction', '鉄拳炸裂! オークションをぶっつぶせ', 'Tekken Sakuretsu! Auction wo Buttsubuse ', '2009-04-12', '', 0, 0, 0, '2023-06-27 16:26:11', '2023-06-27 16:26:11', NULL),
(548, 21, '397', 'Major Panic! Desperate Struggle at the Auction House', '大パニック! オークション会場の死闘', 'Dai Panic! Auction Kaijou no Shitou ', '2009-04-19', '', 0, 0, 0, '2023-06-27 16:26:11', '2023-06-27 16:26:11', NULL),
(549, 21, '398', 'Admiral Kizaru Takes Action! Sabaody Archipelago Thrown into Chaos', '大将黄猿動く! 騒然シャボンディ諸島', 'Taishou Kizaru Ugoku! Souzen Shabondi Shotou ', '2009-04-26', '', 0, 0, 0, '2023-06-27 16:26:11', '2023-06-27 16:26:11', NULL),
(550, 21, '399', 'Break Through the Siege! The Navy vs. the Three Captains', '包囲網を突破せよ! 海軍VS三人の船長', 'Houim Ami wo Toppaseyo! Kaigun vs Sannin no Senchou ', '2009-05-03', '', 0, 0, 0, '2023-06-27 16:26:11', '2023-06-27 16:26:11', NULL),
(551, 21, '400', 'Roger and Rayleigh – the King of the Pirates and His Right Hand Man', 'ロジャーとレイリー 海賊王とその右腕', 'Roger to Rayleigh: Kaizoku Ou to Sono Migiude ', '2009-05-10', '', 0, 0, 0, '2023-06-27 16:26:11', '2023-06-27 16:26:11', NULL),
(552, 21, '401', 'No Escape!? Admiral Kizaru’s Light Speed Kick!!', '回避不可能!? 大将黄猿の光速の蹴り', 'Kaihi Fukanou!? Taishou Kizaru no Kousoku no Keri ', '2009-05-17', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(553, 21, '402', 'Overwhelming! The Navy’s Fighting Weapons, the Pacifistas', '圧倒的! 海軍の戦闘兵器パシフィスタ', 'Attouteki! Kaigun no Sentou Heiki Pacifistas ', '2009-05-24', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(554, 21, '403', 'An Even Stronger Enemy Appears! The Battle Axe-Carrying Sentomaru', 'さらなる強敵現る! 鉞かついだ戦桃丸', 'Saranaru Kyouteki Arawaru! Masakari Katsuida Sentoumaru ', '2009-05-31', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(555, 21, '404', 'Admiral Kizaru\'s Fierce Assault! The Straw Hats Face Certain Death!', '大将黄猿の猛攻 麦わら一味絶体絶命!', 'Taishou Kizaru no Moukou: Mugiwara Ichimi Zettaizetsumei! ', '2009-06-07', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(556, 21, '405', 'Eliminated Friends – The Final Day of the Straw Hat Crew', '消された仲間たち 麦わら一味最後の日', 'Kiesareta Nakama-tachi: Mugiwara Ichimi Saigo no Hi ', '2009-06-14', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(557, 21, '406', 'Feudal Era Side Story: Boss Luffy Appears Again', '時代劇特別編 ルフィ親分再び見参', 'Jidaigeki Tokubetsu-hen: Luffy-Oyabun Futatabi Kenzan ', '2009-06-21', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(558, 21, '407', 'Feudal Era Side Story – Defeat Thriller Company\'s Trap', '時代劇特別編 破れ! スリラー商会の罠', 'Jidaigeki Tokubetsu-hen: Yabure! Thriller Shoukai no Wana ', '2009-06-28', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(559, 21, '408', 'Landing! The All-Female Island, Amazon Lily', '上陸! 男子禁制の島アマゾン·リリー', 'Jouriku! Danshi Kinsei no Shima Amazon Lily ', '2009-07-05', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(560, 21, '409', 'Hurry Back to Your Friends! The Maiden Island Adventure', '急げ! 仲間のもとへ 女ヶ島の冒険', 'Isoge! Nakama no Moto e: Nyougashima no Bouken ', '2009-07-12', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(561, 21, '410', 'Everyone Falls in Love! Pirate Empress Hancock', 'みんなメロメロ! 海賊女帝ハンコック', 'Minna Meromero! Kaizoku Jotei Hancock ', '2009-07-19', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(562, 21, '411', 'The Secret Hidden on the Backs – Luffy and the Snake Princess Meet', '背中に隠された秘密 遭遇ルフィと蛇姫', 'Senaka ni Kakusareta Himitsu: Souguu Luffy to Hebihime ', '2009-08-02', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(563, 21, '412', 'Heartless Judgment! Margaret is Turned to Stone!!', '非情の裁き! 石にされたマーガレット!!', 'Hijou no Sabaki! Ishi ni Sareta Margret!! ', '2009-08-09', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(564, 21, '413', 'A Difficult Fight for Luffy! The Snake Sisters\' Haki Power!!', 'ルフィ第苦戦! ヘビ姉妹の覇気の力!!', 'Luffy Daikusen! Hebi Shimai no Haki no Chikara!! ', '2009-08-16', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(565, 21, '414', 'All-Out Special Power Battle!! Gum-Gum vs. Snake-Snake', '能力全開バトル!! ゴムゴムVSヘビヘビ', 'Nouryoku Zenkai Battle!! Gomu Gomu vs. Hebi Hebi ', '2009-08-23', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(566, 21, '415', 'Hancock\'s Confession – The Sisters\' Abhorrent Past', 'ハンコックの告白 姉妹の忌まわしき過去', 'Hankokku no Kokuhaku: Shimai no Imawashiki Kako ', '2009-08-30', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(567, 21, '416', 'Saving Ace! The Next Stop: the Great Prison!', 'エースを救え! 新たな目的地は大監獄', 'Ace wo Sukue! Arata na Mokutekichi wa Daikangoku ', '2009-09-06', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(568, 21, '417', 'Love is a Hurricane! Hancock Madly in Love!', '恋はハリケーン! メロメロハンコック', 'Koi wa Hurricane! Meromero Hancock ', '2009-09-13', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(569, 21, '418', 'The Friends\' Whereabouts – The Science of Weather and the Mechanical Island', '仲間達の行方 天候の科学とからくり島', 'Nakama-tachi no Yukue: Tenkou no Kagaku to Karakurishima ', '2009-09-20', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(570, 21, '419', 'The Friends\' Whereabouts! An Island of Giant Birds and a Pink Paradise!', '仲間達の行方 巨鳥の島と桃色の楽園!', 'Nakama-tachi no Yukue: Kyoudori no Shima to Momoiro no Rakuen! ', '2009-09-27', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(571, 21, '420', 'The Friends\' Whereabouts – Bridging the Islands and Vicious Vegetations!', '仲間達の行方 島をつなぐ橋と食人植物', 'Nakama-tachi no Yukue: Shima wo Tsunagu Hashi to Shokujin Shokubutsu ', '2009-10-04', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(572, 21, '421', 'The Friends\' Whereabouts! A Princess Negativity and the King of Demons!', '仲間達の行方 ネガティブ王女と悪魔王', 'Nakama-tachi no Yukue: Negativity Princess to Akumaou ', '2009-10-11', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(573, 21, '422', 'A Deadly Infiltration! The Underwater Prison Impel Down!', '決死の潜入! 海底監獄インペルダウン', 'Kesshi no Sennyuu! Kaitei Kangoku Impel Down ', '2009-10-18', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(574, 21, '423', 'A Reunion in Hell?! The Man Who Ate the Chop-Chop Fruit!', '地獄で再会!? バラバラの実の実力者!', 'Jigoku de Saikai!? Bara Bara no Mi no Nouryokusha! ', '2009-10-25', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(575, 21, '424', 'Break Through the Crimson Hell! Buggy\'s Chaos-Inducing Plan!', '破れ! 紅蓮地獄 バギーのド派手大作戦', 'Yabure! Guren Jigoku: Baggy no Dohade Daisakusen ', '2009-11-01', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(576, 21, '425', 'The Strongest Man in the Prison! Poison Man Magellan Appears!', '監獄最強の男! 毒人間マゼラン登場', 'Kangoku Saikyou no Otoko! Doku Ningen Mazeran Toujou ', '2009-11-08', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(577, 21, '426', 'A Special Presentation Related to the Movie! A Gold Lion\'s Ambition on the Move!', '映画連動特別編 動き出す金獅子の野望', 'Eiga Rendou Special: Ugokidasu Kinjishi no Yabou ', '2009-11-15', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(578, 21, '427', 'A Special Presentation Related to the Movie! Little East Blue in Danger!', '映画連動特別編 狙われた小さな東の海', 'Eiga Rendou Special: Nerawareta Little East Blue ', '2009-11-22', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(579, 21, '428', 'A Special Presentation Related to the Movie! The Fierce Onslaught of the Amigo Pirates!', '映画連動特別編 アミーゴ海賊団の猛攻', 'Eiga Rendou Special: Amigo Kaizoku-dan no Moukou ', '2009-11-29', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(580, 21, '429', 'A Special Presentation Related to the Movie! Decisive battle! Luffy vs. Largo', '映画連動特別編 決戦! ルフィVSラルゴ', 'Eiga Rendou Special: Kessen! Luffy vs Largo ', '2009-12-06', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(581, 21, '430', 'The Imprisoned Warlord! Jinbei, Knight of the Sea!', '囚われの王下七武海! 海侠のジンベエ', 'Toraware no Ouka Shichibukai! Kaikyou no Jinbei ', '2009-12-13', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(582, 21, '431', 'Chief Jailer Saldeath\'s Trap! Level 3 - Starvation Hell!', '牢番長サルデスの罠 LV.3飢餓地獄', 'Roubanchou Saldeath no Wana: Level 3 Kiga Jigoku ', '2009-12-20', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(583, 21, '432', 'The Unleashed Swan! A Reunion with Bon Clay!', '解き放たれた白鳥! 再会! ボン・クレー', 'Tokihanatareta Suwan! Saikai! Bon Clay ', '2009-12-27', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(584, 21, '433', 'Warden Magellan\'s Strategy! Straw Hat Entrapment Completed!', '署長マゼラン動く 完成! 麦わら包囲網', 'Shochou Mazeran Ugoku: Kansei! Mugiwara Houimou ', '2010-01-10', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(585, 21, '434', 'All Forces Have Gathered! The Battle on Level 4 - The Burning Heat Hell!', '全戦力集結！ LV4·焦熱地獄の決戦', 'Zensenryoku Shuuketsu! Level 4: Shounetsu Jigoku no Kessen ', '2010-01-17', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(586, 21, '435', 'Mighty Magellan! Bon Clay Bugs Out!', 'マゼラン強し! ボン・クレー敵前逃亡', 'Mazeran Tsuyoshi! Bon Clay Tekizen Toubou ', '2010-01-24', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(587, 21, '436', 'The Showdown Has Come! Luffy\'s Desperate Last Attack!', '雌雄決す! 捨て身のルフィ最後の一撃', 'Shiyuu Kessu! Sutemi no Luffy Saigo no Ichigeki ', '2010-01-31', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(588, 21, '437', 'For His Friend! Bon Clay Goes to the Deadly Rescue!', '友達だから ボン・クレー決死の救出行', 'Dachi dakara: Bon Clay Kesshi no Kyuushutsugyou ', '2010-02-07', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(589, 21, '438', 'A Paradise in Hell! Impel Down - Level 5.5!', '地獄に楽園! インペルダウン LV5.5', 'Jigoku ni Rakuen! Impel Down Level Go ten Go ', '2010-02-14', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(590, 21, '439', 'Luffy\'s Treatment Begins! Ivan-san\'s Miraculous Power!', 'ルフィ治療開始! イワさん奇跡の能力', 'Luffy Chiryou Kaishi! Iwa-san Kiseki no Chikara ', '2010-02-21', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(591, 21, '440', 'Believe in Miracles! Bon Clay\'s Cries From the Heart!', '奇跡を信じて! ボン・クレー魂の声援', 'Kiseki wo Shinjite! Bon Clay Tamashii no Seien ', '2010-02-28', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL);
INSERT INTO `episode` (`id`, `uid`, `ep_id_name`, `ep_name`, `ep_jname`, `ep_romaji`, `ep_aired`, `ep_pv`, `ep_view`, `ep_view_month`, `ep_view_years`, `created_at`, `updated_at`, `deleted_at`) VALUES
(592, 21, '441', 'Luffy\'s Back! Ivan-san Begins the Breakout Plan!', 'ルフィ復活! イワさん脱獄計画始動!!', 'Luffy Fukkatsu! Iwa-san Datsugoku Keikaku Shidou!! ', '2010-03-07', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(593, 21, '442', 'Ace\'s Convoy Begins! Battle on the Lowest Floor - Level 6!', 'エース護送開始 最下層ＬＶ６の攻防!', 'Ace Gosou Kaishi: Saikasou Level 6 Koubou ', '2010-03-14', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(594, 21, '443', 'The Ultimate Team Has Formed! Shaking Impel Down!', '最強チーム結成 震撼! インペルダウン', 'Saikyou Team Kessei: Shinkan! Impel Down ', '2010-03-21', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(595, 21, '444', 'Even More Chaos! Here Comes Blackbeard Teach!', 'さらなる混乱! 黒ひげ・ティーチ襲来!', 'Saranaru Konran! Kurohige Teach Shuurai! ', '2010-03-28', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(596, 21, '445', 'The Dangerous Encounter! Blackbeard and Shiryu of the Rain!', '危険な出会い！黒ひげと雨のシリュウ', 'Kiken na Deai! Kurohige to Ame no Shiryuu ', '2010-04-04', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(597, 21, '446', 'No Price Too High! Serious Hannyabal!', '意地でも倒れぬ！本気のハンニャバル', 'Iji demo Taorenu! Honki no Hannyabal ', '2010-04-11', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(598, 21, '447', 'Jet Pistol of Anger! Luffy vs. Blackbeard!', '怒りのJETピストル ルフィvs黒ヒゲ', 'Ikari no Jet Pistole: Luffy vs Kurohige ', '2010-04-18', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(599, 21, '448', 'Stop Magellan! Ivan-san\'s Esoteric Technique Explodes!', 'マゼランを止めろ！イワさん奥義炸裂', 'Mazeran wo Tomero! Iwa-san Ougi Sakuretsu ', '2010-04-25', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(600, 21, '449', 'Magellan\'s Tricky Move! A Foiled Escape Plan!', 'マゼランの奇策！はばまれた脱獄計画', 'Mazeran no Kisaku! Habamareta Datsugoku Sakusen ', '2010-05-02', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(601, 21, '450', 'The Escapee Team in Trouble! The Forbidden Move: Venom Demon!', '脱獄チーム絶体絶命 禁じ手毒の巨兵', 'Datsugoku Tem Zettaizetsumei: Kinjite \'Venom Demon\' ', '2010-05-09', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(602, 21, '451', 'Come, Final Miracle! Break Through the Gate of Justice!', '起こせ最後の奇跡 正義の門を突破せよ', 'Okose Saigo no Kiseki: Seigi no Mon wo Toppaseyo ', '2010-05-16', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(603, 21, '452', 'To the Navy Headquarters! Off to Rescue Ace!', '目指せ海軍本部 エース救出への船出!', 'Mezase Kaigun Honbu: Ace Kyuushutsu e no Funade ', '2010-05-23', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(604, 21, '453', 'The Friends\' Whereabouts! The Weatheria Report and the Cyborg Animals!', '仲間達の行方 空島リポートと改造動物', 'Nakama-tachi no Yukue: Weather Report to Cyborg Animal ', '2010-05-30', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(605, 21, '454', 'The Friends\' Whereabouts! A Cheeper of Giant Birds and a Pink Showdown!', '仲間達の行方 巨鳥のヒナと桃色の対決', 'Nakama-tachi no Yukue: Kyochou no Hina to Momoiro no Taiketsu ', '2010-06-06', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(606, 21, '455', 'The Friends\' Whereabouts! Revolutionaries and the Gorging Forest\'s Trap', '仲間達の行方 革命軍と暴食の森の罠!', 'Nakama-tachi no Yukue: Kakumeigun to Boushoku no Mori no Wana! ', '2010-06-13', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(607, 21, '456', 'The Friends\' Whereabouts! A Huge Tomb and the Panty Debt!', '仲間達の行方 巨大の墓標とパンツの恩', 'Nakama-tachi no Yukue: Kyodai no Hakajirushi to Panty no On ', '2010-06-20', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(608, 21, '457', 'A Special Retrospective Before Marineford! The Vow of the Brotherhood!', '海軍本部直前回想特別編 兄弟の誓い!', 'Marineford Chokuzen Kaisou Special: Kyoudai no Chikai! ', '2010-06-27', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(609, 21, '458', 'A Special Retrospective Before Marineford! The Three Navy Admirals Come Together!', '海軍本部直前回想特別編 集結! 三大将', 'Marineford Chokuzen Kaisou Special: Shuuketsu! San Taishou ', '2010-07-11', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(610, 21, '459', 'Ticking Down to the Time of Battle! The Navy\'s Strongest Lineup in Position!', '決戦の刻迫る! 海軍最強の布陣完成!', 'Kessen no Toki Semaru! Kaigun Saikyou no Fujin Kansei! ', '2010-07-18', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(611, 21, '460', 'A Vast Fleet Appears! Here Come the Whitebeard Pirates!', '巨大艦隊あらわる 襲来! 白ひげ海賊団', 'Kyodai Kantai Arawaru: Shuurai! Shirohige Kaizoku-dan ', '2010-08-01', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(612, 21, '461', 'The Beginning of the War! Ace and Whitebeard\'s Past!', '決戦の幕開け! エースと白ひげの過去', 'Kessen no Makuake! Ace to Shirohige no Kako ', '2010-08-08', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(613, 21, '462', 'The Force That Could Destroy the World! The Power of the Tremor-Tremor Fruit!', '世界を滅ぼす力! グラグラの実の能力', 'Sekai wo Horobosu Chikara! Gura Gura no Mi no Nouryoku ', '2010-08-15', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(614, 21, '463', 'An All-Consuming Inferno!! Admiral Akainu\'s Power!', 'すべてを焼き尽くす!! 大将赤犬の能力!', 'Subete wo Yakitsukusu!! Taishou Akainu no Chikara! ', '2010-08-22', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(615, 21, '464', 'A Descendant of the Beast! Little Oars Jr. - Full Speed Ahead!', '魔人の子孫! リトルオーズJr.驀進！', 'Majin no Shison! Little Oars Junia Bakushin! ', '2010-08-29', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(616, 21, '465', 'Justice For the Winners! Sengoku\'s Strategy in Action!', '勝者だけが正義 発動! センゴクの作戦', 'Shousha dake ga Seigi: Hatsudou! Sengoku no Sakusen ', '2010-09-05', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(617, 21, '466', 'Straw Hat Team Arrives! Tension Grows at the Battlefield', '麦わらチーム到着 風雲急を告げる戦場', 'Mugiwara Team Touchaku: Fuuunkyuu wo Tsugeru Senjou ', '2010-09-12', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(618, 21, '467', 'Even If It Means Death! Luffy vs. the Navy; The Battle Starts!', '死んでも助ける ルフィVS海軍戦闘開始', 'Shindemo Tasukeru: Luffy VS Kaigun Battle Starts ', '2010-09-19', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(619, 21, '468', 'Hard Battles, One After Another! Devil Fruit Users vs. Devil Fruit Users!', '激戦の連続! 能力者軍団VS能力者軍団', 'Gekisen no Renzoku! Nouryokusha Gundan VS Nouryokusha Gundan ', '2010-09-26', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(620, 21, '469', 'Kuma\'s Transformation! Ivan-san\'s Blow of Anger!', 'クマに起きた異変 イワさん怒りの一撃', 'Kuma ni Okita Ihen: Iwa-san Ikari no Ichigeki ', '2010-10-03', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(621, 21, '470', 'The Great Swordsman Mihawk! Luffy Comes Under the Attack of the Black Sword!', '剣豪ミホーク ルフィに迫る黒刀の斬撃', 'Kengou Mihawk: Luffy ni Semaru Kokutou no Zangeki ', '2010-10-10', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(622, 21, '471', 'The Extermination Strategy in Action! The Power of the Pacifistas!', '殲滅作戦始動 パシフィスタ軍団の威力', 'Senmetsu Sakusen Shidou: Pacifista Gundan no Iryoku ', '2010-10-17', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(623, 21, '472', 'Akainu\'s Plot! Whitebeard Entrapped!', '赤犬の謀略! おとしいれられた白ひげ', 'Akainu no Bouryaku! Otoshiirerareta Shirohige ', '2010-10-24', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(624, 21, '473', 'The Encircling Walls Activated! The Whitebeard Pirates Backed into a Corner!!', '包囲壁作動! 白ひげ海賊団絶体絶命!!', 'Houi Sakusen Sadou! Shirohige Kaizoku-dan Zettaizetsumei!! ', '2010-10-31', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(625, 21, '474', 'Execution Order Issued! Break Through the Encircling Walls!', '処刑執行命令下る 包囲壁を突破せよ!', 'Shokei Shikkou Meirei Kudaru: Houiheki wo Toppaseyo! ', '2010-11-07', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(626, 21, '475', 'Moving Into the Final Phase! Whitebeard\'s Trump Card for Recovery!', '最終局面突入! 白ひげ起死回生の一手', 'Saishuu Kyokumen Totsunyuu! Shirohige Kishikaisei no Itte ', '2010-11-14', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(627, 21, '476', 'Luffy at the End of his Tether! An All-Out Battle at the Oris Plaza!', 'ルフィ力尽く! オリス広場の総力戦!!', 'Luffy Chikaratsuku! Oris Hiroba no Souryokusen!! ', '2010-11-21', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(628, 21, '477', 'The Power That Will Shorten One\'s Life! Energy Hormone, Redux!', '命を削る力 テンション・ホルモン再び', 'Inochi wo Kezuru Chikara: Tenshon Hormone Futatabi ', '2010-11-28', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(629, 21, '478', 'To Live Up to a Promise! Luffy and Coby Collide!', '約束のために!! 激突! ルフィとコビー', 'Yakusoku no Tame ni!! Gekitotsu! Luffy to Coby ', '2010-12-05', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(630, 21, '479', 'The Scaffold at Last! The Way to Ace Has Opened!', '処刑台目前! 開かれたエースへの道!!', 'Shokeidai Mokuzen! Hirakareta Ace e no Michi!! ', '2010-12-12', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(631, 21, '480', 'Each on Different Paths! Luffy vs. Garp!', 'それぞれの選んだ道 ルフィVSガープ!', 'Sorezore no Eranda Michi: Luffy vs Garp! ', '2010-12-19', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(632, 21, '481', 'Ace Rescued! Whitebeard\'s Final Order!', 'エース救出! 白ひげ最後の船長命令!', 'Ace Kyuushutsu! Shirohige Saigo no Senchou Meirei! ', '2010-12-26', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(633, 21, '482', 'The Power That Can Burn Even Fire! Akainu\'s Ruthless Pursuit!', '火をも焼き尽くす能力 赤犬非情の追撃', 'Hi wo mo Yakitsukusu Chikara: Akainu Hijou no Tsuigeki ', '2011-01-09', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(634, 21, '483', 'Looking for the Answer! Fire Fist Ace Dies on the Battlefield!', '答えを探して 火拳のエース戦場に死す', 'Kotae wo Sagashite: Hiken no Ace Senjou ni Shisu ', '2011-01-16', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(635, 21, '484', 'The Navy Headquarters Falls! Whitebeard\'s Unspeakable Wrath!', '海軍本部崩壊! 白ひげ言葉なき怒り!', 'Kaigun Honbu Houkai! Shirohige Kotobanaki Ikari! ', '2011-01-23', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(636, 21, '485', 'Ending the Matter! Whitebeard vs. The Blackbeard Pirates!', 'ケジメをつける 白ひげVS黒ひげ海賊団', 'Kejime wo Tsukeru: Shirohige VS Kurohige Kaizoku-dan ', '2011-01-30', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(637, 21, '486', 'The Show Begins! Blackbeard\'s Plot is Revealed!', 'ショーの開幕 明かされた黒ひげの企み', 'Show no Kaimaku: Akasareta Kurohige no Takurami ', '2011-02-06', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(638, 21, '487', 'The Insatiable Akainu! Lava Fists Pummel Luffy!', '赤犬の執念! ルフィを襲うマグマの拳', 'Akainu no Shuunen! Luffy wo Osou Maguma no Kobushi ', '2011-02-13', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(639, 21, '488', 'The Desperate Scream! Courageous Moments That Will Change the Future', '必死の叫び 運命を変える勇気ある数秒', 'Hisshi no Sakebi: Unmei wo Kaeru Yuuki aru Suubyou ', '2011-02-20', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(640, 21, '489', 'Here Comes Shanks! The War of the Best is Finally Over!', 'シャンクス見参! 頂上戦争ついに終結', 'Shankusu Kenzan! Choujou Sensou Tsuini Shuuketsu ', '2011-03-06', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(641, 21, '490', 'Mighty Leaders Face Each Other Down! Heralding the New Era!', '群雄割拠す! 新しい時代の始まり!', 'Gunyuukakkyosu! Atarashii Jidai no Hajimari! ', '2011-03-20', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(642, 21, '491', 'Landing at the Maiden Island! The Harsh Reality Falls Upon Luffy!', '女ヶ島上陸 ルフィを責める過酷な現実', 'Nyougashima Jouriku: Luffy wo Semeru Kakoku na Genjitsu ', '2011-03-27', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(643, 21, '492', 'The Strongest Tag-Team! Luffy and Toriko\'s Hard Struggle!', '最強タッグ! 奮闘、ルフィとトリコ!', 'Saikyou Tag! Funtou, Luffy to Toriko! ', '2011-04-03', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(644, 21, '493', 'Luffy and Ace! The Story of How the Brothers Met!', 'ルフィとエース 兄弟の出会いの物語!', 'Luffy to Ace: Kyoudai no Deai no Monogatari! ', '2011-04-10', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(645, 21, '494', 'Here Comes Sabo! The Boy at the Gray Terminal!', 'サボ登場! 不確かな物の終着駅の少年', 'Sabo Toujou! Gurei Terminal no Shounen ', '2011-04-17', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(646, 21, '495', 'I Won\'t Run! Ace\'s Desperate Rescue Operation!', 'おれは逃げない エース決死の救出作戦', 'Ore wa Nigenai: Ace Kesshi no Kyuushutsu Sakusen ', '2011-04-24', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(647, 21, '496', 'To The Sea Someday! The Pledge of the Three Brats!', 'いつか海へ! 三人の悪童ちかいの盃!', 'Itsuka Umi e! Sannin no Akudou Chikai no Sakazuki! ', '2011-05-01', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(648, 21, '497', 'Leaving the Dadan Family for Good?! The Kids\' Hideout Has Been Built!', 'ダダン一家との別れ!? 完成! 秘密基地', 'Dadan Ikka to no Wakare!? Kansei! Himitsu Kichi ', '2011-05-08', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(649, 21, '498', 'Luffy Becoming an Apprentice?! A Man Who Fought Against the King of the Pirates!', 'ルフィ弟子入り!? 海賊王と戦った男!', 'Luffy Deshi-iri!? Kaizoku-Ou to Tatakatta Otoko! ', '2011-05-15', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(650, 21, '499', 'The Battle against the Big Tiger! Who is Going to be Captain?!', '大虎との決戦! 船長になるのは誰だ!', 'Ootora to no Kessen! Senchou ni Naru no wa Dare da! ', '2011-05-22', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(651, 21, '500', 'Freedom Taken Away! The Nobles\' Plot Closing in on the Brothers!', '奪われた自由! 三兄弟に迫る貴族の罠', 'Ubawareta Jiyuu! Sankyodai ni Semaru Kizoku no Wana ', '2011-05-29', '', 0, 0, 0, '2023-06-27 16:26:19', '2023-06-27 16:26:19', NULL),
(652, 21, '501', 'The Fire Has Been Set! The Gray Terminal in Crisis!', '放たれた炎 グレイ・ターミナルの危機', 'Hanatareta Honou: Gurei Terminal no Kikii ', '2011-06-05', '', 0, 0, 0, '2023-06-27 16:26:28', '2023-06-27 16:26:28', NULL),
(653, 21, '502', 'Where can freedom be found? A Sad Departure of a Boy!', '自由はどこにある? 少年の悲しき船出', 'Jiyuu wa Doko ni Aru? Shounen no Kanashiki Funade ', '2011-06-12', '', 0, 0, 0, '2023-06-27 16:26:28', '2023-06-27 16:26:28', NULL),
(654, 21, '503', 'Take Good Care of Him! A Letter from the Brother!', 'よろしく頼む! 兄弟から届いた手紙!', 'Yoroshiku Tanomu! Kyoudai kara Todoita Tegami! ', '2011-06-19', '', 0, 0, 0, '2023-06-27 16:26:28', '2023-06-27 16:26:28', NULL),
(655, 21, '504', 'To Live Up to the Promise! Departures of Their Own!', '約束を果たすため それぞれの旅立ち!', 'Yakusoku wo Hatasu Tame: Sorezore no Tabidachi! ', '2011-06-26', '', 0, 0, 0, '2023-06-27 16:26:28', '2023-06-27 16:26:28', NULL),
(656, 21, '505', 'I Want to See Them! Luffy\'s Mournful Cry!', 'あいつらに会いてェ! ルフィ涙の叫び', 'Aitsura ni Aitee! Luffy Namida no Sakebi ', '2011-07-03', '', 0, 0, 0, '2023-06-27 16:26:28', '2023-06-27 16:26:28', NULL),
(657, 21, '506', 'Straw Hats in Shock! The Bad News Has Reached Them!', '麦わらの一味激震! もたらされた凶報', 'Mugiwara no Ichimi Gekishin! Motarasareta Kyouhou ', '2011-07-10', '', 0, 0, 0, '2023-06-27 16:26:28', '2023-06-27 16:26:28', NULL),
(658, 21, '507', 'Reunited with Dark King Rayleigh! Decision Time for Luffy!', '冥王レイリーとの再会 ルフィ決断の時', 'Meiou Rayleigh to no Saikai: Luffy Ketsudan no Toki ', '2011-07-17', '', 0, 0, 0, '2023-06-27 16:26:28', '2023-06-27 16:26:28', NULL),
(659, 21, '508', 'Back to Our Captain! A Jail Break at the Sky Island and the Incident on the Winter Island!', '船長のもとへ 空島の脱獄と冬島の事件', 'Senchou no Moto e: Sorajima no Datsugoku to Fuyujima no Jiken ', '2011-07-31', '', 0, 0, 0, '2023-06-27 16:26:28', '2023-06-27 16:26:28', NULL),
(660, 21, '509', 'Encounter! The Great Swordsman Mihawk! Zoro\'s Self-Willed Deadly Struggle!', '接触! 大剣豪ミホーク ゾロ意地の死闘', 'Sesshoku! Daikengou Mihawk: Zoro Iji no Shitou ', '2011-08-07', '', 0, 0, 0, '2023-06-27 16:26:28', '2023-06-27 16:26:28', NULL),
(661, 21, '510', 'A Disaster for Sanji! The Queen\'s Return to the Kingdom!', 'サンジの受難 王国へと帰還した女王!', 'Sanji no Junan: Oukoku e to Kikanshita Joou! ', '2011-08-14', '', 0, 0, 0, '2023-06-27 16:26:28', '2023-06-27 16:26:28', NULL),
(662, 21, '511', 'Unexpected Relanding! Luffy, to Marineford!', 'まさかの再上陸! ルフィ海軍本部へ!', 'Masaka no Saijouriku! Luffy Marineford e! ', '2011-08-21', '', 0, 0, 0, '2023-06-27 16:26:28', '2023-06-27 16:26:28', NULL),
(663, 21, '512', 'With Hopes It Will Reach My Friends! Big News Spreading Fast!', '仲間に届け かけめぐる大ニュース!', 'Nakama ni Todoke: Kakemeguru Dai-news! ', '2011-08-28', '', 0, 0, 0, '2023-06-27 16:26:28', '2023-06-27 16:26:28', NULL),
(664, 21, '513', 'Pirates Get on the Move! Astounding New World!', '動き出す海賊たち! 驚天動地の新世界', 'Ugokidasu Kaizoku-tachi! Kyoutendouchi no Shinsekai ', '2011-09-04', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(665, 21, '514', 'Living through Hell! Sanji\'s Fight for His Manhood!', '地獄を生き抜け サンジ男をかけた勝負', 'Jigoku wo Ikinuke: Sanji Otoko wo Kaketa Shoubu ', '2011-09-11', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(666, 21, '515', 'I Will Get Much, Much Stronger! Zoro\'s Pledge to his Captain!', 'まだまだ強くなる! ゾロ船長への誓い', 'Madamada Tsuyoku Naru! Zoro Senchou e no Chikai ', '2011-09-18', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(667, 21, '516', 'Luffy\'s Training Begins! To the Place We Promised in 2 Years!', 'ルフィ修行開始 2年後に約束の場所で', 'Luffy Shugyou Kaishi: Ninengo ni Yakusoku no Basho de ', '2011-09-25', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(668, 21, '517', 'The Beginning of The New Chapter! The Straw Hats Reunited!', '新章開幕 再集結! 麦わらの一味', 'Shinshou Kaimaku: Saishuuketsu! Mugiwara no Ichimi ', '2011-10-02', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(669, 21, '518', 'An Explosive Situation! Luffy vs. Fake Luffy!', '一触即発! ルフィVSニセルフィ', 'Isshoku Sokuhatsu! Luffy tai Nise-Luffy ', '2011-10-09', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(670, 21, '519', 'The Navy Has Set Out! The Straw Hats in Danger!', '海軍出動 狙われた麦わらの一味', 'Kaigun Shutsudou: Nerawareta Mugiwara no Ichimi ', '2011-10-16', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(671, 21, '520', 'Big Guns Assembled! The Danger of the Fake Straw Hats!', '大物集結 ニセ麦わら一味の脅威', 'Oomono Shuuketsu: Nise Mugiwara Ichimi no Kyoui ', '2011-10-23', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(672, 21, '521', 'The Battle is on! Show Them What You Got From Training!', '戦闘開始! 見せろ修行の成果!', 'Sentou Kaishi! Misero Shugyou no Seika! ', '2011-10-30', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(673, 21, '522', 'Everyone Together! Luffy, Setting Out for the New World!', '全員集合 ルフィ新世界への船出', 'Zenin Shuugou: Luffy Shin Sekai e no Funade ', '2011-11-06', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(674, 21, '523', 'A Surprising Fact! The Man Who Guarded the Sunny!', '驚愕の真実 サニー号を守った男', 'Kyougaku no Shinjitsu: Sunny-gou wo Mamotta Otoko ', '2011-11-13', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(675, 21, '524', 'Deadly Combat under the Sea! The Demon of the Ocean Strikes!', '海中の死闘 現れた大海原の悪魔', 'Kaichuu no Shitou: Arawareta Ouunabara no Akuma ', '2011-11-20', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(676, 21, '525', 'Lost in the Deep Sea! The Straw Hats Get Separated!', '深海で遭難 逸れた麦わらの一味', 'Shinkai de Sounan: Hagureta Mugiwara no Ichimi ', '2011-11-27', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(677, 21, '526', 'Undersea Volcanic Eruption! Drifting to the Fish-Man Island!', '海底火山噴火! 流されて魚人島', 'Kaitei Kazan Funka! Nagasarete Gyojin-tou ', '2011-12-04', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(678, 21, '527', 'Landing at the Fish-Man Island! Beautiful Mermaids!', '魚人島上陸 うるわしき人魚たち', 'Gyojin-tou Jouriku: Uruwashiki Ningyo-tachi ', '2011-12-11', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(679, 21, '528', 'Excitement Blow-out! Sanji\'s Life Under Threat!', '興奮爆発! サンジ生命の危機!', 'Koufun Bakuhatsu! Sanji Seimei no Kiki! ', '2011-12-18', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(680, 21, '529', 'The Fish-Man Island Will Be Annihilated?! Sharley\'s Prophecy!', '魚人島滅亡!? シャーリーの予言', 'Gyojin-tou Metsubou!? Sharley no Yogen ', '2011-12-25', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(681, 21, '530', 'The King of the Fish-Man Island! Neptune, the God of the Sea!', '魚人島の王 海神ネプチューン!', 'Gyojin-tou no Ou: Kaishin Neptune! ', '2012-01-08', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(682, 21, '531', 'Ryugu Palace! Taken by the Shark that They Saved!', '竜宮城! 助けた鮫に連れられて', 'Ryuuguu-jou! Tasuketa Same ni Tsurerarete ', '2012-01-15', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(683, 21, '532', 'A Coward and a Crybaby! The Princess in the Hard Shell Tower!', '弱虫で泣き虫! 硬殻塔の人魚姫', 'Yowamushi de Nakimushi! Koukakutou no Ningyo-hime ', '2012-01-22', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(684, 21, '533', 'It\'s an Emergency! The Ryugu Palace is Occupied!', '緊急事態発生占拠された竜宮城', 'Kinkyuu Jitai Hassei: Senkyo Sareta Ryuuguu-jou ', '2012-01-29', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(685, 21, '534', 'The Ryugu Palace in Shock! The Kidnapping of Shirahoshi!', '竜宮城激震! しらほし誘拐事件', 'Ryuuguu-Jou Gekishin! Shirahoshi Yuukai Jiken ', '2012-02-05', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(686, 21, '535', 'Hordy\'s Onslaught! The Retaliatory Plan Set Into Motion!', 'ホーディ襲来 復讐計画の始まり', 'Hody Shuurai: Fukushuu Keikaku no Hajimari ', '2012-02-12', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(687, 21, '536', 'The Battle in the Ryugu Palace! Zoro vs. Hordy!', '竜宮城の決戦! ゾロVSホーディ', 'Ryuuguu-jou no Kessen! Zoro tai Hody ', '2012-02-19', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(688, 21, '537', 'Keep Shirahoshi Safe! Decken Close Behind!', 'しらほしを守れ デッケンの追撃', 'Shirahoshi wo Mamore: Dekken no Tsuigeki ', '2012-02-26', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(689, 21, '538', 'The Straw Hats Defeated?! Hordy Gains Control of the Ryugu Palace!', '一味敗北!? ホーディ竜宮城制圧', 'Ichimi Haiboku!? Hody Ryuuguu-jou Seiatsu ', '2012-03-04', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(690, 21, '539', 'The Haunting Ties! Nami and the Fish-Man Pirates!', '蘇る因縁! ナミと魚人海賊団!', 'Yomigaeru Innen! Nami to Gyojin Kaizoku-dan ', '2012-03-18', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(691, 21, '540', 'A Hero Who Freed the Slaves! An Adventurer Tiger!', '奴隷解放の英雄 冒険家タイガー', 'Dorei Kaihou no Eiyuu: Boukenka Taiger ', '2012-03-25', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(692, 21, '541', 'Kizaru Appears! A Trap to Catch Tiger!', '黄猿登場! タイガーを狙う罠!', 'Kizaru Toujou! Taiger wo Nerau Wana! ', '2012-04-01', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(693, 21, '542', 'A Team is Formed! Save Chopper', 'チーム結成! チョッパーを救え', 'Team Kessei! Chopper wo Sukue ', '2012-04-08', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(694, 21, '543', 'The Death of a Hero! A Shocking Truth of Tiger!', '英雄の最期 タイガー衝撃の真実', 'Eiyuu no Saigo: Taiger Shougeki no Shinjitsu ', '2012-04-15', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(695, 21, '544', 'The Sun Pirates Split! Jimbei vs Arlong!', '海賊団分裂 ジンベエVSアーロン', 'Kaizokudan Bunretsu: Jinbei tai Arlong ', '2012-04-22', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(696, 21, '545', 'Shaking Fish-Man Island! A Celestial Dragon Drifts In!', '揺れる魚人島! 漂着した天竜人', 'Yureru Gyojin-tou! Hyouchakushita Tenryuubito ', '2012-04-29', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(697, 21, '546', 'A Sudden Tragedy! A Gunshot Shuts Down the Future!', '突然の悲劇! 未来を閉ざす凶弾', 'Totsuzen no Higeki! Mirai wo Tozasu Kyoudan ', '2012-05-06', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(698, 21, '547', 'Back to the Present! Hordy Makes a Move!', '再び現在へ! 動き出すホーディ', 'Futatabi Genzai e! Ugokidasu Hody ', '2012-05-13', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(699, 21, '548', 'The Kingdom Quivers - Neptune\'s Execution Command', '王国激震 ネプチューン処刑指令', 'Oukoku Gekishin: Neptunn Shokei Shirei ', '2012-05-20', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(700, 21, '549', 'A Rift Opens Up! Luffy vs. Jimbei!', '生じた亀裂! ルフィVSジンベエ', 'Shoujita Kiretsu! Luffy tai Jimbei ', '2012-05-27', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(701, 21, '550', 'Something Has Happened to Hordy! The True Power of the Evil Drug!', 'ホーディの異変! 凶薬の真の力', 'Hody no Ihen! Kyouyaku no Shin no Chikara ', '2012-06-03', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(702, 21, '551', 'The Battle is on! At Conchcorde Plaza!', '決戦始まる ギョンコルド広場', 'Kessen Hajimaru: Gyonkorudo Hiroba ', '2012-06-10', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(703, 21, '552', 'Surprising Confession! The Truth Behind the Assassination of Otohime!', '衝撃の告白 オトヒメ暗殺の真実', 'Shougeki no Kokuhaku: Otohime Ansatsu no Shinjitsu ', '2012-06-17', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(704, 21, '553', 'Shirahoshi\'s Tears! Luffy Finally Shows Up!', 'しらほしの涙! ルフィ遂に登場', 'Shirahoshi no Namida! Luffy Tsuini Toujou ', '2012-06-24', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(705, 21, '554', 'A Great Clash! The Straw Hat Crew vs. 100,000 Enemies', '大激突! 麦わら一味VS10万の敵', 'Dai Gekitotsu! Mugiwara Ichimi tai Juuman no Teki ', '2012-07-01', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(706, 21, '555', 'Deadly Attacks One After Another! Zoro and Sanji Join The Battle!', '大技炸裂! ゾロ・サンジ出撃!', 'Oowaza Sakuretsu! Zoro Sanji Shutsugeki! ', '2012-07-08', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(707, 21, '556', 'Unveiled! The Secret Weapons of the Sunny!', '初披露! サニー号の秘密兵器!', 'Hatsu Hirou! Sunny-gou no Himitsu Heiki! ', '2012-07-15', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(708, 21, '557', 'Iron Pirate! Here Comes General Franky!', '鉄の海賊! フランキー将軍登場', 'Iron Pirate! Franky Shougun Toujou ', '2012-07-29', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(709, 21, '558', 'The Noah Closing in! The Fish-Man Island Facing Destruction!', 'ノア接近! 魚人島壊滅の危機!', 'Noa Sekkin! Gyojin-tou Kaimetsu no Kiki! ', '2012-08-05', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(710, 21, '559', 'Hurry up, Luffy! Shirahoshi\'s Life in Jeopardy!', '急げルフィ! しらほし絶対絶命', 'Isoge Luffy! Shirahoshi Zettai Zetsumei ', '2012-08-12', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(711, 21, '560', 'The Fierce Fight Begins! Luffy vs. Hordy!', '戦闘開始! ルフィVSホーディ!', 'Sentou Kaishi! Luffy tai Hody! ', '2012-08-19', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(712, 21, '561', 'A Massive Confused Fight! The Straw Hats vs. the New Fish-Man Pirates!', '大乱戦! 一味VS新魚人海賊団!', 'Dai-ransen! Ichimi tai Shin Gyojin Kaizokudan! ', '2012-08-26', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(713, 21, '562', 'Luffy Loses the Fight?! Hordy\'s Long Awaited Revenge!', 'ルフィ敗北!? ホーディ復讐の時', 'Luffy Haiboku!? Hody Fukushuu no Toki ', '2012-09-02', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(714, 21, '563', 'A Shocking Fact! The True Identity of Hordy!', '衝撃の事実! ホーディの正体!', 'Shougeki no Jijitsu! Hody no Shoutai! ', '2012-09-09', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(715, 21, '564', 'Back to Zero! Earnest Wishes for Luffy!', 'ゼロに! ルフィへの熱き願い!', 'Zero ni! Luffy e no Atsuki Negai! ', '2012-09-16', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(716, 21, '565', 'Luffy\'s All-Out Attack! Red Hawk Blasts!', 'ルフィ渾身の一撃! 火拳銃炸裂', 'Luffy Konshin no Ichigeki! Red Hawk Sakuretsu ', '2012-09-23', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(717, 21, '566', 'Coming To An End! The Final Decisive Battle Against Hordy!', 'ついに決着! ホーディ最終決戦', 'Tsui ni Ketchaku! Hordy Saishuu Kessen ', '2012-09-30', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(718, 21, '567', 'Stop, Noah! Desperate Elephant Gatling!', '止まれノア! 決死の象銃乱打!', 'Tomare Noa! Kesshi no Elephant Gatling! ', '2012-10-07', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(719, 21, '568', 'To the Future! The Path to the Sun!', '未来へ! タイヨウへと続く道!', 'Mirai e! Taiyou e to Tsuzuku Michi! ', '2012-10-14', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(720, 21, '569', 'The Secret Revealed! The Truth about the Ancient Weapon!', '明かされた秘密 古代兵器の真実', 'Akasareta Himitsu: Kodai Heiki no Shinjitsu ', '2012-10-21', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(721, 21, '570', 'The Straw Hats Stunned! The New Fleet Admiral of the Navy!', '一味驚愕! 新たなる海軍元帥!', 'Ichimi Kyougaku! Aratanaru Kaigun Gensui! ', '2012-10-28', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(722, 21, '571', 'She Loves Sweets! Big Mom of the Four Emperors!', 'お菓子好き! 四皇ビッグマム', 'Okashi-zuki! Yonkou Big Mom ', '2012-11-04', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(723, 21, '572', 'Many Problems Lie Ahead! A Trap Awaiting in the New World!', '前途多難 新世界に待ち受ける罠', 'Zento Tanan: Shin Sekai ni Machiukeru Wana ', '2012-11-11', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(724, 21, '573', 'Finally Time to Go! Goodbye, Fish-Man Island!', 'ついに出航! さよなら魚人島', 'Tsui ni Shukkou! Sayonara Gyojin-tou ', '2012-11-18', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(725, 21, '574', 'To the New World! Heading for the Ultimate Sea!', '新世界へ! 最強の海をめざして', 'Shin Sekai e! Saikyou no Umi wo Mezashite ', '2012-11-25', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(726, 21, '575', 'Z\'s Ambition! Lily the Little Giant!', 'Zの野望編 小さな巨人リリー!', 'Z no Yabou-hen: Chiisana Kyojin Lily! ', '2012-12-02', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(727, 21, '576', 'Z\'s Ambition! A Dark and Powerful Army!', 'Zの野望編 謎の最強軍団登場!', 'Z no Yabou-hen: Nazo no Saikyou Gundan Toujou! ', '2012-12-09', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(728, 21, '577', 'Z\'s Ambition! A Great and Desperate Escape Plan!', 'Zの野望編 決死の大脱出作戦!', 'Z no Yabou-hen: Kesshi no Dai Dasshutsu Sakusen! ', '2012-12-16', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(729, 21, '578', 'Z\'s Ambition! Luffy vs. Shuzo!', 'Zの野望編 ルフィVSシューゾ!', 'Z no Yabou-hen: Luffy tai Shuuzo! ', '2012-12-23', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(730, 21, '579', 'Arriving! A Burning Island - Punk Hazard!', '上陸! 燃える島パンクハザード', 'Jouriku! Moeru Shima Punk Hazard ', '2013-01-06', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(731, 21, '580', 'A Battle in the Heat! Luffy vs. The Giant Dragon!', '灼熱の戦い! ルフィVS巨大竜!', 'Shakunetsu no Tatakai! Luffy tai Kyodai Ryuu! ', '2013-01-13', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(732, 21, '581', 'The Straw Hats Stunned! Enter: A Samurai\'s Horrifying Severed Head!', '一味騒然! 衝撃の首だけ侍登場!', 'Ichimi Souzen! Shougeki no Kubi dake Samurai Toujou! ', '2013-01-20', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(733, 21, '582', 'Startling! The Secret of the Island is Finally Revealed!', '驚愕! 遂に明かされる島の秘密', 'Kyougaku! Tsui ni Akasareru Shima no Himitsu ', '2013-01-27', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(734, 21, '583', 'Save the Children! The Straw Hats Start to Fight!', '子供達を救え! 一味戦闘開始', 'Kodomo-tachi wo Sukue! Ichimi Sentou Kaishi ', '2013-02-03', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(735, 21, '584', 'A Swordplay Showdown! Brook vs. the Mysterious Torso Samurai!', '剣術勝負 ブルックVS謎の胴体侍', 'Kenjutsu Shoubu: Brook tai Nazo no Doutai Samurai ', '2013-02-10', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(736, 21, '585', 'The Warlord! Trafalgar Law!', '七武海! トラファルガー・ロー', 'Shichibukai! Trafalgar Law ', '2013-02-17', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(737, 21, '586', 'In a Real Pinch! Luffy Sinks into the Ice-cold Lake!', '大ピンチ ルフィ極寒の湖に沈む', 'Dai Pinchi: Luffy Gokkan no Mizuumi ni Shizumu ', '2013-03-03', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(738, 21, '587', 'A Collision! Law vs. Vice Admiral Smoker!', '激突! ローVSスモーカー中将', 'Gekitotsu! Law tai Smoker Chuujou ', '2013-03-17', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(739, 21, '588', 'Meeting Again After Two Years! Luffy and Law!', '2年ぶりの再会! ルフィとロー', 'Ninen buri no Saikai! Luffy to Law ', '2013-03-24', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(740, 21, '589', 'The Worst in the World! A Scientist of Terror - Caesar!', '世界最悪 恐怖の科学者シーザー', 'Sekai Saiaku: Kyoufu no Kagakusha Caesar ', '2013-03-31', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(741, 21, '590', 'History\'s Strongest Collaboration vs. Glutton of the Sea', '史上最強コラボVS海の大食漢', 'Shijou Saikyou Collaboration tai Umi no Taishokukan ', '2013-04-07', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(742, 21, '591', 'Chopper\'s Fury! The Master\'s Inhumane Experiment!', 'チョッパー激怒 M非道なる実験', 'Chopper Gekido: Master Hidounaru Jikken ', '2013-04-14', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(743, 21, '592', 'To Annihilate the Straw Hats! Legendary Assassins Descend!', '一味抹殺! 伝説の殺し屋来襲!', 'Ichimi Massatsu! Densetsu no Koroshiya Raishuu! ', '2013-04-21', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(744, 21, '593', 'Save Nami! Luffy\'s Fight on the Snow-Capped Mountains!', 'ナミを救え! ルフィ雪山の戦い', 'Nami wo Sukue! Luffy Yukiyama no Tatakai ', '2013-04-28', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(745, 21, '594', 'Formed! Luffy and Law\'s Pirate Alliance!', '結成! ルフィ・ロー海賊同盟!', 'Kessei! Luffy Law Kaizoku Doumei! ', '2013-05-05', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(746, 21, '595', 'Capture M! The Pirate Alliance\'s Operation Launches!', 'Mを捉えろ 海賊同盟作戦開始!', 'M wo Toraero: Kaizoku Doumei Sakusen Kaishi! ', '2013-05-12', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(747, 21, '596', 'On the Verge of Annihilation! A Deadly Monster Comes Flying In!', '全滅の危機 死のモンスター飛来', 'Zenmetsu no Kiki: Shi no Monster Hirai ', '2013-05-19', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(748, 21, '597', 'An Intense Battle! Caesar Exercises His True Power!', '大激戦 シーザー真の能力発動!', 'Dai-Gekisen: Caesar Shin no Nouryoku Hatsudou! ', '2013-05-26', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(749, 21, '598', 'A Samurai Who Can Cut Fire! Foxfire Kin\'emon!', '炎切り裂く侍! 狐火の錦えもん!', 'Honoo Kirisaku Samurai! Kitsunebi no Kinemon! ', '2013-06-02', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(750, 21, '599', 'Shocking! The True Identity of the Mystery Man Vergo!', '衝撃! 謎の男ヴェルゴの正体!', 'Shougeki! Nazo no Otoko Vergo no Shoutai! ', '2013-06-09', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(751, 21, '600', 'Save the Children! The Master\'s Evil Hands Close in!', '子供達を守れ! 迫るMの魔の手', 'Kodomo-tachi wo Mamore! Semaru Master no Ma no Te ', '2013-06-16', '', 0, 0, 0, '2023-06-27 16:26:29', '2023-06-27 16:26:29', NULL),
(752, 21, '601', 'Shaking Up the New World! Caesar\'s Horrendous Experiment!', '新世界激震 シーザー悪夢の実験', 'Shin Sekai Gekishin: Caesar Akumu no Jikken ', '2013-06-23', '', 0, 0, 0, '2023-06-27 16:26:37', '2023-06-27 16:26:37', NULL),
(753, 21, '602', 'The Deadliest Weapon of Mass Destruction in History! Shinokuni!', '史上最悪の殺戮兵器! シノクニ', 'Shijou Saiaku no Satsuriku Heiki! Shinokuni ', '2013-06-30', '', 0, 0, 0, '2023-06-27 16:26:37', '2023-06-27 16:26:37', NULL),
(754, 21, '603', 'Launching the Counter Attack! Luffy and Law\'s Great Escape!', '反撃開始! ルフィ·ロー大脱出', 'Hangeki Kaishi! Luffy Law Dai-Dasshutsu ', '2013-07-07', '', 0, 0, 0, '2023-06-27 16:26:37', '2023-06-27 16:26:37', NULL),
(755, 21, '604', 'Get to Building R! The Pirate Alliance\'s Great Advance!', 'めざせR棟! 海賊同盟快進撃!', 'Mezase R! Kaizoku Doumei Kai-Shingeki! ', '2013-07-14', '', 0, 0, 0, '2023-06-27 16:26:37', '2023-06-27 16:26:37', NULL),
(756, 21, '605', 'Tashigi\'s Tears! G-5\'s Desperate Breakthrough Plan!', 'たしぎの涙 G5決死の突破作戦', 'Tashigi no Namida: G-5 Kesshi no Toppa Sakusen ', '2013-07-21', '', 0, 0, 0, '2023-06-27 16:26:37', '2023-06-27 16:26:37', NULL),
(757, 21, '606', 'The Treacherous Vice Admiral! Demon Bamboo Vergo!', '裏切りの中将! 鬼竹のヴェルゴ', 'Uragiri no Chuujou! Kichiku no Vergo ', '2013-07-28', '', 0, 0, 0, '2023-06-27 16:26:37', '2023-06-27 16:26:37', NULL),
(758, 21, '607', 'A Fierce Battle Gets Heated! Luffy vs. Caesar!', '白熱の激戦 ルフィVSシーザー', 'Hakunetsu no Gekisen: Luffy tai Caesar ', '2013-08-11', '', 0, 0, 0, '2023-06-27 16:26:37', '2023-06-27 16:26:37', NULL),
(759, 21, '608', 'A Mastermind Underground! Doflamingo Makes His Move!', '闇の黒幕! ドフラミンゴ動く!', 'Yami no Kuromaku! Doflamingo Ugoku! ', '2013-08-18', '', 0, 0, 0, '2023-06-27 16:26:37', '2023-06-27 16:26:37', NULL),
(760, 21, '609', 'Luffy Dies from Exposure?! The Spine-chilling Snow Woman Monet!', 'ルフィ凍死!? 恐怖の雪女モネ!', 'Luffy Toushi!? Kyoufu no Yuki-Onna Mone! ', '2013-08-25', '', 0, 0, 0, '2023-06-27 16:26:37', '2023-06-27 16:26:37', NULL),
(761, 21, '610', 'Fists Collide! A Battle of the Two Vice Admirals!', 'ぶつかる拳! 二人の中将の戦い', 'Butsukaru Kobushi! Futari no Chuujou no Tatakai ', '2013-09-01', '', 0, 0, 0, '2023-06-27 16:26:37', '2023-06-27 16:26:37', NULL),
(762, 21, '611', 'A Small Dragon! Momonosuke Appears!', '小さなドラゴン! モモの助現る', 'Chiisana Doragon! Momonosuke Arawaru ', '2013-09-08', '', 0, 0, 0, '2023-06-27 16:26:37', '2023-06-27 16:26:37', NULL),
(763, 21, '612', 'A Deadly Fight in a Blizzard! The Straw Hats vs. The Snow Woman!', '吹雪の死闘 麦わらの一味VS雪女', 'Fubuki no Shitou: Mugiwara no Ichimi tai Yuki-Onna ', '2013-09-15', '', 0, 0, 0, '2023-06-27 16:26:37', '2023-06-27 16:26:37', NULL),
(764, 21, '613', 'Showing Off His Techniques! Zoro\'s Formidable One-Sword Style!', '奥義炸裂! ゾロ最強の一刀流!', 'Oogi Sakuretsu! Zoro Saikyou no Ittou-ryuu! ', '2013-09-22', '', 0, 0, 0, '2023-06-27 16:26:37', '2023-06-27 16:26:37', NULL),
(765, 21, '614', 'To Save Her Friends! Mocha Runs at the Risk of Her Life!', '友達を守る! モチャ命がけの逃走', 'Tomodachi wo Mamoru! Mocha Inochi-gake no Tousou ', '2013-09-29', '', 0, 0, 0, '2023-06-27 16:26:37', '2023-06-27 16:26:37', NULL),
(766, 21, '615', 'Brownbeard in Grief! Luffy Lands a Furious Blow!', '茶ひげ悲痛! ルフィ怒りの一撃', 'Chahige Hitsuu! Luffy Ikari no Ichigeki ', '2013-10-06', '', 0, 0, 0, '2023-06-27 16:26:37', '2023-06-27 16:26:37', NULL),
(767, 21, '616', 'A Surprising Outcome! White Chase vs. Vergo!', '衝撃の決着! 白猟VSヴェルゴ!', 'Shougeki no Ketchaku! Smoker tai Vergo! ', '2013-10-13', '', 0, 0, 0, '2023-06-27 16:26:37', '2023-06-27 16:26:37', NULL),
(768, 21, '617', 'Caesar\'s Defeat! The Powerful Grizzly Magnum!', 'シーザー撃破! 最強の灰熊銃', 'Caesar Gekiha! Saikyou no Grizzly Magnum ', '2013-10-20', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(769, 21, '618', 'Raid! An Assassin From Dressrosa!', '襲来! ドレスローザからの刺客', 'Shuurai! Dressrosa kara no Shikaku ', '2013-10-27', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(770, 21, '619', 'Running Wild! Invincible General Franky!', '大暴れ! 無敵のフランキー将軍', 'Ou-abare! Muteki no Franky Shougun ', '2013-11-03', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(771, 21, '620', 'A Critical Situation! Punk Hazard Explodes!', '絶体絶命! パンクハザード大爆発', 'Zettai Zetsumei! Punk Hazard Dai-bakuhatsu ', '2013-11-10', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(772, 21, '621', 'Capture Caesar! General Cannon Blasts!', 'シーザーを捕獲せよ 将軍砲ジェネラルキャノン炸裂', 'Caesar wo Hokaku-seyo: Jeneraru Kyanon Sakuretsu ', '2013-11-17', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(773, 21, '622', 'A Touching Reunion! Momonosuke and Kin\'emon!', '感動の再会! モモの助と錦えもん', 'Kandou no Saikai! Momonosuke to Kinemon ', '2013-11-24', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(774, 21, '623', 'It\'s Time to Say Goodbye! Leaving Punk Hazard!', '惜別の時 パンクハザード出航!', 'Sekibetsu no Toki: Punk Hazard Shukkou! ', '2013-12-01', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(775, 21, '624', 'The G-5 Wiped Out! Doflamingo\'s Sudden Attack!', 'G5壊滅! ドフラミンゴ急襲!', 'G-5 Kaimetsu! Doflamingo Kyuushuu! ', '2013-12-08', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(776, 21, '625', 'Intense! Aokiji vs. Doflamingo!', '緊迫! 青キジVSドフラミンゴ', 'Kinpaku! Aokiji vs Doflamingo ', '2013-12-15', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(777, 21, '626', 'Caesar Goes Missing! The Pirate Alliance Makes a Sortie!', '消えたシーザー! 海賊同盟出撃', 'Kieta Caesar Kaizoku Doumei Shutsugeki ', '2013-12-22', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(778, 21, '627', 'Luffy Dies at Sea!? The Pirate Alliance Comes Apart!', 'ルフィ海に死す!? 海賊同盟崩壊', 'Luffy Umi ni Shisu!? Kaizoku Doumei Houkai ', '2014-01-05', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(779, 21, '628', 'A Major Turnaround! Luffy\'s Angry Iron Fist Strikes!', '大逆転! 炸裂ルフィ怒りの鉄拳', 'Dai-gyakuten! Sakuretsu Luffy Ikari no Tekken ', '2014-01-12', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(780, 21, '629', 'Startling! The Big News Shakes Up The New World!', '激震! 新世界動かす大ニュース', 'Gekishin! Shin Sekai Ugokasu Dai-nyuusu ', '2014-01-19', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(781, 21, '630', 'Explore! A Kingdom of Love and Passion Dressrosa!', '冒険! 愛と情熱の国ドレスローザ', 'Bouken! Ai to Jounetsu no Kuni Dressrosa ', '2014-01-26', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(782, 21, '631', 'Full of Enthusiasm! The Corrida Colosseum!', '熱狂渦巻く コリーダコロシアム', 'Nekkyou Uzumaku: Corrida Colosseum ', '2014-02-02', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(783, 21, '632', 'A Dangerous Love! The Dancer Girl - Violet!', '危険な恋 踊り娘ヴァイオレット', 'Kiken na Koi: Odoriko Violet ', '2014-02-09', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(784, 21, '633', 'A Formidable, Unknown Warrior! Here Comes Lucy!', '最強の無名戦士! ルーシー登場', 'Saikyou no Mumei Senshi! Lucy Toujou ', '2014-02-16', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(785, 21, '634', 'A Pirate Noble! Cavendish!', '海賊貴公子 キャベンディッシュ', 'Kaizoku Kikoushi Cavendish ', '2014-02-23', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(786, 21, '635', 'The Fateful Reunion! Bellamy the Hyena!', '運命の再会 ハイエナのベラミー', 'Unmei no Saikai: Haiena no Bellamy ', '2014-03-02', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(787, 21, '636', 'A Super Rookie! Bartolomeo the Cannibal!', '超新星！人食いのバルトロメオ', 'Choushinsei! Hitokui no Bartolomeo ', '2014-03-16', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(788, 21, '637', 'Big Names Duke It Out! The Heated Block B Battle!', '群雄割拠! 白熱のBブロック!', 'Gunyuu-kakkyo! Hakunetsu no B Block! ', '2014-03-23', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(789, 21, '638', 'A Deadly Blow! The Astonishing King Punch!', '一撃必殺! 驚異のキング・パンチ', 'Ichigeki-hissatsu! Kyoui no King Punch ', '2014-03-30', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(790, 21, '639', 'The Fishing Fish Strike! Across the Deadly Iron Bridge!', '闘魚襲来! 死の鉄橋を突破せよ', 'Tougyo Shuurai! Shi no Tekkyou wo Toppa Seyo ', '2014-04-06', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(791, 21, '640', 'Explore! Fairies\' Island - Green Bit!', '冒険! 妖精の島グリーンビット', 'Bouken! Yousei no Shima Green Bit ', '2014-04-13', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(792, 21, '641', 'The Unknown World! The Tontatta Kingdom!', '知られざる世界 トンタッタ王国', 'Shirarezaru Sekai: Tontatta Oukoku ', '2014-04-20', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(793, 21, '642', 'The Stratagem of the Century! Doflamingo Makes His Move!', '世紀の謀略 ドフラミンゴ動く', 'Seiki no Bouryaku: Doflamingo Ugoku ', '2014-04-27', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(794, 21, '643', 'Shaking Heaven and Earth! Admiral Fujitora\'s Power!', '天地ゆるがす! 大将藤虎の実力', 'Tenchi Yurugasu! Taishou Fujitora no Jitsuryoku ', '2014-05-04', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(795, 21, '644', 'A Blow of Anger! A Giant vs. Lucy!', '怒りの一撃! 巨人VSルーシー', 'Ikari no Ichigeki! Kyojin tai Lucy ', '2014-05-11', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(796, 21, '645', 'Destruction Cannon Blasts! Lucy in Trouble!', '破壊砲炸裂! ルーシー危機一髪', 'Hakai-hou Sakuretsu! Lucy Kiki-ippatsu ', '2014-05-18', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(797, 21, '646', 'The Legendary Pirate! Don Chinjao!', '伝説の海賊 首領・チンジャオ!', 'Densetsu no Kaizoku: Don Chinjao! ', '2014-05-25', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(798, 21, '647', 'Light and Shadow! Darkness behind Dressrosa!', '光と影 ドレスローザに潜む闇!', 'Hikari to Kage: Dressrosa ni Hisomu Yami! ', '2014-06-01', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(799, 21, '648', 'Making a Sortie! The Legendary Hero Usoland!', '出撃 伝説のヒーローウソランド', 'Shutsugeki: Densetsu no Hero Usoland ', '2014-06-08', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(800, 21, '649', 'The Fierce Battle Coming to the End! Lucy vs. Chinjao!', '激戦決着 ルーシーVSチンジャオ', 'Gekisen Ketchaku: Lucy tai Chinjao ', '2014-06-15', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(801, 21, '650', 'Luffy and the Gladiator of Fate - Rebecca!', 'ルフィと宿命の剣闘士レベッカ', 'Luffy to Shukumei no Ken Toushi Rebecca ', '2014-06-22', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(802, 21, '651', 'Protect You to the End! Rebecca and the Toy Soldier!', '守り抜く！レベッカとおもちゃの兵隊', 'Mamorinuku! Rebecca to Omocha no Heitai ', '2014-06-29', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(803, 21, '652', 'The Last - and Bloodiest - Block! Block D Battle Begins!', '最後の超激戦区 Dブロック開戦', 'Saigo no Chou Gekisen Ku D Block Kaisen ', '2014-07-06', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(804, 21, '653', 'A Decisive Battle! Giolla vs. the Straw Hats!', '決戦！ジョーラVS麦わらの一味', 'Kessen! Giolla vs Mugiwara no Ichimi ', '2014-07-13', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(805, 21, '654', 'Beautiful Sword! Cavendish of the White Horse!', '美剣! 白馬のキャベンディッシュ', 'Biken! Hakuba no Kyabendisshu ', '2014-07-20', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(806, 21, '655', 'A Big Clash! Sanji vs. Doflamingo', '大激突! サンジVSドフラミンゴ', 'Dai-gekitotsu! Sanji tai Doflamingo ', '2014-08-03', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(807, 21, '656', 'Rebecca\'s Special Attack! Last-Ditch Sword Dance!', 'レベッカ必殺剣! 背水の剣舞', 'Rebecca Hissatsu Ken! Haisui no Kenbu ', '2014-08-10', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(808, 21, '657', 'The Most Violent Fighter! Logan vs Rebecca!', '最凶の戦士! ローガンVSレベッカ', 'Saikyou no Senshi! Logan tai Rebecca ', '2014-08-17', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(809, 21, '658', 'A Big Surprise! The True Identity Of The Toy Soldier!', '衝撃! おもちゃの兵隊の正体!', 'Shougeki! Omocha no Heitai no Shoutai! ', '2014-08-24', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(810, 21, '659', 'A Horrible Past! The Secret of Dressrosa', '戦慄の過去! ドレスローザの秘密', 'Senritsu no Kako! Dressrosa no Himitsu ', '2014-08-31', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(811, 21, '660', 'A Nightmare! The Tragic Night of Dressrosa!', '悪夢! ドレスローザ悲劇の一夜', 'Akumu! Dressrosa Higeki no Ichiya ', '2014-09-07', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(812, 21, '661', 'A Showdown Between the Warlords! Law vs. Doflamingo!', '七武海対決！ ローVSドフラミンゴ', 'Shichibukai Taiketsu! Law vs Doflamingo ', '2014-09-14', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(813, 21, '662', 'Two Great Rivals Meet Each Other! Straw Hat and Heavenly Demon!', '両雄相まみえる! 麦わらと天夜叉', 'Ryouyuu Aimamieru! Mugiwara to Ten Yasha ', '2014-09-21', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(814, 21, '663', 'Luffy Astonished! The Man Who Inherit Ace’s Will!', 'ルフィ驚愕 エースの意志を継ぐ男', 'Luffy Kyougaku: Ace no Ishi wo Tsugu Otoko ', '2014-09-28', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(815, 21, '664', 'Operation SOP Starts! Usoland Charges Forth!', 'SOP作戦開始 ウソランド突撃', 'SOP Sakusen Kaishi: Usoland Totsugeki ', '2014-10-05', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(816, 21, '665', 'A Burning Passion! Rebecca vs. Suleiman!', '熱き思い レベッカVSスレイマン', 'Atsuki Omoi: Rebecca tai Suleiman ', '2014-10-12', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(817, 21, '666', 'The End of the Match?! A Surprising Result of Block D!', '勝者決定!? Dブロック衝撃の結末', 'Shousha Kettei!? Block D Shougeki no Ketsumatsu ', '2014-10-19', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(818, 21, '667', 'The Admiral\'s Decision! Fujitora vs. Doflamingo!', '大将の決断 藤虎VSドフラミンゴ', 'Taishou no Ketsudan: Fujitora vs Doflamingo ', '2014-10-26', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL);
INSERT INTO `episode` (`id`, `uid`, `ep_id_name`, `ep_name`, `ep_jname`, `ep_romaji`, `ep_aired`, `ep_pv`, `ep_view`, `ep_view_month`, `ep_view_years`, `created_at`, `updated_at`, `deleted_at`) VALUES
(819, 21, '668', 'The Final Round Starts! Diamante The Hero Shows Up!', '決勝開始 英雄ディアマンテ登場', 'Kesshou Kaishi: Eiyuu Diamante Toujou ', '2014-11-02', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(820, 21, '669', 'A Moving Castle! The Top Executive Pica Rises up!', '動く城! 最高幹部ピーカ出現', 'Ugoku Shiro! Saikou Kanbu Pica Shutsugen ', '2014-11-09', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(821, 21, '670', 'Dragon Claw Strikes! Lucy\'s Intimidating Attack!', '竜の爪炸裂! ルーシー脅威の一撃!', 'Ryuu no Tsume Sakuretsu! Ruushii Kyoui no Ichigeki! ', '2014-11-16', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(822, 21, '671', 'Defeat Sugar! The Army of the Little People Charges!', '打倒シュガー 小人の兵隊突撃!', 'Datou Shugar: Kobito no Heitai Totsugeki! ', '2014-11-23', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(823, 21, '672', 'The Last Light of Hope! The Secret of Our Commander!', '最後の光 我らが隊長の秘密!', 'Saigo no Hikari: Warera ga Taichou no Himitsu! ', '2014-11-30', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(824, 21, '673', 'The Rupture Human! Gladius Blows Up Big Time!', '破裂パンク人間 グラディウス大爆発!', 'Panku Ningen: Gladius Dai Bakuhatsu! ', '2014-12-07', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(825, 21, '674', 'A Liar! Usoland on the Run!', 'ウソつきウソランド逃走中！', 'Usotsuki Usorando Tousou-Chuu! ', '2014-12-14', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(826, 21, '675', 'A Fateful Encounter! Kyros and King Riku!', '運命の出会い キュロスとリク王', 'Unmei no Deai: Kyurosu to Riku Ou ', '2014-12-21', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(827, 21, '676', 'Operation Failed! Usoland the Hero Dies!?', '作戦失敗! 英雄ウソランド死す!?', 'Sakusen Shippai! Eiyuu Usolando Shisu!? ', '2014-12-28', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(828, 21, '677', 'The Legend is Back! Kyros\' All-Out Attack!', '伝説復活！キュロス渾身の一撃', 'Densetsu Fukkatsu! Kyurosu Konshin no Ichigeki ', '2015-01-11', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(829, 21, '678', 'The Fire Fist Strikes! The Flare-Flare Fruit Power Returns!', '火拳炸裂! 復活メラメラの実の力', 'Hiken Sakuretsu! Fukkatsu Mera Mera no Mi no Chikara ', '2015-01-18', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(830, 21, '679', 'Dashing onto the Scene! The Chief of Staff of the Revolutionary Army - Sabo!', '颯爽登場 革命軍参謀総長サボ！', 'Sassou Toujou: Kakumei-gun Sanbou Souchou Sabo! ', '2015-01-25', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(831, 21, '680', 'The Devil\'s Trap! A Dressrosa Extermination Plan!', '悪魔の罠 ドレスローザ殲滅作戦', 'Akuma no Wana: Dressrosa Senmetsu Sakusen ', '2015-02-01', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(832, 21, '681', 'The 500 Million Berry Man! Target: Usoland!', '五億の男 狙われたウソランド！', 'Go Oku no Otoko: Nerawareta Usoland! ', '2015-02-08', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(833, 21, '682', 'Breaking through Enemy Lines! Luffy and Zoro Launch the Counter-Attack!', '敵陣突破 ルフィ・ゾロ反撃開始!', 'Tekijin Toppa: Luffy Zoro Hangeki Kaishi! ', '2015-02-15', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(834, 21, '683', 'With a Rumbling of the Ground! The God of Destruction - Giant Pica Descends!', '大地鳴動 破壊神巨大ピーカ降臨', 'Daichi Meidou: Hakai-shin Kyodai Pica Kourin ', '2015-03-01', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(835, 21, '684', 'Gathering into a Powerful Front! Luffy and a Group of Brutal Warriors!', '大集結！ルフィと凶悪戦士軍団', 'Dai Shuuketsu! Luffy to Kyouaku Senshi Gundan ', '2015-03-15', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(836, 21, '685', 'Steady Progress! Luffy\'s Army vs. Pica!', '快進撃！ルフィ軍団VSピーカ！', 'Kai Shingeki! Luffy Gundan tai Pica! ', '2015-03-22', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(837, 21, '686', 'A Shocking Confession! Law\'s Soulful Vow!', '衝撃告白！ロー熱き魂の誓い！', 'Shougeki Kokuhaku! Law Atsuki Tamashii no Chikai! ', '2015-03-29', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(838, 21, '687', 'A Big Collision! Chief of Staff - Sabo vs. Admiral Fujitora!', '大激突！参謀総長サボVS大将藤虎', 'Dai-Gekitotsu!: Sanbou Souchou Sabo tai Taishou Fujitora ', '2015-04-05', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(839, 21, '688', 'A Desperate Situation! Luffy Gets Caught in a Trap!', '絶体絶命 罠にかかったルフィ！', 'Zettai Zetsumei: Wana ni Kakatta Luffy! ', '2015-04-12', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(840, 21, '689', 'A Great Escape! Luffy\'s Tide-turning Elephant Gun!', '大脱出！ルフィ起死回生の象銃', 'Dai Dasshutsu! Luffy Kishikaisei no Elephant Gun ', '2015-04-19', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(841, 21, '690', 'A United Front – Luffy\'s Breakthrough Towards Victory!', '共同戦線 ルフィ勝利への突破口', 'Kyoudou Sensen: Luffy Shouri e no Toppakou ', '2015-04-26', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(842, 21, '691', 'The Second Samurai – Evening Shower Kanjuro Appears', '二人目の侍 夕立ちカン十郎登場', 'Futarime no Samurai:Yuudachi Kanjuorou Toujou ', '2015-05-03', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(843, 21, '692', 'The Struggle with Pica – Zoro\'s One Finishing Move', '奮闘とのピーカ ゾロ一とどめの一撃', 'Funtou to no Pica: Zoro Ichi Todome no Ichigeki ', '2015-05-10', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(844, 21, '693', 'The Little People\'s Princess! Captive Mansherry!', '小人の姫 囚われのマンシェリー', 'Kobito no Hime: Toraware no Mansherry ', '2015-05-17', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(845, 21, '694', 'Invincible! A Gruesome Army of Headcracker Dolls!', '不死身! 恐怖の頭割り人形軍団', 'Fujimi! Kyoufu no Atamawari Ningyou Gundan ', '2015-05-24', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(846, 21, '695', 'Risking Their Lives! Luffy is the Trump Card for Victory!', '命かけて! ルフィは勝利の切り札', 'Inochi Kakete! Luffy wa Shouri no Kirifuda ', '2015-05-31', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(847, 21, '696', 'A Tearful Reunion! Rebecca and Kyros!', '涙の再会 レベッカとキュロス', 'Namida no Saikai: Rebecca to Kyros ', '2015-06-07', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(848, 21, '697', 'One Shot One Kill! The Man Who Will Save Dressrosa!', '一撃必殺 ドレスローザを救う男', 'Ichigeki Hissatsu: Dressrosa wo Sukuu Otoko ', '2015-06-14', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(849, 21, '698', 'Anger Erupts! Luffy and Law\'s Ultimate Stratagem!', '怒り爆発 ルフィ・ロー最強の秘策', 'Ikari Bakuhatsu: Luffy Law Saikyou no Hisaku ', '2015-06-21', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(850, 21, '699', 'A Noble Family! The True Identity of Doflamingo!', '気高き一族 ドフラミンゴの正体!', 'Kedakaki Ichizoku: Doflamingo no Shoutai! ', '2015-06-28', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(851, 21, '700', 'The Ultimate Power! The Secret of the Op-Op Fruit!', '究極の力 オペオペの実の秘密!', 'Kyuukyoku no Chikara: Ope Ope no Mi no Himitsu! ', '2015-07-05', '', 0, 0, 0, '2023-06-27 16:26:38', '2023-06-27 16:26:38', NULL),
(852, 21, '701', 'Sad Memories! Law, the Boy from the White Town!', '悲しき記憶 白い町の少年ロー!', 'Kanashiki Kioku: Shiroi Machi no Shounen Law! ', '2015-07-12', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(853, 21, '702', 'A Celestial Dragon! Doffy\'s Stormy Past!', '天竜人！ドフィの壮絶なる過去', 'Tenryuubito! Doffy no Souzetsu Naru Kako ', '2015-07-19', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(854, 21, '703', 'A Rocky Road! Law and Corazon\'s Journey of Life!', '苦難の道 ローとコラソン命の旅', 'Kunan no Michi: Law to Corazon Inochi no Tabi ', '2015-08-02', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(855, 21, '704', 'The Time is Ticking Down! Seize the Op-Op Fruit!', '時迫る！オペオペの実を奪え！', 'Toki Semaru! Ope Ope no Mi wo Ubae! ', '2015-08-09', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(856, 21, '705', 'The Moment of Resolution! Corazon\'s Farewell Smile!', '覚悟の時 コラソン別れの笑顔！', 'Kakugo no Toki: Corazon Wakare no Egao! ', '2015-08-16', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(857, 21, '706', 'Advance, Law! The Kindhearted Man\'s Final Fight!', '行けロー 優しき男最期の戦い！', 'Ike Law: Yasashiki Otoko Saigo no Tatakai! ', '2015-08-23', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(858, 21, '707', 'To Be Free! Law\'s Injection Shot Blasts!', '自由へ！ロー注射ショット炸裂', 'Jiyuu e! Law Chuusha Shot Sakuretsu ', '2015-08-30', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(859, 21, '708', 'An Intense Battle! Law vs. Doflamingo!', '熱き闘い ローVSドフラミンゴ', 'Atsuki Tatakai: Law tai Doflamingo ', '2015-09-06', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(860, 21, '709', 'A Decisive Battle Against the Executives! Proud Hajrudin!', '幹部決戦 誇り高きハイルディン', 'Kanbu Kessen: Hokori Takaki Hajrudin ', '2015-09-13', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(861, 21, '710', 'The Battle of Love! The New Leader Sai vs. Baby 5!', '愛の決戦 新棟梁サイVSベビー5', 'Ai no Kessen: Shintouryou Sai tai Baby 5 ', '2015-09-20', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(862, 21, '711', 'The Man\'s Pride! Bellamy\'s Last Charge!', '男の意地 ベラミー最期の突撃！', 'Otoko no Iji: Bellamy Saigo no Totsugeki! ', '2015-09-27', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(863, 21, '712', 'A Strong Wind and a Surge! Hakuba vs. Dellinger!', '疾風怒濤 ハクバVSデリンジャー', 'Shippuudotou: Hakuba tai Dellinger ', '2015-10-04', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(864, 21, '713', 'Barrier-Barrier! Homage God Fist Strikes!', 'バリバリ オマージュ神拳発動！', 'Baribari: Homage Shinken Hatsudou! ', '2015-10-11', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(865, 21, '714', 'The Healing Princess! Save Mansherry!', '癒しの姫 マンシェリーを救え!', 'Iyashi no Hime: Mansherry wo Sukue! ', '2015-10-18', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(866, 21, '715', 'The Manly Duel! Señor\'s Elegy of Love!', '男の決闘 セニョール愛の挽歌', 'Otoko no Kettou: Senor Ai no Banka ', '2015-10-25', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(867, 21, '716', 'Stardust of Death! Diamante\'s Storm of Vicious Attacks!', '死の星屑 ディアマンテ猛攻の嵐', 'Shi no Hoshikuzu: Diamante Moukou no Arashi ', '2015-11-01', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(868, 21, '717', 'Trueno Bastardo! Kyros\' Furious Strike!', '雷の破壊剣[トゥルエノバスタード] キュロス怒りの一撃', 'Trueno Bastardo: Kyros Ikari no Ichigeki ', '2015-11-08', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(869, 21, '718', 'Moving Across the Ground! The Giant Statue Pica\'s Surprise Maneuver!', '大地横断 巨像ピーカ奇襲作戦!', 'Daichi Oudan: Kyozou Pica Kishuu Sakusen! ', '2015-11-15', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(870, 21, '719', 'A Decisive Battle in Midair! Zoro\'s New Special Secret Technique Blasts!', '空中決戦 ゾロ新必殺奥義炸裂!', 'Kuuchuu Kessen: Zoro Shin Hissastsu Ougi Sakuretsu! ', '2015-11-22', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(871, 21, '720', 'So Long! Bellamy\'s Farewell Blow!', 'あばよ! ベラミー別れの一撃!', 'Abayo! Bellamy Wakare no Ichigeki! ', '2015-11-29', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(872, 21, '721', 'Law Dies - Luffy\'s Raging Onslaught!', 'ロー死す ルフィ憤怒の猛攻撃!', 'Law Shisu: Luffy Fundo no Moukougeki! ', '2015-12-06', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(873, 21, '722', 'A Blade of Tenacity! The Gamma Knife Counterattack!', '執念の刃 逆襲のガンマナイフ!', 'Shuunen no Yaiba: Gyakushuu no Gamma Knife! ', '2015-12-13', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(874, 21, '723', 'A Collision of Haki! Luffy vs. Doflamingo!', '覇気激突 ルフィVS[たい]ドフラミンゴ', 'Haki Gekitotsu: Luffy tai Doflamingo ', '2015-12-20', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(875, 21, '724', 'Unassailable! The Stunning Secret of Trebol!', '攻撃不能 トレーボル衝撃の秘密', 'Kougeki Funou: Trebol Shougeki no Himitsu ', '2015-12-27', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(876, 21, '725', 'Anger Erupts! I Will Take Everything upon Myself!', '怒り爆発 おれが全部引き受ける', 'Ikari Bakuhatsu: Ore ga Zenbu Hikiukeru ', '2016-01-10', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(877, 21, '726', 'Fourth Gear! The Phenomenal Bounce-Man!', 'ギア4[フォース]! 驚異のバウンドマン!', 'Gear Fourth! Kyoui no Bounce Man! ', '2016-01-17', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(878, 21, '727', 'A Massive Counterattack! Doflamingo\'s Awakening!', '大逆襲! ドフラミンゴの覚醒!', 'Daigyakushuu! Doflamingo no Kakusei! ', '2016-01-24', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(879, 21, '728', 'Luffy! An All-Out Leo Bazooka!', 'ルフィ! 渾身の獅子[レオ]バズーカ', 'Luffy! Konshin no Leo Bazooka ', '2016-01-31', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(880, 21, '729', 'Flame Dragon King! Protect Luffy\'s Life!', '火炎竜王 ルフィの命を守りぬけ', 'Kaen Ryuuou: Luffy no Inochi wo Mamorinuke ', '2016-02-14', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(881, 21, '730', 'Tears of Miracles! Mansherry\'s Fight!', '奇跡の涙 マンシェリーの戦い!', 'Kiseki no Namida: Mansherry no Tatakai! ', '2016-02-21', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(882, 21, '731', 'As Long as We Breathe! Stop the Deadly Birdcage!', '命の限り 死の鳥カゴを止めろ!', 'Inochi no Kagiri: Shi no Tori Kago wo Tomero! ', '2016-02-28', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(883, 21, '732', 'Dead or Alive! A Fateful Countdown!', '生か死か 運命のカウントダウン', 'Sei ka Shi ka: Unmei no Countdown ', '2016-03-06', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(884, 21, '733', 'Attack on a Celestial! Luffy\'s King Kong Gun of Anger!', '天を討つ ルフィ怒りの大猿王銃[キングコングガン]', 'Ten wo Utsu: Luffy Ikari no King Kong Gun ', '2016-03-20', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(885, 21, '734', 'To Be Free! Dressrosa\'s Delight!', '自由へ! 喜びのドレスローザ!', 'Jiyuu e! Yorokobi no Dressrosa! ', '2016-03-27', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(886, 21, '735', 'The Unheard-of! Admiral Fujitora\'s Surprising Decision!', '前代未聞 大将藤虎衝撃の決断!', 'Zendaimimon: Taishou Fujitora Shougeki no Ketsudan! ', '2016-04-03', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(887, 21, '736', 'Sending a Shock Wave! The Worst Generation Goes Into Action!', '激震走る 動き出す最悪の世代!', 'Gekishin Hashiru: Ugokidasu Saiaku no Sedai! ', '2016-04-10', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(888, 21, '737', 'The Birth of the Legend! The Adventures of the Revolutionary Warrior Sabo!', '伝説誕生 革命戦士サボの冒険!', 'Densetsu Tanjou: Kakumei Senshi Sabo no Bouken! ', '2016-04-17', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(889, 21, '738', 'The Brothers\' Bond! The Untold Story Behind Luffy and Sabo\'s Reunion!', '兄弟の絆 ルフィ・サボ再会秘話', 'Kyoudai no Kizuna: Luffy Sabo Saikai Hiwa ', '2016-04-24', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(890, 21, '739', 'The Strongest Creature! One of the Four Emperors - Kaido, King of the Beasts!', '最強の生物 四皇・百獣のカイドウ', 'Saikyou no Seibutsu: Yonkou - Hyakujuu no Kaidou ', '2016-05-01', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(891, 21, '740', 'Fujitora Takes Action! The Complete Siege of the Straw Hats!', '藤虎動く 麦わらの一味完全包囲網', 'Fujitora Ugoku: Mugiwara no Ichimi Kanzen Houimou ', '2016-05-08', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(892, 21, '741', 'A State of Emergency! Rebecca Is Kidnapped!', '非常事態 さらわれたレベッカ!', 'Hijoujitai: Sarawareta Rebecca! ', '2016-05-15', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(893, 21, '742', 'The Bond Between Father and Daughter! Kyros and Rebecca!', '父娘の絆 キュロスとレベッカ!', 'Oyako no Kizuna: Kyros to Rebecca! ', '2016-05-22', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(894, 21, '743', 'Men\'s Pride! Luffy vs. Fujitora, Head-to-Head!', '男の意地 ルフィVS[たい]藤虎真向勝負', 'Otoko no Iji: Luffy tai Fujitora Makkou Shoubu ', '2016-05-29', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(895, 21, '744', 'No Way Out! Admiral Fujitora\'s Ruthless Pursuit!', '逃場無し 大将藤虎非情の追撃!', 'Nigeba Nashi: Taishou Fujitora Hijou no Tsuigeki! ', '2016-06-05', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(896, 21, '745', 'Sons\' Cups! The Straw Hat Fleet is Formed!', '子分の盃 結成! 麦わら大船団!', 'Kobun no Sakazuki: Kessei! Mugiwara Daisendan! ', '2016-06-12', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(897, 21, '746', 'The Numerous Rivals Struggle Amongst Themselves! The Raging Monsters of the New World', '群雄割拠 荒狂う新世界の怪物達', 'Gunyuukakyo: Arekuruu Shinsekai no Kaibutsu-tachi ', '2016-06-19', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(898, 21, '747', 'The Silver Fortress! Luffy and Barto\'s Great Adventure!', '銀の要塞 ルフィとバルト大冒険', 'Gin no Yousai: Luffy to Barto Daibouken ', '2016-06-26', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(899, 21, '748', 'An Underground Maze! Luffy vs. the Tram Human!', '地下迷宮 ルフィVS[たい]トロッコ人間', 'Chika Meikyuu: Luffy vs. Torokko Ningen ', '2016-07-03', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(900, 21, '749', 'The Sword Technique Heats Up! Law and Zoro Finally Appear!', '剣技白熱 ロー・ゾロ遂に見参!', 'Kengi Hakunetsu: Law Zoro Tsui ni Kenzan! ', '2016-07-10', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(901, 21, '750', 'A Desperate Situation! Luffy Fights a Battle in Extreme Heat!', '絶対絶命 ルフィ極限の灼熱決戦', 'Zettaizetsumei: Luffy Kyokugen no Shakunetsu Kessen ', '2016-07-17', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(902, 21, '751', 'Curtain-up on a New Adventure! Arriving at the Phantom Island, Zou!', '冒険開幕 幻の島「ゾウ」到着!', 'Bouken Kaimaku: Maboroshi no Shima ', '2016-07-31', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(903, 21, '752', 'The New Warlord! The Legendary Whitebeard\'s Son Appears!', '新七武海 伝説・白ひげの息子登場', 'Shin Shichi Bukai: Densetsu Shirohige no Musuko Toujou ', '2016-08-07', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(904, 21, '753', 'A Deadly Elephant Climb! A Great Adventure on the Back of the Giant Elephant!', '決死の登象 巨象の背の大冒険!', 'Kesshi no Tozou: Kyozou no Se no Daibouken! ', '2016-08-21', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(905, 21, '754', 'A Battle Begins! Luffy vs. the Mink Tribe!', '戦闘開始 ルフィVSミンク族!', 'Sentou Kaishi: Luffy vs Mink-zoku! ', '2016-08-28', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(906, 21, '755', 'Garchu! The Straw Hats Reunite!', 'ガルチュー! 麦わらの一味再集結', 'Garchuu! Mugiwara no Ichimi Saishuuketsu ', '2016-09-04', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(907, 21, '756', 'Start to Counterattack! Great Moves by the Twirly Hat Crew!', '反撃開始 ぐるわらの一味大活躍!', 'Hangeki Kaishi: Guruwara no Ichimi Daikatsuyaku! ', '2016-09-11', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(908, 21, '757', 'A Threat Descends! The Beast Pirates, Jack!', '脅威襲来 百獣海賊団ジャック!', 'Kyoui Shuurai: Hyakujuu Kaizokudan Jack! ', '2016-09-25', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(909, 21, '758', 'The King of the Day! Duke Dogstorm Appears!', '昼の王 イヌアラシ公爵登場!', 'Hiru no Ou: Inuarashi Koushaku Toujou! ', '2016-10-02', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(910, 21, '759', 'The King of the Night! Master Cat Viper Emerges!', '夜の王 ネコマムシの旦那見参', 'Yoru no Ou: Nekomamushi no Danna Kenzan ', '2016-10-09', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(911, 21, '760', 'The Exterminated Capital! The Twirly Hat Crew Arrive!', '首都壊滅 ぐるわらの一味上陸!', 'Shuto Kaimetsu: Guruware no Ichimi Jouriku! ', '2016-10-16', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(912, 21, '761', 'The Time Limit Closes in! The Bond Between the Mink Tribe and the Crew!', '刻限迫る ミンク 族と一味の絆！', 'Limit Semaru: Mink-zoku to Ichimi no Kizuna! ', '2016-10-23', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(913, 21, '762', 'The Delinquent Comes Home! Emperor Big Mom\'s Assassins!', '悪童帰郷 四皇ビッグマムの刺客', 'Akudou Kikyou: Yonkou Big Mom no Shikaku ', '2016-10-30', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(914, 21, '763', 'The Truth Behind the Disappearance! Sanji Gets a Startling Invitation!', '失踪の真実 サンジ驚愕の招待状', 'Shissou no Shinjitsu: Sanji Kyougaku no Shoutaijou ', '2016-11-06', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(915, 21, '764', 'To My Buds! Sanji\'s Farewell Note!', '野郎共へ サンジ別れの置手紙', 'Yarou Domo e: Sanji Wakare no Okitegami ', '2016-11-13', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(916, 21, '765', 'Let\'s Go and Meet Master Cat Viper!', 'ネコマムシの旦那に会いに行こう', 'Nekomamushi no Danna ni Ai ni Ikou ', '2016-11-20', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(917, 21, '766', 'Luffy\'s Decision! Sanji on the Brink of Quitting!', 'ルフィ決断 サンジ脱退の危機!', 'Luffy Ketsudan: Sanji Dattai no Kiki! ', '2016-11-27', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(918, 21, '767', 'A Volatile Situation! The Dog and the Cat and the Samurai!', '一触即発 イヌとネコと侍!', 'Isshokusokuhatsu: Inu to Neko to Samurai! ', '2016-12-04', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(919, 21, '768', 'The Third One! Raizo of the Mist, the Ninja, Appears!', '三人目! 忍者・霧の雷ぞう登場', 'Sanninme! Ninja Kiri no Raizou Toujou ', '2016-12-11', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(920, 21, '769', 'A Red Stone! A Guide to the One Piece!', '赤い石! “ひとつなぎの大秘宝ワンピース”への道標', 'Akai Ishi! ', '2016-12-18', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(921, 21, '770', 'The Secret of the Land of Wano! The Kozuki Family and the Ponegliffs!', 'ワノ国の秘密 光月家と歴史の本文', 'Wano Kuni no Himitsu: Kouzuki-ke to Rekishi no Ponegliffs ', '2016-12-25', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(922, 21, '771', 'A Vow Between Two Men! Luffy and Kozuki Momonosuke!', '男の誓い ルフィと光月モモの助', 'Okoto no Chikai: Luffy to Kouzuki Momonosuke ', '2017-01-08', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(923, 21, '772', 'The Legendary Journey! The Dog and the Cat and the Pirate King!', '伝説の航海 イヌとネコと海賊王!', 'Densetsu no Koukai: Inu to Neko to Kaizokuou! ', '2017-01-15', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(924, 21, '773', 'The Nightmare Returns! The Invincible Jack\'s Fierce Attack!', '悪夢再び 不死身のジャック強襲', 'Akumu Futatabi: Fujimi no Jack Kyoushuu ', '2017-01-22', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(925, 21, '774', 'A Battle to Defend Zou! Luffy and Zunesha!', 'ゾウ防衛戦 ルフィとズニーシャ!', 'Zou Boueisen: Luffy to Zunesha! ', '2017-01-29', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(926, 21, '775', 'Save Zunesha! The Straw Hat\'s Rescue Operation!', '巨象ズニーシャを救え 麦わら救急レスキュー大作戦!', 'Zunesha wo Sukue: Mugiwara Rescue Daisakusen! ', '2017-02-05', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(927, 21, '776', 'Saying Goodbye and Descending from the Elephant! Setting Out to Take Back Sanji!', '別れの下象 サンジ奪還の船出!', 'Wakare no Gezou: Sanji Dakkan no Funade! ', '2017-02-12', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(928, 21, '777', 'To the Reverie! Princess Vivi and Princess Shirahoshi!', '世界会議レヴェリーへ 王女ビビとしらほし姫', 'Reverie e: Oujo Vivi to Shirahoshi-hime ', '2017-02-19', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(929, 21, '778', 'To the Reverie! Rebecca and the Sakura Kingdom!', '世界会議レヴェリーへ レベッカとサクラ王国', 'Reverie e: Rebecca to Sakura Oukoku ', '2017-02-26', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(930, 21, '779', 'Kaido Returns! An Imminent Threat to the Worst Generation!', 'カイドウ再び 脅威迫る最悪の世代!', 'Kaidou Futatabi: Kyoui Semaru Saiaku no Sedai! ', '2017-03-05', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(931, 21, '780', 'A Hungry Front! Luffy and the Navy Rookies!', '空腹ハラペコ戦線 ルフィと海軍超新星ルーキー!', 'Harapeko Sensen: Luffy to Kaigun Rookie! ', '2017-03-19', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(932, 21, '781', 'The Implacable Three! A Big Chase After the Straw Hats!', '執念の3人 麦わら一味大追撃戦チェイス!', 'Shuunen no 3 Nin: Mugiwara Ichimi Dai Chase! ', '2017-03-26', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(933, 21, '782', 'The Devil\'s Fist! A Show Down! Luffy vs. Grount!', '悪魔の拳 決戦! ルフィVSグラント', 'Akuma no Kobushi: Kessen! Luffy VS Grant ', '2017-04-02', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(934, 21, '783', 'Sanji\'s Homecoming! Into Big Mom\'s Territory!', 'サンジ帰郷 ビッグ・マムの海域ナワバリへ!', 'Sanji Kikyou: Big Mom no Nawabari e! ', '2017-04-09', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(935, 21, '784', 'Zero and Four! Encountering Germa 66!', 'ダブルシックス)', 'Rei to Yon: Souguu! Germa Double Six (0と4 遭遇! ジェルマ66 ', '2017-04-16', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(936, 21, '785', 'A Deadly Poison Crisis! Luffy and Reiju!', '猛毒の危機 ルフィとレイジュ!', 'Moudoku no Kiki: Luffy to Reiju! ', '2017-04-23', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(937, 21, '786', 'Totto Land! Emperor Big Mom Appears!', 'トットランド)! 四皇ビッグ・マム登場', 'Totto Land! Yonkou Big Mom Toujou (万国 ', '2017-04-30', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(938, 21, '787', 'The Emperor\'s Daughter! Sanji\'s fiancée: Pudding!', 'フィアンセ) プリン', 'Yonkou no Musume: Sanji no Fiancee Pudding (四皇の娘 サンジの婚約者 ', '2017-05-07', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(939, 21, '788', 'A Massive Attack! Mom\'s Hunger Pangs!', '大進撃! 食いわずらいのマム', 'Dai Shingeki! Kui Wazurai no Mom ', '2017-05-14', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(940, 21, '789', 'The Capital City Falls?! Big Mom and Jimbei!', '首都崩壊!? ビッグ・マムとジンベエ', 'Shuto Houkai!? Big Mom to Jinbee ', '2017-05-21', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(941, 21, '790', 'The Emperor\'s Castle! Arriving at the Whole Cake Island!', '四皇の城 ホールケーキアイランド到着', 'Yonkou no Shiro: Whole Cake Island Touchaku ', '2017-05-28', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(942, 21, '791', 'A Mysterious Forest Full of Candies! Luffy vs. Luffy?!', 'お菓子な森 ルフィVSルフィ!?', 'Okashi na Mori: Luffy VS Luffy!? ', '2017-06-04', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(943, 21, '792', 'Mom\'s Assassin! Luffy and the Seducing Woods!', 'マムの刺客 ルフィと誘惑の森!', 'Mom no Shikaku: Luffy to Yuuwaku no Mori! ', '2017-06-11', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(944, 21, '793', 'A Seafaring Kingdom! Germa\'s King Judge!', '海遊国家 ジェルマの王ジャッジ', 'Kaiyuu Kokka: Germa no Ou Judge ', '2017-06-18', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(945, 21, '794', 'A Battle Between Father and Son! Judge vs. Sanji!', '父子対決 ジャッジVSサンジ!', 'Oyako Taiketsu: Judge tai Sanji! ', '2017-07-25', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(946, 21, '795', 'A Giant Ambition! Big Mom and Caesar!', '巨大な野望 ビッグ・マムとシーザー', 'Kyoudai na Yabou: Big Mom to Caesar ', '2017-07-02', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(947, 21, '796', 'The Land of Souls! Mom\'s Fatal Ability!', '魂の国 マムの恐るべき能力!', 'Tamashii no Kuni: Mom no Osorubeki Nouryoku! ', '2017-07-09', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(948, 21, '797', 'A Top Officer! The Sweet 3 General Cracker Appears!', '大幹部! 三将星クラッカー登場', 'Daikanbu! Sanshousei Cracker Toujou! ', '2017-07-16', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(949, 21, '798', 'An Enemy Worth 800 million! Luffy vs. Thousand Armed Cracker!', '8億の敵 ルフィVS千手のクラッカー', '8 Oku no Teki: Luffy VS Senshu no Cracker ', '2017-07-23', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(950, 21, '799', 'An All-out Duel! Gear Four vs. the Bis-Bis Ability', '全力勝負 ギア4フォースVSビスビスの能力ちから', 'Zenryoku Shoubu: Gear Fourth VS Bisbis no Chikara ', '2017-07-30', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(951, 21, '800', 'The First and the Second Join! The Vinsmoke Family!', '1と2 集結! ヴィンスモーク家', 'Ichi to Ni: Shuuketsu! Vinsmoke-ke ', '2017-08-06', '', 0, 0, 0, '2023-06-27 16:26:48', '2023-06-27 16:26:48', NULL),
(952, 21, '801', 'The Benefactor\'s Life! Sanji and Owner Zeff!', 'オーナー) ゼフ', 'Onjin no Inochi: Sanji to Owner Zeff (恩人の命 サンジと料理長 ', '2017-08-13', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(953, 21, '802', 'An Angry Sanji! The Secret of Germa 66!', '怒りのサンジ ジェルマ66ダブルシックスの秘密', 'Ikari no Sanji: Germa Double Six no Himitsu ', '2017-08-20', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(954, 21, '803', 'The Past that He Let Go of! Vinsmoke Sanji!', '捨てた過去 ヴィンスモーク・サンジ', 'Suteta Kako: Vinsmoke Sanji ', '2017-08-27', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(955, 21, '804', 'To the East Blue! Sanji\'s Resolute Departure!', 'イーストブルー) へ サンジ決意の船出', 'East Blue e: Sanji Ketsui no Funade (東の海 ', '2017-09-03', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(956, 21, '805', 'A Battle of Limits! Luffy and the Infinite Biscuits!', '限界勝負 ルフィと無限ビスケット', 'Genkai Shoubu: Luffy to Mugen Biscuit ', '2017-09-17', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(957, 21, '806', 'The Power of Satiety! A New Gear Four Form - Tank Man!', '満腹の力 新ギア4タンクマン!', 'Manpuku no Chikara: Shin Gear Fourth Tan Man! ', '2017-09-24', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(958, 21, '807', 'A Heartbreaking Duel! Luffy vs Sanji! (Part 1)', '哀しき決闘 ルフィVSサンジ', 'Kanashiki Kettou: Luffy VS Sanji (Zenpen) ', '2017-10-01', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(959, 21, '808', 'A Heartbreaking Duel! Luffy vs Sanji! - Part 2', '哀しき決闘 ルフィVSサンジ', 'Kanashiki Kettou: Luffy tai Sanji (Kouhen) ', '2017-10-01', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(960, 21, '809', 'A Storm of Revenge! An Enraged Army Comes to Attack!', '復讐の嵐 怒りの軍団襲来!', 'Fukushuu no Arashi: Ikari no Gundan Shuurai! ', '2017-10-15', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(961, 21, '810', 'The End of the Adventure! Sanji\'s Resolute Proposal!', '冒険の終わり サンジ決意のプロポーズ', 'Bouken no Owari: Sanji Ketsui no Propose ', '2017-10-22', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(962, 21, '811', 'I\'ll Wait Here! Luffy vs. the Enraged Army!', 'ここで待つ ルフィVS怒りの軍団', 'Koko de Matsu: Luffy tai Ikari no Gundan ', '2017-10-29', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(963, 21, '812', 'Invading the Chateau! Reach the Road Ponegliff!', 'ポーネグリフ)', 'Chateau Sennyuu: Ubae! Road Ponegliff (城内(シャドー)潜入 奪え！ ロード歴史の本文', '2017-11-05', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(964, 21, '813', 'A Fateful Confrontation! Luffy and Big Mom!', '因縁の対面　ルフィとビッグ・マム！', 'Innnen no Taimen: Luffy to Big Mom! ', '2017-11-12', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(965, 21, '814', 'Shout of the Soul! Brook and Pedro\'s Lightning Operation!', '魂の叫び　ブルック＆ペドロ電撃作戦', 'Tamashii no Sakebi: Brook & Pedro Dengeki Sakusen ', '2017-11-19', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(966, 21, '815', 'Goodbye! Pudding\'s Tearful Determination!', 'さよなら プリン涙の決意', 'Sayonara: Purin Namida no Ketsui ', '2017-11-26', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(967, 21, '816', 'The History of the Left Eye! Pedro vs. Baron Tamago!', '左眼の因縁 ペドロVSタマゴ男爵', 'Hidari Me no Innen: Pedro tai Tamago-Danshaku ', '2017-12-03', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(968, 21, '817', 'Moist Cigarette! The Night Before Sanji\'s Wedding!', 'シケモク サンジの結婚前夜', 'Shikemoku: Sanji no Kekkon Zenya ', '2017-12-10', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(969, 21, '818', 'The Undaunted Soul! Brook vs. Big Mom!', '不屈の魂（ソウル） ブルックVSビック・マム', 'Fukutsu no Soul: Brook tai Big Mom ', '2017-12-17', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(970, 21, '819', 'Sora\'s Wish! Germa\'s Failure - Sanji!', 'ソラ) の願い ジェルマの失敗作サンジ', 'Sora no Negai: Germa no Shippaisaku Sanji (母 ', '2017-12-24', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(971, 21, '820', 'To Reach Sanji! Luffy\'s Vengeful Hell-bent Dash!', 'サンジの元へ　ルフィ逆襲の大激走', 'Sanji no Moto e: Luffy Gyakushuu no Dai Gekisou! ', '2018-01-07', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(972, 21, '821', 'The Chateau in Turmoil! Luffy, to the Rendezvous!', 'シャトー) 動乱 ルフィ約束の場所へ', 'Chateau Douran: Luffy Yakusoku no Basho e (城内 ', '2018-01-14', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(973, 21, '822', 'Deciding to Say Goodbye! Sanji and his Straw-Hat Bento!', '別れの決意　サンジと麦わら弁当', 'Wakare no Ketsui: Sanji to Mugiwara Bentou ', '2018-01-21', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(974, 21, '823', 'The Emperor Rolls Over! Rescue Brook Mission!', '四皇の寝返り　ブルック救出大作戦！', 'Yonkou no Negaeri: Brook Kyuushutsu Daisakusen! ', '2018-01-28', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(975, 21, '824', 'The Rendezvous! Luffy, a One-on-One at His Limit!', '約束の場所 ルフィ限界の一騎打ち', 'Yakusoku no Basho: Luffy Genkai no Ikkiuchi ', '2018-02-04', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(976, 21, '825', 'A Liar! Luffy and Sanji!', 'ウソつき ルフィとサンジ', 'Usotsuki: Luffy to Sanji ', '2018-02-11', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(977, 21, '826', 'Sanji Comes Back! Crash! The Tea Party from Hell!', 'サンジ復活　壊せ！地獄のお茶会', 'Sanji Fukkatsu: Kowase! Jigoku no Ochakai ', '2018-02-18', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(978, 21, '827', 'A Secret Meeting! Luffy vs. the Fire Tank Pirates!', '密会！ルフィVSファイアタンク海賊団', 'Mikkai! Luffy tai Fire Tank Kaizokudan ', '2018-03-04', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(979, 21, '828', 'The Deadly Pact! Luffy & Bege\'s Allied Forces!', '死の協定 ルフィ&ベッジ連合軍', 'Shi no Kyoutei: Luffy & Bege Rengougun! ', '2018-03-18', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(980, 21, '829', 'Luffy Engages in a Secret Maneuver! The Wedding Full of Conspiracies Starts Soon!', 'ルフィ暗躍　開演直前！陰謀の結婚式', 'Luffy Anyaku: Kaien Chokuzen! Inbou no Kekkonshiki ', '2018-03-25', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(981, 21, '830', 'The Family Gets Together! The Hellish Tea Party Starts!', '家族集結　開演！地獄のお茶会', 'Family Shuuketsu: Kaien! Jigoku no Ochakai ', '2018-04-01', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(982, 21, '831', 'The Broken Couple! Sanji and Pudding Enter!', '仮面夫婦　サンジ♡プリン入場！', 'Kamen Fuufu: Sanji Purin Nyuujou! ', '2018-04-08', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(983, 21, '832', 'A Deadly Kiss! The Mission to Assassinate the Emperor Kicks Off!', '死のキス 四皇暗殺作戦開始!', 'Shi no Kiss: Yonkou Ansatsu Sakusen Kaishi! ', '2018-04-15', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(984, 21, '833', 'Returning the Sake Cup! The Manly Jimbei Pays His Debt!', 'おとこ)ジンベエの落とし前', 'Sakazuki Henjou! Otoko Jinbee no Otoshimae (盃返上! 侠客', '2018-04-22', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(985, 21, '834', 'The Mission Failed?! The Big Mom Pirates Strike Back!', '作戦失敗!? 反撃のビッグ・マム海賊団', 'Sakusen Shippai!? Hangeki no Big Mom Kaizokudan ', '2018-04-29', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(986, 21, '835', 'Run, Sanji! SOS! Germa 66!', 'ダブルシックス)', 'Hashire Sanji: SOS! Germa Double Six (走れサンジ SOS!ジェルマ66', '2018-05-06', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(987, 21, '836', 'Mom\'s Secret! The Giant\'s Island Elbaph and a Little Monster!', 'マムの秘密 巨人の島と小さな怪物', 'Mom no Himitsu: Elbaph to Chiisana Kaibutsu ', '2018-05-13', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(988, 21, '837', 'The Birth of Mom! The Day That Carmel Vanished!', 'マム誕生 カルメルが消えた日', 'Mom Tanjou: Carmel ga Kieta Hi ', '2018-05-20', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(989, 21, '838', 'The Launcher Blasts! The Moment of Big Mom\'s Assassination!', '兵器炸裂! ビッグ·マム暗殺の瞬間', 'Launcher Sakuretsu! Big Mom Ansatsu no Toki ', '2018-05-27', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(990, 21, '839', 'The Evil Army! Transform! Germa 66!', 'ダブルシックス)', 'Aku no Gundan: Henshin! Germa Double Six (悪の軍団 変身!ジェルマ66', '2018-06-03', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(991, 21, '840', 'Cutting the Father-Son Relationship! Sanji and Judge!', '父子の訣別 サンジとジャッジ', 'Oyako no Ketsubetsu: Sanji to Judge ', '2018-06-10', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(992, 21, '841', 'Escape From the Tea Party! Luffy vs. Big Mom!', '茶会脱出!ルフィVSビガ·マム', 'Chakai Dasshutsu! Luffy tai Big Mom ', '2018-06-17', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(993, 21, '842', 'The Execution Begins! Luffy\'s Allied Forces Are Annihilated?!', '処刑開始!ルフィ連合軍全滅!?', 'Shokei Kaishi: Luffy Rengougun Zenmetsu!? ', '2018-06-24', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(994, 21, '843', 'The Castle Collapses! The Straw Hat’s Great Escape Begins!', '巨城崩壞麦わら一味大脱走開始', 'Chateau Houkai: Mugiwara Ichimi Dai Dassou Start! ', '2018-07-01', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(995, 21, '844', 'The Spear of Elbaph! Onslaught! The Flying Big Mom!', '巨人の槍 強襲! 空翔るビッグ·マム', 'Elbaph no Yari: Kyoushuu! Sora Kakeru Big Mom ', '2018-07-08', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(996, 21, '845', 'Pudding\'s Determination! Ablaze! The Seducing Woods!', 'ゆうわく)の森', 'Purin no Ketsui: Dai Enjou! Yuuwaku no Mori (プリンの決意 活大炎上(たいえんじょう! 誘惑', '2018-07-15', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(997, 21, '846', 'A Lightning Counterattack! Nami and Zeus the Thundercloud!', 'らいうん)ゼウス', 'Hangeki no Ikazuchi: Nami to Raiun Zeus! (反撃の雷(かみなり) ナミと雷雲', '2018-07-22', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(998, 21, '847', 'A Coincidental Reunion! Sanji and the Lovestruck Evil Pudding!', 'ぐうぜん)の再会 サンジと恋する悪プリン', 'Guuzen no Saikai: Sanji to Koi Suru Waru Purin (偶然', '2018-07-29', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(999, 21, '848', 'Save the Sunny! Fighting Bravely! Chopper and Brook!', 'サニーを守れ 奮戦！チョッパー&ブルック', 'Sunny wo Mamore: Funsen! Chopper & Brook ', '2018-08-05', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(1000, 21, '849', 'Before the Dawn! Pedro, the Captain of the Guardians!', 'ガーディアンズ) 団長ペドロ', 'Yoake Mae: Guardians Danchou Pedro (夜明け前 侠客団 ', '2018-08-12', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(1001, 21, '850', 'I\'ll Be Back! Luffy, Deadly Departure', '必ず戻る ルフィ命がけの出航！', 'Kanarazu Modoru: Luffy Inochigake no Shukkou! ', '2018-08-19', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(1002, 21, '851', 'The Man with a Bounty of Billion! The Strongest Sweet General, Katakuri!', '十億の男 最強スイート将星カタクリ', '10 Oku no Otoko: Saikyou no 3 Shousei Katakuri ', '2018-08-26', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(1003, 21, '852', 'A Hard Battle Starts! Luffy vs. Katakuri!', '戦いの開始 ルフィVSカタクリ', 'Gekitou Kaimaku: Luffy tai Katakuri ', '2018-09-02', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(1004, 21, '853', 'The Green Room! An Invincible Helmsman, Jimbei!', '波の部屋 無双操舵手ジンベエ', 'Green Room: Muteki no Soudashu Jinbee ', '2018-09-16', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(1005, 21, '854', 'The Threat of the Mole! Luffy’s Silent Fight!', 'ちんもく)の咄い', 'Mogura no Kyoui: Luffy Chinmoku no Tatakai! (土電(もぐら)の脅威(きょうい) ルフィ沈黙', '2018-09-22', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(1006, 21, '855', 'The End of the Deadly Battle?! Katakuri\'s Awakening in Anger!', 'かくせい)', 'Shitou Kecchaku!? Katakuri Ikari no Kakusei (死闘(しとう)決着!? カタクリ怒りの覚醒', '2018-09-30', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(1007, 21, '856', 'The Forbidden Secret! Katakuri’s Merienda!', 'メリエンダ)', 'Kindan no Himitsu: Katakuri no Merienda (禁断の秘密 カタクリのおやつの時間 ', '2018-10-07', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(1008, 21, '857', 'Luffy Fights Back! The Invincible Katakuri\'s Weak Point!', 'ルフィ反撃 無敵カタクリの弱点', 'Luffy Hangeki: Muteki Katakuri no Jakuten! ', '2018-10-14', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(1009, 21, '858', 'Another Crisis! Gear Four vs. Unstoppable Donuts!', '危機再び！ギア4（フォース）vs 無双（むそう）ドーナツ', 'Pinch Futatabi! Gear 4 tai Musou Donuts ', '2018-10-21', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(1010, 21, '859', 'The Rebellious Daughter, Chiffon! Sanji\'s Big Plan for Transporting the Cake!', '反逆の娘（シフォン） サンジのケーキ輸送大作戦', 'Hangeki no Chiffon: Sanji no Cake Yusou Daisakusen ', '2018-10-28', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(1011, 21, '860', 'A Man\'s Way of Life! Bege and Luffy\'s Determination as Captains!', '男の生き様 ベッジとルフィ船長の決意', 'Otoko no Ikizama: Bege to Luffy Senchou no Ketsui ', '2018-11-04', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(1012, 21, '861', 'The Cake Sank?! Sanji and Bege\'s Getaway Battle!', 'ケーキ沈没！？サンジ＆ベッジ逃亡戦', 'Cake Chinbotsu!? Sanji & Bege Toubousen ', '2018-11-11', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(1013, 21, '862', 'Sulong! Carrot\'s Big Mystic Transformation!', 'スーロン) キャロット神秘の大変身', 'Sulong: Carrot Shinpi no Daihenshin (月の獅子 ', '2018-11-18', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(1014, 21, '863', 'Break Through! The Straw Hat\'s Mighty Sea Battle!', '突破せよ 麦わらの一味大海戦！', 'Toppa Seyo: Mugiwara no Ichimi Dai Kaisen! ', '2018-11-25', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(1015, 21, '864', 'Finally, They Clash! The Emperor of the Sea vs. the Straw Hats!', '遂に激突 四皇VS麦わらの一味', 'Tsui ni Gekitotsu: Yonkou tai Mugiwara no Ichimi ', '2018-12-09', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(1016, 21, '865', 'Dark King\'s Direct Precepts! The Battle Against Katakuri Turns Around!', '冥王直伝 カタクリ戦大逆転開始', 'Meiou Jikiden: Katakuri Sen Dai Gyakuten Kaishi ', '2018-12-16', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(1017, 21, '866', 'Finally He Returns! Sanji, the Man Who\'ll Stop the Emperor of the Sea!', '遂に帰還 四皇を止める男サンジ', 'Tsui ni Kikan: Yonkou wo Tomeru Otoko Sanji ', '2018-12-23', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(1018, 21, '867', 'Lurking in the Darkness! An Assassin Targeting Luffy!', '闇に潜む ルフィを襲う暗殺者！', 'Yami ni Hisomu: Luffy wo Osou Ansatsusha! ', '2019-01-06', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(1019, 21, '868', 'One Man\'s Determination! Katakuri\'s Deadly Big Fight!', '男の覚悟 カタクリ命がけ大勝負', 'Otoko no Kakugo: Katakuri Inochigake Ooshoubu ', '2019-01-13', '', 0, 0, 0, '2023-06-27 16:27:13', '2023-06-27 16:27:13', NULL),
(1020, 21, '869', 'Wake Up! The Color of Observation Able to Top the Strongest!', '目覚めろ 最強を越える見聞色', 'Mezamero: Saikyou wo Koeru Kenbun Shoku! ', '2019-01-20', '', 0, 0, 0, '2023-06-27 16:27:14', '2023-06-27 16:27:14', NULL),
(1021, 21, '870', 'A Fist of Divine Speed! Another Gear Four Application Activated!', '神速の拳 新たなるギア4発動！', 'Shinsoku no Ken: Aratanaru Gear 4 Hatsudou! ', '2019-01-27', '', 0, 0, 0, '2023-06-27 16:27:14', '2023-06-27 16:27:14', NULL),
(1022, 21, '871', 'Finally, It\'s Over! The Climax of the Intense Fight against Katakuri!', '遂に終結 壮絶カタクリ戦の行方', 'Tsui ni Shuuketsu: Souzetsu Karakuri Sen no Yukue ', '2019-02-03', '', 0, 0, 0, '2023-06-27 16:27:14', '2023-06-27 16:27:14', NULL),
(1023, 21, '872', 'A Desperate Situation! The Iron-tight Entrapment of Luffy!', '絶体絶命 鉄壁のルフィ包囲網!', 'Zettaizetsumei: Teppeki no Luffy Houimou! ', '2019-02-10', '', 0, 0, 0, '2023-06-27 16:27:14', '2023-06-27 16:27:14', NULL),
(1024, 21, '873', 'Pulling Back from the Brink! The Formidable Reinforcements – Germa!', '起死回生 最強の援軍ジェルマ!', 'Kishikaisei: Saikyou no Engun Germa! ', '2019-02-17', '', 0, 0, 0, '2023-06-27 16:27:14', '2023-06-27 16:27:14', NULL),
(1025, 21, '874', 'The Last Hope! The Sun Pirates Emerge!', '最後の砦 タイヨウの海賊団現る', 'Saigo no Toride: Taiyou no Kaizokudan Arawaru ', '2019-02-24', '', 0, 0, 0, '2023-06-27 16:27:14', '2023-06-27 16:27:14', NULL),
(1026, 21, '875', 'A Captivating Flavor! Sanji\'s Cake of Happiness!', '魅惑の味 幸せのサンジのケーキ', 'Miwaku no Aji: Shiawase no Sanji no Cake ', '2019-03-03', '', 0, 0, 0, '2023-06-27 16:27:14', '2023-06-27 16:27:14', NULL),
(1027, 21, '876', 'The Man of Humanity and Justice! Jimbei, a Desperate Massive Ocean Current', '仁義の漢 ジンベエ決死の大海流', 'Jingi no Otoko: Jinbee Kesshi no Taikairyuu ', '2019-03-17', '', 0, 0, 0, '2023-06-27 16:27:14', '2023-06-27 16:27:14', NULL),
(1028, 21, '877', 'The Parting Time! Pudding\'s Last Wish!', '惜別の時 プリン最後の', 'Sekibetsu no Toki: Purin Saigo no ', '2019-03-24', '', 0, 0, 0, '2023-06-27 16:27:14', '2023-06-27 16:27:14', NULL),
(1029, 21, '878', 'The World is Stunned! The Fifth Emperor of the Sea Emerges!', '世界驚愕　第五の海の皇帝現る！', 'Sekai Kyougaku: Daigo no Umi no Koutei Arawaru! ', '2019-03-31', '', 0, 0, 0, '2023-06-27 16:27:14', '2023-06-27 16:27:14', NULL),
(1030, 21, '879', 'To the Reverie! The Straw Hats\' Sworn Allies Come Together!', 'レヴェリー) へ　集結！麦わら盟友達', 'Reverie e: Shuuketsu! Mugiwara no Meiyuu-tachi (世界会議 ', '2019-04-07', '', 0, 0, 0, '2023-06-27 16:27:14', '2023-06-27 16:27:14', NULL),
(1031, 21, '880', 'Sabo Goes into Action! All the Captains of the Revolutionary Army Appear!', 'サボ動く 革命軍全隊長登場!', 'Sabo Ugoku: Kakumeigun Zengun Taichou Toujou! ', '2019-04-14', '', 0, 0, 0, '2023-06-27 16:27:14', '2023-06-27 16:27:14', NULL),
(1032, 21, '881', 'Going into Action! The Implacable New Admiral of the Fleet - Sakazuki!', '動き出す 執念の新元帥サカズキ', 'Ugokidasu: Shuunen no Shin Gensui Sakazuki ', '2019-04-21', '', 0, 0, 0, '2023-06-27 16:27:14', '2023-06-27 16:27:14', NULL),
(1033, 21, '882', 'The Paramount War! The Inherited Will of the King of the Pirates!', '頂上戦争 継がれた海賊王の意思', 'Choujou Sensou: Tsugareta Kaizokuou no Ishi ', '2019-04-28', '', 0, 0, 0, '2023-06-27 16:27:14', '2023-06-27 16:27:14', NULL),
(1034, 21, '883', 'One Step Forward for Her Dream! Shirahoshi Goes Out in the Sun!', '夢の一歩 しらほし太陽の下へ!', 'Yume no Ippo: Shirahoshi Taiyou no Shita e! ', '2019-05-05', '', 0, 0, 0, '2023-06-27 16:27:14', '2023-06-27 16:27:14', NULL),
(1035, 21, '884', 'I Miss Him! Vivi and Rebecca\'s Sentiments!', '会いたい ビビとレベッカの想い', 'Aitai: Vivi to Rebecca no Omoi ', '2019-05-12', '', 0, 0, 0, '2023-06-27 16:27:14', '2023-06-27 16:27:14', NULL),
(1036, 21, '885', 'In the Dark Recesses of the Holyland! A Mysterious Giant Straw Hat!', '聖地の闇 謎の巨大な麦わら帽子', 'Seichi no Yami: Nazo no Kyodai na Mugiwara Boushi ', '2019-05-19', '', 0, 0, 0, '2023-06-27 16:27:14', '2023-06-27 16:27:14', NULL),
(1037, 21, '886', 'The Holyland in Tumult! The Targeted Princess Shirahoshi!', '聖地騒然 狙われたしらほし姫！', 'Seichi Souzen: Nerawareta Shirahoshi-hime! ', '2019-05-26', '', 0, 0, 0, '2023-06-27 16:27:14', '2023-06-27 16:27:14', NULL),
(1038, 21, '887', 'An Explosive Situation! Two Emperors of the Sea Going After Luffy!', 'ルフィを狙う二人の四皇', 'Isshokusokuhatsu: Luffy Nerau Futari no Yonkou ', '2019-06-02', '', 0, 0, 0, '2023-06-27 16:27:14', '2023-06-27 16:27:14', NULL),
(1039, 21, '888', 'Sabo Enraged! The Tragedy of the Revolutionary Army Officer Kuma!', 'サボ怒る 革命軍幹部くまの悲劇', 'Sabu Ikaru: Kakumeigun Kanbu Kuma no Higeki ', '2019-06-09', '', 0, 0, 0, '2023-06-27 16:27:14', '2023-06-27 16:27:14', NULL),
(1040, 21, '889', 'Finally, It Starts! The Conspiracy-filled Reverie!', 'レヴェリー)', 'Tsui ni Kaimaku: Inbou Uzumaku Reverie! (遂に開幕 陰謀渦巻く世界会議 ', '2019-06-16', '', 0, 0, 0, '2023-06-27 16:27:14', '2023-06-27 16:27:14', NULL),
(1041, 21, '890', 'Marco! The Keeper of Whitebeard\'s Last Memento!', 'マルコ！白ひげの形見の守護者', 'Marco! Shirohige no Katami no Shugosha ', '2019-06-23', '', 0, 0, 0, '2023-06-27 16:27:14', '2023-06-27 16:27:14', NULL),
(1042, 21, '891', 'Climbing Up a Waterfall! A Great Journey Through the Land of Wano\'s Sea Zone!', '滝登り! ワノ国の海域大航海!', 'Takinobori! Wano Kuni no Kaiiki Dai Koukai! ', '2019-06-30', '', 0, 0, 0, '2023-06-27 16:27:14', '2023-06-27 16:27:14', NULL),
(1043, 21, '892', 'The Land of Wano! To the Samurai Country where Cherry Blossoms Flutter!', 'ワノ国! 桜舞うサムライの国へ', 'Wano Kuni! Sakura Mau Samurai no Kuni e ', '2019-07-07', '', 0, 0, 0, '2023-06-27 16:27:14', '2023-06-27 16:27:14', NULL),
(1044, 21, '893', 'Otama Appears! Luffy vs. Kaido\'s Army!', 'お玉登場 ルフィ対カイドウ軍！', 'Otama Toujou: Luffy tai Kaidou Gun! ', '2019-07-14', '', 0, 0, 0, '2023-06-27 16:27:14', '2023-06-27 16:27:14', NULL),
(1045, 21, '894', 'He\'ll Come! The Legend of Ace in the Land of Wano!', '必ず来る ワノ国のエース伝説！', 'Kanarazu Kuru: Wano Kuni no Ace Densetsu! ', '2019-07-21', '', 0, 0, 0, '2023-06-27 16:27:14', '2023-06-27 16:27:14', NULL),
(1046, 21, '895', 'Side Story! The World\'s Greatest Bounty Hunter, Cidre!', '特別編！ 最強の賞金狩りシードル', 'Tokubetsu-hen! Saikyou no Shoukingari Cidre ', '2019-07-28', '', 0, 0, 0, '2023-06-27 16:27:14', '2023-06-27 16:27:14', NULL),
(1047, 21, '896', 'Side Story! Clash! Luffy vs. the King of Carbonation!', '特別編！ ルフィvs炭酸王', 'okubetsu-hen! Kessen! Luffy vs Tansan Ou ', '2019-08-04', '', 0, 0, 0, '2023-06-27 16:27:14', '2023-06-27 16:27:14', NULL);
INSERT INTO `episode` (`id`, `uid`, `ep_id_name`, `ep_name`, `ep_jname`, `ep_romaji`, `ep_aired`, `ep_pv`, `ep_view`, `ep_view_month`, `ep_view_years`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1048, 21, '897', 'Save Otama! Straw Hat, Bounding through the Wasteland!', 'お玉救え 麦わら荒野を駆ける！', 'Otama Sukue: Mugiwara Kouya wo Kakeru! ', '2019-08-11', '', 0, 0, 0, '2023-06-27 16:27:14', '2023-06-27 16:27:14', NULL),
(1049, 21, '898', 'The Headliner! Hawkins the Magician Appears!', '真打ち! 魔術師ホーキンス登場', 'Shinuchi! Majutsushi Hawkins Toujou ', '2019-08-18', '', 0, 0, 0, '2023-06-27 16:27:14', '2023-06-27 16:27:14', NULL),
(1050, 21, '899', 'Defeat is Inevitable! The Strawman\'s Fierce Attack!', '敗北確定 ストローマンの猛攻!', 'Haiboku Kakutei: Strawman no Moukou! ', '2019-08-25', '', 0, 0, 0, '2023-06-27 16:27:14', '2023-06-27 16:27:14', NULL),
(1051, 21, '900', 'The Greatest Day of My Life! Otama and Her Sweet Red-bean Soup!', '最高の日 お玉初めてのおしるこ', 'Saikou no Hi: Otama Hajimete no Oshiruko ', '2019-09-01', '', 0, 0, 0, '2023-06-27 16:27:14', '2023-06-27 16:27:14', NULL),
(1052, 21, '901', 'Charging into the Enemy\'s Territory! Bakura Town - Where Officials Thrive!', '敵陣突入 役人はびこる博羅町!', 'Tekijin Totsunyuu: Yakunin Habikoru Bakura-chou! ', '2019-09-08', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1053, 21, '902', 'The Yokozuna Appears! The Invincible Urashima Goes After Okiku!', '横綱登場 お菊狙う無敵の浦島!', 'Yokozuna Toujou: Okiku Nerau Muteki no Urashima! ', '2019-09-15', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1054, 21, '903', 'A Climactic Sumo Battle! Straw Hat vs. the Strongest Ever Yokozuna!', '相撲決戦 麦わらVS最強の横綱!', 'Sumou Kessen: Mugiwara vs Saikyou no Yokozuna! ', '2019-09-22', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1055, 21, '904', 'Luffy Rages! Rescue Otama from Danger!', 'ルフィ激怒　ピンチのお玉を救え！', 'Luffy Gekido: Pinch no Otama wo Sukue! ', '2019-09-29', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1056, 21, '905', 'Taking Back Otama! A Fierce Fight Against Holdem!', 'お玉奪還　激闘！ホールデム戦！', 'Otama Dakkan: Gekitou! Holdem Sen! ', '2019-10-06', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1057, 21, '906', 'Duel! The Magician and the Surgeon of Death!', '一騎打ち 魔術師と死の外科医!', 'Ikkiuchi: Majutsushi to Shi no Gekai! ', '2019-10-13', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1058, 21, '907', 'Romance Dawn', '２０周年！ 特別編ロマンスドーン', '20 Shuunen Tokubetsu Hen ', '2019-10-20', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1059, 21, '908', 'The Coming of the Treasure Ship! LuffytaroReturns the Favor!', '宝船到来 ルフィ太郎の恩返し！', 'Takarabune Tourai: Luffytarou no Ongaeshi! ', '2019-10-27', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1060, 21, '909', 'Mysterious Grave Markers! A Reunion at the Ruins of Oden Castle!', '謎の墓標 おでん城跡での再会！', 'Nazo no Bohyou: Oden Jou Ato de no Saikai! ', '2019-11-10', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1061, 21, '910', 'A Legendary Samurai! The Man Who Roger Admired!', '伝説の侍 ロジャーが惚れた男！', 'Densetsu no Samurai: Roger ga Horeta Otoko! ', '2019-11-17', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1062, 21, '911', 'Bringing Down the Emperor of the Sea! A Secret Raid Operation Begins!', '打倒四皇 極秘討ち入り作戦発動', 'Datou Yonkou: Gokuhi Uchiiri Sakusen Hatsudou ', '2019-11-24', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1063, 21, '912', 'The Strongest Man in the World! Shutenmaru, the Thieves Brigade Chief!', '最強の男 盗賊団棟梁・酒天丸！', 'Saikyou no Otoko: Touzokudan Touryou Shutenmaru! ', '2019-12-01', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1064, 21, '913', 'Everyone is Annihilated! Kaido\'s Furious Blast Breath!', '全員消滅 カイドウ怒りのボロブレス！', 'Zenin Shoumetsu: Kaidou Ikari no Boro Breath! ', '2019-12-08', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1065, 21, '914', 'Finally Clashing! The Ferocious Luffy vs. Kaido!', '遂に激突 猛攻ルフィVSカイドウ', 'Tsui ni Gekitotsu: Moukou Luffy vs Kaidou ', '2019-12-15', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1066, 21, '915', 'Destructive! One Shot, One Kill – Thunder Bagua!', '破壊的！一撃必殺の雷鳴八卦！', 'Hakaiteki! Ichigeki Hissatsu no Raimei Hakke! ', '2019-12-22', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1067, 21, '916', 'A Living Hell! Luffy, Humiliated in the Great Mine!', '生き地獄！ルフィ屈辱の大採掘場', 'Ikijigoku: Luffy Kutsujoku no Dai Saikutsuba ', '2020-01-05', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1068, 21, '917', 'The Holyland in Tumult! Emperor of the Sea Blackbeard Cackles!', '聖地激動 不敵に笑う四皇黒ひげ', 'Seichi Gekidou: Futeki ni Warau Yonkou Kurohige ', '2020-01-12', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1069, 21, '918', 'It\'s On! The Special Operation to Bring Down Kaido!', '動き出す 打倒カイドウ大計画！', 'Ugokidasu: Datou Kaidou Dai Keikaku! ', '2020-01-19', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1070, 21, '919', 'Rampage! The Prisoners – Luffy and Kid!', '大暴れ！ 囚人ルフィとキッド！', 'Ooabare! Shuujin Luffy to Kid! ', '2020-01-26', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1071, 21, '920', 'A Great Sensation! Sanji\'s Special Soba!', '大評判！ サンジの十八番そば！', 'Dai Hyouban! Sanji no Ohako Soba! ', '2020-02-02', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1072, 21, '921', 'Luxurious and Gorgeous! Wano\'s Most Beautiful Woman – Komurasaki!', '豪華絢爛 ワノ国一の美女・小紫', 'Goukakenran: Wano Kuni Ichi no Bijo Komurasaki! ', '2020-02-09', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1073, 21, '922', 'A Tale of Chivalry! Zoro and Tonoyasu\'s Little Trip!', '任侠伝! ゾロとトの康二人旅！', 'Ninkyou Den! Zoro to Tonoyasu Futari Tabi! ', '2020-02-16', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1074, 21, '923', 'A State of Emergency! Big Mom Closes In!', '緊急事態　ビッグ・マム大接近！', 'Kinkyuujidai: Big Mom Dai Sekkin! ', '2020-02-23', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1075, 21, '924', 'The Capital in an Uproar! Another Assassin Targets Sanji!', '都騒然! サンジ狙う新たな刺客', 'Miyako Souzen! Sanji Nerau Arata na Shikaku ', '2020-03-15', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1076, 21, '925', 'Dashing! The Righteous Soba Mask!', '大活躍! 正義のおそばマスク!', 'Dai Katsuyaku! Seigi no Osoba Mask! ', '2020-03-22', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1077, 21, '926', 'A Desperate Situation! Orochi\'s Menacing Oniwabanshu!', '絶体絶命　脅威のオロチお庭番衆', 'Zettaizetsumei: Kyoui no Orochi Oniwaban Shuu ', '2020-03-29', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1078, 21, '927', 'Pandemonium! The Monster Snake, Shogun Orochi!', '修羅場！ 恐れる大蛇将軍オロチ', 'Shuraba! Ikareru Daija: Shougun Orochi ', '2020-04-05', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1079, 21, '928', 'The Flower Falls! The Final Moment of the Most Beautiful Woman in the Land of Wano!', '花散る! ワノ国一の美女の最期', 'Hana Chiru! Wano Kuni Ichi no Bijo no Saigo ', '2020-04-12', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1080, 21, '929', 'The Bond Between Prisoners! Luffy and Old Man Hyo!', '囚人の絆 ルフィとヒョウじい!', 'Shuujin no Kizuna: Luffy to Hyou-jii! ', '2020-04-19', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1081, 21, '930', 'All-Star! Queen the Plague Appears!', '大看板! 疫災のクイーン現る!', 'Ookanban! Ekisai no Queen Arawaru! ', '2020-06-28', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1082, 21, '931', 'Climb Up! Luffy\'s Desperate Escape!', 'よじ登れ ルフィ決死の逃走劇!', 'Yojinobore: Luffy Kesshi no Tousougeki! ', '2020-07-05', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1083, 21, '932', 'Dead or Alive! Queen\'s Sumo Inferno!', '生か死か クイーンの大相撲地獄[インフェルノ]', 'Sei ka Shi ka: Queen no Oosumou Inferno ', '2020-07-12', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1084, 21, '933', 'Gyukimaru! Zoro Fights a Duel on Bandit\'s Bridge!', '牛鬼丸! ゾロおいはぎ橋の決闘', 'Gyuukimaru! Zoro Oihagi Bashi no Kettou ', '2020-07-19', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1085, 21, '934', 'A Big Turnover! The Three-Sword Style Overcomes Danger!', '大逆転! 死線を越えた三刀流!', 'Dai Gyakuten! Shisen wo Koeta Santou Ryuu! ', '2020-07-26', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1086, 21, '935', 'Zoro, Stunned! The Shocking Identity of the Mysterious Woman!', 'ゾロ驚愕 衝撃! 謎の美女の正体', 'Zoro Kyougaku: Shougeki! Nazo no Bijo no Shoutai ', '2020-08-02', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1087, 21, '936', 'Get the Hang of It! The Land of Wano\'s Haki: Ryuo!', '会得せよ ワノ国の覇気・流桜!', 'Etoku Seyo: Wano Kuni no Haki Ryuuou! ', '2020-08-09', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1088, 21, '937', 'Tonoyasu! Ebisu Town\'s Most Loved!', 'トの康! えびす町一の人気者!', 'Tonoyasu! Ebisu Chouichi no Ninkimono! ', '2020-08-16', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1089, 21, '938', 'Shaking the Nation! The Identity of Ushimitsu Kozo the Chivalrous Thief!', '衝撃走る 義賊丑三つ小僧の正体', 'Shougeki Hashiru: Gizoku Ushimitsu Kozou no Shoutai ', '2020-08-23', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1090, 21, '939', 'The Straw Hats Run! Save the Captive Tonoyasu!', '一味疾る!救え囚われのトの康', 'Ichimi Hashiru! Sukue Toraware no Tonoyasu ', '2020-08-30', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1091, 21, '940', 'Zoro\'s Fury! The Truth About the Smile!', 'ゾロの怒り SMILEの真実', 'Zoro no Ikari: Smile no Shinjitsu! ', '2020-09-06', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1092, 21, '941', 'Toko\'s Tears! Orochi\'s Pitiless Bullets!', 'トコの涙! オロチ非情の銃弾!', 'Toko no Namida! Orochi Hijou no Juudan! ', '2020-09-13', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1093, 21, '942', 'The Straw Hats Step In! An Uproarious Deadly Battle at the Execution Ground!', '一味乱入！騒然！ 処刑場の激闘', 'Ichimi Rannyuu! Souzen! Shokeijou no Gekitou ', '2020-09-20', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1094, 21, '943', 'Luffy\'s Determination! Win Through the Sumo Inferno!', 'ルフィの決意 破れ大相撲地獄インフェルノ!', 'Luffy no Ketsui: Yabure Oozumou Inferno! ', '2020-09-27', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1095, 21, '944', 'The Storm Has Come! A Raging Big Mom!', '嵐到来！ 大暴れビッグ・マム！', 'Arashi Tourai! Ooabare Big Mom! ', '2020-10-04', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1096, 21, '945', 'A Grudge Over Red-bean Soup! Luffy Gets into a Desperate Situation!', 'おしるこの恨み ルフィ絶体絶命', 'Oshiruko no Urami: Luffy Zettaizetsumei ', '2020-10-11', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1097, 21, '946', 'Stop the Emperor of the Sea! Queen\'s Secret Plan!', '四皇を止めろ! クイーンの秘策', 'Yonkou wo Tomero! Queen no Hisaku ', '2020-10-18', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1098, 21, '947', 'Brutal Ammunition! The Plague Rounds Aim at Luffy!', '最凶兵器！ルフィを狙う疫災弾', 'Saikyou Heiki! Luffy wo Nerau Excite Dan ', '2020-10-25', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1099, 21, '948', 'Start Fighting Back! Luffy and the Akazaya Samurai!', '反撃開始！ルフィと赤鞘の侍！', 'Hangeki Kaishi! Luffy to Akazaya no Samurai! ', '2020-11-01', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1100, 21, '949', 'We’re Here to Win! Luffy\'s Desperate Scream!', '勝ちに来た！ルフィ決死の叫び', 'Kachi ni Kita! Luffy Kesshi no Sakebi ', '2020-11-08', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1101, 21, '950', 'Warriors\' Dream! Luffy\'s Conquer of Udon!', '兵どもが夢！ルフィ兎丼制圧！', 'Tsuwamonodomo ga Yume! Luffy Udon Seiatsu! ', '2020-11-15', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1102, 21, '951', 'Orochi\'s Hunting Party! The Ninja Group vs. Zoro!', 'オロチの追手！忍者軍団VSゾロ', 'Orochi no Otte! Ninja Gundan vs Zoro ', '2020-11-22', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1103, 21, '952', 'Tension Rises in Onigashima! Two Emperors of the Sea Meet?!', '鬼ヶ島緊迫！遭遇！？二人の四皇', 'Onigashima Kinpaku! Souguu!? Futari no Yonkou ', '2020-11-29', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1104, 21, '953', 'Hiyori\'s Confession! A Reunion at Bandit\'s Bridge!', '日和の告! おいはぎ橋の再会', 'Hiyori no Kokuhaku! Oihagi Bashi no Saikai ', '2020-12-06', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1105, 21, '954', 'Its Name is Enma! Oden\'s Great Swords!', 'その名は閻魔！おでんの名刀！', 'Sono Na wa Enma! Oden no Meitou! ', '2020-12-13', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1106, 21, '955', 'A New Alliance?! Kaido\'s Army Gathers!', '新たな同盟！？カイドウ軍大集結', 'Arata na Doumei!? Kaidou Gun Dai Shuuketsu ', '2020-12-20', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1107, 21, '956', 'Ticking Down to the Great Battle! The Straw Hats Go into Combat Mode!', '迫る決戦！麦わら一味戦闘態勢', 'Semaru Kessen! Mugiwara Ichimi Sentoutaisei ', '2020-12-27', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1108, 21, '957', 'Big News! An Incident That Will Affect the Seven Warlords!', '大ニュース！七武海を襲う事件', 'Big News! Shichi Bukai wo Osou Jiken ', '2021-01-10', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1109, 21, '958', 'A Legendary Battle! Garp and Roger!', '伝説の戦い！ガープとロジャー', 'Densetsu no Tatakai! Garp to Roger ', '2021-01-17', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1110, 21, '959', 'The Rendezvous Port! The Land of Wano Act Three Begins!', '約束の港！ワノ国編第三幕開幕', 'Yakusoku no Minato! Wano Kuni Hen Daisanmaku Kaimaku ', '2021-01-24', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1111, 21, '960', 'The Number-One Samurai in Wano Country! Kozuki Oden Appears', 'ワノ国一の侍! 光月おでん登場', 'Wano Kuni Ichi no Samurai! Kouzuki Oden Toujou ', '2021-01-31', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1112, 21, '961', 'Tearfully Swearing Allegiance! Oden and Kin\'emon!', '涙の弟子入り おでんと錦えもん', 'Namida no Deshiiri: Oden to Kinemon ', '2021-02-07', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1113, 21, '962', 'Changing Destiny! The Whitebeard Pirates Cast Ashore!', '動く運命漂着！白ひげ海賊団！', 'Ugoku Unmei: Hyouchaku! Shirohige Kaizoku Dan! ', '2021-02-14', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1114, 21, '963', 'Oden\'s Determination! Whitebeard\'s Test!', 'おでんの決意！白ひげの試練！', 'Oden no Ketsui! Shirohige no Shiren! ', '2021-02-21', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1115, 21, '964', 'Whitebeard\'s Little Brother! Oden\'s Great Adventure!', '白ひげの弟! おでんの大冒険!', 'Shirohige no Otouto! Oden no Daibouken! ', '2021-02-28', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1116, 21, '965', 'Crossing Swords! Roger and Whitebeard!', '交える刃! ロジャーと白ひげ!', 'Majieru Yaiba! Roger to Shirohige! ', '2021-03-07', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1117, 21, '966', 'Roger\'s Wish! A New Journey!', 'ロジャーの願い！新たな旅立ち', 'Roger no Negai! Arata na Tabidachi ', '2021-03-21', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1118, 21, '967', 'Devoting His Life! Roger\'s Adventure!', '生涯をかけて！ロジャーの冒険', 'Shougai wo Kakete! Roger no Bouken ', '2021-03-28', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1119, 21, '968', 'The King of the Pirates is Born! Arriving at the Last Island!', '海賊王誕生 到達！', 'Kaizokuou Tanjou: Toutatsu! ', '2021-04-04', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1120, 21, '969', 'To the Land of Wano! The Roger Pirates Disband!', 'ワノ国へ！ロジャー海賊団解散', 'Wano Kuni e! Roger Kaizoku Dan Kaisan ', '2021-04-11', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1121, 21, '970', 'Sad News! The Opening of the Great Pirate Era!', '悲しき知らせ 大海賊時代幕開け', 'Kanashiki Shirase: Dai Kaizoku Jidai Makuake ', '2021-04-18', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1122, 21, '971', 'Raid! Oden and the Akazaya Nine!', '討ち入り！おでんと赤鞘九人男', 'Uchiiri! Oden to Akazaya Kunin Otoko ', '2021-04-25', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1123, 21, '972', 'The End of the Battle! Oden vs. Kaido!', '決着の時！おでんVSカイドウ！', 'Kecchaku no Toki! Oden vs Kaidou! ', '2021-05-02', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1124, 21, '973', 'Boiled to Death! Oden\'s One-hour Struggle!', '釜茹での刑 おでん決死の一時間', 'Kamayude no Kei: Oden Kesshi no Ichijikan ', '2021-05-09', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1125, 21, '974', 'Oden Wouldn\'t Be Oden If It Wasn\'t Boiled!', '煮えてなんぼのおでんに候', 'Niete Nanbo no Oden ni Sourou ', '2021-05-16', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1126, 21, '975', 'The Castle on Fire! The Fate of the Kozuki Clan!', '燃える城！光月の一族の運命！', 'Moeru Shiro! Kouzuki no Ichizoku no Unmei! ', '2021-05-23', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1127, 21, '976', 'Back to the Present Day! 20 Years Later!', '再び現在！二十年の時をこえて', 'Futatabi Genzai! Nijuunen no Toki wo Koete ', '2021-05-30', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1128, 21, '977', 'The Sea Is For Pirates! Raid! To Onigashima!', '海は海賊！討入り！いざ鬼ヶ島', 'Umi wa Kaizoku! Uchi Iri! Iza Onigashima ', '2021-06-06', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1129, 21, '978', 'The Worst Generation Charges in! The Battle of the Stormy Sea!', '最悪の世代進撃！嵐の海の戦い', 'Saiaku no Sedai Shingeki! Arashi no Umi no Tatakai ', '2021-06-13', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1130, 21, '979', 'Good Luck?! Leader Kin\'emon\'s Plot!', '強運！？リーダー錦えもんの一計', 'Kyouun!? Leader Kinemon no Ikkei ', '2021-06-20', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1131, 21, '980', 'A Tearful Promise! The Kidnapped Momonosuke', '涙の約束！さらわれたモモの助', 'Namida no Yakusoku! Sarawareta Momonosuke ', '2021-06-27', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1132, 21, '981', 'A New Member! \'First Son of the Sea\' Jimbei!', '新たな仲間！海侠のジンべエ！', 'Arata na Nakama! Kaikyou no Jinbee! ', '2021-07-04', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1133, 21, '982', 'Kaidou\'s Trump Card: The Tobi Roppo Appear', 'カイドウの切り札 飛び六胞登場', 'Kaidou no Kirifuda: Tobi Roppou Toujou ', '2021-07-11', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1134, 21, '983', 'The Samurai Warriors\' Earnestness! The Straw Hats Land at Onigashima!', '侍たちの本気！一味鬼ヶ島上陸', 'Samurai-tachi no Honki! Ichimi Onigashima Jouriku ', '2021-07-18', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1135, 21, '984', 'Luffy Goes Out of Control?! Sneaking into Kaido’s Banquet!', 'ルフィ暴走！？潜入カイドウの宴', 'Luffy Bousou!? Sennyuu Kaidou no Utage ', '2021-07-25', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1136, 21, '985', 'Thinking of Otama! Luffy\'s Furious Strike!', 'お玉への思い ルフィ怒りの一撃', 'Otama e no Omoi: Luffy Ikari no Ichigeki ', '2021-08-01', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1137, 21, '986', 'Fighting Music! An Ability That Harms Luffy!', '戦う音楽！ルフィを襲う能力！', 'Tatakau Music! Luffy wo Osou Nouryoku! ', '2021-08-08', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1138, 21, '987', 'His Dream Broken?! The Trap That Lures Sanji!', '夢やぶれる！？サンジを誘う罠！', 'Yume Yabureru!? Sanji wo Sasou Wana! ', '2021-08-15', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1139, 21, '988', 'Reinforcements Arrive! The Commander of the Whitebeard Pirates!', '援軍到着！白ひげ海賊団隊長！', 'Engun Touchaku! Shirohige Kaizokudan Taichou! ', '2021-08-22', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1140, 21, '989', 'The Pact Between Men! The Fierce Fighting of Brachio Tank!', '漢の誓い！激闘ブラキオタンク', 'Otoko no Chikai! Gekitou Brachio Tank ', '2021-08-29', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1141, 21, '990', 'Thunder Bagua! Here Comes Kaido\'s Son!', '雷鳴八卦！登場カイドウの息子', 'Raimei Hakke! Toujou Kaidou no Musuko ', '2021-09-05', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1142, 21, '991', 'Enemy or Ally? Luffy and Yamato!', '敵か？味方か？ルフィとヤマト', 'Teki ka? Mikata ka? Luffy to Yamato ', '2021-09-12', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1143, 21, '992', 'Desire to be Oden! Yamato\'s Dream!', 'おでんになりたい ヤマトの思い', 'Oden ni Naritai: Yamato no Omoi ', '2021-09-19', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1144, 21, '993', 'Explosive?! The Handcuffs that Shackle Yamato\'s Freedom!', '爆発！？ヤマトの自由を縛る錠！', 'Bakuhatsu!? Yamato no Jiyuu wo Shibaru Jou! ', '2021-09-26', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1145, 21, '994', 'The Akazaya Face-off! Kikunojo vs. Kanjuro!', '赤鞘一騎打ち 菊之丞VSカン十郎', 'Akazaya Ikkiuchi: Kikunojou vs Kanjurou ', '2021-10-03', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1146, 21, '995', 'Raid! Inheriting Oden\'s Will', '討入り！受け継ぐおでんの意志', 'Uchiiri! Uketsugu Oden no Ishi ', '2021-10-10', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1147, 21, '996', 'Onigashima in Tumult! Luffy\'s All-Out War Begins!', '鬼ヶ島激動 ルフィ全面戦争開始', 'Onigashima Gekidou: Luffy Zenmensensou Kaishi ', '2021-10-24', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1148, 21, '997', 'The Battle Under the Moon! The Berserker, Sulong the Moon Lion!', '月下の戦い 狂戦士', 'Gekka no Tatakai: Kyousenshi ', '2021-10-31', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1149, 21, '998', 'Zeus\' Treason?! The Cornered Nami!', 'ゼウスの反逆!? ナミ絶体絶命!', 'Zeus no Hangyaku!? Nami Zettaizetsumei! ', '2021-11-07', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1150, 21, '999', 'I\'ll Protect You! Yamato Meets Momonosuke!', '君を守る 邂逅ヤマトとモモの助', 'Kimi wo Mamoru: Kaikou Yamato to Momonosuke ', '2021-11-14', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1151, 21, '1000', 'Overwhelming Strength! The Straw Hats Come Together!', '圧倒的戦力！麦わらの一味集結', 'Attoteki Senryoku! Mugiwara no Ichimi Shuuketsu ', '2021-11-21', '', 0, 0, 0, '2023-06-27 16:27:25', '2023-06-27 16:27:25', NULL),
(1152, 21, '1001', 'A Risky Invitation! A Plot to Eliminate Queen!', '危険な誘い！クイーン抹殺計画', 'Kiken na Sasoi! Queen Massatsu Keikaku ', '2021-11-28', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1153, 21, '1002', 'A New Rivalry! Nami and Ulti!', '新たな因縁！ナミとうるティ！', 'Arata na Innen! Nami to Ulti! ', '2021-12-05', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1154, 21, '1003', 'A Heroic Blade! Akazaya vs. Kaido, Again Once More!', '悲壮の刃! 赤鞘VSカイドウ再び', 'Hisou no Yaiba! Akazaya vs Kaidou Futatabi ', '2021-12-12', '', 166, 166, 166, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1155, 21, '1004', 'An Inherited Technique! Unleashing Oden\'s Secret Swordplay!', '受け継ぎし技 炸裂おでんの秘剣', 'Uketsugishi Waza: Sakuretsu Oden no Hiken ', '2021-12-19', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1156, 21, '1005', 'The Power of Ice Oni! A New Version of the Plague Rounds!', '「氷鬼」の威力! 新たな疫災[エキサイト]弾', '', '2022-01-09', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1157, 21, '1006', 'I Won\'t Forgive Him! Chopper\'s Determination!', '許さねェ！チョッパーの決意！', 'Yurusanee! Chopper no Ketsui! ', '2022-01-16', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1158, 21, '1007', 'Zoro\'s Pursuit! Ice Oni Tag!', 'ゾロの追撃！氷鬼in鬼ゴッコ', 'Zoro no Tsuigeki! Koorioni in Onigokko ', '2022-01-23', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1159, 21, '1008', 'Nami Surrenders?! Ulti\'s Fierce Headbutt!', 'ナミ降伏！？うるティの猛頭突き', 'Nami Koufuku!? Ulti no Mou Zutsuki ', '2022-01-30', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1160, 21, '1009', 'Sasaki\'s Onslaught! Armored Division vs. Yamato!', 'ササキの猛攻 装甲部隊VSヤマト', 'Sasaki no Moukou: Soukoubutai vs Yamato ', '2022-02-06', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1161, 21, '1010', 'Eliminate the Ice Oni! Chopper\'s Fire Trick!', '氷鬼を破れ チョッパーの火策！', 'Koorioni wo Yabure: Chopper no Hi Saku! ', '2022-02-13', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1162, 21, '1011', 'It\'s Not Okay! The Spider lures Sanji!', 'よかねェよ！！サンジを誘う蜘蛛', 'Yokanee yo!! Sanji wo Sasou Kumo ', '2022-02-20', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1163, 21, '1012', 'A Turnaround Move! The Flames of Marco the Phoenix!', '逆転の一手！不死鳥マルコの炎', 'Gyakuten no Itte! Fushichou Marco no Honoo ', '2022-02-27', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1164, 21, '1013', 'Yamato\'s Past! The Man Who Came for an Emperor of the Sea!', 'ヤマトの過去 四皇の首を狙う男', 'Yamato no Kako: Yonkou no Kubi wo Nerau Otoko ', '2022-03-06', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1165, 21, '1014', 'Marco\'s Tears! The Bond of the Whitebeard Pirates!', 'マルコの涙！白ひげ海賊団の絆', 'Marco no Namida! Shirohige Kaizokudan no Kizuna ', '2022-04-17', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1166, 21, '1015', 'Straw Hat Luffy! The Man Who Will Become the King of the Pirates!', '麦わらのルフィ 海賊王になる男', 'Mugiwara no Luffy: Kaizokuou ni Naru Otoko ', '2022-04-24', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1167, 21, '1016', 'The Battle of the Monsters! The Three Stubborn Captains!', '怪物決戦！意地張りあう三船長', 'Kaibutsu Kessen! Ijihari Au San Senchou ', '2022-05-08', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1168, 21, '1017', 'A Barrage of Powerful Techniques! The Fierce Attacks of the Worst Generation!', '大技連発！最悪の世代の猛攻！', 'Oowaza Renpatsu! Saiaku no Sedai no Moukou! ', '2022-05-15', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1169, 21, '1018', 'Kaido Laughs! The Emperors of the Sea vs. the New Generation!', '笑うカイドウ！四皇VS新世代！', 'Warau Kaidou! Yonkou vs Shin Sedai! ', '2022-05-22', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1170, 21, '1019', 'Otama\'s Secret Plan! Operation Kibi Dango!', 'お玉の秘策！きびだんご大作戦', 'Otama no Hisaku! Kibi Dango Daisakusen ', '2022-05-29', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1171, 21, '1020', 'Sanji\'s Scream! An SOS Echoes Over the Island!', 'サンジ絶叫！島中に響くSOS', 'Sanji Zekkyou! Shimajuu ni Hibiku SOS ', '2022-06-05', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1172, 21, '1021', 'Spank Strikes! Sanji\'s Woman-trouble!', 'スパンク炸裂！サンジの女難！', 'Spank Sakuretsu! Sanji no Jonan! ', '2022-06-12', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1173, 21, '1022', 'No Regrets! Luffy and Boss, a Master-Disciple Bond!', '悔いなし ルフィと親分師弟の絆', 'Kui Nashi: Luffy to Oyabun Shitei no Kizuna ', '2022-06-19', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1174, 21, '1023', 'All Set! Chopperphage Nebulizer!', '準備OK! チョパファージ霧砲[ネブライザー]', 'Junbi OK! Chopperphage Nebulizer ', '2022-07-03', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1175, 21, '1024', 'Oden Appears! The Confused Hearts of the Akazaya Members!', 'おでん現る! 揺れる赤鞘の心!', 'Oden Arawaru! Yureru Akazaya no Kokoro! ', '2022-07-10', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1176, 21, '1025', 'The Worst Generation Gets Wiped Out?! The Emperors’ Deadly Attack!', '最悪の世代全滅！？四皇の大技', 'Saiaku no Sedai Zenmetsu!? Yonkou no Oowaza! ', '2022-07-17', '', 4, 4, 4, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1177, 21, '1026', 'The Supernovas Strike Back! The Mission to Tear Apart the Emperors!', '超新星反撃！四皇分解作戦', 'Choushinsei Hangeki! Yonkou Bunkai Sakusen ', '2022-07-24', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1178, 21, '1027', 'Defend Luffy! Zoro and Law’s Sword Technique!', 'ルフィを守れ！ゾロとローの剣技', 'Luffy wo Mamore! Zoro to Law no Kengi ', '2022-07-31', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1179, 21, '1028', 'Surpass the Emperor of the Sea! Luffy Strikes Back with an Iron Fist', '四皇を超えろ ルフィ反撃の鉄拳', 'Yonkou wo Koero: Luffy Hangeki no Tekken ', '2022-08-07', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1180, 21, '1029', 'A Faint Memory! Luffy and Red-Haired\'s Daughter Uta!', '映画連動エピソード 淡い記憶 ルフィと赤髪の娘ウタ', 'Eiga Rendou Episode: Awai Kioku - Luffy to Akagami no Musume Uta ', '2022-08-14', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1181, 21, '1030', 'A Pledge for the Next Genesis! Luffy and Uta!', '映画連動エピソード 新時代の誓い！ルフィとウタ', 'Eiga Rendou Episode: Shin Jidai no Chikai! Luffy to Uta ', '2022-08-21', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1182, 21, '1031', 'Nami Screams - A Deadly Death Race!', 'ナミ絶叫 絶体絶命デスレース！', 'Nami Zekkyou: Zettai Zetsumei Death Race! ', '2022-09-04', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1183, 21, '1032', 'The Dawn of the Land of Wano - The All-Out Battle Heats Up!', 'ワノ国の夜明け 全面対決激化！', 'Wano Kuni no Yoake: Zenmen Taiketsu Gekika! ', '2022-09-11', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1184, 21, '1033', 'The Conclusion! Luffy, Accelerating Fist of the Supreme King', '決着！ルフィ加速する覇王の拳', 'Kecchaku! Luffy Kasoku Suru Haou no Kobushi ', '2022-09-18', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1185, 21, '1034', 'Luffy Defeated! The Straw Hats in Jeopardy?!', 'ルフィ敗北！麦わらの一味窮地!?', 'Luffy Haiboku! Mugiwara no Ichimi Kyuuchi!? ', '2022-09-25', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1186, 21, '1035', 'The Animal Kingdom Pirates Trample Down! The End of the Kozuki Clan!', '百獣蹂躙！光月家の終焉！', 'Hyakujuu Juurin! Kouzuki-ke no Shuuen! ', '2022-10-02', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1187, 21, '1036', 'Fight Against the Dark Night - The Commander-in-Chief of the Land of Wano Sounds Off', '闇夜に抗え ワノ国総大将吠える', 'Yamiyo ni Aragae: Wano Kuni Soudaishou Hoeru ', '2022-10-16', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1188, 21, '1037', 'Believe in Luffy! The Alliance\'s Counterattack Begins!', 'ルフィを信じろ！同盟反撃開始！', 'Luffy wo Shinjiro! Doumei Hangeki Kaishi! ', '2022-10-23', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1189, 21, '1038', 'Nami\'s Lethal Attack! O-Tama\'s Desperate Challenge!', 'ナミ必殺！お玉決死の大一番', 'Nami Hissatsu! Otama Kesshi no Ooichiban! ', '2022-10-30', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1190, 21, '1039', 'A Dramatic Increase of Allies! Straw Hats Fight Back!', '味方激増！麦わらの一味逆襲！', 'Mikata Gekizou! Mugiwara no Ichimi Gyakushuu! ', '2022-11-06', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1191, 21, '1040', 'The Pride of a Helmsman? The Enraged Jimbei!', '操舵手の誇り 怒りのジンベエ！', 'Soudashu no Hokori: Ikari no Jinbee! ', '2022-11-13', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1192, 21, '1041', 'Showdown Battles of the Monsters! Yamato and Franky', '怪獣大決戦！ヤマトとフランキー', 'Kaijuu Daikessen! Yamato to Franky ', '2022-11-20', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1193, 21, '1042', 'The Predator\'s Trap - Black Maria\'s Temptation', '捕食者の罠 ブラックマリアの誘惑', 'Hoshokusha no Wana: Black Maria no Yuuwaku ', '2022-11-27', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1194, 21, '1043', 'Slash the Nightmare - Brook Draws His Freezing Sword!', '悪夢を斬る ブルックの氷の抜刀！', 'Akumu wo Kiru: Brook no Koori no Battou! ', '2022-12-04', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1195, 21, '1044', 'Clutch! A Demon Incarnate, Robin!', 'クラッチ！悪魔の化身 ロビン！', 'Clutch! Akuma no Keshin Robin! ', '2022-12-11', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1196, 21, '1045', 'A Spell! Kid and Zoro Facing Threats!', '呪縛！迫る脅威 キッドとゾロ！', 'Jubaku! Semaru Kyoui: Kid to Zoro! ', '2022-12-18', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1197, 21, '1046', 'Taking a Chance! The Two Arms Go into Battle!', '一か八かの大勝負！両翼出陣！', 'Ichi ka Bachi ka no Ooshoubu! Ryouyoku Shutsujin! ', '2023-01-08', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1198, 21, '1047', 'Ascend to the Dawn! A Pink Dragon Gets Agitated', '夜明けへと昇れ！桃色の龍猛る', 'Yoake e to Nobore! Momoiro no Ryuu Takeru ', '2023-01-15', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1199, 21, '1048', 'For the Future! Yamato and the Great Swordsmen\'s Pledge', '未来へ！ヤマトと大剣豪の誓い', 'Mirai e! Yamato to Daiken Gou no Chikai ', '2023-01-22', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1200, 21, '1049', 'Luffy Soars! Revenge Against the King of the Beasts', 'ルフィ飛翔！百獣へのリベンジ', 'Luffy Hishou! Hyakujuu e no Revenge ', '2023-01-29', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1201, 21, '1050', 'Two Dragons Face Off! Momonosuke\'s Determination!', '双龍相搏つ！モモの助の覚悟！', 'Souryuu Ai Utsu! Momonosuke no Kakugo! ', '2023-02-05', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1202, 21, '1051', 'A Legend All over again! Luffy\'s fist roars in the sky', '伝説の再来! 天に轟くルフィの拳', 'Densetsu no Sairai! Ten ni Todoroku Luffy no Kobushi ', '2023-02-12', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1203, 21, '1052', 'The Situation Has Grown Tense! The End of Onigashima!', '', '', '', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1204, 21, '1053', 'Sanji’s Mutation – The Two Arms in Crisis!', '', '', '', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1205, 21, '1054', 'Death to Your Partner! Killer\'s Deadly Gamble!', '相棒に死を！キラー決死の大博打', 'Aibou ni Shi wo! Killer Kesshi no Oobakuchi ', '2023-03-19', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1206, 21, '1055', 'A Shadowy Figure Pulls the Strings! Onigashima in Flames', '闇の者の暗躍！鬼ヶ島炎上', 'Yami no Mono no Anyaku! Onigashima Enjou ', '2023-03-26', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1207, 21, '1056', 'A Countercharge! Law and Kid\'s Return-Attack Combination', '逆襲！ローとキッドの反撃同盟', 'Gyakushuu! Law to Kid no Hangeki Doumei ', '2023-04-02', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1208, 21, '1057', 'For Luffy ? Sanji and Zoro\'s Oath', 'ルフィの為に サンジとゾロの誓い', 'Luffy no Tame ni: Sanji to Zoro no Chikai ', '2023-04-09', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1209, 21, '1058', 'The Onslaught of Kazenbo - Orochi\'s Evil Clutches Close in', '火前坊襲来 迫るオロチの魔の手', 'Kazenbou Shuurai: Semaru Orochi no Ma no Te ', '2023-04-16', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1210, 21, '1059', 'Zoro Faces Adversity - A Monster! King the Wildfire', '逆境のゾロ 怪物！火災のキング', 'Gyakkyou no Zoro: Kaibutsu! Kasai no King ', '2023-04-23', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1211, 21, '1060', 'The Secret of Enma! The Cursed Sword Entrusted to Zoro', '閻魔の秘密！ゾロに託されし妖刀', 'Enma no Himitsu! Zoro ni Takusareshi Youtou ', '2023-04-30', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1212, 21, '1061', 'The Strike of an Ifrit! Sanji vs. Queen', '魔神の一撃！サンジVSクイーン', 'Majin no Ichigeki! Sanji vs Queen ', '2023-05-07', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1213, 21, '1062', 'The Three-Sword Style of the Supreme King! Zoro vs. King', '覇王の三刀流！ゾロVSキング', 'Haou no Santou Ryuu! Zoro vs King ', '2023-05-21', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1214, 21, '1063', 'Luffy is on the Move! A Turning Point to a New Era!', 'ルフィ躍動！新時代の分岐点！', 'Luffy Yakudou! Shin Jidai no Bunkiten ', '2023-05-28', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1215, 21, '1064', 'Drunken Dragon Bagua! The Lawless Dragon Closing in on Luffy', '酒龍八卦！ルフィに迫る無法の龍', 'Shuron Hakke! Luffy ni Semaru Muhou no Ryuu ', '2023-06-04', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL),
(1216, 21, '1065', 'The Destruction of the Alliance?! Fire up, the Will of the New Generation!', '同盟壊滅！？燃えろ新世代の意志！', 'Doumei Kaimetsu!? Moero Shin Sedai no Ishi! ', '2023-06-11', '', 0, 0, 0, '2023-06-27 16:27:34', '2023-06-27 16:27:34', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `episode_comment`
--

INSERT INTO `episode_comment` (`id`, `user_id`, `post_id`, `post_ani`, `post_ep`, `post_spo`, `post_content`, `post_rep`, `post_disrep`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, 1, 2006727143, 21, '1003', 0, 'test1', 1, 0, '2023-06-29 17:16:21', '2023-06-29 19:12:30', NULL),
(10, 1, 1476358318, 21, '1003', 0, 'test2', 0, 1, '2023-06-29 17:16:34', '2023-06-29 19:19:16', NULL),
(11, 1, 1090130901, 21, '1003', 0, 'test3', 1, 0, '2023-06-29 17:16:42', '2023-06-29 19:19:14', NULL),
(13, 1, 537627415, 21, '1003', 0, 'test4', 0, 0, '2023-06-29 19:40:09', '2023-06-29 19:40:09', NULL),
(14, 1, 636411874, 21, '1003', 0, 'test5', 0, 0, '2023-06-29 19:48:33', '2023-06-29 19:48:33', NULL),
(16, 1, 61195407, 21, '1025', 0, 'tag', 1, 1, '2023-06-30 09:51:00', '2023-06-30 09:51:11', NULL);

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
  `post_content` varchar(255) NOT NULL,
  `post_rep` int NOT NULL,
  `post_disrep` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `episode_comment_repy`
--

INSERT INTO `episode_comment_repy` (`id`, `user_id`, `post_id`, `post_u_id`, `post_content`, `post_rep`, `post_disrep`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1090130901, 5213125, 'wqgqwgqwgq', 0, 0, '2023-06-29 18:02:11', '2023-06-29 18:02:11', NULL),
(2, 1, 1090130901, 1612621, 'wh1wh21h', 0, 0, '2023-06-29 18:02:11', '2023-06-29 18:02:11', NULL),
(4, 1, 1090130901, 4035450, 'wcez', 0, 0, '2023-06-29 19:36:35', '2023-06-29 19:36:35', NULL),
(5, 1, 537627415, 87583, 'qgqg', 1, 0, '2023-06-29 19:40:24', '2023-06-29 20:26:56', NULL),
(6, 1, 61195407, 5143316, 'tag2', 1, 1, '2023-06-30 09:51:15', '2023-06-30 09:51:23', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `episode_vote`
--

INSERT INTO `episode_vote` (`id`, `user_id`, `anime_id`, `anime_ep_id`, `anime_ep_score`) VALUES
(11, '1', '21', '1', '10');

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
-- Tablo için tablo yapısı `report_board`
--

DROP TABLE IF EXISTS `report_board`;
CREATE TABLE IF NOT EXISTS `report_board` (
  `id` int NOT NULL AUTO_INCREMENT,
  `report_main_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `report_episode`
--

DROP TABLE IF EXISTS `report_episode`;
CREATE TABLE IF NOT EXISTS `report_episode` (
  `id` int NOT NULL AUTO_INCREMENT,
  `report_url` varchar(255) NOT NULL,
  `report_type` int NOT NULL,
  `report_head` varchar(250) NOT NULL,
  `report_content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
