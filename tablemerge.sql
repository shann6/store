-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-07-23 14:37:19
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
-- 資料表結構 `tablemerge`
--

CREATE TABLE `tablemerge` (
  `s_id` int DEFAULT NULL,
  `service_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- 傾印資料表的資料 `tablemerge`
--

INSERT INTO `tablemerge` (`s_id`, `service_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 5),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(3, 1),
(3, 2),
(3, 3),
(3, 5),
(4, 1),
(4, 5),
(5, 1),
(5, 5),
(6, 6),
(7, 6),
(8, 2),
(9, 1),
(9, 3),
(9, 5),
(10, 1),
(10, 5),
(11, 1),
(11, 5),
(12, 1),
(12, 3),
(12, 5),
(13, 1),
(13, 3),
(13, 4),
(13, 5);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `tablemerge`
--
ALTER TABLE `tablemerge`
  ADD KEY `service_id` (`service_id`),
  ADD KEY `s_id` (`s_id`);

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `tablemerge`
--
ALTER TABLE `tablemerge`
  ADD CONSTRAINT `tablemerge_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `service1` (`service_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tablemerge_ibfk_2` FOREIGN KEY (`s_id`) REFERENCES `storetable1` (`s_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
