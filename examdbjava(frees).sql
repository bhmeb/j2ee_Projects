-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 24, 2013 at 05:31 AM
-- Server version: 5.5.25
-- PHP Version: 5.3.24

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `examdbjava`
--

-- --------------------------------------------------------

--
-- Table structure for table `examination_creation`
--

DROP TABLE IF EXISTS `examination_creation`;
CREATE TABLE IF NOT EXISTS `examination_creation` (
  `exam_id` int(12) NOT NULL,
  `exam_name` varchar(200) NOT NULL,
  `duration_in_min` int(12) NOT NULL,
  `sts` char(1) NOT NULL,
  `question_set_no` int(12) NOT NULL,
  `no_of_subset` int(12) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `puser` varchar(50) NOT NULL,
  `dt_of_entry` datetime NOT NULL,
  PRIMARY KEY (`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `examination_creation`
--

INSERT INTO `examination_creation` (`exam_id`, `exam_name`, `duration_in_min`, `sts`, `question_set_no`, `no_of_subset`, `from_date`, `to_date`, `puser`, `dt_of_entry`) VALUES
(1, 'JAVA Exam', 11, 'A', 1, 4, '2013-09-20', '2013-09-21', '123', '2013-09-17 20:31:23'),
(2, '.NET EXAM FOR VB', 1, 'A', 4, 2, '2013-09-18', '2013-09-30', '123', '2013-09-18 15:26:27'),
(3, 'Demo Exam 3', 3, 'A', 1, 3, '2013-09-18', '2013-09-20', '123', '2013-09-18 16:57:58');

-- --------------------------------------------------------

--
-- Table structure for table `question_bank_master`
--

DROP TABLE IF EXISTS `question_bank_master`;
CREATE TABLE IF NOT EXISTS `question_bank_master` (
  `qb_id` int(12) NOT NULL AUTO_INCREMENT,
  `qb_name` varchar(100) NOT NULL,
  `sub_id` int(12) NOT NULL,
  `puser` varchar(50) NOT NULL,
  `dt_of_entry` datetime NOT NULL,
  PRIMARY KEY (`qb_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `question_bank_master`
--

INSERT INTO `question_bank_master` (`qb_id`, `qb_name`, `sub_id`, `puser`, `dt_of_entry`) VALUES
(1, 'Java Question Bank 1', 1, 'admin', '2013-09-17 20:26:55'),
(4, 'PHP Question Bank 1', 3, 'admin', '2013-09-18 11:10:54'),
(5, 'BANK-2', 4, 'admin', '2013-09-18 15:13:47'),
(7, 'BANK-3', 6, 'admin', '2013-09-18 15:15:58');

-- --------------------------------------------------------

--
-- Table structure for table `question_bank_questions`
--

DROP TABLE IF EXISTS `question_bank_questions`;
CREATE TABLE IF NOT EXISTS `question_bank_questions` (
  `qb_id` int(12) NOT NULL,
  `question_no` bigint(20) NOT NULL,
  `question_input_type` varchar(10) NOT NULL,
  `img_name` varchar(100) DEFAULT NULL,
  `question_type` char(1) NOT NULL,
  `sub_question_master_no` bigint(20) DEFAULT NULL,
  `right_answer_option` varchar(20) DEFAULT NULL,
  `marks` int(12) DEFAULT NULL,
  `level` varchar(20) NOT NULL,
  `puser` varchar(50) NOT NULL,
  `dt_of_entry` datetime NOT NULL,
  `question` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`question_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question_bank_questions`
--

INSERT INTO `question_bank_questions` (`qb_id`, `question_no`, `question_input_type`, `img_name`, `question_type`, `sub_question_master_no`, `right_answer_option`, `marks`, `level`, `puser`, `dt_of_entry`, `question`) VALUES
(1, 1, 'Text', '', 'D', 0, '', 2, 'Easy', '123', '2013-09-17 20:27:18', 'What is java?'),
(1, 2, 'Text', '', 'D', 0, '', 2, 'Easy', '123', '2013-09-17 20:27:42', 'What is JVM?'),
(1, 3, 'Text', '', 'M', 0, 'A', 1, 'Easy', '123', '2013-09-17 20:29:24', 'JVM means?'),
(1, 4, 'Text', '', 'D', 0, '', 2, 'Easy', '123', '2013-09-17 20:29:56', 'What is OOP??'),
(1, 5, 'Text', '', 'M', 0, 'B', 2, 'Easy', '123', '2013-09-18 00:16:35', 'Who are u?'),
(1, 6, 'Text', '', 'D', 0, '', 2, 'Medium', '123', '2013-09-18 00:17:09', 'What is Computer??'),
(1, 7, 'Text', '', 'M', 0, 'A', 1, 'Hard', '123', '2013-09-18 00:17:40', 'What is it?'),
(7, 8, 'Text', '', 'M', 0, 'C', 5, 'Easy', '123', '2013-09-18 15:20:23', 'WHAT IS OOPS ?'),
(7, 9, 'Text', '', 'D', 0, '', 10, 'Medium', '123', '2013-09-18 15:21:20', 'WHAT IS THE BASIC TECHNOLOGY OF .NET ?');

-- --------------------------------------------------------

--
-- Table structure for table `question_bank_trans_options`
--

DROP TABLE IF EXISTS `question_bank_trans_options`;
CREATE TABLE IF NOT EXISTS `question_bank_trans_options` (
  `qb_id` int(12) NOT NULL,
  `question_no` bigint(20) NOT NULL,
  `option_desc` varchar(200) NOT NULL,
  `option_no` varchar(20) NOT NULL,
  `puser` varchar(50) NOT NULL,
  `dt_of_entry` datetime NOT NULL,
  `auto_no` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`auto_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `question_bank_trans_options`
--

INSERT INTO `question_bank_trans_options` (`qb_id`, `question_no`, `option_desc`, `option_no`, `puser`, `dt_of_entry`, `auto_no`) VALUES
(1, 3, 'Java Virtual Mechine', 'A', '123', '2013-09-17 20:29:24', 1),
(1, 3, 'Java Virtual Mechanism', 'B', '123', '2013-09-17 20:29:24', 2),
(1, 3, 'Java Various Mechne', 'C', '123', '2013-09-17 20:29:24', 3),
(1, 3, 'Java Virtual Mechanics', 'D', '123', '2013-09-17 20:29:24', 4),
(1, 5, 'Robot', 'A', '123', '2013-09-18 00:16:35', 5),
(1, 5, 'Man', 'B', '123', '2013-09-18 00:16:35', 6),
(1, 5, 'Woman', 'C', '123', '2013-09-18 00:16:36', 7),
(1, 5, 'Others', 'D', '123', '2013-09-18 00:16:36', 8),
(1, 7, 'JAVA', 'A', '123', '2013-09-18 00:17:40', 9),
(1, 7, 'PHP', 'B', '123', '2013-09-18 00:17:41', 10),
(1, 7, 'ASP.NET', 'C', '123', '2013-09-18 00:17:41', 11),
(1, 7, 'VB.NET', 'D', '123', '2013-09-18 00:17:41', 12),
(7, 8, 'OPTION 1', 'A', '123', '2013-09-18 15:20:23', 13),
(7, 8, 'OPTION 2', 'B', '123', '2013-09-18 15:20:23', 14),
(7, 8, 'OPTION 3', 'C', '123', '2013-09-18 15:20:23', 15),
(7, 8, 'OPTION 4', 'D', '123', '2013-09-18 15:20:23', 16);

-- --------------------------------------------------------

--
-- Table structure for table `question_set_creation`
--

DROP TABLE IF EXISTS `question_set_creation`;
CREATE TABLE IF NOT EXISTS `question_set_creation` (
  `qset_id` int(12) NOT NULL,
  `qset_name` varchar(200) NOT NULL,
  `total_marks` int(12) NOT NULL,
  `sub_id` int(12) NOT NULL,
  `level` char(1) NOT NULL,
  `puser` varchar(50) NOT NULL,
  `dt_of_entry` datetime NOT NULL,
  `finflag` char(1) NOT NULL DEFAULT 'N',
  PRIMARY KEY (`qset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question_set_creation`
--

INSERT INTO `question_set_creation` (`qset_id`, `qset_name`, `total_marks`, `sub_id`, `level`, `puser`, `dt_of_entry`, `finflag`) VALUES
(1, 'Java Question Set', 10, 1, 'E', '123', '2013-09-17 20:30:43', 'Y'),
(2, 'PHP Question Set 1', 1, 3, 'E', '123', '2013-09-18 00:42:14', 'N'),
(3, '.NET Q-SET 1', 100, 6, 'M', '123', '2013-09-18 15:22:42', 'N'),
(4, '.NET Q-SET 2', 15, 6, 'M', '123', '2013-09-18 15:24:51', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `question_set_creation_trans`
--

DROP TABLE IF EXISTS `question_set_creation_trans`;
CREATE TABLE IF NOT EXISTS `question_set_creation_trans` (
  `qset_id` int(12) NOT NULL,
  `qb_id` int(12) NOT NULL,
  `question_no` int(12) NOT NULL,
  `puser` varchar(50) NOT NULL,
  `dt_of_entry` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question_set_creation_trans`
--

INSERT INTO `question_set_creation_trans` (`qset_id`, `qb_id`, `question_no`, `puser`, `dt_of_entry`) VALUES
(1, 1, 1, '123', '2013-09-18 00:33:20'),
(1, 1, 2, '123', '2013-09-18 00:33:20'),
(1, 1, 3, '123', '2013-09-18 00:33:20'),
(1, 1, 4, '123', '2013-09-18 00:33:20'),
(1, 1, 5, '123', '2013-09-18 00:33:20'),
(1, 1, 7, '123', '2013-09-18 00:33:20'),
(4, 7, 8, '123', '2013-09-18 15:25:07'),
(4, 7, 9, '123', '2013-09-18 15:25:07');

-- --------------------------------------------------------

--
-- Table structure for table `student_exam_result`
--

DROP TABLE IF EXISTS `student_exam_result`;
CREATE TABLE IF NOT EXISTS `student_exam_result` (
  `student_id` varchar(20) NOT NULL,
  `exam_id` int(12) NOT NULL,
  `question_no` bigint(20) NOT NULL,
  `answer` varchar(2000) NOT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `marks` int(12) DEFAULT NULL,
  `puser` varchar(50) NOT NULL,
  `dt_of_entry` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_exam_result`
--

INSERT INTO `student_exam_result` (`student_id`, `exam_id`, `question_no`, `answer`, `remarks`, `marks`, `puser`, `dt_of_entry`) VALUES
('111', 1, 1, 'Answer 1', 'Rem 1', 2, '121', '2013-09-17 20:43:19'),
('111', 1, 2, 'Answer 2', 'Rem 2', 1, '121', '2013-09-17 20:43:19'),
('111', 1, 3, 'A', 'Wrong Answer', 1, '121', '2013-09-17 20:43:19'),
('111', 1, 4, 'Answer 4', 'Rem 4', 0, '121', '2013-09-17 20:43:20'),
('111', 2, 8, 'C', 'Wrong Answer', 5, '121', '2013-09-18 15:30:01'),
('111', 2, 9, 'I DONT KNOW', 'OK', 8, '121', '2013-09-18 15:30:01'),
('111', 3, 1, '', NULL, NULL, '111', '2013-09-18 16:27:38'),
('111', 3, 2, '', NULL, NULL, '111', '2013-09-18 16:27:38'),
('111', 3, 3, 'null', NULL, NULL, '111', '2013-09-18 16:27:38'),
('111', 3, 4, '', NULL, NULL, '111', '2013-09-18 16:27:38'),
('111', 3, 5, 'null', NULL, NULL, '111', '2013-09-18 16:27:38'),
('111', 3, 7, 'null', NULL, NULL, '111', '2013-09-18 16:27:38'),
('111', 4, 1, '', NULL, NULL, '111', '2013-09-18 16:30:32'),
('111', 4, 2, '', NULL, NULL, '111', '2013-09-18 16:30:32'),
('111', 4, 3, 'null', NULL, NULL, '111', '2013-09-18 16:30:32'),
('111', 4, 4, '', NULL, NULL, '111', '2013-09-18 16:30:32'),
('111', 4, 5, 'null', NULL, NULL, '111', '2013-09-18 16:30:32'),
('111', 4, 7, 'null', NULL, NULL, '111', '2013-09-18 16:30:32'),
('111', 3, 1, 'A', NULL, NULL, '111', '2013-09-18 16:59:37'),
('111', 3, 2, 'c', NULL, NULL, '111', '2013-09-18 16:59:37'),
('111', 3, 3, 'null', NULL, NULL, '111', '2013-09-18 16:59:37'),
('111', 3, 4, 'B', NULL, NULL, '111', '2013-09-18 16:59:37'),
('111', 3, 5, 'A', NULL, NULL, '111', '2013-09-18 16:59:37'),
('111', 3, 7, 'B', NULL, NULL, '111', '2013-09-18 16:59:37');

-- --------------------------------------------------------

--
-- Table structure for table `student_registration`
--

DROP TABLE IF EXISTS `student_registration`;
CREATE TABLE IF NOT EXISTS `student_registration` (
  `student_id` varchar(20) NOT NULL,
  `student_nm` varchar(100) NOT NULL,
  `addr` varchar(500) NOT NULL,
  `mobno` varchar(50) NOT NULL,
  `phno` varchar(50) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `guardian_nm` varchar(200) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  `institute` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `nationality` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `puser` varchar(50) NOT NULL,
  `dt_of_entry` datetime NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_registration`
--

INSERT INTO `student_registration` (`student_id`, `student_nm`, `addr`, `mobno`, `phno`, `email`, `guardian_nm`, `qualification`, `institute`, `gender`, `nationality`, `dob`, `puser`, `dt_of_entry`) VALUES
('111', 'Hemkanta Mehra', 'S/O- Balaram Mehra,\r\nVill.- Krishnabati,\r\nP.O- Rampur,\r\nP.S- Tapan,\r\nDist.- Dakshin Dinajpur,\r\nState- West Bengal,\r\nCountry- India,\r\nPin- 733140', '9932441103', '8759526452', 'hemkanta.here@gmail.com', 'Balaram Mehra', 'UG', 'Swami Vivekananda Institute Of Modern Science', 'M', 'Indian', '1991-07-31', '111', '2013-09-18 01:04:32');

-- --------------------------------------------------------

--
-- Table structure for table `student_v_exam`
--

DROP TABLE IF EXISTS `student_v_exam`;
CREATE TABLE IF NOT EXISTS `student_v_exam` (
  `student_id` varchar(20) NOT NULL,
  `exam_id` int(12) NOT NULL,
  `dt_time_of_exam` datetime NOT NULL,
  `exam_sts` char(1) NOT NULL,
  `sub_set_id` int(12) NOT NULL,
  `puser` varchar(50) NOT NULL,
  `dt_of_entry` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_v_exam`
--

INSERT INTO `student_v_exam` (`student_id`, `exam_id`, `dt_time_of_exam`, `exam_sts`, `sub_set_id`, `puser`, `dt_of_entry`) VALUES
('111', 1, '2013-09-17 20:39:04', 'C', 1, '111', '2013-09-17 20:39:04'),
('111', 2, '2013-09-18 15:27:25', 'C', 5, '111', '2013-09-18 15:27:25'),
('111', 3, '2013-09-18 16:59:28', 'C', 7, '111', '2013-09-18 16:59:28');

-- --------------------------------------------------------

--
-- Table structure for table `subject_master`
--

DROP TABLE IF EXISTS `subject_master`;
CREATE TABLE IF NOT EXISTS `subject_master` (
  `sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_name` varchar(100) NOT NULL,
  `puser` varchar(50) NOT NULL,
  `dt_of_entry` datetime NOT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `subject_master`
--

INSERT INTO `subject_master` (`sub_id`, `sub_name`, `puser`, `dt_of_entry`) VALUES
(1, 'Java', 'admin', '2013-09-17 20:26:23'),
(3, 'PHP', 'admin', '2013-09-17 23:45:34'),
(4, 'ASP.Net', 'admin', '2013-09-18 15:11:18'),
(6, 'VB.NET', 'admin', '2013-09-18 15:13:13');

-- --------------------------------------------------------

--
-- Table structure for table `sub_set_master`
--

DROP TABLE IF EXISTS `sub_set_master`;
CREATE TABLE IF NOT EXISTS `sub_set_master` (
  `exam_id` int(12) NOT NULL,
  `sub_set_id` int(12) NOT NULL,
  `sub_set_desc` varchar(20) NOT NULL,
  `puser` varchar(50) NOT NULL,
  `dt_of_entry` datetime NOT NULL,
  PRIMARY KEY (`sub_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sub_set_master`
--

INSERT INTO `sub_set_master` (`exam_id`, `sub_set_id`, `sub_set_desc`, `puser`, `dt_of_entry`) VALUES
(1, 1, 'A', '123', '2013-09-17 20:31:24'),
(1, 2, 'B', '123', '2013-09-17 20:31:24'),
(1, 3, 'C', '123', '2013-09-17 20:31:24'),
(1, 4, 'D', '123', '2013-09-17 20:31:24'),
(2, 5, 'A', '123', '2013-09-18 15:26:27'),
(2, 6, 'B', '123', '2013-09-18 15:26:27'),
(3, 7, 'A', '123', '2013-09-18 16:57:58'),
(3, 8, 'B', '123', '2013-09-18 16:57:58'),
(3, 9, 'C', '123', '2013-09-18 16:57:58');

-- --------------------------------------------------------

--
-- Table structure for table `sub_set_master_order`
--

DROP TABLE IF EXISTS `sub_set_master_order`;
CREATE TABLE IF NOT EXISTS `sub_set_master_order` (
  `sub_set_id` int(12) NOT NULL,
  `question_no` bigint(20) NOT NULL,
  `order_no` bigint(30) NOT NULL AUTO_INCREMENT,
  `puser` varchar(50) NOT NULL,
  `dt_of_entry` datetime NOT NULL,
  PRIMARY KEY (`order_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=181 ;

--
-- Dumping data for table `sub_set_master_order`
--

INSERT INTO `sub_set_master_order` (`sub_set_id`, `question_no`, `order_no`, `puser`, `dt_of_entry`) VALUES
(1, 4, 1, '123', '2013-09-17 20:31:24'),
(1, 2, 2, '123', '2013-09-17 20:31:24'),
(1, 3, 3, '123', '2013-09-17 20:31:24'),
(1, 1, 4, '123', '2013-09-17 20:31:24'),
(2, 2, 8, '123', '2013-09-17 20:31:24'),
(2, 3, 9, '123', '2013-09-17 20:31:24'),
(2, 1, 10, '123', '2013-09-17 20:31:24'),
(2, 4, 11, '123', '2013-09-17 20:31:24'),
(3, 2, 15, '123', '2013-09-17 20:31:24'),
(3, 4, 16, '123', '2013-09-17 20:31:24'),
(3, 3, 17, '123', '2013-09-17 20:31:24'),
(3, 1, 18, '123', '2013-09-17 20:31:24'),
(4, 2, 22, '123', '2013-09-17 20:31:24'),
(4, 1, 23, '123', '2013-09-17 20:31:24'),
(4, 4, 24, '123', '2013-09-17 20:31:24'),
(4, 3, 25, '123', '2013-09-17 20:31:24'),
(5, 8, 120, '123', '2013-09-18 15:26:27'),
(5, 9, 121, '123', '2013-09-18 15:26:27'),
(6, 8, 123, '123', '2013-09-18 15:26:27'),
(6, 9, 124, '123', '2013-09-18 15:26:27'),
(7, 3, 161, '123', '2013-09-18 16:57:58'),
(7, 1, 162, '123', '2013-09-18 16:57:58'),
(7, 4, 163, '123', '2013-09-18 16:57:58'),
(7, 5, 164, '123', '2013-09-18 16:57:58'),
(7, 7, 165, '123', '2013-09-18 16:57:58'),
(7, 2, 166, '123', '2013-09-18 16:57:58'),
(8, 5, 168, '123', '2013-09-18 16:57:58'),
(8, 7, 169, '123', '2013-09-18 16:57:58'),
(8, 3, 170, '123', '2013-09-18 16:57:58'),
(8, 2, 171, '123', '2013-09-18 16:57:58'),
(8, 1, 172, '123', '2013-09-18 16:57:58'),
(8, 4, 173, '123', '2013-09-18 16:57:58'),
(9, 1, 175, '123', '2013-09-18 16:57:58'),
(9, 7, 176, '123', '2013-09-18 16:57:58'),
(9, 5, 177, '123', '2013-09-18 16:57:58'),
(9, 3, 178, '123', '2013-09-18 16:57:58'),
(9, 4, 179, '123', '2013-09-18 16:57:58'),
(9, 2, 180, '123', '2013-09-18 16:57:58');

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

DROP TABLE IF EXISTS `user_master`;
CREATE TABLE IF NOT EXISTS `user_master` (
  `user_id` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `authtype` enum('A','T','S') DEFAULT NULL,
  `sts` enum('A','I') DEFAULT NULL,
  `puser` varchar(50) DEFAULT NULL,
  `dt_of_entry` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`user_id`, `password`, `user_name`, `authtype`, `sts`, `puser`, `dt_of_entry`) VALUES
('111', '111', 'Hemkanta Mehra', 'S', 'A', '111', '2013-09-17 20:38:41'),
('121', '121', 'Hemkanta Mehra', 'T', 'A', 'admin', '2013-09-17 20:40:48'),
('123', '123', 'Hemkanta Mehra', 'A', 'A', 'Admin', '2013-09-17 20:25:34');
