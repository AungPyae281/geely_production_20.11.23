-- --------------------------------------------------------
-- Host:                         therestpos.com
-- Server version:               5.7.43-cll-lve - MySQL Community Server - (GPL)
-- Server OS:                    Linux
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for geely_db1
CREATE DATABASE IF NOT EXISTS `geely_db1` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `geely_db1`;

-- Dumping structure for table geely_db1.test_drive
DROP TABLE IF EXISTS `test_drive`;
CREATE TABLE IF NOT EXISTS `test_drive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `sales_executive_id` int(11) NOT NULL DEFAULT '0',
  `license_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `date` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `model` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `plate_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `time_out` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `time_in` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `drive_route` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `feedback` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_executive` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `agree` tinyint(1) NOT NULL DEFAULT '0',
  `exterior` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `interior` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `acceleration` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `braking` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `stability` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `visibility` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comfort` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `noice_level` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `booking_entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `booking_entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `test_drive_entry_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `test_drive_entry_date_time` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geely_db1.test_drive: 3 rows
/*!40000 ALTER TABLE `test_drive` DISABLE KEYS */;
INSERT INTO `test_drive` (`id`, `customer_id`, `sales_executive_id`, `license_no`, `date`, `time`, `model`, `plate_no`, `time_out`, `time_in`, `drive_route`, `feedback`, `sales_executive`, `agree`, `exterior`, `interior`, `acceleration`, `braking`, `stability`, `visibility`, `comfort`, `noice_level`, `booking_entry_by`, `booking_entry_date_time`, `test_drive_entry_by`, `test_drive_entry_date_time`) VALUES
	(1, 25, 3, 'test123', '2023-11-19', '14:00', 'Coolray', 'SGG 65 AD-2156', '13:00', '13:30', 'kamauyt', 'sanchaung', 'Wai Lu Aung', 1, 'Good', 'Poor', 'Very Poor', 'Poor', 'Good', 'Excellent', 'Average', 'Average', 'wla', '2023-11-19 23:14:06', 'wla', '2023-11-20 00:01:40'),
	(2, 25, 3, '', '2023-11-20', '12:30', 'Coolray', 'SGG 65 AD-2156', '', '', '', '', '', 1, '', '', '', '', '', '', '', '', 'wla', '2023-11-20 00:11:50', '', ''),
	(3, 25, 3, 'cccc', '2023-11-20', '14:30', 'Coolray', 'YGN 11 CC-1234', '14:30', '15:00', 'asd', 'asd', 'Wai Lu Aung', 1, 'Poor', 'Average', 'Poor', 'Good', 'Average', 'Average', 'Good', 'Average', 'wla', '2023-11-20 01:31:19', 'wla', '2023-11-20 01:32:03');
/*!40000 ALTER TABLE `test_drive` ENABLE KEYS */;

-- Dumping structure for table geely_db1.test_drive_car
DROP TABLE IF EXISTS `test_drive_car`;
CREATE TABLE IF NOT EXISTS `test_drive_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `plate_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table geely_db1.test_drive_car: 3 rows
/*!40000 ALTER TABLE `test_drive_car` DISABLE KEYS */;
INSERT INTO `test_drive_car` (`id`, `model`, `plate_no`) VALUES
	(1, 'Azkarra', 'YGN 11 CC-1234'),
	(2, 'mini van', 'SGG 65 AD-2156'),
	(3, 'Corolla', 'BGO 65 56-3269');
/*!40000 ALTER TABLE `test_drive_car` ENABLE KEYS */;

INSERT INTO `user_role` (`id`, `dashboard`, `role_name`, `process`, `create`, `read`, `update`, `delete`, `export`, `print`) VALUES (2026, 'sales', 'Sales Executive', 'Test Drive Booking', 1, 0, 1, 0, 0, 0);
INSERT INTO `user_role` (`id`, `dashboard`, `role_name`, `process`, `create`, `read`, `update`, `delete`, `export`, `print`) VALUES (2027, 'sales', 'Sales Executive', 'Test Drive Terms Conditions', 1, 0, 0, 0, 0, 0);
INSERT INTO `user_role` (`id`, `dashboard`, `role_name`, `process`, `create`, `read`, `update`, `delete`, `export`, `print`) VALUES (2028, 'sales', 'Sales Executive', 'Test Drive Log', 1, 1, 0, 0, 0, 0);
INSERT INTO `user_role` (`id`, `dashboard`, `role_name`, `process`, `create`, `read`, `update`, `delete`, `export`, `print`) VALUES (2029, 'sales', 'Sales Executive', 'Test Drive Result List', 0, 1, 1, 0, 0, 0);
INSERT INTO `user_role` (`id`, `dashboard`, `role_name`, `process`, `create`, `read`, `update`, `delete`, `export`, `print`) VALUES (2030, 'sales', 'Sales Executive', 'Test Drive Booking List', 0, 1, 1, 0, 0, 0);
INSERT INTO `route` (`id`, `dashboard`, `module`, `route`, `process`, `title`, `create`, `read`, `update`, `delete`, `export`, `print`) VALUES (146, 'sales', 'Test Drive', 'test_drive/test_drive_booking.php?act=entry&cid=', 'Test Drive Booking', 'Test Drive Booking Entry', 1, 0, 1, 0, 0, 0);
INSERT INTO `route` (`id`, `dashboard`, `module`, `route`, `process`, `title`, `create`, `read`, `update`, `delete`, `export`, `print`) VALUES (147, 'sales', 'Test Drive', 'test_drive/terms_conditions.php?act=entry&id=', 'Test Drive Terms Conditions', 'Test Drive Terms Conditions Entry', 1, 0, 0, 0, 0, 0);
INSERT INTO `route` (`id`, `dashboard`, `module`, `route`, `process`, `title`, `create`, `read`, `update`, `delete`, `export`, `print`) VALUES (148, 'sales', 'Test Drive', 'test_drive/test_drive_log.php?act=entry&id=', 'Test Drive Log', 'Test Drive Log Entry', 1, 1, 0, 0, 0, 0);
INSERT INTO `route` (`id`, `dashboard`, `module`, `route`, `process`, `title`, `create`, `read`, `update`, `delete`, `export`, `print`) VALUES (149, 'sales', 'Test Drive', 'test_drive/test_drive_result_list.php', 'Test Drive Result List', 'Test Drive Result List', 0, 1, 1, 0, 0, 0);
INSERT INTO `route` (`id`, `dashboard`, `module`, `route`, `process`, `title`, `create`, `read`, `update`, `delete`, `export`, `print`) VALUES (150, 'sales', 'Test Drive', 'test_drive/test_drive_booking_list.php', 'Test Drive Booking List', 'Test Drive Booking List', 0, 1, 1, 0, 0, 0);
INSERT INTO `route` (`id`, `dashboard`, `module`, `route`, `process`, `title`, `create`, `read`, `update`, `delete`, `export`, `print`) VALUES (151, 'sales', 'Test Drive', 'test_drive/test_drive_booking.php?act=edit&id=', 'Test Drive Booking', 'Test Drive Booking Edit', 0, 0, 0, 0, 0, 0);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
