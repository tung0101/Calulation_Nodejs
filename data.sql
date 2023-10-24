-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 24, 2023 lúc 05:06 AM
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
  `so_tien` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coc`
--

INSERT INTO `coc` (`id`, `nguoi`, `ngay_thanh_toan`, `so_tien`) VALUES
(8, 'Nguyễn Trung Hải', '2023-09-18', 68000.00),
(10, 'Nguyễn Trung Hải', '2023-10-11', 20000.00);

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
  `tinh_trang` enum('Đã xong','Chưa xong') DEFAULT NULL,
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
(18, 'Nguyễn Trung Hải', 'Facebook', 'Cảm xúc', 200, 20, '2023-10-06', 'Đã xong', 4000),
(19, 'Nguyễn Trung Hải', 'Facebook', 'Like chậm', 300, 25, '2023-10-06', 'Đã xong', 7500),
(21, 'Nguyễn Doãn Tùng', 'Facebook', 'Like chậm', 1000, 25, '2023-10-07', 'Chưa xong', 25000),
(22, 'Nguyễn Doãn Tùng', 'Facebook', 'Like chậm', 500, 25, '2023-10-08', 'Chưa xong', 12500),
(23, 'Nguyễn Trung Hải', 'Facebook', 'Like chậm', 250, 25, '2023-10-11', 'Đã xong', 6250),
(24, 'Nguyễn Trung Hải', 'Facebook', 'Cảm xúc', 150, 20, '2023-10-11', 'Đã xong', 3000),
(25, 'Nguyễn Trung Hải', 'Facebook', 'Like chậm', 150, 25, '2023-10-14', 'Đã xong', 3750),
(26, 'Nguyễn Trung Hải', 'Facebook', 'Cảm xúc', 100, 20, '2023-10-14', 'Đã xong', 2000);

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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `questions`
--

INSERT INTO `questions` (`id`, `question`, `answer`) VALUES
(1, 'Hello, Hi, Xin chào', 'Xin chào anh/chị\n\nChúng tôi có thể giúp gì được cho anh chị ạ?'),
(2, 'Bạn có những dịch vụ spa nào?', 'Chúng tôi cung cấp các dịch vụ spa như massage, xông hơi, chăm sóc da, làm móng, và gội đầu.'),
(3, 'Bạn có gói dịch vụ nào phổ biến nhất?', 'Gói dịch vụ phổ biến nhất của chúng tôi là \"Trọn bộ chăm sóc toàn diện\" bao gồm massage, xông hơi và chăm sóc da.'),
(4, 'Bạn có giá ưu đãi cho khách hàng thường xuyên không?', 'Chúng tôi có chương trình thành viên để khách hàng thường xuyên nhận được ưu đãi đặc biệt và giảm giá cho các dịch vụ spa.'),
(5, 'Tôi có thể đặt lịch hẹn qua điện thoại không?', 'Đương nhiên! Bạn có thể đặt lịch hẹn qua số điện thoại XXXX hoặc trực tiếp ghé thăm cửa hàng để đặt lịch.'),
(6, 'Làm thế nào để đặt lịch hẹn trực tuyến?', 'Bạn có thể đặt lịch hẹn trực tuyến trên trang web của chúng tôi bằng cách điền vào biểu mẫu đặt lịch hẹn.'),
(7, 'Spa của bạn có chương trình đào tạo cho học viên không?', 'Đúng vậy! Chúng tôi cung cấp chương trình đào tạo chuyên nghiệp cho học viên muốn trở thành nhân viên trong ngành spa.'),
(8, 'Chương trình đào tạo của bạn bao gồm những khóa học nào?', 'Chương trình đào tạo của chúng tôi bao gồm các khóa học về massage, chăm sóc da, làm móng, xông hơi và các kỹ năng khác liên quan đến spa.'),
(9, 'Bạn có chứng chỉ sau khi hoàn thành khóa đào tạo không?', 'Có, học viên hoàn thành khóa đào tạo sẽ nhận được chứng chỉ chứng nhận về kỹ năng và kiến thức đã học.'),
(10, 'Chương trình đào tạo của bạn kéo dài bao lâu?', 'Thời gian đào tạo phụ thuộc vào từng khóa học cụ thể. Thông thường, chương trình đào tạo kéo dài từ vài tuần đến một vài tháng.'),
(11, 'Bạn yêu cầu điều kiện gì để tham gia chương trình đào tạo?', 'Để tham gia chương trình đào tạo, học viên cần có tuổi trên 18, đam mê và sự cam kết với ngành spa.'),
(12, ' Chương trình đào tạo có thể linh hoạt về thời gian không?', 'Chúng tôi cung cấp các lịch học linh hoạt, bao gồm cả buổi học ban ngày và ban tối, để phù hợp với lịch trình của học viên.'),
(13, ' Học viên có cơ hội thực hành trong Spa không?', ' Đúng vậy! Chúng tôi cung cấp cơ hội thực hành thực tế trong Spa để học viên có thể áp dụng kiến thức đã học vào thực tế.'),
(14, 'Có cơ hội việc làm sau khi hoàn thành khóa đào tạo không?', 'Chúng tôi sẽ hỗ trợ học viên tìm kiếm cơ hội việc làm sau khi hoàn thành khóa đào tạo và có thể giới thiệu họ cho đối tác và nhà tuyển dụng trong ngành spa.'),
(15, 'Chương trình đào tạo của bạn có học phí không?', 'Chương trình đào tạo có học phí. Vui lòng liên hệ với chúng tôi để biết thông tin chi tiết về học phí và các khoản hỗ trợ tài chính có sẵn.'),
(16, 'Bạn có giáo viên chuyên nghiệp hướng dẫn trong chương trình đào tạo không?', 'Chúng tôi có đội ngũ giáo viên giàu kinh nghiệm và chuyên môn trong lĩnh vực spa'),
(17, 'Bạn có dịch vụ làm đẹp cho cô dâu không?', 'Đúng vậy! Chúng tôi cung cấp các dịch vụ làm đẹp đặc biệt dành cho cô dâu, bao gồm trang điểm, làm tóc và chăm sóc da.'),
(18, 'Bạn có dịch vụ trị liệu và phục hồi sau chấn thương không?', 'Chúng tôi cung cấp dịch vụ trị liệu và phục hồi sau chấn thương, bao gồm massage tái tạo cơ bản và các phương pháp trị liệu đặc biệt.'),
(19, 'Bạn có dịch vụ xóa mụn không?', 'Chúng tôi cung cấp dịch vụ xóa mụn và điều trị da mụn bằng các liệu pháp chuyên nghiệp và sản phẩm chăm sóc da đặc biệt.'),
(20, 'Bạn có dịch vụ tẩy lông không?', 'Chúng tôi có dịch vụ trị liệu bằng đá nóngđể giúp cơ thể thư giãn, giảm căng thẳng và cân bằng năng lượng.');

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
-- Chỉ mục cho bảng `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `coc`
--
ALTER TABLE `coc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `gia`
--
ALTER TABLE `gia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `lich`
--
ALTER TABLE `lich`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
