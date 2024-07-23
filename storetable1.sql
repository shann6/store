-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-07-22 16:56:02
-- 伺服器版本： 8.4.0
-- PHP 版本： 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `storestable`
--

-- --------------------------------------------------------

--
-- 資料表結構 `storetable1`
--

CREATE TABLE `storetable1` (
  `s_id` int NOT NULL,
  `s_name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `s_pic` blob,
  `s_address` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `open_time` time DEFAULT NULL,
  `close_time` time DEFAULT NULL,
  `s_phone` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `s_city` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `s_area` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `s_table` int DEFAULT NULL,
  `s_people` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 傾印資料表的資料 `storetable1`
--

INSERT INTO `storetable1` (`s_id`, `s_name`, `s_pic`, `s_address`, `open_time`, `close_time`, `s_phone`, `s_city`, `s_area`, `s_table`, `s_people`) VALUES
(1, '台北信義ATT門市', NULL, '松壽路12號5樓', '11:00:00', '22:00:00', '02-77378707', '台北市', '信義區', 100, 70),
(2, '台北JR東日本大飯店門市', '', '南京東路三段133號-1', '11:30:00', '21:00:00', '02-25458686', '台北市', '中山區', 80, 50),
(3, '台北中山旗艦門市', '', '南京西路65號', '07:00:00', '22:00:00', '02-25550121', '台北市', '大同區', 70, 40),
(4, '新北板橋門市', '', '文化路一段309之37號1樓', '07:00:00', '22:00:00', '02-89696655', '新北市', '板橋區', 65, 45),
(5, '新北南勢角門市', '', '捷運路63號', '07:00:00', '21:00:00', '02-29425922', '新北市', '中和區', 60, 30),
(6, '新竹龍享門市', '', '自強南路36號1F', '09:00:00', '22:00:00', '03-6670663', '新竹縣', '竹北市', 30, 20),
(7, '台中崇德門市', '', '崇德路三段207號', '08:30:00', '21:30:00', '04-24220302', '台中市', '北屯區', 30, 20),
(8, '台南永華門市', '', '永華路二段705號', '09:00:00', '21:30:00', '06-2956980', '台南市', '安平區', 30, 20),
(9, '高雄台鋁門市', '', '忠勤路8號 ', '10:00:00', '21:30:00', '07-5369929', '高雄市', '前鎮區', 50, 30),
(10, '高雄巨蛋門市', '', '文忠路2號', '09:00:00', '21:30:00', '07-5525885', '高雄市', '鼓山區', 85, 65),
(11, '高雄文山門市', '', '文衡路489號', '09:00:00', '21:30:00', '07-7678997', '高雄市', '鳳山區', 60, 40),
(12, '高雄高美門市', '', '美術東二路432號', '09:00:00', '21:30:00', '07-5223238', '高雄市', '鼓山區', 70, 50),
(13, '高雄岡山直營門市', '', '捷安路1巷2號3樓', '15:00:00', '23:00:00', '07-6251171', '高雄市', '岡山區', 70, 70);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `storetable1`
--
ALTER TABLE `storetable1`
  ADD PRIMARY KEY (`s_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `storetable1`
--
ALTER TABLE `storetable1`
  MODIFY `s_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
