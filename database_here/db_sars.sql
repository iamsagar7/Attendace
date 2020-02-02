-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2017 at 07:59 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_sars`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`admin_id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(12) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `middlename` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `firstname`, `middlename`, `lastname`) VALUES
(1, 'admin', 'admin', 'Private', '', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `calen`
--

CREATE TABLE IF NOT EXISTS `calen` (
`cal_id` int(19) NOT NULL,
  `name` varchar(200) NOT NULL,
  `month` varchar(200) NOT NULL,
  `day` varchar(200) NOT NULL,
  `year` varchar(200) NOT NULL,
  `schedule` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `calen_saturday`
--

CREATE TABLE IF NOT EXISTS `calen_saturday` (
`cal_id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `month` varchar(200) NOT NULL,
  `day` varchar(200) NOT NULL,
  `year` varchar(200) NOT NULL,
  `schedule` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `calen_sunday`
--

CREATE TABLE IF NOT EXISTS `calen_sunday` (
`cal_id` int(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `month` varchar(200) NOT NULL,
  `day` varchar(200) NOT NULL,
  `year` varchar(200) NOT NULL,
  `schedule` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `late`
--

CREATE TABLE IF NOT EXISTS `late` (
`late_id` int(11) NOT NULL,
  `student_no` varchar(200) NOT NULL,
  `student_details` varchar(200) NOT NULL,
  `late` varchar(200) NOT NULL,
  `time` varchar(200) DEFAULT NULL,
  `date` varchar(200) DEFAULT NULL,
  `id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
`student_id` int(11) NOT NULL,
  `student_no` varchar(20) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `middlename` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `course` varchar(10) NOT NULL,
  `schedule` varchar(200) NOT NULL,
  `section` varchar(8) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_no`, `firstname`, `middlename`, `lastname`, `course`, `schedule`, `section`) VALUES
(4, 'C101B17SAA104', 'John Carlo', '', 'Vigo', 'C101', 'Saturday AM', '2017'),
(5, 'C101B17SAA105', 'Ara Marylle', '', 'Oliver', 'C101', 'Saturday AM', '2017'),
(6, 'C101B17SAA106', 'Angela', '', 'Pecana', 'C101', 'Saturday AM', '2017'),
(7, 'C101B17SAA107', 'Joshua', '', 'marce', 'C101', 'Saturday AM', '2017'),
(8, 'C101B17SAA108', 'Noralyn', '', 'Macha', 'C101', 'Saturday AM', '2017'),
(9, 'C101B17SAA109', 'Mary Grace', '', 'Basco', 'C101', 'Saturday AM', '2017'),
(10, 'C101B17SAA110', 'jaygee', '', 'Beler', 'C101', 'Saturday AM', '2017'),
(11, 'C101B17SAA111', 'Gilbert jay', '', 'Belarmino', 'C101', 'Saturday AM', '2017'),
(12, 'C101B17SAA112', 'Gladys', '', 'Sanchez', 'C101', 'Saturday AM', '2017'),
(13, 'C101B17SAA113', 'Jaycel Ann', '', 'Olivo', 'C101', 'Saturday AM', '2017'),
(14, 'C101B17SAA114', 'Jewellynne', '', 'layan', 'C101', 'Saturday AM', '2017'),
(15, 'C101B17SAA115', 'Ralph Mikko', '', 'Viernesa', 'C101', 'Saturday AM', '2017'),
(16, 'C101B17SAA116', 'Rolando', '', 'Remolacio jr.', 'C101', 'Saturday AM', '2017'),
(17, 'C101B17SAA117', 'Cherry Anne', '', 'Hotricano', 'C101', 'Saturday AM', '2017'),
(18, 'C101B17SAA118', 'jamie Lhyn', '', 'Villareal', 'C101', 'Saturday AM', '2017'),
(21, 'C101B17SAA121', 'Angelica Nicole', '', 'Guong', 'C101', 'Saturday AM', '2017'),
(22, 'C101B17SAA122', 'Merie Chan', '', 'Pana', 'C101', 'Saturday AM', '2017'),
(24, 'C101B17SAA124', 'Ritz erika', '', 'Cejero', 'C101', 'Saturday AM', '2017'),
(25, 'C101B17SAP125', 'French Kathlene', '', 'nardo', 'C101', 'Saturday PM', '2017'),
(27, 'C101B17SAP127', 'Smile', '', 'Claton', 'C101', 'Saturday PM', '2017'),
(29, 'C101B17SAP129', 'Renz Joshua', '', 'david', 'C101', 'Saturday PM', '2017'),
(30, 'C101B17SAP130', 'Geliina', '', 'Canalete', 'C101', 'Saturday PM', '2017'),
(31, 'C101B17SAP131', 'ianne Mario', '', 'Medina', 'C101', 'Saturday PM', '2017'),
(32, 'C101B17SAP132', 'kenneth', '', 'Villueva', 'C101', 'Saturday PM', '2017'),
(33, 'C101B17SAP133', 'Queen Ranny Thea', '', 'Palwa', 'C101', 'Saturday PM', '2017'),
(34, 'C101B17SAP134', 'jason', '', 'Ejorcada', 'C101', 'Saturday PM', '2017'),
(35, 'C101B17SAP135', 'Zyril', '', 'Macha', 'C101', 'Saturday PM', '2017'),
(36, 'C101B17SAP136', 'Christian vergel', '', 'Permejo', 'C101', 'Saturday PM', '2017'),
(38, 'C101B17SAP138', 'Lenard', '', 'Carriaga', 'C101', 'Saturday PM', '2017'),
(39, 'C101B17SAP139', 'Rosemarie', '', 'Paglinawan', 'C101', 'Saturday PM', '2017'),
(42, 'C101B17SAP142', 'Norielle', '', 'Palacios', 'C101', 'Saturday PM', '2017'),
(44, 'C101B17SAP144', 'Carlo', '', 'Gonzaga', 'C101', 'Saturday PM', '2017'),
(45, 'C101B17SAP145', 'Clarence', '', 'Guzarin', 'C101', 'Saturday PM', '2017'),
(46, 'C101B17SAP146', 'Aly', '', 'Leonardo', 'C101', 'Saturday PM', '2017'),
(49, 'C101B17SAP149', 'Charles', '', 'Lopez', 'C101', 'Saturday PM', '2017'),
(51, 'C101B17SUP156', 'Jeremy', '', 'Camacho', 'C101', 'Sunday PM', '2017'),
(52, 'C101B17SUP157', 'erwin', '', 'Nares', 'C101', 'Sunday PM', '2017'),
(53, 'C101B17SUP158', 'Joseph', '', 'Manzanal', 'C101', 'Sunday PM', '2017'),
(54, 'C101B17SUP159', 'Nilma', '', 'Barcenas', 'C101', 'Sunday PM', '2017'),
(55, 'C101B17SUP160', 'Carl Matthew', '', 'Sarmiento', 'C101', 'Sunday PM', '2017'),
(56, 'C101B17SUP161', 'Bernadette', '', 'Ramos', 'C101', 'Sunday PM', '2017'),
(57, 'C101B17SUP162', 'Ronel', '', 'Arevalo', 'C101', 'Sunday PM', '2017'),
(58, 'C101B17SUP163', 'Shanewen Mae', '', 'Miranda', 'C101', 'Sunday PM', '2017'),
(62, 'C101B17SUP167', 'Jamaica', '', 'Dardo', 'C101', 'Sunday PM', '2017'),
(63, 'C101B17SUP168', 'Reymart', '', 'Flores', 'C101', 'Sunday PM', '2017'),
(65, 'C101B17SUP170', 'Pamela', '', 'Zamora', 'C101', 'Sunday PM', '2017'),
(66, 'C101B17SAA171', 'Shannelle Anglika', '', 'Bowon', 'C101', 'Saturday AM', '2017'),
(67, 'C101B17SUP171', 'Keziah Joyce', '', 'De Pena', 'C101', 'Sunday PM', '2017'),
(69, 'C101B17SUP173', 'Christopher', '', 'Sabadlab', 'C101', 'Sunday PM', '2017'),
(70, 'C101B17SUP174', 'kenneth Carl Ericko', '', 'David', 'C101', 'Sunday PM', '2017'),
(71, 'C101B17SUP175', 'Donabel', '', 'Samonte', 'C101', 'Sunday PM', '2017'),
(72, 'C101B17SUP176', 'Joshua', '', 'Rambac', 'C101', 'Sunday PM', '2017'),
(76, 'C101B17SUP180', 'DJ', '', 'yambao', 'C101', 'Sunday PM', '2017'),
(79, 'C101B17SUP183', 'Joshua Ellis ', 'Dizon', 'Enore', 'C101', 'Sunday PM', '2017'),
(81, 'C101B17SUP185', 'Heidi', '', 'Taja', 'C101', 'Sunday PM', '2017'),
(83, 'C101B17SUP187', 'Jonette', '', 'Sanchez', 'C101', 'Sunday PM', '2017'),
(84, 'C101B17SUP188', 'Alrich Damier', '', 'Ocampo', 'C101', 'Sunday PM', '2017'),
(85, 'C101B17SUP189', 'Renz', '', 'Villavicencio', 'C101', 'Sunday PM', '2017'),
(86, 'C101B17SUP190', 'kim Benedick', '', 'Lauron', 'C101', 'Sunday PM', '2017'),
(87, 'C101B17SUP191', 'Jomari', '', 'Rambac', 'C101', 'Sunday PM', '2017'),
(90, 'D201B17SAA101', 'John Carlo', '', 'Mendoza', 'D201', 'Saturday AM', '2017'),
(91, 'D201B17SAA102', 'Atreus', '', 'Datuin', 'D201', 'Saturday AM', '2017'),
(92, 'D201B17SAA103', 'Rica', '', 'De Luna', 'D201', 'Saturday AM', '2017'),
(93, 'D201B17SAA104', 'Jessa', '', 'Andes', 'D201', 'Saturday AM', '2017'),
(95, 'D201B17SAA106', 'mary Ann', '', 'Cuison', 'D201', 'Saturday AM', '2017'),
(96, 'D201B17SAA107', 'Abby', '', 'Maliquid', 'D201', 'Saturday AM', '2017'),
(97, 'D201B17SAA108', 'karen', '', 'Almeda', 'D201', 'Saturday AM', '2017'),
(98, 'D201B17SAA109', 'Jobie', '', 'Forcadilla', 'D201', 'Saturday AM', '2017'),
(99, 'D201B17SUP100', 'Tabitha Denise', '', 'Salonga', 'D201', 'Sunday PM', '2017'),
(102, 'D201B17SUP103', 'Sophia Laurence', '', 'Puri', 'D201', 'Sunday PM', '2017'),
(103, 'D201B17SUP104', 'Aldrich Ryan', '', 'Cruzado', 'D201', 'Sunday PM', '2017'),
(104, 'D201B17SUP105', 'Jullie Mae', '', 'Maan', 'D201', 'Sunday PM', '2017'),
(105, 'D201B17SUP106', 'Jurissa', '', 'Marinda', 'D201', 'Sunday PM', '2017'),
(106, 'D201B17SUP107', 'Darlene Jewel', '', 'ramos', 'D201', 'Sunday PM', '2017'),
(107, 'D201B17SUP108', 'Joan', '', 'Catibog', 'D201', 'Sunday PM', '2017'),
(108, 'D201B17SUP109', 'Joanne', '', 'Ilaw', 'D201', 'Sunday PM', '2017'),
(109, 'D201B17SUP110', 'Sophia', '', 'Villanueva', 'D201', 'Sunday PM', '2017'),
(111, 'D201B17SUP112', 'Robert Christian', '', 'Arcega', 'D201', 'Sunday PM', '2017'),
(112, 'D201B17SUP113', 'Charles', '', 'Salcedo', 'D201', 'Sunday PM', '2017'),
(113, 'D201B17SUP114', 'Samantha Nicole', '', 'Ocampo', 'D201', 'Sunday PM', '2017'),
(114, 'C101B17SAA127', 'Jdeeann', '', 'Villavicencio', 'C101', 'Saturday AM', '2017');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `calen`
--
ALTER TABLE `calen`
 ADD PRIMARY KEY (`cal_id`);

--
-- Indexes for table `calen_saturday`
--
ALTER TABLE `calen_saturday`
 ADD PRIMARY KEY (`cal_id`);

--
-- Indexes for table `calen_sunday`
--
ALTER TABLE `calen_sunday`
 ADD PRIMARY KEY (`cal_id`);

--
-- Indexes for table `late`
--
ALTER TABLE `late`
 ADD PRIMARY KEY (`late_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
 ADD PRIMARY KEY (`student_id`), ADD UNIQUE KEY `student_no` (`student_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `calen`
--
ALTER TABLE `calen`
MODIFY `cal_id` int(19) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `calen_saturday`
--
ALTER TABLE `calen_saturday`
MODIFY `cal_id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `calen_sunday`
--
ALTER TABLE `calen_sunday`
MODIFY `cal_id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `late`
--
ALTER TABLE `late`
MODIFY `late_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=115;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
