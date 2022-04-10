CREATE TABLE IF NOT EXISTS examdbjava.examination_creation (
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

INSERT INTO examdbjava.examination_creation (`exam_id`, `exam_name`, `duration_in_min`, `sts`, `question_set_no`, `no_of_subset`, `from_date`, `to_date`, `puser`, `dt_of_entry`) VALUES
(1, 'JAVA Exam1', 11, 'A', 35, 5, '2011-11-11', '2012-11-11', '123', '2013-08-31 18:17:23'),
(2, 'JAVA Exam1', 120, 'A', 35, 3, '2013-08-03', '2013-08-03', '123', '2013-09-02 14:03:31'),
(3, 'SQL1', 10, 'A', 35, 5, '2013-07-31', '2013-09-12', '123', '2013-09-04 15:26:31'),
(5, '1min Exam', 1, 'A', 35, 3, '2013-09-09', '2013-09-14', '123', '2013-09-09 17:21:58'),
(6, 'Subject 1 Examination', 20, 'A', 39, 2, '2013-09-16', '2013-09-16', '123', '2013-09-16 16:57:29'),
(7, '111111111111', 1, 'A', 35, 4, '2013-09-09', '2013-09-29', '123', '2013-09-16 17:00:58');

select * from examdbjava.examination_creation;

CREATE TABLE IF NOT EXISTS examdbjava.question_bank_master (
  `qb_id` int(12) NOT NULL AUTO_INCREMENT,
  `qb_name` varchar(100) NOT NULL,
  `sub_id` int(12) NOT NULL,
  `puser` varchar(50) NOT NULL,
  `dt_of_entry` datetime NOT NULL,
  PRIMARY KEY (`qb_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

INSERT INTO examdbjava.question_bank_master (`qb_id`, `qb_name`, `sub_id`, `puser`, `dt_of_entry`) VALUES
(1, 'Bengali QB', 2, 'admin', '2013-07-27 12:15:21'),
(4, '23232', 2, 'admin', '2013-07-27 15:39:01'),
(11, 'VB question Bank', 23, 'admin', '2013-08-10 14:52:53'),
(12, 'PHP1', 5, 'admin', '2013-08-10 15:05:47'),
(14, 'C sharp', 25, 'admin', '2013-08-10 15:22:31'),
(15, 'thyth', 25, 'admin', '2013-08-10 15:22:56'),
(16, 'Physics question Bank', 3, 'admin', '2013-08-10 15:44:41'),
(17, 'Sql1', 26, 'admin', '2013-08-17 15:46:45'),
(18, 'vb1', 29, 'admin', '2013-08-17 15:46:53'),
(19, 'Bengali', 30, 'admin', '2013-08-17 15:47:00'),
(20, 'Grammer', 31, 'admin', '2013-08-19 17:19:31'),
(21, 'Java1', 32, 'admin', '2013-08-26 16:08:21'),
(22, 'Java2', 32, 'admin', '2013-08-26 16:08:45'),
(23, 'Subject 1 Question Bank', 33, 'admin', '2013-09-16 16:51:46');

select * from examdbjava.question_bank_master;

CREATE TABLE IF NOT EXISTS examdbjava.question_bank_questions (
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

INSERT INTO examdbjava.question_bank_questions (`qb_id`, `question_no`, `question_input_type`, `img_name`, `question_type`, `sub_question_master_no`, `right_answer_option`, `marks`, `level`, `puser`, `dt_of_entry`, `question`) VALUES
(1, 1, 'Text', '', 'D', 0, '', 2, 'Mediam', '123', '2013-08-05 16:50:46', 'What is Abstact Class in JAVA ?'),
(2, 2, 'Text', '', 'D', 0, '----Select----', 2, 'Mediam', '123', '2013-08-05 16:52:20', 'What is Interface ?'),
(2, 3, 'Text', '', 'M', 0, 'A', 1, 'Easy', '123', '2013-08-05 16:53:59', 'What is full name of JVM ?'),
(2, 4, 'Text', '', 'M', 0, 'B', 2, 'Easy', '123', '2013-08-05 18:21:01', 'What is Abstact Class in JAVA ?'),
(9, 5, 'Text', '', 'M', 0, 'C', 1, 'Medium', '123', '2013-08-05 18:35:15', 'What is it?'),
(11, 6, 'Text', '', 'D', 0, '', 2, 'Easy', '111', '2013-08-10 14:54:00', 'Define VB.'),
(1, 7, 'Text', '', 'M', 0, 'A', 2, 'Easy', '111', '2013-08-10 15:03:30', 'What is Abstact Class in JAVA ?'),
(1, 8, 'Text', '', 'D', 0, '', 10, 'Easy', '111', '2013-08-10 15:25:21', 'Main kya karu??'),
(1, 9, 'Text', '', 'D', 0, '', 12, 'Easy', '123', '2013-08-12 16:42:46', 'ds'),
(12, 10, 'Text', '', 'D', 0, '', 12, 'Easy', '123', '2013-08-12 16:44:40', 'aaa'),
(1, 11, 'Text', '', 'M', 0, 'C', 10, 'Medium', '123', '2013-08-17 14:14:23', 'what is ddddd'),
(20, 13, 'Text', '', 'M', 0, 'B', 2, 'Easy', '123', '2013-08-19 17:21:13', 'How many parts of speech are there?'),
(20, 14, 'Text', '', 'D', 0, '', 3, 'Medium', '123', '2013-08-19 17:22:36', 'What is noun?'),
(17, 15, 'Text', '', 'D', 0, '', 1, 'Medium', '123', '2013-09-04 15:25:23', 'wwwwwwwwwww'),
(12, 16, 'Text', '', 'D', 0, '', 2, 'Easy', '123', '2013-09-04 16:53:09', 'What is PHP ?'),
(23, 17, 'Text', '', 'D', 0, '', 2, 'Medium', '123', '2013-09-16 16:52:39', 'What is Bengali Grammer??');

select * from examdbjava.question_bank_questions;

CREATE TABLE IF NOT EXISTS examdbjava.question_bank_trans_options (
  `qb_id` int(12) NOT NULL,
  `question_no` bigint(20) NOT NULL,
  `option_desc` varchar(200) NOT NULL,
  `option_no` varchar(20) NOT NULL,
  `puser` varchar(50) NOT NULL,
  `dt_of_entry` datetime NOT NULL,
  `auto_no` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`auto_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;


INSERT INTO examdbjava.question_bank_trans_options (`qb_id`, `question_no`, `option_desc`, `option_no`, `puser`, `dt_of_entry`, `auto_no`) VALUES
(2, 3, 'Java Virtual Machine', 'A', '123', '2013-08-05 16:53:59', 1),
(2, 3, 'Java Vital Machine', 'B', '123', '2013-08-05 16:53:59', 2),
(2, 3, 'Java Virtual Mechanism', 'C', '123', '2013-08-05 16:53:59', 3),
(2, 3, 'None of Above', 'D', '123', '2013-08-05 16:53:59', 4),
(2, 4, 'a', 'A', '123', '2013-08-05 18:21:01', 5),
(2, 4, 'b', 'B', '123', '2013-08-05 18:21:01', 6),
(2, 4, 'c', 'C', '123', '2013-08-05 18:21:01', 7),
(2, 4, 'd', 'D', '123', '2013-08-05 18:21:01', 8),
(9, 5, 'aa', 'A', '123', '2013-08-05 18:35:15', 9),
(9, 5, 'bb', 'B', '123', '2013-08-05 18:35:15', 10),
(9, 5, 'cc', 'C', '123', '2013-08-05 18:35:15', 11),
(9, 5, 'dd', 'D', '123', '2013-08-05 18:35:15', 12),
(1, 7, 'GUI', 'A', '111', '2013-08-10 15:03:30', 13),
(1, 7, 'bb', 'B', '111', '2013-08-10 15:03:30', 14),
(1, 7, 'MUI', 'C', '111', '2013-08-10 15:03:30', 15),
(1, 7, 'RUI', 'D', '111', '2013-08-10 15:03:30', 16),
(1, 11, 'Option 1', 'A', '123', '2013-08-17 14:14:23', 17),
(1, 11, 'Option 2', 'B', '123', '2013-08-17 14:14:23', 18),
(1, 11, 'Option 3', 'C', '123', '2013-08-17 14:14:23', 19),
(1, 11, 'Option 4', 'D', '123', '2013-08-17 14:14:23', 20),
(20, 13, '7', 'A', '123', '2013-08-19 17:21:14', 21),
(20, 13, '8', 'B', '123', '2013-08-19 17:21:14', 22),
(20, 13, '2', 'C', '123', '2013-08-19 17:21:14', 23),
(20, 13, '9', 'D', '123', '2013-08-19 17:21:14', 24);

select * from examdbjava.question_bank_trans_options;

CREATE TABLE IF NOT EXISTS examdbjava.question_set_creation (
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

INSERT INTO examdbjava.question_set_creation (`qset_id`, `qset_name`, `total_marks`, `sub_id`, `level`, `puser`, `dt_of_entry`, `finflag`) VALUES
(30, 'xyz', 11, 26, 'E', '123', '2013-08-17 15:55:26', 'Y'),
(35, 'Articles', 20, 31, 'E', '123', '2013-08-19 17:27:38', 'Y'),
(36, 'Prepositions ', 25, 31, 'M', '123', '2013-08-19 17:31:15', 'N'),
(37, 'QS1`', 10, 26, 'M', '123', '2013-09-02 14:04:34', 'Y'),
(38, 'sql1', 10, 26, 'E', '123', '2013-09-04 15:28:19', 'Y'),
(39, 'Subject 1 Questiopn Set', 12, 33, 'M', '123', '2013-09-16 16:54:29', 'Y');

select * from examdbjava.question_set_creation;

CREATE TABLE IF NOT EXISTS examdbjava.question_set_creation_trans (
  `qset_id` int(12) NOT NULL,
  `qb_id` int(12) NOT NULL,
  `question_no` int(12) NOT NULL,
  `puser` varchar(50) NOT NULL,
  `dt_of_entry` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO examdbjava.question_set_creation_trans (`qset_id`, `qb_id`, `question_no`, `puser`, `dt_of_entry`) VALUES
(35, 1, 7, '123', '2013-08-26 18:29:23'),
(35, 1, 8, '123', '2013-08-26 18:29:23'),
(35, 1, 9, '123', '2013-08-26 18:29:23'),
(37, 1, 1, '123', '2013-09-02 14:04:59'),
(37, 1, 7, '123', '2013-09-02 14:04:59'),
(37, 1, 8, '123', '2013-09-02 14:04:59'),
(38, 1, 1, '123', '2013-09-04 15:28:38'),
(38, 1, 8, '123', '2013-09-04 15:28:38'),
(38, 1, 11, '123', '2013-09-04 15:28:38'),
(38, 1, 12, '123', '2013-09-04 15:28:38'),
(30, 1, 1, '123', '2013-09-12 17:01:42'),
(30, 1, 7, '123', '2013-09-12 17:01:42'),
(30, 1, 8, '123', '2013-09-12 17:01:42'),
(30, 1, 9, '123', '2013-09-12 17:01:42'),
(30, 1, 11, '123', '2013-09-12 17:01:42'),
(39, 23, 17, '123', '2013-09-16 16:55:26');

CREATE TABLE IF NOT EXISTS examdbjava.student_exam_result (
  `student_id` varchar(20) NOT NULL,
  `exam_id` int(12) NOT NULL,
  `question_no` bigint(20) NOT NULL,
  `answer` varchar(2000) NOT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `marks` int(12) DEFAULT NULL,
  `puser` varchar(50) NOT NULL,
  `dt_of_entry` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO examdbjava.student_exam_result  (`student_id`, `exam_id`, `question_no`, `answer`, `remarks`, `marks`, `puser`, `dt_of_entry`) VALUES
('121', 5, 7, 'D', 'Wrong Answer', 0, '111', '2013-09-16 17:07:47'),
('121', 5, 4, 'Answer for Question 2. Main kya karu??', 'Wrong Answer', 0, '111', '2013-09-16 16:11:32'),
('121', 5, 9, 'Answer for Question 1. ds', 'Remarks 2', 3, '111', '2013-09-16 17:07:47'),
('121', 1, 7, 'null', 'Wrong Answer', 0, '111', '2013-09-16 17:07:47'),
('121', 1, 8, '', 'Remarks 1', 4, '111', '2013-09-16 17:07:47'),
('121', 1, 9, '', 'Remarks 2', 3, '111', '2013-09-16 17:07:47'),
('121', 7, 7, 'D', 'Wrong Answer', 0, '111', '2013-09-16 17:07:47'),
('121', 7, 8, 'Answer 1', 'Remarks 1', 4, '111', '2013-09-16 17:07:47'),
('121', 7, 9, 'Answer 2', 'Remarks 2', 3, '111', '2013-09-16 17:07:47');


CREATE TABLE IF NOT EXISTS examdbjava.student_registration (
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

INSERT INTO examdbjava.student_registration (`student_id`, `student_nm`, `addr`, `mobno`, `phno`, `email`, `guardian_nm`, `qualification`, `institute`, `gender`, `nationality`, `dob`, `puser`, `dt_of_entry`) VALUES
('we', 'w3ewe', 'This', '12345', '12345', 'we@ww.mm', 'AAAAAAAAA', 'Masters', 'SVIMS', 'F', 'SVIMS', '2012-09-12', 'we', '2013-09-03 15:32:03'),
('121', 'Hemkanta Mehra', 'Sonarpur\r\nKolkata-150', '9932441103', '8759526452', 'hmehra141@gmail.com', 'Balaram Mehra', 'Graduate', 'SVIMS', 'M', 'Indian', '1991-07-31', '121', '2013-09-06 13:13:56');

CREATE TABLE IF NOT EXISTS examdbjava.student_v_exam (
  `student_id` varchar(20) NOT NULL,
  `exam_id` int(12) NOT NULL,
  `dt_time_of_exam` datetime NOT NULL,
  `exam_sts` char(1) NOT NULL,
  `sub_set_id` int(12) NOT NULL,
  `puser` varchar(50) NOT NULL,
  `dt_of_entry` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO examdbjava.student_v_exam (`student_id`, `exam_id`, `dt_time_of_exam`, `exam_sts`, `sub_set_id`, `puser`, `dt_of_entry`) VALUES
('121', 5, '2013-09-11 16:08:10', 'C', 29, '121', '2013-09-11 16:08:10'),
('121', 3, '2013-09-14 15:33:19', 'C', 19, '121', '2013-09-14 15:33:19'),
('121', 4, '2013-09-16 12:20:20', 'C', 25, '121', '2013-09-16 12:20:20'),
('121', 1, '2013-09-16 12:40:10', 'C', 4, '121', '2013-09-16 12:40:10'),
('121', 6, '2013-09-16 17:00:09', 'C', 30, '121', '2013-09-16 17:00:09'),
('121', 7, '2013-09-16 17:01:39', 'R', 35, '121', '2013-09-16 17:01:39');

CREATE TABLE IF NOT EXISTS examdbjava.subject_master (
  `sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_name` varchar(100) NOT NULL,
  `puser` varchar(50) NOT NULL,
  `dt_of_entry` datetime NOT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

INSERT INTO examdbjava.subject_master (`sub_id`, `sub_name`, `puser`, `dt_of_entry`) VALUES
(29, 'VB.Net', 'admin', '2013-08-17 15:46:13'),
(30, 'Bengali', 'admin', '2013-08-17 15:46:28'),
(31, 'English', 'admin', '2013-08-19 17:18:43'),
(32, 'JAVA', 'admin', '2013-08-26 16:08:04'),
(33, 'Subject 1', 'admin', '2013-09-16 16:50:54');

CREATE TABLE IF NOT EXISTS examdbjava.sub_set_master (
  `exam_id` int(12) NOT NULL,
  `sub_set_id` int(12) NOT NULL,
  `sub_set_desc` varchar(20) NOT NULL,
  `puser` varchar(50) NOT NULL,
  `dt_of_entry` datetime NOT NULL,
  PRIMARY KEY (`sub_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO examdbjava.sub_set_master (`exam_id`, `sub_set_id`, `sub_set_desc`, `puser`, `dt_of_entry`) VALUES
(1, 1, 'A', '123', '2013-08-31 17:14:14'),
(1, 2, 'B', '123', '2013-08-31 17:14:14'),
(1, 3, 'C', '123', '2013-08-31 17:14:14'),
(1, 4, 'D', '123', '2013-08-31 17:14:14'),
(1, 5, 'E', '123', '2013-08-31 17:14:14'),
(1, 6, 'F', '123', '2013-08-31 17:14:14'),
(1, 7, 'G', '123', '2013-08-31 17:14:14'),
(1, 8, 'H', '123', '2013-08-31 17:14:14'),
(1, 9, 'I', '123', '2013-08-31 17:14:14'),
(1, 10, 'J', '123', '2013-08-31 17:14:14'),
(1, 11, 'A', '123', '2013-08-31 18:17:23'),
(1, 12, 'B', '123', '2013-08-31 18:17:23'),
(1, 13, 'C', '123', '2013-08-31 18:17:23'),
(1, 14, 'D', '123', '2013-08-31 18:17:23'),
(1, 15, 'E', '123', '2013-08-31 18:17:23'),
(2, 16, 'A', '123', '2013-09-02 14:03:31'),
(2, 17, 'B', '123', '2013-09-02 14:03:31'),
(2, 18, 'C', '123', '2013-09-02 14:03:31'),
(3, 19, 'A', '123', '2013-09-04 15:26:31'),
(3, 20, 'B', '123', '2013-09-04 15:26:32'),
(3, 21, 'C', '123', '2013-09-04 15:26:32'),
(3, 22, 'D', '123', '2013-09-04 15:26:32'),
(3, 23, 'E', '123', '2013-09-04 15:26:32'),
(4, 24, 'A', '123', '2013-09-04 15:28:54'),
(4, 25, 'B', '123', '2013-09-04 15:28:54'),
(4, 26, 'C', '123', '2013-09-04 15:28:55'),
(5, 27, 'A', '123', '2013-09-09 17:21:58'),
(5, 28, 'B', '123', '2013-09-09 17:21:58'),
(5, 29, 'C', '123', '2013-09-09 17:21:58'),
(6, 30, 'A', '123', '2013-09-16 16:57:29'),
(6, 31, 'B', '123', '2013-09-16 16:57:29'),
(7, 32, 'A', '123', '2013-09-16 17:00:58'),
(7, 33, 'B', '123', '2013-09-16 17:00:58'),
(7, 34, 'C', '123', '2013-09-16 17:00:58'),
(7, 35, 'D', '123', '2013-09-16 17:00:58');


CREATE TABLE IF NOT EXISTS examdbjava.sub_set_master_order (
  `sub_set_id` int(12) NOT NULL,
  `question_no` bigint(20) NOT NULL,
  `order_no` bigint(30) NOT NULL AUTO_INCREMENT,
  `puser` varchar(50) NOT NULL,
  `dt_of_entry` datetime NOT NULL,
  PRIMARY KEY (`order_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=111 ;

INSERT INTO examdbjava.sub_set_master_order (`sub_set_id`, `question_no`, `order_no`, `puser`, `dt_of_entry`) VALUES
(1, 8, 1, '123', '2013-08-31 17:14:14'),
(1, 9, 2, '123', '2013-08-31 17:14:14'),
(1, 7, 3, '123', '2013-08-31 17:14:14'),
(2, 7, 4, '123', '2013-08-31 17:14:14'),
(2, 9, 5, '123', '2013-08-31 17:14:14'),
(2, 8, 6, '123', '2013-08-31 17:14:14'),
(3, 8, 7, '123', '2013-08-31 17:14:14'),
(3, 7, 8, '123', '2013-08-31 17:14:14'),
(3, 9, 9, '123', '2013-08-31 17:14:14'),
(4, 7, 10, '123', '2013-08-31 17:14:14'),
(4, 9, 11, '123', '2013-08-31 17:14:14'),
(4, 8, 12, '123', '2013-08-31 17:14:14'),
(5, 9, 13, '123', '2013-08-31 17:14:14'),
(5, 7, 14, '123', '2013-08-31 17:14:14'),
(5, 8, 15, '123', '2013-08-31 17:14:14'),
(6, 8, 16, '123', '2013-08-31 17:14:14'),
(6, 7, 17, '123', '2013-08-31 17:14:14'),
(6, 9, 18, '123', '2013-08-31 17:14:14'),
(7, 8, 19, '123', '2013-08-31 17:14:14'),
(7, 9, 20, '123', '2013-08-31 17:14:14'),
(7, 7, 21, '123', '2013-08-31 17:14:14'),
(8, 7, 22, '123', '2013-08-31 17:14:14'),
(8, 9, 23, '123', '2013-08-31 17:14:14'),
(8, 8, 24, '123', '2013-08-31 17:14:14'),
(9, 7, 25, '123', '2013-08-31 17:14:14'),
(9, 9, 26, '123', '2013-08-31 17:14:14'),
(9, 8, 27, '123', '2013-08-31 17:14:14'),
(10, 9, 28, '123', '2013-08-31 17:14:14'),
(10, 8, 29, '123', '2013-08-31 17:14:14'),
(10, 7, 30, '123', '2013-08-31 17:14:14'),
(11, 9, 31, '123', '2013-08-31 18:17:23'),
(11, 8, 32, '123', '2013-08-31 18:17:23'),
(11, 7, 33, '123', '2013-08-31 18:17:23'),
(12, 7, 34, '123', '2013-08-31 18:17:23'),
(12, 9, 35, '123', '2013-08-31 18:17:23'),
(12, 8, 36, '123', '2013-08-31 18:17:23'),
(13, 7, 37, '123', '2013-08-31 18:17:23'),
(13, 8, 38, '123', '2013-08-31 18:17:23'),
(13, 9, 39, '123', '2013-08-31 18:17:23'),
(14, 9, 40, '123', '2013-08-31 18:17:23'),
(14, 7, 41, '123', '2013-08-31 18:17:23'),
(14, 8, 42, '123', '2013-08-31 18:17:23'),
(15, 9, 43, '123', '2013-08-31 18:17:23'),
(15, 7, 44, '123', '2013-08-31 18:17:23'),
(15, 8, 45, '123', '2013-08-31 18:17:23'),
(16, 7, 46, '123', '2013-09-02 14:03:31'),
(16, 8, 47, '123', '2013-09-02 14:03:31'),
(16, 9, 48, '123', '2013-09-02 14:03:31'),
(17, 8, 49, '123', '2013-09-02 14:03:31'),
(17, 7, 50, '123', '2013-09-02 14:03:31'),
(17, 9, 51, '123', '2013-09-02 14:03:31'),
(18, 9, 52, '123', '2013-09-02 14:03:31'),
(18, 8, 53, '123', '2013-09-02 14:03:31'),
(18, 7, 54, '123', '2013-09-02 14:03:31'),
(19, 9, 55, '123', '2013-09-04 15:26:32'),
(19, 7, 56, '123', '2013-09-04 15:26:32'),
(19, 8, 57, '123', '2013-09-04 15:26:32'),
(20, 8, 58, '123', '2013-09-04 15:26:32'),
(20, 7, 59, '123', '2013-09-04 15:26:32'),
(20, 9, 60, '123', '2013-09-04 15:26:32'),
(21, 9, 61, '123', '2013-09-04 15:26:32'),
(21, 7, 62, '123', '2013-09-04 15:26:32'),
(21, 8, 63, '123', '2013-09-04 15:26:32'),
(22, 9, 64, '123', '2013-09-04 15:26:32'),
(22, 7, 65, '123', '2013-09-04 15:26:32'),
(22, 8, 66, '123', '2013-09-04 15:26:32'),
(23, 7, 67, '123', '2013-09-04 15:26:32'),
(23, 8, 68, '123', '2013-09-04 15:26:32'),
(23, 9, 69, '123', '2013-09-04 15:26:32'),
(24, 8, 70, '123', '2013-09-04 15:28:54'),
(24, 11, 71, '123', '2013-09-04 15:28:54'),
(24, 12, 72, '123', '2013-09-04 15:28:54'),
(24, 1, 73, '123', '2013-09-04 15:28:54'),
(25, 8, 77, '123', '2013-09-04 15:28:54'),
(25, 12, 78, '123', '2013-09-04 15:28:54'),
(25, 1, 79, '123', '2013-09-04 15:28:54'),
(25, 11, 80, '123', '2013-09-04 15:28:54'),
(26, 11, 84, '123', '2013-09-04 15:28:55'),
(26, 12, 85, '123', '2013-09-04 15:28:55'),
(26, 8, 86, '123', '2013-09-04 15:28:55'),
(26, 1, 87, '123', '2013-09-04 15:28:55'),
(27, 7, 88, '123', '2013-09-09 17:21:58'),
(27, 9, 89, '123', '2013-09-09 17:21:58'),
(27, 8, 90, '123', '2013-09-09 17:21:58'),
(28, 9, 91, '123', '2013-09-09 17:21:58'),
(28, 8, 92, '123', '2013-09-09 17:21:58'),
(28, 7, 93, '123', '2013-09-09 17:21:58'),
(29, 9, 94, '123', '2013-09-09 17:21:58'),
(29, 8, 95, '123', '2013-09-09 17:21:58'),
(29, 7, 96, '123', '2013-09-09 17:21:58'),
(30, 17, 97, '123', '2013-09-16 16:57:29'),
(31, 17, 98, '123', '2013-09-16 16:57:29'),
(32, 7, 99, '123', '2013-09-16 17:00:58'),
(32, 9, 100, '123', '2013-09-16 17:00:58'),
(32, 8, 101, '123', '2013-09-16 17:00:58'),
(33, 9, 102, '123', '2013-09-16 17:00:58'),
(33, 8, 103, '123', '2013-09-16 17:00:58'),
(33, 7, 104, '123', '2013-09-16 17:00:58'),
(34, 7, 105, '123', '2013-09-16 17:00:58'),
(34, 9, 106, '123', '2013-09-16 17:00:58'),
(34, 8, 107, '123', '2013-09-16 17:00:58'),
(35, 7, 108, '123', '2013-09-16 17:00:58'),
(35, 8, 109, '123', '2013-09-16 17:00:58'),
(35, 9, 110, '123', '2013-09-16 17:00:58');


CREATE TABLE IF NOT EXISTS examdbjava.user_master (
  `user_id` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `authtype` enum('A','T','S') DEFAULT NULL,
  `sts` enum('A','I') DEFAULT NULL,
  `puser` varchar(50) DEFAULT NULL,
  `dt_of_entry` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO examdbjava.user_master (`user_id`, `password`, `user_name`, `authtype`, `sts`, `puser`, `dt_of_entry`) VALUES
('+', '+', '\0', 'S', 'I', '\0', '2013-10-04 17:42:37'),
('11', '11', 'Inactive Account', 'A', 'I', '123', '2013-09-06 12:25:06'),
('111', '111', 'Soumi Mandal', 'T', 'A', 'admin', '2013-08-26 14:53:48'),
('121', '121', 'Hemkanta Mehra', 'S', 'A', '121', '2013-09-04 11:09:47'),
('123', '123', 'Hemkanta', 'A', 'A', '123', '2013-09-06 13:21:41'),
('we', '123', 'w3ewe', 'S', 'A', 'we', '2013-09-03 15:45:41');