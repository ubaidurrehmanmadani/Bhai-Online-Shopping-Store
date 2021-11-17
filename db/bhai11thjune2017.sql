-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2017 at 05:59 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bhai`
--

-- --------------------------------------------------------

--
-- Table structure for table `anomaly`
--

CREATE TABLE `anomaly` (
  `anomaly_id` int(11) NOT NULL,
  `anomaly_reason` varchar(45) DEFAULT NULL,
  `Anomaly_lossprice` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `parent_id`) VALUES
(1, 'DRINKS', 0),
(2, 'BEVERAGES', 0),
(3, 'BREAD/BAKERY ', 0),
(5, 'DAIRY', 0),
(6, 'DRY/BAKING GOODS', 0),
(7, 'VEGETABLES', 0),
(8, 'FRESH FRUITS', 0),
(9, 'MEAT', 0),
(10, 'OFFICE SUPPLIES', 0),
(11, 'BAKING', 0),
(12, 'PERSONAL CARE', 0),
(13, 'DAIRY', 0),
(14, 'MEDICINE', 0),
(15, 'CANNED FOOD', 0),
(16, 'SPICES & HERBS', 0),
(17, 'BEVERAGES', 0),
(18, 'CHEESE', 0),
(19, 'CONDIMENTS', 0),
(20, 'VARIOUS GROCERIES', 0),
(21, 'SNACKS', 0),
(22, 'COLD DRINK', 0),
(23, 'COKE', 0),
(46, 'CHICKEN', 9),
(47, 'BEAF', 9),
(48, 'MUTTON', 9),
(50, 'AZEEM INSAN', 0),
(51, 'SOAP', 0),
(52, 'CLEANING SOAP', 51),
(53, 'PERSONAL SOAP', 51),
(54, 'KITCHEN SOAPS', 51),
(55, 'LAUNDRY SOAPS', 51),
(56, 'WASHING POWDER', 51);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `feedback_type` int(11) DEFAULT NULL,
  `feedback_description` varchar(45) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `bhai_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `rating` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `feedback_type`, `feedback_description`, `customer_id`, `bhai_id`, `order_id`, `rating`) VALUES
(1, 1, 'Delivery Boy is very Good', 51, 52, 55, 0),
(2, 1, 'Delivery Boy is very Fair', 51, 52, 53, 0),
(3, 1, 'Good', 51, 52, 61, 0),
(4, 1, 'ssdfdsfsdfsdf', 53, 52, 70, 5),
(5, 1, '', 51, 52, 61, 5),
(6, 1, '', 51, 52, 61, 5),
(7, 1, 'jhfksjafjksda', 51, 52, 61, 5),
(8, 1, 'dggdsgset5', 51, 52, 61, 5),
(9, 2, 'good', 51, 52, 53, 1),
(10, 1, '', 51, 52, 62, 4),
(11, 1, '', 52, 51, 70, 5),
(12, 1, '', 51, 52, 61, 5),
(13, 1, '', 52, 52, 61, 5),
(14, 1, 'n khjvj', 52, 52, 61, 4),
(15, 1, '', 51, 52, 61, 5),
(16, 1, 'dfgsefdf123', 51, 52, 61, 4),
(17, 1, 'Excll', 51, 52, 61, 4),
(18, 2, 'Bhai is working', 52, 52, 72, 4);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `log_description` varchar(30) NOT NULL,
  `item_id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`log_id`, `user_id`, `log_description`, `item_id`, `time`) VALUES
(1, 55, 'added Product', 7, '2017-03-29 16:59:40'),
(2, 55, 'deleted Product', 1, '2017-03-29 16:59:40'),
(3, 55, 'Added Category', 1, '2017-03-29 17:04:40'),
(4, 55, 'Category Added', 51, '2017-06-10 07:21:50'),
(5, 55, 'Category Added', 52, '2017-06-10 07:31:58'),
(6, 55, 'Category Added', 53, '2017-06-10 07:34:01'),
(7, 55, 'Category Added', 54, '2017-06-10 07:35:25'),
(8, 55, 'Category Added', 55, '2017-06-10 07:35:52'),
(9, 55, 'Product Added', 162, '2017-06-10 07:41:11'),
(10, 55, 'Product Added', 163, '2017-06-10 07:43:35'),
(11, 55, 'Product Added', 164, '2017-06-10 07:45:45'),
(12, 55, 'Product Added', 165, '2017-06-10 07:47:58'),
(13, 55, 'Product Added', 166, '2017-06-10 07:50:27'),
(14, 55, 'Product Added', 167, '2017-06-10 08:03:07'),
(15, 55, 'Product Added', 168, '2017-06-10 08:05:13'),
(16, 55, 'Product Added', 169, '2017-06-10 08:07:37'),
(17, 55, 'Product Added', 170, '2017-06-10 08:09:41'),
(18, 55, 'Category Added', 56, '2017-06-10 08:20:11'),
(19, 55, 'Packing Added', 6, '2017-06-10 08:22:21'),
(20, 55, 'Product Added', 171, '2017-06-10 08:25:08');

-- --------------------------------------------------------

--
-- Table structure for table `order1`
--

CREATE TABLE `order1` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `ordertime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `order_status` int(11) NOT NULL,
  `order_deliverytime` timestamp NULL DEFAULT NULL,
  `bhai_id` int(11) NOT NULL,
  `ship_name` varchar(30) DEFAULT NULL,
  `ship_gender` varchar(10) DEFAULT NULL,
  `ship_phone` varchar(15) DEFAULT NULL,
  `ship_address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order1`
--

INSERT INTO `order1` (`order_id`, `user_id`, `total_price`, `ordertime`, `order_status`, `order_deliverytime`, `bhai_id`, `ship_name`, `ship_gender`, `ship_phone`, `ship_address`) VALUES
(61, 51, 1440, '2017-03-21 11:53:40', 1, '2017-04-04 07:33:36', 52, 'UBAID UR REHMAN', NULL, '03344246365', 'JAMIA ISLAMIA GT ROAD PABBI'),
(62, 51, 30, '2017-03-29 10:33:46', 0, NULL, 52, 'UBAID UR REHMAN', NULL, '03344246365', 'JAMIA ISLAMIA GT ROAD PABBI'),
(70, 53, 100, '2017-03-31 10:51:17', 1, NULL, 51, 'DSAJFHKLSAHLK', NULL, '-1232321312312', 'SDFHSAKHFLSKAJ'),
(72, 51, 150, '2017-04-04 07:07:41', 1, NULL, 52, 'UBAID UR REHMAN', NULL, '03344246365', 'JAMIA ISLAMIA GT ROAD PABBI'),
(73, 51, 90, '2017-04-04 07:11:39', 0, NULL, 0, 'UBAID UR REHMAN', NULL, '03344246365', 'JAMIA ISLAMIA GT ROAD PABBI'),
(74, 51, 150, '2017-05-28 11:40:15', 0, NULL, 0, 'UBAID UR REHMAN', NULL, '03344246365', 'JAMIA ISLAMIA GT ROAD PABBI'),
(75, 51, 250, '2017-06-07 22:28:24', 0, NULL, 0, 'UBAID UR REHMAN', NULL, '03344246365', 'JAMIA ISLAMIA GT ROAD PABBI'),
(76, 51, 200, '2017-06-09 01:03:26', 0, NULL, 0, 'UBAID UR REHMAN', NULL, '03344246365', 'JAMIA ISLAMIA GT ROAD PABBI');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `orderItem_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`orderItem_id`, `product_id`, `order_id`, `quantity`) VALUES
(1, 1, 1, 200),
(2, 1, 1, 200),
(3, 1, 6, 11),
(4, 2, 6, 3),
(5, 3, 6, 2),
(6, 1, 7, 12),
(7, 2, 7, 5),
(8, 3, 7, 2),
(9, 1, 8, 16),
(10, 2, 8, 18),
(11, 3, 8, 2),
(12, 1, 9, 16),
(13, 2, 9, 20),
(14, 3, 9, 2),
(15, 1, 10, 16),
(16, 2, 10, 24),
(17, 3, 10, 2),
(18, 9, 11, 8),
(19, 8, 12, 200),
(20, 7, 12, 0),
(21, 9, 12, 89),
(22, 8, 13, 200),
(23, 7, 13, 0),
(24, 9, 13, 89),
(25, 11, 13, 100),
(26, 15, 17, 100),
(27, 15, 18, 100),
(28, 13, 18, 78),
(29, 15, 19, 100),
(30, 13, 19, 78),
(31, 14, 19, 23),
(32, 15, 20, 100),
(33, 13, 20, 78),
(34, 14, 20, 23),
(35, 11, 20, 89),
(36, 15, 21, 100),
(37, 13, 21, 78),
(38, 14, 21, 23),
(39, 11, 21, 89),
(40, 12, 21, 89),
(41, 15, 22, 190),
(42, 13, 22, 78),
(43, 14, 22, 23),
(44, 11, 22, 89),
(45, 12, 22, 89),
(46, 15, 23, 190),
(47, 13, 23, 78),
(48, 14, 23, 23),
(49, 11, 23, 89),
(50, 12, 23, 89),
(51, 21, 23, 12),
(52, 17, 24, 13),
(53, 17, 25, 13),
(54, 21, 25, 67),
(55, 17, 26, 13),
(56, 21, 26, 67),
(57, 9, 26, 90),
(58, 17, 27, 13),
(59, 21, 27, 67),
(60, 9, 27, 90),
(61, 17, 28, 13),
(62, 21, 28, 67),
(63, 9, 28, 90),
(64, 8, 30, 8),
(65, 7, 30, 0),
(66, 8, 31, 109),
(67, 8, 32, 109),
(68, 8, 33, 109),
(69, 8, 34, 109),
(70, 7, 35, 12),
(71, 8, 35, 12),
(72, 9, 35, 12),
(73, 17, 35, 12),
(74, 28, 35, 12),
(75, 41, 35, 13),
(76, 8, 36, 24),
(77, 9, 36, 10),
(78, 7, 37, 124),
(79, 8, 37, 12),
(80, 7, 38, 124),
(81, 8, 38, 12),
(82, 11, 38, 12),
(83, 12, 38, 1),
(84, 7, 39, 124),
(85, 8, 39, 12),
(86, 11, 39, 12),
(87, 12, 39, 1),
(88, 23, 39, 1),
(89, 24, 39, 1),
(90, NULL, 41, NULL),
(91, NULL, 42, NULL),
(92, NULL, 43, NULL),
(93, NULL, 44, NULL),
(94, NULL, 45, NULL),
(95, 9, 46, 3),
(96, 9, 47, 3),
(97, 8, 49, 12),
(98, 7, 49, 2),
(99, 9, 50, 23),
(100, 8, 50, 12),
(101, 17, 51, 8),
(102, 9, 52, 1),
(103, 8, 52, 3),
(104, 9, 53, 1),
(105, 8, 53, 3),
(106, NULL, 54, NULL),
(107, NULL, 54, NULL),
(108, 9, 55, 12),
(109, 11, 55, 3),
(110, 8, 60, 12),
(111, 9, 60, 4),
(112, 20, 60, 12),
(113, 8, 61, 12),
(114, 9, 61, 4),
(115, 20, 61, 12),
(116, 9, 62, 1),
(117, 7, 63, 2),
(118, 8, 63, 1),
(119, 9, 63, 3),
(120, 11, 64, 2),
(121, 13, 64, 3),
(122, 7, 65, 2),
(123, 13, 65, 3),
(124, 7, 66, 3),
(125, 161, 66, 3),
(126, 36, 66, 3),
(127, 161, 67, 161),
(128, 161, 68, 2),
(129, 8, 68, 2),
(130, 9, 68, 3),
(131, 8, 69, 3),
(132, 7, 70, 2),
(133, 8, 70, 0),
(134, 7, 71, 3),
(135, 8, 71, 4),
(136, 9, 72, 5),
(137, 8, 73, 3),
(138, 7, 74, 3),
(139, 7, 75, 5),
(140, 7, 76, 4);

-- --------------------------------------------------------

--
-- Table structure for table `packing`
--

CREATE TABLE `packing` (
  `packing_id` int(11) NOT NULL,
  `packing_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packing`
--

INSERT INTO `packing` (`packing_id`, `packing_name`) VALUES
(1, 'BOTTLE'),
(2, 'TIN'),
(3, 'COTTON'),
(5, 'BOX'),
(6, 'PACKED');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `product_price` bigint(20) NOT NULL,
  `product_description` varchar(30) NOT NULL,
  `packing_type` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `img_src` varchar(50) NOT NULL,
  `product_unit` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`, `product_description`, `packing_type`, `category_id`, `product_date`, `img_src`, `product_unit`) VALUES
(7, 'CAULIFLOWERR', 50, 'Vegtable', 1, 1, '2017-03-01 20:00:04', 'images/', '0'),
(8, 'CELERY', 30, 'Vegtable', 1, 7, '2017-03-01 20:00:04', 'images/Celery.jpg', '0'),
(9, 'CORN', 30, 'Vegtable', 1, 7, '2017-03-01 20:00:04', 'images/Corn.jpg', '0'),
(10, 'CUCUMBERS', 80, 'Vegtable', 1, 7, '2017-03-01 20:00:04', 'images/Cucumbers.jpg', '0'),
(11, 'LETTUCE/GREENS', 80, 'Vegtable', 1, 7, '2017-03-01 20:00:04', 'images/Lettuce.jpg', '0'),
(12, 'MUSHROOMS', 50, 'Vegtable', 1, 7, '2017-03-01 20:00:04', 'images/Mushrooms.jpg', '0'),
(13, 'ONIONS', 65, 'Vegtable', 1, 7, '2017-03-01 20:00:04', 'images/Onions.jpg', '0'),
(14, 'PEPPERS', 65, 'Vegtable', 1, 7, '2017-03-01 20:00:04', 'images/Peppers.jpg', '0'),
(15, 'POTATOS', 80, 'Vegtable', 1, 7, '2017-03-01 20:00:04', 'images/potato.jpg', '0'),
(16, 'SPINACH', 50, 'Vegtable', 1, 7, '2017-03-01 20:00:04', 'images/Spinach.jpg', '0'),
(17, 'SQUASH', 90, 'Vegtable', 1, 7, '2017-03-01 20:00:04', 'images/Squash.jpg', '0'),
(18, 'ZUCCHINI', 100, 'Vegtable', 1, 7, '2017-03-01 20:00:04', 'images/Zucchini.jpg', '0'),
(19, 'TOMATOES', 65, 'Vegtable', 1, 7, '2017-03-01 20:00:04', 'images/Tomatoes.jpg', '0'),
(20, 'APPLES', 80, 'Fresh Fruits', 1, 8, '2017-03-01 20:00:04', 'images/Apples.jpg', '0'),
(21, 'AVOCADOS', 100, 'Fresh Fruits', 1, 8, '2017-03-01 20:00:04', 'images/Avocados.jpg', '0'),
(22, 'BANANAS', 80, 'Fresh Fruits', 1, 8, '2017-03-01 20:00:04', 'images/Bananas.jpg', '0'),
(23, 'BERRIES', 200, 'Fresh Fruits', 1, 8, '2017-03-01 20:00:04', 'images/Berries.jpg', '0'),
(24, 'CHERRIES', 250, 'Fresh Fruits', 1, 8, '2017-03-01 20:00:04', 'images/Cherries.jpg', '0'),
(25, 'GRAPEFRUIT', 100, 'Fresh Fruits', 1, 8, '2017-03-01 20:00:04', 'images/Grapefruit.jpg', '0'),
(26, 'GRAPES', 200, 'Fresh Fruits', 1, 8, '2017-03-01 20:00:04', 'images/Grapes.jpg', '0'),
(27, 'KIWIS', 300, 'Fresh Fruits', 1, 8, '2017-03-01 20:00:04', 'images/Kiwis.jpg', '0'),
(28, 'LEMONS/LIMES', 350, 'Fresh Fruits', 1, 8, '2017-03-01 20:00:04', 'images/Lemons.jpg', '0'),
(29, 'MELON', 200, 'Fresh Fruits', 1, 8, '2017-03-01 20:00:04', 'images/Melon.jpg', '0'),
(30, 'NECTARINES', 50, 'Fresh Fruits', 1, 8, '2017-03-01 20:00:04', 'images/Nectarines.jpg', '0'),
(31, 'ORANGES', 200, 'Fresh Fruits', 1, 8, '2017-03-01 20:00:04', 'images/Oranges.jpg', '0'),
(32, 'PEACHES', 250, 'Fresh Fruits', 1, 8, '2017-03-01 20:00:04', 'images/Peaches.jpg', '0'),
(33, 'PEARS', 250, 'Fresh Fruits', 1, 8, '2017-03-01 20:00:04', 'images/Pears.jpg', '0'),
(34, 'PLUMS', 200, 'Fresh Fruits', 1, 8, '2017-03-01 20:00:04', 'images/Plums.jpg', '0'),
(35, 'BACON', 250, 'Meat', 1, 9, '2017-03-01 20:00:04', 'images/Bacon.jpg', '0'),
(36, 'BEEF', 150, 'Meat', 1, 9, '2017-03-01 20:00:04', 'images/Beef.jpg', '0'),
(37, 'CHICKEN', 200, 'Me', 0, 0, '2017-03-01 20:00:04', '', '0'),
(38, 'CHICKEN', 200, 'Meat', 1, 9, '2017-03-01 20:00:04', 'images/Chicken.jpg', '0'),
(39, 'GROUND BEEF', 350, 'Meat', 1, 9, '2017-03-01 20:00:04', 'images/GroundBeef.jpg', '0'),
(40, 'HAM', 130, 'Meat', 1, 9, '2017-03-01 20:00:04', 'images/Ham.jpg', '0'),
(41, 'LUNCHMEAT', 360, 'Meat', 1, 9, '2017-03-01 20:00:04', 'images/Lunchmeat.jpg', '0'),
(42, 'CDRS/DVDRS', 50, 'Office Supplies', 1, 10, '2017-03-01 20:00:04', 'images/CD.jpg', '0'),
(45, 'NOTEPAD', 100, 'Office Supply', 2, 10, '2017-03-01 20:00:04', 'images/Notepad.jpg', '0'),
(46, 'GLUE/TAPE', 20, 'Office Supply', 2, 10, '2017-03-01 20:00:04', 'images/Glue.jpg', '0'),
(47, 'PRINTER PAPER', 250, 'Office Supply', 2, 10, '2017-03-01 20:00:04', 'images/PrinterPaper.jpg', '0'),
(48, 'PENS', 50, 'Office Supply', 2, 10, '2017-03-01 20:00:04', 'images/Pens.jpg', '0'),
(49, 'POSTAGE STAMPS', 100, 'Office Supply', 2, 10, '2017-03-01 20:00:04', 'images/Postage.jpg', '0'),
(50, 'BAKING POWDER', 50, 'Baking', 3, 11, '2017-03-01 20:00:04', 'images/BakingPowder.jpg', '0'),
(51, 'BUNS/ROLL', 20, 'Baking', 3, 11, '2017-03-01 20:00:04', 'images/Buns.jpg', '0'),
(52, 'CAKE', 350, 'Baking', 3, 11, '2017-03-01 20:00:04', 'images/cake.jpg', '0'),
(53, 'CHOCOLATE CHIPS', 50, 'Baking', 3, 11, '2017-03-01 20:00:04', 'images/ChocolateChips.jpg', '0'),
(54, 'FLOUR', 800, 'Baking', 3, 11, '2017-03-01 20:00:04', 'images/Flour.jpg', '0'),
(55, 'SHORTENING', 650, 'Baking', 3, 11, '2017-03-01 20:00:04', 'images/Shortening.jpg', '0'),
(56, 'SUGAR', 70, 'Baking', 1, 11, '2017-03-01 20:00:04', 'images/Sugar.jpg', '0'),
(57, 'SUGAR SUBSTITUTE', 130, 'Baking', 3, 11, '2017-03-01 20:00:04', 'images/SugarSubstitute.jpg', '0'),
(58, 'YEAST', 120, 'Baking', 3, 11, '2017-03-01 20:00:04', 'images/Yeast.jpg', '0'),
(59, 'Â· ANTIPERSPIRANT/DEODORANT', 500, 'Personal Care', 2, 12, '2017-03-01 20:00:04', 'images/Â· Antiperspirant/Deodorant.jpg', '0'),
(60, 'BATH SOAP', 50, 'Personal Care', 2, 12, '2017-03-01 20:00:04', 'images/Bath soap.jpg', '0'),
(61, 'CONDOMS', 100, 'Personal Care', 3, 12, '2017-03-01 20:00:04', 'images/Condom.jpg', '0'),
(62, 'COSMETICS', 250, 'Personal Care', 3, 12, '2017-03-01 20:00:04', 'images/Cosmetics.jpg', '0'),
(63, 'COTTON SWABS', 320, 'Personal Care', 2, 12, '2017-03-01 20:00:04', 'images/Cotton Swabs.jpg', '0'),
(64, 'FACIAL CLEANSER', 350, 'Personal Care', 3, 12, '2017-03-01 20:00:04', 'images/Facial Cleanser.jpg', '0'),
(65, 'FACIAL TISSUE', 180, 'Personal Care', 3, 12, '2017-03-01 20:00:04', 'images/Facial Tissue.jpg', '0'),
(66, 'FEMINIME PRODUCTS', 750, 'Personal Care', 3, 12, '2017-03-01 20:00:04', 'images/Facial Tissue.jpg', '0'),
(67, 'FLOSS', 200, 'Personal Care', 2, 12, '2017-03-01 20:00:04', 'images/Floss.jpg', '0'),
(68, 'HAIR GEL', 250, 'Personal Care', 2, 12, '2017-03-01 20:00:04', 'images/Floss.jpg', '0'),
(69, 'LIP BALM', 120, 'Personal Care', 2, 12, '2017-03-01 20:00:04', 'images/Lip balm.jpg', '0'),
(70, 'MOISTURIZING LOTION', 180, 'Personal Care', 2, 12, '2017-03-01 20:00:04', 'images/Moisturizing lotion.jpg', '0'),
(71, 'MOUTHWASH', 80, 'Personal Care', 2, 12, '2017-03-01 20:00:04', 'images/Mouthwash.jpg', '0'),
(72, 'RAZORS /SHAVING CREAM', 500, 'Personal Care', 3, 12, '2017-03-01 20:00:04', 'images/Razors /Shaving cream.jpg', '0'),
(73, 'SHAMPOO/CONDITIONER', 400, 'Personal Care', 3, 12, '2017-03-01 20:00:04', 'images/Shampoo/Conditioner.jpg', '0'),
(74, 'SUNBLOCK', 300, 'Personal Care', 2, 12, '2017-03-01 20:00:04', 'images/Sunblock.jpg', '0'),
(75, 'TOILET PAPER', 50, 'Personal Care', 2, 12, '2017-03-01 20:00:04', 'images/Toilet paper.jpg', '0'),
(76, 'TOOTHPASTE', 100, 'Personal Care', 2, 12, '2017-03-01 20:00:04', 'images/Toothpaste.jpg', '0'),
(77, 'VITAMINS/SUPPLEMENTS', 3000, 'Personal Care', 2, 12, '2017-03-01 20:00:04', 'images/Vitamins/Supplements.jpg', '0'),
(78, 'BUTTER / MARGARINE', 580, 'Dairy', 2, 13, '2017-03-01 20:00:04', 'images/Butter / Margarine.jpg', '0'),
(79, 'COTTAGE CHEESE', 750, 'Dairy', 2, 13, '2017-03-01 20:00:04', 'images/Cottage cheese.jpg', '0'),
(80, 'HALF & HALF', 120, 'Dairy', 2, 13, '2017-03-01 20:00:04', 'images/Half & half.jpg', '0'),
(81, 'MILK', 100, 'Dairy', 1, 13, '2017-03-01 20:00:04', 'images/Milk.jpg', '0'),
(82, 'SOUR CREAM', 320, 'Dairy', 1, 13, '2017-03-01 20:00:04', 'images/Sour cream.jpg', '0'),
(83, 'WHIPPED CREAM', 420, 'Dairy', 2, 13, '2017-03-01 20:00:04', 'images/Sour cream.jpg', '0'),
(84, 'YOGURT', 120, 'Dairy', 1, 13, '2017-03-01 20:00:04', 'images/Yogurt.jpg', '0'),
(85, 'ALLERGY', 20, 'Medicine', 2, 14, '2017-03-01 20:00:04', 'images/Allergy.jpg', '0'),
(86, 'ANTIBIOTIC', 230, 'Medicine', 2, 14, '2017-03-01 20:00:04', 'images/Antibiotic.jpg', '0'),
(87, 'ANTIDIARRHEAL', 190, 'Medicine', 2, 14, '2017-03-01 20:00:04', 'images/Antidiarrheal.jpg', '0'),
(88, 'ASPIRIN', 40, 'Medicine', 2, 14, '2017-03-01 20:00:04', 'images/Aspirin.jpg', '0'),
(89, 'BAND-AIDS', 1400, 'Medicine', 2, 14, '2017-03-01 20:00:04', 'images/Band-aids.jpg', '0'),
(90, 'COLD / FLU / SINUS', 60, 'Medicine', 2, 14, '2017-03-01 20:00:04', 'images/Cold / Flu / Sinus.jpg', '0'),
(91, 'PAIN RELIEVER', 110, 'Medicine', 0, 0, '2017-03-01 20:00:04', '', '0'),
(92, 'PRESCRIPTION PICK UP', 200, 'Medicine', 2, 14, '2017-03-01 20:00:04', 'images/Prescription pick up.jpg', '0'),
(93, 'APPLESAUCE', 200, 'Canned Food', 2, 15, '2017-03-01 20:00:04', 'images/Applesauce.jpg', '0'),
(94, 'BAKED BEANS', 170, 'Canned Food', 2, 15, '2017-03-01 20:00:04', 'images/Applesauce.jpg', '0'),
(95, 'BROTH', 200, 'Canned Food', 2, 15, '2017-03-01 20:00:04', 'images/Broth.jpg', '0'),
(96, 'FRUIT', 250, 'Canned Food', 2, 15, '2017-03-01 20:00:04', 'images/Fruit.jpg', '0'),
(97, 'OLIVES', 240, 'Canned Food', 2, 15, '2017-03-01 20:00:04', 'images/Olives.jpg', '0'),
(98, 'TINNED MEATS', 600, 'Canned Food', 2, 15, '2017-03-01 20:00:04', 'images/Tinned meats.jpg', '0'),
(99, 'TUNA / CHICKEN', 350, 'Canned Food', 2, 15, '2017-03-01 20:00:04', 'images/Tuna / Chicken.jpg', '0'),
(100, 'SOUP / CHILI', 90, 'Canned Food', 2, 15, '2017-03-01 20:00:04', 'images/Soup / Chili.jpg', '0'),
(101, 'TOMATOES', 60, 'Canned Food', 3, 15, '2017-03-01 20:00:04', 'images/Tomatoes.jpg', '0'),
(102, 'VEGGIES', 140, 'Canned Food', 2, 15, '2017-03-01 20:00:04', 'images/Veggies.jpg', '0'),
(103, 'BASIL', 120, 'Spices & Herbs', 2, 16, '2017-03-01 20:00:04', 'images/Basil.jpg', '0'),
(104, 'BLACK PEPPER', 60, 'Spices & Herbs', 2, 16, '2017-03-01 20:00:04', 'images/Black pepper.jpg', '0'),
(105, 'CILANTRO', 45, 'Spices & Herbs', 2, 16, '2017-03-01 20:00:04', 'images/Cilantro.jpg', '0'),
(106, 'CINNAMON', 900, 'Spices & Herbs', 2, 16, '2017-03-01 20:00:04', 'images/Cinnamon.jpg', '0'),
(107, 'GARLIC', 250, 'Spices & Herbs', 1, 16, '2017-03-01 20:00:04', 'images/Garlic.jpg', '0'),
(108, 'GINGER', 60, 'Spices & Herbs', 1, 16, '2017-03-01 20:00:04', 'images/Ginger.jpg', '0'),
(109, 'MINT', 90, 'Spices & Herbs', 1, 16, '2017-03-01 20:00:04', 'images/Mint.jpg', '0'),
(110, 'OREGANO', 70, 'Spices & Herbs', 1, 16, '2017-03-01 20:00:04', 'images/Oregano.jpg', '0'),
(111, 'PAPRIKA', 70, 'Spices & Herbs', 1, 16, '2017-03-01 20:00:04', 'images/Paprika.jpg', '0'),
(112, 'PARSLEY', 190, 'Spices & Herbs', 1, 16, '2017-03-01 20:00:04', 'images/Parsley.jpg', '0'),
(113, 'RED PEPPER', 250, 'Spices & Herbs', 1, 16, '2017-03-01 20:00:04', 'images/Red pepper.jpg', '0'),
(114, 'SALT', 90, 'Spices & Herbs', 1, 16, '2017-03-01 20:00:04', 'images/Salt.jpg', '0'),
(115, 'VANILLA EXTRACT', 255, 'Spices & Herbs', 1, 16, '2017-03-01 20:00:04', 'images/Vanilla extract.jpg', '0'),
(116, 'BEER', 800, 'Beverages', 2, 17, '2017-03-01 20:00:04', 'images/Beer.jpg', '0'),
(117, 'CLUB SODA/ TONIC', 3600, 'Beverages', 2, 17, '2017-03-01 20:00:04', 'images/Beverages.jpg', '0'),
(118, 'CHAMPAGNE', 1000, 'Beverages', 2, 17, '2017-03-01 20:00:04', 'images/Champagne.jpg', '0'),
(119, 'GIN', 1400, 'Beverages', 2, 17, '2017-03-01 20:00:04', 'images/Gin.jpg', '0'),
(120, 'JUICE', 80, 'Beverages', 2, 17, '2017-03-01 20:00:04', 'images/Juice.jpg', '0'),
(121, 'MIXERS', 140, 'Beverages', 2, 17, '2017-03-01 20:00:04', 'images/Champagne.jpg', '0'),
(122, 'RED WINE / WHITE WINE', 720, 'Beverages', 2, 17, '2017-03-01 20:00:04', 'images/Red wine / White wine.jpg', '0'),
(123, 'RUM', 650, 'Beverages', 2, 17, '2017-03-01 20:00:04', 'images/Rum.jpg', '0'),
(124, 'SAKE', 520, 'Beverages', 2, 17, '2017-03-01 20:00:04', 'images/Sake.jpg', '0'),
(125, 'SODA POP', 5500, 'Beverages', 2, 17, '2017-03-01 20:00:04', 'images/Soda pop.jpg', '0'),
(126, 'SPORTS DRINK', 250, 'Beverages', 2, 17, '2017-03-01 20:00:04', 'images/Sports drink.jpg', '0'),
(127, 'WHISKEY', 750, 'Beverages', 2, 17, '2017-03-01 20:00:04', 'images/Whiskey.jpg', '0'),
(128, 'VODKA', 1050, 'Beverages', 2, 17, '2017-03-01 20:00:04', 'images/Vodka.jpg', '0'),
(129, 'BLEU CHEESE', 600, 'Cheese', 2, 18, '2017-03-01 20:00:04', 'images/Bleu cheese.jpg', '0'),
(130, 'CHEDDAR', 555, 'Cheese', 2, 18, '2017-03-01 20:00:04', 'images/Cheddar.jpg', '0'),
(131, 'COTTAGE CHEESE', 900, 'Cheese', 2, 18, '2017-03-01 20:00:04', 'images/Cottage cheese.jpg', '0'),
(132, 'CREAM CHEESE', 150, 'Cheese', 2, 18, '2017-03-01 20:00:04', 'images/Cream cheese.jpg', '0'),
(133, 'FETA', 400, 'Cheese', 2, 18, '2017-03-01 20:00:04', 'images/Feta.jpg', '0'),
(134, 'GOAT CHEESE', 750, 'Cheese', 2, 18, '2017-03-01 20:00:04', 'images/Goat cheese.jpg', '0'),
(135, 'MOZZARELLA', 250, 'Cheese', 2, 18, '2017-03-01 20:00:04', 'images/Mozzarella.jpg', '0'),
(136, 'PARMESAN', 150, 'Cheese', 2, 18, '2017-03-01 20:00:04', 'images/Parmesan.jpg', '0'),
(137, 'PROVOLONE', 100, 'Cheese', 2, 18, '2017-03-01 20:00:04', 'images/Provolone.jpg', '0'),
(138, 'RICOTTA', 105, 'Cheese', 2, 18, '2017-03-01 20:00:04', 'images/Ricotta.jpg', '0'),
(139, 'SANDWICH SLICES', 150, 'Cheese', 3, 18, '2017-03-01 20:00:04', 'images/Sandwich slices.jpg', '0'),
(140, 'SWISS', 2000, 'Cheese', 3, 18, '2017-03-01 20:00:04', 'images/Swiss.jpg', '0'),
(141, 'BBQ SAUCE', 450, 'Condiments', 2, 19, '2017-03-01 20:00:04', 'images/BBQ sauce.jpg', '0'),
(142, 'GRAVY', 300, 'Condiments', 2, 19, '2017-03-01 20:00:04', 'images/Gravy.jpg', '0'),
(143, 'HONEY', 1550, 'Condiments', 3, 19, '2017-03-01 20:00:04', 'images/Honey.jpg', '0'),
(144, 'HOT SAUCE', 105, 'Condiments', 2, 19, '2017-03-01 20:00:04', 'images/Hot sauce.jpg', '0'),
(145, 'JAM / JELLY / PRESERVES', 500, 'Condiments', 3, 19, '2017-03-01 20:00:04', 'images/Jam / Jelly / Preserves.jpg', '0'),
(146, 'KETCHUP', 250, 'c', 0, 0, '2017-03-01 20:00:04', '', '0'),
(147, 'MAYONNAISE', 300, 'Condiments', 2, 19, '2017-03-01 20:00:04', 'images/Mayonnaise.jpg', '0'),
(148, 'PASTA SAUCE', 150, 'Condiments', 2, 19, '2017-03-01 20:00:04', 'images/Pasta sauce.jpg', '0'),
(149, 'SALSA', 25, 'Condiments', 2, 19, '2017-03-01 20:00:04', 'images/Salsa.jpg', '0'),
(150, 'SOY SAUCE', 70, 'Condiments', 2, 19, '2017-03-01 20:00:04', 'images/Soy sauce.jpg', '0'),
(155, 'KITKAT', 100, 'Chocalate', 5, 1, '2017-03-01 20:00:04', 'images/Kitkat.jpg', '0'),
(156, 'KITKAT', 100, 'Chocalate', 1, 1, '2017-03-01 20:00:04', 'images/abc.png', '0'),
(161, 'DAIRY MILK', 100, 'Chocolate', 3, 5, '2017-03-01 20:00:04', 'images/07_1467177523.jpg', '0'),
(162, 'DETTOL', 60, 'Cool', 5, 53, '2017-06-10 07:41:11', 'images/Dettol.jpg', '0'),
(163, 'DOVE', 150, 'Pink Color ', 5, 53, '2017-06-10 07:43:35', 'images/Dove.jpg', '0'),
(164, 'SAFEGUARD', 55, 'Pure White', 5, 53, '2017-06-10 07:45:45', 'images/safeguard.jpeg', '0'),
(165, 'LUX', 60, 'Pink Color Strawberry and Crea', 5, 53, '2017-06-10 07:47:58', 'images/Lux.jpg', '0'),
(166, 'LIFEBUOY', 50, 'Red Color better Germ Protecti', 5, 53, '2017-06-10 07:50:27', 'images/lifebuoy.png', '0'),
(167, 'LEMON MAX', 25, 'Green Color ', 5, 54, '2017-06-10 08:03:07', 'images/max.JPG', '0'),
(168, 'TIBET', 55, 'Extra Creamy And Beauty', 5, 53, '2017-06-10 08:05:13', 'images/tibet.png', '0'),
(169, 'CAPRI', 45, 'For Smooth and Soft Skin', 5, 53, '2017-06-10 08:07:37', 'images/capri.png', '0'),
(170, 'SUFI', 45, 'Special Quality Soap For Cloth', 5, 55, '2017-06-10 08:09:41', 'images/sufi.jpg', '0'),
(171, 'BRITE', 10, 'Mini Pack', 6, 56, '2017-06-10 08:25:09', 'images/brite mini.jpg', '0');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_DOB` date DEFAULT NULL,
  `cnic` varchar(15) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `user_phone` varchar(15) NOT NULL,
  `user_gender` varchar(10) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_status` int(11) DEFAULT NULL,
  `user_province` varchar(30) DEFAULT NULL,
  `user_district` varchar(30) DEFAULT NULL,
  `user_city` varchar(30) DEFAULT NULL,
  `user_tehsil` varchar(30) DEFAULT NULL,
  `user_comAddress` varchar(50) DEFAULT NULL,
  `user_img` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_DOB`, `cnic`, `password`, `user_phone`, `user_gender`, `user_type`, `user_date`, `user_status`, `user_province`, `user_district`, `user_city`, `user_tehsil`, `user_comAddress`, `user_img`) VALUES
(51, 'UBAID UR REHMAN', '1990-02-02', '1720103967797', 'qw', '03344246365', 'Male', 1, '2017-03-15 17:15:07', 1, 'KPK', 'NOWSHEHRAH', 'PABBI', 'PABBI', 'JAMIA ISLAMIA GT ROAD PABBI', 'images/'),
(52, 'HARIS LATIF', '1990-02-02', '13', 'Q', '328764821648612', '0', 2, '2017-03-22 05:34:51', 1, 'JHGGJK', 'KJHKLJH', 'KJKHKH', 'KJHKL', 'KHLKHJKL', 'images/IMG_2698.JPG'),
(53, 'DSAJFHKLSAHLK', '1990-02-02', '14', '1', '-1232321312312', '0', 1, '2017-03-31 10:50:22', 1, '', '', '', '', 'SDFHSAKHFLSKAJ', 'images/'),
(54, 'AHSAAN', '1990-02-02', '1234231782637', 'yuYU1234', '826134862193846', 'MALE', 1, '2017-03-21 14:26:12', 1, '', '', '', '', 'ISUAYFIUOASYFIUAS', 'images/'),
(55, 'Bilal Ahmad', '2017-03-01', '12', '1', '48310791', 'other', 3, '2017-03-22 06:29:11', 1, NULL, NULL, NULL, NULL, 'isahdiuash', NULL),
(58, 'MUBASHER', '1995-07-07', '1720103967797', '', '03008532211', 'MALE', 1, '2017-06-07 07:51:03', 1, 'PUNJAB', 'SHEIKHUPURA', 'SHEIKHUPURA', 'SHEIKHUPURA', 'SHEIKHUPURA', 'images/ARK_0388.jpg'),
(59, 'MUBASHER', '1995-07-07', '1720103967797', '', '03008532211', 'MALE', 1, '2017-06-07 07:57:20', 1, 'PUNJAB', 'SHEIKHUPURA', 'SHEIKHUPURA', 'SHEIKHUPURA', 'SHEIKHUPURA', 'images/ARK_0388.jpg'),
(60, 'MUBASHER', '1995-07-07', '1720103967797', '', '03008532211', 'MALE', 1, '2017-06-07 08:00:30', 1, 'PUNJAB', 'SHEIKHUPURA', 'SHEIKHUPURA', 'SHEIKHUPURA', 'SHEIKHUPURA', 'images/ARK_0388.jpg'),
(61, 'MUBUSHIR', '1995-07-07', '123456789', '', '03008532211', 'MALE', 1, '0000-00-00 00:00:00', 1, 'PUNJAB', 'SHEIKHUPURA', 'SHEIKHUPURA', 'SHEIKHUPURA', 'SHEIKHUPURA', 'images/ARK_0388.jpg'),
(62, 'MRMUBASHIR', '1995-07-07', '123456789', '', '03008532211', 'MALE', 1, '2017-06-06 19:00:00', 1, 'PUNJAB', 'SHEIKHUPURA', 'SHEIKHUPURA', 'SHEIKHUPURA', 'SHEIKHUPURA', 'images/ARK_0388.jpg'),
(64, 'MUBASHER', '1995-07-07', '', '', '03008532211', 'MALE', 1, '2017-06-07 05:18:09', 1, 'PUNJAB', 'SHEIKHUPURA', 'SKP', 'SKP', 'KDNFLKSDNFKLXDNFXDKF', 'images/DSC_0009.jpg'),
(65, 'MUBAS', '1995-07-07', '', '', '03008532211', 'MALE', 1, '2017-06-07 04:46:12', 1, 'PUNJAB', 'SHEIKHUPURA', 'SHEIKHUPURA', 'SHEIKHUPURA', 'SHEIKHUPURA', 'images/IMG-20160407-WA0008.jpg'),
(66, 'MUBASHER', '1995-07-07', '', '', '03008532211', 'MALE', 1, '2017-06-07 05:13:44', 1, 'PUNJAB', 'SHEIKHUPURA', 'SHEIKHUPURA', 'SHEIKHUPURA', 'SHEIKHUPURA', 'images/DSC_0009.jpg'),
(67, 'MUBASHER', '1995-07-07', '', '', '03008532211', 'MALE', 1, '2017-06-07 21:32:38', 1, 'PUNJAB', 'SHEIKHUPURA', 'SHEIKHUPURA', 'SHEIKHUPURA', 'SHEIKHUPURA', 'images/IMG-20160407-WA0008.jpg'),
(68, '', '0000-00-00', '', '', '00000000000', 'MALE', 1, '2017-06-07 21:38:27', 1, 'P', 'W', 'ED', 'DWE', 'EDWEFRE', 'images/IMG-20160407-WA0008.jpg'),
(69, 'ESDAFDSAFD', '2012-12-12', '', 'qwAS1234', '3242142134', 'MALE', 1, '2017-06-08 03:04:06', 1, '', '', '', '', 'DSAF', 'images/'),
(70, 'J', '0000-00-00', '9', '', '', 'MALE', 1, '2017-06-08 03:38:11', 1, '', '', '', '', 'N', 'images/'),
(71, 'MUBASHER', '1995-07-07', '1720103967797', 'Mr0000000000000', '03008532211', 'MALE', 1, '2017-06-08 07:01:42', 1, '', '', '', '', 'SHEIKHUPURA', NULL),
(72, 'MUBASHER', '1995-07-07', '7777777777777', 'Mr0000000000000', '03008532211', 'MALE', 1, '2017-06-08 04:03:06', 1, '', '', '', '', 'SHEIKHUPURA', NULL),
(73, 'MUBASHER', '1995-07-07', '1720103967797', 'Mr0000000000000', '03008532211', 'MALE', 1, '2017-06-08 04:06:24', 1, '', '', '', '', 'SHEIKHUPURA', NULL),
(74, 'MUBASHER', '1995-07-07', '1720103967797', 'Mr0000000000000', '03008532211', 'MALE', 1, '2017-06-08 04:14:53', 1, '', '', '', '', 'SHEIKHUPURA', NULL),
(75, 'MUBASHER', '1995-07-07', '1720103967797', 'Mr0000000000000', '00000000000', 'MALE', 1, '2017-06-08 04:17:57', 1, '', '', '', '', 'SHEIKHUPURA', NULL),
(76, 'MUBASHER', '1995-07-07', '1720103967797', 'Mr0000000000000', '00000000000', 'MALE', 1, '2017-06-08 04:25:06', 1, '', '', '', '', 'SHEIKHUPURA', NULL),
(77, 'MUBASHER', '1995-07-07', '1720103967797', 'Mr1111111111111', '03008532211', 'MALE', 1, '2017-06-08 04:28:04', 1, '', '', '', '', 'SHEIKHUPURA', 'images/ARK_0388.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`),
  ADD UNIQUE KEY `feedback_id` (`feedback_id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `order1`
--
ALTER TABLE `order1`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`orderItem_id`);

--
-- Indexes for table `packing`
--
ALTER TABLE `packing`
  ADD PRIMARY KEY (`packing_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `order1`
--
ALTER TABLE `order1`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `orderItem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
--
-- AUTO_INCREMENT for table `packing`
--
ALTER TABLE `packing`
  MODIFY `packing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
