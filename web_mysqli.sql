-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 31, 2023 lúc 12:03 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_mysqli`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `admin_status`) VALUES
(1, 'webmysqli', '25f9e794323b453885f5181f1b624d0b', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `id` int(11) NOT NULL,
  `tenbaiviet` varchar(255) NOT NULL,
  `tomtat` mediumtext NOT NULL,
  `noidung` longtext NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`id`, `tenbaiviet`, `tomtat`, `noidung`, `id_danhmuc`, `tinhtrang`, `hinhanh`) VALUES
(1, 'Alo bài viết mới 1', '<p><strong>C&agrave; khịa Trấn Th&agrave;nh</strong></p>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -5px; top: 38.6px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>\r\n', '<p>dsadasdasdasdas</p>\r\n', 4, 1, '1680211016_1102.jpg'),
(2, 'Alo bài viết mới ', '<p><strong>&ldquo;C&agrave; khịa&rdquo; những c&acirc;u chuyện nhức nhối trong tuần&hellip;</strong></p>\r\n', '<p>asdasd</p>\r\n', 4, 1, '1680210945_159.jpg'),
(4, 'Quà tặng cuộc sống', '<p>abc</p>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: 2px; top: 38.6px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>\r\n', '<p>fdsfsdfsdf</p>\r\n', 2, 1, '1680210817_1111.jpg'),
(5, 'Cuộc sống muôn màu', '<p>Cố gắn l&ecirc;n rồi ng&agrave;y mai sẽ kh&aacute;c</p>\r\n', '<p>Khi bạn nản l&ograve;ng h&atilde;y nh&igrave;n về ph&iacute;a sau, để biết m&igrave;nh đ&atilde; đi được bao xa.</p>\r\n', 6, 1, '1680210019_123.jpg'),
(6, 'Những mẹo hay ho về cuộc sống hàng ngày ', '<h3><strong>L&agrave;m sao để loại bỏ hết m&ugrave;i tỏi khỏi tay, loại bỏ kẹo cao su khỏi m&aacute;i t&oacute;c, &hellip;&nbsp;Những mẹo vặt sau đ&acirc;y sẽ rất hữu &iacute;ch cho bạn h&agrave;ng ng&agrave;y trong cuộc sống.</strong></h3>\r\n\r\n<h3>&nbsp;</h3>\r\n', '<h1>L&agrave;m sao để loại bỏ hết m&ugrave;i tỏi khỏi tay, loại bỏ kẹo cao su khỏi m&aacute;i t&oacute;c, &hellip;&nbsp;Những mẹo vặt sau đ&acirc;y sẽ rất hữu &iacute;ch cho bạn h&agrave;ng ng&agrave;y trong cuộc sống.</h1>\r\n\r\n<h1><img alt=\"\" src=\"https://i0.wp.com/lamsach5s.com/wp-content/uploads/2017/05/a1-5.jpg?resize=601%2C731\" style=\"height:731px; width:601px\" /><img alt=\"\" src=\"https://i0.wp.com/lamsach5s.com/wp-content/uploads/2017/05/a2-3.jpg?resize=600%2C643\" style=\"height:643px; width:600px\" /></h1>\r\n', 5, 1, '1680209285_mvcs.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL,
  `cart_date` varchar(50) NOT NULL,
  `cart_payment` varchar(11) NOT NULL,
  `cart_shipping` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`, `cart_date`, `cart_payment`, `cart_shipping`) VALUES
(39, 11, '1048', 1, '2022-02-06 11:53:02', 'tienmat', 2),
(40, 11, '6315', 1, '2022-02-06 11:53:14', 'chuyenkhoan', 2),
(41, 11, '4559', 1, '2022-02-06 11:53:35', 'paypal', 2),
(42, 11, '9554', 1, '2022-02-06 11:54:52', 'momo', 2),
(43, 11, '2844', 1, '2022-02-06 11:55:05', 'vnpay', 2),
(44, 11, '9487', 1, '2022-02-06 12:47:17', 'tienmat', 2),
(45, 11, '3066', 1, '2022-02-06 12:47:20', 'chuyenkhoan', 2),
(46, 11, '6962', 1, '2022-02-06 12:47:46', 'paypal', 2),
(47, 11, '6140', 1, '2022-02-06 12:48:05', 'vnpay', 2),
(48, 11, '3872', 1, '2022-02-06 12:50:35', 'momo', 2),
(49, 11, '1161', 1, '2022-02-16 16:48:43', 'momo', 2),
(50, 11, '1323', 1, '2022-02-18 14:08:51', 'vnpay', 2),
(51, 15, '5897', 1, '2023-03-31 04:43:50', 'tienmat', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(54, '1048', 12, 1),
(55, '6315', 12, 1),
(56, '4559', 12, 1),
(57, '9554', 12, 1),
(58, '2844', 12, 1),
(59, '9487', 12, 1),
(60, '3066', 12, 1),
(61, '6962', 12, 1),
(62, '6140', 12, 1),
(63, '3872', 12, 1),
(64, '1161', 7, 1),
(65, '1323', 8, 2),
(66, '1323', 6, 3),
(67, '1323', 11, 2),
(68, '5897', 24, 1),
(69, '5897', 32, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `dienthoai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`) VALUES
(1, 'Hiếu Trương', 'truongngoctanhieu2018@gmail.com', 'Dương Quãng Hàm 12 ', '25f9e794323b453885f5181f1b624d0b', '0932023992 '),
(8, 'Hiếu Trương', 'maxime80@example.net', 'Dương Quãng Hàm 12  giao hang', '25f9e794323b453885f5181f1b624d0b', '0932023992'),
(9, 'Hiếu Trương', 'truongngoctanhieu2018@gmail.com', 'Dương Quãng Hàm 12  giao hang', '25f9e794323b453885f5181f1b624d0b', '0932023992'),
(10, 'Hiếu Trương', 'truongngoctanhieu2018@gmail.com', 'Dương Quãng Hàm 12  giao hang', '25f9e794323b453885f5181f1b624d0b', '0932023992'),
(11, 'Hiếu Trương 123', 'truongngoctanhieu2018@gmail.com', 'Dương Quãng Hàm 12  giao hang', 'e10adc3949ba59abbe56e057f20f883e', '0932023992'),
(12, 'Hiếu Trương 123', 'truongngoctanhieu2018@gmail.com', 'Dương Quãng Hàm 12  giao hang', 'e10adc3949ba59abbe56e057f20f883e', '0932023992'),
(13, 'Nguyễn Ngọc Tú', 'tunguyenlucky', '17a Hồ Văn Huê, Phú Nhuận, TP Hồ Chí Minh ', 'ee73b54264c00a0135a0b6c837b03de7', '0356137066'),
(14, 'nguyenngoctu', 'tunguyenlucky13@gmail.com', 'hcm', 'ee73b54264c00a0135a0b6c837b03de7', '0356137066'),
(15, 'Nguyễn Ngọc Tú', 'tu6900704@gmail.com', '17a Hồ Văn Huê, Phú Nhuận, TP Hồ Chí Minh ', 'ee73b54264c00a0135a0b6c837b03de7', '0356137066');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(6, 'Quà mừng sinh nhật', 1),
(7, 'Quà mừng thăng chức', 2),
(8, 'Quà mừng tân gia', 3),
(9, 'Quà tết', 4),
(10, 'Quà tặng mẹ', 5),
(11, 'Quà tặng bạn gái', 6),
(12, 'Đồ lưu niệm đẹp', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmucbaiviet`
--

CREATE TABLE `tbl_danhmucbaiviet` (
  `id_baiviet` int(11) NOT NULL,
  `tendanhmuc_baiviet` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmucbaiviet`
--

INSERT INTO `tbl_danhmucbaiviet` (`id_baiviet`, `tendanhmuc_baiviet`, `thutu`) VALUES
(2, 'quà tặng trao tay', 2),
(4, 'tin tức cuộc sống', 2),
(5, 'mẹo vặt cuộc sống', 3),
(6, 'lời ngỏ ý nghĩa', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_lienhe`
--

CREATE TABLE `tbl_lienhe` (
  `id` int(11) NOT NULL,
  `thongtinlienhe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_lienhe`
--

INSERT INTO `tbl_lienhe` (`id`, `thongtinlienhe`) VALUES
(1, '<ol>\r\n	<li>\r\n	<h3>Số điện thoại :<strong> </strong>0356137066 Ngọc T&uacute;</h3>\r\n	</li>\r\n	<li>\r\n	<h3>Zalo : 0923916001&nbsp;</h3>\r\n	</li>\r\n	<li>\r\n	<h3>Fb :<a href=\"http://facebook.com/hieutan94\"> https://www.facebook.com/critimal.zenx</a></h3>\r\n	</li>\r\n</ol>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h3>&nbsp;</h3>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_momo`
--

CREATE TABLE `tbl_momo` (
  `id_momo` int(11) NOT NULL,
  `partner_code` varchar(50) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `order_info` varchar(50) NOT NULL,
  `order_type` varchar(50) NOT NULL,
  `trans_id` varchar(50) NOT NULL,
  `pay_type` varchar(50) NOT NULL,
  `code_cart` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_momo`
--

INSERT INTO `tbl_momo` (`id_momo`, `partner_code`, `order_id`, `amount`, `order_info`, `order_type`, `trans_id`, `pay_type`, `code_cart`) VALUES
(3, 'MOMOBKUN20180529', '1644123235', '250000', 'Thanh toán qua ATM', 'momo_wallet', '2642535948', 'napas', '9554'),
(4, 'MOMOBKUN20180529', '1644126570', '250000', 'Thanh toán qua ATM', 'momo_wallet', '2642536202', 'napas', '3872'),
(5, 'MOMOBKUN20180529', '1645004827', '350000', 'Thanh toán qua ATM', 'momo_wallet', '2644029861', 'napas', '1161');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(250) NOT NULL,
  `masp` varchar(100) NOT NULL,
  `giasp` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `tomtat` text NOT NULL,
  `noidung` text NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(6, 'ốp lung 1', '001', '250000', 3, '1610014603_tainghe1.jpg', 'dasdas', 'dsadadasdas', 1, 2),
(7, 'tai nghe 2', '002', '350000', 10, '1610014618_tainghe2.png', 'dasdasdas', 'dasdadasdas', 1, 4),
(8, 'Kính cường lực', '003', '750000', 10, '1610014323_tainghe2.png', 'dasd', 'asdsadasdas', 1, 4),
(9, 'kính 1', '004', '250000', 3, '1610015477_tainghe2.png', 'dsad', 'asdasdasdas', 1, 4),
(10, 'Dây ngọc 1', '005', '99000', 10, '1610015549_dayngoc.jpg', 'fsdfs', 'fsdfdsfsdf', 1, 5),
(11, 'ốp lung 1', '001', '250000', 3, '1610016262_tainghe2.png', 'dsdad', 'sadsadasd', 1, 1),
(12, 'ốp lung 1', '001', '250000', 3, '1633710055_dayngoc.jpg', '<ul>\r\n	<li>C&aacute;c t&iacute;nh năng:</li>\r\n	<li>100% Nguy&ecirc;n Bản mới chất lượng cao.</li>\r\n	<li>Thiết kế s&aacute;ng tạo để bảo vệ ho&agrave;n hảo m&aacute;y ảnh của điện thoại.</li>\r\n	<li>Vỏ bảo vệ chất lượng cao, thời trang v&agrave; chất lượng cao.</li>\r\n	<li>Bảo vệ điện thoại chống m&agrave;i m&ograve;n v&agrave; che c&aacute;c vết trầy xước, bụi, dấu v&acirc;n tay</li>\r\n	<li>Dễ d&agrave;ng c&agrave;i đặt v&agrave; gỡ bỏ</li>\r\n	<li>Cho ph&eacute;p truy cập v&agrave;o tất cả c&aacute;c cổng, cảm biến v&agrave; đầu v&agrave;o</li>\r\n	<li>Ho&agrave;n hảo để sử dụng trong mọi hoạt động ngo&agrave;i trời hoặc du lịch để bảo vệ điện thoại của bạn</li>\r\n	<li>Dễ d&agrave;ng c&agrave;i đặt</li>\r\n	<li>Ho&agrave;n to&agrave;n ph&ugrave; hợp cho điện thoại của bạn.</li>\r\n</ul>\r\n', '<p><strong>M&ocirc; tả sản phẩm:</strong><br />\r\n100% mới v&agrave; chưa sử dụng<br />\r\nThiết kế cạnh vu&ocirc;ng cổ điển như Iphone 12 trong tương lai.<br />\r\nDễ th&aacute;o lắp.<br />\r\nCấp thực phẩm silicon, an to&agrave;n v&agrave; cảm gi&aacute;c tay tốt nhất.<br />\r\nThiết kế thời trang gi&uacute;p điện thoại của bạn trở n&ecirc;n độc đ&aacute;o.<br />\r\nĐược l&agrave;m bằng vật liệu chống sốc v&agrave; chống trầy xước.<br />\r\nD&acirc;y buộc miễn ph&iacute; để bảo vệ chống lại những giọt v&ocirc; t&igrave;nh.<br />\r\nTất cả c&aacute;c n&uacute;t chức năng hoạt động ngay khi điện thoại của bạn trong trường hợp n&agrave;y.<br />\r\n<br />\r\n<strong>T&iacute;nh năng:</strong><br />\r\nChất liệu: được l&agrave;m bằng Silicone lỏng mềm chất lượng cao.<br />\r\n<br />\r\n<strong>Nội dung đ&oacute;ng g&oacute;i:</strong><br />\r\n1 x Ốp silicon họa tiết viền<br />\r\n&nbsp;</p>\r\n\r\n<p><img src=\"https://my-live-05.slatic.net/p/78a3b632eb7f92e8b80bd063124e464f.jpg_2200x2200q80.jpg_.webp\" style=\"height:600px; width:600px\" /><br />\r\n<br />\r\n<br />\r\n<br />\r\n&nbsp;</p>\r\n', 1, 5),
(13, 'Vòng tay', '123', '125000', 1, '1680151121_vongtay2.jpg', '<p><strong>V&ograve;ng tay với mẫu m&atilde; d&agrave;nh cho nam. chất lượng, đẹp. c&oacute; thể đeo trang tr&iacute; như phụ kiện thời trang, tăng th&ecirc;m vẻ đẹp cho bạn.</strong></p>\r\n', '<p>v&ograve;ng tay đẹp</p>\r\n', 1, 12),
(14, 'Vòng tay', '124', '100000', 2, '1680151239_vongtay.jpg', '<h2><strong>V&ograve;ng tay với mẫu m&atilde; đơn giản, c&oacute; đ&iacute;nh k&egrave;m một số hạt nhỏ, gi&uacute;p tăng t&iacute;nh thẩm mỹ. ph&ugrave; hợp với những bạn c&aacute; t&iacute;nh</strong></h2>\r\n', '', 1, 12),
(15, 'Vòng tay', '125', '120000', 3, '1680151315_vongtay3.jpg', '<p><strong>Với m&agrave;u sắc xanh m&aacute;t mẻ, v&ograve;ng tay n&agrave;y ph&ugrave; hợp cho mọi người</strong></p>\r\n', '<p>vong tay m&agrave;u xanh l&aacute;</p>\r\n', 1, 12),
(16, 'Vòng tay', '127', '160000', 1, '1680151384_vongtay4.jpg', '<p><strong>V&ograve;ng tay to&aacute;t l&ecirc;n kh&iacute; chất mạnh mẽ cho người đeo. v&ocirc; c&ugrave;ng c&aacute; t&iacute;nh</strong></p>\r\n', '<p>v&ograve;ng tay c&aacute; t&iacute;nh cho ph&aacute;i mạnh</p>\r\n', 1, 12),
(17, 'móc khóa', '111', '25000', 2, '1680151463_mockhoa.jpg', '<p><strong>m&oacute;c kh&oacute;a, phụ kiện thời trang, d&ugrave;ng để trang tr&iacute;. si&ecirc;u dễ thương</strong></p>\r\n', '<p><strong>m&oacute;c kh&oacute;a thời trang dễ thương</strong></p>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -12px; top: -4.8px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>\r\n', 1, 12),
(18, 'cầu thủy tinh', '158', '250000', 1, '1680151569_cauthuytinh.jpg', '<p><strong>Quả cầu l&agrave;m bằng thủy tinh, c&oacute; gắn đ&egrave;n. m&oacute;n qu&agrave; d&ugrave;ng để trang tr&iacute; cho kh&ocirc;ng gian học tập v&agrave; l&agrave;m việc. C&oacute; thể tặng cho mọi người m&agrave; bạn th&iacute;ch</strong></p>\r\n', '<p>cầu thủy tinh đẹp</p>\r\n', 1, 12),
(19, 'ví da', '110', '190000', 1, '1680151885_vída.jpg', '<p><strong>chiếc v&iacute; th&iacute;ch hợp để tặng v&agrave;o dịp thăng chức của bạn trai</strong></p>\r\n', '<p>v&iacute; da đẹp</p>\r\n', 1, 7),
(20, 'Bánh sinh nhật', '113', '150000', 1, '1680151977_bánh sn.jpg', '<p>M&oacute;n qu&agrave; kh&ocirc;ng thể thiếu trong ng&agrave;y sinh nhật bạn b&egrave; hay người th&acirc;n</p>\r\n', '<p>b&aacute;nh sinh nhat cho bạn b&egrave; người th&acirc;n</p>\r\n', 1, 6),
(21, 'túi xách', '134', '1305000', 1, '1680152078_túi xách.jpg', '<p><strong>M&oacute;n qu&agrave; tặng bạn g&aacute;i &yacute; nghĩa</strong></p>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: 1px; top: -4.8px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>\r\n', '<p>t&uacute;i x&aacute;ch đẹp cho bạn g&aacute;i</p>\r\n', 1, 11),
(22, 'giày cao gót', '2204', '2100000', 1, '1680152149_giaycaogot.jpg', '<p><strong>gi&agrave;y cao g&oacute;t ch&iacute;nh h&atilde;ng, chất lượng cao, t&ocirc;n l&ecirc;n d&aacute;ng vẻ qu&yacute; ph&aacute;i của người phụ nữ bạn y&ecirc;u</strong></p>\r\n', '', 1, 11),
(23, 'nước hoa', '5304', '5000000', 2, '1680152250_nướchoa.png', '<p>nước hoa lưu hương l&acirc;u, chất lượng, với th&agrave;nh phần &iacute;t g&acirc;y k&iacute;ch ứng. ph&ugrave; hợp cho cả nam lẫn nữ. ph&ugrave; hợp l&agrave;m qu&agrave; tặng.</p>\r\n', '<p>nước hoa</p>\r\n', 1, 11),
(24, 'ghế massage', '981', '15000000', 1, '1680152408_ghemassa.jpg', '<p><strong>d&agrave;nh cho mọi lứa tuổi, gi&uacute;p thư gi&atilde;n. ph&ugrave; hợp để tặng cho người bạn y&ecirc;u thương.</strong></p>\r\n', '<p>ghế massage</p>\r\n', 1, 10),
(25, 'bộ dụng cụ trang điểm', '001', '5000000', 1, '1680152544_đồ trang điểm.jpg', '<p><strong>bộ dụng cụ trang điểm cho ph&aacute;i đẹp</strong></p>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -4px; top: 38.6px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>\r\n', '<p>dụng cụ trang điểm</p>\r\n', 1, 11),
(26, 'dụng cụ tràn điểm', '001', '50', 1, '1680152607_đồ trang điểm.jpg', '<p><strong>đồ trang điểm cho ph&aacute;i đẹp</strong></p>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -2px; top: -4.8px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>\r\n', '<p>đồ trang điểm tặng mẹ</p>\r\n', 1, 10),
(27, 'Bộ quà tết 1', '331', '500000', 1, '1680152789_quà tết 3.jpg', '<p><strong>bộ qu&agrave; tết đầy đủ, c&oacute; thể đem tặng cho mọi người dịp tết n&agrave;y !!!</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>qu&agrave; tết 1</p>\r\n', 1, 9),
(28, 'Bộ quà tết 2', '003', '1500000', 1, '1680154072_quà tết 2.jpg', '<p><strong>Bộ qu&agrave; tết &yacute; nghĩa d&agrave;nh cho gia đ&igrave;nh bạn</strong></p>\r\n', '<p>qu&agrave; tết 2</p>\r\n', 1, 9),
(29, 'Bộ quà tết 3', '005', '1250000', 1, '1680154161_quà tết 1.jpg', '<p><strong>Bộ sản phẩm d&agrave;nh tặng người th&acirc;n ng&agrave;y tết đến, &yacute; nghĩa.</strong></p>\r\n', '<p>qu&agrave; tết &yacute; nghĩa cho gia đ&igrave;nh</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 9),
(30, 'Mèo thần tài', '1523', '150000', 1, '1680154404_qua-tang-tan-gia.jpg', '<p><strong>M&egrave;o chi&ecirc;u t&agrave;i, qu&agrave; tặng t&acirc;n gia &yacute; nghĩa</strong></p>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -12px; top: 38.6px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>\r\n', '<p>m&egrave;o thần t&agrave;i, qu&agrave; &yacute; nghĩa mừng t&acirc;n gia</p>\r\n', 1, 8),
(31, 'Bộ dụng cụ pha trà', '1339', '1590000', 1, '1680154489_qua-tang-tan-gia-bo-dung-cu-pha-tra.jpg', '<p><strong>Bộ dụng cụ pha tr&agrave;, phong c&aacute;ch tao nh&atilde;, ph&ugrave; hợp để tặng qu&agrave; mừng t&acirc;n gia</strong></p>\r\n', '<p>bộ pha tr&agrave; mừng t&acirc;n gia</p>\r\n', 1, 8),
(32, 'Đồng hồ', '1509', '1500000', 1, '1680154757_qua-tang-tan-gia-dong-ho.jpg', '<p><strong>Đồng hồ mừng t&acirc;n gia</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: 5px; top: 38.6px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>\r\n', '<p>bộ ấm tr&agrave; mừng t&acirc;n gia</p>\r\n', 1, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `id_shipping` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `note` varchar(100) NOT NULL,
  `id_dangky` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`id_shipping`, `name`, `phone`, `address`, `note`, `id_dangky`) VALUES
(1, 'Hiếu Programming Đẹp Giai', '0932023992', 'Số 1 Lê Duẩn, Bến Nghé, Quận 1, Hiệp Thành,Quận 12', 'adasdas', 1),
(2, 'Hiếu Programming Đẹp Giai', '0932023992', 'Số 1 Lê Duẩn, Bến Nghé, Quận 1, Hiệp Thành,Quận 12', 'Giao nhanh nhé', 11),
(3, 'Hiếu Programming Đẹp Giai', '0932023992', 'Số 1 Lê Duẩn, Bến Nghé, Quận 1, Hiệp Thành,Quận 12', 'dasdsa', 0),
(4, 'Nguyễn Ngọc Tú', '0356137066', 'hcm', '', 14);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_thongke`
--

CREATE TABLE `tbl_thongke` (
  `id` int(11) NOT NULL,
  `ngaydat` varchar(30) NOT NULL,
  `donhang` int(11) NOT NULL,
  `doanhthu` varchar(100) NOT NULL,
  `soluongban` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_thongke`
--

INSERT INTO `tbl_thongke` (`id`, `ngaydat`, `donhang`, `doanhthu`, `soluongban`) VALUES
(1, '2021-10-23', 50, '15500000', 25),
(2, '2021-10-22', 55, '25500000', 25),
(3, '2021-10-21', 50, '15600000', 30),
(4, '2021-10-24', 10, '36500000', 30),
(5, '2021-10-25', 2, '5600000', 10),
(6, '2021-10-26', 8, '6500000', 9),
(7, '2021-10-28', 2, '600000', 10),
(8, '2021-10-29', 8, '500000', 9),
(9, '2021-10-31', 8, '500000', 9),
(10, '2021-10-01', 8, '500000', 9),
(11, '2021-08-01', 8, '700000', 9),
(12, '2021-10-03', 8, '700000', 9),
(14, '2021-10-30', 3, '1500000', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_vnpay`
--

CREATE TABLE `tbl_vnpay` (
  `id_vnpay` int(11) NOT NULL,
  `vnp_amount` varchar(50) NOT NULL,
  `vnp_bankCode` varchar(50) NOT NULL,
  `vnp_banktranno` varchar(50) NOT NULL,
  `vnp_cardtype` varchar(50) NOT NULL,
  `vnp_orderinfo` varchar(100) NOT NULL,
  `vnp_paydate` varchar(50) NOT NULL,
  `vnp_tmncode` varchar(50) NOT NULL,
  `vnp_transactionno` varchar(50) NOT NULL,
  `code_cart` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_vnpay`
--

INSERT INTO `tbl_vnpay` (`id_vnpay`, `vnp_amount`, `vnp_bankCode`, `vnp_banktranno`, `vnp_cardtype`, `vnp_orderinfo`, `vnp_paydate`, `vnp_tmncode`, `vnp_transactionno`, `code_cart`) VALUES
(4, '25000000', 'NCB', '20220206115602', 'ATM', 'Thanh toán đơn hàng đặt tại web', '20220206115533', 'UD2KZW06', '13682669', '2844'),
(5, '25000000', 'NCB', '20220206124857', 'ATM', 'Thanh toán đơn hàng đặt tại web', '20220206124854', 'UD2KZW06', '13682671', '6140');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Chỉ mục cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  ADD PRIMARY KEY (`id_baiviet`);

--
-- Chỉ mục cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_momo`
--
ALTER TABLE `tbl_momo`
  ADD PRIMARY KEY (`id_momo`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Chỉ mục cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`id_shipping`);

--
-- Chỉ mục cho bảng `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_vnpay`
--
ALTER TABLE `tbl_vnpay`
  ADD PRIMARY KEY (`id_vnpay`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_momo`
--
ALTER TABLE `tbl_momo`
  MODIFY `id_momo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `id_shipping` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_vnpay`
--
ALTER TABLE `tbl_vnpay`
  MODIFY `id_vnpay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
