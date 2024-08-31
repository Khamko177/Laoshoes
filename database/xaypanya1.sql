-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 29, 2024 lúc 06:39 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `xaypanya1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(30) NOT NULL,
  `client_ip` varchar(20) NOT NULL,
  `user_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `client_ip`, `user_id`, `product_id`, `qty`) VALUES
(6, '', 3, 5, 1),
(7, '', 3, 7, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category_list`
--

INSERT INTO `category_list` (`id`, `name`) VALUES
(6, 'Nike'),
(7, 'Adidas'),
(8, 'Vans');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `mobile` text NOT NULL,
  `email` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `name`, `address`, `mobile`, `email`, `status`) VALUES
(2, 'Khamko Xaiyasith', 'Savannakhet,Laos', '0906477283', 'khamko1191@gmail.com', 1),
(3, 'khamko Xaiyasith', '459 Tôn ??c Th?ng, Hòa Khánh Nam, Liên Chi?u, ?à N?ng, Vi?t Nam', '0824906137', 'khamko1191@gmail.com', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_list`
--

CREATE TABLE `product_list` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL DEFAULT 0,
  `img_path` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0= unavailable, 2 Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product_list`
--

INSERT INTO `product_list` (`id`, `category_id`, `name`, `description`, `price`, `img_path`, `status`) VALUES
(5, 7, 'ADILETTE PRIDE SLIDES', 'ADILETTE PRIDE SLIDES ', 320, '1696787100_Air Jordan Legacy 312 Low.jpg', 1),
(6, 7, 'ULTRABOOST LIGHT SHOES', 'ULTRABOOST LIGHT SHOES', 650, '1696787760_ULTRABOOST LIGHT SHOES.jpg', 1),
(7, 7, 'BYW SELECT SHOES', 'BYW SELECT SHOES', 150, '1696787640_BYW SELECT SHOES.jpg', 1),
(8, 7, 'FORUM MID SHOES', 'FORUM MID SHOES', 450, '1696787700_FORUM MID SHOES.jpg', 1),
(9, 7, 'ULTRABOUNCE SHOES', 'ULTRABOUNCE SHOES', 320, '1696787820_ULTRABOUNCE SHOES.jpg', 1),
(10, 7, 'ADILETTE PRIDE SLIDES1', 'ADILETTE PRIDE SLIDES1', 310, '1696787880_ADILETTE PRIDE SLIDES.jpg', 1),
(11, 7, 'ROVERMULE ADVENTURE SHOES', 'ROVERMULE ADVENTURE SHOES', 210, '1696788240_ROVERMULE ADVENTURE SHOES.jpg', 1),
(12, 7, 'X_PLRBOOST SHOES', 'X_PLRBOOST SHOES', 320, '1696788240_X_PLRBOOST SHOES.jpg', 1),
(13, 6, 'Air Jordan Legacy 312 Low', 'Air Jordan Legacy 312 Low', 560, '1696788480_Air Jordan Legacy 312 Low.jpg', 1),
(14, 6, 'Jordan Stadium 90', 'Jordan Stadium 90', 650, '1696788480_Jordan Stadium 90.jpg', 1),
(15, 6, 'Nike Air Force 107', 'Nike Air Force 107', 310, '1696788660_Nike Air Force 107 LV8.jpg', 1),
(16, 6, 'Nike Air Force 107 LV8', 'Nike Air Force 107 LV8', 210, '1696788660_Nike Air Force 107 LV8.jpg', 1),
(17, 6, 'Nike Air Max 97 SE', 'Nike Air Max 97 SE', 321, '1696788720_Nike Air Force 1072.jpg', 1),
(18, 6, 'Nike Air Max 97', 'Nike Air Max 97', 254, '1696788780_Nike Air Max 97.jpg', 1),
(19, 6, 'Nike Air Max Pulse', 'Nike Air Max Pulse', 320, '1696788840_Nike Dunk Low Retro.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'LAOS SHOES', 'khamgo1191@gmail.com', '0824906137', '1724949420_lao.jpg', '&lt;h1 style=&quot;margin-bottom: 0px; padding: 0px; line-height: 90px; color: rgb(0, 0, 0); text-align: center; font-size: 70px; font-family: DauphinPlain;&quot;&gt;About Us&lt;/h1&gt;&lt;h4 style=&quot;margin: 10px 10px 5px; padding: 0px; font-size: 14px; line-height: 18px; text-align: center; font-style: italic; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;&quot;Xin ch&agrave;o t&ocirc;i t&ecirc;n l&agrave; Xaiyasith Khamko sinh vien năm 3 ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin ở trường đại học sư phạm Đ&agrave; Nẵng.&quot;&lt;/h4&gt;&lt;h5 style=&quot;margin: 5px 10px 20px; padding: 0px; font-size: 12px; line-height: 14px; text-align: center; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;&quot;Đ&acirc;y l&agrave; một Project cuối kỳ m&ocirc;n Đồ &aacute;n chuy&ecirc;n ng&agrave;nh d&ugrave;ng ng&ocirc;n ngữ HTML, CSS, JS, PHP, MySQL, Bootstrap,etc..&quot;&lt;/h5&gt;&lt;hr style=&quot;margin: 0px; padding: 0px; clear: both; border-top: 0px; height: 1px; background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0)); color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: center;&quot;&gt;&lt;p id=&quot;Content&quot; style=&quot;margin-bottom: 0px; padding: 0px; position: relative; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: center;&quot;&gt;&lt;/p&gt;&lt;p class=&quot;boxed&quot; style=&quot;margin: 10px 28.7969px; padding: 0px; clear: both;&quot;&gt;&lt;/p&gt;&lt;p id=&quot;lipsum&quot; style=&quot;margin-bottom: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; padding: 0px;&quot;&gt;Trước hết, em xin gửi lời cảm ơn ch&acirc;n th&agrave;nh v&agrave; s&acirc;u sắc nhất đến thầy ThS. Hồ Ngọc T&uacute;, giảng vi&ecirc;n khoa Tin Học - Trường Đại học sư phạm Đ&agrave; Nẵng, người đ&atilde; tận t&igrave;nh hướng dẫn, chỉ bảo v&agrave; động vi&ecirc;n em trong suốt qu&aacute; tr&igrave;nh thực hiện đồ &aacute;n chuy&ecirc;n ng&agrave;nh n&agrave;y.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; padding: 0px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; Em cũng xin b&agrave;y tỏ l&ograve;ng biết ơn đến c&aacute;c Thầy C&ocirc; gi&aacute;o trong khoa Tin Học, đ&atilde; truyền đạt cho t&ocirc;i những kiến thức qu&yacute; b&aacute;u v&agrave; cần thiết để ho&agrave;n th&agrave;nh đồ &aacute;n n&agrave;y.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; padding: 0px;&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;Đồ &aacute;n chuy&ecirc;n ng&agrave;nh với đề t&agrave;i &quot;X&acirc;y dựng website b&aacute;n gi&agrave;y&quot; l&agrave; kết quả của qu&aacute; tr&igrave;nh cố gắng kh&ocirc;ng ngừng của bản th&acirc;n em v&agrave; được sự gi&uacute;p đỡ, động vi&ecirc;n kh&iacute;ch lệ của c&aacute;c thầy c&ocirc; gi&aacute;o, gia đ&igrave;nh v&agrave; bạn b&egrave;. Em xin ch&acirc;n th&agrave;nh cảm ơn tất cả những người đ&atilde; gi&uacute;p đỡ em trong qu&aacute; tr&igrave;nh thực hiện đồ &aacute;n.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; padding: 0px;&quot;&gt;Một lần nữa em xin ch&acirc;n th&agrave;nh cảm ơn!.&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` text NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=admin , 2 = staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(3, 'Khamko', 'khamko', '$2y$10$qGDtBYim3xOGqbZy2YVc0OH5sYCjItDAWVjatEBZeDNw51.eBmW.C', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address`) VALUES
(3, 'khamko', 'Xaiyasith', 'khamko1191@gmail.com', '$2y$10$4FPS6Q2TJueqSrEVAWBiO.NMQ236JokDvv0NounR8aMZKXXcUyc8a', '0824906137', '459 Tôn ??c Th?ng, Hòa Khánh Nam, Liên Chi?u, ?à N?ng, Vi?t Nam');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
