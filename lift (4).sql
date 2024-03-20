-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2022 at 04:46 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lift`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `pass`) VALUES
(1, 'admin_001', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `Id` int(11) NOT NULL,
  `product` varchar(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `price` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `Id` int(11) NOT NULL,
  `user` varchar(113) NOT NULL,
  `product` varchar(112) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`Id`, `user`, `product`) VALUES
(1, 'q@gmail.com', 'w2'),
(2, 'w2', 'q@gmail.com'),
(3, 'w2', 'q@gmail.com'),
(4, '', ''),
(5, '', ''),
(6, '', ''),
(7, '', ''),
(8, '', ''),
(9, 'q@gmail.com', 'w2');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `reply` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `user_email`, `subject`, `text`, `reply`) VALUES
(1, 'q@gmail.com', 'mara', 'vai valo nai', 'dardrtdwe '),
(3, 'q@gmail.com', 'mara', 'vai valo nasjhdjsd sjdbjhdsf fjsbdfjbsjkdfdbfsdkfsdkjsdfkskfkhdkfkshdfkkdnkvhdkbvbi', ''),
(6, '', '', '', 'tate amar ki'),
(7, 'q@gmail.com', 'afsg', 'qwfgqwqtgwyggwygs', ''),
(8, 'q@gmail.com', '', '', ''),
(9, 'q@gmail.com', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Id` int(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Id` int(11) NOT NULL,
  `Name` varchar(119) NOT NULL,
  `Price` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `path` varchar(100) NOT NULL,
  `code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Id`, `Name`, `Price`, `qty`, `type`, `path`, `code`) VALUES
(4, 's', 12, '1 pcs', 'Vegetables', 'onion3.png', 's');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Id` int(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Mobile` varchar(100) NOT NULL,
  `path` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Id`, `Name`, `email`, `pass`, `Address`, `Mobile`, `path`) VALUES
(1, 'Nirjon', 'q@gmail.com', '1234', 'wewew', '012912812', ''),
(3, 'ssds', 'sdsd', 'sdsd', 'sdsd', 'sdsd', 'sdsd'),
(4, '1', '1', '1', '1', '1', '1'),
(7, 'sSs', 'sS', 'sS', 'sS', 'sd', 'ss'),
(15, '${name}', 'ssS', 'asS', 'asS', 'asd', 'ass'),
(39, '${name}', 'sxsS', 'axsS', 'axsS', 'axsd', 'axss'),
(54, 'rTwx', '190204063@aust.edu', '766666', 'bbbb', '023456789', ''),
(55, '', '', '', '', '', ''),
(56, 'nirjon', '1902j04063@aust.edu', 'u', 'bbbb', '023456789', ''),
(57, 'rTwx', '19 4063@aust.edu', 'u', 'bbbb', '023456789', ''),
(59, 'rTwx', '190@aust.edu', 'yui', 'bbbb', '023456789', ''),
(60, 'rTwx', '063@aust.edu', 'esrfg', 'bbbb', '023456789', ''),
(61, 'nirjon', 'j063@aust.edu', 'sdxcn', 'bbbb', '023456789', ''),
(62, 'RTZW', 'mmmmm063@aust.edu', 'hhhhhhhhhhhhh', 'bbbb', '023456789', ''),
(63, 'srwre', 'bb63@aust.edu', 'bbbbbbbbbb', 'bbbb', '023456789', ''),
(64, 'haha', '193@aust.edu', 'rttttttt', 'bbbb', '023456789', ''),
(66, 'rTwx', 't.edu', 'jjjjjjjjjjjj', 'bbbb', '023456789', ''),
(67, 'rTwx', '1902 ust.edu', '45e', 'bbbb', '023456789', ''),
(80, 'rTwx', 'sws', 'sws', 'ws', 'sws', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `y` (`name`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `ee` (`code`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `x` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
