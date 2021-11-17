-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2017 at 05:40 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bhai`
--

-- --------------------------------------------------------

--
-- Table structure for table `anomaly`
--

CREATE TABLE IF NOT EXISTS `anomaly` (
  `anomaly_id` int(11) NOT NULL,
  `anomaly_reason` varchar(45) DEFAULT NULL,
  `Anomaly_lossprice` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`category_id` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

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
(50, 'AZEEM INSAN', 0);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
`feedback_id` int(11) NOT NULL,
  `feedback_type` int(11) DEFAULT NULL,
  `feedback_description` varchar(45) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `bhai_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `rating` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `feedback_type`, `feedback_description`, `customer_id`, `bhai_id`, `order_id`, `rating`) VALUES
(1, 1, 'Delivery Boy is very Good', 51, 52, 55, 0),
(2, 1, 'Delivery Boy is very Fair', 51, 52, 53, 0),
(3, 1, 'Good', 51, 52, 61, 0);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
`log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `log_description` varchar(30) NOT NULL,
  `item_id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`log_id`, `user_id`, `log_description`, `item_id`, `time`) VALUES
(1, 55, 'added Product', 7, '2017-03-29 16:59:40'),
(2, 55, 'deleted Product', 1, '2017-03-29 16:59:40'),
(3, 55, 'Added Category', 1, '2017-03-29 17:04:40');

-- --------------------------------------------------------

--
-- Table structure for table `order1`
--

CREATE TABLE IF NOT EXISTS `order1` (
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order1`
--

INSERT INTO `order1` (`order_id`, `user_id`, `total_price`, `ordertime`, `order_status`, `order_deliverytime`, `bhai_id`, `ship_name`, `ship_gender`, `ship_phone`, `ship_address`) VALUES
(1, 33, 0, '2017-01-19 06:14:38', 0, NULL, 0, '', NULL, NULL, NULL),
(2, 33, 300, '2017-01-19 06:14:38', 0, NULL, 0, '', NULL, NULL, NULL),
(3, 33, 300, '2017-01-19 06:14:56', 0, NULL, 0, '', NULL, NULL, NULL),
(4, 33, 300, '2017-01-19 06:18:26', 1, NULL, 0, '', NULL, NULL, NULL),
(5, 23, 3500, '2017-01-19 06:29:54', 1, NULL, 0, '', NULL, NULL, NULL),
(6, 23, 3500, '2017-01-19 06:30:46', 1, NULL, 0, '', NULL, NULL, NULL),
(7, 33, 4100, '2017-01-19 06:34:37', 1, NULL, 0, '', NULL, NULL, NULL),
(8, 26, 7500, '2017-01-19 06:55:46', 1, NULL, 0, '', NULL, NULL, NULL),
(9, 26, 7900, '2017-01-19 06:58:41', 1, NULL, 0, '', NULL, NULL, NULL),
(10, 26, 8700, '2017-01-19 07:04:05', 1, NULL, 0, '', NULL, NULL, NULL),
(52, 51, 120, '2017-03-15 18:43:51', 0, NULL, 0, 'UBAID UR REHMAN', NULL, '2147483647', 'bahawalpur'),
(53, 51, 120, '2017-03-15 18:46:37', 1, '2017-03-08 15:07:07', 0, 'basheer paghal', NULL, '03344246365', 'lahore'),
(55, 51, 600, '2017-03-16 11:52:05', 0, NULL, 0, 'UBAID UR REHMAN', NULL, '03344246365', 'JAMIA ISLAMIA GT ROAD PABBI'),
(56, 12, 1000, '2017-03-20 13:09:44', 0, NULL, 0, 'ahsaan', NULL, '12321321312', 'aoidjopasjdosa'),
(57, 3, 20000, '2017-03-20 14:15:25', 0, NULL, 0, 'kaka khail', NULL, '234792', 'asdhcklsajd'),
(58, 4, 50000, '2017-03-20 14:39:07', 0, NULL, 0, 'fdhsah', NULL, '2873987', 'jwhfriuewhroorife'),
(59, 5, 32, '2017-03-20 14:46:27', 0, NULL, 0, 'sadfsafdas', NULL, '21421421', 'fdsafsadf'),
(60, 51, 1440, '2017-03-21 11:43:37', 0, NULL, 0, 'UBAID UR REHMAN', NULL, '03344246365', 'JAMIA ISLAMIA GT ROAD PABBI'),
(61, 51, 1440, '2017-03-21 11:53:40', 0, NULL, 52, 'UBAID UR REHMAN', NULL, '03344246365', 'JAMIA ISLAMIA GT ROAD PABBI'),
(62, 51, 30, '2017-03-29 10:33:46', 0, NULL, 52, 'UBAID UR REHMAN', NULL, '03344246365', 'JAMIA ISLAMIA GT ROAD PABBI'),
(63, 51, 150, '2017-06-11 10:47:55', 0, NULL, 0, 'UBAID UR REHMAN', NULL, '03344246365', 'JAMIA ISLAMIA GT ROAD PABBI');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE IF NOT EXISTS `orderitems` (
`orderItem_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;

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
(117, 8, 63, 2),
(118, 9, 63, 3);

-- --------------------------------------------------------

--
-- Table structure for table `packing`
--

CREATE TABLE IF NOT EXISTS `packing` (
`packing_id` int(11) NOT NULL,
  `packing_name` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packing`
--

INSERT INTO `packing` (`packing_id`, `packing_name`) VALUES
(2, 'TIN'),
(3, 'COTTON'),
(5, 'BOX');

-- --------------------------------------------------------

--
-- Table structure for table `prediction`
--

CREATE TABLE IF NOT EXISTS `prediction` (
`prediction_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` varchar(300) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prediction`
--

INSERT INTO `prediction` (`prediction_id`, `user_id`, `item_id`) VALUES
(1, 51, '8,9'),
(2, 53, '8'),
(3, 51, '100,200,300,400');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`product_id` int(11) NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `product_price` bigint(20) NOT NULL,
  `product_description` varchar(30) NOT NULL,
  `packing_type` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `img_src` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`, `product_description`, `packing_type`, `category_id`, `product_date`, `img_src`) VALUES
(7, 'CAULIFLOWERR', 50, 'Vegtable', 1, 1, '2017-03-01 20:00:04', 'images/'),
(8, 'CELERY', 30, 'Vegtable', 1, 7, '2017-03-01 20:00:04', 'images/Celery.jpg'),
(9, 'CORN', 30, 'Vegtable', 1, 7, '2017-03-01 20:00:04', 'images/Corn.jpg'),
(10, 'CUCUMBERS', 80, 'Vegtable', 1, 7, '2017-03-01 20:00:04', 'images/Cucumbers.jpg'),
(11, 'LETTUCE/GREENS', 80, 'Vegtable', 1, 7, '2017-03-01 20:00:04', 'images/Lettuce.jpg'),
(12, 'MUSHROOMS', 50, 'Vegtable', 1, 7, '2017-03-01 20:00:04', 'images/Mushrooms.jpg'),
(13, 'ONIONS', 65, 'Vegtable', 1, 7, '2017-03-01 20:00:04', 'images/Onions.jpg'),
(14, 'PEPPERS', 65, 'Vegtable', 1, 7, '2017-03-01 20:00:04', 'images/Peppers.jpg'),
(15, 'POTATOS', 80, 'Vegtable', 1, 7, '2017-03-01 20:00:04', 'images/potato.jpg'),
(16, 'SPINACH', 50, 'Vegtable', 1, 7, '2017-03-01 20:00:04', 'images/Spinach.jpg'),
(17, 'SQUASH', 90, 'Vegtable', 1, 7, '2017-03-01 20:00:04', 'images/Squash.jpg'),
(18, 'ZUCCHINI', 100, 'Vegtable', 1, 7, '2017-03-01 20:00:04', 'images/Zucchini.jpg'),
(19, 'TOMATOES', 65, 'Vegtable', 1, 7, '2017-03-01 20:00:04', 'images/Tomatoes.jpg'),
(20, 'APPLES', 80, 'Fresh Fruits', 1, 8, '2017-03-01 20:00:04', 'images/Apples.jpg'),
(21, 'AVOCADOS', 100, 'Fresh Fruits', 1, 8, '2017-03-01 20:00:04', 'images/Avocados.jpg'),
(22, 'BANANAS', 80, 'Fresh Fruits', 1, 8, '2017-03-01 20:00:04', 'images/Bananas.jpg'),
(23, 'BERRIES', 200, 'Fresh Fruits', 1, 8, '2017-03-01 20:00:04', 'images/Berries.jpg'),
(24, 'CHERRIES', 250, 'Fresh Fruits', 1, 8, '2017-03-01 20:00:04', 'images/Cherries.jpg'),
(25, 'GRAPEFRUIT', 100, 'Fresh Fruits', 1, 8, '2017-03-01 20:00:04', 'images/Grapefruit.jpg'),
(26, 'GRAPES', 200, 'Fresh Fruits', 1, 8, '2017-03-01 20:00:04', 'images/Grapes.jpg'),
(27, 'KIWIS', 300, 'Fresh Fruits', 1, 8, '2017-03-01 20:00:04', 'images/Kiwis.jpg'),
(28, 'LEMONS/LIMES', 350, 'Fresh Fruits', 1, 8, '2017-03-01 20:00:04', 'images/Lemons.jpg'),
(29, 'MELON', 200, 'Fresh Fruits', 1, 8, '2017-03-01 20:00:04', 'images/Melon.jpg'),
(30, 'NECTARINES', 50, 'Fresh Fruits', 1, 8, '2017-03-01 20:00:04', 'images/Nectarines.jpg'),
(31, 'ORANGES', 200, 'Fresh Fruits', 1, 8, '2017-03-01 20:00:04', 'images/Oranges.jpg'),
(32, 'PEACHES', 250, 'Fresh Fruits', 1, 8, '2017-03-01 20:00:04', 'images/Peaches.jpg'),
(33, 'PEARS', 250, 'Fresh Fruits', 1, 8, '2017-03-01 20:00:04', 'images/Pears.jpg'),
(34, 'PLUMS', 200, 'Fresh Fruits', 1, 8, '2017-03-01 20:00:04', 'images/Plums.jpg'),
(35, 'BACON', 250, 'Meat', 1, 9, '2017-03-01 20:00:04', 'images/Bacon.jpg'),
(36, 'BEEF', 150, 'Meat', 1, 9, '2017-03-01 20:00:04', 'images/Beef.jpg'),
(37, 'CHICKEN', 200, 'Me', 0, 0, '2017-03-01 20:00:04', ''),
(38, 'CHICKEN', 200, 'Meat', 1, 9, '2017-03-01 20:00:04', 'images/Chicken.jpg'),
(39, 'GROUND BEEF', 350, 'Meat', 1, 9, '2017-03-01 20:00:04', 'images/GroundBeef.jpg'),
(40, 'HAM', 130, 'Meat', 1, 9, '2017-03-01 20:00:04', 'images/Ham.jpg'),
(41, 'LUNCHMEAT', 360, 'Meat', 1, 9, '2017-03-01 20:00:04', 'images/Lunchmeat.jpg'),
(42, 'CDRS/DVDRS', 50, 'Office Supplies', 1, 10, '2017-03-01 20:00:04', 'images/CD.jpg'),
(45, 'NOTEPAD', 100, 'Office Supply', 2, 10, '2017-03-01 20:00:04', 'images/Notepad.jpg'),
(46, 'GLUE/TAPE', 20, 'Office Supply', 2, 10, '2017-03-01 20:00:04', 'images/Glue.jpg'),
(47, 'PRINTER PAPER', 250, 'Office Supply', 2, 10, '2017-03-01 20:00:04', 'images/PrinterPaper.jpg'),
(48, 'PENS', 50, 'Office Supply', 2, 10, '2017-03-01 20:00:04', 'images/Pens.jpg'),
(49, 'POSTAGE STAMPS', 100, 'Office Supply', 2, 10, '2017-03-01 20:00:04', 'images/Postage.jpg'),
(50, 'BAKING POWDER', 50, 'Baking', 3, 11, '2017-03-01 20:00:04', 'images/BakingPowder.jpg'),
(51, 'BUNS/ROLL', 20, 'Baking', 3, 11, '2017-03-01 20:00:04', 'images/Buns.jpg'),
(52, 'CAKE', 350, 'Baking', 3, 11, '2017-03-01 20:00:04', 'images/cake.jpg'),
(53, 'CHOCOLATE CHIPS', 50, 'Baking', 3, 11, '2017-03-01 20:00:04', 'images/ChocolateChips.jpg'),
(54, 'FLOUR', 800, 'Baking', 3, 11, '2017-03-01 20:00:04', 'images/Flour.jpg'),
(55, 'SHORTENING', 650, 'Baking', 3, 11, '2017-03-01 20:00:04', 'images/Shortening.jpg'),
(56, 'SUGAR', 70, 'Baking', 1, 11, '2017-03-01 20:00:04', 'images/Sugar.jpg'),
(57, 'SUGAR SUBSTITUTE', 130, 'Baking', 3, 11, '2017-03-01 20:00:04', 'images/SugarSubstitute.jpg'),
(58, 'YEAST', 120, 'Baking', 3, 11, '2017-03-01 20:00:04', 'images/Yeast.jpg'),
(59, 'Â· ANTIPERSPIRANT/DEODORANT', 500, 'Personal Care', 2, 12, '2017-03-01 20:00:04', 'images/Â· Antiperspirant/Deodorant.jpg'),
(60, 'BATH SOAP', 50, 'Personal Care', 2, 12, '2017-03-01 20:00:04', 'images/Bath soap.jpg'),
(61, 'CONDOMS', 100, 'Personal Care', 3, 12, '2017-03-01 20:00:04', 'images/Condom.jpg'),
(62, 'COSMETICS', 250, 'Personal Care', 3, 12, '2017-03-01 20:00:04', 'images/Cosmetics.jpg'),
(63, 'COTTON SWABS', 320, 'Personal Care', 2, 12, '2017-03-01 20:00:04', 'images/Cotton Swabs.jpg'),
(64, 'FACIAL CLEANSER', 350, 'Personal Care', 3, 12, '2017-03-01 20:00:04', 'images/Facial Cleanser.jpg'),
(65, 'FACIAL TISSUE', 180, 'Personal Care', 3, 12, '2017-03-01 20:00:04', 'images/Facial Tissue.jpg'),
(66, 'FEMINIME PRODUCTS', 750, 'Personal Care', 3, 12, '2017-03-01 20:00:04', 'images/Facial Tissue.jpg'),
(67, 'FLOSS', 200, 'Personal Care', 2, 12, '2017-03-01 20:00:04', 'images/Floss.jpg'),
(68, 'HAIR GEL', 250, 'Personal Care', 2, 12, '2017-03-01 20:00:04', 'images/Floss.jpg'),
(69, 'LIP BALM', 120, 'Personal Care', 2, 12, '2017-03-01 20:00:04', 'images/Lip balm.jpg'),
(70, 'MOISTURIZING LOTION', 180, 'Personal Care', 2, 12, '2017-03-01 20:00:04', 'images/Moisturizing lotion.jpg'),
(71, 'MOUTHWASH', 80, 'Personal Care', 2, 12, '2017-03-01 20:00:04', 'images/Mouthwash.jpg'),
(72, 'RAZORS /SHAVING CREAM', 500, 'Personal Care', 3, 12, '2017-03-01 20:00:04', 'images/Razors /Shaving cream.jpg'),
(73, 'SHAMPOO/CONDITIONER', 400, 'Personal Care', 3, 12, '2017-03-01 20:00:04', 'images/Shampoo/Conditioner.jpg'),
(74, 'SUNBLOCK', 300, 'Personal Care', 2, 12, '2017-03-01 20:00:04', 'images/Sunblock.jpg'),
(75, 'TOILET PAPER', 50, 'Personal Care', 2, 12, '2017-03-01 20:00:04', 'images/Toilet paper.jpg'),
(76, 'TOOTHPASTE', 100, 'Personal Care', 2, 12, '2017-03-01 20:00:04', 'images/Toothpaste.jpg'),
(77, 'VITAMINS/SUPPLEMENTS', 3000, 'Personal Care', 2, 12, '2017-03-01 20:00:04', 'images/Vitamins/Supplements.jpg'),
(78, 'BUTTER / MARGARINE', 580, 'Dairy', 2, 13, '2017-03-01 20:00:04', 'images/Butter / Margarine.jpg'),
(79, 'COTTAGE CHEESE', 750, 'Dairy', 2, 13, '2017-03-01 20:00:04', 'images/Cottage cheese.jpg'),
(80, 'HALF & HALF', 120, 'Dairy', 2, 13, '2017-03-01 20:00:04', 'images/Half & half.jpg'),
(81, 'MILK', 100, 'Dairy', 1, 13, '2017-03-01 20:00:04', 'images/Milk.jpg'),
(82, 'SOUR CREAM', 320, 'Dairy', 1, 13, '2017-03-01 20:00:04', 'images/Sour cream.jpg'),
(83, 'WHIPPED CREAM', 420, 'Dairy', 2, 13, '2017-03-01 20:00:04', 'images/Sour cream.jpg'),
(84, 'YOGURT', 120, 'Dairy', 1, 13, '2017-03-01 20:00:04', 'images/Yogurt.jpg'),
(85, 'ALLERGY', 20, 'Medicine', 2, 14, '2017-03-01 20:00:04', 'images/Allergy.jpg'),
(86, 'ANTIBIOTIC', 230, 'Medicine', 2, 14, '2017-03-01 20:00:04', 'images/Antibiotic.jpg'),
(87, 'ANTIDIARRHEAL', 190, 'Medicine', 2, 14, '2017-03-01 20:00:04', 'images/Antidiarrheal.jpg'),
(88, 'ASPIRIN', 40, 'Medicine', 2, 14, '2017-03-01 20:00:04', 'images/Aspirin.jpg'),
(89, 'BAND-AIDS', 1400, 'Medicine', 2, 14, '2017-03-01 20:00:04', 'images/Band-aids.jpg'),
(90, 'COLD / FLU / SINUS', 60, 'Medicine', 2, 14, '2017-03-01 20:00:04', 'images/Cold / Flu / Sinus.jpg'),
(91, 'PAIN RELIEVER', 110, 'Medicine', 0, 0, '2017-03-01 20:00:04', ''),
(92, 'PRESCRIPTION PICK UP', 200, 'Medicine', 2, 14, '2017-03-01 20:00:04', 'images/Prescription pick up.jpg'),
(93, 'APPLESAUCE', 200, 'Canned Food', 2, 15, '2017-03-01 20:00:04', 'images/Applesauce.jpg'),
(94, 'BAKED BEANS', 170, 'Canned Food', 2, 15, '2017-03-01 20:00:04', 'images/Applesauce.jpg'),
(95, 'BROTH', 200, 'Canned Food', 2, 15, '2017-03-01 20:00:04', 'images/Broth.jpg'),
(96, 'FRUIT', 250, 'Canned Food', 2, 15, '2017-03-01 20:00:04', 'images/Fruit.jpg'),
(97, 'OLIVES', 240, 'Canned Food', 2, 15, '2017-03-01 20:00:04', 'images/Olives.jpg'),
(98, 'TINNED MEATS', 600, 'Canned Food', 2, 15, '2017-03-01 20:00:04', 'images/Tinned meats.jpg'),
(99, 'TUNA / CHICKEN', 350, 'Canned Food', 2, 15, '2017-03-01 20:00:04', 'images/Tuna / Chicken.jpg'),
(100, 'SOUP / CHILI', 90, 'Canned Food', 2, 15, '2017-03-01 20:00:04', 'images/Soup / Chili.jpg'),
(101, 'TOMATOES', 60, 'Canned Food', 3, 15, '2017-03-01 20:00:04', 'images/Tomatoes.jpg'),
(102, 'VEGGIES', 140, 'Canned Food', 2, 15, '2017-03-01 20:00:04', 'images/Veggies.jpg'),
(103, 'BASIL', 120, 'Spices & Herbs', 2, 16, '2017-03-01 20:00:04', 'images/Basil.jpg'),
(104, 'BLACK PEPPER', 60, 'Spices & Herbs', 2, 16, '2017-03-01 20:00:04', 'images/Black pepper.jpg'),
(105, 'CILANTRO', 45, 'Spices & Herbs', 2, 16, '2017-03-01 20:00:04', 'images/Cilantro.jpg'),
(106, 'CINNAMON', 900, 'Spices & Herbs', 2, 16, '2017-03-01 20:00:04', 'images/Cinnamon.jpg'),
(107, 'GARLIC', 250, 'Spices & Herbs', 1, 16, '2017-03-01 20:00:04', 'images/Garlic.jpg'),
(108, 'GINGER', 60, 'Spices & Herbs', 1, 16, '2017-03-01 20:00:04', 'images/Ginger.jpg'),
(109, 'MINT', 90, 'Spices & Herbs', 1, 16, '2017-03-01 20:00:04', 'images/Mint.jpg'),
(110, 'OREGANO', 70, 'Spices & Herbs', 1, 16, '2017-03-01 20:00:04', 'images/Oregano.jpg'),
(111, 'PAPRIKA', 70, 'Spices & Herbs', 1, 16, '2017-03-01 20:00:04', 'images/Paprika.jpg'),
(112, 'PARSLEY', 190, 'Spices & Herbs', 1, 16, '2017-03-01 20:00:04', 'images/Parsley.jpg'),
(113, 'RED PEPPER', 250, 'Spices & Herbs', 1, 16, '2017-03-01 20:00:04', 'images/Red pepper.jpg'),
(114, 'SALT', 90, 'Spices & Herbs', 1, 16, '2017-03-01 20:00:04', 'images/Salt.jpg'),
(115, 'VANILLA EXTRACT', 255, 'Spices & Herbs', 1, 16, '2017-03-01 20:00:04', 'images/Vanilla extract.jpg'),
(116, 'BEER', 800, 'Beverages', 2, 17, '2017-03-01 20:00:04', 'images/Beer.jpg'),
(117, 'CLUB SODA/ TONIC', 3600, 'Beverages', 2, 17, '2017-03-01 20:00:04', 'images/Beverages.jpg'),
(118, 'CHAMPAGNE', 1000, 'Beverages', 2, 17, '2017-03-01 20:00:04', 'images/Champagne.jpg'),
(119, 'GIN', 1400, 'Beverages', 2, 17, '2017-03-01 20:00:04', 'images/Gin.jpg'),
(120, 'JUICE', 80, 'Beverages', 2, 17, '2017-03-01 20:00:04', 'images/Juice.jpg'),
(121, 'MIXERS', 140, 'Beverages', 2, 17, '2017-03-01 20:00:04', 'images/Champagne.jpg'),
(122, 'RED WINE / WHITE WINE', 720, 'Beverages', 2, 17, '2017-03-01 20:00:04', 'images/Red wine / White wine.jpg'),
(123, 'RUM', 650, 'Beverages', 2, 17, '2017-03-01 20:00:04', 'images/Rum.jpg'),
(124, 'SAKE', 520, 'Beverages', 2, 17, '2017-03-01 20:00:04', 'images/Sake.jpg'),
(125, 'SODA POP', 5500, 'Beverages', 2, 17, '2017-03-01 20:00:04', 'images/Soda pop.jpg'),
(126, 'SPORTS DRINK', 250, 'Beverages', 2, 17, '2017-03-01 20:00:04', 'images/Sports drink.jpg'),
(127, 'WHISKEY', 750, 'Beverages', 2, 17, '2017-03-01 20:00:04', 'images/Whiskey.jpg'),
(128, 'VODKA', 1050, 'Beverages', 2, 17, '2017-03-01 20:00:04', 'images/Vodka.jpg'),
(129, 'BLEU CHEESE', 600, 'Cheese', 2, 18, '2017-03-01 20:00:04', 'images/Bleu cheese.jpg'),
(130, 'CHEDDAR', 555, 'Cheese', 2, 18, '2017-03-01 20:00:04', 'images/Cheddar.jpg'),
(131, 'COTTAGE CHEESE', 900, 'Cheese', 2, 18, '2017-03-01 20:00:04', 'images/Cottage cheese.jpg'),
(132, 'CREAM CHEESE', 150, 'Cheese', 2, 18, '2017-03-01 20:00:04', 'images/Cream cheese.jpg'),
(133, 'FETA', 400, 'Cheese', 2, 18, '2017-03-01 20:00:04', 'images/Feta.jpg'),
(134, 'GOAT CHEESE', 750, 'Cheese', 2, 18, '2017-03-01 20:00:04', 'images/Goat cheese.jpg'),
(135, 'MOZZARELLA', 250, 'Cheese', 2, 18, '2017-03-01 20:00:04', 'images/Mozzarella.jpg'),
(136, 'PARMESAN', 150, 'Cheese', 2, 18, '2017-03-01 20:00:04', 'images/Parmesan.jpg'),
(137, 'PROVOLONE', 100, 'Cheese', 2, 18, '2017-03-01 20:00:04', 'images/Provolone.jpg'),
(138, 'RICOTTA', 105, 'Cheese', 2, 18, '2017-03-01 20:00:04', 'images/Ricotta.jpg'),
(139, 'SANDWICH SLICES', 150, 'Cheese', 3, 18, '2017-03-01 20:00:04', 'images/Sandwich slices.jpg'),
(140, 'SWISS', 2000, 'Cheese', 3, 18, '2017-03-01 20:00:04', 'images/Swiss.jpg'),
(141, 'BBQ SAUCE', 450, 'Condiments', 2, 19, '2017-03-01 20:00:04', 'images/BBQ sauce.jpg'),
(142, 'GRAVY', 300, 'Condiments', 2, 19, '2017-03-01 20:00:04', 'images/Gravy.jpg'),
(143, 'HONEY', 1550, 'Condiments', 3, 19, '2017-03-01 20:00:04', 'images/Honey.jpg'),
(144, 'HOT SAUCE', 105, 'Condiments', 2, 19, '2017-03-01 20:00:04', 'images/Hot sauce.jpg'),
(145, 'JAM / JELLY / PRESERVES', 500, 'Condiments', 3, 19, '2017-03-01 20:00:04', 'images/Jam / Jelly / Preserves.jpg'),
(146, 'KETCHUP', 250, 'c', 0, 0, '2017-03-01 20:00:04', ''),
(147, 'MAYONNAISE', 300, 'Condiments', 2, 19, '2017-03-01 20:00:04', 'images/Mayonnaise.jpg'),
(148, 'PASTA SAUCE', 150, 'Condiments', 2, 19, '2017-03-01 20:00:04', 'images/Pasta sauce.jpg'),
(149, 'SALSA', 25, 'Condiments', 2, 19, '2017-03-01 20:00:04', 'images/Salsa.jpg'),
(150, 'SOY SAUCE', 70, 'Condiments', 2, 19, '2017-03-01 20:00:04', 'images/Soy sauce.jpg'),
(155, 'KITKAT', 100, 'Chocalate', 5, 1, '2017-03-01 20:00:04', 'images/Kitkat.jpg'),
(156, 'KITKAT', 100, 'Chocalate', 1, 1, '2017-03-01 20:00:04', 'images/abc.png'),
(161, 'DAIRY MILK', 100, 'Chocolate', 3, 5, '2017-03-01 20:00:04', 'images/07_1467177523.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE IF NOT EXISTS `rating` (
`rating_id` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `itemID` int(11) NOT NULL,
  `ratingValue` float DEFAULT NULL,
  `datetimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=726 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`rating_id`, `userID`, `itemID`, `ratingValue`, `datetimestamp`) VALUES
(1, 51, 7, 4, '2017-06-09 13:37:57'),
(2, 51, 8, 4.5, '2017-06-09 13:40:40'),
(3, 51, 9, 3.5, '2017-06-09 09:51:06'),
(4, 51, 10, 4.5, '2017-06-09 09:51:17'),
(5, 51, 11, 2.5, '2017-06-09 09:51:26'),
(6, 51, 12, 5, '2017-06-07 15:10:54'),
(7, 51, 13, NULL, '2017-06-06 08:08:36'),
(8, 51, 14, NULL, '2017-06-06 08:08:36'),
(9, 51, 15, NULL, '2017-06-06 08:08:36'),
(10, 51, 16, NULL, '2017-06-06 08:08:36'),
(11, 51, 17, NULL, '2017-06-06 08:08:36'),
(12, 51, 18, NULL, '2017-06-06 08:08:36'),
(13, 51, 19, NULL, '2017-06-06 08:08:36'),
(14, 51, 20, NULL, '2017-06-06 08:08:36'),
(15, 51, 21, NULL, '2017-06-06 08:08:36'),
(16, 51, 22, NULL, '2017-06-06 08:08:36'),
(17, 51, 23, NULL, '2017-06-06 08:08:37'),
(18, 51, 24, NULL, '2017-06-06 08:08:37'),
(19, 51, 25, NULL, '2017-06-06 08:08:37'),
(20, 51, 26, NULL, '2017-06-06 08:08:37'),
(21, 51, 27, NULL, '2017-06-06 08:08:37'),
(22, 51, 28, NULL, '2017-06-06 08:08:37'),
(23, 51, 29, NULL, '2017-06-06 08:08:37'),
(24, 51, 30, NULL, '2017-06-06 08:08:37'),
(25, 51, 31, NULL, '2017-06-06 08:08:37'),
(26, 51, 32, NULL, '2017-06-06 08:08:37'),
(27, 51, 33, NULL, '2017-06-06 08:08:37'),
(28, 51, 34, NULL, '2017-06-06 08:08:37'),
(29, 51, 35, NULL, '2017-06-06 08:08:37'),
(30, 51, 36, NULL, '2017-06-06 08:08:37'),
(31, 51, 37, NULL, '2017-06-06 08:08:37'),
(32, 51, 38, NULL, '2017-06-06 08:08:37'),
(33, 51, 39, NULL, '2017-06-06 08:08:37'),
(34, 51, 40, NULL, '2017-06-06 08:08:37'),
(35, 51, 41, NULL, '2017-06-06 08:08:37'),
(36, 51, 42, NULL, '2017-06-06 08:08:37'),
(37, 51, 45, NULL, '2017-06-06 08:08:37'),
(38, 51, 46, NULL, '2017-06-06 08:08:38'),
(39, 51, 47, NULL, '2017-06-06 08:08:38'),
(40, 51, 48, NULL, '2017-06-06 08:08:38'),
(41, 51, 49, NULL, '2017-06-06 08:08:38'),
(42, 51, 50, NULL, '2017-06-06 08:08:38'),
(43, 51, 51, NULL, '2017-06-06 08:08:38'),
(44, 51, 52, NULL, '2017-06-06 08:08:38'),
(45, 51, 53, NULL, '2017-06-06 08:08:38'),
(46, 51, 54, NULL, '2017-06-06 08:08:38'),
(47, 51, 55, NULL, '2017-06-06 08:08:38'),
(48, 51, 56, NULL, '2017-06-06 08:08:38'),
(49, 51, 57, NULL, '2017-06-06 08:08:38'),
(50, 51, 58, NULL, '2017-06-06 08:08:38'),
(51, 51, 59, NULL, '2017-06-06 08:08:38'),
(52, 51, 60, NULL, '2017-06-06 08:08:38'),
(53, 51, 61, NULL, '2017-06-06 08:08:38'),
(54, 51, 62, NULL, '2017-06-06 08:08:38'),
(55, 51, 63, NULL, '2017-06-06 08:08:38'),
(56, 51, 64, NULL, '2017-06-06 08:08:38'),
(57, 51, 65, NULL, '2017-06-06 08:08:38'),
(58, 51, 66, NULL, '2017-06-06 08:08:38'),
(59, 51, 67, NULL, '2017-06-06 08:08:38'),
(60, 51, 68, NULL, '2017-06-06 08:08:39'),
(61, 51, 69, NULL, '2017-06-06 08:08:39'),
(62, 51, 70, NULL, '2017-06-06 08:08:39'),
(63, 51, 71, NULL, '2017-06-06 08:08:39'),
(64, 51, 72, NULL, '2017-06-06 08:08:39'),
(65, 51, 73, NULL, '2017-06-06 08:08:39'),
(66, 51, 74, NULL, '2017-06-06 08:08:39'),
(67, 51, 75, NULL, '2017-06-06 08:08:39'),
(68, 51, 76, NULL, '2017-06-06 08:08:39'),
(69, 51, 77, NULL, '2017-06-06 08:08:39'),
(70, 51, 78, NULL, '2017-06-06 08:08:39'),
(71, 51, 79, NULL, '2017-06-06 08:08:39'),
(72, 51, 80, NULL, '2017-06-06 08:08:39'),
(73, 51, 81, NULL, '2017-06-06 08:08:39'),
(74, 51, 82, NULL, '2017-06-06 08:08:39'),
(75, 51, 83, NULL, '2017-06-06 08:08:39'),
(76, 51, 84, NULL, '2017-06-06 12:12:57'),
(77, 51, 85, NULL, '2017-06-06 08:08:39'),
(78, 51, 86, NULL, '2017-06-06 08:08:39'),
(79, 51, 87, NULL, '2017-06-06 08:08:39'),
(80, 51, 88, NULL, '2017-06-06 08:08:39'),
(81, 51, 89, NULL, '2017-06-06 08:08:39'),
(82, 51, 90, NULL, '2017-06-06 08:08:39'),
(83, 51, 91, NULL, '2017-06-06 08:08:40'),
(84, 51, 92, NULL, '2017-06-06 08:08:40'),
(85, 51, 93, NULL, '2017-06-06 08:08:40'),
(86, 51, 94, NULL, '2017-06-06 08:08:40'),
(87, 51, 95, NULL, '2017-06-06 08:08:40'),
(88, 51, 96, NULL, '2017-06-06 08:08:40'),
(89, 51, 97, NULL, '2017-06-06 08:08:40'),
(90, 51, 98, NULL, '2017-06-06 08:08:40'),
(91, 51, 99, NULL, '2017-06-06 08:08:40'),
(92, 51, 100, NULL, '2017-06-06 08:08:40'),
(93, 51, 101, NULL, '2017-06-06 08:08:40'),
(94, 51, 102, NULL, '2017-06-06 08:08:40'),
(95, 51, 103, NULL, '2017-06-06 08:08:40'),
(96, 51, 104, NULL, '2017-06-06 08:08:40'),
(97, 51, 105, NULL, '2017-06-06 08:08:40'),
(98, 51, 106, NULL, '2017-06-06 08:08:40'),
(99, 51, 107, NULL, '2017-06-06 08:08:40'),
(100, 51, 108, NULL, '2017-06-06 08:08:40'),
(101, 51, 109, NULL, '2017-06-06 08:08:40'),
(102, 51, 110, NULL, '2017-06-06 08:08:41'),
(103, 51, 111, NULL, '2017-06-06 08:08:41'),
(104, 51, 112, NULL, '2017-06-06 08:08:41'),
(105, 51, 113, NULL, '2017-06-06 08:08:41'),
(106, 51, 114, NULL, '2017-06-06 08:08:41'),
(107, 51, 115, NULL, '2017-06-06 08:08:41'),
(108, 51, 116, NULL, '2017-06-06 08:08:41'),
(109, 51, 117, NULL, '2017-06-06 08:08:41'),
(110, 51, 118, NULL, '2017-06-06 08:08:41'),
(111, 51, 119, NULL, '2017-06-06 08:08:41'),
(112, 51, 120, NULL, '2017-06-06 08:08:41'),
(113, 51, 121, NULL, '2017-06-06 08:08:41'),
(114, 51, 122, NULL, '2017-06-06 08:08:42'),
(115, 51, 123, NULL, '2017-06-06 08:08:42'),
(116, 51, 124, NULL, '2017-06-06 08:08:42'),
(117, 51, 125, NULL, '2017-06-06 08:08:42'),
(118, 51, 126, NULL, '2017-06-06 08:08:42'),
(119, 51, 127, NULL, '2017-06-06 08:08:42'),
(120, 51, 128, NULL, '2017-06-06 08:08:42'),
(121, 51, 129, NULL, '2017-06-06 08:08:42'),
(122, 51, 130, NULL, '2017-06-06 08:08:42'),
(123, 51, 131, NULL, '2017-06-06 08:08:42'),
(124, 51, 132, NULL, '2017-06-06 08:08:42'),
(125, 51, 133, NULL, '2017-06-06 08:08:42'),
(126, 51, 134, NULL, '2017-06-06 08:08:42'),
(127, 51, 135, NULL, '2017-06-06 08:08:43'),
(128, 51, 136, NULL, '2017-06-06 08:08:43'),
(129, 51, 137, NULL, '2017-06-06 08:08:43'),
(130, 51, 138, NULL, '2017-06-06 08:08:43'),
(131, 51, 139, NULL, '2017-06-06 08:08:43'),
(132, 51, 140, NULL, '2017-06-06 08:08:43'),
(133, 51, 141, NULL, '2017-06-06 08:08:43'),
(134, 51, 142, NULL, '2017-06-06 08:08:43'),
(135, 51, 143, NULL, '2017-06-06 08:08:43'),
(136, 51, 144, NULL, '2017-06-06 08:08:43'),
(137, 51, 145, NULL, '2017-06-06 08:08:43'),
(138, 51, 146, NULL, '2017-06-06 08:08:43'),
(139, 51, 147, NULL, '2017-06-06 08:08:43'),
(140, 51, 148, NULL, '2017-06-06 08:08:43'),
(141, 51, 149, NULL, '2017-06-06 08:08:43'),
(142, 51, 150, NULL, '2017-06-06 08:08:43'),
(143, 51, 155, NULL, '2017-06-06 08:08:43'),
(144, 51, 156, NULL, '2017-06-06 08:08:43'),
(145, 51, 161, NULL, '2017-06-06 08:08:43'),
(146, 52, 7, 3, '2017-06-06 08:10:19'),
(147, 52, 8, 5, '2017-06-06 08:10:19'),
(148, 52, 9, 2, '2017-06-06 08:10:19'),
(149, 52, 10, 4.5, '2017-06-07 07:17:52'),
(150, 52, 11, 5, '2017-06-09 13:43:08'),
(151, 52, 12, 4, '2017-06-09 13:43:46'),
(152, 52, 13, NULL, '2017-06-06 08:08:44'),
(153, 52, 14, NULL, '2017-06-06 08:08:44'),
(154, 52, 15, 4, '2017-06-08 14:03:09'),
(155, 52, 16, NULL, '2017-06-06 08:08:44'),
(156, 52, 17, NULL, '2017-06-06 08:08:44'),
(157, 52, 18, NULL, '2017-06-06 08:08:44'),
(158, 52, 19, NULL, '2017-06-06 08:08:44'),
(159, 52, 20, NULL, '2017-06-06 08:08:44'),
(160, 52, 21, NULL, '2017-06-06 08:08:44'),
(161, 52, 22, NULL, '2017-06-06 08:08:44'),
(162, 52, 23, NULL, '2017-06-06 08:08:44'),
(163, 52, 24, NULL, '2017-06-06 08:08:44'),
(164, 52, 25, NULL, '2017-06-06 08:08:44'),
(165, 52, 26, NULL, '2017-06-06 08:08:44'),
(166, 52, 27, NULL, '2017-06-06 08:08:44'),
(167, 52, 28, NULL, '2017-06-06 08:08:44'),
(168, 52, 29, NULL, '2017-06-06 08:08:44'),
(169, 52, 30, NULL, '2017-06-06 08:08:44'),
(170, 52, 31, NULL, '2017-06-06 08:08:45'),
(171, 52, 32, NULL, '2017-06-06 08:08:45'),
(172, 52, 33, NULL, '2017-06-06 08:08:45'),
(173, 52, 34, NULL, '2017-06-06 08:08:45'),
(174, 52, 35, NULL, '2017-06-06 08:08:45'),
(175, 52, 36, NULL, '2017-06-06 08:08:45'),
(176, 52, 37, NULL, '2017-06-06 08:08:45'),
(177, 52, 38, NULL, '2017-06-06 08:08:45'),
(178, 52, 39, NULL, '2017-06-06 08:08:45'),
(179, 52, 40, NULL, '2017-06-06 08:08:45'),
(180, 52, 41, NULL, '2017-06-06 08:08:45'),
(181, 52, 42, NULL, '2017-06-06 08:08:45'),
(182, 52, 45, NULL, '2017-06-06 08:08:45'),
(183, 52, 46, NULL, '2017-06-06 08:08:45'),
(184, 52, 47, NULL, '2017-06-06 08:08:45'),
(185, 52, 48, NULL, '2017-06-06 08:08:45'),
(186, 52, 49, NULL, '2017-06-06 08:08:45'),
(187, 52, 50, NULL, '2017-06-06 08:08:45'),
(188, 52, 51, NULL, '2017-06-06 08:08:45'),
(189, 52, 52, NULL, '2017-06-06 08:08:45'),
(190, 52, 53, NULL, '2017-06-06 08:08:46'),
(191, 52, 54, NULL, '2017-06-06 08:08:46'),
(192, 52, 55, NULL, '2017-06-06 08:08:46'),
(193, 52, 56, NULL, '2017-06-06 08:08:46'),
(194, 52, 57, NULL, '2017-06-06 08:08:46'),
(195, 52, 58, NULL, '2017-06-06 08:08:46'),
(196, 52, 59, NULL, '2017-06-06 08:08:46'),
(197, 52, 60, NULL, '2017-06-06 08:08:46'),
(198, 52, 61, NULL, '2017-06-06 08:08:46'),
(199, 52, 62, NULL, '2017-06-06 08:08:46'),
(200, 52, 63, NULL, '2017-06-06 08:08:46'),
(201, 52, 64, NULL, '2017-06-06 08:08:46'),
(202, 52, 65, NULL, '2017-06-06 08:08:46'),
(203, 52, 66, NULL, '2017-06-06 08:08:46'),
(204, 52, 67, NULL, '2017-06-06 08:08:46'),
(205, 52, 68, NULL, '2017-06-06 08:08:46'),
(206, 52, 69, NULL, '2017-06-06 08:08:46'),
(207, 52, 70, NULL, '2017-06-06 08:08:47'),
(208, 52, 71, NULL, '2017-06-06 08:08:47'),
(209, 52, 72, NULL, '2017-06-06 08:08:47'),
(210, 52, 73, NULL, '2017-06-06 08:08:47'),
(211, 52, 74, NULL, '2017-06-06 08:08:47'),
(212, 52, 75, NULL, '2017-06-06 08:08:47'),
(213, 52, 76, NULL, '2017-06-06 08:08:47'),
(214, 52, 77, NULL, '2017-06-06 08:08:47'),
(215, 52, 78, NULL, '2017-06-06 08:08:47'),
(216, 52, 79, NULL, '2017-06-06 08:08:47'),
(217, 52, 80, NULL, '2017-06-06 08:08:47'),
(218, 52, 81, NULL, '2017-06-06 08:08:47'),
(219, 52, 82, NULL, '2017-06-06 08:08:47'),
(220, 52, 83, NULL, '2017-06-06 08:08:47'),
(221, 52, 84, 5, '2017-06-07 15:12:17'),
(222, 52, 85, NULL, '2017-06-06 08:08:47'),
(223, 52, 86, NULL, '2017-06-06 08:08:47'),
(224, 52, 87, NULL, '2017-06-06 08:08:47'),
(225, 52, 88, NULL, '2017-06-06 08:08:48'),
(226, 52, 89, NULL, '2017-06-06 08:08:48'),
(227, 52, 90, NULL, '2017-06-06 08:08:48'),
(228, 52, 91, NULL, '2017-06-06 08:08:48'),
(229, 52, 92, NULL, '2017-06-06 08:08:48'),
(230, 52, 93, NULL, '2017-06-06 08:08:48'),
(231, 52, 94, NULL, '2017-06-06 08:08:48'),
(232, 52, 95, NULL, '2017-06-06 08:08:48'),
(233, 52, 96, NULL, '2017-06-06 08:08:48'),
(234, 52, 97, NULL, '2017-06-06 08:08:48'),
(235, 52, 98, NULL, '2017-06-06 08:08:48'),
(236, 52, 99, NULL, '2017-06-06 08:08:48'),
(237, 52, 100, NULL, '2017-06-06 08:08:48'),
(238, 52, 101, NULL, '2017-06-06 08:08:48'),
(239, 52, 102, NULL, '2017-06-06 08:08:48'),
(240, 52, 103, NULL, '2017-06-06 08:08:48'),
(241, 52, 104, NULL, '2017-06-06 08:08:48'),
(242, 52, 105, NULL, '2017-06-06 08:08:48'),
(243, 52, 106, NULL, '2017-06-06 08:08:48'),
(244, 52, 107, NULL, '2017-06-06 08:08:48'),
(245, 52, 108, NULL, '2017-06-06 08:08:48'),
(246, 52, 109, NULL, '2017-06-06 08:08:48'),
(247, 52, 110, 5, '2017-06-06 15:12:41'),
(248, 52, 111, NULL, '2017-06-06 08:08:49'),
(249, 52, 112, NULL, '2017-06-06 08:08:49'),
(250, 52, 113, NULL, '2017-06-06 08:08:49'),
(251, 52, 114, NULL, '2017-06-06 08:08:49'),
(252, 52, 115, NULL, '2017-06-06 08:08:49'),
(253, 52, 116, NULL, '2017-06-06 08:08:49'),
(254, 52, 117, NULL, '2017-06-06 08:08:49'),
(255, 52, 118, NULL, '2017-06-06 08:08:49'),
(256, 52, 119, NULL, '2017-06-06 08:08:49'),
(257, 52, 120, NULL, '2017-06-06 08:08:49'),
(258, 52, 121, NULL, '2017-06-06 08:08:49'),
(259, 52, 122, NULL, '2017-06-06 08:08:49'),
(260, 52, 123, NULL, '2017-06-06 08:08:49'),
(261, 52, 124, NULL, '2017-06-06 08:08:49'),
(262, 52, 125, NULL, '2017-06-06 08:08:49'),
(263, 52, 126, NULL, '2017-06-06 08:08:49'),
(264, 52, 127, NULL, '2017-06-06 08:08:49'),
(265, 52, 128, NULL, '2017-06-06 08:08:49'),
(266, 52, 129, NULL, '2017-06-06 08:08:49'),
(267, 52, 130, NULL, '2017-06-06 08:08:49'),
(268, 52, 131, NULL, '2017-06-06 08:08:49'),
(269, 52, 132, NULL, '2017-06-06 08:08:50'),
(270, 52, 133, NULL, '2017-06-06 08:08:50'),
(271, 52, 134, NULL, '2017-06-06 08:08:50'),
(272, 52, 135, NULL, '2017-06-06 08:08:50'),
(273, 52, 136, NULL, '2017-06-06 08:08:50'),
(274, 52, 137, NULL, '2017-06-06 08:08:50'),
(275, 52, 138, NULL, '2017-06-06 08:08:50'),
(276, 52, 139, NULL, '2017-06-06 08:08:50'),
(277, 52, 140, NULL, '2017-06-06 08:08:50'),
(278, 52, 141, NULL, '2017-06-06 08:08:50'),
(279, 52, 142, NULL, '2017-06-06 08:08:50'),
(280, 52, 143, NULL, '2017-06-06 08:08:50'),
(281, 52, 144, NULL, '2017-06-06 08:08:50'),
(282, 52, 145, NULL, '2017-06-06 08:08:50'),
(283, 52, 146, NULL, '2017-06-06 08:08:50'),
(284, 52, 147, NULL, '2017-06-06 08:08:50'),
(285, 52, 148, NULL, '2017-06-06 08:08:50'),
(286, 52, 149, NULL, '2017-06-06 08:08:50'),
(287, 52, 150, NULL, '2017-06-06 08:08:50'),
(288, 52, 155, NULL, '2017-06-06 08:08:50'),
(289, 52, 156, NULL, '2017-06-06 08:08:50'),
(290, 52, 161, NULL, '2017-06-06 08:08:51'),
(291, 53, 7, 2, '2017-06-09 13:38:30'),
(292, 53, 8, 2.5, '2017-06-09 13:40:10'),
(293, 53, 9, 3, '2017-06-06 08:10:19'),
(294, 53, 10, NULL, '2017-06-06 08:08:51'),
(295, 53, 11, NULL, '2017-06-06 08:08:51'),
(296, 53, 12, NULL, '2017-06-06 08:08:51'),
(297, 53, 13, NULL, '2017-06-06 08:08:51'),
(298, 53, 14, NULL, '2017-06-06 08:08:51'),
(299, 53, 15, 1, '2017-06-08 14:03:28'),
(300, 53, 16, NULL, '2017-06-06 08:08:51'),
(301, 53, 17, NULL, '2017-06-06 08:08:51'),
(302, 53, 18, NULL, '2017-06-06 08:08:51'),
(303, 53, 19, NULL, '2017-06-06 08:08:51'),
(304, 53, 20, NULL, '2017-06-06 08:08:51'),
(305, 53, 21, NULL, '2017-06-06 08:08:51'),
(306, 53, 22, NULL, '2017-06-06 08:08:51'),
(307, 53, 23, NULL, '2017-06-06 08:08:51'),
(308, 53, 24, NULL, '2017-06-06 08:08:51'),
(309, 53, 25, NULL, '2017-06-06 08:08:51'),
(310, 53, 26, NULL, '2017-06-06 08:08:51'),
(311, 53, 27, NULL, '2017-06-06 08:08:51'),
(312, 53, 28, NULL, '2017-06-06 08:08:52'),
(313, 53, 29, NULL, '2017-06-06 08:08:52'),
(314, 53, 30, NULL, '2017-06-06 08:08:52'),
(315, 53, 31, NULL, '2017-06-06 08:08:52'),
(316, 53, 32, NULL, '2017-06-06 08:08:52'),
(317, 53, 33, NULL, '2017-06-06 08:08:52'),
(318, 53, 34, NULL, '2017-06-06 08:08:52'),
(319, 53, 35, NULL, '2017-06-06 08:08:52'),
(320, 53, 36, NULL, '2017-06-06 08:08:52'),
(321, 53, 37, NULL, '2017-06-06 08:08:52'),
(322, 53, 38, NULL, '2017-06-06 08:08:52'),
(323, 53, 39, NULL, '2017-06-06 08:08:52'),
(324, 53, 40, NULL, '2017-06-06 08:08:52'),
(325, 53, 41, NULL, '2017-06-06 08:08:52'),
(326, 53, 42, NULL, '2017-06-06 08:08:52'),
(327, 53, 45, NULL, '2017-06-06 08:08:52'),
(328, 53, 46, NULL, '2017-06-06 08:08:52'),
(329, 53, 47, NULL, '2017-06-06 08:08:52'),
(330, 53, 48, NULL, '2017-06-06 08:08:52'),
(331, 53, 49, NULL, '2017-06-06 08:08:52'),
(332, 53, 50, NULL, '2017-06-06 08:08:52'),
(333, 53, 51, NULL, '2017-06-06 08:08:52'),
(334, 53, 52, NULL, '2017-06-06 08:08:53'),
(335, 53, 53, NULL, '2017-06-06 08:08:53'),
(336, 53, 54, NULL, '2017-06-06 08:08:53'),
(337, 53, 55, NULL, '2017-06-06 08:08:53'),
(338, 53, 56, NULL, '2017-06-06 08:08:53'),
(339, 53, 57, NULL, '2017-06-06 08:08:53'),
(340, 53, 58, NULL, '2017-06-06 08:08:53'),
(341, 53, 59, NULL, '2017-06-06 08:08:53'),
(342, 53, 60, NULL, '2017-06-06 08:08:53'),
(343, 53, 61, NULL, '2017-06-06 08:08:53'),
(344, 53, 62, NULL, '2017-06-06 08:08:53'),
(345, 53, 63, NULL, '2017-06-06 08:08:53'),
(346, 53, 64, NULL, '2017-06-06 08:08:53'),
(347, 53, 65, NULL, '2017-06-06 08:08:53'),
(348, 53, 66, NULL, '2017-06-06 08:08:53'),
(349, 53, 67, NULL, '2017-06-06 08:08:53'),
(350, 53, 68, NULL, '2017-06-06 08:08:53'),
(351, 53, 69, NULL, '2017-06-06 08:08:53'),
(352, 53, 70, NULL, '2017-06-06 08:08:53'),
(353, 53, 71, NULL, '2017-06-06 08:08:53'),
(354, 53, 72, NULL, '2017-06-06 08:08:54'),
(355, 53, 73, NULL, '2017-06-06 08:08:54'),
(356, 53, 74, NULL, '2017-06-06 08:08:54'),
(357, 53, 75, NULL, '2017-06-06 08:08:54'),
(358, 53, 76, NULL, '2017-06-06 08:08:54'),
(359, 53, 77, NULL, '2017-06-06 08:08:54'),
(360, 53, 78, NULL, '2017-06-06 08:08:54'),
(361, 53, 79, NULL, '2017-06-06 08:08:54'),
(362, 53, 80, NULL, '2017-06-06 08:08:54'),
(363, 53, 81, NULL, '2017-06-06 08:08:54'),
(364, 53, 82, NULL, '2017-06-06 08:08:54'),
(365, 53, 83, NULL, '2017-06-06 08:08:54'),
(366, 53, 84, 5, '2017-06-06 12:13:39'),
(367, 53, 85, NULL, '2017-06-06 08:08:54'),
(368, 53, 86, NULL, '2017-06-06 08:08:54'),
(369, 53, 87, NULL, '2017-06-06 08:08:54'),
(370, 53, 88, NULL, '2017-06-06 08:08:54'),
(371, 53, 89, NULL, '2017-06-06 08:08:54'),
(372, 53, 90, NULL, '2017-06-06 08:08:54'),
(373, 53, 91, NULL, '2017-06-06 08:08:54'),
(374, 53, 92, NULL, '2017-06-06 08:08:54'),
(375, 53, 93, NULL, '2017-06-06 08:08:55'),
(376, 53, 94, NULL, '2017-06-06 08:08:55'),
(377, 53, 95, NULL, '2017-06-06 08:08:55'),
(378, 53, 96, NULL, '2017-06-06 08:08:55'),
(379, 53, 97, NULL, '2017-06-06 08:08:55'),
(380, 53, 98, NULL, '2017-06-06 08:08:55'),
(381, 53, 99, NULL, '2017-06-06 08:08:55'),
(382, 53, 100, NULL, '2017-06-06 08:08:55'),
(383, 53, 101, NULL, '2017-06-06 08:08:55'),
(384, 53, 102, NULL, '2017-06-06 08:08:55'),
(385, 53, 103, NULL, '2017-06-06 08:08:55'),
(386, 53, 104, NULL, '2017-06-06 08:08:55'),
(387, 53, 105, NULL, '2017-06-06 08:08:55'),
(388, 53, 106, NULL, '2017-06-06 08:08:55'),
(389, 53, 107, NULL, '2017-06-06 08:08:55'),
(390, 53, 108, NULL, '2017-06-06 08:08:55'),
(391, 53, 109, NULL, '2017-06-06 08:08:55'),
(392, 53, 110, 2, '2017-06-06 15:10:09'),
(393, 53, 111, NULL, '2017-06-06 08:08:55'),
(394, 53, 112, NULL, '2017-06-06 08:08:55'),
(395, 53, 113, NULL, '2017-06-06 08:08:55'),
(396, 53, 114, NULL, '2017-06-06 08:08:55'),
(397, 53, 115, NULL, '2017-06-06 08:08:55'),
(398, 53, 116, NULL, '2017-06-06 08:08:56'),
(399, 53, 117, NULL, '2017-06-06 08:08:56'),
(400, 53, 118, NULL, '2017-06-06 08:08:56'),
(401, 53, 119, NULL, '2017-06-06 08:08:56'),
(402, 53, 120, NULL, '2017-06-06 08:08:56'),
(403, 53, 121, NULL, '2017-06-06 08:08:56'),
(404, 53, 122, NULL, '2017-06-06 08:08:56'),
(405, 53, 123, NULL, '2017-06-06 08:08:56'),
(406, 53, 124, NULL, '2017-06-06 08:08:56'),
(407, 53, 125, NULL, '2017-06-06 08:08:56'),
(408, 53, 126, NULL, '2017-06-06 08:08:56'),
(409, 53, 127, NULL, '2017-06-06 08:08:56'),
(410, 53, 128, NULL, '2017-06-06 08:08:56'),
(411, 53, 129, NULL, '2017-06-06 08:08:56'),
(412, 53, 130, NULL, '2017-06-06 08:08:56'),
(413, 53, 131, NULL, '2017-06-06 08:08:56'),
(414, 53, 132, NULL, '2017-06-06 08:08:56'),
(415, 53, 133, NULL, '2017-06-06 08:08:56'),
(416, 53, 134, NULL, '2017-06-06 08:08:56'),
(417, 53, 135, NULL, '2017-06-06 08:08:56'),
(418, 53, 136, NULL, '2017-06-06 08:08:56'),
(419, 53, 137, NULL, '2017-06-06 08:08:56'),
(420, 53, 138, NULL, '2017-06-06 08:08:57'),
(421, 53, 139, NULL, '2017-06-06 08:08:57'),
(422, 53, 140, NULL, '2017-06-06 08:08:57'),
(423, 53, 141, NULL, '2017-06-06 08:08:57'),
(424, 53, 142, NULL, '2017-06-06 08:08:57'),
(425, 53, 143, NULL, '2017-06-06 08:08:57'),
(426, 53, 144, NULL, '2017-06-06 08:08:57'),
(427, 53, 145, NULL, '2017-06-06 08:08:57'),
(428, 53, 146, NULL, '2017-06-06 08:08:57'),
(429, 53, 147, NULL, '2017-06-06 08:08:57'),
(430, 53, 148, NULL, '2017-06-06 08:08:57'),
(431, 53, 149, NULL, '2017-06-06 08:08:57'),
(432, 53, 150, NULL, '2017-06-06 08:08:57'),
(433, 53, 155, NULL, '2017-06-06 08:08:58'),
(434, 53, 156, NULL, '2017-06-06 08:08:58'),
(435, 53, 161, NULL, '2017-06-06 08:08:58'),
(436, 54, 7, 1.5, '2017-06-09 13:40:49'),
(437, 54, 8, 5, '2017-06-09 13:39:41'),
(438, 54, 9, 3.5, '2017-06-09 13:41:14'),
(439, 54, 10, 5, '2017-06-09 13:43:52'),
(440, 54, 11, NULL, '2017-06-06 08:08:58'),
(441, 54, 12, NULL, '2017-06-06 08:08:58'),
(442, 54, 13, NULL, '2017-06-06 08:08:58'),
(443, 54, 14, NULL, '2017-06-06 08:08:58'),
(444, 54, 15, 5, '2017-06-08 14:03:59'),
(445, 54, 16, NULL, '2017-06-06 08:08:59'),
(446, 54, 17, NULL, '2017-06-06 08:08:59'),
(447, 54, 18, NULL, '2017-06-06 08:08:59'),
(448, 54, 19, NULL, '2017-06-06 08:08:59'),
(449, 54, 20, NULL, '2017-06-06 08:08:59'),
(450, 54, 21, NULL, '2017-06-06 08:08:59'),
(451, 54, 22, NULL, '2017-06-06 08:08:59'),
(452, 54, 23, NULL, '2017-06-06 08:08:59'),
(453, 54, 24, NULL, '2017-06-06 08:08:59'),
(454, 54, 25, NULL, '2017-06-06 08:08:59'),
(455, 54, 26, NULL, '2017-06-06 08:08:59'),
(456, 54, 27, NULL, '2017-06-06 08:08:59'),
(457, 54, 28, NULL, '2017-06-06 08:08:59'),
(458, 54, 29, NULL, '2017-06-06 08:08:59'),
(459, 54, 30, NULL, '2017-06-06 08:08:59'),
(460, 54, 31, NULL, '2017-06-06 08:08:59'),
(461, 54, 32, NULL, '2017-06-06 08:08:59'),
(462, 54, 33, NULL, '2017-06-06 08:08:59'),
(463, 54, 34, NULL, '2017-06-06 08:08:59'),
(464, 54, 35, NULL, '2017-06-06 08:08:59'),
(465, 54, 36, NULL, '2017-06-06 08:09:00'),
(466, 54, 37, NULL, '2017-06-06 08:09:00'),
(467, 54, 38, NULL, '2017-06-06 08:09:00'),
(468, 54, 39, NULL, '2017-06-06 08:09:00'),
(469, 54, 40, NULL, '2017-06-06 08:09:00'),
(470, 54, 41, NULL, '2017-06-06 08:09:00'),
(471, 54, 42, NULL, '2017-06-06 08:09:00'),
(472, 54, 45, NULL, '2017-06-06 08:09:00'),
(473, 54, 46, NULL, '2017-06-06 08:09:00'),
(474, 54, 47, NULL, '2017-06-06 08:09:00'),
(475, 54, 48, NULL, '2017-06-06 08:09:00'),
(476, 54, 49, NULL, '2017-06-06 08:09:00'),
(477, 54, 50, NULL, '2017-06-06 08:09:00'),
(478, 54, 51, NULL, '2017-06-06 08:09:00'),
(479, 54, 52, NULL, '2017-06-06 08:09:00'),
(480, 54, 53, NULL, '2017-06-06 08:09:00'),
(481, 54, 54, NULL, '2017-06-06 08:09:00'),
(482, 54, 55, NULL, '2017-06-06 08:09:00'),
(483, 54, 56, NULL, '2017-06-06 08:09:00'),
(484, 54, 57, NULL, '2017-06-06 08:09:00'),
(485, 54, 58, NULL, '2017-06-06 08:09:01'),
(486, 54, 59, NULL, '2017-06-06 08:09:01'),
(487, 54, 60, NULL, '2017-06-06 08:09:01'),
(488, 54, 61, NULL, '2017-06-06 08:09:01'),
(489, 54, 62, NULL, '2017-06-06 08:09:01'),
(490, 54, 63, NULL, '2017-06-06 08:09:01'),
(491, 54, 64, NULL, '2017-06-06 08:09:01'),
(492, 54, 65, NULL, '2017-06-06 08:09:01'),
(493, 54, 66, NULL, '2017-06-06 08:09:01'),
(494, 54, 67, NULL, '2017-06-06 08:09:01'),
(495, 54, 68, NULL, '2017-06-06 08:09:01'),
(496, 54, 69, NULL, '2017-06-06 08:09:01'),
(497, 54, 70, NULL, '2017-06-06 08:09:01'),
(498, 54, 71, NULL, '2017-06-06 08:09:01'),
(499, 54, 72, NULL, '2017-06-06 08:09:01'),
(500, 54, 73, NULL, '2017-06-06 08:09:01'),
(501, 54, 74, NULL, '2017-06-06 08:09:01'),
(502, 54, 75, NULL, '2017-06-06 08:09:01'),
(503, 54, 76, NULL, '2017-06-06 08:09:01'),
(504, 54, 77, NULL, '2017-06-06 08:09:01'),
(505, 54, 78, NULL, '2017-06-06 08:09:01'),
(506, 54, 79, NULL, '2017-06-06 08:09:01'),
(507, 54, 80, NULL, '2017-06-06 08:09:01'),
(508, 54, 81, NULL, '2017-06-06 08:09:02'),
(509, 54, 82, NULL, '2017-06-06 08:09:02'),
(510, 54, 83, NULL, '2017-06-06 08:09:02'),
(511, 54, 84, 5, '2017-06-06 12:26:45'),
(512, 54, 85, NULL, '2017-06-06 08:09:02'),
(513, 54, 86, NULL, '2017-06-06 08:09:02'),
(514, 54, 87, NULL, '2017-06-06 08:09:02'),
(515, 54, 88, NULL, '2017-06-06 08:09:02'),
(516, 54, 89, NULL, '2017-06-06 08:09:02'),
(517, 54, 90, NULL, '2017-06-06 08:09:02'),
(518, 54, 91, NULL, '2017-06-06 08:09:02'),
(519, 54, 92, NULL, '2017-06-06 08:09:02'),
(520, 54, 93, NULL, '2017-06-06 08:09:02'),
(521, 54, 94, NULL, '2017-06-06 08:09:02'),
(522, 54, 95, NULL, '2017-06-06 08:09:02'),
(523, 54, 96, NULL, '2017-06-06 08:09:02'),
(524, 54, 97, NULL, '2017-06-06 08:09:02'),
(525, 54, 98, NULL, '2017-06-06 08:09:02'),
(526, 54, 99, NULL, '2017-06-06 08:09:02'),
(527, 54, 100, NULL, '2017-06-06 08:09:02'),
(528, 54, 101, NULL, '2017-06-06 08:09:02'),
(529, 54, 102, NULL, '2017-06-06 08:09:03'),
(530, 54, 103, NULL, '2017-06-06 08:09:03'),
(531, 54, 104, NULL, '2017-06-06 08:09:03'),
(532, 54, 105, NULL, '2017-06-06 08:09:03'),
(533, 54, 106, NULL, '2017-06-06 08:09:03'),
(534, 54, 107, NULL, '2017-06-06 08:09:03'),
(535, 54, 108, NULL, '2017-06-06 08:09:03'),
(536, 54, 109, NULL, '2017-06-06 08:09:03'),
(537, 54, 110, 4, '2017-06-06 13:46:09'),
(538, 54, 111, NULL, '2017-06-06 08:09:03'),
(539, 54, 112, NULL, '2017-06-06 08:09:03'),
(540, 54, 113, NULL, '2017-06-06 08:09:03'),
(541, 54, 114, NULL, '2017-06-06 08:09:03'),
(542, 54, 115, NULL, '2017-06-06 08:09:03'),
(543, 54, 116, NULL, '2017-06-06 08:09:03'),
(544, 54, 117, NULL, '2017-06-06 08:09:03'),
(545, 54, 118, NULL, '2017-06-06 08:09:03'),
(546, 54, 119, NULL, '2017-06-06 08:09:03'),
(547, 54, 120, NULL, '2017-06-06 08:09:03'),
(548, 54, 121, NULL, '2017-06-06 08:09:03'),
(549, 54, 122, NULL, '2017-06-06 08:09:03'),
(550, 54, 123, NULL, '2017-06-06 08:09:04'),
(551, 54, 124, NULL, '2017-06-06 08:09:04'),
(552, 54, 125, NULL, '2017-06-06 08:09:04'),
(553, 54, 126, NULL, '2017-06-06 08:09:04'),
(554, 54, 127, NULL, '2017-06-06 08:09:04'),
(555, 54, 128, NULL, '2017-06-06 08:09:04'),
(556, 54, 129, NULL, '2017-06-06 08:09:04'),
(557, 54, 130, NULL, '2017-06-06 08:09:04'),
(558, 54, 131, NULL, '2017-06-06 08:09:04'),
(559, 54, 132, NULL, '2017-06-06 08:09:04'),
(560, 54, 133, NULL, '2017-06-06 08:09:04'),
(561, 54, 134, NULL, '2017-06-06 08:09:04'),
(562, 54, 135, NULL, '2017-06-06 08:09:04'),
(563, 54, 136, NULL, '2017-06-06 08:09:04'),
(564, 54, 137, NULL, '2017-06-06 08:09:04'),
(565, 54, 138, NULL, '2017-06-06 08:09:04'),
(566, 54, 139, NULL, '2017-06-06 08:09:04'),
(567, 54, 140, NULL, '2017-06-06 08:09:04'),
(568, 54, 141, NULL, '2017-06-06 08:09:04'),
(569, 54, 142, NULL, '2017-06-06 08:09:04'),
(570, 54, 143, NULL, '2017-06-06 08:09:04'),
(571, 54, 144, NULL, '2017-06-06 08:09:05'),
(572, 54, 145, NULL, '2017-06-06 08:09:05'),
(573, 54, 146, NULL, '2017-06-06 08:09:05'),
(574, 54, 147, NULL, '2017-06-06 08:09:05'),
(575, 54, 148, NULL, '2017-06-06 08:09:05'),
(576, 54, 149, NULL, '2017-06-06 08:09:05'),
(577, 54, 150, NULL, '2017-06-06 08:09:05'),
(578, 54, 155, NULL, '2017-06-06 08:09:05'),
(579, 54, 156, NULL, '2017-06-06 08:09:05'),
(580, 54, 161, NULL, '2017-06-06 08:09:05'),
(581, 55, 7, 4.5, '2017-06-09 13:38:25'),
(582, 55, 8, 4, '2017-06-09 13:41:04'),
(583, 55, 9, NULL, '2017-06-09 13:42:11'),
(584, 55, 10, NULL, '2017-06-06 08:09:05'),
(585, 55, 11, NULL, '2017-06-06 08:09:05'),
(586, 55, 12, NULL, '2017-06-06 08:09:05'),
(587, 55, 13, NULL, '2017-06-06 08:09:05'),
(588, 55, 14, NULL, '2017-06-06 08:09:05'),
(589, 55, 15, NULL, '2017-06-06 08:09:05'),
(590, 55, 16, NULL, '2017-06-06 08:09:05'),
(591, 55, 17, NULL, '2017-06-06 08:09:05'),
(592, 55, 18, NULL, '2017-06-06 08:09:05'),
(593, 55, 19, NULL, '2017-06-06 08:09:06'),
(594, 55, 20, NULL, '2017-06-06 08:09:06'),
(595, 55, 21, NULL, '2017-06-06 08:09:06'),
(596, 55, 22, NULL, '2017-06-06 08:09:06'),
(597, 55, 23, NULL, '2017-06-06 08:09:06'),
(598, 55, 24, NULL, '2017-06-06 08:09:06'),
(599, 55, 25, NULL, '2017-06-06 08:09:06'),
(600, 55, 26, NULL, '2017-06-06 08:09:06'),
(601, 55, 27, NULL, '2017-06-06 08:09:06'),
(602, 55, 28, NULL, '2017-06-06 08:09:06'),
(603, 55, 29, NULL, '2017-06-06 08:09:06'),
(604, 55, 30, NULL, '2017-06-06 08:09:06'),
(605, 55, 31, NULL, '2017-06-06 08:09:06'),
(606, 55, 32, NULL, '2017-06-06 08:09:06'),
(607, 55, 33, NULL, '2017-06-06 08:09:06'),
(608, 55, 34, NULL, '2017-06-06 08:09:06'),
(609, 55, 35, NULL, '2017-06-06 08:09:06'),
(610, 55, 36, NULL, '2017-06-06 08:09:06'),
(611, 55, 37, NULL, '2017-06-06 08:09:06'),
(612, 55, 38, NULL, '2017-06-06 08:09:06'),
(613, 55, 39, NULL, '2017-06-06 08:09:06'),
(614, 55, 40, NULL, '2017-06-06 08:09:06'),
(615, 55, 41, NULL, '2017-06-06 08:09:06'),
(616, 55, 42, NULL, '2017-06-06 08:09:07'),
(617, 55, 45, NULL, '2017-06-06 08:09:07'),
(618, 55, 46, NULL, '2017-06-06 08:09:07'),
(619, 55, 47, NULL, '2017-06-06 08:09:07'),
(620, 55, 48, NULL, '2017-06-06 08:09:07'),
(621, 55, 49, NULL, '2017-06-06 08:09:07'),
(622, 55, 50, NULL, '2017-06-06 08:09:07'),
(623, 55, 51, NULL, '2017-06-06 08:09:07'),
(624, 55, 52, NULL, '2017-06-06 08:09:07'),
(625, 55, 53, NULL, '2017-06-06 08:09:07'),
(626, 55, 54, NULL, '2017-06-06 08:09:07'),
(627, 55, 55, NULL, '2017-06-06 08:09:07'),
(628, 55, 56, NULL, '2017-06-06 08:09:07'),
(629, 55, 57, NULL, '2017-06-06 08:09:07'),
(630, 55, 58, NULL, '2017-06-06 08:09:07'),
(631, 55, 59, NULL, '2017-06-06 08:09:07'),
(632, 55, 60, NULL, '2017-06-06 08:09:07'),
(633, 55, 61, NULL, '2017-06-06 08:09:07'),
(634, 55, 62, NULL, '2017-06-06 08:09:07'),
(635, 55, 63, NULL, '2017-06-06 08:09:07'),
(636, 55, 64, NULL, '2017-06-06 08:09:07'),
(637, 55, 65, NULL, '2017-06-06 08:09:07'),
(638, 55, 66, NULL, '2017-06-06 08:09:08'),
(639, 55, 67, NULL, '2017-06-06 08:09:08'),
(640, 55, 68, NULL, '2017-06-06 08:09:08'),
(641, 55, 69, NULL, '2017-06-06 08:09:08'),
(642, 55, 70, NULL, '2017-06-06 08:09:08'),
(643, 55, 71, NULL, '2017-06-06 08:09:08'),
(644, 55, 72, NULL, '2017-06-06 08:09:08'),
(645, 55, 73, NULL, '2017-06-06 08:09:08'),
(646, 55, 74, NULL, '2017-06-06 08:09:08'),
(647, 55, 75, NULL, '2017-06-06 08:09:08'),
(648, 55, 76, NULL, '2017-06-06 08:09:08'),
(649, 55, 77, NULL, '2017-06-06 08:09:08'),
(650, 55, 78, NULL, '2017-06-06 08:09:08'),
(651, 55, 79, NULL, '2017-06-06 08:09:08'),
(652, 55, 80, NULL, '2017-06-06 08:09:08'),
(653, 55, 81, NULL, '2017-06-06 08:09:08'),
(654, 55, 82, NULL, '2017-06-06 08:09:08'),
(655, 55, 83, NULL, '2017-06-06 08:09:08'),
(656, 55, 84, NULL, '2017-06-07 13:53:20'),
(657, 55, 85, NULL, '2017-06-06 08:09:08'),
(658, 55, 86, NULL, '2017-06-06 08:09:08'),
(659, 55, 87, NULL, '2017-06-06 08:09:08'),
(660, 55, 88, NULL, '2017-06-06 08:09:09'),
(661, 55, 89, NULL, '2017-06-06 08:09:09'),
(662, 55, 90, NULL, '2017-06-06 08:09:09'),
(663, 55, 91, NULL, '2017-06-06 08:09:09'),
(664, 55, 92, NULL, '2017-06-06 08:09:09'),
(665, 55, 93, NULL, '2017-06-06 08:09:09'),
(666, 55, 94, NULL, '2017-06-06 08:09:09'),
(667, 55, 95, NULL, '2017-06-06 08:09:09'),
(668, 55, 96, NULL, '2017-06-06 08:09:09'),
(669, 55, 97, NULL, '2017-06-06 08:09:09'),
(670, 55, 98, NULL, '2017-06-06 08:09:09'),
(671, 55, 99, NULL, '2017-06-06 08:09:09'),
(672, 55, 100, NULL, '2017-06-06 08:09:09'),
(673, 55, 101, NULL, '2017-06-06 08:09:09'),
(674, 55, 102, NULL, '2017-06-06 08:09:09'),
(675, 55, 103, NULL, '2017-06-06 08:09:09'),
(676, 55, 104, NULL, '2017-06-06 08:09:09'),
(677, 55, 105, NULL, '2017-06-06 08:09:09'),
(678, 55, 106, NULL, '2017-06-06 08:09:09'),
(679, 55, 107, NULL, '2017-06-06 08:09:09'),
(680, 55, 108, NULL, '2017-06-06 08:09:09'),
(681, 55, 109, NULL, '2017-06-06 08:09:10'),
(682, 55, 110, NULL, '2017-06-07 13:53:36'),
(683, 55, 111, NULL, '2017-06-06 08:09:10'),
(684, 55, 112, NULL, '2017-06-06 08:09:10'),
(685, 55, 113, NULL, '2017-06-06 08:09:10'),
(686, 55, 114, NULL, '2017-06-06 08:09:10'),
(687, 55, 115, NULL, '2017-06-06 08:09:10'),
(688, 55, 116, NULL, '2017-06-06 08:09:10'),
(689, 55, 117, NULL, '2017-06-06 08:09:10'),
(690, 55, 118, NULL, '2017-06-06 08:09:10'),
(691, 55, 119, NULL, '2017-06-06 08:09:10'),
(692, 55, 120, NULL, '2017-06-06 08:09:10'),
(693, 55, 121, NULL, '2017-06-06 08:09:10'),
(694, 55, 122, NULL, '2017-06-06 08:09:10'),
(695, 55, 123, NULL, '2017-06-06 08:09:10'),
(696, 55, 124, NULL, '2017-06-06 08:09:10'),
(697, 55, 125, NULL, '2017-06-06 08:09:10'),
(698, 55, 126, NULL, '2017-06-06 08:09:10'),
(699, 55, 127, NULL, '2017-06-06 08:09:10'),
(700, 55, 128, NULL, '2017-06-06 08:09:11'),
(701, 55, 129, NULL, '2017-06-06 08:09:11'),
(702, 55, 130, NULL, '2017-06-06 08:09:11'),
(703, 55, 131, NULL, '2017-06-06 08:09:11'),
(704, 55, 132, NULL, '2017-06-06 08:09:11'),
(705, 55, 133, NULL, '2017-06-06 08:09:11'),
(706, 55, 134, NULL, '2017-06-06 08:09:11'),
(707, 55, 135, NULL, '2017-06-06 08:09:11'),
(708, 55, 136, NULL, '2017-06-06 08:09:11'),
(709, 55, 137, NULL, '2017-06-06 08:09:11'),
(710, 55, 138, NULL, '2017-06-06 08:09:11'),
(711, 55, 139, NULL, '2017-06-06 08:09:11'),
(712, 55, 140, NULL, '2017-06-06 08:09:11'),
(713, 55, 141, NULL, '2017-06-06 08:09:11'),
(714, 55, 142, NULL, '2017-06-06 08:09:11'),
(715, 55, 143, NULL, '2017-06-06 08:09:11'),
(716, 55, 144, NULL, '2017-06-06 08:09:11'),
(717, 55, 145, NULL, '2017-06-06 08:09:11'),
(718, 55, 146, NULL, '2017-06-06 08:09:11'),
(719, 55, 147, NULL, '2017-06-06 08:09:11'),
(720, 55, 148, NULL, '2017-06-06 08:09:11'),
(721, 55, 149, NULL, '2017-06-06 08:09:11'),
(722, 55, 150, NULL, '2017-06-06 08:09:11'),
(723, 55, 155, NULL, '2017-06-06 08:09:12'),
(724, 55, 156, NULL, '2017-06-06 08:09:12'),
(725, 55, 161, NULL, '2017-06-06 08:09:12');

-- --------------------------------------------------------

--
-- Table structure for table `transcation`
--

CREATE TABLE IF NOT EXISTS `transcation` (
`transaction_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_DOB`, `cnic`, `password`, `user_phone`, `user_gender`, `user_type`, `user_date`, `user_status`, `user_province`, `user_district`, `user_city`, `user_tehsil`, `user_comAddress`, `user_img`) VALUES
(51, 'UBAID UR REHMAN', '1990-02-02', '1720103967797', 'qw', '03344246365', 'Male', 1, '2017-03-15 17:15:07', 1, 'KPK', 'NOWSHEHRAH', 'PABBI', 'PABBI', 'JAMIA ISLAMIA GT ROAD PABBI', 'images/'),
(52, 'HARIS LATIF', '1990-02-02', '13', 'Q', '328764821648612', '0', 2, '2017-03-22 05:34:51', 1, 'JHGGJK', 'KJHKLJH', 'KJKHKH', 'KJHKL', 'KHLKHJKL', 'images/IMG_2698.JPG'),
(53, 'DSAJFHKLSAHLK', '1990-02-02', '', 'qwAS1234', '-1232321312312', '0', 1, '2017-03-10 17:47:56', 1, '', '', '', '', 'SDFHSAKHFLSKAJ', 'images/'),
(54, 'AHSAAN', '1990-02-02', '1234231782637', 'yuYU1234', '826134862193846', 'MALE', 1, '2017-03-21 14:26:12', 1, '', '', '', '', 'ISUAYFIUOASYFIUAS', 'images/'),
(55, 'Bilal Ahmad', '2017-03-01', '12', '1', '48310791', 'other', 3, '2017-03-22 06:29:11', 1, NULL, NULL, NULL, NULL, 'isahdiuash', NULL),
(56, 'sadf', '2017-06-06', '423423423', '2342', '', NULL, NULL, '2017-06-07 13:51:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'DSAFSAF', '2017-06-14', '2354325654635', 'asZX1234', '42342398', 'MALE', 1, '2017-06-08 06:40:53', 1, '', '', '', '', 'DASD', 'images/'),
(58, 'RSD', '0000-00-00', '432', '', '', 'MALE', 1, '2017-06-08 15:42:10', 1, '', '', '', '', 'FEW', 'images/'),
(59, 'FDGDSHGDGDSG', '2017-06-14', '4364657686786', 'qwAS1234', '4353', 'MALE', 1, '2017-06-08 06:46:07', 1, '', '', '', '', '324', ''),
(60, 'MUBASHER', '1995-07-07', '3333333333333', 'Mr12345678', '03344246365', 'MALE', 1, '2017-06-08 06:50:04', 1, '', '', '', '', 'DASD', ''),
(61, 'MUBASHER', '1995-07-07', '2354325654635', 'Mr12345678', '03344246365', 'MALE', 1, '2017-06-08 15:51:58', 1, '', '', '', '', 'DASD', ''),
(62, 'MUBASHER', '1995-07-07', '432', 'Mr123456', '42342398', 'MALE', 1, '2017-06-08 15:54:36', 1, '', '', '', '', 'DASD', '');

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
 ADD PRIMARY KEY (`feedback_id`), ADD UNIQUE KEY `feedback_id` (`feedback_id`);

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
-- Indexes for table `prediction`
--
ALTER TABLE `prediction`
 ADD PRIMARY KEY (`prediction_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
 ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `transcation`
--
ALTER TABLE `transcation`
 ADD PRIMARY KEY (`transaction_id`);

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
MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `order1`
--
ALTER TABLE `order1`
MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
MODIFY `orderItem_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT for table `packing`
--
ALTER TABLE `packing`
MODIFY `packing_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `prediction`
--
ALTER TABLE `prediction`
MODIFY `prediction_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=162;
--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=726;
--
-- AUTO_INCREMENT for table `transcation`
--
ALTER TABLE `transcation`
MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
