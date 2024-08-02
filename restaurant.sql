-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2024 at 08:23 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbcontact`
--

CREATE TABLE `tbcontact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbcontact`
--

INSERT INTO `tbcontact` (`id`, `name`, `phone`, `status`, `image`) VALUES
(21, 'Oppo', '548645', 1, '1670204942235.jpg'),
(22, 'Emulator', '55858585', 1, '1670205197340.jpg'),
(23, 'Tou', '8787878', 1, '1670208831618.jpg'),
(24, 'Ok', '5454545', 1, '1670235241872.jpg'),
(25, 'Tt', '54646', 1, '1670235518577.jpg'),
(26, 'tttt', '8787878', 1, '1670819744648.jpg'),
(27, 'Tna', '6663629', 1, '1682414986456.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbemployee`
--

CREATE TABLE `tbemployee` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `country` varchar(100) NOT NULL,
  `position` varchar(50) NOT NULL,
  `wage` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbemployee`
--

INSERT INTO `tbemployee` (`id`, `name`, `age`, `country`, `position`, `wage`) VALUES
(1, 'Test 1', 15, 'Vientiane', 'Admin', 2500),
(2, 'emp 1', 19, 'Vientaine', 'Saler', 3000),
(3, 'Master K', 35, 'Thailand', 'Admin', 1000),
(4, 'Mr toulao', 25, 'Laos', 'Project Manager', 4500);

-- --------------------------------------------------------

--
-- Table structure for table `tbimage`
--

CREATE TABLE `tbimage` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbimage`
--

INSERT INTO `tbimage` (`id`, `image`) VALUES
(2, '1670820040702.jpg'),
(3, '1670820503591.jpg'),
(4, '1670820509296.jpg'),
(5, '1670820513789.jpg'),
(6, '1670820518417.jpg'),
(7, '1670820522281.jpg'),
(8, '1670820526877.jpg'),
(9, '1670820530161.jpg'),
(10, '1670820534033.jpg'),
(11, '1670820540190.jpg'),
(12, '1670820585128.jpg'),
(13, '1670820598193.jpg'),
(14, '1670820608598.jpg'),
(15, '1670820622298.jpg'),
(16, '1670820634907.jpg'),
(17, '1670820643746.jpg'),
(18, '1670820651711.jpg'),
(19, '1670820668500.jpg'),
(20, '1670820707345.jpg'),
(21, '1670820720814.jpg'),
(22, '1670820735233.jpg'),
(23, '1670820760862.jpg'),
(24, '1670820845686.jpg'),
(25, '1670820856577.jpg'),
(26, '1670820869444.jpg'),
(27, '1670820890298.jpg'),
(28, '1670820915903.jpg'),
(29, '1670820957313.jpg'),
(30, '1670821008278.jpg'),
(31, '1670821018093.jpg'),
(32, '1670821030801.jpg'),
(33, '1670821050966.jpg'),
(34, '1670821077491.jpg'),
(35, '1670821306461.jpg'),
(36, '1670821310215.jpg'),
(37, '1670821314367.jpg'),
(38, '1670821317496.jpg'),
(39, '1670821323602.jpg'),
(40, '1670821330183.jpg'),
(41, '1670821333664.jpg'),
(42, '1670821353735.jpg'),
(43, '1670821357630.jpg'),
(44, '1670821359582.jpg'),
(45, '1670821363409.jpg'),
(46, '1670821442022.jpg'),
(47, '1670821450388.jpg'),
(48, '1670821463820.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblorder`
--

CREATE TABLE `tblorder` (
  `or_id` int(11) NOT NULL,
  `or_date` datetime NOT NULL,
  `or_qty` int(11) NOT NULL,
  `or_amount` double NOT NULL,
  `or_status` tinyint(4) NOT NULL,
  `table_id` int(11) NOT NULL,
  `receives` int(255) NOT NULL,
  `returns` int(255) NOT NULL,
  `payment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblorder`
--

INSERT INTO `tblorder` (`or_id`, `or_date`, `or_qty`, `or_amount`, `or_status`, `table_id`, `receives`, `returns`, `payment`) VALUES
(480, '2024-07-31 12:17:16', 1, 20000, 0, 102, 100000, -80000, 'cash'),
(481, '2024-07-31 13:28:08', 1, 20000, 0, 128, 100000, -80000, 'cash'),
(483, '2024-07-31 13:28:08', 2, 11000, 0, 102, 100000, -89000, 'cash'),
(484, '2024-07-31 13:28:08', 2, 11000, 0, 103, 100000, -89000, 'cash'),
(485, '2024-07-31 13:28:08', 1, 10000, 0, 103, 100000, -90000, 'cash'),
(486, '2024-07-31 13:28:08', 6, 66000, 0, 101, 500000, -434000, 'transfer');

-- --------------------------------------------------------

--
-- Table structure for table `tbmessage`
--

CREATE TABLE `tbmessage` (
  `id` int(11) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `path` varchar(500) DEFAULT NULL,
  `sourceId` varchar(100) NOT NULL,
  `targetId` varchar(100) NOT NULL,
  `roomId` varchar(100) NOT NULL,
  `createAt` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbmessage`
--

INSERT INTO `tbmessage` (`id`, `message`, `type`, `path`, `sourceId`, `targetId`, `roomId`, `createAt`) VALUES
(539, 'h', 'source', '', '23', '22', '2322', 1670211474523),
(540, 'ok', 'source', '', '23', '22', '2322', 1670211476423),
(541, 'nnn', 'source', '', '22', '23', '2322', 1670211484973),
(542, 'fh', 'source', '', '23', '22', '2322', 1670212938118),
(543, 'ff', 'source', '', '22', '23', '2322', 1670213011965),
(544, 'ok', 'source', '', '23', '22', '2322', 1670213017609),
(545, 'ysh', 'source', '', '23', '22', '2322', 1670213018973),
(546, 'hdj', 'source', '', '23', '22', '2322', 1670213019790),
(547, 'vdhe', 'source', '', '23', '22', '2322', 1670213020691),
(548, 'bdjs', 'source', '', '23', '22', '2322', 1670213021724),
(549, 'jlk', 'source', '', '22', '23', '2322', 1670213056813),
(550, 'hhh', 'source', '', '23', '22', '2322', 1670213060941),
(551, 'He bqk', 'source', '', '25', '22', '2522', 1670290885576),
(552, 'Tou', 'source', '', '25', '23', '2523', 1670290908574),
(553, 'are you ok', 'source', '', '25', '23', '2523', 1670290916461);

-- --------------------------------------------------------

--
-- Table structure for table `tborderdetail`
--

CREATE TABLE `tborderdetail` (
  `ord_id` int(11) NOT NULL,
  `or_id` int(11) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `amount` double NOT NULL,
  `ord_date` datetime NOT NULL,
  `table_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tborderdetail`
--

INSERT INTO `tborderdetail` (`ord_id`, `or_id`, `product_id`, `qty`, `amount`, `ord_date`, `table_id`) VALUES
(1639, 480, '1', 1, 20000, '2024-07-31 12:17:16', 102),
(1640, 480, '2', 1, 10000, '2024-07-31 12:17:16', 102),
(1641, 481, '1', 1, 20000, '2024-07-31 13:28:08', 128),
(1642, 481, '2', 1, 10000, '2024-07-31 13:28:08', 128),
(1643, 481, '3', 2, 2000, '2024-07-31 13:28:08', 128),
(1644, 481, '4', 1, 15000, '2024-07-31 13:28:08', 128),
(1649, 483, '2', 1, 10000, '2024-07-31 13:28:08', 102),
(1650, 483, '3', 1, 1000, '2024-07-31 13:28:08', 102),
(1652, 484, '2', 1, 10000, '2024-07-31 13:28:08', 103),
(1653, 484, '3', 1, 1000, '2024-07-31 13:28:08', 103),
(1655, 485, '2', 1, 10000, '2024-07-31 13:28:08', 103),
(1656, 485, '3', 1, 1000, '2024-07-31 13:28:08', 103),
(1657, 485, '4', 1, 15000, '2024-07-31 13:28:08', 103),
(1659, 486, '2', 2, 20000, '2024-07-31 13:28:08', 101),
(1660, 486, '4', 1, 15000, '2024-07-31 13:28:08', 101),
(1661, 486, '8', 1, 15000, '2024-07-31 13:28:08', 101),
(1662, 486, '5', 1, 15000, '2024-07-31 13:28:08', 101),
(1663, 486, '3', 1, 1000, '2024-07-31 13:28:08', 101);

-- --------------------------------------------------------

--
-- Table structure for table `tborderproduct`
--

CREATE TABLE `tborderproduct` (
  `orp_id` int(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `orpName` varchar(255) NOT NULL,
  `orpQty` int(255) NOT NULL,
  `orpPrice` int(255) NOT NULL,
  `orCost` int(255) NOT NULL,
  `status` int(10) NOT NULL,
  `billnumber` varchar(255) NOT NULL,
  `orp_date` datetime NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tborderproduct`
--

INSERT INTO `tborderproduct` (`orp_id`, `product_id`, `orpName`, `orpQty`, `orpPrice`, `orCost`, `status`, `billnumber`, `orp_date`, `image`) VALUES
(461, '6', 'water', 1, 5000, 5000, 0, '5998', '2024-07-31 14:34:55', 'http://192.168.59.84:3005/profile/profile_1722029685842.webp'),
(462, '7', 'fish', 1, 200000, 200000, 0, '5998', '2024-07-31 14:34:55', 'http://192.168.59.84:3005/profile/profile_1722097906871.jpg'),
(463, '8', 'samerby', 1, 15000, 15000, 0, '5998', '2024-07-31 14:34:55', 'http://192.168.59.84:3005/profile/profile_1722358801437.jpg'),
(464, '1', 'ໄຂດາວ', 1, 20000, 20000, 0, '4366', '2024-07-31 15:16:43', 'http://192.168.59.84:3005/profile/profile_1719119723624.jpg'),
(465, '2', 'ຍໍາ', 1, 10000, 10000, 0, '4366', '2024-07-31 15:16:43', 'http://192.168.59.84:3005/profile/profile_1719119765384.jpg'),
(466, '3', 'ເຝີ', 1, 1000, 1000, 0, '4366', '2024-07-31 15:16:43', 'http://192.168.59.84:3005/profile/profile_1719119812273.jpg'),
(467, '4', 'beer', 1, 15000, 15000, 0, '4366', '2024-07-31 15:16:43', 'http://192.168.59.84:3005/profile/profile_1722029297840.jpg'),
(468, '1', 'ໄຂດາວ', 3, 60000, 20000, 2, '4505', '2024-07-31 15:38:57', 'http://192.168.59.84:3005/profile/profile_1719119723624.jpg'),
(469, '4', 'beer', 6, 90000, 15000, 2, '4505', '2024-07-31 15:38:57', 'http://192.168.59.84:3005/profile/profile_1722029297840.jpg'),
(470, '8', 'samerby', 3, 45000, 15000, 2, '4505', '2024-07-31 15:38:57', 'http://192.168.59.84:3005/profile/profile_1722358801437.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbproduct`
--

CREATE TABLE `tbproduct` (
  `product_id` varchar(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `protype_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `quantity` int(255) NOT NULL,
  `price` double NOT NULL,
  `cost` double NOT NULL,
  `image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbproduct`
--

INSERT INTO `tbproduct` (`product_id`, `product_name`, `protype_id`, `unit_id`, `quantity`, `price`, `cost`, `image`) VALUES
('1', 'ໄຂດາວ', 1, 1, 82, 20000, 10000, 'http://192.168.59.84:3005/profile/profile_1719119723624.jpg'),
('2', 'ຍໍາ', 1, 1, 82, 10000, 20000, 'http://192.168.59.84:3005/profile/profile_1719119765384.jpg'),
('3', 'ເຝີ', 1, 1, 87, 1000, 2000, 'http://192.168.59.84:3005/profile/profile_1719119812273.jpg'),
('4', 'beer', 2, 2, 91, 15000, 30000, 'http://192.168.59.84:3005/profile/profile_1722029297840.jpg'),
('5', 'pepsi', 2, 2, 96, 15000, 20000, 'http://192.168.59.84:3005/profile/profile_1722029366950.jpg'),
('6', 'water', 2, 2, 99, 5000, 8000, 'http://192.168.59.84:3005/profile/profile_1722029685842.webp'),
('7', 'fish', 1, 1, 102, 200000, 15000, 'http://192.168.59.84:3005/profile/profile_1722097906871.jpg'),
('8', 'samerby', 2, 2, 100, 15000, 20000, 'http://192.168.59.84:3005/profile/profile_1722358801437.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbproducttype`
--

CREATE TABLE `tbproducttype` (
  `protype_id` int(11) NOT NULL,
  `protype_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbproducttype`
--

INSERT INTO `tbproducttype` (`protype_id`, `protype_name`) VALUES
(1, 'ອາຫານ'),
(2, 'ເຄື່ອງດື່ມ'),
(3, 'ຕໍາ');

-- --------------------------------------------------------

--
-- Table structure for table `tbrejectorder`
--

CREATE TABLE `tbrejectorder` (
  `reject_id` int(11) NOT NULL,
  `or_id` int(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `qty` int(255) NOT NULL,
  `amount` int(255) NOT NULL,
  `status` int(11) NOT NULL,
  `table_id` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbrejectorder`
--

INSERT INTO `tbrejectorder` (`reject_id`, `or_id`, `product_id`, `qty`, `amount`, `status`, `table_id`) VALUES
(20, 459, '1', 1, 20000, 2, 103),
(21, 460, '1', 1, 20000, 2, 101),
(22, 483, '1', 1, 20000, 2, 102),
(23, 484, '1', 1, 20000, 2, 103),
(24, 485, '1', 1, 20000, 2, 101),
(25, 486, '1', 1, 20000, 2, 101);

-- --------------------------------------------------------

--
-- Table structure for table `tbroom`
--

CREATE TABLE `tbroom` (
  `roomId` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `user` varchar(500) NOT NULL,
  `lastMessage` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbtable`
--

CREATE TABLE `tbtable` (
  `table_id` int(11) NOT NULL,
  `table_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `table_size` int(11) NOT NULL,
  `tabletype_id` int(11) NOT NULL,
  `table_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbtable`
--

INSERT INTO `tbtable` (`table_id`, `table_name`, `table_size`, `tabletype_id`, `table_status`) VALUES
(101, 'Table 1', 10, 1, 0),
(102, 'Table 2', 10, 1, 0),
(103, 'Table 3', 10, 2, 0),
(127, 'Table 4', 10, 1, 0),
(128, 'Table 5', 10, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbtabletype`
--

CREATE TABLE `tbtabletype` (
  `tabletype_id` int(11) NOT NULL,
  `tabletype_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbtabletype`
--

INSERT INTO `tbtabletype` (`tabletype_id`, `tabletype_name`) VALUES
(1, 'ທົ່ວໄປ'),
(2, 'VIP'),
(6, 'ສຳຄັນ');

-- --------------------------------------------------------

--
-- Table structure for table `tbunit`
--

CREATE TABLE `tbunit` (
  `unit_id` int(11) NOT NULL,
  `unit_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbunit`
--

INSERT INTO `tbunit` (`unit_id`, `unit_name`) VALUES
(1, 'ຈານ'),
(2, 'ແກ້ວ');

-- --------------------------------------------------------

--
-- Table structure for table `tbusers`
--

CREATE TABLE `tbusers` (
  `uid` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` text NOT NULL,
  `phone` int(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbusers`
--

INSERT INTO `tbusers` (`uid`, `username`, `email`, `password`, `phone`, `gender`, `address`, `status`, `image`) VALUES
(31, 'chin', 'chin@gmail.com', '$2b$10$GE7YT8Ass7NBHyeOs0rtSuXcVuhK6EYPWCxCxPOS5AddhD6KxSThe', 2093551639, 'Male', 'vientain ', 'Admin', 'http://192.168.59.84:3005/profile/profile_1719781700341.jpg'),
(46, 'MBChin', 'MBchin@gmail.com', '$2b$10$wzcoJjz3DZTKU9UuxMiqYO4DylardrV.28XXUqDfOeCiJZZWF6tpq', 205986478, 'Male', 'vientain ', 'Chefs', 'http://192.168.59.84:3005/profile/profile_1721151575570.jpg'),
(47, 'BM', 'b@gmail.com', '$2b$10$ykgIzESLGwceQsZUgJk3vub2/cu8ZgJllpe73D5fdDUQF0kBUQwiC', 209658435, 'Male', 'vientian', 'Waiter', 'http://192.168.59.84:3005/profile/profile_1720080306321.webp'),
(48, 'jin', 'jini@gmail.com', '$2b$10$rYirO.lCcKVPz9qqVU2awuAsnTSc8Ckqm9uuetWNCmxtiIvxZI.Me', 2056971523, 'Male', 'v', 'Chefs', 'http://192.168.59.84:3005/profile/profile_1720087155296.jpg'),
(60, 'Malia', 'toni@gmail.com', '$2b$10$M1QC5w6uam6h55hC1Sa92u9tBEq88qiuHDjBRUfaYXf8v2ET8eU1G', 2096532895, 'Female', 'ventian', 'Admin', 'http://192.168.59.84:3005/profile/profile_1721552435125.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbcontact`
--
ALTER TABLE `tbcontact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbemployee`
--
ALTER TABLE `tbemployee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbimage`
--
ALTER TABLE `tbimage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblorder`
--
ALTER TABLE `tblorder`
  ADD PRIMARY KEY (`or_id`);

--
-- Indexes for table `tbmessage`
--
ALTER TABLE `tbmessage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tborderdetail`
--
ALTER TABLE `tborderdetail`
  ADD PRIMARY KEY (`ord_id`);

--
-- Indexes for table `tborderproduct`
--
ALTER TABLE `tborderproduct`
  ADD PRIMARY KEY (`orp_id`);

--
-- Indexes for table `tbproduct`
--
ALTER TABLE `tbproduct`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbproducttype`
--
ALTER TABLE `tbproducttype`
  ADD PRIMARY KEY (`protype_id`);

--
-- Indexes for table `tbrejectorder`
--
ALTER TABLE `tbrejectorder`
  ADD PRIMARY KEY (`reject_id`);

--
-- Indexes for table `tbroom`
--
ALTER TABLE `tbroom`
  ADD PRIMARY KEY (`roomId`);

--
-- Indexes for table `tbtable`
--
ALTER TABLE `tbtable`
  ADD PRIMARY KEY (`table_id`);

--
-- Indexes for table `tbtabletype`
--
ALTER TABLE `tbtabletype`
  ADD PRIMARY KEY (`tabletype_id`);

--
-- Indexes for table `tbunit`
--
ALTER TABLE `tbunit`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `tbusers`
--
ALTER TABLE `tbusers`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbcontact`
--
ALTER TABLE `tbcontact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbemployee`
--
ALTER TABLE `tbemployee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbimage`
--
ALTER TABLE `tbimage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `or_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=487;

--
-- AUTO_INCREMENT for table `tbmessage`
--
ALTER TABLE `tbmessage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=554;

--
-- AUTO_INCREMENT for table `tborderdetail`
--
ALTER TABLE `tborderdetail`
  MODIFY `ord_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1664;

--
-- AUTO_INCREMENT for table `tborderproduct`
--
ALTER TABLE `tborderproduct`
  MODIFY `orp_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=471;

--
-- AUTO_INCREMENT for table `tbproducttype`
--
ALTER TABLE `tbproducttype`
  MODIFY `protype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `tbrejectorder`
--
ALTER TABLE `tbrejectorder`
  MODIFY `reject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbtable`
--
ALTER TABLE `tbtable`
  MODIFY `table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `tbtabletype`
--
ALTER TABLE `tbtabletype`
  MODIFY `tabletype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbunit`
--
ALTER TABLE `tbunit`
  MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbusers`
--
ALTER TABLE `tbusers`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
