-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th6 12, 2021 lúc 05:11 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `pdo_seafoodweb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `username`, `password`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'nghia_user', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_post`
--

CREATE TABLE `tbl_category_post` (
  `id_category_post` int(11) UNSIGNED NOT NULL,
  `title_category_post` varchar(255) NOT NULL,
  `desc_category_post` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_post`
--

INSERT INTO `tbl_category_post` (`id_category_post`, `title_category_post`, `desc_category_post`) VALUES
(1, 'ăn hải sản có tốt không?', 'Ông Lê Hải '),
(3, 'cnach', 'ádládjlạ'),
(4, '3123', '3123'),
(5, 'ádá', 'ádá');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `id_category_product` int(11) UNSIGNED NOT NULL,
  `title_category_product` varchar(255) NOT NULL,
  `desc_category_product` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`id_category_product`, `title_category_product`, `desc_category_product`) VALUES
(40, 'Ngao, Sò, Ốc', ''),
(41, 'Cua - Ghẹ', ''),
(42, 'Tôm các loại', ''),
(43, 'Cá', ''),
(44, 'Mực', ''),
(45, 'Hải sản nhập khẩu', ''),
(46, 'Cá hồi', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `customers_id` int(11) NOT NULL,
  `customers_name` varchar(255) NOT NULL,
  `customers_phone` varchar(100) NOT NULL,
  `customers_email` varchar(255) NOT NULL,
  `customers_password` varchar(100) NOT NULL,
  `customers_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_customers`
--

INSERT INTO `tbl_customers` (`customers_id`, `customers_name`, `customers_phone`, `customers_email`, `customers_password`, `customers_address`) VALUES
(1, 'ad', '132', 'nghia@gmail.com', '202cb962ac59075b964b07152d234b70', '123'),
(2, 'nghia', '123', 'ad@gmail.com', '202cb962ac59075b964b07152d234b70', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `order_code` varchar(100) NOT NULL,
  `order_date` varchar(100) NOT NULL,
  `order_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `order_code`, `order_date`, `order_status`) VALUES
(31, '3005', '10/06/2021 14:20:51', 1),
(32, '2735', '10/06/2021 14:30:27', 1),
(33, '1577', '10/06/2021 14:40:27', 0),
(34, '99', '10/06/2021 14:41:07', 0),
(35, '3063', '10/06/2021 15:04:47', 1),
(36, '6127', '10/06/2021 15:07:56', 1),
(37, '1644', '11/06/2021 15:01:15', 0),
(38, '5503', '11/06/2021 15:04:50', 0),
(39, '9418', '11/06/2021 20:46:43', 0),
(40, '8329', '11/06/2021 20:47:31', 0),
(41, '8741', '11/06/2021 23:08:05', 0),
(42, '6013', '12/06/2021 01:28:10', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(11) NOT NULL,
  `order_code` varchar(100) NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sodienthoai` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `noidung` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_code`, `product_id`, `product_quantity`, `name`, `email`, `sodienthoai`, `diachi`, `noidung`) VALUES
(8, '5503', 40, 1, 'an', 'akjsdajkds@askldja.com', '12391203', 'ashdashdjkash', 'mua nua kg'),
(9, '9418', 40, 1, '', '', '', '', ''),
(10, '8329', 40, 1, '', '', '', '', ''),
(11, '8741', 39, 2, 'asd', 'asd', '123', 'asd', '213'),
(12, '6013', 39, 2, 'nghia', 'ad@gmail.com', '123', '123', ''),
(13, '6013', 40, 1, 'nghia', 'ad@gmail.com', '123', '123', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id_post` int(11) NOT NULL,
  `title_post` varchar(255) NOT NULL,
  `content_post` text NOT NULL,
  `image_post` varchar(255) NOT NULL,
  `id_category_post` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_post`
--

INSERT INTO `tbl_post` (`id_post`, `title_post`, `content_post`, `image_post`, `id_category_post`) VALUES
(4, 'bai viet 0 ten 2', 'Where does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'pthumb1622817126.jpeg', 5),
(5, 'bai viet 0 ten 3', 'Where does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'Hard-Thrift-_1_1622821774.png', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id_product` int(11) UNSIGNED NOT NULL,
  `title_product` varchar(255) NOT NULL,
  `price_product` varchar(100) NOT NULL,
  `desc_product` text NOT NULL,
  `quantity_product` int(11) NOT NULL,
  `image_product` varchar(100) NOT NULL,
  `id_category_product` int(11) UNSIGNED NOT NULL,
  `product_hot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`id_product`, `title_product`, `price_product`, `desc_product`, `quantity_product`, `image_product`, `id_category_product`, `product_hot`) VALUES
(39, 'Tôm Hùm Alaska', '1000000', '<p><strong>T&ocirc;m H&ugrave;m Alaska&nbsp;</strong>l&agrave; loại t&ocirc;m rất nổi tiếng tr&ecirc;n thế giới, l&agrave; loại hải sản kh&ocirc;ng thể thiếu trong thực đơn của c&aacute;c nh&agrave; h&agrave;ng, qu&aacute;n ăn lơn. Loại t&ocirc;m h&ugrave;m n&agrave;y&nbsp;sinh sống tại v&ugrave;ng biển s&acirc;u của Alaska ph&iacute;a bắc nước Mỹ v&agrave; Canada.&nbsp;</p>\r\n\r\n<p>Những b&atilde;i đ&aacute; ngầm, san h&ocirc;, nước ở đ&acirc;y trong xanh, rất lạnh l&agrave; nơi sinh sống l&yacute; tưởng của t&ocirc;m h&ugrave;m Alaska.</p>\r\n', 10, 'ct-boiling-live-lobster-tom-hum1623381181.jpeg', 45, 1),
(40, 'Tôm Mũ Ni', '670000', '<p><strong>T&ocirc;m Mũ Ni</strong>&nbsp;&nbsp;shop nhập về thường xuy&ecirc;n, giao&nbsp;tận nơi cho kh&aacute;ch, cam kết chất lượng. Kh&aacute;ch đặt trước buổi tối để đảm bảo c&oacute; h&agrave;ng v&igrave; hải sản b&aacute;n chạy m&agrave; h&agrave;ng đang hiếm ạ .Hải sản n&agrave;y thật sự ăn rất ngon v&agrave;o m&ugrave;a b&aacute;n rất chạy. Đặc sản nổi tiếng ở miền Trung ai cũng biết đến. Th&ecirc;m v&agrave;o ngay giỏ h&agrave;ng Đảo Hải Sản&nbsp;</p>\r\n\r\n<p>Đặc điểm về&nbsp;<strong>t&ocirc;m m</strong>ũ ni :T&ocirc;m mũ ni kh&ocirc;ng c&oacute; cặp c&agrave;ng to như t&ocirc;m h&ugrave;m, thay v&agrave;o đ&oacute; l&agrave; hai miếng vỏ mỏng v&agrave; dẹp, tựa như hai chiếc l&aacute; đa che mắt ngựa. Tất cả c&aacute;c giống t&ocirc;m mũ ni đều ăn được, trong đ&oacute;&nbsp;<strong>t&ocirc;m mũ ni</strong>&nbsp;trắng v&agrave; mũ ni đỏ c&oacute; gi&aacute; trị rất cao.</p>\r\n', 10, 'tom-mu-ni1623382134.jpeg', 42, 1),
(41, 'Cua Hoàng Đế ', '2200000', '<p><strong>King Crab</strong>&nbsp;hay c&ograve;n được gọi với c&aacute;i t&ecirc;n&nbsp;<strong>Cua Ho&agrave;ng Đế</strong>&nbsp;l&agrave; loại cua biển rất nổi tiếng tr&ecirc;n thế giới. Ở Việt Nam, Cua Ho&agrave;ng Đế lu&ocirc;n nằm trong top loại hải sản, loại cua ngon nhất nằm trong thực đơn của c&aacute;c nh&agrave; h&agrave;ng nổi tiếng, c&aacute;c qu&aacute;n ăn lớn.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; loại cua lớn nhất, cua trưởng th&agrave;nh mai c&oacute; thể đạt đến 17 cm. Trung b&igrave;nh một con Cua Ho&agrave;ng Đế ng&agrave;y nay c&oacute; trọng lượng khoảng từ 2kg - 4kg.&nbsp;</p>\r\n', 20, 'cuahoangde1623382318.jpg', 45, 1),
(42, 'Ghẹ Xanh Phan Thiết', '650000', '<p><strong>Ghẹ Xanh Phan Thiết</strong>&nbsp;hải sản được kh&aacute;ch S&agrave;i G&ograve;n y&ecirc;u th&iacute;ch nhất từ trẻ em đến người lớn tuổi ai cũng th&iacute;ch ăn ghẹ xanh&nbsp;</p>\r\n', 10, 'ghe-xanh-phan-thiet-11623382448.jpeg', 41, 1),
(43, 'Cua Càu Mau', '590000', '<p><strong>Cua thịt C&agrave; Mau</strong>&nbsp;l&agrave; loại cua nổi tiếng ở nước ta. Cua được Đảo Hải Sản thu mua ch&iacute;nh gốc tại C&agrave; Mau được vận chuyển l&ecirc;n trực tiếp trong ng&agrave;y , h&agrave;ng cam kết chất lượng v&agrave; tươi ngon</p>\r\n', 20, 'cua-nam-can-ca-mau-20201623382701.jpeg', 41, 1),
(44, 'Ốc Bullot Pháp', '350000', '<p><strong>Ốc Bulot</strong>&nbsp;nằm trong danh s&aacute;ch c&aacute;c loại hải sản ph&aacute;t triển bền vững v&agrave; phải tu&acirc;n theo quy định nghi&ecirc;m ngặt về đ&aacute;nh bắt. Mỗi ngư d&acirc;n chỉ được đ&aacute;nh bắt kh&ocirc;ng qu&aacute; 300kg/ng&agrave;y/người v&agrave; 1 t&agrave;u kh&ocirc;ng qu&aacute; 3 ngư d&acirc;n. V&igrave; thế, lượng cung của loại ốc từ biển Normandy rất &iacute;t.</p>\r\n', 50, 'dsc09169_8d77c3f48ee34ef9a6763bd0c51377b9_grande1623383134.png', 40, 1),
(45, 'Tôm Hùm Asmania Úc', '2290000', '<p><strong>T&ocirc;m H&ugrave;m Tasmania &Uacute;c</strong>&nbsp;hay c&ograve;n gọi l&agrave;&nbsp;<strong>T&ocirc;m H&ugrave;m Nam &Uacute;c&nbsp;</strong>được mệnh danh t&ocirc;m h&ugrave;m ngon nhất thế giới.</p>\r\n', 20, 'tôm hùm asmania1623383302.jpeg', 45, 0),
(46, 'Ngao Hai Cồi', '160000', '<p><strong>Ngao 2 Cồi</strong>&nbsp;Nha Trang nổi tiếng khắp c&aacute;c qu&aacute;n ăn v&agrave; qu&aacute;n ốc tại S&agrave;i G&ograve;n. H&agrave;ng thi&ecirc;n nhi&ecirc;n vừa ăn ngon m&agrave; gi&aacute; rẻ nữa&nbsp;</p>\r\n', 20, 'ngaohaicoi1623383444.jpeg', 40, 1),
(47, 'Cá Hồi Phi Lê Thân (khay 300-400g-1kg)', '720000', '<p><strong>C&aacute; hồi&nbsp;nhập khẩu từ Nauy&nbsp;</strong>để đạt chuẩn sử dụng sashimi cần được chọn lựa kỹ hơn c&aacute;c sản phẩm c&ugrave;ng loại. Nguồn nguy&ecirc;n liệu c&aacute; hồi phải l&agrave; c&aacute; mới đ&aacute;nh bắt, tươi sống l&agrave;m sạch kỹ. Phile (fillet) th&agrave;nh những phần vừa ăn, tiện dụng.</p>\r\n', 10, 'cahoiplile1623383594.jpeg', 46, 0),
(48, 'Cá Trích Phi Lê (0.5kg)', '75000', '', 10, 'ca-trich-phi-le1623383769.jpeg', 43, 0),
(49, 'Mực Ống Trứng', '250000', '', 20, '92316183_1614211958725863_8165983416798412800_n_20807586ddff4e74bc386a8aa47191cc1623386105.png', 44, 0),
(50, 'Tôm Càng Xanh', '420000', '', 20, 'tom-cang-xanh-2812201623386242.jpeg', 42, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_category_post`
--
ALTER TABLE `tbl_category_post`
  ADD PRIMARY KEY (`id_category_post`);

--
-- Chỉ mục cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`id_category_product`);

--
-- Chỉ mục cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`customers_id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id_post`),
  ADD KEY `id_category_post` (`id_category_post`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `id_category_product` (`id_category_product`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_category_post`
--
ALTER TABLE `tbl_category_post`
  MODIFY `id_category_post` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `id_category_product` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `customers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id_product` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD CONSTRAINT `tbl_order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`id_product`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD CONSTRAINT `tbl_post_ibfk_1` FOREIGN KEY (`id_category_post`) REFERENCES `tbl_category_post` (`id_category_post`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_ibfk_1` FOREIGN KEY (`id_category_product`) REFERENCES `tbl_category_product` (`id_category_product`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
