-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2017 at 12:25 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bhai1`
--

-- --------------------------------------------------------

--
-- Table structure for table `bhai`
--

CREATE TABLE `bhai` (
  `bhai_id` int(11) NOT NULL,
  `bhai_firstname` varchar(45) DEFAULT NULL,
  `bhai_age` int(11) DEFAULT NULL,
  `bhai_gender` char(1) DEFAULT NULL,
  `bhai_phone` int(11) DEFAULT NULL,
  `bhai_lastname` varchar(45) DEFAULT NULL,
  `province` varchar(30) DEFAULT NULL,
  `district` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `tehsil` varchar(30) DEFAULT NULL,
  `complete_address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(45) DEFAULT NULL,
  `customer_age` int(11) DEFAULT NULL,
  `customer_gender` char(1) DEFAULT NULL,
  `customer_date` datetime DEFAULT NULL,
  `customer_status` int(11) DEFAULT NULL,
  `province` varchar(30) DEFAULT NULL,
  `district` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `tehsil` varchar(30) DEFAULT NULL,
  `complete_address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(45) DEFAULT NULL,
  `product_price` bigint(20) DEFAULT NULL,
  `product_description` varchar(45) DEFAULT NULL,
  `product_` varchar(45) DEFAULT NULL,
  `unit_type` int(11) DEFAULT NULL,
  `Feedback_feedback_id` int(11) DEFAULT NULL,
  `Category_catagory_id` int(11) DEFAULT NULL,
  `Shop_shop_id` int(11) DEFAULT NULL,
  `OrderItems_orderItem_id` int(11) DEFAULT NULL,
  `img_src` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`, `product_description`, `product_`, `unit_type`, `Feedback_feedback_id`, `Category_catagory_id`, `Shop_shop_id`, `OrderItems_orderItem_id`, `img_src`) VALUES
(1, 'coffee', 200, 'adsada', NULL, NULL, NULL, NULL, NULL, NULL, 'images/coffee.jpg'),
(2, 'sugar', 50, 'asdasdas', NULL, NULL, NULL, NULL, NULL, NULL, 'images/sugar.jpg'),
(3, 'meat', 350, 'sfasdasdasdas', NULL, NULL, NULL, NULL, NULL, NULL, 'images/meat.jpg'),
(4, 'fish', 200, 'wdadas', NULL, NULL, NULL, NULL, NULL, NULL, 'images/fish.png'),
(5, 'potato', 20, 'Vegetables', NULL, NULL, NULL, NULL, NULL, NULL, 'images/potato.jpg'),
(6, 'Bananas', 100, 'Fruits', NULL, NULL, NULL, NULL, NULL, NULL, 'images/banana.png'),
(7, 'Naswaar', 10, 'drugs', NULL, NULL, NULL, NULL, NULL, NULL, 'Images/naswaar.jpg'),
(8, 'Grapes', NULL, 'Fruits', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Lemons', NULL, 'Fruits', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Lime', NULL, 'Fruits', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Melons', NULL, 'Fruits', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Nectarines', NULL, 'Fruits', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Orange', NULL, 'Fruits', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Peaches', NULL, 'Fruits', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Pears', NULL, 'Fruits', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Plums', NULL, 'Fruits', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'strawberries', NULL, 'Fruits', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Ground', NULL, 'Beef', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Hamburger', NULL, 'Beef', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Roast', NULL, 'Beef', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Steaks', NULL, 'Beef', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'Boneless', NULL, 'Chicken', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'legs', NULL, 'Chicken', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'whole Chicken', NULL, 'Chicken', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'Wings', NULL, 'Chicken', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'Asparagus', NULL, 'Vegetables', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'Broccoli', NULL, 'Vegetables', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'Carrots', NULL, 'Vegetables', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'Celery', NULL, 'Vegetables', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'Corn', NULL, 'Vegetables', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'Gralic', NULL, 'Vegetables', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'Lettuce', NULL, 'Vegetables', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'Onions', NULL, 'Vegetables', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'Pappers', NULL, 'Vegetables', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'Potato', NULL, 'Vegetables', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'Squash', NULL, 'Vegetables', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'Tomatoes', NULL, 'Vegetables', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'Cherries', NULL, 'Canned Fruits', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'Mixed Fruits', NULL, 'Canned Fruits', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'Peaches', NULL, 'Canned Fruits', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'Pears', NULL, 'Canned Fruits', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'Pineapples', NULL, 'Canned Fruits', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'Pizza', NULL, 'Frozen', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'Tater Tots', NULL, 'Frozen', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'Peas', NULL, 'Frozen', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'Mixed Veg', NULL, 'Frozen', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'Ice Cream', NULL, 'Frozen', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'French Fries', NULL, 'Frozen', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'Dinners', NULL, 'Frozen', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'Blue Chees', NULL, 'Dressings', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'French', NULL, 'Dressings', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'Italian', NULL, 'Dressings', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'Ranch', NULL, 'Dressings', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'Thousand Island', NULL, 'Dressings', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'Candy', NULL, 'Snacks', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'Cookies', NULL, 'Snacks', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'Crackers', NULL, 'Snacks', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'Nuts', NULL, 'Snacks', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'popcorn', NULL, 'Snacks', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'Potato Chips', NULL, 'Snacks', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'Pretzels', NULL, 'Snacks', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'Raisins', NULL, 'Snacks', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'Biscuits', NULL, 'Breads', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'Buns', NULL, 'Breads', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'Hamburger', NULL, 'Breads', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'Hot Dog', NULL, 'Breads', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'French', NULL, 'Breads', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'Italian', NULL, 'Breads', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'Rolls', NULL, 'Breads', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'Wheat', NULL, 'Breads', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'White', NULL, 'Breads', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'Coffee', NULL, 'Beverages', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'Juice', NULL, 'Beverages', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'Milk', NULL, 'Beverages', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'Orange Juice', NULL, 'Beverages', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'Soft Drink', NULL, 'Beverages', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'Sports Drink', NULL, 'Beverages', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'Tea', NULL, 'Beverages', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'Water', NULL, 'Beverages', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'Diapers', NULL, 'Baby Items', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'Formula', NULL, 'Baby Items', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'Lotion', NULL, 'Baby Items', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'Oil', NULL, 'Baby Items', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'Rash Cream', NULL, 'Baby Items', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'Shampoo', NULL, 'Baby Items', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'Wipes', NULL, 'Baby Items', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'Baking Powder', NULL, 'Packaged', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'Baking Soda', NULL, 'Packaged', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'Brown Sugar', NULL, 'Packaged', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'Brownie Mix', NULL, 'Packaged', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'Cake Mix', NULL, 'Packaged', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'Cereal', NULL, 'Packaged', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'Cocoa', NULL, 'Packaged', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'Cornstarch', NULL, 'Packaged', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'Flour', NULL, 'Packaged', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'Jello', NULL, 'Packaged', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'Oatmeal', NULL, 'Packaged', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'Pancake Mix', NULL, 'Packaged', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'Rice', NULL, 'Packaged', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'Sugar', NULL, 'Packaged', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'Vanilla Extract', NULL, 'Packaged', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `cnic` int(15) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  `bhai_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `cnic`, `password`, `user_type`, `bhai_id`, `customer_id`) VALUES
(1, 2147483647, 'ubaid1234', 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bhai`
--
ALTER TABLE `bhai`
  ADD PRIMARY KEY (`bhai_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

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
-- AUTO_INCREMENT for table `bhai`
--
ALTER TABLE `bhai`
  MODIFY `bhai_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
