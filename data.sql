-- Tạo bảng `coc`
CREATE TABLE `coc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nguoi` varchar(255) DEFAULT NULL,
  `ngay_thanh_toan` date DEFAULT NULL,
  `so_tien` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Thêm dữ liệu vào bảng `coc`
INSERT INTO `coc` (`id`, `nguoi`, `ngay_thanh_toan`, `so_tien`) VALUES
(1, 'Nguyễn Văn A', '2023-09-16', 50),
(2, 'Nguyễn Văn B', '2023-09-17', 100);

-- Tạo bảng `don_hang`
CREATE TABLE `don_hang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nguoi_dat` varchar(255) DEFAULT NULL,
  `loai_hang` varchar(255) DEFAULT NULL,
  `loai_sp` varchar(255) DEFAULT NULL,
  `so_luong` int(11) DEFAULT NULL,
  `gia` float DEFAULT NULL,
  `ngay` date DEFAULT NULL,
  `tinh_trang` enum('Đã xong','Đã nhận') DEFAULT NULL,
  `thanh_tien` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Thêm dữ liệu vào bảng `don_hang`
INSERT INTO `don_hang` (`id`, `nguoi_dat`, `loai_hang`, `loai_sp`, `so_luong`, `gia`, `ngay`, `tinh_trang`, `thanh_tien`) VALUES
(1, 'Nguyễn Văn A', 'Facebook', 'Like', 500, 25, '2023-09-16', 'Đã xong', 12500),
(2, 'Nguyễn Văn B', 'Instagram', 'Follow', 300, 15, '2023-09-17', 'Đã nhận', 4500);

-- Tạo bảng `gia`
CREATE TABLE `gia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loai_hang` varchar(255) DEFAULT NULL,
  `ten_san_pham` varchar(255) DEFAULT NULL,
  `gia` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Thêm dữ liệu vào bảng `gia`
INSERT INTO `gia` (`id`, `loai_hang`, `ten_san_pham`, `gia`) VALUES
(1, 'Facebook', 'Like', 1000),
(2, 'Instagram', 'Follow', 800);
