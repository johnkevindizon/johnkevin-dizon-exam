-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2024 at 07:23 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `youtube_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `recent_searches`
--

CREATE TABLE `recent_searches` (
  `id` int(11) NOT NULL,
  `channel_id` varchar(255) NOT NULL,
  `search_time` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recent_searches`
--

INSERT INTO `recent_searches` (`id`, `channel_id`, `search_time`) VALUES
(1, 'UCLCPoAvvcep5OMb0x3e5XmA', '2024-07-15 12:53:31');

-- --------------------------------------------------------

--
-- Table structure for table `youtube_channels`
--

CREATE TABLE `youtube_channels` (
  `id` int(11) NOT NULL,
  `channel_id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `youtube_channels`
--

INSERT INTO `youtube_channels` (`id`, `channel_id`, `name`, `description`, `profile_picture`) VALUES
(1, 'UCLCPoAvvcep5OMb0x3e5XmA', 'Anthem Lights', 'Welcome to the official Anthem Lights YouTube channel! On our channel, you\'ll find a range of covers, medleys, mashups of popular music as well as original music videos. Anthem Lights is a vocal group from Nashville, TN made up of singers Caleb Grimm, Chad Graham, Joey Stamper, and Spencer Kane. We are ALWAYS uploading brand new music and videos so make sure to subscribe and enable ALL notifications so you never miss a video! We do what we love because of you! We so appreciate your support thru commenting, liking and subscribing! For instant updates, check out our social media accounts below!\n\nhttps://www.kickstarter.com/projects/anthemlights/anthem-lights-new-original-christian-album', 'https://yt3.ggpht.com/6yEaLzxqR3FtxbSShP9KPcfftRpBv07nw3qvrK5elvCF3gsLvOlvreiVi-ofMW-Vc17V0jkuNw=s88-c-k-c0x00ffffff-no-rj'),
(2, 'UCLCPoAvvcep5OMb0x3e5XmA', 'Anthem Lights', 'Welcome to the official Anthem Lights YouTube channel! On our channel, you\'ll find a range of covers, medleys, mashups of popular music as well as original music videos. Anthem Lights is a vocal group from Nashville, TN made up of singers Caleb Grimm, Chad Graham, Joey Stamper, and Spencer Kane. We are ALWAYS uploading brand new music and videos so make sure to subscribe and enable ALL notifications so you never miss a video! We do what we love because of you! We so appreciate your support thru commenting, liking and subscribing! For instant updates, check out our social media accounts below!\n\nhttps://www.kickstarter.com/projects/anthemlights/anthem-lights-new-original-christian-album', 'https://yt3.ggpht.com/6yEaLzxqR3FtxbSShP9KPcfftRpBv07nw3qvrK5elvCF3gsLvOlvreiVi-ofMW-Vc17V0jkuNw=s88-c-k-c0x00ffffff-no-rj');

-- --------------------------------------------------------

--
-- Table structure for table `youtube_channel_videos`
--

CREATE TABLE `youtube_channel_videos` (
  `id` int(11) NOT NULL,
  `channel_id` varchar(255) DEFAULT NULL,
  `video_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `video_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `youtube_channel_videos`
--

INSERT INTO `youtube_channel_videos` (`id`, `channel_id`, `video_id`, `title`, `description`, `thumbnail`, `video_link`) VALUES
(1, 'UCLCPoAvvcep5OMb0x3e5XmA', 'OJ49OAuNp-s', '&quot;It&#39;s all around me&quot; 🙌🏼', 'If you\'ve heard this song of ours called \"Surrounded\", leave a comment and let us know! ❤️✨ #worship #faith #newmusic ...', 'https://i.ytimg.com/vi/OJ49OAuNp-s/default.jpg', 'https://www.youtube.com/watch?v=OJ49OAuNp-s'),
(2, 'UCLCPoAvvcep5OMb0x3e5XmA', '4wCpNtRTNuk', 'Throwback to when we covered the Full House theme song', 'One of the best shows #90s #fullhouse #themesong #singers #funny.', 'https://i.ytimg.com/vi/4wCpNtRTNuk/default.jpg', 'https://www.youtube.com/watch?v=4wCpNtRTNuk'),
(3, 'UCLCPoAvvcep5OMb0x3e5XmA', '1Hhp_YADM9k', 'Crazy how these songs were 3 years ago', 'Do they feel 3 years old? #2021 #throwback #mashup #medley #singers.', 'https://i.ytimg.com/vi/1Hhp_YADM9k/default.jpg', 'https://www.youtube.com/watch?v=1Hhp_YADM9k'),
(4, 'UCLCPoAvvcep5OMb0x3e5XmA', 'wn4l2lYay0M', 'Remember these Maroon 5 songs?', 'Too many hits under a minute… #maroon5 #mashup #vocals #singers #2000s.', 'https://i.ytimg.com/vi/wn4l2lYay0M/default.jpg', 'https://www.youtube.com/watch?v=wn4l2lYay0M'),
(5, 'UCLCPoAvvcep5OMb0x3e5XmA', '-aB00htOUq0', 'Singing some of Aretha&#39;s most iconic songs!', 'Which one is your favorite? #iconic #singing #harmonies #arethafranklin #mashup #medley.', 'https://i.ytimg.com/vi/-aB00htOUq0/default.jpg', 'https://www.youtube.com/watch?v=-aB00htOUq0'),
(6, 'UCLCPoAvvcep5OMb0x3e5XmA', 'm3WIGrofNOs', 'My Reedemer Lives ✨', 'Happy Sunday #singers #worship #faith #christian #praise.', 'https://i.ytimg.com/vi/m3WIGrofNOs/default.jpg', 'https://www.youtube.com/watch?v=m3WIGrofNOs'),
(7, 'UCLCPoAvvcep5OMb0x3e5XmA', 'AvtRo8xmJtU', 'Do you remember these songs from the 90s?', 'This is from our 90s CCM mashup, you can find it on your streaming platforms. #christian #singers #vocals #90s #ccm.', 'https://i.ytimg.com/vi/AvtRo8xmJtU/default.jpg', 'https://www.youtube.com/watch?v=AvtRo8xmJtU'),
(8, 'UCLCPoAvvcep5OMb0x3e5XmA', 'Vx1wepcitJI', 'Jonas Brothers with 4 harmonies', '3 of their biggest hits #jonasbrothers #acoustic #vocals #singers #harmonies.', 'https://i.ytimg.com/vi/Vx1wepcitJI/default.jpg', 'https://www.youtube.com/watch?v=Vx1wepcitJI'),
(9, 'UCLCPoAvvcep5OMb0x3e5XmA', 'q3lmPqtHNcg', 'Blinding Lights with 4 harmonies', 'Remember this from 2020? #blindinglights #2020 #singers #vocals #harmonies.', 'https://i.ytimg.com/vi/q3lmPqtHNcg/default.jpg', 'https://www.youtube.com/watch?v=q3lmPqtHNcg'),
(10, 'UCLCPoAvvcep5OMb0x3e5XmA', 'Ka1pz8TSotE', 'We mashed up these two amazing worship songs ❤️', 'These worship songs are timeless #vocals #harmonies #singer #worship #christian.', 'https://i.ytimg.com/vi/Ka1pz8TSotE/default.jpg', 'https://www.youtube.com/watch?v=Ka1pz8TSotE'),
(11, 'UCLCPoAvvcep5OMb0x3e5XmA', 'NM9Jv0tK7YQ', 'Crazy how these songs are from 6 years ago...', 'Does this bring you back to 2018?! #2018 #throwback #vocals #harmonies #covers.', 'https://i.ytimg.com/vi/NM9Jv0tK7YQ/default.jpg', 'https://www.youtube.com/watch?v=NM9Jv0tK7YQ'),
(12, 'UCLCPoAvvcep5OMb0x3e5XmA', 'LrS8J06H6iw', 'This acapella version 👀', 'I need Your light #group #vocals #harmonies #acapella.', 'https://i.ytimg.com/vi/LrS8J06H6iw/default.jpg', 'https://www.youtube.com/watch?v=LrS8J06H6iw'),
(13, 'UCLCPoAvvcep5OMb0x3e5XmA', 'iZrUNWZKHPU', 'The reason behind our song 🙌🏼', 'If you resonate with this, go and go the song a listen on your streaming platforms. #godgavemefreedom #interview #meaning ...', 'https://i.ytimg.com/vi/iZrUNWZKHPU/default.jpg', 'https://www.youtube.com/watch?v=iZrUNWZKHPU'),
(14, 'UCLCPoAvvcep5OMb0x3e5XmA', 'rF2sG0cIclM', '“Your love will follow where I go” ✝️❤️ #originalsong #harmonies #whereverigo #singing', '', 'https://i.ytimg.com/vi/rF2sG0cIclM/default.jpg', 'https://www.youtube.com/watch?v=rF2sG0cIclM'),
(15, 'UCLCPoAvvcep5OMb0x3e5XmA', '6tp4--GbEOw', 'You move the mountains 🏔', 'Throwback to our version of this powerful worship song #christian #worship #vocals #harmonies #singer.', 'https://i.ytimg.com/vi/6tp4--GbEOw/default.jpg', 'https://www.youtube.com/watch?v=6tp4--GbEOw'),
(16, 'UCLCPoAvvcep5OMb0x3e5XmA', '3HVmgSIlJfQ', 'The Podcast: Chad Graham (BONUS CONTENT)', 'In this episode, the guys sit down with their very own Chad Graham, the founding member and high-soaring vocalist of Anthem ...', 'https://i.ytimg.com/vi/3HVmgSIlJfQ/default.jpg', 'https://www.youtube.com/watch?v=3HVmgSIlJfQ'),
(17, 'UCLCPoAvvcep5OMb0x3e5XmA', '_jPqilI_1dw', 'Enjoy our A Capella version of “Perfect”   #harmonies #acapella #perfect #singing', '', 'https://i.ytimg.com/vi/_jPqilI_1dw/default.jpg', 'https://www.youtube.com/watch?v=_jPqilI_1dw'),
(18, 'UCLCPoAvvcep5OMb0x3e5XmA', 'xrSLC2Q1ty0', 'Remembering our fallen heroes 🇺🇸', 'Remembering our heroes who have left us while fighting for our country. #memorialday #america #usa #singer #vocals.', 'https://i.ytimg.com/vi/xrSLC2Q1ty0/default.jpg', 'https://www.youtube.com/watch?v=xrSLC2Q1ty0'),
(19, 'UCLCPoAvvcep5OMb0x3e5XmA', 'OpTvJSbOeiA', '“Your love will follow where I go” ✝️❤️ #originalsong #harmonies #whereverigo #singing', '', 'https://i.ytimg.com/vi/OpTvJSbOeiA/default.jpg', 'https://www.youtube.com/watch?v=OpTvJSbOeiA'),
(20, 'UCLCPoAvvcep5OMb0x3e5XmA', '3ClZONIIQsM', 'Is Chad bad at accents?', 'You can watch the FULL episode of our podcast NOW on YouTube! Leave us a comment if you\'re going to watch the full ...', 'https://i.ytimg.com/vi/3ClZONIIQsM/default.jpg', 'https://www.youtube.com/watch?v=3ClZONIIQsM'),
(21, 'UCLCPoAvvcep5OMb0x3e5XmA', 'zNXAphapO5g', 'Putting our own spin on classic hymns 🎶', 'A mashup of classic hymns. #singing #vocals #group #hymn #worship.', 'https://i.ytimg.com/vi/zNXAphapO5g/default.jpg', 'https://www.youtube.com/watch?v=zNXAphapO5g'),
(22, 'UCLCPoAvvcep5OMb0x3e5XmA', 'rUP4rF9oQqM', 'Which one of us looks like the Disney fan?', 'Plot twist; its all of us. #disney #toystory #classic #cover #harmonies #singers.', 'https://i.ytimg.com/vi/rUP4rF9oQqM/default.jpg', 'https://www.youtube.com/watch?v=rUP4rF9oQqM'),
(23, 'UCLCPoAvvcep5OMb0x3e5XmA', 'JBw0rQPW_nk', 'You’re gonna want to grab some tissues for this one 🤧   #disney #coco #rememberme #emotional #harmo', 'How did Disney create so many good songs?! #disney #coco #rememberme #emotional #harmonies.', 'https://i.ytimg.com/vi/JBw0rQPW_nk/default.jpg', 'https://www.youtube.com/watch?v=JBw0rQPW_nk'),
(24, 'UCLCPoAvvcep5OMb0x3e5XmA', 'fQLQvnJDONY', 'it’s not like it was our fifth try or anything.. 💁🏻#hallelujah #shorts #vocals #harmonies #singer', '', 'https://i.ytimg.com/vi/fQLQvnJDONY/default.jpg', 'https://www.youtube.com/watch?v=fQLQvnJDONY'),
(25, 'UCLCPoAvvcep5OMb0x3e5XmA', 'cD1R9K0PDnc', 'Talking about our upcoming album with your support on our Kickstarter, YOU can be a part #shorts', 'Talking about our NEW upcoming album with your support on our Kickstarter, YOU can be a part of it click our link in bio to ...', 'https://i.ytimg.com/vi/cD1R9K0PDnc/default.jpg', 'https://www.youtube.com/watch?v=cD1R9K0PDnc'),
(26, 'UCLCPoAvvcep5OMb0x3e5XmA', 'Te0R9_4kSFM', 'June 26, 2023', '', 'https://i.ytimg.com/vi/Te0R9_4kSFM/default.jpg', 'https://www.youtube.com/watch?v=Te0R9_4kSFM'),
(27, 'UCLCPoAvvcep5OMb0x3e5XmA', 'ihMdh79CwtA', 'this was a fun performance to do 🤩🤩#amen #praise #worship #harmonies #shorts #christianmusic', '', 'https://i.ytimg.com/vi/ihMdh79CwtA/default.jpg', 'https://www.youtube.com/watch?v=ihMdh79CwtA'),
(28, 'UCLCPoAvvcep5OMb0x3e5XmA', 'kBjKGY9usmI', 'June 22, 2023', '', 'https://i.ytimg.com/vi/kBjKGY9usmI/default.jpg', 'https://www.youtube.com/watch?v=kBjKGY9usmI'),
(29, 'UCLCPoAvvcep5OMb0x3e5XmA', 'vRI_hACnOnM', 'what song would you like to see us sing next? Leave a comment 🙌🏼#shorts  #vocals #singer #yousay', '', 'https://i.ytimg.com/vi/vRI_hACnOnM/default.jpg', 'https://www.youtube.com/watch?v=vRI_hACnOnM'),
(30, 'UCLCPoAvvcep5OMb0x3e5XmA', 'cRvjGscKAio', 'what a wonderful name it is. 🙌🏼🙌🏼#praise #shorts  #emotional #buildup #vocals #harmonies', '', 'https://i.ytimg.com/vi/cRvjGscKAio/default.jpg', 'https://www.youtube.com/watch?v=cRvjGscKAio'),
(31, 'UCLCPoAvvcep5OMb0x3e5XmA', 'xUwiPSgAMqY', 'June 18, 2023', '', 'https://i.ytimg.com/vi/xUwiPSgAMqY/default.jpg', 'https://www.youtube.com/watch?v=xUwiPSgAMqY'),
(32, 'UCLCPoAvvcep5OMb0x3e5XmA', 'zUtKzuYG2mY', 'June 17, 2023', '', 'https://i.ytimg.com/vi/zUtKzuYG2mY/default.jpg', 'https://www.youtube.com/watch?v=zUtKzuYG2mY'),
(33, 'UCLCPoAvvcep5OMb0x3e5XmA', 'lIHa-er97-Q', 'what’s your favorite song right now?#goldenhour #shorts  #vocals #harmony #vocalrun', '', 'https://i.ytimg.com/vi/lIHa-er97-Q/default.jpg', 'https://www.youtube.com/watch?v=lIHa-er97-Q'),
(34, 'UCLCPoAvvcep5OMb0x3e5XmA', 'stuVx7ou458', 'it’s always like this.. 🎶#vocals #hallelujah #shorts  #harmonies #performance', '', 'https://i.ytimg.com/vi/stuVx7ou458/default.jpg', 'https://www.youtube.com/watch?v=stuVx7ou458'),
(35, 'UCLCPoAvvcep5OMb0x3e5XmA', 'DoDIueS0Axk', 'June 10, 2023', '', 'https://i.ytimg.com/vi/DoDIueS0Axk/default.jpg', 'https://www.youtube.com/watch?v=DoDIueS0Axk'),
(36, 'UCLCPoAvvcep5OMb0x3e5XmA', 'Yj9wkUy7HWQ', 'in honor of her Eras tour ❤️❤️#erastour #eras #taylor #swift #1975 #cover #shorts', '', 'https://i.ytimg.com/vi/Yj9wkUy7HWQ/default.jpg', 'https://www.youtube.com/watch?v=Yj9wkUy7HWQ'),
(37, 'UCLCPoAvvcep5OMb0x3e5XmA', 'Vwpk9D4J138', 'such a gorgeous song 😍😍#singers #cover #shorts #vocals #performance #edsheeran  #lovesong', '', 'https://i.ytimg.com/vi/Vwpk9D4J138/default.jpg', 'https://www.youtube.com/watch?v=Vwpk9D4J138'),
(38, 'UCLCPoAvvcep5OMb0x3e5XmA', 'IY2FszXd-e4', 'when you start a 4-piece singing group this song is one of the first that you learn 😂❤️#shorts', '', 'https://i.ytimg.com/vi/IY2FszXd-e4/default.jpg', 'https://www.youtube.com/watch?v=IY2FszXd-e4'),
(39, 'UCLCPoAvvcep5OMb0x3e5XmA', 'TQk0RDkzc6Y', 'We were definitely in our feels when we recorded this 🙏#mercyme #shorts  #cover #harmonies #praise', '', 'https://i.ytimg.com/vi/TQk0RDkzc6Y/default.jpg', 'https://www.youtube.com/watch?v=TQk0RDkzc6Y'),
(40, 'UCLCPoAvvcep5OMb0x3e5XmA', 'WLyUVu-so9I', 'share this one with your angel ❤️#50s #doowop #vocals #shorts  #singers', '', 'https://i.ytimg.com/vi/WLyUVu-so9I/default.jpg', 'https://www.youtube.com/watch?v=WLyUVu-so9I'),
(41, 'UCLCPoAvvcep5OMb0x3e5XmA', '6-vWnMEo4-k', 'June 4, 2023', '', 'https://i.ytimg.com/vi/6-vWnMEo4-k/default.jpg', 'https://www.youtube.com/watch?v=6-vWnMEo4-k'),
(42, 'UCLCPoAvvcep5OMb0x3e5XmA', 'v23XN9BAP_c', 'June 3, 2023', '', 'https://i.ytimg.com/vi/v23XN9BAP_c/default.jpg', 'https://www.youtube.com/watch?v=v23XN9BAP_c'),
(43, 'UCLCPoAvvcep5OMb0x3e5XmA', 'ubC-Auwsbds', 'what do you think of this cover/mash-up?#harmonies #cover #hymn #shorts  #mashup #fyp', '', 'https://i.ytimg.com/vi/ubC-Auwsbds/default.jpg', 'https://www.youtube.com/watch?v=ubC-Auwsbds'),
(44, 'UCLCPoAvvcep5OMb0x3e5XmA', 'rD11JLAikBU', 'June 1, 2023', '', 'https://i.ytimg.com/vi/rD11JLAikBU/default.jpg', 'https://www.youtube.com/watch?v=rD11JLAikBU'),
(45, 'UCLCPoAvvcep5OMb0x3e5XmA', 'D4kRsyT0x_4', 'are you going to see it?#littlemermaid #newmovie #vocals #harmonies #shorts  #ariel', '', 'https://i.ytimg.com/vi/D4kRsyT0x_4/default.jpg', 'https://www.youtube.com/watch?v=D4kRsyT0x_4'),
(46, 'UCLCPoAvvcep5OMb0x3e5XmA', 'nfNvbbwJneI', 'May 30, 2023', '', 'https://i.ytimg.com/vi/nfNvbbwJneI/default.jpg', 'https://www.youtube.com/watch?v=nfNvbbwJneI'),
(47, 'UCLCPoAvvcep5OMb0x3e5XmA', 'qi9tF0ToiYA', 'May 29, 2023', '', 'https://i.ytimg.com/vi/qi9tF0ToiYA/default.jpg', 'https://www.youtube.com/watch?v=qi9tF0ToiYA'),
(48, 'UCLCPoAvvcep5OMb0x3e5XmA', 'Jy_h1tw5-uU', 'May 28, 2023', '', 'https://i.ytimg.com/vi/Jy_h1tw5-uU/default.jpg', 'https://www.youtube.com/watch?v=Jy_h1tw5-uU'),
(49, 'UCLCPoAvvcep5OMb0x3e5XmA', 'Brz1casw1WI', 'May 27, 2023', '', 'https://i.ytimg.com/vi/Brz1casw1WI/default.jpg', 'https://www.youtube.com/watch?v=Brz1casw1WI'),
(50, 'UCLCPoAvvcep5OMb0x3e5XmA', 'vaIoYs99cFw', 'May 26, 2023', '', 'https://i.ytimg.com/vi/vaIoYs99cFw/default.jpg', 'https://www.youtube.com/watch?v=vaIoYs99cFw'),
(51, 'UCLCPoAvvcep5OMb0x3e5XmA', 's0vuRPf2_P0', 'May 25, 2023', '', 'https://i.ytimg.com/vi/s0vuRPf2_P0/default.jpg', 'https://www.youtube.com/watch?v=s0vuRPf2_P0'),
(52, 'UCLCPoAvvcep5OMb0x3e5XmA', 'h5AhwU0cbAk', 'May 24, 2023', '', 'https://i.ytimg.com/vi/h5AhwU0cbAk/default.jpg', 'https://www.youtube.com/watch?v=h5AhwU0cbAk'),
(53, 'UCLCPoAvvcep5OMb0x3e5XmA', '71IbIZ2eRbU', 'May 23, 2023', '', 'https://i.ytimg.com/vi/71IbIZ2eRbU/default.jpg', 'https://www.youtube.com/watch?v=71IbIZ2eRbU'),
(54, 'UCLCPoAvvcep5OMb0x3e5XmA', 'hIKo0clmDus', 'May 22, 2023', '', 'https://i.ytimg.com/vi/hIKo0clmDus/default.jpg', 'https://www.youtube.com/watch?v=hIKo0clmDus'),
(55, 'UCLCPoAvvcep5OMb0x3e5XmA', 'D9Eq_PvoYlU', 'May 21, 2023', '', 'https://i.ytimg.com/vi/D9Eq_PvoYlU/default.jpg', 'https://www.youtube.com/watch?v=D9Eq_PvoYlU'),
(56, 'UCLCPoAvvcep5OMb0x3e5XmA', 'n_cmCwc-JYU', 'May 19, 2023', '', 'https://i.ytimg.com/vi/n_cmCwc-JYU/default.jpg', 'https://www.youtube.com/watch?v=n_cmCwc-JYU'),
(57, 'UCLCPoAvvcep5OMb0x3e5XmA', 'a6E_rtssH3c', 'May 18, 2023', '', 'https://i.ytimg.com/vi/a6E_rtssH3c/default.jpg', 'https://www.youtube.com/watch?v=a6E_rtssH3c'),
(58, 'UCLCPoAvvcep5OMb0x3e5XmA', 'K30Y8Gk0Hk4', 'May 17, 2023', '', 'https://i.ytimg.com/vi/K30Y8Gk0Hk4/default.jpg', 'https://www.youtube.com/watch?v=K30Y8Gk0Hk4'),
(59, 'UCLCPoAvvcep5OMb0x3e5XmA', 'WmC3hnGfISQ', 'May 15, 2023', '', 'https://i.ytimg.com/vi/WmC3hnGfISQ/default.jpg', 'https://www.youtube.com/watch?v=WmC3hnGfISQ'),
(60, 'UCLCPoAvvcep5OMb0x3e5XmA', 'soJloj9o2jY', 'May 13, 2023', '', 'https://i.ytimg.com/vi/soJloj9o2jY/default.jpg', 'https://www.youtube.com/watch?v=soJloj9o2jY'),
(61, 'UCLCPoAvvcep5OMb0x3e5XmA', '2oAMoIY5-kQ', 'May 12, 2023', '', 'https://i.ytimg.com/vi/2oAMoIY5-kQ/default.jpg', 'https://www.youtube.com/watch?v=2oAMoIY5-kQ'),
(62, 'UCLCPoAvvcep5OMb0x3e5XmA', '0xc64feKGcY', 'May 11, 2023', '', 'https://i.ytimg.com/vi/0xc64feKGcY/default.jpg', 'https://www.youtube.com/watch?v=0xc64feKGcY'),
(63, 'UCLCPoAvvcep5OMb0x3e5XmA', 'KongC6uJe7Y', 'May 9, 2023', '', 'https://i.ytimg.com/vi/KongC6uJe7Y/default.jpg', 'https://www.youtube.com/watch?v=KongC6uJe7Y'),
(64, 'UCLCPoAvvcep5OMb0x3e5XmA', 'PXtjnsyjWIw', 'May 8, 2023', '', 'https://i.ytimg.com/vi/PXtjnsyjWIw/default.jpg', 'https://www.youtube.com/watch?v=PXtjnsyjWIw'),
(65, 'UCLCPoAvvcep5OMb0x3e5XmA', 'KB_ge9iWj3M', 'May 7, 2023', '', 'https://i.ytimg.com/vi/KB_ge9iWj3M/default.jpg', 'https://www.youtube.com/watch?v=KB_ge9iWj3M'),
(66, 'UCLCPoAvvcep5OMb0x3e5XmA', 'xvq9ecJcB6I', 'May 6, 2023', '', 'https://i.ytimg.com/vi/xvq9ecJcB6I/default.jpg', 'https://www.youtube.com/watch?v=xvq9ecJcB6I'),
(67, 'UCLCPoAvvcep5OMb0x3e5XmA', 'WHMMS1ZeejE', 'Our new single “God Gave Me Freedom” is available everywhere now! #newmusic #originalsong #harmony', '', 'https://i.ytimg.com/vi/WHMMS1ZeejE/default.jpg', 'https://www.youtube.com/watch?v=WHMMS1ZeejE'),
(68, 'UCLCPoAvvcep5OMb0x3e5XmA', 'pb3e6Rew3LY', 'May 4, 2023', '', 'https://i.ytimg.com/vi/pb3e6Rew3LY/default.jpg', 'https://www.youtube.com/watch?v=pb3e6Rew3LY'),
(69, 'UCLCPoAvvcep5OMb0x3e5XmA', 'xki7h90Yr-E', 'May 3, 2023', '', 'https://i.ytimg.com/vi/xki7h90Yr-E/default.jpg', 'https://www.youtube.com/watch?v=xki7h90Yr-E'),
(70, 'UCLCPoAvvcep5OMb0x3e5XmA', 'IM21jpYC6_o', 'this song is too good especially in the show 😍#strangerthings #katebush #shorts #originalsound', '', 'https://i.ytimg.com/vi/IM21jpYC6_o/default.jpg', 'https://www.youtube.com/watch?v=IM21jpYC6_o'),
(71, 'UCLCPoAvvcep5OMb0x3e5XmA', '7U1vmk84oh0', 'what’s your favorite ed sheeran song?#cover #edsheeran #thinkingoutloud #vocals #singer #harmonies', '', 'https://i.ytimg.com/vi/7U1vmk84oh0/default.jpg', 'https://www.youtube.com/watch?v=7U1vmk84oh0'),
(72, 'UCLCPoAvvcep5OMb0x3e5XmA', 'iFzSPzoJ0_Y', 'April 28, 2023', '', 'https://i.ytimg.com/vi/iFzSPzoJ0_Y/default.jpg', 'https://www.youtube.com/watch?v=iFzSPzoJ0_Y'),
(73, 'UCLCPoAvvcep5OMb0x3e5XmA', 'z_xvEo-c_kI', 'April 27, 2023', '', 'https://i.ytimg.com/vi/z_xvEo-c_kI/default.jpg', 'https://www.youtube.com/watch?v=z_xvEo-c_kI'),
(74, 'UCLCPoAvvcep5OMb0x3e5XmA', 'HY44FKcDWgE', 'April 25, 2023', '', 'https://i.ytimg.com/vi/HY44FKcDWgE/default.jpg', 'https://www.youtube.com/watch?v=HY44FKcDWgE'),
(75, 'UCLCPoAvvcep5OMb0x3e5XmA', 'igcuLzY7tBw', 'what’s your favorite worship song? Let us know in the comments 🙏❤️#shorts  #recklesslove', '', 'https://i.ytimg.com/vi/igcuLzY7tBw/default.jpg', 'https://www.youtube.com/watch?v=igcuLzY7tBw'),
(76, 'UCLCPoAvvcep5OMb0x3e5XmA', 'K8jN0ek-ZvM', 'Argue in the comments below what the best Ed Sheeran song is ❤️#edsheeran  #shorts', '', 'https://i.ytimg.com/vi/K8jN0ek-ZvM/default.jpg', 'https://www.youtube.com/watch?v=K8jN0ek-ZvM'),
(77, 'UCLCPoAvvcep5OMb0x3e5XmA', 'MRb29nz2nqw', 'April 22, 2023', '', 'https://i.ytimg.com/vi/MRb29nz2nqw/default.jpg', 'https://www.youtube.com/watch?v=MRb29nz2nqw'),
(78, 'UCLCPoAvvcep5OMb0x3e5XmA', 'gxUdVDhS6Uc', 'April 21, 2023', '', 'https://i.ytimg.com/vi/gxUdVDhS6Uc/default.jpg', 'https://www.youtube.com/watch?v=gxUdVDhS6Uc'),
(79, 'UCLCPoAvvcep5OMb0x3e5XmA', 'ZhXJbFm3b3w', 'April 21, 2023', '', 'https://i.ytimg.com/vi/ZhXJbFm3b3w/default.jpg', 'https://www.youtube.com/watch?v=ZhXJbFm3b3w'),
(80, 'UCLCPoAvvcep5OMb0x3e5XmA', 'Pp0FmWSzElI', 'April 20, 2023', '', 'https://i.ytimg.com/vi/Pp0FmWSzElI/default.jpg', 'https://www.youtube.com/watch?v=Pp0FmWSzElI'),
(81, 'UCLCPoAvvcep5OMb0x3e5XmA', '0AS1TYUkQkI', 'April 19, 2023', '', 'https://i.ytimg.com/vi/0AS1TYUkQkI/default.jpg', 'https://www.youtube.com/watch?v=0AS1TYUkQkI'),
(82, 'UCLCPoAvvcep5OMb0x3e5XmA', 'vskhrb9DpFU', 'April 18, 2023', '', 'https://i.ytimg.com/vi/vskhrb9DpFU/default.jpg', 'https://www.youtube.com/watch?v=vskhrb9DpFU'),
(83, 'UCLCPoAvvcep5OMb0x3e5XmA', '0AklrtMhfkI', 'April 17, 2023', '', 'https://i.ytimg.com/vi/0AklrtMhfkI/default.jpg', 'https://www.youtube.com/watch?v=0AklrtMhfkI'),
(84, 'UCLCPoAvvcep5OMb0x3e5XmA', 'ADBnz6W0ejk', 'Anyone else hyped over the Eras Tour? #antihero #coversong #tswift #shorts', '', 'https://i.ytimg.com/vi/ADBnz6W0ejk/default.jpg', 'https://www.youtube.com/watch?v=ADBnz6W0ejk'),
(85, 'UCLCPoAvvcep5OMb0x3e5XmA', 'tLrUmvLnIS0', 'Taking you all back to the 50s with this hit!#50s #shorts  #stillofthenight #coversongs #doowop', '', 'https://i.ytimg.com/vi/tLrUmvLnIS0/default.jpg', 'https://www.youtube.com/watch?v=tLrUmvLnIS0'),
(86, 'UCLCPoAvvcep5OMb0x3e5XmA', 'IvWNKL3EFtI', 'April 9, 2023', '', 'https://i.ytimg.com/vi/IvWNKL3EFtI/default.jpg', 'https://www.youtube.com/watch?v=IvWNKL3EFtI'),
(87, 'UCLCPoAvvcep5OMb0x3e5XmA', 'bgvL0BGjynI', 'Celebrating Easter with our Easter medley!  We hope you all enjoy  ❤️✝️🎶#eastermedley #shorts', '', 'https://i.ytimg.com/vi/bgvL0BGjynI/default.jpg', 'https://www.youtube.com/watch?v=bgvL0BGjynI'),
(88, 'UCLCPoAvvcep5OMb0x3e5XmA', 'aCRnsIsRO68', 'April 7, 2023', '', 'https://i.ytimg.com/vi/aCRnsIsRO68/default.jpg', 'https://www.youtube.com/watch?v=aCRnsIsRO68'),
(89, 'UCLCPoAvvcep5OMb0x3e5XmA', 'Q9p04S8FD3k', 'Remembering Him this weekend. The One who bled and died for us. #shorts  #anthemlights #harmonies', '', 'https://i.ytimg.com/vi/Q9p04S8FD3k/default.jpg', 'https://www.youtube.com/watch?v=Q9p04S8FD3k'),
(90, 'UCLCPoAvvcep5OMb0x3e5XmA', 'o_t4_E1qFsw', 'If you are feeling lost, remember God loves you and hears you#shorts  #reckelesslove #anthemlights', '', 'https://i.ytimg.com/vi/o_t4_E1qFsw/default.jpg', 'https://www.youtube.com/watch?v=o_t4_E1qFsw'),
(91, 'UCLCPoAvvcep5OMb0x3e5XmA', 'mduPX6ik-0U', 'Yes and Amen 🙌 Though the world is changing, God’s promises do not.#shorts  #worship #yesandamen', '', 'https://i.ytimg.com/vi/mduPX6ik-0U/default.jpg', 'https://www.youtube.com/watch?v=mduPX6ik-0U'),
(92, 'UCLCPoAvvcep5OMb0x3e5XmA', 'psChve3YCkY', 'Have you checked out our original song “Surrounded”?  Give it a listen 🎶❤️#originalsong #shorts', '', 'https://i.ytimg.com/vi/psChve3YCkY/default.jpg', 'https://www.youtube.com/watch?v=psChve3YCkY'),
(93, 'UCLCPoAvvcep5OMb0x3e5XmA', 'EddlGcsgr9g', 'It is so incredibly special to know an unconditional love like this one ✝️#shorts  #worship #easter', '', 'https://i.ytimg.com/vi/EddlGcsgr9g/default.jpg', 'https://www.youtube.com/watch?v=EddlGcsgr9g'),
(94, 'UCLCPoAvvcep5OMb0x3e5XmA', 'goqNKdDe234', 'Such a beautiful reminder of something greater than us ❤️#shorts #reminder #easterseason', '', 'https://i.ytimg.com/vi/goqNKdDe234/default.jpg', 'https://www.youtube.com/watch?v=goqNKdDe234'),
(95, 'UCLCPoAvvcep5OMb0x3e5XmA', 'L82Iwe6ZBSA', '🙌 🙌 🙌#easter #shorts #howgreatthouart #powerful', '', 'https://i.ytimg.com/vi/L82Iwe6ZBSA/default.jpg', 'https://www.youtube.com/watch?v=L82Iwe6ZBSA'),
(96, 'UCLCPoAvvcep5OMb0x3e5XmA', 'dU84n8hiito', 'everything is better when you&#39;re with that special someone #shorts #originalsongs #nashvillemusician', '', 'https://i.ytimg.com/vi/dU84n8hiito/default.jpg', 'https://www.youtube.com/watch?v=dU84n8hiito'),
(97, 'UCLCPoAvvcep5OMb0x3e5XmA', 'HEucW_W_fNk', 'A little boost of confidence for you this Monday! #demilovato #shorts #harmonies #nashvillemusicians', '', 'https://i.ytimg.com/vi/HEucW_W_fNk/default.jpg', 'https://www.youtube.com/watch?v=HEucW_W_fNk'),
(98, 'UCLCPoAvvcep5OMb0x3e5XmA', 'y_ccVd7CL3g', 'This song is a reminder that He is strong and lifts us up ❤️ #nashvillemusicians #shorts', '', 'https://i.ytimg.com/vi/y_ccVd7CL3g/default.jpg', 'https://www.youtube.com/watch?v=y_ccVd7CL3g'),
(99, 'UCLCPoAvvcep5OMb0x3e5XmA', 'WB1canvTQNE', 'Such an iconic song 🚀  #eltonjohn #iconic #coversongs #harmonies #shorts', '', 'https://i.ytimg.com/vi/WB1canvTQNE/default.jpg', 'https://www.youtube.com/watch?v=WB1canvTQNE'),
(100, 'UCLCPoAvvcep5OMb0x3e5XmA', 'ZRKYM0WIyxY', '“I’m just a fool, a fool in love with you”#shorts  #hitsofthe50s #coversongs #nashvillemusicians', '', 'https://i.ytimg.com/vi/ZRKYM0WIyxY/default.jpg', 'https://www.youtube.com/watch?v=ZRKYM0WIyxY'),
(101, 'UCLCPoAvvcep5OMb0x3e5XmA', '-vNlzVJqBQc', 'It’s us - hi, we’re the problem 💁🏻 #taylor #swift #cover #vocals #eras', '', 'https://i.ytimg.com/vi/-vNlzVJqBQc/default.jpg', 'https://www.youtube.com/watch?v=-vNlzVJqBQc'),
(102, 'UCLCPoAvvcep5OMb0x3e5XmA', 'wkN1b3F5MYE', 'Putting our own spoin on classic hymns 🎶', 'We hope this gave you some joy today. ❤️ #singing #vocals #harmony #originalsound #praise #hymns.', 'https://i.ytimg.com/vi/wkN1b3F5MYE/default.jpg', 'https://www.youtube.com/watch?v=wkN1b3F5MYE'),
(103, 'UCLCPoAvvcep5OMb0x3e5XmA', 'yjp5F2XcH2E', 'The way it resolves in the end 😍', 'Such a beautifully written song - and we love this acapella version ❤️ #worship #singer #solo #acapella #fyp #originalsound.', 'https://i.ytimg.com/vi/yjp5F2XcH2E/default.jpg', 'https://www.youtube.com/watch?v=yjp5F2XcH2E'),
(104, 'UCLCPoAvvcep5OMb0x3e5XmA', 'oq9cZOT8sHU', 'Defying Gravity', 'We\'re excited for the new Wicked movie later this year! #musical #harmonies #movie #singers.', 'https://i.ytimg.com/vi/oq9cZOT8sHU/default.jpg', 'https://www.youtube.com/watch?v=oq9cZOT8sHU'),
(105, 'UCLCPoAvvcep5OMb0x3e5XmA', 'CxBAlk9dI9w', 'Amazing Grace ❤️', 'This hymn stands the test of time #singer #vocals #harmonies #acapella #grace.', 'https://i.ytimg.com/vi/CxBAlk9dI9w/default.jpg', 'https://www.youtube.com/watch?v=CxBAlk9dI9w'),
(106, 'UCLCPoAvvcep5OMb0x3e5XmA', 'YWuBS-hAFFU', 'Love doing this one 100% acapella 🙌🏼', 'You can hear the full version on your streaming platforms! #edsheeran #cover #duet #singing #vocals #harmonies.', 'https://i.ytimg.com/vi/YWuBS-hAFFU/default.jpg', 'https://www.youtube.com/watch?v=YWuBS-hAFFU'),
(107, 'UCLCPoAvvcep5OMb0x3e5XmA', 'cm9n5a_5KKo', 'Hallelujah but with 4 vocals', 'One of the most beautiful songs ever! #acapella #classic #vocals #harmonies #singers.', 'https://i.ytimg.com/vi/cm9n5a_5KKo/default.jpg', 'https://www.youtube.com/watch?v=cm9n5a_5KKo'),
(108, 'UCLCPoAvvcep5OMb0x3e5XmA', 'VPoHAtycbIA', 'Our version of &#39;Stupid Deep&#39;', 'Coming up with the extra harmonies in this was fun #vocals #singer #harmonies #acapella #anthemlights.', 'https://i.ytimg.com/vi/VPoHAtycbIA/default.jpg', 'https://www.youtube.com/watch?v=VPoHAtycbIA'),
(109, 'UCLCPoAvvcep5OMb0x3e5XmA', 'KJDlxxteICE', 'Our mashup of 90s CCM', 'So many CCM hits in here! The full medley is on all streaming platforms. #worship #ccm #vocals #medley #mashup.', 'https://i.ytimg.com/vi/KJDlxxteICE/default.jpg', 'https://www.youtube.com/watch?v=KJDlxxteICE'),
(110, 'UCLCPoAvvcep5OMb0x3e5XmA', 'N1MWwOd64Es', 'Running Up That Hill into…', 'Running Up That Hill x Golden Hour ☀️ #acapella #arrangement #cover #jvke.', 'https://i.ytimg.com/vi/N1MWwOd64Es/default.jpg', 'https://www.youtube.com/watch?v=N1MWwOd64Es'),
(111, 'UCLCPoAvvcep5OMb0x3e5XmA', 'uBVQuOIVsmg', 'The acapella version of this song 🙌🏼', 'Do you prefer the acapella or original version? #harmonies #acapella #perfect #vocals #singers #group.', 'https://i.ytimg.com/vi/uBVQuOIVsmg/default.jpg', 'https://www.youtube.com/watch?v=uBVQuOIVsmg'),
(112, 'UCLCPoAvvcep5OMb0x3e5XmA', 'LoaeUsP06ZU', 'You are my sunshine ☀️', 'Hear \'You Are My Sunshine\' on your streaming platforms. ☀️ #acapella #vocals #group #singing #harmonies.', 'https://i.ytimg.com/vi/LoaeUsP06ZU/default.jpg', 'https://www.youtube.com/watch?v=LoaeUsP06ZU'),
(113, 'UCLCPoAvvcep5OMb0x3e5XmA', 'Bmc2RVpT3G0', 'our version of Dynamite is a little different 🧨', 'One of the best songs of 2020 #bts #cover #vocals #harmonies #group #dynamite.', 'https://i.ytimg.com/vi/Bmc2RVpT3G0/default.jpg', 'https://www.youtube.com/watch?v=Bmc2RVpT3G0'),
(114, 'UCLCPoAvvcep5OMb0x3e5XmA', 'E67zyjFvT9c', 'When Chris Kirkpatrick shouted us out 😱', 'We still can\'t believe he shouted us out #nsync #medley #90s #singers #pop #vocals.', 'https://i.ytimg.com/vi/E67zyjFvT9c/default.jpg', 'https://www.youtube.com/watch?v=E67zyjFvT9c'),
(115, 'UCLCPoAvvcep5OMb0x3e5XmA', 'FhOtmBswNME', 'Throwback to this song of ours ❤️', 'Throwback thursday to our song \"Better Together\" on all your streaming platforms. #original #vocals #harmonies #lovesong ...', 'https://i.ytimg.com/vi/FhOtmBswNME/default.jpg', 'https://www.youtube.com/watch?v=FhOtmBswNME'),
(116, 'UCLCPoAvvcep5OMb0x3e5XmA', 'RvF4daa0ENk', 'These lyrics 😭', 'These lyrics mean a lot to us. ✝️ Listen to the full song on your streaming platforms! “Wherever I Go” #vocals #harmonies ...', 'https://i.ytimg.com/vi/RvF4daa0ENk/default.jpg', 'https://www.youtube.com/watch?v=RvF4daa0ENk'),
(117, 'UCLCPoAvvcep5OMb0x3e5XmA', 'jxwsa1h1_bU', 'Mashing up these worship songs 🤯', '\"If the stars were made to worship, so will I\" Hear the full song on your streaming platform ❤️ #worship #sowilli #indescribable ...', 'https://i.ytimg.com/vi/jxwsa1h1_bU/default.jpg', 'https://www.youtube.com/watch?v=jxwsa1h1_bU'),
(118, 'UCLCPoAvvcep5OMb0x3e5XmA', 'A-30PyEvxLc', 'Throwback to this mashup 🔥', 'One of our favorite renditions we\'ve done! #vocals #singers #group #harmonies #band.', 'https://i.ytimg.com/vi/A-30PyEvxLc/default.jpg', 'https://www.youtube.com/watch?v=A-30PyEvxLc'),
(119, 'UCLCPoAvvcep5OMb0x3e5XmA', 'jW7YebRYblU', 'Hallelujah ❤️', 'What song should we do next? #harmonies #vocals #singer #hallelujah.', 'https://i.ytimg.com/vi/jW7YebRYblU/default.jpg', 'https://www.youtube.com/watch?v=jW7YebRYblU'),
(120, 'UCLCPoAvvcep5OMb0x3e5XmA', 'zdwGBpzmpi8', 'Did you see the new Wicked trailer?', 'You can hear the full medley we made on your streaming platforms called \"Wicked Medley\" #wicked #musical #mashup ...', 'https://i.ytimg.com/vi/zdwGBpzmpi8/default.jpg', 'https://www.youtube.com/watch?v=zdwGBpzmpi8'),
(121, 'UCLCPoAvvcep5OMb0x3e5XmA', 'I-obSvcsqVg', 'You Are My Sunshine but we made it emotional?!', 'You Are My Sunshine but we made it emotional?! #acapella #singer #vocals #harmonies #rearranged.', 'https://i.ytimg.com/vi/I-obSvcsqVg/default.jpg', 'https://www.youtube.com/watch?v=I-obSvcsqVg'),
(122, 'UCLCPoAvvcep5OMb0x3e5XmA', '2MszNFU3yfA', 'Showcasing Chad&#39;s accent talents 😂', 'Showcasing Chad\'s accent talents #anthemlights #conversation #accents #funny #podcast.', 'https://i.ytimg.com/vi/2MszNFU3yfA/default.jpg', 'https://www.youtube.com/watch?v=2MszNFU3yfA'),
(123, 'UCLCPoAvvcep5OMb0x3e5XmA', 'naL7s0mGiMA', 'We mashed up these two amazing worship songs ❤️', 'These worship songs are timeless #vocals #harmonies #singer #worship #christian.', 'https://i.ytimg.com/vi/naL7s0mGiMA/default.jpg', 'https://www.youtube.com/watch?v=naL7s0mGiMA'),
(124, 'UCLCPoAvvcep5OMb0x3e5XmA', 'EommQYMl4Dg', 'Should we', 'Should we start a podcast? Leave a comment and let us know! #podcast #anthemlights #conversation #funny.', 'https://i.ytimg.com/vi/EommQYMl4Dg/default.jpg', 'https://www.youtube.com/watch?v=EommQYMl4Dg'),
(125, 'UCLCPoAvvcep5OMb0x3e5XmA', 'nnnEsVQxUIs', 'Share this with someone you feel this way about ❤️', '\"Sweeter Than Peaches\" on all your streaming platforms #originalmusic #singer #vocals #harmonies #lovesong.', 'https://i.ytimg.com/vi/nnnEsVQxUIs/default.jpg', 'https://www.youtube.com/watch?v=nnnEsVQxUIs'),
(126, 'UCLCPoAvvcep5OMb0x3e5XmA', '5F-zNcwUBFU', 'Wherever I Go 🙌🏻', 'Your love will follow wherever I go ✨ #original #singer #vocals #worship.', 'https://i.ytimg.com/vi/5F-zNcwUBFU/default.jpg', 'https://www.youtube.com/watch?v=5F-zNcwUBFU'),
(127, 'UCLCPoAvvcep5OMb0x3e5XmA', 'aH0Cq6j9yZc', 'You placed the stars in the sky ✨', 'You placed the stars in the sky ✨ #singer #singers #worship #christian.', 'https://i.ytimg.com/vi/aH0Cq6j9yZc/default.jpg', 'https://www.youtube.com/watch?v=aH0Cq6j9yZc'),
(128, 'UCLCPoAvvcep5OMb0x3e5XmA', 'bGRyVgxtoXk', 'We love this version of &quot;I Can Only Imagine&quot;', 'This song hits every time. #piano #singer #vocals #harmonies #singing.', 'https://i.ytimg.com/vi/bGRyVgxtoXk/default.jpg', 'https://www.youtube.com/watch?v=bGRyVgxtoXk'),
(129, 'UCLCPoAvvcep5OMb0x3e5XmA', 'tiXyNCHppgk', 'Amazing Grace ❤️', 'His Grace will lead me home #singer #vocals #harmonies #acapella #grace.', 'https://i.ytimg.com/vi/tiXyNCHppgk/default.jpg', 'https://www.youtube.com/watch?v=tiXyNCHppgk'),
(130, 'UCLCPoAvvcep5OMb0x3e5XmA', 'HQCjXWjNJ2I', 'I&#39;ll never know how much it cost ❤️', 'I\'ll never know how much it cost ❤️ #singers #vocals #harmonies #worship #christian.', 'https://i.ytimg.com/vi/HQCjXWjNJ2I/default.jpg', 'https://www.youtube.com/watch?v=HQCjXWjNJ2I'),
(131, 'UCLCPoAvvcep5OMb0x3e5XmA', '0OH7GDZodZo', 'Would you EVER have expected these two songs together?', 'We found out these CAN go together #mashup #medley #vocals #harmonies #singers #friends.', 'https://i.ytimg.com/vi/0OH7GDZodZo/default.jpg', 'https://www.youtube.com/watch?v=0OH7GDZodZo'),
(132, 'UCLCPoAvvcep5OMb0x3e5XmA', 'DfvrVRGTWJk', 'Search &quot;Wherever I Go&quot; on your streaming apps if you liked this 🙌🏼 #originalsong #original #music', '', 'https://i.ytimg.com/vi/DfvrVRGTWJk/default.jpg', 'https://www.youtube.com/watch?v=DfvrVRGTWJk'),
(133, 'UCLCPoAvvcep5OMb0x3e5XmA', 'v8P5CjPmias', 'This version of Bohemian Rhapsody 😱', 'These harmonies blend so nicely #vocals #harmonies #singers #queen.', 'https://i.ytimg.com/vi/v8P5CjPmias/default.jpg', 'https://www.youtube.com/watch?v=v8P5CjPmias'),
(134, 'UCLCPoAvvcep5OMb0x3e5XmA', 'N5mzBK2Bans', 'the lyrics in this song are so strong ❤️ #piano #vocals #harmonies #emotional', '', 'https://i.ytimg.com/vi/N5mzBK2Bans/default.jpg', 'https://www.youtube.com/watch?v=N5mzBK2Bans'),
(135, 'UCLCPoAvvcep5OMb0x3e5XmA', '3jf617POez8', 'December 13, 2023', '', 'https://i.ytimg.com/vi/3jf617POez8/default.jpg', 'https://www.youtube.com/watch?v=3jf617POez8'),
(136, 'UCLCPoAvvcep5OMb0x3e5XmA', 'yYp0Khsj4qo', 'December 9, 2023', '', 'https://i.ytimg.com/vi/yYp0Khsj4qo/default.jpg', 'https://www.youtube.com/watch?v=yYp0Khsj4qo'),
(137, 'UCLCPoAvvcep5OMb0x3e5XmA', '44hqwskGA4Y', 'December 8, 2023', '', 'https://i.ytimg.com/vi/44hqwskGA4Y/default.jpg', 'https://www.youtube.com/watch?v=44hqwskGA4Y'),
(138, 'UCLCPoAvvcep5OMb0x3e5XmA', 'ExvdSqCN-Lo', 'December 7, 2023', '', 'https://i.ytimg.com/vi/ExvdSqCN-Lo/default.jpg', 'https://www.youtube.com/watch?v=ExvdSqCN-Lo'),
(139, 'UCLCPoAvvcep5OMb0x3e5XmA', '23BzJ1rOGho', 'December 4, 2023', '', 'https://i.ytimg.com/vi/23BzJ1rOGho/default.jpg', 'https://www.youtube.com/watch?v=23BzJ1rOGho'),
(140, 'UCLCPoAvvcep5OMb0x3e5XmA', 'TEB29rMzLS4', 'December 1, 2023', '', 'https://i.ytimg.com/vi/TEB29rMzLS4/default.jpg', 'https://www.youtube.com/watch?v=TEB29rMzLS4'),
(141, 'UCLCPoAvvcep5OMb0x3e5XmA', '39nKDln7SnM', 'November 29, 2023', '', 'https://i.ytimg.com/vi/39nKDln7SnM/default.jpg', 'https://www.youtube.com/watch?v=39nKDln7SnM'),
(142, 'UCLCPoAvvcep5OMb0x3e5XmA', 'HfChAtTpZyg', 'November 26, 2023', '', 'https://i.ytimg.com/vi/HfChAtTpZyg/default.jpg', 'https://www.youtube.com/watch?v=HfChAtTpZyg'),
(143, 'UCLCPoAvvcep5OMb0x3e5XmA', 'jUwHvXv-KaE', 'November 16, 2023', '', 'https://i.ytimg.com/vi/jUwHvXv-KaE/default.jpg', 'https://www.youtube.com/watch?v=jUwHvXv-KaE'),
(144, 'UCLCPoAvvcep5OMb0x3e5XmA', 'oeu9bSNojVo', 'November 11, 2023', '', 'https://i.ytimg.com/vi/oeu9bSNojVo/default.jpg', 'https://www.youtube.com/watch?v=oeu9bSNojVo'),
(145, 'UCLCPoAvvcep5OMb0x3e5XmA', 'eHnbwJOzR4E', 'May 20, 2023', '', 'https://i.ytimg.com/vi/eHnbwJOzR4E/default.jpg', 'https://www.youtube.com/watch?v=eHnbwJOzR4E'),
(146, 'UCLCPoAvvcep5OMb0x3e5XmA', 'GIUphNKS9EM', 'May 10, 2023', '', 'https://i.ytimg.com/vi/GIUphNKS9EM/default.jpg', 'https://www.youtube.com/watch?v=GIUphNKS9EM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `recent_searches`
--
ALTER TABLE `recent_searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `youtube_channels`
--
ALTER TABLE `youtube_channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `youtube_channel_videos`
--
ALTER TABLE `youtube_channel_videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `recent_searches`
--
ALTER TABLE `recent_searches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `youtube_channels`
--
ALTER TABLE `youtube_channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `youtube_channel_videos`
--
ALTER TABLE `youtube_channel_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
