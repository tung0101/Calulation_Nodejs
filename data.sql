-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 30, 2023 lúc 07:23 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `data_cate`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coc`
--

CREATE TABLE `coc` (
  `id` int(11) NOT NULL,
  `nguoi` varchar(255) DEFAULT NULL,
  `ngay_thanh_toan` date DEFAULT NULL,
  `so_tien` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coc`
--

INSERT INTO `coc` (`id`, `nguoi`, `ngay_thanh_toan`, `so_tien`) VALUES
(8, 'Nguyễn Trung Hải', '2023-09-18', 68000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `don_hang`
--

CREATE TABLE `don_hang` (
  `id` int(11) NOT NULL,
  `nguoi_dat` varchar(255) DEFAULT NULL,
  `loai_hang` varchar(255) DEFAULT NULL,
  `loai_sp` varchar(255) DEFAULT NULL,
  `so_luong` int(11) DEFAULT NULL,
  `gia` float DEFAULT NULL,
  `ngay` date DEFAULT NULL,
  `tinh_trang` enum('Đã xong','Đã nhận') DEFAULT NULL,
  `thanh_tien` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `don_hang`
--

INSERT INTO `don_hang` (`id`, `nguoi_dat`, `loai_hang`, `loai_sp`, `so_luong`, `gia`, `ngay`, `tinh_trang`, `thanh_tien`) VALUES
(7, 'Nguyễn Trung Hải', 'Facebook', 'Like chậm', 400, 23, '2023-09-18', 'Đã xong', 9200),
(8, 'Nguyễn Trung Hải', 'Facebook', 'Cảm xúc', 100, 20, '2023-09-18', 'Đã xong', 2000),
(9, 'Nguyễn Trung Hải', 'Facebook', 'Like chậm', 300, 23, '2023-09-08', 'Đã xong', 6900),
(10, 'Nguyễn Trung Hải', 'Facebook', 'Cảm xúc', 100, 20, '2023-09-08', 'Đã xong', 2000),
(11, 'Nguyễn Trung Hải', 'Facebook', 'Like chậm', 400, 23, '2023-09-22', 'Đã xong', 9200),
(12, 'Nguyễn Trung Hải', 'Facebook', 'Cảm xúc', 100, 20, '2023-09-22', 'Đã xong', 2000),
(13, 'Nguyễn Trung Hải', 'Facebook', 'Like chậm', 200, 23, '2023-09-27', 'Đã xong', 4600),
(14, 'Nguyễn Trung Hải', 'Facebook', 'Cảm xúc', 200, 20, '2023-09-27', 'Đã xong', 4000),
(15, 'Nguyễn Trung Hải', 'Facebook', 'Like chậm', 300, 23, '2023-09-30', 'Đã xong', 6900),
(16, 'Nguyễn Trung Hải', 'Facebook', 'Cảm xúc', 100, 20, '2023-09-30', 'Đã xong', 2000),
(17, 'Nguyễn Trung Hải', 'Facebook', 'Cảm xúc', 100, 20, '2023-09-30', 'Đã xong', 2000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gia`
--

CREATE TABLE `gia` (
  `id` int(11) NOT NULL,
  `loai_hang` varchar(255) DEFAULT NULL,
  `ten_san_pham` varchar(255) DEFAULT NULL,
  `gia` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gia`
--

INSERT INTO `gia` (`id`, `loai_hang`, `ten_san_pham`, `gia`) VALUES
(1, 'Facebook', 'Like', 15),
(3, 'Facebook', 'Cảm xúc', 20),
(5, 'Facebook', 'Follow', 0),
(6, 'Facebook', 'Like ưu tiên', 20),
(7, 'Facebook', 'Share', 1000),
(8, 'Facebook', 'Like chậm', 23);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `coc`
--
ALTER TABLE `coc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gia`
--
ALTER TABLE `gia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `coc`
--
ALTER TABLE `coc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `gia`
--
ALTER TABLE `gia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
