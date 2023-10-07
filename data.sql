-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 07, 2023 lúc 06:58 AM
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
(8, 'Nguyễn Trung Hải', '2023-09-18', 68000),
(9, 'Nguyễn Văn A', '2023-10-04', 50000);

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
(17, 'Nguyễn Trung Hải', 'Facebook', 'Cảm xúc', 100, 20, '2023-09-30', 'Đã xong', 2000),
(18, 'Nguyễn Trung Hải', 'Facebook', 'Like chậm', 300, 25, '2023-10-06', 'Đã xong', 7500),
(19, 'Nguyễn Trung Hải', 'Facebook', 'Cảm xúc', 200, 20, '2023-10-06', 'Đã xong', 4000);

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
(1, 'Facebook', 'Like nhanh', 17),
(3, 'Facebook', 'Cảm xúc', 20),
(5, 'Facebook', 'Follow', 0),
(6, 'Facebook', 'Like ưu tiên', 20),
(7, 'Facebook', 'Share', 1000),
(8, 'Facebook', 'Like chậm', 25),
(9, 'Tik Tok', 'Tym video Bh 1 tháng ', 22),
(10, 'Tik Tok', 'Sub kênh Bảo hành 1 tháng', 60),
(11, 'Tik Tok', 'View video Tỷ Lệ Cắn Đề Xuất Cao, Bh 30 ngày', 7),
(12, 'Tik Tok', 'Share video Bh 1 tháng', 25);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lich`
--

CREATE TABLE `lich` (
  `id` int(11) NOT NULL,
  `thu` varchar(255) DEFAULT NULL,
  `cong_viec` varchar(255) DEFAULT NULL,
  `gio` time DEFAULT NULL,
  `ghi_chu` text DEFAULT NULL,
  `ngay` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lich`
--

INSERT INTO `lich` (`id`, `thu`, `cong_viec`, `gio`, `ghi_chu`, `ngay`) VALUES
(5, 'Thứ 2', 'Học nhóm tại trường', '17:00:00', 'Tập trung và họp và làm dự án tốt nghiệp ', '2023-10-02'),
(6, 'Thứ 3', 'Học nhóm oline', '19:00:00', 'Làm document và sơ đồ users case cho dự án tốt nghiệp', '2023-10-03'),
(8, 'Thứ 4', 'Họp thực tập doanh nghiệp', '14:30:00', 'Nghe về UI UX của dự án\r\n', '2023-10-04'),
(10, 'Thứ 4', 'Học nhóm tại trường', '17:00:00', 'Tập trung và họp và làm dự án tốt nghiệp, xây dưng sơ đồ ERD', '2023-10-04'),
(11, 'Thứ 5', 'Tự học ở nhà', '13:00:00', 'Tự học và xây dựng Calulations', '2023-10-05'),
(12, 'Thứ 6', 'Học nhóm tại trường', '17:00:00', 'Tập trung và họp và làm dự án tốt nghiệp', '2023-10-06'),
(13, 'Thứ 7', 'Họp thực tập doanh nghiệp', '13:00:00', 'Traning công việc THỰC TẬP', '2023-10-07'),
(14, 'Thứ 5', 'Học nhóm thực tập dự án oline', '20:00:00', 'Ngày thứ 5 8h xác định việc mọi người tạo ví meta mask và kết nối smart contract thành công chưa\r\nSau đó Phi traning sài Git ', '2023-10-05'),
(15, 'Thứ 7', 'Học nhóm thực tập dự án oline', '20:00:00', 'Ngày thứ 7 8h tiến hành chia base src   lên github thì tất cả tìm hiểu và góp ý về base src và đưa ra base src hoàn chỉnh ', '2023-10-07');

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
-- Chỉ mục cho bảng `lich`
--
ALTER TABLE `lich`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `coc`
--
ALTER TABLE `coc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `gia`
--
ALTER TABLE `gia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `lich`
--
ALTER TABLE `lich`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
