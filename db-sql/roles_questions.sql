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
-- Table structure for table `roles_questions`
--

DROP TABLE IF EXISTS `roles_questions`;
CREATE TABLE IF NOT EXISTS `roles_questions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=646 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles_questions`
--

INSERT INTO `roles_questions` (`id`, `role`, `question_id`, `answer`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'customer', '5', 2, '2023-01-01 14:06:27', '2023-01-01 14:06:27', NULL),
(2, 'customer_representative', '2', 3, '2023-01-01 15:13:51', '2023-01-01 15:13:51', NULL),
(6, 'customer', '6', 2, '2023-01-10 19:43:14', '2023-01-10 19:43:14', NULL),
(7, 'customer', '7', 2, '2023-01-10 19:43:49', '2023-01-10 19:43:49', NULL),
(8, 'internal_support', '8', 0, '2023-01-10 20:47:19', '2023-01-10 20:47:19', NULL),
(9, 'management', '9', 4, '2023-01-10 21:55:23', '2023-01-10 21:55:23', NULL),
(10, 'project_manager', '10', 1, '2023-01-24 03:31:26', '2023-01-24 03:31:26', NULL),
(11, 'production_coordinator_planner', '10', 1, '2023-01-24 03:31:26', '2023-01-24 03:31:26', NULL),
(12, 'management', '10', 1, '2023-01-24 03:31:26', '2023-01-24 03:31:26', NULL),
(13, 'innovation_and_strategy_management', '11', 1, '2023-01-25 22:15:10', '2023-01-25 22:15:10', NULL),
(14, 'quality_manager', '12', 1, '2023-01-26 02:37:26', '2023-01-26 02:37:26', NULL),
(15, 'system_engineer', '13', 4, '2023-01-26 02:54:37', '2023-01-26 02:54:37', NULL),
(16, 'system_engineer', '14', 4, '2023-01-26 02:55:18', '2023-01-26 02:55:18', NULL),
(17, 'system_engineer', '15', 4, '2023-01-26 02:55:58', '2023-01-26 02:55:58', NULL),
(27, 'process_policy_owner', '16', 4, '2023-01-29 20:51:07', '2023-01-29 20:51:07', NULL),
(25, 'process_policy_owner', '17', 3, '2023-01-29 20:48:34', '2023-01-29 20:48:34', NULL),
(23, 'project_manager', '17', 3, '2023-01-29 20:48:34', '2023-01-29 20:48:34', NULL),
(24, 'internal_support', '17', 3, '2023-01-29 20:48:34', '2023-01-29 20:48:34', NULL),
(26, 'system_engineer', '17', 3, '2023-01-29 20:48:34', '2023-01-29 20:48:34', NULL),
(28, 'system_engineer', '16', 4, '2023-01-29 20:51:07', '2023-01-29 20:51:07', NULL),
(31, 'customer', '19', 2, '2023-01-29 21:10:11', '2023-01-29 21:10:11', NULL),
(385, 'quality_manager', '20', 4, '2023-02-13 17:37:45', '2023-02-13 17:37:45', NULL),
(384, 'innovation_and_strategy_management', '20', 4, '2023-02-13 17:37:45', '2023-02-13 17:37:45', NULL),
(381, 'management', '20', 2, '2023-02-13 17:37:45', '2023-02-13 17:37:45', NULL),
(382, 'developer', '20', 3, '2023-02-13 17:37:45', '2023-02-13 17:37:45', NULL),
(383, 'process_policy_owner', '20', 3, '2023-02-13 17:37:45', '2023-02-13 17:37:45', NULL),
(380, 'production_staff', '20', 2, '2023-02-13 17:37:45', '2023-02-13 17:37:45', NULL),
(379, 'production_coordinator_planner', '20', 2, '2023-02-13 17:37:45', '2023-02-13 17:37:45', NULL),
(378, 'project_manager', '20', 2, '2023-02-13 17:37:45', '2023-02-13 17:37:45', NULL),
(377, 'customer_representative', '20', 1, '2023-02-13 17:37:45', '2023-02-13 17:37:45', NULL),
(396, 'quality_manager', '25', 3, '2023-02-13 17:38:54', '2023-02-13 17:38:54', NULL),
(395, 'service_technician', '25', 3, '2023-02-13 17:38:54', '2023-02-13 17:38:54', NULL),
(394, 'production_coordinator_planner', '25', 3, '2023-02-13 17:38:54', '2023-02-13 17:38:54', NULL),
(393, 'developer', '25', 3, '2023-02-13 17:38:54', '2023-02-13 17:38:54', NULL),
(392, 'process_policy_owner', '25', 3, '2023-02-13 17:38:54', '2023-02-13 17:38:54', NULL),
(391, 'internal_support', '25', 3, '2023-02-13 17:38:54', '2023-02-13 17:38:54', NULL),
(390, 'project_manager', '25', 3, '2023-02-13 17:38:54', '2023-02-13 17:38:54', NULL),
(389, 'customer_representative', '25', 3, '2023-02-13 17:38:54', '2023-02-13 17:38:54', NULL),
(388, 'production_staff', '25', 2, '2023-02-13 17:38:54', '2023-02-13 17:38:54', NULL),
(387, 'customer', '25', 1, '2023-02-13 17:38:54', '2023-02-13 17:38:54', NULL),
(409, 'quality_manager', '29', 3, '2023-02-13 19:29:08', '2023-02-13 19:29:08', NULL),
(408, 'process_policy_owner', '29', 3, '2023-02-13 19:29:08', '2023-02-13 19:29:08', NULL),
(406, 'management', '29', 2, '2023-02-13 19:29:08', '2023-02-13 19:29:08', NULL),
(407, 'project_manager', '29', 3, '2023-02-13 19:29:08', '2023-02-13 19:29:08', NULL),
(405, 'service_technician', '29', 2, '2023-02-13 19:29:08', '2023-02-13 19:29:08', NULL),
(404, 'internal_support', '29', 2, '2023-02-13 19:29:08', '2023-02-13 19:29:08', NULL),
(403, 'production_coordinator_planner', '29', 2, '2023-02-13 19:29:08', '2023-02-13 19:29:08', NULL),
(402, 'production_staff', '29', 2, '2023-02-13 19:29:08', '2023-02-13 19:29:08', NULL),
(401, 'customer_representative', '29', 1, '2023-02-13 19:29:08', '2023-02-13 19:29:08', NULL),
(400, 'customer', '29', 1, '2023-02-13 19:29:08', '2023-02-13 19:29:08', NULL),
(420, 'project_manager', '33', 4, '2023-02-13 19:29:27', '2023-02-13 19:29:27', NULL),
(419, 'innovation_and_strategy_management', '33', 3, '2023-02-13 19:29:27', '2023-02-13 19:29:27', NULL),
(418, 'quality_manager', '33', 3, '2023-02-13 19:29:27', '2023-02-13 19:29:27', NULL),
(417, 'developer', '33', 3, '2023-02-13 19:29:27', '2023-02-13 19:29:27', NULL),
(416, 'customer_representative', '33', 3, '2023-02-13 19:29:27', '2023-02-13 19:29:27', NULL),
(415, 'customer', '33', 3, '2023-02-13 19:29:27', '2023-02-13 19:29:27', NULL),
(414, 'production_staff', '33', 2, '2023-02-13 19:29:27', '2023-02-13 19:29:27', NULL),
(413, 'production_coordinator_planner', '33', 2, '2023-02-13 19:29:27', '2023-02-13 19:29:27', NULL),
(434, 'quality_manager', '36', 1, '2023-02-13 19:29:39', '2023-02-13 19:29:39', NULL),
(433, 'service_technician', '36', 1, '2023-02-13 19:29:39', '2023-02-13 19:29:39', NULL),
(432, 'production_staff', '36', 1, '2023-02-13 19:29:39', '2023-02-13 19:29:39', NULL),
(431, 'production_coordinator_planner', '36', 1, '2023-02-13 19:29:39', '2023-02-13 19:29:39', NULL),
(430, 'process_policy_owner', '36', 1, '2023-02-13 19:29:39', '2023-02-13 19:29:39', NULL),
(429, 'internal_support', '36', 1, '2023-02-13 19:29:39', '2023-02-13 19:29:39', NULL),
(428, 'project_manager', '36', 1, '2023-02-13 19:29:39', '2023-02-13 19:29:39', NULL),
(427, 'customer_representative', '36', 1, '2023-02-13 19:29:39', '2023-02-13 19:29:39', NULL),
(426, 'customer', '36', 0, '2023-02-13 19:29:39', '2023-02-13 19:29:39', NULL),
(448, 'management', '41', 2, '2023-02-13 19:34:15', '2023-02-13 19:34:15', NULL),
(447, 'quality_manager', '41', 2, '2023-02-13 19:34:15', '2023-02-13 19:34:15', NULL),
(446, 'production_staff', '41', 2, '2023-02-13 19:34:15', '2023-02-13 19:34:15', NULL),
(445, 'production_coordinator_planner', '41', 2, '2023-02-13 19:34:15', '2023-02-13 19:34:15', NULL),
(444, 'customer_representative', '41', 2, '2023-02-13 19:34:15', '2023-02-13 19:34:15', NULL),
(443, 'process_policy_owner', '41', 1, '2023-02-13 19:34:15', '2023-02-13 19:34:15', NULL),
(442, 'internal_support', '41', 1, '2023-02-13 19:34:15', '2023-02-13 19:34:15', NULL),
(441, 'innovation_and_strategy_management', '41', 0, '2023-02-13 19:34:15', '2023-02-13 19:34:15', NULL),
(440, 'service_technician', '41', 0, '2023-02-13 19:34:15', '2023-02-13 19:34:15', NULL),
(439, 'customer', '41', 0, '2023-02-13 19:34:15', '2023-02-13 19:34:15', NULL),
(460, 'internal_support', '46', 2, '2023-02-13 19:34:51', '2023-02-13 19:34:51', NULL),
(459, 'project_manager', '46', 2, '2023-02-13 19:34:51', '2023-02-13 19:34:51', NULL),
(458, 'management', '46', 1, '2023-02-13 19:34:51', '2023-02-13 19:34:51', NULL),
(457, 'service_technician', '46', 1, '2023-02-13 19:34:51', '2023-02-13 19:34:51', NULL),
(456, 'production_staff', '46', 1, '2023-02-13 19:34:51', '2023-02-13 19:34:51', NULL),
(455, 'production_coordinator_planner', '46', 1, '2023-02-13 19:34:51', '2023-02-13 19:34:51', NULL),
(454, 'customer_representative', '46', 1, '2023-02-13 19:34:51', '2023-02-13 19:34:51', NULL),
(453, 'customer', '46', 1, '2023-02-13 19:34:51', '2023-02-13 19:34:51', NULL),
(452, 'innovation_and_strategy_management', '46', 0, '2023-02-13 19:34:51', '2023-02-13 19:34:51', NULL),
(473, 'system_engineer', '51', 2, '2023-02-13 19:35:07', '2023-02-13 19:35:07', NULL),
(472, 'process_policy_owner', '51', 2, '2023-02-13 19:35:07', '2023-02-13 19:35:07', NULL),
(471, 'customer_representative', '51', 2, '2023-02-13 19:35:07', '2023-02-13 19:35:07', NULL),
(470, 'innovation_and_strategy_management', '51', 1, '2023-02-13 19:35:07', '2023-02-13 19:35:07', NULL),
(469, 'quality_manager', '51', 1, '2023-02-13 19:35:07', '2023-02-13 19:35:07', NULL),
(468, 'service_technician', '51', 1, '2023-02-13 19:35:07', '2023-02-13 19:35:07', NULL),
(467, 'production_staff', '51', 1, '2023-02-13 19:35:07', '2023-02-13 19:35:07', NULL),
(466, 'production_coordinator_planner', '51', 1, '2023-02-13 19:35:07', '2023-02-13 19:35:07', NULL),
(465, 'customer', '51', 1, '2023-02-13 19:35:07', '2023-02-13 19:35:07', NULL),
(487, 'production_coordinator_planner', '55', 4, '2023-02-13 19:35:19', '2023-02-13 19:35:19', NULL),
(486, 'developer', '55', 3, '2023-02-13 19:35:19', '2023-02-13 19:35:19', NULL),
(485, 'innovation_and_strategy_management', '55', 2, '2023-02-13 19:35:19', '2023-02-13 19:35:19', NULL),
(484, 'service_technician', '55', 2, '2023-02-13 19:35:19', '2023-02-13 19:35:19', NULL),
(483, 'system_engineer', '55', 2, '2023-02-13 19:35:19', '2023-02-13 19:35:19', NULL),
(482, 'process_policy_owner', '55', 1, '2023-02-13 19:35:19', '2023-02-13 19:35:19', NULL),
(481, 'internal_support', '55', 1, '2023-02-13 19:35:19', '2023-02-13 19:35:19', NULL),
(480, 'project_manager', '55', 1, '2023-02-13 19:35:19', '2023-02-13 19:35:19', NULL),
(479, 'customer_representative', '55', 1, '2023-02-13 19:35:19', '2023-02-13 19:35:19', NULL),
(478, 'customer', '55', 0, '2023-02-13 19:35:19', '2023-02-13 19:35:19', NULL),
(500, 'project_manager', '60', 4, '2023-02-13 19:35:36', '2023-02-13 19:35:36', NULL),
(499, 'quality_manager', '60', 2, '2023-02-13 19:35:36', '2023-02-13 19:35:36', NULL),
(498, 'innovation_and_strategy_management', '60', 1, '2023-02-13 19:35:36', '2023-02-13 19:35:36', NULL),
(497, 'production_coordinator_planner', '60', 1, '2023-02-13 19:35:36', '2023-02-13 19:35:36', NULL),
(496, 'process_policy_owner', '60', 1, '2023-02-13 19:35:36', '2023-02-13 19:35:36', NULL),
(495, 'internal_support', '60', 1, '2023-02-13 19:35:36', '2023-02-13 19:35:36', NULL),
(494, 'service_technician', '60', 0, '2023-02-13 19:35:36', '2023-02-13 19:35:36', NULL),
(493, 'production_staff', '60', 0, '2023-02-13 19:35:36', '2023-02-13 19:35:36', NULL),
(492, 'customer_representative', '60', 0, '2023-02-13 19:35:36', '2023-02-13 19:35:36', NULL),
(491, 'customer', '60', 0, '2023-02-13 19:35:36', '2023-02-13 19:35:36', NULL),
(513, 'service_technician', '64', 4, '2023-02-13 19:35:52', '2023-02-13 19:35:52', NULL),
(512, 'production_staff', '64', 4, '2023-02-13 19:35:52', '2023-02-13 19:35:52', NULL),
(511, 'production_coordinator_planner', '64', 4, '2023-02-13 19:35:52', '2023-02-13 19:35:52', NULL),
(510, 'developer', '64', 4, '2023-02-13 19:35:52', '2023-02-13 19:35:52', NULL),
(509, 'system_engineer', '64', 4, '2023-02-13 19:35:52', '2023-02-13 19:35:52', NULL),
(508, 'process_policy_owner', '64', 4, '2023-02-13 19:35:52', '2023-02-13 19:35:52', NULL),
(507, 'internal_support', '64', 4, '2023-02-13 19:35:52', '2023-02-13 19:35:52', NULL),
(506, 'project_manager', '64', 4, '2023-02-13 19:35:52', '2023-02-13 19:35:52', NULL),
(505, 'customer_representative', '64', 4, '2023-02-13 19:35:52', '2023-02-13 19:35:52', NULL),
(504, 'customer', '64', 1, '2023-02-13 19:35:52', '2023-02-13 19:35:52', NULL),
(525, 'innovation_and_strategy_management', '66', 2, '2023-02-13 19:36:06', '2023-02-13 19:36:06', NULL),
(524, 'service_technician', '66', 2, '2023-02-13 19:36:06', '2023-02-13 19:36:06', NULL),
(523, 'production_staff', '66', 2, '2023-02-13 19:36:06', '2023-02-13 19:36:06', NULL),
(522, 'developer', '66', 2, '2023-02-13 19:36:06', '2023-02-13 19:36:06', NULL),
(521, 'system_engineer', '66', 2, '2023-02-13 19:36:06', '2023-02-13 19:36:06', NULL),
(520, 'process_policy_owner', '66', 2, '2023-02-13 19:36:06', '2023-02-13 19:36:06', NULL),
(519, 'internal_support', '66', 2, '2023-02-13 19:36:06', '2023-02-13 19:36:06', NULL),
(518, 'customer_representative', '66', 1, '2023-02-13 19:36:06', '2023-02-13 19:36:06', NULL),
(517, 'customer', '66', 1, '2023-02-13 19:36:06', '2023-02-13 19:36:06', NULL),
(538, 'service_technician', '69', 4, '2023-02-13 19:36:23', '2023-02-13 19:36:23', NULL),
(537, 'production_staff', '69', 4, '2023-02-13 19:36:23', '2023-02-13 19:36:23', NULL),
(536, 'production_coordinator_planner', '69', 4, '2023-02-13 19:36:22', '2023-02-13 19:36:22', NULL),
(535, 'developer', '69', 4, '2023-02-13 19:36:22', '2023-02-13 19:36:22', NULL),
(534, 'system_engineer', '69', 4, '2023-02-13 19:36:22', '2023-02-13 19:36:22', NULL),
(533, 'process_policy_owner', '69', 4, '2023-02-13 19:36:22', '2023-02-13 19:36:22', NULL),
(532, 'internal_support', '69', 4, '2023-02-13 19:36:22', '2023-02-13 19:36:22', NULL),
(531, 'project_manager', '69', 4, '2023-02-13 19:36:22', '2023-02-13 19:36:22', NULL),
(530, 'customer_representative', '69', 4, '2023-02-13 19:36:22', '2023-02-13 19:36:22', NULL),
(529, 'customer', '69', 3, '2023-02-13 19:36:22', '2023-02-13 19:36:22', NULL),
(550, 'production_staff', '71', 4, '2023-02-13 19:36:36', '2023-02-13 19:36:36', NULL),
(549, 'production_coordinator_planner', '71', 4, '2023-02-13 19:36:36', '2023-02-13 19:36:36', NULL),
(548, 'developer', '71', 4, '2023-02-13 19:36:36', '2023-02-13 19:36:36', NULL),
(547, 'system_engineer', '71', 4, '2023-02-13 19:36:36', '2023-02-13 19:36:36', NULL),
(546, 'process_policy_owner', '71', 4, '2023-02-13 19:36:36', '2023-02-13 19:36:36', NULL),
(545, 'internal_support', '71', 4, '2023-02-13 19:36:36', '2023-02-13 19:36:36', NULL),
(544, 'project_manager', '71', 4, '2023-02-13 19:36:36', '2023-02-13 19:36:36', NULL),
(543, 'customer_representative', '71', 4, '2023-02-13 19:36:36', '2023-02-13 19:36:36', NULL),
(542, 'customer', '71', 3, '2023-02-13 19:36:36', '2023-02-13 19:36:36', NULL),
(563, 'innovation_and_strategy_management', '73', 2, '2023-02-13 19:37:05', '2023-02-13 19:37:05', NULL),
(562, 'service_technician', '73', 2, '2023-02-13 19:37:05', '2023-02-13 19:37:05', NULL),
(561, 'production_staff', '73', 2, '2023-02-13 19:37:05', '2023-02-13 19:37:05', NULL),
(560, 'developer', '73', 2, '2023-02-13 19:37:05', '2023-02-13 19:37:05', NULL),
(559, 'system_engineer', '73', 2, '2023-02-13 19:37:05', '2023-02-13 19:37:05', NULL),
(558, 'process_policy_owner', '73', 2, '2023-02-13 19:37:05', '2023-02-13 19:37:05', NULL),
(557, 'internal_support', '73', 2, '2023-02-13 19:37:05', '2023-02-13 19:37:05', NULL),
(556, 'customer_representative', '73', 2, '2023-02-13 19:37:05', '2023-02-13 19:37:05', NULL),
(555, 'customer', '73', 1, '2023-02-13 19:37:05', '2023-02-13 19:37:05', NULL),
(577, 'service_technician', '76', 4, '2023-02-13 19:37:26', '2023-02-13 19:37:26', NULL),
(576, 'production_staff', '76', 4, '2023-02-13 19:37:26', '2023-02-13 19:37:26', NULL),
(575, 'production_coordinator_planner', '76', 4, '2023-02-13 19:37:26', '2023-02-13 19:37:26', NULL),
(574, 'developer', '76', 4, '2023-02-13 19:37:26', '2023-02-13 19:37:26', NULL),
(573, 'system_engineer', '76', 4, '2023-02-13 19:37:26', '2023-02-13 19:37:26', NULL),
(572, 'process_policy_owner', '76', 4, '2023-02-13 19:37:26', '2023-02-13 19:37:26', NULL),
(571, 'internal_support', '76', 4, '2023-02-13 19:37:26', '2023-02-13 19:37:26', NULL),
(570, 'project_manager', '76', 4, '2023-02-13 19:37:26', '2023-02-13 19:37:26', NULL),
(569, 'customer_representative', '76', 4, '2023-02-13 19:37:26', '2023-02-13 19:37:26', NULL),
(568, 'customer', '76', 3, '2023-02-13 19:37:26', '2023-02-13 19:37:26', NULL),
(588, 'project_manager', '78', 3, '2023-02-13 19:37:43', '2023-02-13 19:37:43', NULL),
(587, 'innovation_and_strategy_management', '78', 2, '2023-02-13 19:37:43', '2023-02-13 19:37:43', NULL),
(586, 'service_technician', '78', 2, '2023-02-13 19:37:43', '2023-02-13 19:37:43', NULL),
(585, 'developer', '78', 2, '2023-02-13 19:37:43', '2023-02-13 19:37:43', NULL),
(584, 'process_policy_owner', '78', 2, '2023-02-13 19:37:43', '2023-02-13 19:37:43', NULL),
(583, 'internal_support', '78', 2, '2023-02-13 19:37:43', '2023-02-13 19:37:43', NULL),
(582, 'customer_representative', '78', 2, '2023-02-13 19:37:42', '2023-02-13 19:37:42', NULL),
(581, 'customer', '78', 1, '2023-02-13 19:37:42', '2023-02-13 19:37:42', NULL),
(602, 'system_engineer', '82', 4, '2023-02-13 19:37:54', '2023-02-13 19:37:54', NULL),
(601, 'process_policy_owner', '82', 4, '2023-02-13 19:37:54', '2023-02-13 19:37:54', NULL),
(600, 'project_manager', '82', 4, '2023-02-13 19:37:54', '2023-02-13 19:37:54', NULL),
(599, 'innovation_and_strategy_management', '82', 3, '2023-02-13 19:37:54', '2023-02-13 19:37:54', NULL),
(598, 'service_technician', '82', 3, '2023-02-13 19:37:54', '2023-02-13 19:37:54', NULL),
(597, 'production_staff', '82', 3, '2023-02-13 19:37:54', '2023-02-13 19:37:54', NULL),
(596, 'internal_support', '82', 3, '2023-02-13 19:37:54', '2023-02-13 19:37:54', NULL),
(595, 'customer_representative', '82', 3, '2023-02-13 19:37:54', '2023-02-13 19:37:54', NULL),
(594, 'customer', '82', 3, '2023-02-13 19:37:54', '2023-02-13 19:37:54', NULL),
(615, 'project_manager', '84', 4, '2023-02-13 19:38:08', '2023-02-13 19:38:08', NULL),
(614, 'innovation_and_strategy_management', '84', 3, '2023-02-13 19:38:08', '2023-02-13 19:38:08', NULL),
(613, 'service_technician', '84', 3, '2023-02-13 19:38:08', '2023-02-13 19:38:08', NULL),
(612, 'production_staff', '84', 3, '2023-02-13 19:38:08', '2023-02-13 19:38:08', NULL),
(611, 'developer', '84', 3, '2023-02-13 19:38:08', '2023-02-13 19:38:08', NULL),
(610, 'process_policy_owner', '84', 3, '2023-02-13 19:38:08', '2023-02-13 19:38:08', NULL),
(609, 'internal_support', '84', 3, '2023-02-13 19:38:08', '2023-02-13 19:38:08', NULL),
(608, 'customer_representative', '84', 3, '2023-02-13 19:38:08', '2023-02-13 19:38:08', NULL),
(607, 'customer', '84', 2, '2023-02-13 19:38:08', '2023-02-13 19:38:08', NULL),
(628, 'internal_support', '87', 4, '2023-02-13 19:38:22', '2023-02-13 19:38:22', NULL),
(627, 'process_policy_owner', '87', 3, '2023-02-13 19:38:22', '2023-02-13 19:38:22', NULL),
(626, 'management', '87', 2, '2023-02-13 19:38:22', '2023-02-13 19:38:22', NULL),
(625, 'service_technician', '87', 2, '2023-02-13 19:38:22', '2023-02-13 19:38:22', NULL),
(624, 'production_staff', '87', 2, '2023-02-13 19:38:22', '2023-02-13 19:38:22', NULL),
(623, 'production_coordinator_planner', '87', 2, '2023-02-13 19:38:22', '2023-02-13 19:38:22', NULL),
(622, 'project_manager', '87', 1, '2023-02-13 19:38:22', '2023-02-13 19:38:22', NULL),
(621, 'customer_representative', '87', 0, '2023-02-13 19:38:22', '2023-02-13 19:38:22', NULL),
(620, 'customer', '87', 0, '2023-02-13 19:38:22', '2023-02-13 19:38:22', NULL),
(645, 'management', '92', 4, '2023-02-13 19:38:39', '2023-02-13 19:38:39', NULL),
(644, 'quality_manager', '92', 4, '2023-02-13 19:38:39', '2023-02-13 19:38:39', NULL),
(643, 'production_coordinator_planner', '92', 4, '2023-02-13 19:38:39', '2023-02-13 19:38:39', NULL),
(642, 'system_engineer', '92', 4, '2023-02-13 19:38:39', '2023-02-13 19:38:39', NULL),
(641, 'project_manager', '92', 3, '2023-02-13 19:38:39', '2023-02-13 19:38:39', NULL),
(640, 'internal_support', '92', 3, '2023-02-13 19:38:39', '2023-02-13 19:38:39', NULL),
(639, 'process_policy_owner', '92', 3, '2023-02-13 19:38:39', '2023-02-13 19:38:39', NULL),
(638, 'developer', '92', 3, '2023-02-13 19:38:39', '2023-02-13 19:38:39', NULL),
(637, 'production_staff', '92', 3, '2023-02-13 19:38:39', '2023-02-13 19:38:39', NULL),
(634, 'customer', '92', 2, '2023-02-13 19:38:39', '2023-02-13 19:38:39', NULL),
(635, 'management', '92', 3, '2023-02-13 19:38:39', '2023-02-13 19:38:39', NULL),
(636, 'service_technician', '92', 3, '2023-02-13 19:38:39', '2023-02-13 19:38:39', NULL),
(399, 'system_engineer', '25', 4, '2023-02-13 17:38:54', '2023-02-13 17:38:54', NULL),
(376, 'internal_support', '20', 1, '2023-02-13 17:37:45', '2023-02-13 17:37:45', NULL),
(374, 'customer', '20', 0, '2023-02-13 17:37:45', '2023-02-13 17:37:45', NULL),
(375, 'service_technician', '20', 0, '2023-02-13 17:37:45', '2023-02-13 17:37:45', NULL),
(633, 'customer_representative', '92', 2, '2023-02-13 19:38:39', '2023-02-13 19:38:39', NULL),
(398, 'management', '25', 3, '2023-02-13 17:38:54', '2023-02-13 17:38:54', NULL),
(397, 'innovation_and_strategy_management', '25', 3, '2023-02-13 17:38:54', '2023-02-13 17:38:54', NULL),
(386, 'system_engineer', '20', 4, '2023-02-13 17:37:45', '2023-02-13 17:37:45', NULL),
(410, 'innovation_and_strategy_management', '29', 3, '2023-02-13 19:29:08', '2023-02-13 19:29:08', NULL),
(411, 'system_engineer', '29', 4, '2023-02-13 19:29:08', '2023-02-13 19:29:08', NULL),
(412, 'developer', '29', 4, '2023-02-13 19:29:08', '2023-02-13 19:29:08', NULL),
(421, 'internal_support', '33', 4, '2023-02-13 19:29:27', '2023-02-13 19:29:27', NULL),
(422, 'process_policy_owner', '33', 4, '2023-02-13 19:29:27', '2023-02-13 19:29:27', NULL),
(423, 'system_engineer', '33', 4, '2023-02-13 19:29:27', '2023-02-13 19:29:27', NULL),
(424, 'service_technician', '33', 4, '2023-02-13 19:29:27', '2023-02-13 19:29:27', NULL),
(425, 'management', '33', 4, '2023-02-13 19:29:27', '2023-02-13 19:29:27', NULL),
(435, 'innovation_and_strategy_management', '36', 1, '2023-02-13 19:29:39', '2023-02-13 19:29:39', NULL),
(436, 'management', '36', 2, '2023-02-13 19:29:39', '2023-02-13 19:29:39', NULL),
(437, 'developer', '36', 3, '2023-02-13 19:29:39', '2023-02-13 19:29:39', NULL),
(438, 'system_engineer', '36', 4, '2023-02-13 19:29:39', '2023-02-13 19:29:39', NULL),
(449, 'project_manager', '41', 3, '2023-02-13 19:34:15', '2023-02-13 19:34:15', NULL),
(450, 'system_engineer', '41', 4, '2023-02-13 19:34:15', '2023-02-13 19:34:15', NULL),
(451, 'developer', '41', 4, '2023-02-13 19:34:15', '2023-02-13 19:34:15', NULL),
(461, 'quality_manager', '46', 2, '2023-02-13 19:34:51', '2023-02-13 19:34:51', NULL),
(462, 'process_policy_owner', '46', 3, '2023-02-13 19:34:51', '2023-02-13 19:34:51', NULL),
(463, 'system_engineer', '46', 4, '2023-02-13 19:34:51', '2023-02-13 19:34:51', NULL),
(464, 'developer', '46', 4, '2023-02-13 19:34:51', '2023-02-13 19:34:51', NULL),
(474, 'project_manager', '51', 3, '2023-02-13 19:35:07', '2023-02-13 19:35:07', NULL),
(475, 'developer', '51', 3, '2023-02-13 19:35:07', '2023-02-13 19:35:07', NULL),
(476, 'internal_support', '51', 4, '2023-02-13 19:35:07', '2023-02-13 19:35:07', NULL),
(477, 'management', '51', 4, '2023-02-13 19:35:07', '2023-02-13 19:35:07', NULL),
(488, 'production_staff', '55', 4, '2023-02-13 19:35:19', '2023-02-13 19:35:19', NULL),
(489, 'quality_manager', '55', 4, '2023-02-13 19:35:19', '2023-02-13 19:35:19', NULL),
(490, 'management', '55', 4, '2023-02-13 19:35:19', '2023-02-13 19:35:19', NULL),
(501, 'system_engineer', '60', 4, '2023-02-13 19:35:36', '2023-02-13 19:35:36', NULL),
(502, 'developer', '60', 4, '2023-02-13 19:35:36', '2023-02-13 19:35:36', NULL),
(503, 'management', '60', 4, '2023-02-13 19:35:36', '2023-02-13 19:35:36', NULL),
(514, 'quality_manager', '64', 4, '2023-02-13 19:35:52', '2023-02-13 19:35:52', NULL),
(515, 'innovation_and_strategy_management', '64', 4, '2023-02-13 19:35:52', '2023-02-13 19:35:52', NULL),
(516, 'management', '64', 4, '2023-02-13 19:35:52', '2023-02-13 19:35:52', NULL),
(526, 'project_manager', '66', 4, '2023-02-13 19:36:06', '2023-02-13 19:36:06', NULL),
(527, 'production_coordinator_planner', '66', 4, '2023-02-13 19:36:06', '2023-02-13 19:36:06', NULL),
(528, 'management', '66', 4, '2023-02-13 19:36:06', '2023-02-13 19:36:06', NULL),
(539, 'quality_manager', '69', 4, '2023-02-13 19:36:23', '2023-02-13 19:36:23', NULL),
(540, 'innovation_and_strategy_management', '69', 4, '2023-02-13 19:36:23', '2023-02-13 19:36:23', NULL),
(541, 'management', '69', 4, '2023-02-13 19:36:23', '2023-02-13 19:36:23', NULL),
(551, 'service_technician', '71', 4, '2023-02-13 19:36:36', '2023-02-13 19:36:36', NULL),
(552, 'quality_manager', '71', 4, '2023-02-13 19:36:36', '2023-02-13 19:36:36', NULL),
(553, 'innovation_and_strategy_management', '71', 4, '2023-02-13 19:36:36', '2023-02-13 19:36:36', NULL),
(554, 'management', '71', 4, '2023-02-13 19:36:36', '2023-02-13 19:36:36', NULL),
(564, 'project_manager', '73', 4, '2023-02-13 19:37:05', '2023-02-13 19:37:05', NULL),
(565, 'production_coordinator_planner', '73', 4, '2023-02-13 19:37:05', '2023-02-13 19:37:05', NULL),
(566, 'quality_manager', '73', 4, '2023-02-13 19:37:05', '2023-02-13 19:37:05', NULL),
(567, 'management', '73', 4, '2023-02-13 19:37:05', '2023-02-13 19:37:05', NULL),
(578, 'quality_manager', '76', 4, '2023-02-13 19:37:26', '2023-02-13 19:37:26', NULL),
(579, 'innovation_and_strategy_management', '76', 4, '2023-02-13 19:37:26', '2023-02-13 19:37:26', NULL),
(580, 'management', '76', 4, '2023-02-13 19:37:26', '2023-02-13 19:37:26', NULL),
(589, 'production_staff', '78', 3, '2023-02-13 19:37:43', '2023-02-13 19:37:43', NULL),
(590, 'system_engineer', '78', 4, '2023-02-13 19:37:43', '2023-02-13 19:37:43', NULL),
(591, 'production_coordinator_planner', '78', 4, '2023-02-13 19:37:43', '2023-02-13 19:37:43', NULL),
(592, 'quality_manager', '78', 4, '2023-02-13 19:37:43', '2023-02-13 19:37:43', NULL),
(593, 'management', '78', 4, '2023-02-13 19:37:43', '2023-02-13 19:37:43', NULL),
(603, 'developer', '82', 4, '2023-02-13 19:37:54', '2023-02-13 19:37:54', NULL),
(604, 'production_coordinator_planner', '82', 4, '2023-02-13 19:37:54', '2023-02-13 19:37:54', NULL),
(605, 'quality_manager', '82', 4, '2023-02-13 19:37:54', '2023-02-13 19:37:54', NULL),
(606, 'management', '82', 4, '2023-02-13 19:37:54', '2023-02-13 19:37:54', NULL),
(616, 'system_engineer', '84', 4, '2023-02-13 19:38:08', '2023-02-13 19:38:08', NULL),
(617, 'production_coordinator_planner', '84', 4, '2023-02-13 19:38:08', '2023-02-13 19:38:08', NULL),
(618, 'quality_manager', '84', 4, '2023-02-13 19:38:08', '2023-02-13 19:38:08', NULL),
(619, 'management', '84', 4, '2023-02-13 19:38:08', '2023-02-13 19:38:08', NULL),
(629, 'system_engineer', '87', 4, '2023-02-13 19:38:22', '2023-02-13 19:38:22', NULL),
(630, 'developer', '87', 4, '2023-02-13 19:38:22', '2023-02-13 19:38:22', NULL),
(631, 'quality_manager', '87', 4, '2023-02-13 19:38:22', '2023-02-13 19:38:22', NULL),
(632, 'innovation_and_strategy_management', '87', 4, '2023-02-13 19:38:22', '2023-02-13 19:38:22', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;