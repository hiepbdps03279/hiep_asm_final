-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2016 at 04:10 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hiepbdps03279`
--

-- --------------------------------------------------------

--
-- Table structure for table `dathang`
--

CREATE TABLE `dathang` (
  `id` int(11) NOT NULL,
  `tendangnhap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `idsp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ProductName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Price` int(255) DEFAULT NULL,
  `TongTien` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dathang`
--

INSERT INTO `dathang` (`id`, `tendangnhap`, `idsp`, `ProductName`, `sl`, `Price`, `TongTien`) VALUES
(1, 'DangHiep', '1', 'Mouse Gaming', '1', 6000000, 6000000),
(24, 'MinhLong', '4', 'Laptop Gaming', '1', 6000000, 6000000),
(25, 'abc123', '2', 'Mouse Gaming', '2', 6000000, 1200000),
(26, 'DuyKhanh', '5', 'Card Màn Hình Gaming', '2', 6000000, 1200000),
(27, 'MinhLong', '4', 'Tai nghe Gaming', '1', 6000000, 6000000),
(28, 'abc123', '2', 'Tai nghe Gaming', '2', 6000000, 1200000),
(29, 'DuyKhanh', '5', 'Laptop Gaming', '2', 6000000, 1200000),
(30, 'DucTan', '1', 'Mouse Gaming', '1', 6000000, 6000000),
(31, 'DangHiep', '1', 'Laptop Gaming', '1', 16000000, 16000000);

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

CREATE TABLE `giohang` (
  `idgh` int(255) NOT NULL,
  `idsp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tendangnhap` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ProductName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Price` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `giohang`
--

INSERT INTO `giohang` (`idgh`, `idsp`, `tendangnhap`, `sl`, `ProductName`, `Image`, `Price`) VALUES
(96, '11', '', '1', 'Bàn phím Gaming Cool Master Full Led', 'uploaded_files/gamingkeyboard.jpg', '312312000'),
(97, '10', '', '1', 'Case máy tính cao cấp AsRock CIA007', 'uploaded_files/0010687nokiax6_8gb.191.248.jpg', '1200000'),
(98, '50', '', '1', 'Tai nghe chơi game Steelseries MSX175', 'uploaded_files/5341643lg_g_pro_lite_dual_01.191.248.jpg', '3400000'),
(99, '50', '', '1', 'Tai nghe chơi game Steelseries MSX175', 'uploaded_files/5341643lg_g_pro_lite_dual_01.191.248.jpg', '3400000'),
(100, '10', '', '1', 'Case máy tính cao cấp AsRock CIA007', 'uploaded_files/0010687nokiax6_8gb.191.248.jpg', '1200000');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `id` int(11) NOT NULL,
  `tendangnhap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sodienthoai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quanhuyen` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `thanhpho` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tgiandatmua` timestamp NULL DEFAULT NULL,
  `paymethod` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`id`, `tendangnhap`, `hoten`, `sodienthoai`, `email`, `diachi`, `quanhuyen`, `thanhpho`, `tgiandatmua`, `paymethod`) VALUES
(1, 'DangHiep', 'Bui Dang Hiep', '0313546541', 'boy_vip_pro@yahoo.com.vn', 'Giai Phong', 'Tan Binh', 'Ho Chi Minh', '2015-04-18 07:45:48', NULL),
(2, 'abc123', 'Lo Thanh Phu', '031345654', '123123@gmail.com', 'le hoan', 'Hoan Kiem', 'Ha Noi', '2015-04-18 07:46:27', NULL),
(3, 'DucTan', 'Ta Duc Tan', '0321321654', '1231233@gmail.com', 'Ngo Quyen', 'Thu Duc', 'Ho Chi Minh', '2015-04-18 08:03:22', NULL),
(4, 'MinhLong', 'Tran Minh Long', '0123784512', '123123@gmail.com', 'Thang Long', 'Go Vap', 'Ho Chi Minh', '2015-04-18 08:03:52', NULL),
(5, 'DuyKhanh', 'Le Tu Duy Khanh', '0974132132', 'sadsa@gmail.com', 'Nguyen Thai Binh', 'Binh Tan', 'Ho Chi Minh', '2015-04-18 08:04:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `ID` int(11) NOT NULL,
  `ParentID` int(11) NOT NULL,
  `ModuleName` varchar(255) DEFAULT NULL,
  `MenuName` varchar(255) NOT NULL,
  `Path` varchar(255) NOT NULL,
  `Visible` bit(1) DEFAULT NULL,
  `Possition` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`ID`, `ParentID`, `ModuleName`, `MenuName`, `Path`, `Visible`, `Possition`) VALUES
(1, 0, 'administrator', 'Trang chủ', '?mod=products', b'1', 1),
(8, 0, 'users', 'User', '?mod=users	', b'0', 5),
(15, 0, 'gioithieu', 'Xem đơn hàng', '?mod=hoadon', b'1', 7),
(24, 0, 'menus', 'Menu', '?mod=menus', b'1', 7),
(36, 0, 'administrator', 'Giỏ Hàng', '?mod=giohang', b'1', 12);

-- --------------------------------------------------------

--
-- Table structure for table `menu_role`
--

CREATE TABLE `menu_role` (
  `MenuID` int(11) NOT NULL DEFAULT '0',
  `RoleID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_role`
--

INSERT INTO `menu_role` (`MenuID`, `RoleID`) VALUES
(1, 4),
(8, 4),
(13, 4),
(15, 4),
(17, 1),
(17, 4),
(25, 4),
(27, 4),
(28, 4),
(29, 4),
(30, 4),
(31, 4),
(32, 4),
(33, 1),
(34, 1),
(35, 4),
(36, 1),
(36, 4),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ID` int(11) NOT NULL,
  `ProductTypeID` int(11) DEFAULT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `SKU` varchar(255) DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Description` text,
  `Hedieuhanh` varchar(255) DEFAULT NULL,
  `Manhinh` varchar(255) DEFAULT NULL,
  `Ram` varchar(255) DEFAULT NULL,
  `Camera` varchar(255) DEFAULT NULL,
  `Pin` varchar(255) DEFAULT NULL,
  `CPU` varchar(255) DEFAULT NULL,
  `PriceNew` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ID`, `ProductTypeID`, `ProductName`, `SKU`, `Price`, `Image`, `Description`, `Hedieuhanh`, `Manhinh`, `Ram`, `Camera`, `Pin`, `CPU`, `PriceNew`) VALUES
(7, 9, 'Laptop Gaming MSI GE62 2QD APACHE', 'PS0005', 240000000, 'uploaded_files/laptopgaming.jpg', 'Laptop Gaming thế hệ mới nhất', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 9, 'Case máy tính cao cấp AsRock CIA007', 'PS0003', 1200000, 'uploaded_files/0010687nokiax6_8gb.191.248.jpg', 'Thùng đựng linh kiện máy tính', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 9, 'Bàn phím Gaming Cool Master Full Led', 'PS0001', 2700000, 'uploaded_files/gamingkeyboard.jpg', 'Bàn phím cơ gaming', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 9, 'Bàn phím cơ Cool Master Full Led', 'PS0007', 3000000, 'uploaded_files/keyboard.jpg', 'Bàn phím cơ', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 9, 'Tai nghe chơi game Steelseries MSX175', 'PS0007', 3400000, 'uploaded_files/5341643lg_g_pro_lite_dual_01.191.248.jpg', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 9, 'Chuột Gaming Asus ASI2016 DPI 1600', 'PS0007', 2500000, 'uploaded_files/3iax6_8gb.191.248.jpg', 'Chuột Gaming ', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_type`
--

CREATE TABLE `products_type` (
  `ID` int(11) NOT NULL,
  `ProductTypeName` varchar(255) DEFAULT NULL,
  `Possition` int(11) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_type`
--

INSERT INTO `products_type` (`ID`, `ProductTypeName`, `Possition`, `Description`) VALUES
(9, 'Gaming Gear', 9, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(150) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `active` bit(1) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `create_user` varchar(100) DEFAULT NULL,
  `modify_date` timestamp NULL DEFAULT NULL,
  `modify_user` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `firstname`, `lastname`, `email`, `phone`, `active`, `create_date`, `create_user`, `modify_date`, `modify_user`) VALUES
('admin', 'admin', NULL, NULL, NULL, NULL, b'1', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dathang`
--
ALTER TABLE `dathang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`idgh`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `menu_role`
--
ALTER TABLE `menu_role`
  ADD PRIMARY KEY (`MenuID`,`RoleID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `products_type`
--
ALTER TABLE `products_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dathang`
--
ALTER TABLE `dathang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `giohang`
--
ALTER TABLE `giohang`
  MODIFY `idgh` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `products_type`
--
ALTER TABLE `products_type`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
