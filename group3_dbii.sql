-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2022 at 08:22 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `group3_dbii`
--

-- --------------------------------------------------------

--
-- Table structure for table `adlogin`
--

CREATE TABLE `adlogin` (
  `adLoginID` int(11) NOT NULL,
  `adEmail` varchar(80) NOT NULL,
  `adPassword` varchar(50) NOT NULL,
  `adID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adlogin`
--

INSERT INTO `adlogin` (`adLoginID`, `adEmail`, `adPassword`, `adID`) VALUES
(1, 'adminadmin@gmail.com', 'dd94709528bb1c83d08f3088d4043f4742891f4f', 'ad001');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `adID` varchar(10) NOT NULL,
  `adName` varchar(80) NOT NULL,
  `adPhoneNo` varchar(80) NOT NULL,
  `adGender` varchar(20) NOT NULL,
  `adIC` varchar(12) NOT NULL,
  `adPosition` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`adID`, `adName`, `adPhoneNo`, `adGender`, `adIC`, `adPosition`) VALUES
('ad001', 'Admin One', '0111234123', '1', '990508124124', '1');

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `applicantName` varchar(80) NOT NULL,
  `applicantGender` varchar(50) NOT NULL,
  `applicantReligion` varchar(50) NOT NULL,
  `applicantRace` varchar(50) NOT NULL,
  `applicantDOB` date NOT NULL,
  `applicantAge` int(11) NOT NULL,
  `applicantIC` int(11) NOT NULL,
  `applicantStatus` varchar(50) NOT NULL,
  `applicantEmail` varchar(80) NOT NULL,
  `applicantHpNo` int(11) NOT NULL,
  `applicantAddressLine1` varchar(80) NOT NULL,
  `applicantAddressLine2` varchar(80) NOT NULL,
  `applicantPostalCode` int(11) NOT NULL,
  `applicantCity` varchar(50) NOT NULL,
  `applicantState` varchar(50) NOT NULL,
  `applicantCountry` varchar(50) NOT NULL,
  `applicantCertificate` varchar(80) NOT NULL,
  `applicantFieldOfStudy` varchar(80) NOT NULL,
  `applicantCGPA` varchar(30) NOT NULL,
  `applicantPreviousStudy` varchar(50) NOT NULL,
  `applicantGradDate` date NOT NULL,
  `applicantPosition` varchar(40) NOT NULL,
  `applicantCompany` varchar(40) NOT NULL,
  `applicantDateStart` date NOT NULL,
  `applicantDateEnd` date NOT NULL,
  `applicantSalary` varchar(20) NOT NULL,
  `applicantCheck1` varchar(10) NOT NULL,
  `applicantCheck2` varchar(10) NOT NULL,
  `applicantCheck3` varchar(10) NOT NULL,
  `applicantCheck4` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`applicantName`, `applicantGender`, `applicantReligion`, `applicantRace`, `applicantDOB`, `applicantAge`, `applicantIC`, `applicantStatus`, `applicantEmail`, `applicantHpNo`, `applicantAddressLine1`, `applicantAddressLine2`, `applicantPostalCode`, `applicantCity`, `applicantState`, `applicantCountry`, `applicantCertificate`, `applicantFieldOfStudy`, `applicantCGPA`, `applicantPreviousStudy`, `applicantGradDate`, `applicantPosition`, `applicantCompany`, `applicantDateStart`, `applicantDateEnd`, `applicantSalary`, `applicantCheck1`, `applicantCheck2`, `applicantCheck3`, `applicantCheck4`) VALUES
('Anya Forger', '2', 'Christian', 'Dusun', '1999-04-01', 23, 2147483647, '1', 'anya@gmail.com', 111111111, 'Anya Road 1', 'Lorang Forger', 89807, 'Kota Kinabalu', 'Sabah', 'Malaysia', 'Degree', 'Software Engineering', '4.00', 'Universiti Malaysia Sabah', '2018-11-25', 'Hiring Manager', 'Phi Software Sdn. Bhd.', '2020-07-25', '2021-12-25', 'RM 2500.00', '1', '2', '2', '2'),
('Dave', '1', 'Christian', 'Dusun', '2022-06-29', 100, 2147483647, '2', 'Dave@gmail.com', 1126692222, 'Anya Road 1', 'Lorong Forger', 89807, 'Kota Kinabalu', 'Sabah', 'Malaysia', 'Degree', 'Software Engineering', '4.00', 'University Malaysia Sabah', '2022-06-29', 'Manager', 'Phi Soft Sdn. Bhd.', '2022-06-29', '2022-06-29', 'RM 4500.00', '2', '2', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `eventSemesterYear` varchar(100) NOT NULL,
  `eventDescription` varchar(100) NOT NULL,
  `eventStartDate` date NOT NULL,
  `eventEndDate` date NOT NULL,
  `eventDuration` varchar(100) NOT NULL,
  `eventRemarks` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`eventSemesterYear`, `eventDescription`, `eventStartDate`, `eventEndDate`, `eventDuration`, `eventRemarks`) VALUES
('Semester 1 2021/2022', 'Confirmation of Course Registration', '2021-10-11', '2021-10-19', '9 Days', 'Maulidur Rasul (19 October 2021)'),
('Semester 1 2021/2022', 'Final Exam', '2022-02-03', '2022-02-20', '3 Weeks', ''),
('Semester 1 2021/2022', 'Lecture Week 1 - 7', '2021-10-11', '2021-11-28', '7 Weeks', 'Hari Deepavali (4 November 2021)'),
('Semester 1 2021/2022', 'Lecture Week 8 - 14', '2021-12-06', '2022-01-23', '7 Weeks', 'Christmas (25 December 2021), New Year (1 January 2022)'),
('Semester 1 2021/2022', 'Mid-Semester Break', '2021-11-29', '2021-12-05', '1 Week', ''),
('Semester 1 2021/2022', 'New Student registration', '2021-10-04', '2021-10-05', '2 Days', ''),
('Semester 1 2021/2022', 'Orientation Week', '2021-10-06', '2021-10-08', '3 Days', ''),
('Semester 1 2021/2022', 'Semester Break', '2022-02-21', '2022-03-13', '3 Weeks', ''),
('Semester 1 2021/2022', 'Study Break', '2022-01-24', '2022-02-02', '1 Week', 'Chinese New Year (1-2 Febuary 2022)'),
('Semester 2 2021/2022', 'Confirmation of Course Registration', '2022-03-14', '2022-03-22', '9 Days', ''),
('Semester 2 2021/2022', 'Final Exam', '2022-07-04', '2022-07-24', '3 Weeks', 'Hari Raya Aidiladha (9 July 2022)'),
('Semester 2 2021/2022', 'Lecture Week 1 - 7', '2022-03-14', '2022-05-01', '7 Weeks', 'Good Friday (15 April 2022), Labour Day (1 May 2022)'),
('Semester 2 2021/2022', 'Lecture Week 8 - 14', '2022-05-09', '2022-06-26', '7 Weeks', 'Wesak Day (15 -16 May 2022), Kaamatan Harvest Festival (30 - 31 May 2022), Agong\'s Birthday (6 June 2022)'),
('Semester 2 2021/2022', 'Mid-Semester Break', '2022-05-02', '2022-05-08', '1 Week', 'Eid Al-Mubarak (2 - 3 May 2022)'),
('Semester 2 2021/2022', 'Semester Break', '2022-07-25', '2022-10-02', '10 Weeks', ''),
('Semester 2 2021/2022', 'Study Break', '2022-06-27', '2022-07-03', '1 Week', '');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedbackID` int(11) NOT NULL,
  `feedbackSub` varchar(250) NOT NULL,
  `feedbackCom` varchar(250) NOT NULL,
  `studFname` varchar(100) NOT NULL,
  `studLname` varchar(100) NOT NULL,
  `phoneNo` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedbackID`, `feedbackSub`, `feedbackCom`, `studFname`, `studLname`, `phoneNo`) VALUES
(1, 'Poor Facilities', 'Improve the facilities', 'Stefanie', 'Ng', '0112669626');

-- --------------------------------------------------------

--
-- Table structure for table `hall_info`
--

CREATE TABLE `hall_info` (
  `hallID` int(11) NOT NULL,
  `hallName` varchar(50) NOT NULL,
  `hallNo` int(11) NOT NULL,
  `hallStatus` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hall_info`
--

INSERT INTO `hall_info` (`hallID`, `hallName`, `hallNo`, `hallStatus`) VALUES
(1, 'Skyrim', 3, 'Reserved'),
(2, 'Morrowind', 1, 'Reserved'),
(3, 'Arena', 1, 'Closed'),
(4, 'Dagger', 1, 'Reserved');

-- --------------------------------------------------------

--
-- Table structure for table `inquiry_table`
--

CREATE TABLE `inquiry_table` (
  `inquiryID` int(11) NOT NULL,
  `inquirerFirstName` varchar(200) NOT NULL,
  `inquirerLastName` varchar(200) NOT NULL,
  `inquirerEmail` varchar(200) NOT NULL,
  `inquirerPhoneNo` int(11) NOT NULL,
  `inquiryTitle` varchar(200) NOT NULL,
  `inquiryDetails` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inquiry_table`
--

INSERT INTO `inquiry_table` (`inquiryID`, `inquirerFirstName`, `inquirerLastName`, `inquirerEmail`, `inquirerPhoneNo`, `inquiryTitle`, `inquiryDetails`) VALUES
(0, 'Silly', 'Willy', 'SillyWilly@gmail.com', 0, 'How do SillyWilly gain permission?', 'SillyWilly would like to know if he can be granted with permission.'),
(1, 'Maudly', 'Starlight', 'MaudlyStarlight@mail.com', 129876543, 'How to what', 'Enter description here.'),
(2, '', '', '', 0, '', ''),
(3, 'Father', 'Will', 'FatherWill@gmail.com', 128885555, 'Test the waters', 'Water is moderate'),
(4, 'Daddy', 'ZhongLi', 'DaddyZL@gmail.com', 181118888, 'Ex Geo Archon', 'Know that you know'),
(5, 'Bill', 'Gates', 'billgates@iphone.com', 126769292, 'Is Iphone still a thing?', 'Iphone is life, buy my Iphones!!!'),
(6, 'Glade', 'Larissa', 'GL@gmail.com', 189236754, 'May I know when is it going to be a physical class?', 'I have been waiting for F2F class and I hope there are legit information regarding when to get back to campus.'),
(7, 'Silly', 'Willy', 'sillywilly@yahoo.com', 192345671, 'Want to sleep', 'Get away from me, want to sleep!!! >_<'),
(8, 'Father', 'ZhongLi', 'fatherzhong@zhongli.com', 174848423, 'fealkaelfhlaefaef', 'cvbnm, hbjnnkmnknk tftftfrereses jjhijhj');

-- --------------------------------------------------------

--
-- Table structure for table `lab_info`
--

CREATE TABLE `lab_info` (
  `labID` int(11) NOT NULL,
  `labName` varchar(50) NOT NULL,
  `labNo` int(11) NOT NULL,
  `labStatus` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lab_info`
--

INSERT INTO `lab_info` (`labID`, `labName`, `labNo`, `labStatus`) VALUES
(1, 'Shiba', 1, 'Open'),
(2, 'Terrier', 1, 'Reserved'),
(3, 'Fox', 1, 'Reserved');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `subID` int(11) NOT NULL,
  `subTitle` varchar(20) NOT NULL,
  `subName` varchar(200) NOT NULL,
  `subsEmail` varchar(200) NOT NULL,
  `subAlumni` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`subID`, `subTitle`, `subName`, `subsEmail`, `subAlumni`) VALUES
(66, 'Mr', 'Subscriber One', 'subsone@gmail.com', 'Alumini'),
(67, 'Mrs', 'Subscriber Two', 'subs2@gmail.com', 'Alumini'),
(68, 'Mx', 'Subscriber Three', 'subs3@gmail.com', 'Staff'),
(69, 'Ms', 'Subscriber Four', 'subs4@gmail.com', 'Public'),
(70, 'Ms', 'Subscriber Five', 'subs5@gmail.com', 'Public'),
(71, 'Miss', 'Subscriber Six', 'subs6@gmail.com', 'Staff'),
(72, 'Dr', 'Subscriber Seven', 'sub7@gmail.com', 'Staff'),
(73, 'Mx', 'Subscriber Eight', 'subs8@gmail.com', 'Staff'),
(74, 'Mx', 'Subscriber Nine', 'subs9@gmail.com', 'Staff'),
(75, 'Prof', 'Subscriber Ten', 'subs10@gmail.com', 'Staff'),
(76, 'Ms', 'Subscriber Ten', 'subs10@gmail.com', 'Staff');

-- --------------------------------------------------------

--
-- Table structure for table `pmfki`
--

CREATE TABLE `pmfki` (
  `PMFKI_AppID` int(11) NOT NULL,
  `studName` varchar(50) NOT NULL,
  `studMatricno` varchar(50) NOT NULL,
  `studCGPA` decimal(10,2) DEFAULT NULL,
  `PMFKI_AppDate` date DEFAULT current_timestamp(),
  `studExperience` text NOT NULL,
  `studSkill` text NOT NULL,
  `PApprovalStatus` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pmfki`
--

INSERT INTO `pmfki` (`PMFKI_AppID`, `studName`, `studMatricno`, `studCGPA`, `PMFKI_AppDate`, `studExperience`, `studSkill`, `PApprovalStatus`) VALUES
(11, 'Jackson Wang', 'BI21110852', '3.77', '2022-06-28', 'Team Wang\'s founder', 'All rounded', NULL),
(14, 'Ezney Ezzyani', 'BI20110177', '4.00', '2022-06-29', 'Involved in organization activities before', 'Teamwork, time management', NULL),
(16, 'Jinyoung Park', 'BI20110922', '3.94', '2022-06-29', 'leader of an organizing committee', 'creativity, trustworthiness', NULL),
(17, 'Jay B Lim', 'BI20111994', '3.44', '2022-06-29', 'have been a group leader for several groups', 'motivating, positivity', NULL),
(19, 'Ezney Dayana', 'BI00007777', '3.75', '2022-06-29', 'joined volunteering campaigns and internships', 'communication', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `courses` varchar(100) NOT NULL,
  `coursesName` varchar(100) NOT NULL,
  `coursesDesc` varchar(100) NOT NULL,
  `marks` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`courses`, `coursesName`, `coursesDesc`, `marks`) VALUES
('Postgraduate', 'Doctor of Philosophy', 'PhD In Philosophy', '(Computer Science)'),
('Postgraduate', 'Doctor of Philosophy', 'PhD In Information Technology', '(Information Technology)'),
('Postgraduate', 'Master of Science', 'By Research', '(Computer Science)'),
('Postgraduate', 'Master of Sciences', 'By Research', '(Information Technology)'),
('Postgraduate', 'Master of Computer Science', 'By Coursework', '(Computational Intelligence');

-- --------------------------------------------------------

--
-- Table structure for table `raapplicant`
--

CREATE TABLE `raapplicant` (
  `ApplicantID` int(11) NOT NULL,
  `CAT1` int(11) NOT NULL,
  `CAT2` int(11) NOT NULL,
  `CAT3` int(11) NOT NULL,
  `RApplicantName` varchar(80) NOT NULL,
  `RApplicantID` varchar(50) NOT NULL,
  `RApplicantFac` varchar(80) NOT NULL,
  `RApplicantDep` varchar(80) NOT NULL,
  `RApplicantEmail1` varchar(80) NOT NULL,
  `RApplicantEmail2` varchar(80) NOT NULL,
  `RApplicantOfficeHP` varchar(80) NOT NULL,
  `RApplicantHP` varchar(80) NOT NULL,
  `RApplicantFOS` varchar(80) NOT NULL,
  `RAplicantRG` varchar(80) NOT NULL,
  `RGRemark` text NOT NULL,
  `RAplicantRA` varchar(80) NOT NULL,
  `RAAlliance` text NOT NULL,
  `sectD_Remarks` text NOT NULL,
  `Admin_approve` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `raapplicant`
--

INSERT INTO `raapplicant` (`ApplicantID`, `CAT1`, `CAT2`, `CAT3`, `RApplicantName`, `RApplicantID`, `RApplicantFac`, `RApplicantDep`, `RApplicantEmail1`, `RApplicantEmail2`, `RApplicantOfficeHP`, `RApplicantHP`, `RApplicantFOS`, `RAplicantRG`, `RGRemark`, `RAplicantRA`, `RAAlliance`, `sectD_Remarks`, `Admin_approve`) VALUES
(1, 1, 1, 1, 'Wilber Watis', 'asdsad', 'Faculty of Computing and Informatics', 'Academic', 'asdasda@gmail.com', '', '', '01234567891', 'sadasda', 'asdsa', 'sadad', 'asdasd', 'asda', '', 0),
(2, 1, 1, 2, 'Stefanie Ng', 'asadad', 'Faculty of Computing and Informatics', 'HEP', 'asdad@gmail.com', '', '', '01234567891', 'sada', 'asdas', 'asdsa', 'asda', 'sada', '', 0),
(3, 1, 2, 2, 'Stefano Zack', '011', 'FSSA', 'Academic', 'stefanozack@gmail.com', 'stefanozack@gmail.com', '087213677', '01126693652', 'IT', 'Cloud Computing', 'Cloud Computing', 'Cloud Computing', 'Cloud Computing', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `reserve_info`
--

CREATE TABLE `reserve_info` (
  `reserveID` int(11) NOT NULL,
  `studMatricNo` varchar(10) NOT NULL,
  `adID` varchar(10) DEFAULT NULL,
  `hallID` int(11) DEFAULT NULL,
  `labID` int(11) DEFAULT NULL,
  `reserveDate` datetime NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `approvalStatus` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reserve_info`
--

INSERT INTO `reserve_info` (`reserveID`, `studMatricNo`, `adID`, `hallID`, `labID`, `reserveDate`, `remarks`, `approvalStatus`) VALUES
(1, 'BI20110000', 'ad001', 1, NULL, '2022-07-30 10:00:00', 'To celebrate the end of semester 4!', b'1'),
(2, 'BI20110000', 'ad001', 4, NULL, '2022-06-14 09:43:00', 'To celebrate the end of semester 4!', b'1'),
(3, 'BI20110000', 'ad001', NULL, 3, '2022-06-21 09:43:00', 'Group Assignment', b'0'),
(4, 'BI20110000', 'ad001', NULL, 3, '2022-06-21 09:43:00', 'Group Assignment', b'1'),
(5, 'BI20110000', NULL, NULL, 1, '2022-06-26 14:41:00', 'Lab test preparation', NULL),
(6, 'BI20110000', NULL, NULL, 1, '2022-06-26 20:41:00', 'For doggy event', NULL),
(7, 'BI20110000', NULL, NULL, 1, '2022-06-26 18:42:00', 'For upcoming first coursemate gathering event', NULL),
(8, 'BI20110000', NULL, NULL, 1, '2022-06-26 14:51:00', 'Group Assignment', NULL),
(9, 'BI20110000', NULL, NULL, 1, '2022-06-26 15:18:00', 'For doggy event', NULL),
(10, 'BI20110000', NULL, NULL, 1, '2022-06-10 15:19:00', 'Group Assignment', NULL),
(11, 'BI20110000', NULL, NULL, 1, '2022-06-26 15:35:00', 'Group Assignment', NULL),
(12, 'BI20110000', NULL, NULL, 1, '2022-06-09 15:34:00', 'Group Assignment', NULL),
(13, 'BI20110000', NULL, NULL, 1, '2022-06-26 15:35:00', 'Group Assignment', NULL),
(14, 'BI20110000', NULL, NULL, 1, '2022-06-26 18:36:00', 'For doggy event', NULL),
(15, 'BI20110000', NULL, NULL, 1, '2022-06-26 15:42:00', 'Group Assignment', NULL),
(16, 'BI20110000', NULL, NULL, 1, '2022-06-26 15:01:00', 'Lab test preparation', NULL),
(17, 'BI20110000', NULL, NULL, 1, '2022-06-26 16:21:00', 'To celebrate the end of semester 4!', NULL),
(18, 'BI20110000', NULL, NULL, 1, '2022-06-26 18:50:00', 'To celebrate the end of semester 4!', NULL),
(19, 'BI20110000', NULL, 4, NULL, '2022-06-29 21:50:00', 'For upcoming first coursemate gathering event', NULL),
(20, 'BI20110000', NULL, NULL, 1, '2022-06-26 16:56:00', 'For doggy event', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staffinfo`
--

CREATE TABLE `staffinfo` (
  `staffID` int(11) NOT NULL,
  `staffTitle` varchar(50) NOT NULL,
  `staffName` varchar(50) NOT NULL,
  `staffPhone` varchar(50) NOT NULL,
  `staffEmail` varchar(50) NOT NULL,
  `staffPosition` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffinfo`
--

INSERT INTO `staffinfo` (`staffID`, `staffTitle`, `staffName`, `staffPhone`, `staffEmail`, `staffPosition`) VALUES
(43, 'Assoc. Prof. Dr.', 'CHIN KIM ON', '102369', 'kimonchin@ums.edu.my', 'Faculty Executive'),
(44, 'Ts. Dr.', 'ASLINA BINTI BAHARUM', '103616', 'aslina@ums.edu.my', 'Academic Staff'),
(45, 'Madam', 'DIANA BINTI KIMMUAN', '101043', 'diane@ums.edu.my', 'Administrative Staff'),
(46, 'Dr.', 'FLORENCE SIA FUI SZE', '-', 'florence.sfs@ums.edu.my', 'Academic Staff'),
(47, 'Dr.', 'JAMES MOUNTSTEPHENS', '102725', 'james@ums.edu.my', 'Academic Staff'),
(48, 'Dr.', 'LAI PO HUNG', '104113', 'laipohung@ums.edu.my', 'Academic Staff');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `studMatricNo` varchar(10) NOT NULL,
  `studName` varchar(200) NOT NULL,
  `studIC` varchar(12) NOT NULL,
  `studGender` varchar(20) NOT NULL,
  `studPhoneNo` varchar(80) NOT NULL,
  `studRegisterSession` varchar(20) NOT NULL,
  `studProgramme` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`studMatricNo`, `studName`, `studIC`, `studGender`, `studPhoneNo`, `studRegisterSession`, `studProgramme`) VALUES
('BI2000009', 'Student Nine', '01126696269', '1', '0110000000', '1-2020/2021', '1'),
('BI20110000', 'Student Chan', '011111120000', '1', '0111111111', '1-2020/2021', '1'),
('BI20110001', 'Student Two', '990101120111', '1', '0111231234', '1-2020/2021', '2'),
('BI20110003', 'Student Three', '000101120003', '1', '0113331234', '1-2020/2021', '3'),
('BI20110004', 'Student Four', '011130120788', '2', '0110000004', '1-2020/2021', '5'),
('BI20110005', 'Student Five', '011130120005', '3', '01126696265', '1-2020/2021', '3'),
('BI20110007', 'Student Seven', '011130120744', '2', '0115055055', '1-2020/2021', '3'),
('BI20110010', 'Student Ten', '011130120722', '2', '01126696211', '1-2020/2021', '2'),
('BI20110193', 'Student One', '011130120000', '2', '01126696268', '1-2020/2021', '1'),
('BI20110888', 'Student Eight', '011130120888', '1', '01126696888', '1-2020/2021', '3'),
('BI20110996', 'Student Six', '011130120766', '1', '01126696255', '1-2020/2021', '1');

-- --------------------------------------------------------

--
-- Table structure for table `studlogin`
--

CREATE TABLE `studlogin` (
  `studLoginID` int(11) NOT NULL,
  `studEmail` varchar(80) NOT NULL,
  `studPassword` varchar(50) NOT NULL,
  `studMatricNo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studlogin`
--

INSERT INTO `studlogin` (`studLoginID`, `studEmail`, `studPassword`, `studMatricNo`) VALUES
(5, 'studentchan@iluv.ums.edu.my', '7299a64d1a5d3a332a099015c5430dd09f93e4ac', 'BI20110000'),
(6, 'studentone@iluv.ums.edu.my', '51b036efdadc806b9a8d4c7b56eb5b46d165e9d9', 'BI20110193'),
(7, 'studenttwo@iluv.ums.edu.my', '7a6d0c2f0dc3144287ec43c3e33d58a0c9c4f3e8', 'BI20110001'),
(8, 'studentthree@iluv.ums.edu.my', '21939c813cc1f53abedf952647ffe5fee2c07475', 'BI20110003'),
(9, 'studentfour@iluv.ums.edu.my', '912f23d28d7ed780a56f3d95945c4753334398bc', 'BI20110004'),
(10, 'studentfive@iluv.ums.edu.my', '60703a649bd807296e67cebfc40e478be10538ac', 'BI20110005'),
(11, 'studentsix@ilu.ums.edu.my', 'a6c17672e5491bd0af4d5f42727742baa3fed65a', 'BI20110996'),
(12, 'studentseven@iluv.ums.edu.my', 'b9d8ce8c77fbfec47c36e2d1e97b1b48b1439ab0', 'BI20110007'),
(13, 'studenteight@iluv.ums.edu.my', 'b32bb6bc82d6ccaabe15bdd80f6b4d8ecc9f2370', 'BI20110888'),
(14, 'studentnine@iluv.ums.edu.my', 'b9458e1f19fe9c00516db428f8a467bb7fdd6b79', 'BI2000009'),
(15, 'studentten@iluv.ums.edu.my', '45be99b4ecb83b8a3a6eec729d2f731fc2c83ae8', 'BI20110010');

-- --------------------------------------------------------

--
-- Table structure for table `under`
--

CREATE TABLE `under` (
  `courses` varchar(100) NOT NULL,
  `coursesName` varchar(100) NOT NULL,
  `coursesDesc` varchar(1000) NOT NULL,
  `marks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `under`
--

INSERT INTO `under` (`courses`, `coursesName`, `coursesDesc`, `marks`) VALUES
('Undergraduate', 'Software', 'this courses teach', ''),
('Undergraduate', 'Bachelor Of Information Technology with Honours', 'Students will be exposed with business computing operation through presentation tier, business tier ', 'Business Computing'),
('Undergraduate', 'Bachelor Of Computer Science with Honours', 'The purpose of the program is to produce skilled and capable graduates in the field of data science,', 'Data Science'),
('Undergraduate', 'Bachelor Of Information Technology with Honours', 'This programme will provide students with skills in the areas of interactive media, graphics arts, a', 'Multimedia Technology'),
('Undergraduate', 'Bachelor Of Computer Science with Honours', 'Student will be exposed and trained with the fundamental concepts of computer science and computer n', 'Network Engineering'),
('Undergraduate', 'Bachelor Of Computer Science with Honours', 'The programme aims to produce graduates with knowledge and skills in computer science and software e', 'Software Engineering');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adlogin`
--
ALTER TABLE `adlogin`
  ADD PRIMARY KEY (`adLoginID`),
  ADD KEY `studID` (`adID`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`adID`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`eventSemesterYear`,`eventDescription`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedbackID`);

--
-- Indexes for table `hall_info`
--
ALTER TABLE `hall_info`
  ADD PRIMARY KEY (`hallID`);

--
-- Indexes for table `lab_info`
--
ALTER TABLE `lab_info`
  ADD PRIMARY KEY (`labID`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`subID`);

--
-- Indexes for table `pmfki`
--
ALTER TABLE `pmfki`
  ADD PRIMARY KEY (`PMFKI_AppID`);

--
-- Indexes for table `raapplicant`
--
ALTER TABLE `raapplicant`
  ADD PRIMARY KEY (`ApplicantID`);

--
-- Indexes for table `reserve_info`
--
ALTER TABLE `reserve_info`
  ADD PRIMARY KEY (`reserveID`),
  ADD KEY `hallID` (`hallID`),
  ADD KEY `labID` (`labID`),
  ADD KEY `studMatricNo` (`studMatricNo`),
  ADD KEY `adID` (`adID`);

--
-- Indexes for table `staffinfo`
--
ALTER TABLE `staffinfo`
  ADD PRIMARY KEY (`staffID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`studMatricNo`);

--
-- Indexes for table `studlogin`
--
ALTER TABLE `studlogin`
  ADD PRIMARY KEY (`studLoginID`),
  ADD KEY `studMatricNo` (`studMatricNo`);

--
-- Indexes for table `under`
--
ALTER TABLE `under`
  ADD PRIMARY KEY (`marks`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adlogin`
--
ALTER TABLE `adlogin`
  MODIFY `adLoginID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedbackID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `subID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `pmfki`
--
ALTER TABLE `pmfki`
  MODIFY `PMFKI_AppID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `raapplicant`
--
ALTER TABLE `raapplicant`
  MODIFY `ApplicantID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `staffinfo`
--
ALTER TABLE `staffinfo`
  MODIFY `staffID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `studlogin`
--
ALTER TABLE `studlogin`
  MODIFY `studLoginID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adlogin`
--
ALTER TABLE `adlogin`
  ADD CONSTRAINT `adlogin_ibfk_1` FOREIGN KEY (`adID`) REFERENCES `admins` (`adID`);

--
-- Constraints for table `reserve_info`
--
ALTER TABLE `reserve_info`
  ADD CONSTRAINT `reserve_info_ibfk_1` FOREIGN KEY (`hallID`) REFERENCES `hall_info` (`hallID`),
  ADD CONSTRAINT `reserve_info_ibfk_2` FOREIGN KEY (`labID`) REFERENCES `lab_info` (`labID`),
  ADD CONSTRAINT `reserve_info_ibfk_3` FOREIGN KEY (`studMatricNo`) REFERENCES `students` (`studMatricNo`),
  ADD CONSTRAINT `reserve_info_ibfk_4` FOREIGN KEY (`adID`) REFERENCES `admins` (`adID`);

--
-- Constraints for table `studlogin`
--
ALTER TABLE `studlogin`
  ADD CONSTRAINT `studlogin_ibfk_1` FOREIGN KEY (`studMatricNo`) REFERENCES `students` (`studMatricNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
