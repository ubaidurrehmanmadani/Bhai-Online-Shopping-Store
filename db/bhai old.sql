-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2017 at 08:10 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

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
(62, 51, 30, '2017-03-29 10:33:46', 0, NULL, 52, 'UBAID UR REHMAN', NULL, '03344246365', 'JAMIA ISLAMIA GT ROAD PABBI');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE IF NOT EXISTS `orderitems` (
`orderItem_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;

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
(116, 9, 62, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_DOB`, `cnic`, `password`, `user_phone`, `user_gender`, `user_type`, `user_date`, `user_status`, `user_province`, `user_district`, `user_city`, `user_tehsil`, `user_comAddress`, `user_img`) VALUES
(51, 'UBAID UR REHMAN', '1990-02-02', '1720103967797', 'qw', '03344246365', 'Male', 1, '2017-03-15 17:15:07', 1, 'KPK', 'NOWSHEHRAH', 'PABBI', 'PABBI', 'JAMIA ISLAMIA GT ROAD PABBI', 'images/'),
(52, 'HARIS LATIF', '1990-02-02', '13', 'Q', '328764821648612', '0', 2, '2017-03-22 05:34:51', 1, 'JHGGJK', 'KJHKLJH', 'KJKHKH', 'KJHKL', 'KHLKHJKL', 'images/IMG_2698.JPG'),
(53, 'DSAJFHKLSAHLK', '1990-02-02', '', 'qwAS1234', '-1232321312312', '0', 1, '2017-03-10 17:47:56', 1, '', '', '', '', 'SDFHSAKHFLSKAJ', 'images/'),
(54, 'AHSAAN', '1990-02-02', '1234231782637', 'yuYU1234', '826134862193846', 'MALE', 1, '2017-03-21 14:26:12', 1, '', '', '', '', 'ISUAYFIUOASYFIUAS', 'images/'),
(55, 'Bilal Ahmad', '2017-03-01', '12', '1', '48310791', 'other', 3, '2017-03-22 06:29:11', 1, NULL, NULL, NULL, NULL, 'isahdiuash', NULL);

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
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`product_id`);

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
MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
MODIFY `orderItem_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT for table `packing`
--
ALTER TABLE `packing`
MODIFY `packing_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=162;
--
-- AUTO_INCREMENT for table `transcation`
--
ALTER TABLE `transcation`
MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
