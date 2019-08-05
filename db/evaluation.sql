-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2018 at 08:16 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evaluation`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `adminid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `adminid`, `password`) VALUES
(1, 'admin1', '147');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `courseid` varchar(50) DEFAULT NULL,
  `deptcode` varchar(50) DEFAULT NULL,
  `coursetitle` varchar(50) DEFAULT NULL,
  `coursecredit` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `courseid`, `deptcode`, `coursetitle`, `coursecredit`) VALUES
(1, 'CSE-429', 'cse', 'database', '3'),
(2, 'CSE-430', 'cse', 'fundamental', '2'),
(3, 'CSE-431', 'cse', 'java', '3'),
(4, 'CSE-432', 'cse', 'algorithem', '3'),
(5, 'CSE-555', 'cse', 'datastructure', '2');

-- --------------------------------------------------------

--
-- Table structure for table `coursestudent`
--

CREATE TABLE `coursestudent` (
  `id` int(11) NOT NULL,
  `deptid` varchar(50) DEFAULT NULL,
  `courseid` varchar(50) DEFAULT NULL,
  `studentid` varchar(50) DEFAULT NULL,
  `year` varchar(50) DEFAULT NULL,
  `semester` varchar(50) DEFAULT NULL,
  `evaluatedstatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coursestudent`
--

INSERT INTO `coursestudent` (`id`, `deptid`, `courseid`, `studentid`, `year`, `semester`, `evaluatedstatus`) VALUES
(1, '1', 'CSE-111', 'UG02-33-15-033', '1', '1', NULL),
(2, NULL, 'cse-222', 'UG02-27-11-027', '2018', 'spring', NULL),
(3, NULL, 'cse-101', 'UG02-27-11-045', '2018', 'fall', NULL),
(4, NULL, 'cse-101', 'UG02-38-15-051', '2018', 'spring', NULL);

-- --------------------------------------------------------

--
-- Table structure for table  courseteacher
--

CREATE TABLE ` courseteacher` (
  `id` int(11) NOT NULL,
  `deptid` varchar(50) DEFAULT NULL,
  `courseid` varchar(50) DEFAULT NULL,
  `teacherid` varchar(50) DEFAULT NULL,
  `year` varchar(50) DEFAULT NULL,
  `semester` varchar(50) DEFAULT NULL,
  `evaluatedstatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table  courseteacher
--

INSERT INTO ` courseteacher` (`id`, `deptid`, `courseid`, `teacherid`, `year`, `semester`, `evaluatedstatus`) VALUES
(1, '1', 'cse-321', '123456', '1', '1', NULL),
(2, '1', 'cse322', '1478963', '1', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `deptcode` varchar(50) DEFAULT NULL,
  `deptname` varchar(50) DEFAULT NULL,
  `stuid` int(11) DEFAULT NULL,
  `coid` int(11) DEFAULT NULL,
  `teid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `deptcode`, `deptname`, `stuid`, `coid`, `teid`) VALUES
(2, 'cse', 'computer', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `questiontable`
--

CREATE TABLE `questiontable` (
  `id` int(11) NOT NULL,
  `questionid` varchar(50) DEFAULT NULL,
  `questiondescrip` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `studentid` varchar(50) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `studentname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `deptcode` varchar(50) DEFAULT NULL,
  `studentstatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `studentid`, `password`, `studentname`, `email`, `deptcode`, `studentstatus`) VALUES
(1, 'UG02-38-15-01', '123456', 'mamun', 'mamun.svae@gmail.com', 'cse', NULL),
(2, 'UG02-38-15-02', '123456', 'shworon', 'showron.friend@gmail.com', 'cse', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `survay`
--

CREATE TABLE `survay` (
  `id` int(11) NOT NULL,
  `deptid` varchar(50) DEFAULT NULL,
  `courseid` varchar(50) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `semester` varchar(50) DEFAULT NULL,
  `studentid` varchar(50) DEFAULT NULL,
  `questionid` varchar(50) DEFAULT NULL,
  `questionansid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `teacherid` varchar(50) DEFAULT NULL,
  `passsword` varchar(60) DEFAULT NULL,
  `teachername` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `deptcode` varchar(50) DEFAULT NULL,
  `teacherstatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `teacherid`, `passsword`, `teachername`, `email`, `deptcode`, `teacherstatus`) VALUES
(1, '11111', '654123', 'rahim', 'rahim@gmail.com', 'cse', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `yearsemester`
--

CREATE TABLE `yearsemester` (
  `id` int(11) NOT NULL,
  `year` int(4) DEFAULT NULL,
  `semester` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `yearsemester`
--

INSERT INTO `yearsemester` (`id`, `year`, `semester`) VALUES
(1, 2018, 'spring');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coursestudent`
--
ALTER TABLE `coursestudent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table ` courseteacher`
--
ALTER TABLE ` courseteacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_student_id_fk` (`stuid`),
  ADD KEY `department_course_id_fk` (`coid`),
  ADD KEY `department_teacher_id_fk` (`teid`);

--
-- Indexes for table `questiontable`
--
ALTER TABLE `questiontable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survay`
--
ALTER TABLE `survay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yearsemester`
--
ALTER TABLE `yearsemester`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `coursestudent`
--
ALTER TABLE `coursestudent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table ` courseteacher`
--
ALTER TABLE ` courseteacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `questiontable`
--
ALTER TABLE `questiontable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `survay`
--
ALTER TABLE `survay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `yearsemester`
--
ALTER TABLE `yearsemester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_course_id_fk` FOREIGN KEY (`coid`) REFERENCES `course` (`id`),
  ADD CONSTRAINT `department_student_id_fk` FOREIGN KEY (`stuid`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `department_teacher_id_fk` FOREIGN KEY (`teid`) REFERENCES `teacher` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
