-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               11.1.2-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for btth01_cse485_ex02.sql
CREATE DATABASE IF NOT EXISTS `btth01_cse485_ex02.sql` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `btth01_cse485_ex02.sql`;

-- Dumping structure for table btth01_cse485_ex02.sql.baiviet
CREATE TABLE IF NOT EXISTS `baiviet` (
  `ma_bviet` int(10) unsigned NOT NULL,
  `tieude` varchar(200) NOT NULL,
  `ten_bhat` varchar(100) NOT NULL,
  `ma_tloai` int(10) unsigned NOT NULL,
  `tomtat` text NOT NULL,
  `noidung` text DEFAULT NULL,
  `ma_tgia` int(10) unsigned NOT NULL,
  `ngayviet` datetime NOT NULL,
  `hinhanh` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ma_bviet`),
  KEY `FK_baiviet_theloai` (`ma_tloai`),
  KEY `FK_baiviet_tacgia` (`ma_tgia`),
  CONSTRAINT `FK_baiviet_tacgia` FOREIGN KEY (`ma_tgia`) REFERENCES `tacgia` (`ma_tgia`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_baiviet_theloai` FOREIGN KEY (`ma_tloai`) REFERENCES `theloai` (`ma_tloai`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table btth01_cse485_ex02.sql.baiviet: ~10 rows (approximately)
INSERT INTO `baiviet` (`ma_bviet`, `tieude`, `ten_bhat`, `ma_tloai`, `tomtat`, `noidung`, `ma_tgia`, `ngayviet`, `hinhanh`) VALUES
	(1, 'Giấc mộng tình yêu', 'Đến bao giờ mới có tình yêu', 2, 'một bản nhạc buồn', 'một bản nhạc buồn', 1, '2010-09-23 16:15:24', NULL),
	(2, 'Con mèo dễ thương', 'Con mèo dễ thương', 3, 'một bản nhạc sầu', NULL, 4, '2007-09-25 16:16:32', NULL),
	(3, 'Hết yêu thương', 'Hết yêu thương', 3, 'buồn', 'buồn', 1, '2011-09-25 16:18:16', NULL),
	(4, 'Tuyết yêu thương', 'Tuyết yêu thương', 3, 'buồn', 'buồn', 1, '2007-09-25 16:20:07', NULL),
	(5, 'anh và em', 'anh và em', 4, 'vui buồn', NULL, 5, '2014-09-25 16:20:53', NULL),
	(6, 'những đứa trẻ yêu thương', 'những đứa trẻ yêu thương', 4, 'vui tươi', 'vui tươi', 7, '2009-09-25 16:22:28', NULL),
	(7, 'Sống hết đời tuổi trẻ', 'Sống hết đời tuổi trẻ', 4, 'vui tươi', NULL, 3, '2023-06-25 16:26:32', NULL),
	(8, 'Cuộc đời', 'Cuộc đời', 1, 'cháy', 'cháy', 5, '2023-03-25 16:28:31', NULL),
	(9, 'Tự hào Việt Nam', 'Tự hào Việt Nam', 1, 'hào hùng', 'hào hùng', 5, '2022-09-25 16:30:33', NULL),
	(10, 'anh yêu em', 'anh yêu em', 3, 'yêu thương', NULL, 2, '2023-03-25 16:32:21', NULL);

-- Dumping structure for table btth01_cse485_ex02.sql.tacgia
CREATE TABLE IF NOT EXISTS `tacgia` (
  `ma_tgia` int(10) unsigned NOT NULL,
  `ten_tgia` varchar(100) NOT NULL,
  `hinh_tgia` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ma_tgia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table btth01_cse485_ex02.sql.tacgia: ~7 rows (approximately)
INSERT INTO `tacgia` (`ma_tgia`, `ten_tgia`, `hinh_tgia`) VALUES
	(1, 'Nhacvietplus', NULL),
	(2, 'Nhaccuatui', NULL),
	(3, 'Zingmp3', NULL),
	(4, 'TrinhThanhBinh', NULL),
	(5, 'SonTung', NULL),
	(6, 'TrinhCongSon', NULL),
	(7, 'DenVau', NULL);

-- Dumping structure for table btth01_cse485_ex02.sql.theloai
CREATE TABLE IF NOT EXISTS `theloai` (
  `ma_tloai` int(10) unsigned NOT NULL,
  `ten_tloai` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`ma_tloai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table btth01_cse485_ex02.sql.theloai: ~5 rows (approximately)
INSERT INTO `theloai` (`ma_tloai`, `ten_tloai`) VALUES
	(1, 'Nhạc rock'),
	(2, 'Nhạc cải lương'),
	(3, 'Nhạc trữ tình'),
	(4, 'Rap'),
	(5, 'Korea');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
