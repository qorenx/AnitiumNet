-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 11 Haz 2023, 14:25:30
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
  `ani_synonyms` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
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
  `ani_time` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `ani_pv` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `ani_aired` date NOT NULL,
  `ani_aired_fin` date NOT NULL,
  `ani_studio` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `ani_producers` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `ani_offical_site` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `anime`
--

INSERT INTO `anime` (`id`, `uid`, `ani_name`, `ani_jname`, `ani_synonyms`, `ani_genre`, `ani_type`, `ani_country`, `ani_stats`, `ani_source`, `ani_ep`, `ani_synopsis`, `ani_poster`, `ani_wallpaper`, `ani_release`, `ani_release_season`, `ani_rate`, `ani_score`, `ani_raw`, `ani_sub`, `ani_dub`, `ani_turk`, `ani_time`, `ani_pv`, `ani_aired`, `ani_aired_fin`, `ani_studio`, `ani_producers`, `ani_offical_site`, `ani_manga_url`, `view_count`, `view_count_month`, `view_count_years`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2928, '.hack//G.U. Returner', '.HACK//G.U. RETURNER', '.hack//G.U. Returner', 'Adventure,Drama,Fantasy', 3, 1, 2, 3, '1', 'The characters from previous .hack//G.U. Games and .hack//Roots receive an email from Ovan. He is requesting them to go to Hidden Forbidden Festival where is set up a mysterious summer festival. There they find an AIDA Chim Chim who wishes to peacefully co-exist with the other players of The World. It then transforms into the word \"Returner\", so they assume it to mean that Ovan will return to The World.\r\n\r\n(Source: ANN)', '/uploads/1684676700_d5568af10b258f61d704.jpg', '/uploads/1684676700_d5568af10b258f61d704.jpg', '2007', 3, 3, '6.67', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '', '', '', '', 15, 15, 15, '2023-05-20 10:40:46', '2023-05-20 13:59:28', NULL),
(2, 5525, '07-Ghost', 'セブンゴースト ', '07 Ghost, Seven Ghost, 7 Ghosts, The Seven Ghosts ', 'Military,Mythology,Action,Fantasy', 1, 1, 2, 1, '25', 'Barsburg Empire\'s Military Academy is known for training elites who bring victory to the empire. Students of the academy freely utilize an ability called \"Zaiphon\" to fight, while the types of Zaiphon usable depends on the nature of the soldier.\r\n\r\nTeito Klein, a student at the academy, is one of the most promising soldiers produced. Although ridiculed by everyone for being a sklave (German for slave) with no memories of his past, he is befriended by a fellow student called Mikage. While preparing for the final exam, Teito uncovers a dark secret related to his past. When an attempt to assassinate Ayanami, a high-ranking official who killed his father, fails, Teito is locked away awaiting punishment.\r\n\r\nOnly wanting the best for Teito, Mikage helps him escape. Teito ends up at the 7th District Church where he is taken in by the bishops. It is here that Teito attempts to evade the grasp of Ayanami and the Military, so he can rediscover his memories and learn why he is the person that can change the fate of the world.', '/uploads/1684676934_79ca14950699155aa040.jpg', '/uploads/1684676934_79ca14950699155aa040.jpg', '2009', 2, 3, '7.20', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '', '', '', '', 4, 4, 4, '2023-05-20 11:34:32', '2023-05-20 12:35:05', NULL),
(3, 52830, 'Isekai de Cheat Skill wo Te ni Shita Ore wa, Genjitsu Sekai wo mo Musou Suru: Level Up wa Jinsei wo Kaeta', '異世界でチート能力を手にした俺は、現実世界をも無双する ～レベルアップは人生を変えた～ ', 'Iseleve', 'Action,Adventure,Fantasy,Isekai,School', 1, 1, 1, 1, '13', 'All his life, Yuuya Tenjou has been the subject of resentment and contempt from everyone around him, even from his parents. To make matters worse, his grandfather—the only person who ever showed him affection—suddenly dies, leaving Yuuya truly alone.\r\n\r\nDespite facing many adversities, Yuuya does what he can to offer kindness to those who need it—but even the most good-natured people can only tolerate so much abuse. Just when he reaches his breaking point, a flicker of hope appears in the form of a hidden door in his bathroom.\r\n\r\nThis door provides two-way access to an abandoned house in another world, where he instantly gains game-like stats and skills. Moreover, the house once belonged to a sage, which gives Yuuya access to remarkable weapons, equipment, and crops with extraordinary effects. With these newfound blessings, the once-undesirable Yuuya may just reach his true potential and become unstoppable.', '/uploads/1684676967_317a283b0b0251859311.jpg', '/uploads/1684676989_a7a9d00a5341b131612c.jpg', '2023', 2, 3, '6.85', 0, 1, 0, 0, '24m', 'https://www.youtube.com/watch?v=TGYsZ-qhXvE&', '2023-04-07', '2023-10-10', 'Millepensee', 'TMS Entertainment,Tokyo MX,BS11,Kadokawa,CTW', 'https://www.iseleve.com/', '', 46, 46, 46, '2023-05-20 12:41:59', '2023-05-24 15:01:43', NULL),
(4, 51693, 'Kaminaki Sekai no Kamisama Katsudou', '神無き世界のカミサマ活動 ', 'Kamikatsu, What God Does in a World Without Gods ', 'Action,Comedy,Fantasy,Isekai,Parody,Reincarnation,Seinen', 1, 1, 1, 1, '12', 'Under the belief that the omnipotent god Mitama will come to save him, Yukito Urabe participates in a ritual to become the new leader of his father\'s cult. But when the boy drowns during the ritual, he wishes to be reborn in a world without gods or religion.\r\n\r\nReawakening in a completely different world devoid of spirituality. He meets a deviant girl named Aruaru, who introduces him to her village. However, his idyllic image of this world\'s society is short-lived when he witnesses a public group suicide and learns of the country\'s end-of-life system: at any moment, the government may order any citizen to die.\r\n\r\nAruaru and her sister are forcibly taken for execution soon after, prompting Yukito to rush to their rescue—but to no avail. In a moment of desperation, Yukito recalls his father\'s teachings and utters a prayer for Mitama to save them. Seemingly answering his call, a little girl descends from the sky and annihilates everyone who harmed Yukito and his friends. To Yukito\'s surprise, the girl introduces herself as Mitama.', '/uploads/1684677013_dbac9b9447828112594a.jpg', '/uploads/1684677036_a25b88aa2367674f8a3e.jpg', '2023', 2, 4, '6.84', 0, 1, 0, 0, '23m', 'https://www.youtube.com/watch?v=2X1HKlgK3rU&', '2023-04-06', '2023-10-10', 'Studio Palette', '', 'https://kamikatsu-anime.jp/', '', 2, 2, 2, '2023-05-20 13:29:12', '2023-05-24 15:01:32', NULL),
(5, 51009, 'Jujutsu Kaisen 2nd Season', '呪術廻戦', 'Sorcery Fight, JJK ', 'Action,Fantasy,School,Shounen', 1, 1, 3, 1, '24', 'Second season of Jujutsu Kaisen.', '/uploads/1684677055_74df4bc2694f11b56b0b.jpg', '/uploads/1684677055_74df4bc2694f11b56b0b.jpg', '2023', 3, 4, 'N/A', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '', '', '', '', 1, 1, 1, '2023-05-20 18:21:34', '2023-05-20 18:26:12', NULL),
(6, 51179, 'Mushoku Tensei II: Isekai Ittara Honki Dasu', '無職転生 II ～異世界行ったら本気だす～ ', 'Jobless Reincarnation: I Will Seriously Try If I Go To Another World, Mushoku Tensei: Isekai Ittara Honki Dasu 2nd Season ', 'Drama,Fantasy,Ecchi,Isekai,Reincarnation', 1, 1, 3, 2, '13', 'Second season of Mushoku Tensei: Isekai Ittara Honki Dasu.', '/uploads/1684677080_8e7fec3fe35c2c94ba6f.jpg', '/uploads/1684677080_8e7fec3fe35c2c94ba6f.jpg', '2023', 3, 4, 'N/A', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '', '', '', '', 0, 0, 0, '2023-05-20 18:23:33', '2023-05-20 18:23:33', NULL),
(7, 51498, 'Masamune-kun no Revenge R', '政宗くんのリベンジR ', 'Masamune-kun\'s Revenge R', 'Shounen,Harem,School,Comedy,Romance', 1, 1, 3, 1, '12', 'Second season of Masamune-kun no Revenge.', '/uploads/1684677105_3bfbb84f4ae450c9671c.jpg', '/uploads/1684677105_3bfbb84f4ae450c9671c.jpg', '2023', 3, 4, 'N/A', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '', '', '', '', 0, 0, 0, '2023-05-20 18:25:39', '2023-05-20 18:25:39', NULL),
(8, 53998, 'Bleach: Sennen Kessen-hen - Ketsubetsu-tan', 'BLEACH 千年血戦篇-訣別譚- ', 'Bleach: Thousand-Year Blood War Arc ', 'Action,Adventure,Fantasy,Shounen', 1, 1, 3, 1, '24', 'Second cour of Bleach: Sennen Kessen-hen.', '/uploads/1684677130_f28a949a276bdb3d973f.jpg', '/uploads/1684677130_f28a949a276bdb3d973f.jpg', '2023', 3, 3, 'N/A', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '', '', '', '', 2, 2, 2, '2023-05-20 18:28:06', '2023-05-21 08:23:00', NULL),
(9, 53050, 'Kanojo, Okarishimasu 3rd Season', '彼女、お借りします ', 'Kanokari', 'Shounen,Comedy,Romance', 1, 1, 3, 1, '12', 'Third season of Kanojo, Okarishimasu.', '/uploads/1684677159_50c7cae52da9a08762c0.jpg', '/uploads/1684677159_50c7cae52da9a08762c0.jpg', '2023', 3, 1, 'N/A', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '', '', '', '', 0, 0, 0, '2023-05-20 18:29:39', '2023-05-20 18:29:39', NULL),
(10, 54856, 'Horimiya: Piece', 'ホリミヤ -piece- ', 'Horimiya: Piece', 'Shounen,School,Romance', 1, 1, 3, 1, '12', 'Featuring stories from the manga not adapted in the main anime.', '/uploads/1684677184_27e28d7cc5da3473d231.jpg', '/uploads/1684677184_27e28d7cc5da3473d231.jpg', '2023', 3, 2, 'N/A', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '', '', '', '', 0, 0, 0, '2023-05-20 18:30:59', '2023-05-20 18:30:59', NULL),
(11, 54898, 'Bungou Stray Dogs 5th Season', '文豪ストレイドッグス ', 'Bungou Stray Dogs 5th Season', 'Seinen,Action,Mystery,Supernatural', 1, 1, 3, 1, '24', 'Fifth Season of Bungou Stray Dogs', '/uploads/1684677202_00fb8ca8067f2d25ec81.jpg', '/uploads/1684677202_00fb8ca8067f2d25ec81.jpg', '2023', 3, 2, 'N/A', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '', '', '', '', 0, 0, 0, '2023-05-20 18:33:26', '2023-05-20 18:33:26', NULL),
(12, 54112, 'Zom 100: Zombie ni Naru made ni Shitai 100 no Koto', 'ン100～ゾンビになるまでにしたい100のこと～ ', 'Bucket List of The Dead, Zombie 100: 100 Things I Want to do Before I Become a Zombie ', 'Action,Comedy,Horror,Supernatural,Seinen,Survival', 1, 1, 3, 1, '12', 'In a trash-filled apartment, 24-year-old Akira Tendou watches a zombie movie with lifeless, envious eyes. After spending three hard years at an exploitative corporation in Japan, his spirit is broken. He can\'t even muster the courage to confess his feelings to his beautiful co-worker Ootori. Then one morning, he stumbles upon his landlord eating lunch—which happens to be another tenant! The whole city\'s swarming with zombies, and even though he\'s running for his life, Akira has never felt more alive!', '/uploads/1684677232_021882284e9fad7a7329.jpg', '/uploads/1684677232_021882284e9fad7a7329.jpg', '2023', 3, 4, 'N/A', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '', '', '', '', 1, 1, 1, '2023-05-20 18:36:29', '2023-05-20 18:43:36', NULL),
(13, 54234, 'Suki na Ko ga Megane wo Wasureta', '好きな子がめがねを忘れた', 'The Girl I Like Forgot Her Glasses ', 'Shounen,Romantic,School,Comedy', 1, 1, 3, 1, '12', 'As the deskmate of Ai Mie, Kaede Komura always has his attention fixed on her. Attracted by her cute charms, all he wishes for is that she would look at him with those beautiful eyes beneath her glasses. But just a few days after making her acquaintance, Kaede notices something different about Ai: her eyes are squinting and her glasses are missing. Nonetheless, he still finds her adorable!\r\n\r\nUnexpectedly, Ai has a tendency to forget her glasses. Having terrible vision, she has difficulty going through her day at school. Thankfully, Kaede is more than willing to help her. As Ai starts relying on him, Kaede\'s feelings for her grow even more. Likewise, despite her short-sightedness, Kaede slowly becomes the person Ai always hopes to see.\r\n', '/uploads/1684677248_7d8884e7ed7b9cecd8d9.jpg', '/uploads/1684677248_7d8884e7ed7b9cecd8d9.jpg', '2023', 3, 3, 'N/A', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '', '', '', '', 1, 1, 1, '2023-05-20 18:38:01', '2023-05-20 18:43:34', NULL),
(14, 49858, 'Shinigami Bocchan to Kuro Maid 2nd Season', '死神坊ちゃんと黒メイド ', 'The Duke of Death and His Maid Season 2 ', 'Romantic,Comedy,Supernatural', 1, 1, 3, 1, '12', 'Second season of Shinigami Bocchan to Kuro Maid.', '/uploads/1684677276_91d17dc13ec8d573f109.jpg', '/uploads/1684677276_91d17dc13ec8d573f109.jpg', '2023', 3, 3, 'N/A', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '', '', '', '', 0, 0, 0, '2023-05-20 18:39:45', '2023-05-20 18:39:45', NULL),
(15, 51552, 'Watashi no Shiawase na Kekkon', 'わたしの幸せな結婚 ', 'My Happy Marriage, My Blissful Marriage ', 'Historical,Fantasy,Romance', 1, 1, 3, 2, '12', 'Miyo Saimori was the unfortunate child of a loveless, arranged marriage. After her mother died, her father brought in his lover and her own daughter, Kaya. From then on, Miyo\'s life was reduced to that of a mere servant. Even worse, while Kaya inherited the family\'s psychic abilities, Miyo had none—she was truly the daughter with no merit.\r\n\r\nAfter years of being treated like dirt, Miyo has learned to keep her head down, hide her pain, and obey every order. So, it comes as no surprise that she is arranged to be married to Kiyoka Kudou, a military captain rumored to be so cruel that he has driven away every one of his potential wives so far.\r\n\r\nFrom a painful upbringing to a painful marriage, that\'s the future that awaits Miyo—or so she thinks. Contrary to her expectations, her new husband is actually kind-hearted. What really awaits Miyo is a blissful, everlasting marriage full of happiness!\r\n', '/uploads/1684677294_b6ed373ab432f27863ab.jpg', '/uploads/1684677294_b6ed373ab432f27863ab.jpg', '2023', 3, 3, 'N/A', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '', '', '', '', 1, 1, 1, '2023-05-20 18:41:25', '2023-05-20 18:43:35', NULL),
(16, 53200, 'Hataraku Maou-sama!! 2nd Season', 'はたらく魔王さま！！', 'The Devil is a Part-Timer! 3rd Season, Hataraku Maou-sama 3', 'Mythology,Romantic,Workplace,Comedy,Fantasy', 1, 1, 3, 2, '12', 'Second Season of Hataraku no Maou-sama!!', '/uploads/1684677315_73e571d6e90ac1a6fd3d.jpg', '/uploads/1684677315_73e571d6e90ac1a6fd3d.jpg', '2023', 3, 3, 'N/A', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '', '', '', '', 0, 0, 0, '2023-05-20 18:42:57', '2023-05-20 18:42:57', NULL),
(17, 48633, 'Liar Liar', 'ライアー・ライアー ', 'Liar Liar', 'School,StrategyGame,Ecchi', 1, 1, 3, 2, '12', 'At Academy Island, everything is settled through \"Games\" waged for a certain number of stars, with the strongest student being granted the ranking of Seven Stars. Hiroto, a transfer student, unexpectedly beats the strongest empress and becomes the pseudo-strongest in the school! A mind game of lies and bluffs begins! ', '/uploads/1684677333_39c5c681adf6cbd62514.jpg', '/uploads/1684677333_39c5c681adf6cbd62514.jpg', '2023', 3, 4, 'N/A', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '', '', '', '', 2, 2, 2, '2023-05-20 18:47:10', '2023-05-24 15:00:56', NULL),
(18, 50613, 'Rurouni Kenshin: Meiji Kenkaku Romantan (2023)', 'るろうに剣心 -明治剣客浪漫譚-', 'Rurouni Kenshin: Meiji Kenkaku Romantan (2023)', 'Action,Romance,Historical,MartialArts,Shounen', 1, 1, 3, 2, '24', 'Ten years have passed since the end of Bakumatsu, an era of war that saw the uprising of citizens against the Tokugawa shogunate. The revolutionaries wanted to create a time of peace, and a thriving country free from oppression. The new age of Meiji has come, but peace has not yet been achieved. Swords are banned but people are still murdered in the streets. Orphans of war veterans are left with nowhere to go, while the government seems content to just line their pockets with money.\r\n\r\nOne wandering samurai, Kenshin Himura, still works to make sure the values he fought for are worth the lives spent to bring about the new era. Once known as Hitokiri Battousai, he was feared as the most ruthless killer of all the revolutionaries. Now haunted by guilt, Kenshin has sworn never to kill again in atonement for the lives he took, and he may never know peace until killing is a thing of the past.\r\n\r\nNow in the 11th year of Meiji, Kenshin stumbles upon Kaoru Kamiya, owner and head instructor of a small dojo being threatened to close its doors. The police force is powerless to stop the string of murders done in the name of her dojo by a man claiming to be the famous Battousai. Kenshin\'s wanderings pause for now as he joins Kaoru to clear both their names. But how long can he stay before his past catches up to him?', '/uploads/1684677362_1a4edf639ac5983df706.jpg', '/uploads/1684677362_1a4edf639ac5983df706.jpg', '2023', 3, 5, 'N/A', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '', '', '', '', 0, 0, 0, '2023-05-20 18:49:13', '2023-05-20 18:49:13', NULL),
(19, 50582, 'Nanatsu no Maken ga Shihai suru', '七つの魔剣が支配する ', 'Nanatsuma', 'School,Action,Fantasy', 1, 1, 3, 2, '24', 'In the world of magic, there exist deadly irreversible techniques commonly known as spellblades. These sparse and elusive spells, along with their casters, are shrouded in mystery and only their absolute lethality is known to the masses.\r\n\r\nEvery year, the spring blossom signifies a new intake of students to the prestigious magic school Kimberly. With reactions of awe and bewilderment, a ceremonious parade complete with magical beasts welcomes the newcomers to the institution. Among them is the mysterious Oliver Horn, whose indifference changes to fascination as he notices a peculiar figure—a girl wearing strange attire equipped with a Japanese sword.\r\n\r\nFrom the entrance ceremony onward, Oliver realizes that not all is as it seems at Kimberly, as the emergence of labyrinths, monsters, and other threats endanger the new student body. Nanatsu no Maken ga Shihai suru explores the intertwined fates of two warriors as they uncover the dark truths that lurk within the walls of the academy. ', '/uploads/1684677382_06378753044f941e8172.jpg', '/uploads/1684677382_06378753044f941e8172.jpg', '2023', 3, 3, 'N/A', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '', '', '', '', 0, 0, 0, '2023-05-20 18:50:34', '2023-05-20 18:50:34', NULL),
(20, 49894, 'Eiyuu Kyoushitsu', '英雄教室', 'Class Room✿For Heroes', 'Harem,School,Action,Fantasy,Ecchi', 1, 1, 3, 2, '12', 'A long time ago, there existed a Demon Lord who terrorized throughout the world until a Hero stepped up to the stage and challenged the Demon Lord, ultimately defeating him and ending his reign. The Hero then created Rosewood Academy, an academy made to help heroes-in-training achieve supremacy and help defend the world when needed that enrolls only the best of the best.\r\n\r\nEnter Arnest Flaming, a girl with a high sense of duty and the top student at the academy, hence receiving the alias \"Empress of Flames\" who one day encounters the lively, carefree new transfer student Blade, a boy who seems to equal her in power, something that she finds really irritating. Arnest was then personally requested by The King to supervise, and show Blade around the academy during his stay. The story follows the students\' struggles in their quest to become heroes. ', '/uploads/1684677401_bff094680ccad8131dea.jpg', '/uploads/1684677401_bff094680ccad8131dea.jpg', '2023', 3, 3, 'N/A', 0, 0, 0, 0, '', '', '0000-00-00', '0000-00-00', '', '', '', '', 5, 5, 5, '2023-05-20 18:52:32', '2023-05-24 15:00:49', NULL),
(21, 50220, 'Isekai Shoukan wa Nidome desu', '異世界召喚は二度目です ', 'Isenido', 'Harem,Isekai,Adventure,Comedy,Fantasy,Romance', 1, 1, 1, 1, '12', 'There was once a man who was summoned to another world, and saved it. Of course, he became too popular there, and turned into an isekai-normie. However, that man fell into a \"trap\" and was forcibly returned to his original world. Moreover, he had to start over as a baby!\r\n\r\nThis is the story of the way-too-fantastic ex-hero who lived as a gloomy high-schooler, as he gets summoned once again to that same other world in a very unexpected development! ', '/uploads/1684677420_7a5cd8cf82265c756b88.jpg', '/uploads/1684677435_4b17904e0905ad3f3692.jpg', '2023', 2, 3, '6.28', 0, 1, 0, 0, '23m', 'https://www.youtube.com/watch?v=ruMkHYL9hsw&', '2023-04-09', '2023-10-10', 'Studio Elle', '', 'https://isenido.com/', '', 1, 1, 1, '2023-05-20 19:10:49', '2023-05-20 19:16:05', NULL),
(22, 50307, 'Tonikaku Kawaii 2nd Season', 'トニカクカワイイ ', 'TONIKAWA: Over The Moon For You Season 2 ', 'Shounen,Comedy,Romance', 1, 1, 1, 1, '12', 'In the wake of their first home burning down, Nasa and Tsukasa Yuzaki are seeking temporary shelter at the Arisugawas\' bathhouse. Though they have only been married for a short time, their relationship has only become sweeter by the day. Nasa is determined to spend as much time with his wife as possible, basking in the happiness of their marriage.\r\n\r\nThe newlyweds find new ways to explore their relationship. From adopting a cat, going to an amusement park, and even watching an impromptu romantic comedy featuring Nasa\'s former teacher, every day is a new experience. But while Tsukasa continues to meet the people in Nasa\'s life, Nasa has yet to meet more of Tsukasa\'s family. Though they appear to be the picture-perfect couple to everyone around them, Nasa begins to wonder if he will ever learn more about his wife\'s mysterious past.', '/uploads/1684677453_f4dcab468060c09dc76b.jpg', '/uploads/1684677453_f4dcab468060c09dc76b.jpg', '2023', 2, 3, '7.91', 0, 1, 0, 0, '24m', 'https://www.youtube.com/watch?v=r0buvRyo_LE&', '2023-04-08', '2023-10-10', 'SevenArcs', 'Shogakukan-Shueisha Productions,Warner Bros. Japan,KlockWorx,Shogakukan,Crunchyroll', 'https://tonikawa.com/', '', 26, 26, 26, '2023-05-20 19:33:43', '2023-05-24 14:04:25', NULL),
(23, 51706, 'Yuusha ga Shinda!', '勇者が死んだ！', 'The Hero Is Dead! ', 'Harem,Parody,Action,Comedy,Fantasy,Ecchi', 1, 1, 1, 1, '12', 'Far to the north of the world lies Hell\'s Gate, a portal formerly used by the Demon Lord to invade the human realm. Thanks to the legendary hero Shion Bladearts, wielder of Excalibur, and his loyal band of companions, the Gate was sealed off and the demonic threat was vanquished.\r\n\r\nUnfortunately, the seal was incomplete and has begun to weaken, allowing the demons to once again begin their attack. Worried about the safety of his village, selfish and perverted farmer Touka Scott dig pitfalls to defend against the demons. But fear not, for Shion is on his way to reseal Hell\'s Gate and save humanity!\r\n\r\nOr at least he was, because the legendary hero is dead, having fallen into one of the pitfalls Touka dug. Luckily, dealing with the dead is the specialty of necromancer Anri Haynesworth. While she can\'t revive him, Anri can at least salvage their quest by forcing Touka\'s soul into Shion\'s rotting body and dragging him along to Hell\'s Gate in Shion\'s place. Not wanting to be left behind, Touka\'s childhood friend Yuna Yunis tags along. Together, the three of them set out as what just might be the most unsuitable party to ever try to save the world!\r\n', '/uploads/1684677485_b3785ec5829143119afd.jpg', '/uploads/1684677504_6fc183d96c35ddc1c6f7.jpg', '2023', 2, 3, '6.31', 0, 1, 0, 0, '23m', 'https://www.youtube.com/watch?v=nXHdXB-u7r8&', '2023-04-07', '2023-10-10', 'LIDENFILMS', '', 'https://heroisdead.com/', '', 3, 3, 3, '2023-05-20 19:55:06', '2023-05-24 15:01:34', NULL),
(24, 35507, 'Youkoso Jitsuryoku Shijou Shugi no Kyoushitsu e', 'ようこそ実力至上主義の教室へ', 'Welcome to the Classroom of the Elite, You-jitsu ', 'Psychological,School,Drama', 1, 1, 2, 2, '12', 'On the surface, Koudo Ikusei Senior High School is a utopia. The students enjoy an unparalleled amount of freedom, and it is ranked highly in Japan. However, the reality is less than ideal. Four classes, A through D, are ranked in order of merit, and only the top classes receive favorable treatment.\r\n\r\nKiyotaka Ayanokouji is a student of Class D, where the school dumps its worst. There he meets the unsociable Suzune Horikita, who believes she was placed in Class D by mistake and desires to climb all the way to Class A, and the seemingly amicable class idol Kikyou Kushida, whose aim is to make as many friends as possible.\r\n\r\nWhile class membership is permanent, class rankings are not; students in lower ranked classes can rise in rankings if they score better than those in the top ones. Additionally, in Class D, there are no bars on what methods can be used to get ahead. In this cutthroat school, can they prevail against the odds and reach the top?', '/uploads/1684677520_6a8b1beb1f104e13af80.jpg', '/uploads/1684677520_6a8b1beb1f104e13af80.jpg', '2017', 3, 3, '7.86', 0, 1, 0, 0, '23m', 'https://www.youtube.com/watch?v=Nd9vsmPKVq0&', '2017-07-12', '2017-09-27', 'Lerche', '', 'http://you-zitsu.com/', '', 10, 9, 9, '2023-05-20 20:26:14', '2023-05-24 15:13:13', NULL),
(26, 51096, 'Youkoso Jitsuryoku Shijou Shugi no Kyoushitsu e 2nd Season', 'ようこそ実力至上主義の教室へ 2期 ', 'Classroom of the Elite 2nd Season, You-jitsu 2nd Season, You-zitsu 2nd Season ', 'Psychological,School,Drama,Suspense', 1, 1, 2, 2, '13', 'Life back on the cruise following the Island Special Examination is anything but smooth sailing. Almost immediately after their return, the first-year students of Tokyo Metropolitan Advanced Nurturing High School face yet another special exam, with both class and individual points on the line.\r\n\r\nIn addition to the complicated ruleset, more issues arise in the form of Kakeru Ryuuen and Kei Karuizawa. Angered by the previous test\'s outcome, Ryuuen is dead set on outdoing every class in the new challenge using any means necessary. Meanwhile, Karuizawa, a crucial pillar of Class D, is close to crumbling under the pressure of her past.\r\n\r\nThe stage is now set for Kiyotaka Ayanokouji to once again—using the full extent of his planning, foresight, and ruthless manipulation—steer Class D to victory as dangerously close enemy forces try to bring it down.', '/uploads/1684673543_c02d1e3694ad01ff0d54.jpg', '/uploads/1684674146_c5bd6c0aa1770acf5d2c.png', '2022', 3, 3, '8.14', 0, 1, 0, 0, '24m', 'https://www.youtube.com/watch?v=tn1lJvRqWtM&', '2022-07-04', '2022-09-26', 'Lerche', '', 'http://you-zitsu.com/', '', 53, 53, 53, '2023-05-21 13:05:34', '2023-05-24 15:02:38', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `animestatus`
--

INSERT INTO `animestatus` (`id`, `userid`, `uid`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', '48633', '3', '2023-05-24 15:00:23', '2023-05-24 15:00:23', NULL),
(2, '1', '49894', '3', '2023-05-24 15:01:20', '2023-05-24 15:01:20', NULL),
(3, '1', '51693', '1', '2023-05-24 15:01:38', '2023-05-24 15:01:38', NULL),
(4, '1', '51706', '1', '2023-05-24 15:01:40', '2023-05-24 15:01:40', NULL),
(5, '1', '52830', '1', '2023-05-24 15:01:42', '2023-05-24 15:01:42', NULL),
(6, '1', '35507', '5', '2023-05-24 15:02:32', '2023-05-24 15:02:32', NULL),
(7, '1', '51096', '5', '2023-05-24 15:02:37', '2023-05-24 15:02:37', NULL);

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
(2, '51693'),
(3, '50220'),
(4, '50307'),
(5, '51706'),
(6, '35507'),
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
(1, 1, 'email_password', NULL, 'akaisora09@gmail.com', '$2y$10$fNW/eSalcB5LeMBF152cCO1d66QFBnVDaPNO10.xpZ8PPyW6J4a/m', NULL, NULL, 0, '2023-06-11 13:35:28', '2023-05-12 19:52:20', '2023-06-11 13:35:28'),
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb3;

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
(49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/114.0', 'email_password', 'akaisora09@gmail.com', 1, '2023-06-11 13:35:28', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `community`
--

INSERT INTO `community` (`id`, `user_id`, `post_id`, `post_tag`, `post_head`, `post_content`, `post_rep`, `post_disrep`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 898656356, 2, 'Hello! ', 'Welcome Anitium!', 0, 0, '2023-05-24 14:09:22', '2023-05-24 14:09:22', NULL),
(2, 3, 223413779, 2, 'Hello Word!', 'My DOc\r\n12143', 0, 0, '2023-06-11 09:56:15', '2023-06-11 09:56:15', NULL),
(3, 3, 807017952, 4, 'where you where we boodddoo  rooo le loce ', '124125  v51221v51v51 51v215', 0, 0, '2023-06-11 13:34:53', '2023-06-11 13:34:53', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `community_post`
--

INSERT INTO `community_post` (`id`, `user_id`, `post_id`, `post_content`, `post_rep`, `post_disrep`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 898656356, 'Good job.', 0, 0, '2023-05-24 14:29:19', '2023-05-24 14:29:19', NULL),
(2, 1, 898656356, 'Bolos', 0, 0, '2023-05-24 14:40:26', '2023-05-24 14:40:26', NULL),
(3, 3, 223413779, 'qwq', 0, 0, '2023-06-11 11:05:22', '2023-06-11 11:05:22', NULL),
(4, 3, 807017952, '1525', 0, 0, '2023-06-11 13:35:09', '2023-06-11 13:35:09', NULL),
(5, 1, 807017952, '12414', 0, 0, '2023-06-11 13:35:41', '2023-06-11 13:35:41', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `episode`
--

DROP TABLE IF EXISTS `episode`;
CREATE TABLE IF NOT EXISTS `episode` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL,
  `ep_raw` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ep_sub` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ep_dub` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ep_turk` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ep_id_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ep_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ep_pv` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ep_view` int NOT NULL,
  `ep_view_month` int NOT NULL,
  `ep_view_years` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `episode`
--

INSERT INTO `episode` (`id`, `uid`, `ep_raw`, `ep_sub`, `ep_dub`, `ep_turk`, `ep_id_name`, `ep_name`, `ep_pv`, `ep_view`, `ep_view_month`, `ep_view_years`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2928, '', 'SUB', '', '', '1', '', 'https://www.youtube.com/watch?v=XlqCxnEocqM&ab_channel=Anitium', 24, 24, 24, '2023-05-20 10:49:26', '2023-05-20 13:59:30', NULL),
(2, 5525, '', 'SUB', '', '', '1', 'The Future Of Painful Thoughts Is', '', 9, 9, 9, '2023-05-20 11:35:21', '2023-05-20 12:03:44', NULL),
(3, 5525, '', 'SUB', '', '', '2', 'Nostalgic Memories Accompany Pain', '', 1, 1, 1, '2023-05-20 11:35:46', '2023-05-20 11:58:10', NULL),
(4, 5525, '', 'SUB', '', '', '3', 'My Innocent Child, Sleep Within The Light', '', 3, 3, 3, '2023-05-20 11:36:04', '2023-05-20 12:00:47', NULL),
(5, 5525, '', 'SUB', '', '', '4', 'To the Depths of the Earnest Prayer', '', 2, 2, 2, '2023-05-20 11:36:26', '2023-05-20 12:02:42', NULL),
(6, 5525, '', 'SUB', '', '', '5', 'Hot Tears, Gently Fill His Heart...', '', 2, 2, 2, '2023-05-20 11:38:06', '2023-05-20 12:05:05', NULL),
(7, 5525, '', 'SUB', '', '', '6', 'The Path of Justice Lead to Light', '', 1, 1, 1, '2023-05-20 11:38:20', '2023-05-20 12:11:03', NULL),
(8, 5525, '', 'SUB', '', '', '7', 'Does the Soul that was Devoured by the Wings, Dream of Its Beloved Child?', '', 0, 0, 0, '2023-05-20 11:38:36', '2023-05-20 11:38:36', NULL),
(9, 5525, '', 'SUB', '', '', '8', 'Half of His Soul Arouses a Sad Awakening', '', 0, 0, 0, '2023-05-20 11:38:52', '2023-05-20 11:38:52', NULL),
(10, 5525, '', 'SUB', '', '', '9', 'The Color of His Soul Will be Forever...', '', 1, 1, 1, '2023-05-20 11:39:07', '2023-05-20 12:11:10', NULL),
(11, 5525, '', 'SUB', '', '', '10', 'That Is But One Form of Atonement', '', 3, 3, 3, '2023-05-20 11:39:31', '2023-05-20 12:14:48', NULL),
(12, 5525, '', 'SUB', '', '', '11', 'Atonement For Loved Ones Is...', '', 1, 1, 1, '2023-05-20 11:39:48', '2023-05-20 12:14:51', NULL),
(13, 5525, '', 'SUB', '', '', '12', 'The Darkness Called \"Pain\" Treads Ever Closer...', '', 0, 0, 0, '2023-05-20 11:40:04', '2023-05-20 11:40:04', NULL),
(14, 5525, '', 'SUB', '', '', '13', 'Down the Path of Light I See...', '', 0, 0, 0, '2023-05-20 11:40:18', '2023-05-20 11:40:18', NULL),
(15, 5525, '', 'SUB', '', '', '14', 'A Reason to Fight Together... The Right to be Called Brothers in Arms', '', 1, 1, 1, '2023-05-20 11:40:35', '2023-05-20 12:12:55', NULL),
(16, 5525, '', 'SUB', '', '', '15', 'That Day, I was With Him', '', 1, 1, 1, '2023-05-20 11:40:52', '2023-05-20 12:21:29', NULL),
(17, 5525, '', 'SUB', '', '', '16', 'The Truth lies Deep within the Darkness Where Light Cannot Reach', '', 3, 3, 3, '2023-05-20 11:41:19', '2023-05-20 12:22:18', NULL),
(18, 5525, '', 'SUB', '', '', '17', 'The Family With Wings of Darkness, Enshrounded in Misery, Flies Down', '', 0, 0, 0, '2023-05-20 11:41:37', '2023-05-20 11:41:37', NULL),
(19, 5525, '', 'SUB', '', '', '18', 'The One Who Must be Forgiven Drown in Darkness... The One Who Loves Him is Filled With Tears', '', 0, 0, 0, '2023-05-20 11:42:10', '2023-05-20 11:42:10', NULL),
(20, 5525, '', 'SUB', '', '', '19', 'The One-Sided, Yet Never Dying Love Finds Itself...', '', 0, 0, 0, '2023-05-20 11:42:24', '2023-05-20 11:42:24', NULL),
(21, 5525, '', 'SUB', '', '', '20', 'They Both Offer a Requiem', '', 1, 1, 1, '2023-05-20 11:42:42', '2023-05-20 11:58:07', NULL),
(22, 5525, '', 'SUB', '', '', '21', 'Therefore, You Pass Through the Door of the Defeated', '', 0, 0, 0, '2023-05-20 11:43:02', '2023-05-20 11:43:02', NULL),
(23, 5525, '', 'SUB', '', '', '22', 'Led by the Light in the Water`s Depths, He Spies Upon...', '', 0, 0, 0, '2023-05-20 11:43:19', '2023-05-20 11:43:19', NULL),
(24, 5525, '', 'SUB', '', '', '23', 'Before the Darkness of the Heart', '', 0, 0, 0, '2023-05-20 11:43:33', '2023-05-20 11:43:33', NULL),
(25, 5525, '', 'SUB', '', '', '24', 'The Justice of Those Who Lack Love is... . Oh Heart That is Stolen by Darkness, Forever...', '', 1, 1, 1, '2023-05-20 11:43:50', '2023-05-20 12:35:01', NULL),
(26, 5525, '', 'SUB', '', '', '25', 'The Heart Is Led by the Truth Repeated on the Other Side...', '', 0, 0, 0, '2023-05-20 11:44:10', '2023-05-20 11:44:10', NULL),
(27, 52830, '', 'SUB', '', '', '1', 'To Another World', '', 40, 40, 40, '2023-05-20 12:52:04', '2023-05-20 13:24:45', NULL),
(28, 52830, '', 'SUB', '', '', '2', 'Ousei Academy', '', 2, 2, 2, '2023-05-20 12:52:22', '2023-05-20 13:21:26', NULL),
(29, 52830, '', 'SUB', '', '', '3', 'Life Changes', '', 0, 0, 0, '2023-05-20 12:52:37', '2023-05-20 12:52:37', NULL),
(30, 52830, '', 'SUB', '', '', '4', 'A Step of Courage', '', 0, 0, 0, '2023-05-20 12:52:54', '2023-05-20 12:52:54', NULL),
(31, 52830, '', 'SUB', '', '', '5', 'New Family', '', 0, 0, 0, '2023-05-20 12:53:05', '2023-05-20 12:53:05', NULL),
(32, 52830, '', 'SUB', '', '', '6', '', '', 1, 1, 1, '2023-05-20 13:14:08', '2023-05-20 13:23:04', NULL),
(34, 51693, '', 'SUB', '', '', '1', '', '', 8, 8, 8, '2023-05-20 13:32:17', '2023-05-20 13:50:30', NULL),
(35, 51693, '', 'SUB', '', '', '2', 'We know we are not worthy great Lord Mitama Beautiful is—', '', 2, 2, 2, '2023-05-20 13:32:32', '2023-05-20 13:50:18', NULL),
(36, 51693, '', 'SUB', '', '', '3', '', '', 0, 0, 0, '2023-05-20 13:32:38', '2023-05-20 13:32:38', NULL),
(37, 51693, '', 'SUB', '', '', '4', 'We know we are not worthy O great Lord Mitama You have aaahhhhh-', '', 0, 0, 0, '2023-05-20 13:32:49', '2023-05-20 13:32:49', NULL),
(38, 51693, '', 'SUB', '', '', '5', '', '', 0, 0, 0, '2023-05-20 13:32:56', '2023-05-20 13:32:56', NULL),
(39, 51693, '', 'SUB', '', '', '6', '', '', 0, 0, 0, '2023-05-20 13:33:05', '2023-05-20 13:33:05', NULL),
(40, 51693, '', 'SUB', '', '', '7', '', '', 3, 3, 3, '2023-05-20 13:33:11', '2023-05-20 19:06:42', NULL),
(41, 50220, '', 'SUB', '', '', '1', 'Summoned to Another World for a Second Time', '', 1, 1, 1, '2023-05-20 19:15:32', '2023-05-20 19:25:21', NULL),
(42, 50220, '', 'SUB', '', '', '2', 'Going on a Trip for a Second Time', '', 0, 0, 0, '2023-05-20 19:15:44', '2023-05-20 19:15:44', NULL),
(43, 50220, '', 'SUB', '', '', '3', '', '', 0, 0, 0, '2023-05-20 19:15:55', '2023-05-20 19:15:55', NULL),
(44, 50220, '', 'SUB', '', '', '4', '', '', 0, 0, 0, '2023-05-20 19:16:30', '2023-05-20 19:16:30', NULL),
(45, 50220, '', 'SUB', '', '', '5', '', '', 0, 0, 0, '2023-05-20 19:16:36', '2023-05-20 19:16:36', NULL),
(46, 50220, '', 'SUB', '', '', '6', '', '', 0, 0, 0, '2023-05-20 19:16:43', '2023-05-20 19:16:43', NULL),
(47, 50220, '', 'SUB', '', '', '7', '', '', 2, 2, 2, '2023-05-20 19:17:02', '2023-05-20 19:28:21', NULL),
(48, 50307, '', 'SUB', '', '', '1', 'All because of you', '', 19, 19, 19, '2023-05-20 19:37:24', '2023-05-24 14:22:18', NULL),
(49, 50307, '', 'SUB', '', '', '2', 'On the Subject of Happiness', '', 0, 0, 0, '2023-05-20 19:37:39', '2023-05-20 19:37:39', NULL),
(50, 50307, '', 'SUB', '', '', '3', 'Before the Fireworks Go Out', '', 0, 0, 0, '2023-05-20 19:37:52', '2023-05-20 19:37:52', NULL),
(51, 50307, '', 'SUB', '', '', '4', '', '', 0, 0, 0, '2023-05-20 19:38:01', '2023-05-20 19:38:01', NULL),
(52, 50307, '', 'SUB', '', '', '5', '', '', 0, 0, 0, '2023-05-20 19:38:07', '2023-05-20 19:38:07', NULL),
(53, 50307, '', 'SUB', '', '', '6', '', '', 0, 0, 0, '2023-05-20 19:38:29', '2023-05-20 19:38:29', NULL),
(54, 50307, '', 'SUB', '', '', '7', '', '', 0, 0, 0, '2023-05-20 19:38:42', '2023-05-20 19:38:42', NULL),
(55, 51706, '', 'SUB', '', '', '1', 'The Legendary Hero Is Dead?!', '', 0, 0, 0, '2023-05-20 19:58:06', '2023-05-20 19:58:06', NULL),
(56, 51706, '', 'SUB', '', '', '2', 'The Legendary Hero Impostor', '', 0, 0, 0, '2023-05-20 19:58:27', '2023-05-20 19:58:27', NULL),
(57, 51706, '', 'SUB', '', '', '3', 'The Legendary Hero Is a Skeleton!', '', 0, 0, 0, '2023-05-20 19:58:39', '2023-05-20 19:58:39', NULL),
(58, 51706, '', 'SUB', '', '', '4', 'The Legendary Hero and Bride', '', 0, 0, 0, '2023-05-20 19:58:57', '2023-05-20 19:58:57', NULL),
(59, 51706, '', 'SUB', '', '', '5', '', '', 0, 0, 0, '2023-05-20 19:59:04', '2023-05-20 19:59:04', NULL),
(60, 51706, '', 'SUB', '', '', '6', '', '', 0, 0, 0, '2023-05-20 19:59:10', '2023-05-20 19:59:10', NULL),
(61, 51706, '', 'SUB', '', '', '7', '', '', 1, 1, 1, '2023-05-20 19:59:16', '2023-05-20 20:14:30', NULL),
(62, 35507, '', 'SUB', '', '', '1', 'What is evil? Whatever springs from weakness.', '', 4, 4, 4, '2023-05-20 20:29:31', '2023-05-20 20:51:00', NULL),
(63, 35507, '', 'SUB', '', '', '2', 'It takes a great talent and skill to conceal one\'s talent and skill.', '', 0, 0, 0, '2023-05-20 20:29:48', '2023-05-20 20:29:48', NULL),
(64, 35507, '', 'SUB', '', '', '3', 'Man is an animal that makes bargains: no other animal does this—no dog exchanges bones with another.', '', 2, 2, 2, '2023-05-20 20:30:01', '2023-05-20 20:42:08', NULL),
(65, 35507, '', 'SUB', '', '', '4', 'We should not be upset that others hide the truth from us, when we hide it so often from ourselves.', '', 0, 0, 0, '2023-05-20 20:30:15', '2023-05-20 20:30:15', NULL),
(66, 35507, '', 'SUB', '', '', '5', 'Hell is other people.', '', 0, 0, 0, '2023-05-20 20:30:32', '2023-05-20 20:30:32', NULL),
(67, 35507, '', 'SUB', '', '', '6', 'There are two kinds of lies; one concerns an accomplished fact, the other concerns a future duty.', '', 0, 0, 0, '2023-05-20 20:30:50', '2023-05-20 20:30:50', NULL),
(68, 35507, '', 'SUB', '', '', '7', 'Nothing is as dangerous as an ignorant friend; a wise enemy is to be preferred', '', 1, 1, 1, '2023-05-20 20:31:05', '2023-05-20 20:47:12', NULL),
(69, 35507, '', 'SUB', '', '', '8', 'Abandon all hope, ye who enter here.', '', 1, 1, 1, '2023-05-20 20:31:20', '2023-05-20 20:42:14', NULL),
(70, 35507, '', 'SUB', '', '', '9', 'Man is condemned to be free.', '', 3, 3, 3, '2023-05-20 20:31:34', '2023-05-20 20:43:15', NULL),
(71, 35507, '', 'SUB', '', '', '10', 'Every man has in himself the most dangerous traitor of all', '', 0, 0, 0, '2023-05-20 20:31:47', '2023-05-20 20:31:47', NULL),
(72, 35507, '', 'SUB', '', '', '11', 'What people commonly call fate is mostly their own stupidity.', '', 0, 0, 0, '2023-05-20 20:32:02', '2023-05-20 20:32:02', NULL),
(73, 35507, '', 'SUB', '', '', '12', 'Genius lives only one story above madness.', '', 10, 10, 10, '2023-05-20 20:32:15', '2023-05-21 08:36:01', NULL),
(74, 51096, '', 'SUB', '', '', '1', 'Remember to Keep a Clear Head in Difficult Times', '', 27, 27, 27, '2023-05-21 13:20:34', '2023-05-23 13:16:38', NULL),
(75, 51096, '', '', '', '', '2', 'There Are Two Main Human Sins from Which All the Others Derive: Impatience and Indolence.', '', 0, 0, 0, '2023-05-21 13:20:46', '2023-05-21 13:20:46', NULL),
(76, 51096, '', 'SUB', '', '', '3', 'The Greatest Souls Are Capable of the Greatest Vices as Well as of the Greatest Virtues.', '', 3, 3, 3, '2023-05-21 13:20:58', '2023-05-21 13:21:24', NULL),
(77, 51096, '', 'SUB', '', '', '4', 'The Material Has to Be Created.', '', 0, 0, 0, '2023-05-21 13:21:56', '2023-05-21 13:21:56', NULL),
(78, 51096, '', 'SUB', '', '', '5', 'Every failure is a step to success.', '', 0, 0, 0, '2023-05-21 13:23:50', '2023-05-21 13:23:50', NULL),
(79, 51096, '', 'SUB', '', '', '6', 'Adversity Is the First Path to Truth.', '', 0, 0, 0, '2023-05-21 13:24:04', '2023-05-21 13:24:04', NULL),
(80, 51096, '', 'SUB', '', '', '7', 'To Doubt Everything or to Believe Everything Are Two Equally Convenient Solutions; Both Dispense with the Necessity of Reflection.', '', 1, 1, 1, '2023-05-21 13:24:21', '2023-05-21 13:24:21', NULL),
(81, 51096, '', 'SUB', '', '', '8', 'The Wound Is at Her Heart.', '', 0, 0, 0, '2023-05-21 13:24:33', '2023-05-21 13:24:33', NULL),
(82, 51096, '', 'SUB', '', '', '9', 'If You Make a Mistake and Do Not Correct It, This Is Called a Mistake.', '', 0, 0, 0, '2023-05-21 13:24:50', '2023-05-21 13:24:50', NULL),
(83, 51096, '', 'SUB', '', '', '10', 'People, Often Deceived by An Illusive Good, Desire Their Own Ruin.', '', 0, 0, 0, '2023-05-21 13:25:05', '2023-05-21 13:25:05', NULL),
(84, 51096, '', 'SUB', '', '', '11', 'A Man Who Cannot Command Himself Will Always Be a Slave.', '', 0, 0, 0, '2023-05-21 13:25:15', '2023-05-21 13:25:15', NULL),
(85, 51096, '', 'SUB', '', '', '12', 'Force Without Wisdom Falls of Its Own Weight.', '', 1, 1, 1, '2023-05-21 13:25:33', '2023-05-24 14:48:07', NULL),
(86, 51096, '', 'SUB', '', '', '13', 'The Worst Enemy You Can Meet Will Always Be Yourself.', '', 14, 14, 14, '2023-05-21 13:25:48', '2023-05-24 14:48:21', NULL),
(88, 52830, '', 'SUB', '', '', '8', '', '', 4, 4, 4, '2023-05-31 12:08:24', '2023-05-31 12:08:24', NULL),
(89, 52830, '', 'SUB', '', '', '7', '', '', 1, 1, 1, '2023-05-31 12:09:27', '2023-05-31 12:09:27', NULL),
(91, 52830, '', 'SUB', '', '', '9', '', '', 53, 53, 53, '2023-05-31 12:16:58', '2023-05-31 12:16:58', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `episode_comment`
--

INSERT INTO `episode_comment` (`id`, `user_id`, `post_id`, `post_ani`, `post_ep`, `post_spo`, `post_content`, `post_rep`, `post_disrep`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1426127565, 50307, '1', 0, 'I love it episode-1...', 0, 0, '2023-05-24 14:22:18', '2023-05-24 14:22:18', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=432 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(136, 52830, 1, '1', 'Mp4Upload', 'https://www.mp4upload.com/embed-eihizh90ouu1.html'),
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
(431, 52830, 1, '9', 'Doodstream', 'https://dood.wf/e/455ey89lvvbh');

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `files`
--

INSERT INTO `files` (`id`, `name`, `type`, `size`, `path`, `created_at`, `updated_at`) VALUES
(7, '1684673543_c02d1e3694ad01ff0d54.jpg', 'image/jpeg', 53075, '/uploads/1684673543_c02d1e3694ad01ff0d54.jpg', '2023-05-21 12:52:23', '2023-05-21 12:52:23'),
(8, '1684674146_c5bd6c0aa1770acf5d2c.png', 'image/png', 1226940, '/uploads/1684674146_c5bd6c0aa1770acf5d2c.png', '2023-05-21 13:02:26', '2023-05-21 13:02:26'),
(9, '1684676700_d5568af10b258f61d704.jpg', 'image/jpeg', 49791, '/uploads/1684676700_d5568af10b258f61d704.jpg', '2023-05-21 13:45:00', '2023-05-21 13:45:00'),
(10, '1684676934_79ca14950699155aa040.jpg', 'image/jpeg', 17944, '/uploads/1684676934_79ca14950699155aa040.jpg', '2023-05-21 13:48:54', '2023-05-21 13:48:54'),
(11, '1684676967_317a283b0b0251859311.jpg', 'image/jpeg', 58587, '/uploads/1684676967_317a283b0b0251859311.jpg', '2023-05-21 13:49:27', '2023-05-21 13:49:27'),
(12, '1684676989_a7a9d00a5341b131612c.jpg', 'image/jpeg', 723210, '/uploads/1684676989_a7a9d00a5341b131612c.jpg', '2023-05-21 13:49:49', '2023-05-21 13:49:49'),
(13, '1684677013_dbac9b9447828112594a.jpg', 'image/jpeg', 57725, '/uploads/1684677013_dbac9b9447828112594a.jpg', '2023-05-21 13:50:13', '2023-05-21 13:50:13'),
(14, '1684677036_a25b88aa2367674f8a3e.jpg', 'image/jpeg', 623781, '/uploads/1684677036_a25b88aa2367674f8a3e.jpg', '2023-05-21 13:50:36', '2023-05-21 13:50:36'),
(15, '1684677055_74df4bc2694f11b56b0b.jpg', 'image/jpeg', 56732, '/uploads/1684677055_74df4bc2694f11b56b0b.jpg', '2023-05-21 13:50:55', '2023-05-21 13:50:55'),
(16, '1684677080_8e7fec3fe35c2c94ba6f.jpg', 'image/jpeg', 36839, '/uploads/1684677080_8e7fec3fe35c2c94ba6f.jpg', '2023-05-21 13:51:20', '2023-05-21 13:51:20'),
(17, '1684677105_3bfbb84f4ae450c9671c.jpg', 'image/jpeg', 59475, '/uploads/1684677105_3bfbb84f4ae450c9671c.jpg', '2023-05-21 13:51:45', '2023-05-21 13:51:45'),
(18, '1684677130_f28a949a276bdb3d973f.jpg', 'image/jpeg', 48183, '/uploads/1684677130_f28a949a276bdb3d973f.jpg', '2023-05-21 13:52:10', '2023-05-21 13:52:10'),
(19, '1684677159_50c7cae52da9a08762c0.jpg', 'image/jpeg', 53066, '/uploads/1684677159_50c7cae52da9a08762c0.jpg', '2023-05-21 13:52:39', '2023-05-21 13:52:39'),
(20, '1684677184_27e28d7cc5da3473d231.jpg', 'image/jpeg', 50961, '/uploads/1684677184_27e28d7cc5da3473d231.jpg', '2023-05-21 13:53:04', '2023-05-21 13:53:04'),
(21, '1684677202_00fb8ca8067f2d25ec81.jpg', 'image/jpeg', 74179, '/uploads/1684677202_00fb8ca8067f2d25ec81.jpg', '2023-05-21 13:53:22', '2023-05-21 13:53:22'),
(22, '1684677232_021882284e9fad7a7329.jpg', 'image/jpeg', 85251, '/uploads/1684677232_021882284e9fad7a7329.jpg', '2023-05-21 13:53:52', '2023-05-21 13:53:52'),
(23, '1684677248_7d8884e7ed7b9cecd8d9.jpg', 'image/jpeg', 46055, '/uploads/1684677248_7d8884e7ed7b9cecd8d9.jpg', '2023-05-21 13:54:08', '2023-05-21 13:54:08'),
(24, '1684677276_91d17dc13ec8d573f109.jpg', 'image/jpeg', 36511, '/uploads/1684677276_91d17dc13ec8d573f109.jpg', '2023-05-21 13:54:36', '2023-05-21 13:54:36'),
(25, '1684677294_b6ed373ab432f27863ab.jpg', 'image/jpeg', 44370, '/uploads/1684677294_b6ed373ab432f27863ab.jpg', '2023-05-21 13:54:54', '2023-05-21 13:54:54'),
(26, '1684677315_73e571d6e90ac1a6fd3d.jpg', 'image/jpeg', 61697, '/uploads/1684677315_73e571d6e90ac1a6fd3d.jpg', '2023-05-21 13:55:15', '2023-05-21 13:55:15'),
(27, '1684677333_39c5c681adf6cbd62514.jpg', 'image/jpeg', 60478, '/uploads/1684677333_39c5c681adf6cbd62514.jpg', '2023-05-21 13:55:33', '2023-05-21 13:55:33'),
(28, '1684677362_1a4edf639ac5983df706.jpg', 'image/jpeg', 57242, '/uploads/1684677362_1a4edf639ac5983df706.jpg', '2023-05-21 13:56:02', '2023-05-21 13:56:02'),
(29, '1684677382_06378753044f941e8172.jpg', 'image/jpeg', 63244, '/uploads/1684677382_06378753044f941e8172.jpg', '2023-05-21 13:56:22', '2023-05-21 13:56:22'),
(30, '1684677401_bff094680ccad8131dea.jpg', 'image/jpeg', 66400, '/uploads/1684677401_bff094680ccad8131dea.jpg', '2023-05-21 13:56:41', '2023-05-21 13:56:41'),
(31, '1684677420_7a5cd8cf82265c756b88.jpg', 'image/jpeg', 61867, '/uploads/1684677420_7a5cd8cf82265c756b88.jpg', '2023-05-21 13:57:00', '2023-05-21 13:57:00'),
(32, '1684677435_4b17904e0905ad3f3692.jpg', 'image/jpeg', 179488, '/uploads/1684677435_4b17904e0905ad3f3692.jpg', '2023-05-21 13:57:15', '2023-05-21 13:57:15'),
(33, '1684677453_f4dcab468060c09dc76b.jpg', 'image/jpeg', 47146, '/uploads/1684677453_f4dcab468060c09dc76b.jpg', '2023-05-21 13:57:33', '2023-05-21 13:57:33'),
(34, '1684677485_b3785ec5829143119afd.jpg', 'image/jpeg', 65296, '/uploads/1684677485_b3785ec5829143119afd.jpg', '2023-05-21 13:58:05', '2023-05-21 13:58:05'),
(35, '1684677504_6fc183d96c35ddc1c6f7.jpg', 'image/jpeg', 281358, '/uploads/1684677504_6fc183d96c35ddc1c6f7.jpg', '2023-05-21 13:58:24', '2023-05-21 13:58:24'),
(36, '1684677520_6a8b1beb1f104e13af80.jpg', 'image/jpeg', 19822, '/uploads/1684677520_6a8b1beb1f104e13af80.jpg', '2023-05-21 13:58:40', '2023-05-21 13:58:40');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `reportpost`
--

INSERT INTO `reportpost` (`id`, `username`, `postid`, `ids`) VALUES
(1, 'akaisora09', 1426127565, 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(1, 'akaisora09', 'https://wallpaper.dog/large/17048961.jpg', 1, 1, 1, 1, 1, NULL, NULL, 1, NULL, '2023-05-12 19:52:20', '2023-05-12 19:52:20', NULL),
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
  `webdisqus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `webdiscord` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `webdonation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
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

INSERT INTO `websettings` (`id`, `webname`, `weburl`, `weblic`, `webconvert`, `webdisqus`, `webdiscord`, `webdonation`, `weblogo`, `webicon`, `webindexbg`, `webinfo`, `webaniscover`, `webfooter`) VALUES
(1, 'Anitium', 'localhost', '08.04.2024-XACREX888794', 'https://lic.anitium.net/aniconvert.php?url=', 'https://anitium.disqus.com', 'https://discord.gg/YmDHnQGxCn', 'https://www.patreon.com/anitium', 'https://anitium.net/files/images/logo.png', 'https://anitium.net/files/images/logo.png', 'https://i.hizliresim.com/god644q.png', 'Free Watch Anime!', 'https://i.hizliresim.com/kuktn70.jpg', 'https://i.hizliresim.com/5yv5uk8.jpg');

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
