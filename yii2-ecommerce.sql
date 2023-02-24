-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Εξυπηρετητής: 127.0.0.1
-- Χρόνος δημιουργίας: 24 Φεβ 2023 στις 15:52:53
-- Έκδοση διακομιστή: 10.4.27-MariaDB
-- Έκδοση PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `yii2-ecommerce`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(2) NOT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1675678468),
('m130524_201442_init', 1675678475),
('m190124_110200_add_verification_token_column_to_user_table', 1675678475),
('m230207_121515_create_products_table', 1675779986),
('m230207_131128_create_user_addresses_table', 1675779986),
('m230207_131914_create_orders_table', 1675779986),
('m230207_132529_create_order_items_table', 1675779986),
('m230207_132928_create_order_addresses_table', 1675779986),
('m230207_133129_create_cart_items_table', 1675779986);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(255) NOT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `order_addresses`
--

CREATE TABLE `order_addresses` (
  `order_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zipcode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `order_id` int(11) NOT NULL,
  `quantity` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(2000) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(4, 'Apple iPhone 14 5G (6GB/128GB) Blue ', '<p><strong>&Beta;&alpha;&sigma;&iota;&kappa;ά &chi;&alpha;&rho;&alpha;&kappa;&tau;&eta;&rho;&iota;&sigma;&tau;&iota;&kappa;ά:</strong></p>\r\n\r\n<p>&Mu;&omicron;&nu;&tau;έ&lambda;&omicron; 2022</p>\r\n\r\n<p>&Omicron;&theta;ό&nu;&eta; Super Retina XDR 6.1&quot;</p>\r\n\r\n<p>&Upsilon;&pi;&omicron;&sigma;&tau;ή&rho;&iota;&xi;&eta; NFC</p>\r\n\r\n<p>&Epsilon;&pi;&epsilon;&xi;&epsilon;&rho;&gamma;&alpha;&sigma;&tau;ή&sigmaf; A15 Bionic</p>\r\n\r\n<p>&Delta;&iota;&pi;&lambda;ή &Pi;ί&sigma;&omega; &Kappa;ά&mu;&epsilon;&rho;&alpha; 12MP/4K 60fps</p>\r\n\r\n<p>&Mu;&pi;&alpha;&tau;&alpha;&rho;ί&alpha; 3279mAh (50% &sigma;&epsilon; 30 min)</p>\r\n', '/products/UvxUgpMIB6sncn4rMJ80-ngW9yWlzYDx/xlarge_20220909104636_apple_iphone_14_5g_4gb_128gb_midnight.jpeg', '936.00', 1, 1677074291, 1677227161, 1, 1),
(5, 'Apple iPhone 14 Pro Max 5G (6GB/128GB) Space Black', '<p><strong>&Beta;&alpha;&sigma;&iota;&kappa;ά &chi;&alpha;&rho;&alpha;&kappa;&tau;&eta;&rho;&iota;&sigma;&tau;&iota;&kappa;ά:</strong></p>\r\n\r\n<p>&Mu;&omicron;&nu;&tau;έ&lambda;&omicron; 2022</p>\r\n\r\n<p>&Omicron;&theta;ό&nu;&eta; Super Retina 6.7&quot; 120Hz</p>\r\n\r\n<p>&Upsilon;&pi;&omicron;&sigma;&tau;ή&rho;&iota;&xi;&eta; NFC</p>\r\n\r\n<p>&Nu;έ&omicron;&sigmaf; &epsilon;&pi;&epsilon;&xi;&epsilon;&rho;&gamma;&alpha;&sigma;&tau;ή&sigmaf; &Alpha;16 Bionic</p>\r\n\r\n<p>&Tau;&rho;&iota;&pi;&lambda;ή &pi;ί&sigma;&omega; &kappa;ά&mu;&epsilon;&rho;&alpha; 48MP/4&Kappa; 60 FPS</p>\r\n\r\n<p>&Mu;&pi;&alpha;&tau;&alpha;&rho;ί&alpha; 4323 mAh (50% &sigma;&epsilon; 30min)</p>\r\n', '/products/DoYSdiTRAoZ83jU3-5lHnvJwskcolqr2/14_pro_max_5g.jpeg', '1413.00', 1, 1677074444, 1677074444, 1, 1),
(6, 'Apple MacBook Pro 14\" (2021) (M1-Pro 10-core/16GB/1TB SSD/Retina Display) Space Gray (US Keyboard)', '<p><strong>&Beta;&alpha;&sigma;&iota;&kappa;ά &chi;&alpha;&rho;&alpha;&kappa;&tau;&eta;&rho;&iota;&sigma;&tau;&iota;&kappa;ά:</strong></p>\r\n\r\n<p>&Mu;&omicron;&nu;&tau;έ&lambda;&omicron; 2021</p>\r\n\r\n<p>&Omicron;&theta;ό&nu;&eta; Retina XDR 3024x1964 120Hz</p>\r\n\r\n<p>10 &Pi;&upsilon;&rho;ή&nu;&epsilon;&sigmaf; 3.2Ghz</p>\r\n\r\n<p>Thunderbolt 4/WiFi 6</p>\r\n\r\n<p>&Alpha;&upsilon;&tau;&omicron;&nu;&omicron;&mu;ί&alpha; έ&omega;&sigmaf; 21 ώ&rho;&epsilon;&sigmaf;</p>\r\n\r\n<p>&Beta;ά&rho;&omicron;&sigmaf; 1.6kg</p>\r\n', '/products/U9SMjJWADevf7XfqYcCvJo4jC0duxXTY/xlarge_20211025105125_apple_macbook_pro_14_2021_m1_pro_10_core_16gb_1tb_retina_display_space_gray_us.jpeg', '2849.00', 1, 1677074536, 1677074536, 1, 1),
(7, 'Apple Watch Series 8 Aluminium 41mm Αδιάβροχο με Παλμογράφο (Midnight with Midnight Sport Band)', '<p><strong>&Beta;&alpha;&sigma;&iota;&kappa;ά &chi;&alpha;&rho;&alpha;&kappa;&tau;&eta;&rho;&iota;&sigma;&tau;&iota;&kappa;ά:</strong></p>\r\n\r\n<p>&Mu;&omicron;&nu;&tau;έ&lambda;&omicron; 2022</p>\r\n\r\n<p>&Omicron;&theta;ό&nu;&eta; &alpha;&phi;ή&sigmaf; Retina Always-On</p>\r\n\r\n<p>&Delta;&iota;ά&rho;&kappa;&epsilon;&iota;&alpha; &mu;&pi;&alpha;&tau;&alpha;&rho;ί&alpha;&sigmaf; έ&omega;&sigmaf; 36 ώ&rho;&epsilon;&sigmaf;*</p>\r\n\r\n<p>24 ώ&rho;&eta; &pi;&alpha;&rho;&alpha;&kappa;&omicron;&lambda;&omicron;ύ&theta;&eta;&sigma;&eta; &pi;&alpha;&lambda;&mu;ώ&nu;</p>\r\n\r\n<p>&Kappa;&alpha;&tau;ά&lambda;&lambda;&eta;&lambda;&omicron; &gamma;&iota;&alpha; &kappa;&omicron;&lambda;ύ&mu;&beta;&eta;&sigma;&eta;</p>\r\n\r\n<p>NFC, Wi-Fi, GPS</p>\r\n', '/products/ScSV1MY89secsn1OWrw8m1IJJrpSFHgy/xlarge_20220912152527_apple_watch_series_8_aluminium_41mm_adiavrocho_me_esim_kai_palmografo_midnight_with_midnight_sport_band.jpeg', '434.00', 1, 1677074754, 1677074754, 1, 1),
(8, 'Apple Polishing Cloth', '<p>Made with soft, nonabrasive material, the Polishing Cloth cleans any Apple display, including nano-texture glass, safely and effectively.</p>\r\n\r\n<p>81x160mm</p>\r\n\r\n<p>7.6mm thickness</p>\r\n\r\n<p>40gr weight</p>\r\n', '/products/VSB9iZbo_NsKXo_JJYH5zEWChW88qRta/20220420124447_d4a2e682.jpg', '27.00', 1, 1677074843, 1677074843, 1, 1),
(9, 'Test Product', '<p>dasdas</p>\r\n', NULL, '1234.00', 1, 1677235874, 1677235874, 1, 1);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(1, 'admin', 'jMwx10zpUq3sc96aQ5V3rlFABoZDRaIP', '$2y$13$UHR4SO30Ku7Xv0j0DusqkuFkuCkqrK48zHCUDQknjaaXSibbS3Wum', NULL, 'admin@example.com', 10, 1675678543, 1675678814, 'FU00b2jWOyLuc_62TTzIn_IcuuhovXHI_1675678543');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `zipcode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-cart_items-product_id` (`product_id`),
  ADD KEY `idx-cart_items-created_by` (`created_by`);

--
-- Ευρετήρια για πίνακα `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Ευρετήρια για πίνακα `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-orders-created_by` (`created_by`);

--
-- Ευρετήρια για πίνακα `order_addresses`
--
ALTER TABLE `order_addresses`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `idx-order_addresses-order_id` (`order_id`);

--
-- Ευρετήρια για πίνακα `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-order_items-order_id` (`order_id`);

--
-- Ευρετήρια για πίνακα `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-products-created_by` (`created_by`),
  ADD KEY `idx-products-updated_by` (`updated_by`);

--
-- Ευρετήρια για πίνακα `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Ευρετήρια για πίνακα `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-user_addresses-user_id` (`user_id`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT για πίνακα `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT για πίνακα `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT για πίνακα `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT για πίνακα `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT για πίνακα `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Περιορισμοί για άχρηστους πίνακες
--

--
-- Περιορισμοί για πίνακα `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `fk-cart_items-created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-cart_items-product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Περιορισμοί για πίνακα `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk-orders-created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Περιορισμοί για πίνακα `order_addresses`
--
ALTER TABLE `order_addresses`
  ADD CONSTRAINT `fk-order_addresses-order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Περιορισμοί για πίνακα `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `fk-order_items-order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Περιορισμοί για πίνακα `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk-products-created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-products-updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Περιορισμοί για πίνακα `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD CONSTRAINT `fk-user_addresses-user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
