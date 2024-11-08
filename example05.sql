-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2024 at 01:47 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `example05`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `address_id` bigint(20) NOT NULL,
  `building_name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`address_id`, `building_name`, `city`, `country`, `pincode`, `state`, `street`) VALUES
(1, 'string', 'string', 'string', 'string', 'string', 'string'),
(4, 'Building A', 'City Name', 'Country', '123456', 'State', '123 Main St');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `cart_id` bigint(20) NOT NULL,
  `total_price` double DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`cart_id`, `total_price`, `user_id`) VALUES
(1, 0, 1),
(2, 0, 2),
(3, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `cart_item_id` bigint(20) NOT NULL,
  `discount` double NOT NULL,
  `product_price` double NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `cart_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` bigint(20) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'iPhone'),
(2, 'Samsung'),
(3, 'Xiaomi'),
(4, 'iPad 9');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `order_date` date DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `payment_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `email`, `order_date`, `order_status`, `total_amount`, `payment_id`) VALUES
(1, 'tai@gmail.com', '2024-11-05', 'Order Accepted !', -6249975000000, 1),
(2, 'tai@gmail.com', '2024-11-05', 'Order Accepted !', -593747625000000, 2),
(3, 'tai@gmail.com', '2024-11-05', 'Order Accepted !', -6249975000000, 3),
(4, 'tai@gmail.com', '2024-11-05', 'Order Accepted !', -3999980000000, 4),
(5, 'tai123@gmail.com', '2024-11-05', 'Order Accepted !', -4499970000000, 5),
(6, 'tai123@gmail.com', '2024-11-05', 'Order Accepted !', -6249975000000, 6),
(7, 'tai123@gmail.com', '2024-11-05', 'Order Accepted !', -12499950000000, 7),
(8, 'tai123@gmail.com', '2024-11-05', 'Order Accepted !', -7999960000000, 8),
(9, 'tai123@gmail.com', '2024-11-05', 'Order Accepted !', -2249985000000, 9),
(10, 'tai123@gmail.com', '2024-11-05', 'Order Accepted !', -999990000000, 10),
(11, 'tai@gmail.com', '2024-11-05', 'Order Accepted !', -999990000000, 11),
(12, 'tai@gmail.com', '2024-11-05', 'Order Accepted !', -999990000000, 12),
(13, 'tai@gmail.com', '2024-11-05', 'Order Accepted !', -12499950000000, 13),
(14, 'tai123@gmail.com', '2024-11-05', 'Order Accepted !', -1999980000000, 14),
(15, 'tai123@gmail.com', '2024-11-05', 'Order Accepted !', -387998060000000, 15),
(16, 'tai123@gmail.com', '2024-11-05', 'Order Accepted !', -12499950000000, 16),
(17, 'tai123@gmail.com', '2024-11-05', 'Order Accepted !', -12499950000000, 17),
(18, 'tai@gmail.com', '2024-11-05', 'Order Accepted !', -12499950000000, 18),
(19, 'tai@gmail.com', '2024-11-05', 'Order Accepted !', -11999940000000, 19),
(20, 'tai@gmail.com', '2024-11-05', 'Order Accepted !', -93999060000000, 20),
(21, 'tai@gmail.com', '2024-11-05', 'Order Accepted !', -220498530000000, 21),
(22, 'tai@gmail.com', '2024-11-05', 'Order Accepted !', -999990000000, 22),
(23, 'tai@gmail.com', '2024-11-07', 'Order Accepted !', -12499950000000, 23),
(24, 'tai@gmail.com', '2024-11-07', 'Order Accepted !', -408248285000000, 24),
(25, 'tai@gmail.com', '2024-11-07', 'Order Accepted !', -6249975000000, 25),
(26, 'tai@gmail.com', '2024-11-07', 'Order Accepted !', -3999980000000, 26),
(27, 'tai@gmail.com', '2024-11-07', 'Order Accepted !', -6249975000000, 27),
(28, 'tai@gmail.com', '2024-11-07', 'Order Accepted !', -3999980000000, 28),
(29, 'tai@gmail.com', '2024-11-07', 'Order Accepted !', -3999980000000, 29),
(30, 'tai@gmail.com', '2024-11-07', 'Order Accepted !', -287498850000000, 30),
(31, 'tai@gmail.com', '2024-11-07', 'Order Accepted !', -4499970000000, 31),
(32, 'tai123@gmail.com', '2024-11-07', 'Order Accepted !', -6249975000000, 32),
(33, 'tai123@gmail.com', '2024-11-07', 'Order Accepted !', -108999270000000, 33),
(34, 'tai123@gmail.com', '2024-11-07', 'Order Accepted !', -491997540000000, 34),
(35, 'tai123@gmail.com', '2024-11-07', 'Order Accepted !', -309498750000000, 35),
(36, 'tai123@gmail.com', '2024-11-07', 'Order Accepted !', -3999980000000, 36),
(37, 'tai123@gmail.com', '2024-11-07', 'Order Accepted !', -2249985000000, 37),
(38, 'tai123@gmail.com', '2024-11-07', 'Order Accepted !', -1999980000000, 38),
(39, 'tai123@gmail.com', '2024-11-08', 'Order Accepted !', -1.00449559e15, 39),
(40, 'tai123@gmail.com', '2024-11-08', 'Order Accepted !', -1.13439572e15, 40),
(41, 'tai123@gmail.com', '2024-11-08', 'Order Accepted !', -6249975000000, 41),
(42, 'tai123@gmail.com', '2024-11-08', 'Order Accepted !', -3999980000000, 42),
(43, 'tai1@gmail.com', '2024-11-08', 'Order Accepted !', -10249955000000, 43);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_item_id` bigint(20) NOT NULL,
  `discount` double NOT NULL,
  `ordered_product_price` double NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_item_id`, `discount`, `ordered_product_price`, `quantity`, `order_id`, `product_id`) VALUES
(1, 25000000, -6249975000000, 1, 1, 1),
(2, 25000000, -6249975000000, 95, 2, 1),
(3, 25000000, -6249975000000, 1, 3, 1),
(4, 20000000, -3999980000000, 1, 4, 2),
(5, 15000000, -2249985000000, 2, 5, 3),
(6, 25000000, -6249975000000, 1, 6, 1),
(7, 25000000, -6249975000000, 2, 7, 1),
(8, 20000000, -3999980000000, 2, 8, 2),
(9, 15000000, -2249985000000, 1, 9, 3),
(10, 10000000, -999990000000, 1, 10, 4),
(11, 10000000, -999990000000, 1, 11, 4),
(12, 10000000, -999990000000, 1, 12, 4),
(13, 25000000, -6249975000000, 2, 13, 1),
(14, 10000000, -999990000000, 2, 14, 4),
(15, 20000000, -3999980000000, 97, 15, 2),
(16, 25000000, -6249975000000, 2, 16, 1),
(17, 25000000, -6249975000000, 2, 17, 1),
(18, 25000000, -6249975000000, 2, 18, 1),
(19, 20000000, -3999980000000, 3, 19, 2),
(20, 10000000, -999990000000, 94, 20, 4),
(21, 15000000, -2249985000000, 98, 21, 3),
(22, 10000000, -999990000000, 1, 22, 4),
(23, 25000000, -6249975000000, 2, 23, 1),
(24, 20000000, -3999980000000, 19, 24, 2),
(25, 25000000, -6249975000000, 53, 24, 1),
(26, 10000000, -999990000000, 1, 24, 4),
(27, 25000000, -6249975000000, 1, 25, 1),
(28, 20000000, -3999980000000, 1, 26, 2),
(29, 25000000, -6249975000000, 1, 27, 1),
(30, 20000000, -3999980000000, 1, 28, 2),
(31, 20000000, -3999980000000, 1, 29, 2),
(32, 25000000, -6249975000000, 46, 30, 1),
(33, 15000000, -2249985000000, 2, 31, 3),
(34, 25000000, -6249975000000, 1, 32, 1),
(35, 10000000, -999990000000, 1, 33, 4),
(36, 15000000, -2249985000000, 48, 33, 3),
(37, 20000000, -3999980000000, 123, 34, 2),
(38, 25000000, -6249975000000, 49, 35, 1),
(39, 15000000, -2249985000000, 1, 35, 3),
(40, 10000000, -999990000000, 1, 35, 4),
(41, 20000000, -3999980000000, 1, 36, 2),
(42, 15000000, -2249985000000, 1, 37, 3),
(43, 10000000, -999990000000, 2, 38, 4),
(44, 25000000, -6249975000000, 98, 39, 1),
(45, 20000000, -3999980000000, 98, 39, 2),
(46, 12000000, -1439988000000, 98, 40, 53),
(47, 32000000, -10239968000000, 97, 40, 52),
(48, 25000000, -6249975000000, 1, 41, 1),
(49, 20000000, -3999980000000, 1, 42, 2),
(50, 25000000, -6249975000000, 1, 43, 1),
(51, 20000000, -3999980000000, 1, 43, 2);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` bigint(20) NOT NULL,
  `payment_method` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `payment_method`) VALUES
(1, 'credit_card'),
(2, 'credit_card'),
(3, 'credit_card'),
(4, 'credit_card'),
(5, 'credit_card'),
(6, 'credit_card'),
(7, 'credit_card'),
(8, 'credit_card'),
(9, 'credit_card'),
(10, 'credit_card'),
(11, 'credit_card'),
(12, 'credit_card'),
(13, 'credit_card'),
(14, 'credit_card'),
(15, 'credit_card'),
(16, 'credit_card'),
(17, 'credit_card'),
(18, 'credit_card'),
(19, 'credit_card'),
(20, 'credit_card'),
(21, 'credit_card'),
(22, 'credit_card'),
(23, 'credit_card'),
(24, 'credit_card'),
(25, 'credit_card'),
(26, 'credit_card'),
(27, 'credit_card'),
(28, 'credit_card'),
(29, 'credit_card'),
(30, 'credit_card'),
(31, 'credit_card'),
(32, 'credit_card'),
(33, 'credit_card'),
(34, 'credit_card'),
(35, 'credit_card'),
(36, 'credit_card'),
(37, 'credit_card'),
(38, 'credit_card'),
(39, 'credit_card'),
(40, 'credit_card'),
(41, 'credit_card'),
(42, 'credit_card'),
(43, 'credit_card');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` bigint(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `discount` double NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `special_price` double NOT NULL,
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `description`, `discount`, `image`, `price`, `product_name`, `quantity`, `special_price`, `category_id`) VALUES
(1, 'sang xịn mịn', 25000000, '838588c8-1120-43e3-aaf4-7af9adfa3266.png', 25000000, 'Iphone 13promax', 0, -6249975000000, 1),
(2, 'sang xịn mịn', 20000000, 'cd5b6fbd-cb6f-416b-b4ed-813afca27669.png', 20000000, 'Samsung s20 Ultra', 0, -3999980000000, 2),
(3, 'sang xịn mịn', 15000000, '26a20abb-599c-4920-926a-44066db8c364.png', 15000000, 'Xiaomi', 100, -2249985000000, 3),
(4, 'sang xịn mịn', 10000000, '051815e1-82a6-4c14-907d-aebdf9285513.png', 10000000, 'iPad 9', 100, -999990000000, 4),
(52, 'sang xị mịn', 32000000, '1a296bf1-b4ff-4e75-b6e7-7581f93ae977.png', 32000000, 'Iphone 16promax', 3, -10239968000000, 1),
(53, 'sang xịn mịn', 12000000, 'cc035466-5b9c-4d83-97e4-97d7d308903a.png', 12000000, 'Samsung A34', 2, -1439988000000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `products_seq`
--

CREATE TABLE `products_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_seq`
--

INSERT INTO `products_seq` (`next_val`) VALUES
(151);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` bigint(20) NOT NULL,
  `role_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(101, 'ADMIN'),
(102, 'USER');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `mobile_number` varchar(10) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `first_name`, `last_name`, `mobile_number`, `password`) VALUES
(1, 'tai@gmail.com', 'Taiiiii', 'Phammmm', '0847747791', '$2a$10$P5Rc8Wk9bsLh1oADfzQHEOjj1d0FJ14cmonitZ29.KWIdzAN/y0Zq'),
(2, 'tai123@gmail.com', 'taiii', 'phamm', '0792111111', '$2a$10$gz3ClcBgrCj4XdNn8.p46eFeayvWDvAqvk/ukjE1YQ0b3.JbqEjy.'),
(3, 'tai1@gmail.com', 'taiiii', 'phammm', '0792111111', '$2a$10$PAxQ1StlsZHYAWrp8dGbD.0YPManFVvUoibmosy9Hx8GkfTIGFf9K');

-- --------------------------------------------------------

--
-- Table structure for table `user_address`
--

CREATE TABLE `user_address` (
  `user_id` bigint(20) NOT NULL,
  `address_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_address`
--

INSERT INTO `user_address` (`user_id`, `address_id`) VALUES
(1, 1),
(2, 4),
(3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`user_id`, `role_id`) VALUES
(1, 101),
(1, 102),
(2, 102),
(3, 102);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`cart_id`),
  ADD UNIQUE KEY `UK64t7ox312pqal3p7fg9o503c2` (`user_id`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`cart_item_id`),
  ADD KEY `FKpcttvuq4mxppo8sxggjtn5i2c` (`cart_id`),
  ADD KEY `FK1re40cjegsfvw58xrkdp6bac6` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `UKhaujdjk1ohmeixjhnhslchrp1` (`payment_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `FKbioxgbv59vetrxe0ejfubep1w` (`order_id`),
  ADD KEY `FKocimc7dtr037rh4ls4l95nlfi` (`product_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`);

--
-- Indexes for table `user_address`
--
ALTER TABLE `user_address`
  ADD KEY `FKpv7y2l6mvly37lngi3doarqhd` (`address_id`),
  ADD KEY `FKrmincuqpi8m660j1c57xj7twr` (`user_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `FKt7e7djp752sqn6w22i6ocqy6q` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `address_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `cart_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `cart_item_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `FKb5o626f86h46m4s7ms6ginnop` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `FK1re40cjegsfvw58xrkdp6bac6` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `FKpcttvuq4mxppo8sxggjtn5i2c` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`cart_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK8aol9f99s97mtyhij0tvfj41f` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`payment_id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `FKbioxgbv59vetrxe0ejfubep1w` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `FKocimc7dtr037rh4ls4l95nlfi` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);

--
-- Constraints for table `user_address`
--
ALTER TABLE `user_address`
  ADD CONSTRAINT `FKpv7y2l6mvly37lngi3doarqhd` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`address_id`),
  ADD CONSTRAINT `FKrmincuqpi8m660j1c57xj7twr` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `FKj345gk1bovqvfame88rcx7yyx` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `FKt7e7djp752sqn6w22i6ocqy6q` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
