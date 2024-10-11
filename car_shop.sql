CREATE DATABASE IF NOT EXISTS `carshop` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `carshop`;

-- Table structure for table `danh_muc`
DROP TABLE IF EXISTS `danh_muc`;
CREATE TABLE `danh_muc` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ten_danh_muc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Table structure for table `hang_san_xuat`
DROP TABLE IF EXISTS `hang_san_xuat`;
CREATE TABLE `hang_san_xuat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ten_hang_san_xuat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Table structure for table `vai_tro`
DROP TABLE IF EXISTS `vai_tro`;
CREATE TABLE `vai_tro` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ten_vai_tro` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

SET foreign_key_checks = 0;

-- Table structure for table `nguoi_dung`
DROP TABLE IF EXISTS `nguoi_dung`;
CREATE TABLE `nguoi_dung` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dia_chi` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ho_ten` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `so_dien_thoai` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Enable foreign key checks
SET foreign_key_checks = 1;

-- Table structure for table `don_hang`
DROP TABLE IF EXISTS `don_hang`;
CREATE TABLE `don_hang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dia_chi_nhan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ghi_chu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ho_ten_nguoi_nhan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngay_dat_hang` datetime DEFAULT NULL,
  `ngay_giao_hang` datetime DEFAULT NULL,
  `ngay_nhan_hang` datetime DEFAULT NULL,
  `sdt_nhan_hang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trang_thai_don_hang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ma_nguoi_dat` bigint(20) DEFAULT NULL,
  `ma_shipper` bigint(20) DEFAULT NULL,
  `tong_gia_tri` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnguoidung_idx` (`ma_shipper`),
  KEY `FKnguoidung1_idx` (`ma_nguoi_dat`),
  CONSTRAINT `FKnguoidung` FOREIGN KEY (`ma_shipper`) REFERENCES `nguoi_dung` (`id`),
  CONSTRAINT `FKnguoidung1` FOREIGN KEY (`ma_nguoi_dat`) REFERENCES `nguoi_dung` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Table structure for table `gio_hang`
DROP TABLE IF EXISTS `gio_hang`;
CREATE TABLE `gio_hang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tong_tien` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ma_nguoi_dung` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnguoidung6_idx` (`ma_nguoi_dung`),
  CONSTRAINT `FKnguoidung6` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Table structure for table `san_pham`
DROP TABLE IF EXISTS `san_pham`;
CREATE TABLE `san_pham` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ten_san_pham` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `don_gia` bigint(20) NOT NULL,
  `don_vi_ban` int(11) NOT NULL DEFAULT '0',
  `don_vi_kho` int(11) NOT NULL DEFAULT '0',
  `xuat_su` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `kieu_dang` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mau_xe` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `hop_so` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `so_cho_ngoi` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `thong_tin_bao_hanh` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `thong_tin_chung` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `sokm` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ma_danh_muc` bigint(20) DEFAULT NULL,
  `ma_hang_sx` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdanhmuc1_idx` (`ma_danh_muc`),
  KEY `FKhangsanxuat4_idx` (`ma_hang_sx`),
  CONSTRAINT `FKdanhmuc1` FOREIGN KEY (`ma_danh_muc`) REFERENCES `danh_muc` (`id`),
  CONSTRAINT `FKhangsanxuat4` FOREIGN KEY (`ma_hang_sx`) REFERENCES `hang_san_xuat` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Table structure for table `chi_muc_gio_hang`
DROP TABLE IF EXISTS `chi_muc_gio_hang`;
CREATE TABLE `chi_muc_gio_hang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `so_luong` int(11) NOT NULL,
  `ma_gio_hang` bigint(20) DEFAULT NULL,
  `ma_san_pham` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsanpham_idx` (`ma_san_pham`),
  KEY `FKdonhang5_idx` (`ma_gio_hang`),
  CONSTRAINT `FKgionhang5` FOREIGN KEY (`ma_gio_hang`) REFERENCES `gio_hang` (`id`),
  CONSTRAINT `FKsanpham` FOREIGN KEY (`ma_san_pham`) REFERENCES `san_pham` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Table structure for table `chi_tiet_don_hang`
DROP TABLE IF EXISTS `chi_tiet_don_hang`;
CREATE TABLE `chi_tiet_don_hang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `don_gia` bigint(20) NOT NULL,
  `so_luong` int(11) NOT NULL DEFAULT '1',
  `ma_don_hang` bigint(20) DEFAULT NULL,
  `ma_san_pham` bigint(20) DEFAULT NULL,
  `so_luong_dat` int(11) NOT NULL,
  `so_luong_nhan_hang` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsanpham1_idx` (`ma_san_pham`),
  KEY `FKdonhang4_idx` (`ma_don_hang`),
  CONSTRAINT `FKdonhang4` FOREIGN KEY (`ma_don_hang`) REFERENCES `don_hang` (`id`),
  CONSTRAINT `FKsanpham5` FOREIGN KEY (`ma_san_pham`) REFERENCES `san_pham` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Table structure for table `lien_he`
DROP TABLE IF EXISTS `lien_he`;
CREATE TABLE `lien_he` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email_lien_he` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ngay_lien_he` datetime DEFAULT NULL,
  `ngay_tra_loi` datetime DEFAULT NULL,
  `noi_dung_lien_he` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `noi_dung_tra_loi` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `trang_thai` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ma_nguoi_tra_loi` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnguoidung5_idx` (`ma_nguoi_tra_loi`),
  CONSTRAINT `FKnguoidung5` FOREIGN KEY (`ma_nguoi_tra_loi`) REFERENCES `nguoi_dung` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Table structure for table `nguoidung_vaitro`
DROP TABLE IF EXISTS `nguoidung_vaitro`;
CREATE TABLE `nguoidung_vaitro` (
  `ma_nguoi_dung` bigint(20) NOT NULL,
  `ma_vai_tro` bigint(20) NOT NULL,
  PRIMARY KEY (`ma_nguoi_dung`,`ma_vai_tro`),
  KEY `FKig6jxd861mqv02a8pn68r43fr` (`ma_vai_tro`),
  CONSTRAINT `FKig6jxd861mqv02a8pn68r43fr` FOREIGN KEY (`ma_vai_tro`) REFERENCES `vai_tro` (`id`),
  CONSTRAINT `FKocavcnspu1wcvp2w0s4usfgbf` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Insert data into tables

INSERT INTO `danh_muc` VALUES (1,'Ô tô'),(2,'Phụ Kiện Xe');

INSERT INTO `hang_san_xuat` VALUES (1,'Mercedes'),(2,'Ford'),(3,'Toyota');

INSERT INTO `vai_tro` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_MEMBER'),(3,'ROLE_SHIPPER');

INSERT INTO `nguoi_dung` VALUES 
(2,NULL,'member@gmail.com',NULL,'$2a$10$mhNc4Ta0s9SXQp3cRkJ85ea8yPT6Ym3d0EJ9qt1HJbjWSLfdvEYHq',NULL),
(4,'Bình Định','NguyenVanHieu.Official@gmail.com','Admin','$2a$10$qoPxf6BwXSwaJcTykxLtXuGif.L2sHL5lfFMdex7/L0SBjta4j3ke','123456789'),
(5,'Cần Thơ','Bao@gmail.com','Bảo','$2a$10$6BXyTthgc1gUNIQRYu8te.LXOy2OzgDd4RSM6lb.WgK0ZC7Oksccm','123456789'),
(6,'TPHCM','yokinguyen2000@gmail.com','cus','$2a$10$QUzLZmFeiBJIcPUhIMjxl.5vXUebrRWbal2cbc4fqXgnj2wX9OLBG','232424'),
(7,'TPHCM','cus@gmail.com','Cus','$2a$10$gE1iOfK8ZQUWehTq2IHlou4cG6f529djtBO9YhwyZRX05hJbYAJgq','2424'),
(8,'TPHCM','shippervip@gmail.com','Shipper ','$2a$10$ZlDEVOUi6uJ9m1mSVmtVSuzwaGGTuHRSIiXofKMF41H9.tj58qj3G','12324'),
(9,NULL,'shipper@gmail.com',NULL,'$2a$10$IJJJN9qu.2tG3QOdgot5Rehry4KzxloSn0qR/wVvv/bizbIIFJzyq',NULL),
(10,NULL,'admin@gmail.com','Nguyễn Văn Hiếu','$2a$10$SwZcNl2R2CwCBVGn.WRYRuYTUCtwhHVn5QRfgvFwaZpmZ5uFfBKoS','123456789');

INSERT INTO `nguoidung_vaitro` VALUES (4,1),(5,1),(10,1),(2,2),(6,2),(7,2),(10,2),(8,3),(9,3);

INSERT INTO `don_hang` VALUES 
(1,'TP.HCM','Ghi chú shipper: \nok','thanh tai','2021-09-30 21:52:30','2021-10-01 16:04:55','2021-10-01 16:05:16','122434','Hoàn thành',7,8,1250000000),
(2,'TP.HCM',NULL,'thanh tai','2021-09-30 21:53:05',NULL,NULL,'122434','Đã bị hủy',7,NULL,1250000000),
(3,'TP.HCM',NULL,'thanh tai','2021-09-30 21:53:11',NULL,NULL,'122434','Đã bị hủy',7,NULL,1250000000),
(4,'èwefwe',NULL,'thanh tai','2021-10-01 15:39:58',NULL,NULL,'234234','Đã bị hủy',7,NULL,813400000),
(5,'sè',NULL,'dbdb','2021-10-15 10:01:24',NULL,NULL,'3t34','Đã bị hủy',NULL,NULL,70000000),
(6,'TP.HCM','Ghi chú shipper: \nokkkk','thanh tai','2021-11-08 03:12:27','2021-11-08 03:13:57','2021-11-08 03:15:38','122434','Hoàn thành',7,8,700000000),
(7,'Dong Thap','Ghi chú shipper: \nokk','The anh','2021-11-08 03:26:16','2021-11-08 03:27:42','2021-11-08 03:28:38','12434543','Hoàn thành',7,8,94900000),
(8,'can gio',NULL,'thanh tai','2021-11-08 04:06:16','2021-11-08 04:06:29','2021-11-08 04:06:59','122434','Hoàn thành',7,8,2370000000),
(9,'DakLak',NULL,'Hậu','2021-11-08 04:15:43',NULL,NULL,'342342','Đã bị hủy',7,NULL,1580000000),
(10,'DakLak',NULL,'Hậu','2021-11-08 04:19:11',NULL,NULL,'4r342','Đã bị hủy',7,NULL,1580000000),
(11,'DakLak',NULL,'Hậu','2021-11-08 04:20:39',NULL,NULL,'23423','Đã bị hủy',7,NULL,1580000000),
(12,'DakLAk',NULL,'Hậu','2021-11-08 04:22:09','2021-11-08 04:23:10','2021-11-08 04:23:20','122434','Chờ duyệt',7,8,1580000000);

INSERT INTO `gio_hang` VALUES (1,NULL,7);

INSERT INTO `san_pham` VALUES 
(6,'Mercedes1',700000000,2,4,'Việt Nam','đẹp','bạc','Tự Động',NULL,'12','ok','600 Km',1,1),
(7,'Ford1',550000000,0,6,'Việt Nam','đẹp',NULL,NULL,NULL,'12','ok',NULL,1,2),
(10,'Gương Lồi',60000,0,7,'Việt Nam','',NULL,NULL,NULL,'6','đẹp',NULL,2,1),
(11,'Mercedes2',800000000,0,5,'Việt Nam','đẹp',NULL,NULL,NULL,'12','đẹp',NULL,1,1),
(12,'Toyota1',700000000,0,6,'Việt Nam','đẹp',NULL,NULL,NULL,'12','đẹp',NULL,1,3),
(13,'Mercedes3',790000000,3,3,'Việt Nam','đẹp',NULL,NULL,NULL,'12','đẹp',NULL,1,1),
(14,'Ford2',600000000,0,7,'Việt Nam','đẹp',NULL,NULL,NULL,'12','đẹp',NULL,1,2),
(15,'Toyota2',567000000,0,6,'Việt Nam','đẹp',NULL,NULL,NULL,'12','đẹp',NULL,1,3);

INSERT INTO `chi_tiet_don_hang` VALUES 
(1,550000000,1,1,7,1,1),
(2,700000000,1,1,6,1,1),
(3,700000000,1,4,6,1,0),
(4,113400000,1,4,15,2,0),
(5,70000000,1,5,12,1,0),
(6,700000000,1,6,6,1,1),
(7,7000000,1,7,14,1,1),
(8,7900000,1,7,13,1,1),
(9,80000000,1,7,11,1,1),
(10,2370000000,1,8,13,3,3),
(11,1580000000,1,9,13,2,0),
(12,1580000000,1,10,13,2,0),
(13,1580000000,1,11,13,2,0),
(14,1580000000,1,12,13,2,2);

INSERT INTO `lien_he` VALUES 
(1,'yokinguyen2000@gmail.com','2021-09-30 20:35:34','2021-09-30 20:58:48','Hello','hello','Đã trả lời',NULL),
(2,'yokinguyen2000@gmail.com','2021-11-08 02:52:28','2021-11-08 03:01:35','hello','hello','Đã trả lời',NULL),
(3,'NguyenVanHieu.Official@gmail.com','2021-11-08 03:29:34','2021-11-08 03:30:17','Xin chào shop','xin chào bạn','Đã trả lời',NULL),
(4,'NguyenVanHieu.Official@gmail.com','2021-11-08 03:39:25','2021-11-08 03:40:00','hellooooooo','hi!!!!!!!!!','Đã trả lời',NULL);
