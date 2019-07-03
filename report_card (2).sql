-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2019 at 11:50 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `report_card`
--

-- --------------------------------------------------------

--
-- Table structure for table `activitiesresult_table`
--

CREATE TABLE `activitiesresult_table` (
  `arid` int(11) NOT NULL,
  `adate` date NOT NULL,
  `atvid` int(11) NOT NULL,
  `gcid` int(11) NOT NULL,
  `aresult` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activitiesresult_table`
--

INSERT INTO `activitiesresult_table` (`arid`, `adate`, `atvid`, `gcid`, `aresult`) VALUES
(1, '2019-06-05', 1, 1, 'A+'),
(2, '2019-06-05', 2, 3, 'B');

-- --------------------------------------------------------

--
-- Table structure for table `activities_table`
--

CREATE TABLE `activities_table` (
  `atvid` int(11) NOT NULL,
  `atvname` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activities_table`
--

INSERT INTO `activities_table` (`atvid`, `atvname`, `description`) VALUES
(1, 'Day of planning tree', 'Fire God, Night God, Flower God, Water God\r\nLove you Luo Leo'),
(2, 'World Envrionment Day', 'World Environment Day, We protect the world');

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE `admin_table` (
  `AdID` int(11) NOT NULL,
  `Adname` varchar(30) NOT NULL,
  `Adphoneno` varchar(15) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `DOB` date NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`AdID`, `Adname`, `Adphoneno`, `Email`, `DOB`, `Address`, `Password`) VALUES
(2, 'Daw Htoo Yamone Zin', '09256188276', 'yzh2019@gmail.com', '2001-09-06', 'Nay Pyi Taw', 'yzh2019'),
(3, 'Daw Yamone Zin Htoo', '09256188233', 'htoo@gamil.com', '1999-09-06', 'Mandalay', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_table`
--

CREATE TABLE `attendance_table` (
  `Atid` int(11) NOT NULL,
  `attendancestatus` varchar(50) NOT NULL,
  `remark` varchar(20) NOT NULL,
  `Tid` int(11) NOT NULL,
  `Sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance_table`
--

INSERT INTO `attendance_table` (`Atid`, `attendancestatus`, `remark`, `Tid`, `Sid`) VALUES
(5, 'trrrrrr', '2019-05-10', 2, 7),
(6, 'over 75%', '90', 2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `examresult_table`
--

CREATE TABLE `examresult_table` (
  `ERID` int(11) NOT NULL,
  `resultmark` varchar(20) NOT NULL,
  `Tid` int(11) NOT NULL,
  `Sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `examresult_table`
--

INSERT INTO `examresult_table` (`ERID`, `resultmark`, `Tid`, `Sid`) VALUES
(3, '70', 2, 1),
(4, '90', 2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `examtype_table`
--

CREATE TABLE `examtype_table` (
  `examid` int(11) NOT NULL,
  `examname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `examtype_table`
--

INSERT INTO `examtype_table` (`examid`, `examname`) VALUES
(2, 'Exam 1'),
(3, 'Monthly Test 2');

-- --------------------------------------------------------

--
-- Table structure for table `gradeclass_table`
--

CREATE TABLE `gradeclass_table` (
  `gcid` int(11) NOT NULL,
  `date` date NOT NULL,
  `gid` int(11) NOT NULL,
  `Sid` int(11) NOT NULL,
  `Sphoto` varchar(200) NOT NULL,
  `romname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gradeclass_table`
--

INSERT INTO `gradeclass_table` (`gcid`, `date`, `gid`, `Sid`, `Sphoto`, `romname`) VALUES
(1, '2019-05-09', 5, 7, 'FB_IMG_1526476520600.jpg', 'A'),
(2, '2019-05-17', 1, 6, 'FB_IMG_1526528638119.jpg', 'B'),
(3, '2019-06-10', 9, 8, 'FB_IMG_1530438193323.jpg', 'Rose');

-- --------------------------------------------------------

--
-- Table structure for table `grade_table`
--

CREATE TABLE `grade_table` (
  `gid` int(11) NOT NULL,
  `gname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grade_table`
--

INSERT INTO `grade_table` (`gid`, `gname`) VALUES
(1, 'Grade 1'),
(2, 'Grade 2'),
(3, 'Grade 3'),
(4, 'Grade 4'),
(5, 'Grade 5'),
(6, 'Grade 6'),
(7, 'Grade 7'),
(8, 'Grade 8'),
(9, 'Grade 9'),
(10, 'Grade 10'),
(11, 'Grade 11'),
(12, 'Grade 9');

-- --------------------------------------------------------

--
-- Table structure for table `parent_table`
--

CREATE TABLE `parent_table` (
  `PID` int(11) NOT NULL,
  `pname` varchar(30) NOT NULL,
  `RS` varchar(20) NOT NULL,
  `Fathername` varchar(50) NOT NULL,
  `Mothername` varchar(50) NOT NULL,
  `NRC` varchar(30) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `phoneno` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parent_table`
--

INSERT INTO `parent_table` (`PID`, `pname`, `RS`, `Fathername`, `Mothername`, `NRC`, `gender`, `email`, `password`, `phoneno`, `address`) VALUES
(2, 'Daw Wah Wah Aung', 'Aunty', 'U Yun Yi', 'Daw Jin Mi', '8/pakhaka(N)425789', 'Female', 'wah2019@gmail.com', 'wah2019', '09450199266', 'Yangon'),
(3, 'U Chigo', 'Parent', 'U Chigo', 'Daw Aye Aye', '8/nakhaka(N)425789', 'Male', 'chigo2019@gmail.com', 'chigo2019', '09450199262', 'Mandalay'),
(4, 'Daw Chi Chi', 'Parent', 'U Nay Ko', 'Daw Chi Chi', '8/makhaka(N)425785', 'Female', 'chi2019@gmail.com', 'chi123', '09450199326', 'Yangon');

-- --------------------------------------------------------

--
-- Table structure for table `student_table`
--

CREATE TABLE `student_table` (
  `Sid` int(11) NOT NULL,
  `Sfname` varchar(20) NOT NULL,
  `Slname` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `nationally` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `religion` varchar(20) NOT NULL,
  `PID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_table`
--

INSERT INTO `student_table` (`Sid`, `Sfname`, `Slname`, `gender`, `nationally`, `DOB`, `religion`, `PID`) VALUES
(1, 'Myat', 'Noe Thu', 'Female', 'Burma', '2019-05-10', 'Buddhist', 2),
(6, 'Khaing', 'Zin Win', 'Female', 'Burma', '2001-08-02', 'Buddhist', 2),
(7, 'Sakura', 'Nora', 'Female', 'Burma', '2001-06-09', 'Buddhist', 3),
(8, 'Hnin', 'Hsu Myat', 'Female', 'Burma', '2003-05-05', 'Buddhist', 4);

-- --------------------------------------------------------

--
-- Table structure for table `subject_table`
--

CREATE TABLE `subject_table` (
  `subjid` int(11) NOT NULL,
  `subjname` varchar(30) NOT NULL,
  `gid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject_table`
--

INSERT INTO `subject_table` (`subjid`, `subjname`, `gid`) VALUES
(1, 'English', 1),
(2, 'Myanmar', 1),
(3, 'Mathematics', 9);

-- --------------------------------------------------------

--
-- Table structure for table `timetable_table`
--

CREATE TABLE `timetable_table` (
  `Tid` int(11) NOT NULL,
  `Tdate_time` datetime NOT NULL,
  `gid` int(11) NOT NULL,
  `subjid` int(11) NOT NULL,
  `AdID` int(11) NOT NULL,
  `examid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timetable_table`
--

INSERT INTO `timetable_table` (`Tid`, `Tdate_time`, `gid`, `subjid`, `AdID`, `examid`) VALUES
(2, '2019-06-04 09:30:00', 1, 1, 2, 2),
(3, '2019-06-24 09:30:00', 9, 3, 3, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activitiesresult_table`
--
ALTER TABLE `activitiesresult_table`
  ADD PRIMARY KEY (`arid`),
  ADD KEY `atvid` (`atvid`),
  ADD KEY `gcid` (`gcid`);

--
-- Indexes for table `activities_table`
--
ALTER TABLE `activities_table`
  ADD PRIMARY KEY (`atvid`);

--
-- Indexes for table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`AdID`);

--
-- Indexes for table `attendance_table`
--
ALTER TABLE `attendance_table`
  ADD PRIMARY KEY (`Atid`),
  ADD KEY `Tid` (`Tid`),
  ADD KEY `Sid` (`Sid`);

--
-- Indexes for table `examresult_table`
--
ALTER TABLE `examresult_table`
  ADD PRIMARY KEY (`ERID`),
  ADD KEY `Tid` (`Tid`),
  ADD KEY `Sid` (`Sid`);

--
-- Indexes for table `examtype_table`
--
ALTER TABLE `examtype_table`
  ADD PRIMARY KEY (`examid`);

--
-- Indexes for table `gradeclass_table`
--
ALTER TABLE `gradeclass_table`
  ADD PRIMARY KEY (`gcid`),
  ADD KEY `gid` (`gid`),
  ADD KEY `Sid` (`Sid`);

--
-- Indexes for table `grade_table`
--
ALTER TABLE `grade_table`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `parent_table`
--
ALTER TABLE `parent_table`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `student_table`
--
ALTER TABLE `student_table`
  ADD PRIMARY KEY (`Sid`),
  ADD KEY `PID` (`PID`),
  ADD KEY `PID_2` (`PID`),
  ADD KEY `PID_3` (`PID`);

--
-- Indexes for table `subject_table`
--
ALTER TABLE `subject_table`
  ADD PRIMARY KEY (`subjid`),
  ADD KEY `gid` (`gid`);

--
-- Indexes for table `timetable_table`
--
ALTER TABLE `timetable_table`
  ADD PRIMARY KEY (`Tid`),
  ADD KEY `gid` (`gid`),
  ADD KEY `subjid` (`subjid`),
  ADD KEY `AdID` (`AdID`),
  ADD KEY `examid` (`examid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activitiesresult_table`
--
ALTER TABLE `activitiesresult_table`
  MODIFY `arid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `activities_table`
--
ALTER TABLE `activities_table`
  MODIFY `atvid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `AdID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `attendance_table`
--
ALTER TABLE `attendance_table`
  MODIFY `Atid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `examresult_table`
--
ALTER TABLE `examresult_table`
  MODIFY `ERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `examtype_table`
--
ALTER TABLE `examtype_table`
  MODIFY `examid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `gradeclass_table`
--
ALTER TABLE `gradeclass_table`
  MODIFY `gcid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `grade_table`
--
ALTER TABLE `grade_table`
  MODIFY `gid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `parent_table`
--
ALTER TABLE `parent_table`
  MODIFY `PID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `student_table`
--
ALTER TABLE `student_table`
  MODIFY `Sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `subject_table`
--
ALTER TABLE `subject_table`
  MODIFY `subjid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `timetable_table`
--
ALTER TABLE `timetable_table`
  MODIFY `Tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `activitiesresult_table`
--
ALTER TABLE `activitiesresult_table`
  ADD CONSTRAINT `activitiesresult_table_ibfk_1` FOREIGN KEY (`atvid`) REFERENCES `activities_table` (`atvid`),
  ADD CONSTRAINT `activitiesresult_table_ibfk_2` FOREIGN KEY (`gcid`) REFERENCES `gradeclass_table` (`gcid`);

--
-- Constraints for table `attendance_table`
--
ALTER TABLE `attendance_table`
  ADD CONSTRAINT `attendance_table_ibfk_1` FOREIGN KEY (`Tid`) REFERENCES `timetable_table` (`Tid`),
  ADD CONSTRAINT `attendance_table_ibfk_2` FOREIGN KEY (`Sid`) REFERENCES `student_table` (`Sid`);

--
-- Constraints for table `examresult_table`
--
ALTER TABLE `examresult_table`
  ADD CONSTRAINT `examresult_table_ibfk_1` FOREIGN KEY (`Tid`) REFERENCES `timetable_table` (`Tid`),
  ADD CONSTRAINT `examresult_table_ibfk_2` FOREIGN KEY (`Sid`) REFERENCES `student_table` (`Sid`);

--
-- Constraints for table `gradeclass_table`
--
ALTER TABLE `gradeclass_table`
  ADD CONSTRAINT `gradeclass_table_ibfk_1` FOREIGN KEY (`gid`) REFERENCES `grade_table` (`gid`),
  ADD CONSTRAINT `gradeclass_table_ibfk_2` FOREIGN KEY (`Sid`) REFERENCES `student_table` (`Sid`);

--
-- Constraints for table `student_table`
--
ALTER TABLE `student_table`
  ADD CONSTRAINT `student_table_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `parent_table` (`PID`);

--
-- Constraints for table `subject_table`
--
ALTER TABLE `subject_table`
  ADD CONSTRAINT `subject_table_ibfk_1` FOREIGN KEY (`gid`) REFERENCES `grade_table` (`gid`);

--
-- Constraints for table `timetable_table`
--
ALTER TABLE `timetable_table`
  ADD CONSTRAINT `timetable_table_ibfk_1` FOREIGN KEY (`gid`) REFERENCES `grade_table` (`gid`),
  ADD CONSTRAINT `timetable_table_ibfk_2` FOREIGN KEY (`subjid`) REFERENCES `subject_table` (`subjid`),
  ADD CONSTRAINT `timetable_table_ibfk_3` FOREIGN KEY (`AdID`) REFERENCES `admin_table` (`AdID`),
  ADD CONSTRAINT `timetable_table_ibfk_4` FOREIGN KEY (`examid`) REFERENCES `examtype_table` (`examid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
