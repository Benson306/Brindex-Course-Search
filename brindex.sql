-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2021 at 09:02 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brindex`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE `admin_details` (
  `admin_id` int(11) NOT NULL,
  `username` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`admin_id`, `username`, `email`, `password`) VALUES
(4, 'ben', 'bnkimtai@gmail.com', '12345'),
(5, 'Peter', 'kipeter95@gmail.com', 'Brindex@2018'),
(6, 'Deekim', 'dorynkimaiyo@gmail.com', 'job1234');

-- --------------------------------------------------------

--
-- Table structure for table `all_course_details`
--

CREATE TABLE `all_course_details` (
  `course_id` int(11) NOT NULL,
  `course_name` text NOT NULL,
  `depart` text NOT NULL,
  `category` text NOT NULL,
  `faculty` text NOT NULL,
  `duration` text NOT NULL,
  `institution` text NOT NULL,
  `location` text NOT NULL,
  `intake` text NOT NULL,
  `exam_body` text NOT NULL,
  `pricing` text NOT NULL,
  `requirements` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `all_course_details`
--

INSERT INTO `all_course_details` (`course_id`, `course_name`, `depart`, `category`, `faculty`, `duration`, `institution`, `location`, `intake`, `exam_body`, `pricing`, `requirements`) VALUES
(7, 'diploma in business administration', '', 'diploma', 'School of business', '4', 'ol', 'kitale', 'January', 'KNEC', '25000', 'minimum of c+ in English, Mathematics and business studies'),
(8, 'diploma in business management', '', 'diploma', 'School of business', '3', 'coast institute of technology', 'kisumu', 'September', 'KNEC', '18000', 'minimum of C plain in Mathematics and business studies '),
(9, 'diploma in business administration', '', 'diploma', 'School of business', '4', 'thika technical institute', 'eldoret', 'May', 'KASNEB', '18000', 'minimum C PLAIN'),
(10, 'diploma in business administration', '', 'diploma', 'School of business', '4', 'coast institute of technology', 'kitale', 'January', 'KASNEB', '18000', 'Minimum C plain'),
(16, 'human resources management', '', 'Higher diploma', 'School of business', '1year', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '16000 per term ', 'Diploma with pass '),
(17, ' entrepreneurship', '', 'Higher diploma', 'School of business', '1year', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '16000 per term ', 'Diploma with pass'),
(18, 'Higher diploma in secretarial studies', '', 'Higher diploma', 'School of business', '1year', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '16000 per term ', 'Minimum of diploma with a pass'),
(19, 'Diploma in human resource management', '', 'Diploma', 'School of business', '18', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '14000', 'Minimum of C- (minus)'),
(20, 'Diploma in project management', '', 'Diploma', 'School of business', '18', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '14000', 'Minimum of C-(minus)'),
(21, 'Diploma in sales and marketing', '', 'Diploma', 'School of business', '18', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '14000', 'Minimum of C-(minus)'),
(22, 'Diploma in business administration', '', 'Diploma', 'School of business', '18', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '14000', 'Minimum of KCSE C- (minus)'),
(23, 'Diploma in supply chain management, modules i,ii,iii', '', 'Diploma', 'School of business', '18', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '14000', 'Minimum of KCSE C-(minus)'),
(24, 'Diploma in entrepreneurship, modules i,ii,iii', '', 'Diploma', 'School of business', '18', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '14000', 'Minimum of KCSE C-(minus)'),
(25, 'Certificate in sales and marketing', '', 'Certificate', 'School of business', '1', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '12000', 'Minimum of KCSE D(plain)'),
(26, 'Certificate in human resources management', '', 'Certificate', 'School of business', '1', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '12000', 'Minimum of KCSE D (plain)'),
(27, 'Certificate in project management', '', 'Certificate', 'School of business', '1', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '12000', 'Minimum of KCSE D (plain)'),
(28, 'Certificate in entrepreneurship', '', 'Certificate', 'School of business', '1', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '12000', 'Minimum of KCSE D (plain)'),
(29, 'Certificate in supply chain management, (module i,ii,iii)', '', 'Certificate', 'School of business', '1year', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '12000 per term', 'Minimum of KCSE D plain'),
(30, 'Certificate in business management', '', 'Certificate', 'School of business', '1', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '12000', 'Minimum of KCSE D (plain)'),
(31, 'Certificate in supply chain management, (module i,ii,iii)', '', 'Certificate', 'School of business', '1', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '12000', 'Minimum of KCSE D (plain)'),
(32, 'Diploma in accountancy', '', 'Diploma', 'School of business', '18', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '12000', 'Minimum of KCSE C- (minius)'),
(33, 'Certificate in accountancy', '', 'Certificate', 'School of business', '1', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '12000', 'Minimum of KCSE D (plain)'),
(34, 'Diploma in banking and finance', '', 'Diploma', 'School of business', '18', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '14000', 'Minimum of C- (minus)'),
(35, 'Higher diploma in tourism management', '', 'Higher diploma', 'School of tourism and hospitality ', '1', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '16000', 'Diploma with pass'),
(36, 'Diploma in tourism management', '', 'Diploma', 'School of tourism and hospitality ', '18', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '14000', 'Minimum of KCSE C- (minus)'),
(37, 'Diploma in tour guiding', '', 'Diploma', 'School of tourism and hospitality ', '18', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '14000', 'Minimum of KCSE C- (minus)'),
(38, 'Diploma in travel tourism and hospitality management', '', 'Diploma', 'School of tourism and hospitality ', '18', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '14000', 'Minimum of KCSE C- (minus)'),
(39, 'Certificate in tourism management', '', 'Certificate', 'School of tourism and hospitality ', '1', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '12000', 'Minimum of KCSE D (plain)'),
(40, 'Certificate in tour guide operations (module i,ii,iii)', '', 'Certificate', 'School of tourism and hospitality ', '1', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '12000', 'Minimum of KCSE D (plain)'),
(41, 'Certificate in travel, tourism hospitality management', '', 'Certificate', 'School of tourism and hospitality ', '1', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '12000', 'Minimum of KCSE D (plain)'),
(42, 'Diploma in social work and community development (module i,ii,iii)', '', 'Diploma', 'School of social sciences', '18', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '9000', 'Minimum of KCSE C-(minus)'),
(43, 'Certificate in social work and community development (module i,ii)', '', 'Certificate', 'School of social sciences', '12', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '7500', 'Minimum of KCSE D (plain)'),
(44, 'Diploma in ECDE', '', 'Diploma', 'School of social sciences', '18', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '10000', 'Minimum of KCSE D (plain)'),
(45, 'Certificate in ECDE ', '', 'Certificate', 'School of social sciences', '12', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '8000', 'Minimum of KCSE D+ (plus)'),
(46, 'Proficiency in ECDE', '', 'Certificate', 'School of social sciences', '12', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '8000', 'Minimum of KCSE D- (minus)'),
(47, 'Higher diploma in library science', '', 'Higher diploma', 'School of information sciences', '24', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '16000', 'Diploma with  pass'),
(48, 'Diploma in library and information sciences', '', 'Diploma', 'School of information sciences', '18', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '14000', 'Minimum of KCSE D (plain)'),
(49, 'Diploma in information technology (ICT)', '', 'Diploma', 'School of information sciences', '18', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '14000', 'Minimum of KCSE C-(minus)'),
(50, 'Certificate in library and information sciences', '', 'Certificate', 'School of information sciences', '12', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '12000', 'Minimum of KCSE D (plain)'),
(51, 'Certificate in information technology (ICT)', '', 'Certificate', 'School of information sciences', '12', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '12000', ' Minimum of KCSE D (plain)'),
(52, 'Accounting Technicians Diploma (ATD) level i,ii,iii', '', 'Diploma', 'School of accountancy', '5', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KASNEB', '13000', 'Open entry'),
(53, 'Diploma in information technology (DICT) level i,ii,iii', 'ICT', 'Certified courses ', 'KASNEB courses', '5 months per section', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KASNEB', '13000 per section', 'Minimum of KCSE C- minus'),
(54, 'Diploma in credit management (DCM)', '', 'Certified courses ', 'School of accountancy', '5 Months', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KASNEB', '13000', 'Minimum of KCSE C+ plus '),
(55, 'Certified pubilc accountant. 1&2', '', 'Certificate', 'School of accountancy', '5 Months', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KASNEB', '13500', 'Minimum of KCSE C+ plus'),
(56, 'Certified pubilc accountant. 3&4', '', 'Certificate', 'School of accountancy', '5 months', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KASNEB', '14500', 'Minimum of KCSE C+ plus'),
(57, 'Certified pubilc accountant. 5&6', '', 'Certified courses ', 'School of accountancy', '5 months', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KASNEB', '15500', 'Minimum of KCSE C+ plus'),
(58, 'diploma in aeronautical engineering ', '', 'Computer studies ', 'School of Aeronautical engineering  ', '3 years', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC', '27,000 per term', 'minimum of C-[minus] in KCSE '),
(59, 'Diploma in international travel and tourism management', '', 'Diploma', 'School of tourism and hospitality ', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/ICM', '10,000 per term', 'Minimum of KCSE C-(minus)'),
(60, 'Certificate in international travel and tourism management', '', 'Diploma', 'School of tourism and hospitality ', '4 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/ICM', '10,000 per term', 'Minimum of KCSE D (plain)'),
(61, 'Diploma in international travel and tourism guide', '', 'Diploma', 'School of tourism and hospitality ', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/ICM', '10,000 per term', 'Minimum of KCSE C-(minus)'),
(62, 'Certificate in international travel and tourism guide', '', 'Certificate', 'School of tourism and hospitality ', '4 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/ICM', '10,000 per term', 'Minimum of KCSE D (plain)'),
(63, 'Diploma in clearing and forwarding management', '', 'Diploma', 'School of tourism and hospitality ', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/ICM', '10,000 per term', 'Minimum of KCSE C-(minus)'),
(64, 'Higher diploma in sales and marketing', '', 'Higher diploma', 'School of business', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/ABE/ICM', '10,000 per term', 'Minimum of KCSE C- minus\r\nDiploma in sales and marketing'),
(65, 'Sales and marketing', '', 'Diploma', 'School of business', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/ABE/ICM', '10,000 per term', 'Minimum of KCSE C-minus\r\nOR Certificate in sales and marketing'),
(66, 'Sales and marketing', '', 'Certificate', 'School of business', '4 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/ABE/ICM', '10,000 per term', 'Minimum of KCSE D plain'),
(67, 'Legal secretary studies', '', 'Diploma', 'School of business', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/ABE/ICM', '10,000 per term', 'Minimum of KCSE C- minus \r\nOR certificate in legal secretary studies'),
(68, 'Legal secretary studies', '', 'Certificate', 'School of business', '4 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/ABE/ICM', '10,000 per term', 'Minimum of KCSE D plain\r\n'),
(69, 'Purchasing and supplies', '', 'Diploma', 'School of business', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/ABE/ICM', '10,000 per term', 'Minimum of KCSE C- minus\r\nOR certificate in purchasing and supplies'),
(70, 'Purchasing and supplies', '', 'Certificate', 'School of business', '4 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/ABE/ICM', '10,000 per term', 'Minimum of KCSE D plain\r\n'),
(71, 'Human resource management', '', 'Certificate', 'School of business', '2 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/ABE/ICM', '10,000 per term', 'Minimum of KCSE D plain'),
(73, 'Human resource management', '', 'Diploma', 'School of business', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/ABE/ICM', '10,000 per term', 'Minimum of KCSE C- minus\r\nOR certificate in human resource management'),
(74, 'Human resource management', '', 'Higher diploma', 'School of business', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/ABE/ICM', '10,000 per term', 'Minimum of KCSE C- minus\r\nOR diploma in human resource management'),
(75, 'Entrepreneurship', '', 'Diploma', 'School of business', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC', '10,000 per term', 'Minimum of KCSE C-minus'),
(76, 'Entrepreneurship', '', 'Higher diploma', 'School of business', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC', '10,000 per term', 'Minimum of KCSE C-minus\r\nOR diploma in entrepreneurship'),
(77, 'Business administration and management', '', 'Certificate', 'School of business', '2 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/ABE/ICM', '10,000 per term', 'Minimum of KCSE D plain'),
(79, 'Business administration and management', '', 'Diploma', 'School of business', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/ABE/ICM', '10,000 per term', 'Minimum of KCSE C-MINUS\r\nOR certificate in business administration and management'),
(80, 'Business administration and management', '', 'Higher diploma', 'School of business', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/ABE/ICM', '10,000 per term', 'Minimum of KCSE C-MINUS\r\nOR diploma in business administration and management'),
(81, 'Public relations and marketing', '', 'Certificate', 'School of business', '3 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/ABE/ICM', '10,000 per term', 'Minimum of KCSE D plain'),
(82, 'Public relations and marketing', '', 'Diploma', 'School of business', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/ABE/ICM', '10,000 per term', 'Minimum of KCSE C-minus'),
(83, 'Public relations and marketing', '', 'Higher diploma', 'School of business', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/ABE/ICM', '10,000 per term', 'Minimum of KCSE C-minus'),
(84, 'Project management and evaluation', '', 'Certificate', 'School of business', '3 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/ABE/ICM', '10,000 per term', 'Minimum of KCSE D plain'),
(85, 'Project management and evaluation', '', 'Diploma', 'School of business', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/ABE/ICM', '10,000 per term', 'Minimum of KCSE C-minus'),
(86, 'Petroleum management', '', 'Certificate', 'School of business', '3 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/ABE/ICM', '10,000 per term', 'Minimum of KCSE D plain'),
(87, 'Petroleum management', '', 'Diploma', 'School of business', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/ABE/ICM', '10,000 per term', 'Minimum of KCSE C-minus\r\nCertificate in petroleum management'),
(88, 'Petroleum management', '', 'Higher diploma', 'School of business', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/ABE/ICM', '10,000 per term', 'Minimum of KCSE C-minus\r\nDiploma in petroleum management'),
(89, 'Transport, fleet and logistics management', '', 'Certificate', 'School of business', '2 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC', '10,000 per term', 'Minimum of KCSE D plain'),
(90, 'Transport, fleet and logistics management', '', 'Diploma', 'School of business', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC', '10,000 per term', 'Minimum of KCSE C-minus\r\nOR certificate in transpor, fleet and logistics management'),
(91, 'Transport, fleet and logistics management', '', 'Higher diploma', 'School of business', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC', '10,000 per term', 'Minimum of KCSE C-minus\r\nOR diploma in transport, fleet and logistics management'),
(92, 'Secretarial studies ', '', 'Certificate', 'School of business', '4 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC', '10,000 per term', 'Minimum of KCSE D plain'),
(93, 'Secretarial studies ', '', 'Diploma', 'School of business', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC', '10,000 per term', 'Minimum of KCSE C-minus'),
(94, 'Food and beverage production and services', '', 'Diploma', 'School of tourism and hospitality ', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/ICM', '10,000 per term', 'Minimum of KCSE C-minus'),
(95, 'Food and beverage production and services', '', 'Certificate', 'School of tourism and hospitality ', '4 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/ICM', '10,000 per term', 'Minimum of KCSE D plain'),
(96, 'Food and beverage management', '', 'Certificate', 'School of tourism and hospitality ', '4 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/ICM', '10,000 per term', 'Minimum of KCSE D plain'),
(97, 'Food and beverage management', '', 'Diploma', 'School of tourism and hospitality ', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/ICM', '10,000 per term', 'Minimum of KCSE C-minus'),
(98, 'Airport operation and flight dispatch', '', 'Diploma', 'School of tourism and hospitality ', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'IATA', '10,000 per term', 'Minimum of KCSE C-minus'),
(99, 'Airport operation and flight dispatch', '', 'Certificate', 'School of tourism and hospitality ', '4 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'IATA', '10,000 per term', 'Minimum of KCSE D plain'),
(100, 'Catering and accommodation services', '', 'Diploma', 'School of tourism and hospitality ', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/ICM', '10,000 per term', 'Minimum of KCSE C-minus'),
(101, 'Catering and accommodation services', '', 'Certificate', 'School of tourism and hospitality ', '4 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/ICM', '10,000 per term', 'Minimum of KCSE D plain'),
(102, 'Galielo', '', 'Artisan', 'School of tourism and hospitality ', '3 months ', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'IATA', '10,000 fee', 'Tourism comp literacy '),
(103, 'Banking finance and monetary studies ', '', 'Diploma', 'School of accountancy', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC', '10,000 per term', 'Minimum of KCSE C-minus\r\nOr certificate in banking finance and monetary studies'),
(104, 'Banking finance and monetary studies ', '', 'Certificate', 'School of accountancy', '4 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC', '10,000 per term', 'Minimum of KCSE D plain'),
(105, 'Cooperative accountancy and management', '', 'Diploma', 'School of accountancy', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC', '10,000 per term', 'Minimum of KCSE C-minus\r\nOR certificate in cooperative accountancy and management'),
(106, 'Cooperative accountancy and management', '', 'Certificate', 'School of accountancy', '4 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC', '10,000 per term', 'Minimum of KCSE D plain'),
(107, 'Accountancy and financial management', '', 'Diploma', 'School of accountancy', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC', '10,000 per term', 'Minimum of KCSE C-MINUS\r\nOR certificate in accountancy and financial management'),
(108, 'Human resource management', 'Human resource management', 'Diploma', 'School of business', '18 months', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '14,000 per term ', 'Minimum of KCSE C-MINUS'),
(109, 'Human resource management', 'Human resource management', 'Certificate', 'School of business', '1 year', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '12,000 per term ', 'Minimum of KCSE D plain'),
(110, 'Human resource management', 'Human resource management', 'Higher diploma', 'School of business', '1 year', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '16,000 per term ', 'Minimum of diploma with a pass '),
(111, 'Entrepreneurship', 'Business management ', 'Higher diploma', 'School of business', '1year', 'Aberdeen College of Accountancy ACA', 'kitale', 'September', 'KNEC', '16000 per term ', 'Minimum of diploma with a pass'),
(112, 'Computer science', 'Computer science', 'Higher diploma', 'School of information and communication technology', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC', '10,000 per term', 'Minimum of KCSE C-MINUS'),
(113, 'Higher diploma certificate in information technology (IMIS)', 'Computer science', 'Higher diploma', 'School of information and communication technology', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC', '10,000 per term', 'Minimum of KCSE C-MINUS'),
(114, 'Higher diploma certificate in information technology (IMIS)', 'Computer science', 'Higher diploma', 'School of information and communication technology', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'IMIS', '10,000 per term', 'Minimum of KCSE C-MINUS'),
(115, 'Information communication technology', 'Computer sciences', 'Diploma', 'School of information and communication technology', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC', '10,000 per term', 'Minimum of KCSE C-MINUS'),
(116, 'Information communication technology', 'Computer sciences', 'Certificate', 'School of information and communication technology', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC', '10,000 per term', 'Minimum of KCSE D plain'),
(117, 'Information communication technology', 'Computer sciences', 'Certificate', 'School of information and communication technology', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC', '10,000 per term', 'Minimum of KCSE D plain'),
(118, 'Information communication technology technicians', 'Computer sciences', 'Certified courses ', 'School of information and communication technology', '2 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KASNEB', '10,000 per term', 'Minimum of KCSE C-MINUS'),
(119, 'Certified Information communication technology (CICT)', 'Computer sciences', 'Certified courses ', 'School of information and communication technology', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KASNEB', '10,000 per term', 'Minimum of KCSE C-MINUS'),
(120, 'Certificate in hardware maintenance', 'Computer sciences', 'Certificate', 'School of information and communication technology', '4 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/ABMA', '10,000 per term', 'Minimum of KCSE C-MINUS'),
(121, 'Certificate in computer hardware and maintenance', 'Computer sciences', 'Certificate', 'School of information and communication technology', '4 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC', '10,000 per term', 'Minimum of KCSE D plain'),
(122, 'Diploma in library science records and information management', 'Computer sciences', 'Diploma', 'School of information and communication technology', '4 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC', '10,000 per term', 'Minimum of KCSE C-MINUS'),
(123, 'Certificate in library science records and information management', 'Computer sciences', 'Certificate', 'School of information and communication technology', '2 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC', '10,000 per term', 'Minimum of KCSE D plain'),
(124, 'Clinical health records and information technology', 'Computer sciences', 'Diploma', 'School of information and communication technology', '6 terms', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/IFHIMS', '10,000 per term', 'Minimum of KCSE C-MINUS'),
(125, 'Higher diploma in business management', 'Business management ', 'Higher diploma', 'School of business', '4 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13,000 per term ', 'Diploma in any business course(KNEC) OR Degree'),
(126, 'Higher diploma in entrepreneurship development', 'Business management ', 'Higher diploma', 'School of business', '2 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Diploma in any business course (KNEC) OR Degree'),
(127, 'Higher diploma in human resources management', 'Human resource management', 'Higher diploma', 'School of business', '2 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Diploma in any business course (KNEC) OR Degree'),
(128, 'Higher diploma in library science and information studies ', 'Business management ', 'Higher diploma', 'School of business', '2 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Diploma in any related course (KNEC) OR Degree'),
(129, 'Higher diploma in archives and records management', 'Business management ', 'Higher diploma', 'School of business', '2 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Diploma in any related course (KNEC) OR Degree'),
(130, 'Diploma in business administration', 'Business management ', 'Diploma', 'School of business', '3 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE C-MINUS OR certificate in business related courses'),
(131, 'Diploma in business management', 'Business management ', 'Diploma', 'School of business', '3 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE C-MINUS OR certificate in business related courses'),
(132, 'Diploma in human resource management', 'Human resource management', 'Diploma', 'School of business', '3 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE C-MINUS OR certificate in business related courses'),
(133, 'Diploma in supply chain management ', 'Purchases and supplies', 'Diploma', 'School of business', '3 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE C-MINUS OR certificate in business related courses'),
(134, 'Diploma in purchasing and supplies', 'Purchases and supplies', 'Diploma', 'School of business', '6 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE C-MINUS OR certificate in business related courses'),
(135, 'Certificate in purchasing and supplies', 'Purchases and supplies', 'Certificate', 'School of business', '4 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE D plain'),
(136, 'Certificate in purchasing and supplies', 'Purchases and supplies', 'Certificate', 'School of business', '4 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE D plain'),
(137, 'Certificate in business administration', 'Business management ', 'Certificate', 'School of business', '4 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE D plain'),
(138, 'Certificate in human resource management', 'Human resource management', 'Certificate', 'School of business', '4 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE D plain'),
(140, 'Certificate in supply chain management', 'Purchases and supplies', 'Certificate', 'School of business', '3 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE D plain'),
(141, 'Certificate in accountancy', 'Accountancy ', 'Certificate', 'School of business', '3 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE D plain'),
(142, 'Certificate in banking and finance', 'Business management ', 'Certificate', 'School of business', '3 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE D plain'),
(143, 'Certificate in sales and marketing', 'Sales and marketing', 'Certificate', 'School of business', '4 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE D plain'),
(144, 'Certificate in  marketing', 'Sales and marketing', 'Certificate', 'School of business', '4 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE D plain'),
(145, 'Diploma in entrepreneurship', 'Business management ', 'Diploma', 'School of business', '6 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE C-MINUS OR certificate in business related course'),
(146, 'Certificate in entrepreneurship', 'Business management ', 'Certificate', 'School of business', '4 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE D plain'),
(147, 'Certificate in business management', 'Business management ', 'Certificate', 'School of business', '4 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE D plain'),
(148, 'Certificate in project management and development', 'Business management ', 'Certificate', 'School of business', '4 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE D plain'),
(149, 'Diploma in project management and development', 'Business management ', 'Diploma', 'School of business', '6 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE C-MINUS'),
(150, 'Diploma in investment', 'Business management ', 'Diploma', 'School of business', '6 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE C-MINUS'),
(151, 'Certificate in investment', 'Business management ', 'Certificate', 'School of business', '4 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE D plain'),
(152, 'Certificate in investment', 'Business management ', 'Certificate', 'School of business', '4 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE D plain'),
(153, 'Certificate in library science records and information science', 'Business management ', 'Certificate', 'School of business', '3 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE D plain'),
(154, 'Diploma in library science records and information science', 'Business management ', 'Diploma', 'School of business', '6 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE C-MINUS'),
(155, 'Diploma in cooperative management', 'Business management ', 'Diploma', 'School of business', '6 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE C-MINUS'),
(156, 'Certificate in cooperative management', 'Business management ', 'Certificate', 'School of business', '6 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE C-MINUS'),
(157, 'Certificate in cooperative management', 'Business management ', 'Certificate', 'School of business', '4 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE D plain'),
(158, 'Diploma in marketing', 'Sales and marketing', 'Diploma', 'School of business', '4 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE C-MINUS OR certificate in business related course'),
(159, 'Diploma in banking and finance', 'Business management ', 'Diploma', 'School of business', '6 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE C-MINUS or certificate in business related course'),
(160, 'Certificate in petroleum geo-science ', '-', 'Certificate', 'School of business', '4 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE D plain'),
(161, 'Diploma in petroleum geo-science ', '-', 'Diploma', 'School of business', '6 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE C-MINUS OR a certificate in petroleum geo-science'),
(162, 'Diploma in applied statistics', 'Statistics', 'Diploma', 'School of business', '6 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE C-MINUS'),
(163, 'Diploma in international freight management', 'Freight and logistics', 'Diploma', 'School of business', '6 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE C-MINUS'),
(164, 'Diploma in general agriculture', 'Agri-business', 'Diploma', 'School of business', '6 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE C-MINUS'),
(165, 'Diploma in entrepreneurial  agriculture', 'Agri-business', 'Diploma', 'School of business', '6 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE C-MINUS'),
(166, 'Diploma in maritime transport logistics', 'Freight and  Logistics', 'Diploma', 'School of business', '6 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE C-MINUS'),
(167, 'Certificate in road management', 'Freight and logistics', 'Certificate', 'School of business', '6 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE D plain '),
(168, 'Certificate in road management', 'Freight and logistics', 'Certificate', 'School of business', '4 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE D plain '),
(169, 'Certificate in clerical operations', 'Secretarial studies', 'Certificate', 'School of business', '4 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE D plain'),
(170, 'Certificate in nutrition and dietetics management', '-----', 'Certificate', 'School of tourism and hospitality ', '4 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13000 per term ', 'Minimum of KCSE D plain'),
(171, 'Diploma in airport operations', 'Aircraft operations', 'Diploma', 'School of aircraft operations', '8 months', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'IATA', '12000 per term ', 'Minimum of KCSE C- minus'),
(172, 'Diploma in air cargo introductory', 'Aircraft operations', 'Diploma', 'School of aircraft operations', '6 Dip', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'IATA', '12000 per term ', 'Minimum of KCSE C- minus'),
(173, 'dangerous goods and regulations(DGR)', 'Aircraft operations', 'Certificate', 'School of aircraft operations', '4 months', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'IATA', '5000 per months ', 'Open entry '),
(174, 'Diploma in cargo rating', 'Aircraft operations', 'Diploma', 'School of aircraft operations', '6 months', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'IATA', '4000 per month', 'Minimum of KCSE C- minus '),
(175, 'Diploma in marketing', 'Aircraft operations', 'Diploma', 'School of aircraft operations', '9 months', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'IATA', '7000 per month', 'Minimum of KCSE C- minus '),
(176, 'Diploma in clinical health records and information management', 'Business management', 'Diploma', 'School of business', '6 terms ', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/IFHIMS', '10,000 per term ', 'Minimum of KCSE C- minus\r\nOr a certificate in clinical health records and information management'),
(177, 'Higher diploma in clinical health records and information management', 'Business management', 'Higher diploma', 'School of business', '4 terms ', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC/IFHIMS', '10,000 per term ', 'Degree Or a diploma n clinical health records and information management'),
(178, 'Artisan in certificate sales ', 'Sales and marketing', 'Artisan', 'Artisan courses ', '4 terms ', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC', '10,000 per term ', 'Open entry '),
(179, 'Artisan in storekeeping', 'Storekeeping', 'Artisan', 'Artisan courses ', '4 terms ', 'Malindi Aviation Technical Training Institute', 'eldoret', 'September', 'KNEC', '10,000 per term ', 'Open entry '),
(180, 'Higher diploma in sales and marketing', 'Sales and marketing', 'Higher diploma', 'School of business', '2 terms', 'Uasin Gishu training institute (UGTI)', 'eldoret', 'September', 'KNEC/ABE/ICM', '10,000 per term ', 'Diploma in business related field '),
(181, 'Higher diploma in accountancy ', 'Sales and marketing', 'Higher diploma', 'School of business', '2 terms', 'Uasin Gishu training institute (UGTI)', 'eldoret', 'September', 'KNEC/ABE/ICM', '10,000 per term ', 'Diploma in business related field '),
(182, 'Higher diploma in accountancy ', 'Accountancy', 'Higher diploma', 'School of business', '2 terms', 'Uasin Gishu training institute (UGTI)', 'eldoret', 'September', 'KNEC/ABE/ICM', '10,000 per term ', 'Diploma in business related field '),
(183, 'Higher diploma in business administration', 'Business management', 'Higher diploma', 'School of business', '2 terms', 'Uasin Gishu training institute (UGTI)', 'eldoret', 'September', 'KNEC', '10,000 per term ', 'Diploma in a business related course '),
(184, 'Higher diploma in public relations and marketing', 'Public relations', 'Higher diploma', 'School of business', '2 terms', 'Uasin Gishu training institute (UGTI)', 'eldoret', 'September', 'KNEC', '10,000 per term ', 'Diploma in a business related course '),
(185, 'Higher diploma in cooperative management', 'Cooperative management', 'Higher diploma', 'School of business', '2 terms', 'Uasin Gishu training institute (UGTI)', 'eldoret', 'September', 'KNEC', '10,000 per term ', 'Diploma in a business related course '),
(186, 'Higher diploma in secretarial studies ', 'Cooperative management', 'Higher diploma', 'School of business', '2 terms', 'Uasin Gishu training institute (UGTI)', 'eldoret', 'September', 'KNEC', '10,000 per term ', 'Diploma in a business related course '),
(187, 'Higher diploma in secretarial studies ', 'Secretarial studies', 'Higher diploma', 'School of business', '2 terms', 'Uasin Gishu training institute (UGTI)', 'eldoret', 'September', 'KNEC', '10,000 per term ', 'Diploma in a business related course '),
(188, 'Diploma in secretarial studies ', 'Secretarial studies', 'Diploma', 'School of business', '6 terms', 'Uasin Gishu training institute (UGTI)', 'eldoret', 'September', 'KNEC', '10,000 per term ', 'Minimum of KCSE C- (minus)'),
(189, 'Diploma in sales and marketing', 'Sales and marketing', 'Diploma', 'School of business', '6 terms', 'Uasin Gishu training institute (UGTI)', 'eldoret', 'September', 'KNEC', '10,000 per term ', 'Minimum of KCSE C- (minus)'),
(190, 'Certificate of sales and marketing', 'Sales and marketing', 'Certificate', 'School of business', '2 terms', 'Uasin Gishu training institute (UGTI)', 'eldoret', 'September', 'KNEC', '8,000 per term', 'Minimum of KCSE D plain'),
(191, 'Diploma in accountancy', 'Accountancy', 'Diploma', 'School of business', '6 terms', 'Uasin Gishu training institute (UGTI)', 'eldoret', 'September', 'KNEC', '10,000 per term ', 'Minimum of KCSE C- (minus)'),
(192, 'Certificate in accountancy', 'Accountancy', 'Certificate', 'School of accountancy', '3 terms', 'Uasin Gishu training institute (UGTI)', 'eldoret', 'September', 'KNEC', '8,000 per term', 'Minimum of KCSE D plain'),
(193, 'Diploma in accountancy', 'Accountancy', 'Diploma', 'School of accountancy', '6 terms', 'Uasin Gishu training institute (UGTI)', 'eldoret', 'September', 'KNEC', '10,000 per term', 'Minimum of KCSE C- minus OR certificate in accountancy'),
(194, 'Higher diploma in accountancy', 'Accountancy', 'Higher diploma', 'School of accountancy', '6 terms', 'Uasin Gishu training institute (UGTI)', 'eldoret', 'September', 'KNEC', '10,000 per term', 'Minimum of KCSE C- minus OR diploma in accountancy'),
(195, ' diploma in human resource management', 'Human resource management', 'Diploma', 'School of business', '6 terms ', 'Uasin Gishu training institute (UGTI)', 'eldoret', 'September', 'KNEC', '10,000 per term ', 'Minimum of KCSE C- minus OR certificate in human resource development'),
(196, 'Certificate in human resource management', 'Human resource management', 'Certificate', 'School of business', '6 terms ', 'Uasin Gishu training institute (UGTI)', 'eldoret', 'September', 'KNEC', '10,000 per term ', 'Minimum of KCSE D plain'),
(197, 'Certificate in purchasing and supplies', 'Purchasing and supplies', 'Certificate', 'School of business', '2terms ', 'Uasin Gishu training institute (UGTI)', 'eldoret', 'September', 'KNEC', '10,000 per term ', 'Minimum of KCSE D plain'),
(198, 'Diploma in purchasing and supplies', 'Purchasing and supplies', 'Diploma', 'School of business', '6 terms ', 'Uasin Gishu training institute (UGTI)', 'eldoret', 'September', 'KNEC', '10,000 per term ', 'Minimum of KCSE C- minus OR certificate in purchasing and supplies'),
(199, 'Diploma in entrepreneurship', 'Entrepreneurship', 'Diploma', 'School of business', '6 terms', 'Uasin Gishu training institute (UGTI)', 'eldoret', 'September', 'KNEC', '10,000 per term ', 'Minimum of KCSE C- minus OR certificate in entrepreneurship'),
(200, 'Certificate in entrepreneurship', 'Entrepreneurship', 'Certificate', 'School of business', '2 terms', 'Uasin Gishu training institute (UGTI)', 'eldoret', 'September', 'KNEC', '8,000 per term ', 'Minimum of KCSE D plain'),
(201, 'Diploma in community development and social work', 'Social work', 'Diploma', 'School of social sciences', '7 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC/AIRADS', '13,000 per term ', 'Minimum of KCSE C- minus '),
(202, 'Certificate in community development and social work', 'Social work', 'Certificate', 'School of social sciences', '4 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC/AIRADS', '13,000 per term ', 'Minimum of KCSE D plain'),
(203, 'Diploma in development studies with entrepreneurship skills', 'Social work', 'Diploma', 'School of social sciences', '6 terms ', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13,000 per term ', 'Minimum of KCSE C- minus OR certificate in related course'),
(204, 'Certificate in development studies with entrepreneurship skills', 'Social work', 'Certificate', 'School of social sciences', '3 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13,000 per term ', 'Minimum of KCSE C- minus OR certificate in related course'),
(205, 'Diploma in hotel and catering management', 'Hotel and hospitality', 'Diploma', 'School of tourism and hospitality ', '6 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13,000 per term ', 'Minimum of KCSE C- minus OR certificate in related course'),
(206, 'Certificate in hotel and catering management', 'Hotel and hospitality', 'Certificate', 'School of tourism and hospitality ', '4 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13,000 per term ', 'Minimum of KCSE D plain'),
(207, 'Diploma in food and beverage management', 'Hotel and hospitality', 'Diploma', 'School of tourism and hospitality ', '6 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13,000 per term ', 'Minimum of KCSE C- minus OR certificate in related course'),
(208, 'Certificate in food and beverage management', 'Hotel and hospitality', 'Certificate', 'School of tourism and hospitality ', '6 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13,000 per term ', 'Minimum of KCSE C- minus OR certificate in related course'),
(209, 'Certificate in food and beverage management', 'Hotel and hospitality', 'Certificate', 'School of tourism and hospitality ', '4 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13,000 per term ', 'Minimum of KCSE C- minus OR certificate in related course'),
(210, 'Diploma in tourism management', 'Tourism', 'Diploma', 'School of tourism and hospitality ', '6 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13,000 per term ', 'Minimum of KCSE C- minus OR certificate in tourism management'),
(211, 'Certificate in tourism management', 'Tourism', 'Certificate', 'School of tourism and hospitality ', '4 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13,000 per term ', 'Minimum of KCSE D plain'),
(212, 'Diploma in tour guiding', 'Tourism', 'Diploma', 'School of tourism and hospitality ', '6 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13,000 per term ', 'Minimum of KCSE C- minus OR certificate in related courses'),
(213, 'Certificate in tour guiding', 'Tourism', 'Certificate', 'School of tourism and hospitality ', '4 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13,000 per term ', 'Minimum of KCSE D plain'),
(214, 'Diploma in textile technology', 'Textile', 'Diploma', 'School of tourism and hospitality ', '6 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13,000 per term ', 'Minimum of KCSE C- minus ');
INSERT INTO `all_course_details` (`course_id`, `course_name`, `depart`, `category`, `faculty`, `duration`, `institution`, `location`, `intake`, `exam_body`, `pricing`, `requirements`) VALUES
(215, 'Diploma in housekeeping and laundry', 'Hotel and hospitality', 'Diploma', 'School of tourism and hospitality ', '6 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13,000 per term ', 'Minimum of KCSE C- minus OR certificate in any related courses'),
(216, 'Certificate in housekeeping and laundry', 'Hotel and hospitality', 'Certificate', 'School of tourism and hospitality ', ' 4 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13,000 per term ', 'Minimum of KCSE D plain'),
(217, 'Certified public accountant section 1-6', 'Accountancy', 'Certified courses ', 'KASNEB courses', '5 months per section', 'Uasin Gishu training institute (UGTI)', 'eldoret', 'September', 'KASNEB', '12,000 per section', 'Minimum of KCSE C + plus '),
(218, 'Accounting Technicians Diploma (ATD) level 1-2', 'Accountancy', 'Certified courses ', 'KASNEB courses', '5 months per section', 'Superior college of accountancy ', 'eldoret', 'September', 'KASNEB', '15,000', 'Minimum of KCSE C+ plus '),
(219, 'Accounting Technicians Diploma (ATD) level 1-2', 'Accountancy', 'Certified courses ', 'KASNEB courses', '5 months per section', 'Superior college of accountancy ', 'eldoret', 'September', 'KASNEB', '15,000', 'Minimum of KCSE C+ plus '),
(220, 'Accounting Technicians Diploma (ATD) level 3', 'Accountancy', 'Certified courses ', 'KASNEB courses', '5 months per section', 'Superior college of accountancy ', 'eldoret', 'September', 'KASNEB', '16000 per section', 'Minimum of KCSE C+ plus'),
(221, 'Accounting Technicians Diploma (ATD) level 1-2', 'Accountancy', 'Certified courses ', 'KASNEB courses', '5 months per section', 'Superior college of accountancy ', 'eldoret', 'September', 'KASNEB', '15000 per section', 'Minimum of KCSE C+ plus'),
(222, 'Certified public accountant section 1-6', 'Accountancy', 'Certified courses ', 'KASNEB courses', '5 months per section', 'Superior college of accountancy ', 'eldoret', 'September', 'KASNEB', '16500 per section', 'Minimum of KCSE C+ plus '),
(223, 'Certified public investment and financial analyst', 'Finance ', 'Certified courses ', 'KASNEB courses', '5 months per section', 'Superior college of accountancy ', 'eldoret', 'September', 'KASNEB', '16500 per section', 'Minimum of KCSE C+ plus '),
(224, 'Certified public investment and financial analyst 1-6', 'Finance ', 'Certified courses ', 'KASNEB courses', '5 months per section', 'Superior college of accountancy ', 'eldoret', 'September', 'KASNEB', '17000 per section', 'Minimum of KCSE C+ plus '),
(225, 'Certified credit professional', 'Credit management', 'Certified courses ', 'KASNEB courses', '5 months per section', 'Alps college of business management sciences and technology', 'eldoret', 'September', 'KASNEB', '16500 per section', 'Minimum of KCSE C+ plus'),
(226, 'Certified Secretaries (CS)', 'Secretarial studies', 'Certified courses ', 'KASNEB courses', '5 months per section', 'Alps college of business management sciences and technology', 'eldoret', 'September', 'KASNEB', '16500 per section', 'Minimum of KCSE C+ plus'),
(227, 'Higher diploma in electrical engineering (electronic and telecommunications)', 'Electronics and telecommunications', 'Higher diploma', 'School of Engineering and Technology', '3 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13,000 per term ', 'Diploma in any electrical course (KNEC) OR degree in related course'),
(228, ' diploma in electrical and electronic engineering ', 'Electronics and telecommunications', 'Diploma', 'School of Engineering and Technology', '6 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13,000 per term ', 'Minimum of C- minus OR certificate in electrical/electronics engineering'),
(229, 'Certificate in welding and fabrication', 'Welding ', 'Certificate', 'School of Engineering and Technology', '4 terms ', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13,000 per term ', 'Minimum of KCSE D plain'),
(230, 'Diploma in welding and fabrication', 'Welding ', 'Diploma', 'School of Engineering and Technology', '6 terms ', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13,000 per term ', 'Minimum of KCSE C- minus OR certificate in welding and fabrication'),
(231, 'Certificate in electrical installation', 'Electronics and telecommunications', 'Certificate', 'School of Engineering and Technology', '4 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13,000 per term ', 'Minimum of KCSE D plain'),
(232, 'Certificate in electrical and electronics(telecommunications)', 'Electronics and telecommunications', 'Certificate', 'School of Engineering and Technology', '4 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13,000 per term ', 'Minimum of KCSE D plain'),
(233, 'Diploma in electrical and electronics(telecommunications)', 'Electronics and telecommunications', 'Diploma', 'School of Engineering and Technology', '6 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13,000 per term ', 'Minimum of KCSE C- minus OR certificate in electrical and electronics '),
(234, 'Accounting Technicians Diploma (ATD) level (I -III)', 'Accountancy', 'Certified courses ', 'KASNEB courses', '5 Months', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KASNEB', '12,000 per section', 'Minimum of KCSE C- minus '),
(235, 'Certified public accountant section (SECTION II)', 'Accountancy', 'Certified courses ', 'KASNEB courses', '5 months per section', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KASNEB', '12,000 per section', 'Minimum of KCSE C+ plus ( C+ in Maths and English)'),
(236, 'Certified public accountant section (SECTION III - IV)', 'Accountancy', 'Certified courses ', 'KASNEB courses', '5 months per section', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KASNEB', '12,000 per section', 'Minimum of KCSE C+ plus ( C+ in Maths and English)'),
(237, 'Certified public accountant section (SECTION III - IV)', 'Accountancy', 'Certified courses ', 'KASNEB courses', '5 months per section', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KASNEB', '12,000 per section', 'Pass in SECTION I & II'),
(238, 'Certified public accountant section (SECTION V - VI)', 'Accountancy', 'Certified courses ', 'KASNEB courses', '5 months per section', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KASNEB', '12,000 per section', 'Pass in SECTION III & IV'),
(239, 'Certified public accountant section (SECTION V - VI)', 'Accountancy', 'Certified courses ', 'KASNEB courses', '5 months per section', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KASNEB', '16,000 per section', 'Pass in SECTION III & IV'),
(240, 'Certificate in Accounting & management skills (CAMS) ', 'Accountancy', 'Certified courses ', 'KASNEB courses', '5 Months', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KASNEB', '12,000 per section', 'Minimum of KCSE D+ plus '),
(241, 'Art in beauty therapy', 'Beauty and therapy', 'Artisan', 'Artisan courses ', '2 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13,000 per term ', 'Minimum of KCPE certificate OR KCSE D (plain) and below'),
(242, 'Art in store keeping management', 'Storekeeping', 'Artisan', 'Artisan courses ', '2 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13,000 per term ', 'Minimum of KCPE certificate OR KCSE D (plain) and below'),
(243, 'Art in salesmanship', 'Sales and marketing', 'Artisan', 'Artisan courses ', '2 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13,000 per term ', 'Minimum of KCPE certificate OR KCSE D (plain) and below'),
(244, 'Art in secretarial studies', 'Secretarial studies', 'Artisan', 'Artisan courses ', '2 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13,000 per term ', 'Minimum of KCPE certificate OR KCSE D (plain) and below'),
(245, 'Art in general agriculture', 'Agri- business', 'Artisan', 'Artisan courses ', '2 terms', 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'eldoret', 'September', 'KNEC', '13,000 per term ', 'Minimum of KCPE certificate OR KCSE D (plain) and below');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category`) VALUES
(25, 'PHD'),
(26, 'Masters'),
(27, 'Degree'),
(28, 'Higher diploma'),
(29, 'Diploma'),
(30, 'Certified courses '),
(31, 'Certificate'),
(32, 'Computer studies '),
(33, 'Artisan'),
(34, 'Professional courses');

-- --------------------------------------------------------

--
-- Table structure for table `exam_body`
--

CREATE TABLE `exam_body` (
  `body_id` int(11) NOT NULL,
  `body_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_body`
--

INSERT INTO `exam_body` (`body_id`, `body_name`) VALUES
(12, 'KNEC'),
(13, 'KASNEB'),
(14, 'KNEC/ABE/ICM'),
(15, 'IATA'),
(16, 'KNEC/IFHIMS'),
(17, 'ABMA'),
(18, 'KNEC/ABMA'),
(19, 'IMIS'),
(20, 'ABE'),
(21, 'KNEC/ICM'),
(22, 'Gorthe'),
(23, 'Gorthe DELF'),
(24, 'ICM'),
(25, 'KNEC/AIRADS');

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `faculty_id` int(11) NOT NULL,
  `faculty_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`faculty_id`, `faculty_name`) VALUES
(15, 'School of economics'),
(16, 'School of environmental studies'),
(17, 'School of agriculture and biotechnology'),
(22, 'School of natural resource management'),
(23, 'School science'),
(24, 'School of nursing'),
(25, 'School of tourism and hospitality '),
(26, 'School of social sciences'),
(27, 'School of information sciences'),
(28, 'School of accountancy'),
(29, 'School of information and communication technology'),
(30, 'School of aircraft operations'),
(32, 'School of Aeronautical engineering  '),
(33, 'School of engineering and technology'),
(34, 'Computer packages'),
(37, 'KASNEB courses'),
(38, 'School of business and management sciences'),
(39, 'School of business'),
(40, 'Artisan courses '),
(41, 'School f education'),
(42, 'School of Engineering and Technology');

-- --------------------------------------------------------

--
-- Table structure for table `featured_courses`
--

CREATE TABLE `featured_courses` (
  `course_id` int(11) NOT NULL,
  `course_name` text NOT NULL,
  `category` text NOT NULL,
  `institution` text NOT NULL,
  `intake` text NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `featured_courses`
--

INSERT INTO `featured_courses` (`course_id`, `course_name`, `category`, `institution`, `intake`, `location`) VALUES
(1, 'Bsc. Information Technology', 'Degree', 'Multimedia Univeristy of Kenya', 'September', 'Nairobi'),
(2, 'Bsc. Mass Communication', 'Degree', 'UON', 'January', 'Nairobi'),
(3, 'Software Engineering', 'Diploma', 'Kenyatta University', 'May', 'Kisumu');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `location_id` int(11) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `location`) VALUES
(7, 'kitale'),
(16, 'eldoret'),
(18, 'kisumu'),
(19, 'Nakuru'),
(20, 'Nairobi'),
(21, 'Kakamega '),
(22, 'Nyeri'),
(23, 'Garissa'),
(24, 'Voi'),
(26, 'Mombasa');

-- --------------------------------------------------------

--
-- Table structure for table `universities`
--

CREATE TABLE `universities` (
  `uni_id` int(11) NOT NULL,
  `uni_name` text NOT NULL,
  `link` text NOT NULL,
  `phone_number` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `universities`
--

INSERT INTO `universities` (`uni_id`, `uni_name`, `link`, `phone_number`) VALUES
(15, 'Aberdeen College of Accountancy ACA', '', '0705493843'),
(17, 'Superior college of accountancy ', 'superiorcollege2018@gmail.com', '0729314006'),
(18, 'AFRICAN INSTITUTE OF RESEARCH AND DEVELOPMENT STUDIES (AIRADS)', 'www.airads.ac.ke', 'eldoret@airads.ac.ke'),
(19, 'Malindi Aviation Technical Training Institute', '', '0707723633'),
(20, 'Alps college of business management sciences and technology', 'alpscollege16@gmail.com', '0701276255 0720548886'),
(21, 'Uasin Gishu training institute (UGTI)', 'ugti09@gmail.com', '0727885781');

-- --------------------------------------------------------

--
-- Table structure for table `uni_login`
--

CREATE TABLE `uni_login` (
  `user_id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `institution` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uni_login`
--

INSERT INTO `uni_login` (`user_id`, `email`, `password`, `institution`) VALUES
(2, 'bnkimtai@gmail.com', '54321', 'Aberdeen College of Accountancy ACA'),
(3, 'kipeter95@gmail.com', '12345', 'Superior college of accountancy ');

-- --------------------------------------------------------

--
-- Table structure for table `users_details`
--

CREATE TABLE `users_details` (
  `user_id` int(11) NOT NULL,
  `username` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_details`
--

INSERT INTO `users_details` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'Ben', 'bnkimtai@gmail.com', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `all_course_details`
--
ALTER TABLE `all_course_details`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `exam_body`
--
ALTER TABLE `exam_body`
  ADD PRIMARY KEY (`body_id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `featured_courses`
--
ALTER TABLE `featured_courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `universities`
--
ALTER TABLE `universities`
  ADD PRIMARY KEY (`uni_id`);

--
-- Indexes for table `uni_login`
--
ALTER TABLE `uni_login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_details`
--
ALTER TABLE `users_details`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_details`
--
ALTER TABLE `admin_details`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `all_course_details`
--
ALTER TABLE `all_course_details`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `exam_body`
--
ALTER TABLE `exam_body`
  MODIFY `body_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `featured_courses`
--
ALTER TABLE `featured_courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `universities`
--
ALTER TABLE `universities`
  MODIFY `uni_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `uni_login`
--
ALTER TABLE `uni_login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users_details`
--
ALTER TABLE `users_details`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
