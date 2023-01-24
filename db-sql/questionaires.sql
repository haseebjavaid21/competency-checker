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
-- Table structure for table `questionaires`
--

DROP TABLE IF EXISTS `questionaires`;
CREATE TABLE IF NOT EXISTS `questionaires` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `competency_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `competency_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questionaires`
--

INSERT INTO `questionaires` (`id`, `question`, `competency_type`, `competency_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(24, 'Are you able to understand the given problem and apply the fundamentals of system thinking to Systems Engineering?\ne.g Are you able to understand given requirement and break it down into small parts which are easy to communicate?', 'Methodical Competencies', 'System Thinking', '2023-02-01 00:28:24', '2023-02-01 00:28:24', '2023-02-03 23:00:00'),
(23, 'Are you able to understand the given problem and apply the fundamentals of system thinking to Systems Engineering?\ne.g Are you able to understand given requirement and break it down into small parts which are easy to communicate?', 'Methodical Competencies', 'System Thinking', '2023-02-01 00:27:59', '2023-02-01 00:27:59', '2023-02-03 23:00:00'),
(22, 'Are you able to understand the given problem and apply the fundamentals of system thinking to Systems Engineering?\ne.g Are you able to understand given requirement and break it down into small parts which are easy to communicate?', 'Methodical Competencies', 'System Thinking', '2023-02-01 00:27:24', '2023-02-01 00:27:24', '2023-02-03 23:00:00'),
(13, 'Can you apply System Thinking?', 'Methodical Competencies', 'System Thinking', '2023-01-26 02:54:37', '2023-02-01 00:01:47', '2023-02-01 00:01:47'),
(14, 'Can you do Requirement Engineering?', 'Professional Competencies', 'Requirement Engineering', '2023-01-26 02:55:18', '2023-02-01 00:01:49', '2023-02-01 00:01:49'),
(21, 'Are you able to understand the given problem and apply the fundamentals of system thinking to Systems Engineering?\ne.g Are you able to understand given requirement and break it down into small parts which are easy to communicate?', 'Methodical Competencies', 'System Thinking', '2023-02-01 00:25:13', '2023-02-01 00:25:13', '2023-02-04 20:20:21'),
(15, 'Can you communicate clearly?', 'Self and Social Competencies', 'Communication', '2023-01-26 02:55:58', '2023-02-01 00:01:52', '2023-02-01 00:01:52'),
(18, 'Can you apply System Thinking?yes I do', 'Methodical Competencies', 'System Thinking', '2023-01-29 18:30:14', '2023-01-29 20:46:50', '2023-01-29 20:46:50'),
(16, 'Can you plan easily??', 'Management Competencies', 'Planning', '2023-01-26 02:56:27', '2023-02-01 00:01:54', '2023-02-01 00:01:54'),
(20, 'To what extent are you able to understand the given problem and apply the fundamentals of system thinking to Systems Engineering? e.g. In my projects, I consider the whole system life-cycle and I have a clear understanding of the system boundary.', 'Methodical Competencies', 'System Thinking', '2023-01-29 21:51:02', '2023-02-13 17:37:45', NULL),
(25, 'To what extent are you able to analyze a topic of discussion objectively and evaluate it based on your observation in order to make an informed decision? i.e. Are you able to critically think about a topic and make a decision?', 'Methodical Competencies', 'Critical Thinking', '2023-02-01 00:30:02', '2023-02-13 17:38:54', NULL),
(26, 'Are you able to analyze a topic of discussion objectively and evaluate it based on your\nobservation in order to make an informed decision?\ni.e Are you able to critically think about a topic and make a decision?', 'Methodical Competencies', 'Critical Thinking', '2023-02-01 00:32:18', '2023-02-01 00:32:18', '2023-02-04 20:24:03'),
(27, 'Are you able to analyze a topic of discussion objectively and evaluate it based on your\nobservation in order to make an informed decision?\ni.e Are you able to critically think about a topic and make a decision?', 'Methodical Competencies', 'Critical Thinking', '2023-02-01 00:33:11', '2023-02-01 00:33:11', '2023-02-04 20:24:03'),
(28, 'Are you able to analyze a topic of discussion objectively and evaluate it based on your\nobservation in order to make an informed decision?\ni.e Are you able to critically think about a topic and make a decision?', 'Methodical Competencies', 'Critical Thinking', '2023-02-01 00:33:53', '2023-02-01 00:33:53', '2023-02-04 20:24:03'),
(29, 'To what extent are you able to use modeling techniques to explain technical things in interdisciplinary teams and make decisions based on those models? i.e Are you able to use SysML or other modeling languages in your work?', 'Methodical Competencies', 'System Modeling and Analysis', '2023-02-01 00:34:59', '2023-02-13 19:29:08', NULL),
(30, 'Are you able to handle excess amount of data and use modeling techniques to explain\ntechnical things and help in decision making?\ni.e Can you go through large amount of data carefully, use models to explain difficult\nconcepts as well as make decisions?', 'Methodical Competencies', 'System Modeling and Analysis', '2023-02-01 00:35:46', '2023-02-01 00:35:46', '2023-02-04 20:27:36'),
(31, 'Are you able to handle excess amount of data and use modeling techniques to explain\ntechnical things and help in decision making?\ni.e Can you go through large amount of data carefully, use models to explain difficult\nconcepts as well as make decisions?', 'Methodical Competencies', 'System Modeling and Analysis', '2023-02-01 00:36:47', '2023-02-01 00:36:47', '2023-02-04 20:27:36'),
(32, 'Are you able to handle excess amount of data and use modeling techniques to explain\ntechnical things and help in decision making?\ni.e Can you go through large amount of data carefully, use models to explain difficult\nconcepts as well as make decisions?', 'Methodical Competencies', 'System Modeling and Analysis', '2023-02-01 00:37:08', '2023-02-01 00:37:08', '2023-02-04 20:27:36'),
(33, 'To what extent do you focus on the customers and make decisions that prioritize customer benefits? i.e. Can you make decisions in such a way that improves customer relations and make them feel important to you and your organization?', 'Methodical Competencies', 'Customer Benefit Orientation', '2023-02-01 00:38:15', '2023-02-13 19:29:27', NULL),
(34, 'Are you able to handle the customers and make decisions than prioritize customer benefit?\nCan you make decisions in a such a way that improve customer relations and make them\nfeel important to you and your organization?', 'Methodical Competencies', 'Customer Benefit Orientation', '2023-02-01 00:38:40', '2023-02-01 00:38:40', '2023-02-04 20:29:12'),
(35, 'Are you able to handle the customers and make decisions than prioritize customer benefit?\nCan you make decisions in a such a way that improve customer relations and make them\nfeel important to you and your organization?', 'Methodical Competencies', 'Customer Benefit Orientation', '2023-02-01 00:39:11', '2023-02-01 00:39:11', '2023-02-03 23:00:00'),
(36, 'To what extent are you able to apply the concepts from general science and engineering fields to Systems Engineering? i.e Do you understand concepts from Mathematics and other sciences and have the capability to apply them?', 'Methodical Competencies', 'General Engineering', '2023-02-01 00:39:57', '2023-02-13 19:29:39', NULL),
(37, 'Are you able to apply the concepts from different science and engineering fields to the\nSystems Engineering?\ni.e Do you understand concepts from Mathematics and other sciences and have the capability\nto apply them?', 'Methodical Competencies', 'General Engineering', '2023-02-01 00:40:36', '2023-02-01 00:40:36', '2023-02-04 20:30:50'),
(38, 'Are you able to apply the concepts from different science and engineering fields to the\nSystems Engineering?\ni.e Do you understand concepts from Mathematics and other sciences and have the capability\nto apply them?', 'Methodical Competencies', 'General Engineering', '2023-02-01 00:40:48', '2023-02-01 00:40:48', '2023-02-04 20:30:50'),
(39, 'Are you able to apply the concepts from different science and engineering fields to the\nSystems Engineering?\ni.e Do you understand concepts from Mathematics and other sciences and have the capability\nto apply them?', 'Methodical Competencies', 'General Engineering', '2023-02-01 00:40:58', '2023-02-01 00:40:58', '2023-02-04 20:30:50'),
(40, 'Are you able to apply the concepts from different science and engineering fields to the\nSystems Engineering?\ni.e Do you understand concepts from Mathematics and other sciences and have the capability\nto apply them?', 'Methodical Competencies', 'General Engineering', '2023-02-01 00:41:09', '2023-02-01 00:41:09', '2023-02-04 20:30:50'),
(41, 'To what extent do you understand stakeholder needs and derive system requirements from them that can be implemented in a system within a project? i.e. Do you translate stakeholder needs into functional requirements? Do you know the characteristics of good requirements?', 'Professional Competencies', 'Requirement Engineering', '2023-02-01 00:42:33', '2023-02-13 19:34:15', NULL),
(42, 'Are you able to understand the client needs and establish requirements from them that\ncan be implemented to complete projects?\ni.e Can you translate client needs into functional requirements?', 'Professional Competencies', 'Requirement Engineering', '2023-02-01 00:43:07', '2023-02-01 00:43:07', '2023-02-04 20:33:06'),
(43, 'Are you able to understand the client needs and establish requirements from them that\ncan be implemented to complete projects?\ni.e Can you translate client needs into functional requirements?', 'Professional Competencies', 'Requirement Engineering', '2023-02-01 00:43:34', '2023-02-01 00:43:34', '2023-02-04 20:33:06'),
(44, 'Are you able to understand the client needs and establish requirements from them that\ncan be implemented to complete projects?\ni.e Can you translate client needs into functional requirements?', 'Professional Competencies', 'Requirement Engineering', '2023-02-01 00:44:05', '2023-02-01 00:44:05', '2023-02-04 20:33:06'),
(45, 'Are you able to understand the client needs and establish requirements from them that\ncan be implemented to complete projects?\ni.e Can you translate client needs into functional requirements?', 'Professional Competencies', 'Requirement Engineering', '2023-02-01 00:44:20', '2023-02-01 00:44:20', '2023-02-04 20:33:06'),
(46, 'To what extent do you design structures, define interfaces, derive further requirements that can be implemented and suggest alternate solutions?', 'Professional Competencies', 'System Designing', '2023-02-01 00:44:49', '2023-02-13 19:34:51', NULL),
(47, 'Are you able to design structures and interfaces and derive further requirements that can\nbe implemented?', 'Professional Competencies', 'System Designing', '2023-02-01 00:45:32', '2023-02-01 00:45:32', '2023-02-04 20:39:23'),
(48, 'Are you able to design structures and interfaces and derive further requirements that can\nbe implemented?', 'Professional Competencies', 'System Designing', '2023-02-01 00:46:07', '2023-02-01 00:46:07', '2023-02-04 20:39:23'),
(49, 'Are you able to design structures and interfaces and derive further requirements that can\nbe implemented?', 'Professional Competencies', 'System Designing', '2023-02-01 00:46:24', '2023-02-01 00:46:24', '2023-02-04 20:39:23'),
(50, 'Are you able to design structures and interfaces and derive further requirements that can\nbe implemented?', 'Professional Competencies', 'System Designing', '2023-02-01 00:46:34', '2023-02-01 00:46:34', '2023-02-04 20:39:23'),
(51, 'To what extent do you consider delivering a completed system that performs the required functionalities and technical support over its lifetime in development?', 'Professional Competencies', 'Operation and Support', '2023-02-01 00:51:25', '2023-02-13 19:35:07', NULL),
(52, 'Are you capable of delivering a completed project that delivers the required functionalities\nand providing technical support over the lifetime of the project?', 'Professional Competencies', 'Operation and Support', '2023-02-01 00:51:54', '2023-02-01 00:51:54', '2023-02-04 20:40:20'),
(53, 'Are you capable of delivering a completed project that delivers the required functionalities\nand providing technical support over the lifetime of the project?', 'Professional Competencies', 'Operation and Support', '2023-02-01 00:52:13', '2023-02-01 00:52:13', '2023-02-04 20:40:20'),
(54, 'Are you capable of delivering a completed project that delivers the required functionalities\nand providing technical support over the lifetime of the project?', 'Professional Competencies', 'Operation and Support', '2023-02-01 00:52:29', '2023-02-01 00:52:29', '2023-02-04 20:40:20'),
(55, 'To what extent do you handle the integration of different system elements into one single complete system, ensure that the system meets every system\'s requirements as well as ensure that it adheres to the stakeholder’s needs?', 'Professional Competencies', 'Integration, Verification and Validation', '2023-02-01 00:54:33', '2023-02-13 19:35:19', NULL),
(56, 'Are you able to handle the integration of different project components into one single\ncomplete system, making sure that the system does everything its required to in a operational\nenvironment as well as it adheres to the client’s requirements.', 'Professional Competencies', 'Integration, Verification and Validation', '2023-02-01 00:54:54', '2023-02-01 00:54:54', '2023-02-04 20:42:17'),
(57, 'Are you able to handle the integration of different project components into one single\ncomplete system, making sure that the system does everything its required to in a operational\nenvironment as well as it adheres to the client’s requirements.', 'Professional Competencies', 'Integration, Verification and Validation', '2023-02-01 00:55:16', '2023-02-01 00:55:16', '2023-02-04 20:42:17'),
(58, 'Are you able to handle the integration of different project components into one single\ncomplete system, making sure that the system does everything its required to in a operational\nenvironment as well as it adheres to the client’s requirements.', 'Professional Competencies', 'Integration, Verification and Validation', '2023-02-01 00:55:29', '2023-02-01 00:55:29', '2023-02-04 20:42:17'),
(59, 'Are you able to handle the integration of different project components into one single\ncomplete system, making sure that the system does everything its required to in a operational\nenvironment as well as it adheres to the client’s requirements.', 'Professional Competencies', 'Integration, Verification and Validation', '2023-02-01 00:55:53', '2023-02-01 00:55:53', '2023-02-04 20:42:17'),
(60, 'To what extent do you understand the agile concepts and are able to apply these concepts e.g scrum in your team on a daily basis?', 'Professional Competencies', 'Agile Methodolgies', '2023-02-01 00:56:54', '2023-02-13 19:35:36', NULL),
(61, 'Do you understand the agile concepts and are able to apply the agile concepts e.g scrum\nin your team?', 'Professional Competencies', 'Agile Methodologies', '2023-02-01 00:57:15', '2023-02-01 00:57:15', '2023-02-04 20:43:39'),
(62, 'Do you understand the agile concepts and are able to apply the agile concepts e.g scrum\nin your team?', 'Professional Competencies', 'Agile Methodologies', '2023-02-01 00:57:23', '2023-02-01 00:57:23', '2023-02-04 20:43:39'),
(63, 'Do you understand the agile concepts and are able to apply the agile concepts e.g scrum\nin your team?', 'Professional Competencies', 'Agile Methodologies', '2023-02-01 00:57:47', '2023-02-01 00:57:47', '2023-02-04 20:43:39'),
(64, 'To what extent do you clearly communicate and exchange information between the stakeholders and your team involved in a project and have empathy for them?', 'Self and Social Competencies', 'Communication', '2023-02-01 00:59:05', '2023-02-13 19:35:52', NULL),
(65, 'Are you able to clearly communicate and exchange information between the teams involved\nin a project?', 'Self and Social Competencies', 'Communication', '2023-02-01 00:59:23', '2023-02-01 00:59:23', '2023-02-04 20:45:24'),
(66, 'To what extent do you have the capability to lead people by example and give them the opportunity to make their own decisions?', 'Self and Social Competencies', 'Leadership', '2023-02-01 01:00:08', '2023-02-13 19:36:06', NULL),
(67, 'Do you have the capability to lead people by example?', 'Self and Social Competencies', 'Leadership', '2023-02-01 01:00:54', '2023-02-01 01:00:54', '2023-02-04 20:46:28'),
(68, 'Do you have the capability to lead people by example?', 'Self and Social Competencies', 'Leadership', '2023-02-01 01:01:48', '2023-02-01 01:01:48', '2023-02-03 23:00:00'),
(69, 'To what extent do you adhere to the professional, organizational and corporate rules and regulations defined by your organization in regards to office behavior and work ethics?', 'Self and Social Competencies', 'Ethics and Professionalism', '2023-02-01 01:02:16', '2023-02-13 19:36:22', NULL),
(70, 'Do you adhere to the professional, organizational and corporate rules and regulations\ndefined by your organization in regards to office behavior and work ethics?', 'Self and Social Competencies', 'Ethics and Professionalism', '2023-02-01 01:02:36', '2023-02-01 01:02:36', '2023-02-04 20:47:59'),
(71, 'To what extent do you hold your own ground when facing unexpected issues and taking care of your own work and problems?', 'Self and Social Competencies', 'Self Organization', '2023-02-01 01:03:35', '2023-02-13 19:36:36', NULL),
(72, 'Are you capable of holding your own ground and taking care of your own problems without\nany external help?', 'Self and Social Competencies', 'Self Organization', '2023-02-01 01:03:41', '2023-02-01 01:03:41', '2023-02-04 20:48:47'),
(73, 'To what extent do you support your employees in order to motivate and guide them on how they can improve their skills, knowledge and work performance?', 'Self and Social Competencies', 'Coaching and Mentoring', '2023-02-01 01:04:26', '2023-02-13 19:37:05', NULL),
(74, 'As someone in leadership, do you have the capability to hold one to one sessions with\nemployees in order to motivate and guide them on how can they improve their skills,\nknowledge and work performance.', 'Self and Social Competencies', 'Coaching and Mentoring', '2023-02-01 01:05:00', '2023-02-01 01:05:00', '2023-02-04 20:49:46'),
(75, 'As someone in leadership, do you have the capability to hold one to one sessions with\nemployees in order to motivate and guide them on how can they improve their skills,\nknowledge and work performance.', 'Self and Social Competencies', 'Coaching and Mentoring', '2023-02-01 01:05:21', '2023-02-01 01:05:21', '2023-02-03 23:00:00'),
(76, 'To what extent do you develop efficient, consistent and workable plans and execute them to make sure everything works smoothly?', 'Management Competencies', 'Planning', '2023-02-01 01:05:49', '2023-02-13 19:37:26', NULL),
(77, 'Do you have the capability to develop efficient, consistent and workable plans and execute\nthem to make sure everything works smoothly?', 'Management Competencies', 'Planning', '2023-02-01 01:06:03', '2023-02-01 01:06:03', '2023-02-04 20:50:52'),
(78, 'To what extent do you assess the current project status to see if the project is going smoothly and check if the ongoing plan is feasible or is there any change needed?', 'Management Competencies', 'Monitoring and Control', '2023-02-01 01:06:36', '2023-02-13 19:37:42', NULL),
(79, 'Do you have the ability to assess current project status to see if the project is going smoothly and the ongoing plan is feasible or is there any change needed?', 'Management Competencies', 'Monitoring and Control', '2023-02-01 01:07:05', '2023-02-01 01:07:05', '2023-02-04 20:54:09'),
(80, 'Do you have the ability to assess current project status to see if the project is going smoothly and the ongoing plan is feasible or is there any change needed?', 'Management Competencies', 'Monitoring and Control', '2023-02-01 01:07:24', '2023-02-01 01:07:24', '2023-02-04 20:54:09'),
(81, 'Do you have the ability to assess current project status to see if the project is going smoothly and the ongoing plan is feasible or is there any change needed?', 'Management Competencies', 'Monitoring and Control', '2023-02-01 01:07:46', '2023-02-01 01:07:46', '2023-02-04 20:54:09'),
(82, 'To what extent do you make critical decisions regarding the project and document those as well as decide on possible alternatives based on project status and needs?', 'Management Competencies', 'Decision Management', '2023-02-01 01:08:45', '2023-02-13 19:37:54', NULL),
(83, 'Are you capable of making critical decisions regarding the project as well as decide on possible alternatives based on project status and needs?', 'Management Competencies', 'Decision Management', '2023-02-01 01:09:46', '2023-02-01 01:09:46', '2023-02-04 20:55:00'),
(84, 'To what extent do you manage all information related to a project and communicate to the project stakeholders in a timely and accurate manner? e.g. does every team member know where to find the development artifacts?', 'Management Competencies', 'Information Management', '2023-02-01 01:10:55', '2023-02-13 19:38:08', NULL),
(85, 'Are you capable of managing all information related to a project and communicate to the project stakeholders in a timely and accurate manner?', 'Management Competencies', 'Information Management', '2023-02-01 01:11:32', '2023-02-01 01:11:32', '2023-02-04 20:56:19'),
(86, 'Are you capable of managing all information related to a project and communicate to the project stakeholders in a timely and accurate manner?', 'Management Competencies', 'Information Management', '2023-02-01 01:12:02', '2023-02-01 01:12:02', '2023-02-03 23:00:00'),
(87, 'To what extent do you ensure that the different functional and physical characteristics of a project or system are consistent and  mesh together coherently during its life cycle?', 'Management Competencies', 'Configuration Management', '2023-02-01 01:12:41', '2023-02-13 19:38:22', NULL),
(88, 'Are to able to ensure that different functional and physical characteristics of a project or system mesh together coherently during its life-cycle?', 'Management Competencies', 'Configuration Management', '2023-02-01 01:12:51', '2023-02-01 01:12:51', '2023-02-04 20:58:13'),
(89, 'Are to able to ensure that different functional and physical characteristics of a project or system mesh together coherently during its life-cycle?', 'Management Competencies', 'Configuration Management', '2023-02-01 01:13:16', '2023-02-01 01:13:16', '2023-02-04 20:58:13'),
(90, 'Are to able to ensure that different functional and physical characteristics of a project or system mesh together coherently during its life-cycle?', 'Management Competencies', 'Configuration Management', '2023-02-01 01:13:44', '2023-02-01 01:13:44', '2023-02-04 20:58:13'),
(91, 'Are to able to ensure that different functional and physical characteristics of a project or system mesh together coherently during its life-cycle?', 'Management Competencies', 'Configuration Management', '2023-02-01 01:14:10', '2023-02-01 01:14:10', '2023-02-04 20:58:13'),
(92, 'To what extent do you identify the probability and impact of uncertain events and derive measures to reduce impact or probability?', 'Management Competencies', 'Risk Management', '2023-02-01 01:14:41', '2023-02-13 19:38:39', NULL),
(93, 'Do you have the ability to identify and reduce the probability of uncertain events or utilize them to maximize the opportunities provided by them?', 'Management Competencies', 'Risk Management', '2023-02-01 01:15:07', '2023-02-01 01:15:07', '2023-02-04 19:18:40'),
(94, 'Do you have the ability to identify and reduce the probability of uncertain events or utilize them to maximize the opportunities provided by them?', 'Management Competencies', 'Risk Management', '2023-02-01 01:15:39', '2023-02-01 01:15:39', '2023-02-03 23:00:00'),
(95, 'Test Question', 'Methodical Competencies', 'Test Question', '2023-02-01 13:56:16', '2023-02-01 13:58:12', '2023-02-01 13:58:12'),
(96, 'Test Q', 'Methodical Competencies', 'Test', '2023-02-01 13:58:30', '2023-02-01 14:19:45', '2023-02-01 14:19:45'),
(97, 'A', 'Methodical Competencies', 'A', '2023-02-03 17:18:03', '2023-02-03 17:18:11', '2023-02-03 17:18:11'),
(98, 'Test', 'Methodical Competencies', 'Test', '2023-02-03 17:50:44', '2023-02-03 19:17:15', '2023-02-03 19:17:15'),
(99, 'Test', 'Methodical Competencies', 'Test', '2023-02-03 19:17:46', '2023-02-03 19:19:12', '2023-02-03 19:19:12'),
(100, 'Test', 'Methodical Competencies', 'Test', '2023-02-03 19:18:59', '2023-02-04 19:59:29', '2023-02-04 19:59:29'),
(101, 'TEst', 'Methodical Competencies', 'System Thinking', '2023-02-05 00:36:14', '2023-02-06 21:10:14', '2023-02-06 21:10:14'),
(102, 'Test', 'Methodical Competencies', 'System Thinking', '2023-02-06 21:10:36', '2023-02-06 21:13:13', '2023-02-06 21:13:13'),
(103, 'Test', 'Methodical Competencies', 'System Thinking', '2023-02-06 21:10:47', '2023-02-06 21:13:15', '2023-02-06 21:13:15'),
(104, 'Test', 'Methodical Competencies', 'System Thinking', '2023-02-06 21:12:23', '2023-02-06 21:13:17', '2023-02-06 21:13:17'),
(105, 'Test', 'Methodical Competencies', 'System Thinking', '2023-02-06 21:13:01', '2023-02-14 23:41:11', '2023-02-14 23:41:11');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
