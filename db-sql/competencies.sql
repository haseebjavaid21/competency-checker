-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 16, 2023 at 07:40 PM
-- Server version: 5.7.40
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `master_thesis`
--

-- --------------------------------------------------------

--
-- Table structure for table `competencies`
--

DROP TABLE IF EXISTS `competencies`;
CREATE TABLE IF NOT EXISTS `competencies` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `competencies`
--

INSERT INTO `competencies` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'System Thinking', '2023-02-04 20:32:50', '2023-02-04 20:32:50', NULL),
(2, 'Critical Thinking', '2023-02-04 22:48:50', '2023-02-04 22:48:50', NULL),
(3, 'System Modeling and Analysis', '2023-02-04 22:49:00', '2023-02-04 22:49:00', NULL),
(4, 'Customer Benefit Orientation', '2023-02-04 22:49:14', '2023-02-04 22:49:14', NULL),
(5, 'General Engineering', '2023-02-04 22:49:23', '2023-02-04 22:49:23', NULL),
(6, 'Requirement Engineering', '2023-02-04 22:49:34', '2023-02-04 22:49:34', NULL),
(7, 'System Designing', '2023-02-04 22:49:45', '2023-02-04 22:49:45', NULL),
(8, 'Operation and Support', '2023-02-04 22:49:54', '2023-02-04 22:49:54', NULL),
(9, 'Integration, Verification and Validation', '2023-02-04 22:50:07', '2023-02-04 22:50:07', NULL),
(10, 'Agile Methodolgies', '2023-02-04 22:50:20', '2023-02-04 22:50:20', NULL),
(11, 'Communication', '2023-02-04 22:50:27', '2023-02-04 22:50:27', NULL),
(12, 'Leadership', '2023-02-04 22:50:34', '2023-02-04 22:50:34', NULL),
(13, 'Ethics and Professionalism', '2023-02-04 22:50:40', '2023-02-04 22:50:40', NULL),
(14, 'Self Organization', '2023-02-04 22:50:48', '2023-02-04 22:50:48', NULL),
(15, 'Coaching and Mentoring', '2023-02-04 22:50:54', '2023-02-04 22:50:54', NULL),
(16, 'Planning', '2023-02-04 22:51:00', '2023-02-04 22:51:00', NULL),
(17, 'Monitoring and Control', '2023-02-04 22:51:05', '2023-02-04 22:51:05', NULL),
(18, 'Decision Management', '2023-02-04 22:51:12', '2023-02-04 22:51:12', NULL),
(19, 'Information Management', '2023-02-04 22:51:19', '2023-02-04 22:51:19', NULL),
(20, 'Risk Management', '2023-02-04 22:51:26', '2023-02-04 22:51:26', NULL),
(21, 'Configuration Management', '2023-02-04 22:51:32', '2023-02-04 22:51:32', NULL),
(22, 'Test', '2023-02-05 18:19:03', '2023-02-05 18:19:03', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
