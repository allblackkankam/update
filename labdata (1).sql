-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2021 at 02:42 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `labdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `activate`
--

CREATE TABLE `activate` (
  `id` int(11) NOT NULL,
  `sessionid` varchar(50) NOT NULL DEFAULT '',
  `centerusername` varchar(50) NOT NULL DEFAULT '',
  `branch` varchar(11) NOT NULL DEFAULT '',
  `patientid` varchar(20) NOT NULL DEFAULT '',
  `activatedby` varchar(50) NOT NULL DEFAULT '',
  `visittype` tinyint(5) NOT NULL DEFAULT 1,
  `date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activate`
--

INSERT INTO `activate` (`id`, `sessionid`, `centerusername`, `branch`, `patientid`, `activatedby`, `visittype`, `date`) VALUES
(1, 'H60224-2021-1624724312', 'C002871450577', '526099782', 'H60224-2021', 'U579105540-2021', 1, '2021-06-26 16:18:32'),
(2, 'B42006-2021-1625562958', 'C002871450577', '526099782', 'B42006-2021', 'U579105540-2021', 1, '2021-07-06 09:15:58'),
(3, 'E63670-2021-1625563656', 'C002871450577', '526099782', 'E63670-2021', 'U579105540-2021', 1, '2021-07-06 09:27:36'),
(4, 'D11533-2021-1625565894', 'C002871450577', '526099782', 'D11533-2021', 'U579105540-2021', 1, '2021-07-06 10:04:54'),
(5, 'N21509-2021-1625566200', 'C002871450577', '526099782', 'N21509-2021', 'U579105540-2021', 1, '2021-07-06 10:10:00'),
(6, 'M26733-2021-1625566846', 'C002871450577', '526099782', 'M26733-2021', 'U579105540-2021', 1, '2021-07-06 10:20:46'),
(7, 'I99287-2021-1625567139', 'C002871450577', '526099782', 'I99287-2021', 'U579105540-2021', 1, '2021-07-06 10:25:39'),
(8, 'E28289-2021-1625567372', 'C002871450577', '526099782', 'E28289-2021', 'U579105540-2021', 1, '2021-07-06 10:29:32'),
(9, 'P47574-2021-1625567858', 'C002871450577', '526099782', 'P47574-2021', 'U579105540-2021', 1, '2021-07-06 10:37:38'),
(10, 'K24531-2021-1625569252', 'C002871450577', '526099782', 'K24531-2021', 'U579105540-2021', 1, '2021-07-06 11:00:52'),
(11, 'R42108-2021-1625570929', 'C002871450577', '526099782', 'R42108-2021', 'U579105540-2021', 1, '2021-07-06 11:28:49'),
(12, 'D09594-2021-1625571577', 'C002871450577', '526099782', 'D09594-2021', 'U579105540-2021', 1, '2021-07-06 11:39:37'),
(13, 'G62116-2021-1625571819', 'C002871450577', '526099782', 'G62116-2021', 'U579105540-2021', 1, '2021-07-06 11:43:39'),
(14, 'R11601-2021-1625572151', 'C002871450577', '526099782', 'R11601-2021', 'U579105540-2021', 1, '2021-07-06 11:49:11'),
(15, 'K29729-2021-1625572884', 'C002871450577', '526099782', 'K29729-2021', 'U579105540-2021', 1, '2021-07-06 12:01:24'),
(16, 'S27379-2021-1625576902', 'C002871450577', '526099782', 'S27379-2021', 'U579105540-2021', 1, '2021-07-06 13:08:22'),
(17, 'S51313-2021-1625577032', 'C002871450577', '526099782', 'S51313-2021', 'U579105540-2021', 1, '2021-07-06 13:10:32'),
(18, 'H07866-2021-1625577142', 'C002871450577', '526099782', 'H07866-2021', 'U579105540-2021', 1, '2021-07-06 13:12:22'),
(19, 'M55911-2021-1625577671', 'C002871450577', '526099782', 'M55911-2021', 'U579105540-2021', 1, '2021-07-06 13:21:11'),
(20, 'M88518-2021-1625649907', 'C002871450577', '', 'M88518-2021', 'U060600711380', 1, '2021-07-07 09:25:07'),
(21, 'h60224-2021-1625664952', 'C002871450577', '526099782', 'h60224-2021', 'U579105540-2021', 0, '2021-07-07 13:35:52'),
(22, 'h60224-2021-1628515746', 'C002871450577', '526099782', 'h60224-2021', 'U579105540-2021', 0, '2021-08-09 13:29:06'),
(23, 'h60224-2021-1631956565', 'C002871450577', '', 'h60224-2021', 'U060600711380', 0, '2021-09-18 09:16:05'),
(24, 'h60224-2021-1633358541', 'C002871450577', '526099782', 'h60224-2021', 'U579105540-2021', 0, '2021-10-04 14:42:21');

-- --------------------------------------------------------

--
-- Table structure for table `adminusers`
--

CREATE TABLE `adminusers` (
  `id` int(11) NOT NULL,
  `centername` varchar(100) NOT NULL DEFAULT '',
  `address` varchar(100) NOT NULL DEFAULT '',
  `contact` varchar(15) NOT NULL DEFAULT '',
  `location` varchar(100) NOT NULL DEFAULT '',
  `reg_date` datetime NOT NULL,
  `email` varchar(50) NOT NULL DEFAULT '',
  `country` varchar(50) NOT NULL DEFAULT '',
  `region` varchar(20) NOT NULL DEFAULT '',
  `logo` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `resetpin` varchar(20) NOT NULL DEFAULT '',
  `pkg` tinyint(5) DEFAULT 2,
  `verifyid` varchar(20) NOT NULL DEFAULT '',
  `api_key` varchar(50) NOT NULL DEFAULT '',
  `api_secret` varchar(50) NOT NULL DEFAULT '',
  `claim` text DEFAULT NULL,
  `scheme_name` varchar(100) NOT NULL DEFAULT '',
  `signature` varchar(50) NOT NULL DEFAULT '',
  `facility_code` varchar(20) NOT NULL DEFAULT '',
  `facility_type` tinyint(5) NOT NULL DEFAULT 0,
  `headerpic` varchar(20) NOT NULL DEFAULT '',
  `footerpic` text DEFAULT NULL,
  `printsetup` text DEFAULT NULL,
  `receiptsize` tinyint(2) NOT NULL DEFAULT 1,
  `secret_key` varchar(255) NOT NULL DEFAULT '',
  `lck` tinyint(5) NOT NULL DEFAULT 0,
  `npd` datetime DEFAULT NULL,
  `moreoptions` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminusers`
--

INSERT INTO `adminusers` (`id`, `centername`, `address`, `contact`, `location`, `reg_date`, `email`, `country`, `region`, `logo`, `status`, `resetpin`, `pkg`, `verifyid`, `api_key`, `api_secret`, `claim`, `scheme_name`, `signature`, `facility_code`, `facility_type`, `headerpic`, `footerpic`, `printsetup`, `receiptsize`, `secret_key`, `lck`, `npd`, `moreoptions`) VALUES
(34, 'Medray Diagnostics Center', 'Behind Top Up Pharmacy Community 9 Near Gen. Hospital', '0261972815', 'Tema Comm. 9', '2021-05-27 10:42:30', 'adeleannorbea2266@gamil.com', 'Ghana', 'GREATER ACCRA', '9944993520.png', 0, '', 2, 'C002871450577', '', '', NULL, '', '', '', 0, '', NULL, 'YTo1OntpOjA7czoxOiIwIjtpOjE7czoxOiIwIjtpOjI7czoxOiIxIjtpOjM7czoxOiIwIjtpOjQ7czoxOiIwIjt9', 2, '162211215044816', 0, NULL, 'YToyOntpOjA7czoxOiIwIjtpOjE7czoxOiIwIjt9');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int(11) NOT NULL,
  `centerusername` varchar(50) NOT NULL DEFAULT '',
  `enteredby` varchar(50) NOT NULL DEFAULT '',
  `branchname` varchar(100) NOT NULL DEFAULT '',
  `branchcode` varchar(20) NOT NULL DEFAULT '',
  `specialcode` varchar(5) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `centerusername`, `enteredby`, `branchname`, `branchcode`, `specialcode`, `date`) VALUES
(16, 'C002871450577', '', 'tema', '526099782', '', '2021-05-27 10:55:19');

-- --------------------------------------------------------

--
-- Table structure for table `commonresult`
--

CREATE TABLE `commonresult` (
  `id` int(11) NOT NULL,
  `centerusername` varchar(50) NOT NULL DEFAULT '',
  `enteredby` varchar(50) NOT NULL DEFAULT '',
  `commonresult` varchar(100) NOT NULL DEFAULT '',
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commonresult`
--

INSERT INTO `commonresult` (`id`, `centerusername`, `enteredby`, `commonresult`, `date`) VALUES
(1, 'C002871450577', '', 'Amber', '2021-05-27 14:25:56'),
(2, 'C002871450577', '', 'Clear', '2021-05-27 14:25:56'),
(3, 'C002871450577', '', 'Cloudy', '2021-05-27 14:25:56'),
(4, 'C002871450577', '', 'Coitus Interruptus', '2021-05-27 14:25:56'),
(5, 'C002871450577', '', 'Coliforms Isolated', '2021-05-27 14:25:56'),
(6, 'C002871450577', '', 'Complete Liquefaction', '2021-05-27 14:25:56'),
(7, 'C002871450577', '', 'Formed Specimen', '2021-05-27 14:25:56'),
(8, 'C002871450577', '', 'Full Defect', '2021-05-27 14:25:56'),
(9, 'C002871450577', '', 'Grey', '2021-05-27 14:25:56'),
(10, 'C002871450577', '', 'Hazy', '2021-05-27 14:25:56'),
(11, 'C002871450577', '', 'Intestinal Flagellates Present', '2021-05-27 14:25:56'),
(12, 'C002871450577', '', 'Light Amber', '2021-05-27 14:25:56'),
(13, 'C002871450577', '', 'Loose Specimen', '2021-05-27 14:25:56'),
(14, 'C002871450577', '', 'Malaria Parasites Present', '2021-05-27 14:25:56'),
(15, 'C002871450577', '', 'Masturbation', '2021-05-27 14:25:56'),
(16, 'C002871450577', '', 'Negative', '2021-05-27 14:25:56'),
(17, 'C002871450577', '', 'Nil', '2021-05-27 14:25:56'),
(18, 'C002871450577', '', 'No AFB Seen', '2021-05-27 14:25:56'),
(19, 'C002871450577', '', 'No Bacterial Growth', '2021-05-27 14:25:56'),
(20, 'C002871450577', '', 'No Malaria Parasites Seen', '2021-05-27 14:25:56'),
(21, 'C002871450577', '', 'No Salmonella Or Shigella Isolated', '2021-05-27 14:25:56'),
(22, 'C002871450577', '', 'Non-Reactive', '2021-05-27 14:25:56'),
(23, 'C002871450577', '', 'Normal', '2021-05-27 14:25:56'),
(24, 'C002871450577', '', 'Not Seen', '2021-05-27 14:25:56'),
(25, 'C002871450577', '', 'O Rh(D) Positive', '2021-05-27 14:25:56'),
(26, 'C002871450577', '', 'Partial Defect', '2021-05-27 14:25:56'),
(27, 'C002871450577', '', 'Platelets-Appear Adequate', '2021-05-27 14:25:56'),
(28, 'C002871450577', '', 'Positive', '2021-05-27 14:25:56'),
(29, 'C002871450577', '', 'Pseudomonas Aeruginosa', '2021-05-27 14:25:56'),
(30, 'C002871450577', '', 'RBC-Normocytic Normochromic', '2021-05-27 14:25:56'),
(31, 'C002871450577', '', 'Reactive', '2021-05-27 14:25:56'),
(32, 'C002871450577', '', 'Resistant', '2021-05-27 14:25:56'),
(33, 'C002871450577', '', 'Sensitive', '2021-05-27 14:25:56'),
(34, 'C002871450577', '', 'Staphylococcus Aureus Isolated', '2021-05-27 14:25:56'),
(35, 'C002871450577', '', 'Straw', '2021-05-27 14:25:56'),
(36, 'C002871450577', '', 'Trace', '2021-05-27 14:25:56'),
(37, 'C002871450577', '', 'WBC-Normal Picture', '2021-05-27 14:25:56'),
(38, 'C002871450577', '', 'Escherichia Coli Isolated ??????????????', '2021-05-27 14:25:56'),
(39, 'C002871450577', '', 'Streptococcus Faecalis Isolated', '2021-05-27 14:25:56'),
(40, 'C002871450577', '', 'Enterobacter Species ??', '2021-05-27 14:25:56'),
(41, 'C002871450577', '', 'Semi-formed Specimen', '2021-05-27 14:25:56'),
(42, 'C002871450577', '', 'Present', '2021-05-27 14:25:56'),
(43, 'C002871450577', '', 'Calcium Oxalate Present', '2021-05-27 14:25:56'),
(44, 'C002871450577', '', 'Yeastlike Cells Present', '2021-05-27 14:25:56'),
(45, 'C002871450577', '', 'Lactobacillus Species', '2021-05-27 14:25:56'),
(46, 'C002871450577', '', 'Citrobacter Freundii Isolated', '2021-05-27 14:25:56'),
(47, 'C002871450577', '', 'Deep Amber', '2021-05-27 14:25:56'),
(48, 'C002871450577', '', 'No Onchocerca Volvulus Seen', '2021-05-27 14:25:56'),
(49, 'C002871450577', '', 'No L.E. Cells Seen', '2021-05-27 14:25:56'),
(50, 'C002871450577', '', 'E-coli Isolated', '2021-05-27 14:25:56'),
(51, 'C002871450577', '', 'Beta Haemolytic Streptococcus Species Isolated', '2021-05-27 14:25:56'),
(52, 'C002871450577', '', 'No Fungal Elements Seen', '2021-05-27 14:25:56'),
(53, 'C002871450577', '', 'DELUXE', '2021-05-27 14:25:56'),
(54, 'C002871450577', '', 'Slimy Specimen', '2021-05-27 14:25:56'),
(55, 'C002871450577', '', 'Normospermia', '2021-05-27 14:25:56'),
(56, 'C002871450577', '', 'Azoospermia', '2021-05-27 14:25:56'),
(57, 'C002871450577', '', 'Incomplete Liquefaction', '2021-05-27 14:25:56'),
(58, 'C002871450577', '', 'Increased', '2021-05-27 14:25:56'),
(59, 'C002871450577', '', 'Proteus Mirabilis Isolated', '2021-05-27 14:25:56'),
(60, 'C002871450577', '', 'Candida Species Isolated', '2021-05-27 14:25:56'),
(61, 'C002871450577', '', 'Normal Flora Only', '2021-05-27 14:25:56'),
(62, 'C002871450577', '', 'Alpha Haemolytic Streptococcus Isolated', '2021-05-27 14:25:56'),
(63, 'C002871450577', '', 'Granular Casts Present', '2021-05-27 14:25:56'),
(64, 'C002871450577', '', 'Mixed Growth, Please Repeat', '2021-05-27 14:25:56'),
(65, 'C002871450577', '', 'Amorphous Phosphate Present', '2021-05-27 14:25:56'),
(66, 'C002871450577', '', 'No Helminth Ova Seen', '2021-05-27 14:25:56'),
(67, 'C002871450577', '', 'Gardnerella Species Seen', '2021-05-27 14:25:56'),
(68, 'C002871450577', '', 'Oligospermia', '2021-05-27 14:25:56'),
(69, 'C002871450577', '', 'Commensals Only', '2021-05-27 14:25:56'),
(70, 'C002871450577', '', 'No Significant Growth', '2021-05-27 14:25:56'),
(71, 'C002871450577', '', 'Mucoid', '2021-05-27 14:25:56'),
(72, 'C002871450577', '', 'Coagulase Negative Staphylococcus', '2021-05-27 14:25:56'),
(73, 'C002871450577', '', 'Klebsiella Pneumoniae Isolated', '2021-05-27 14:25:56'),
(74, 'C002871450577', '', 'No Vibrio Cholerae Isolated', '2021-05-27 14:25:56'),
(75, 'C002871450577', '', 'Hyaline Present', '2021-05-27 14:25:56'),
(76, 'C002871450577', '', 'Acinetobacter Species', '2021-05-27 14:25:56'),
(77, 'C002871450577', '', 'No Microfilarae Seen', '2021-05-27 14:25:56'),
(78, 'C002871450577', '', 'No Pathogen Isolated', '2021-05-27 14:25:56'),
(79, 'C002871450577', '', 'Enterococcus Species', '2021-05-27 14:25:56'),
(80, 'C002871450577', '', 'Colourless', '2021-05-27 14:25:56'),
(81, 'C002871450577', '', 'No Organism Seen', '2021-05-27 14:25:56'),
(82, 'C002871450577', '', 'Salmonella Species ??isolated', '2021-05-27 14:25:56'),
(83, 'C002871450577', '', 'Bacillus Species Only', '2021-05-27 14:25:56'),
(84, 'C002871450577', '', 'Fungal Elements Present', '2021-05-27 14:25:56'),
(85, 'C002871450577', '', 'Over-range', '2021-05-27 14:25:56'),
(86, 'C002871450577', '', 'Indeterminate', '2021-05-27 14:25:56'),
(87, 'C002871450577', '', 'See Comment', '2021-05-27 14:25:56'),
(88, 'C002871450577', '', 'Streptococcus Viridans Isolated', '2021-05-27 14:25:56'),
(89, 'C002871450577', '', 'Streptococcus Pneumoniae Isolated', '2021-05-27 14:25:56'),
(90, 'C002871450577', '', 'Staphylococcus Saprophyticus Isolated', '2021-05-27 14:25:56'),
(91, 'C002871450577', '', 'Proteus Vulgaris Isolated', '2021-05-27 14:25:56'),
(92, 'C002871450577', '', 'Bacillus Species, Probably A Contaminant', '2021-05-27 14:25:56'),
(93, 'C002871450577', '', 'Proteus Species Isolated', '2021-05-27 14:25:56'),
(94, 'C002871450577', '', 'Morganella Morganii Isolated', '2021-05-27 14:25:56'),
(95, 'C002871450577', '', 'Cervical', '2021-05-27 14:25:56'),
(96, 'C002871450577', '', 'No Bacterial Growth After 7 Days Of Incubation', '2021-05-27 14:25:56'),
(97, 'C002871450577', '', 'No Bacterial Growth After 48 Hours Of Incubation', '2021-05-27 14:25:56'),
(98, 'C002871450577', '', 'Uric Acid Crystals Present', '2021-05-27 14:25:56'),
(99, 'C002871450577', '', 'Active', '2021-05-27 14:25:56'),
(100, 'C002871450577', '', 'Sluggish', '2021-05-27 14:25:56'),
(101, 'C002871450577', '', 'Triple Phosphates Present', '2021-05-27 14:25:56'),
(102, 'C002871450577', '', 'Viable', '2021-05-27 14:25:56'),
(103, 'C002871450577', '', 'Appear Normal', '2021-05-27 14:25:56'),
(104, 'C002871450577', '', 'Providencia Species Isolated', '2021-05-27 14:25:56'),
(105, 'C002871450577', '', 'RBC-Normocytic Normochromic, WBC- Morphologically', '2021-05-27 14:25:56'),
(106, 'C002871450577', '', 'Staphylococcus Epidermidis Only', '2021-05-27 14:25:56'),
(107, 'C002871450577', '', 'Positive (P. Falciparum)', '2021-05-27 14:25:56'),
(108, 'C002871450577', '', 'Negative (P. Falciparum)', '2021-05-27 14:25:56'),
(109, 'C002871450577', '', 'Bagulase Negative', '2021-05-27 14:25:56'),
(110, 'C002871450577', '', 'Plasmodium Falciparum', '2021-05-27 14:25:56'),
(111, 'C002871450577', '', 'Plasmodium Vivax', '2021-05-27 14:25:56'),
(112, 'C002871450577', '', 'Plasmodium Ovalae', '2021-05-27 14:25:56'),
(113, 'C002871450577', '', 'Plasmodium Malariae', '2021-05-27 14:25:56'),
(114, 'C002871450577', '', 'Equivocal', '2021-05-27 14:25:56'),
(115, 'C002871450577', '', 'A Rh(D) Positive', '2021-05-27 14:25:56'),
(116, 'C002871450577', '', 'A Rh(D) Negative', '2021-05-27 14:25:56'),
(117, 'C002871450577', '', 'B Rh(D) Positive', '2021-05-27 14:25:56'),
(118, 'C002871450577', '', 'B Rh(D) Negative', '2021-05-27 14:25:56'),
(119, 'C002871450577', '', 'AB Rh(D) Positive', '2021-05-27 14:25:56'),
(120, 'C002871450577', '', 'AB Rh(D) Negative', '2021-05-27 14:25:56'),
(121, 'C002871450577', '', 'O Rh(D) Negative', '2021-05-27 14:25:56'),
(122, 'C002871450577', '', 'No Defect', '2021-05-27 14:25:56'),
(123, 'C002871450577', '', 'Turbid', '2021-05-27 14:25:56'),
(124, 'C002871450577', '', 'NULL', '2021-05-27 14:25:56'),
(125, 'C002871450577', '', 'Present (+)', '2021-05-27 14:25:56'),
(126, 'C002871450577', '', 'Present (++)', '2021-05-27 14:25:56'),
(127, 'C002871450577', '', 'Present (+++)', '2021-05-27 14:25:56'),
(128, 'C002871450577', '', 'Parasites/ul', '2021-05-27 14:25:56'),
(129, 'C002871450577', '', 'Liquid based cervical PAP smear.', '2021-06-26 15:51:43');

-- --------------------------------------------------------

--
-- Table structure for table `createtest`
--

CREATE TABLE `createtest` (
  `id` int(11) NOT NULL,
  `centerusername` varchar(50) NOT NULL DEFAULT '',
  `enteredby` varchar(50) NOT NULL DEFAULT '',
  `branch` varchar(50) NOT NULL DEFAULT '',
  `patientid` varchar(20) NOT NULL DEFAULT '',
  `testtype` tinyint(5) NOT NULL DEFAULT 1,
  `sessionid` varchar(50) NOT NULL,
  `labno` varchar(50) NOT NULL DEFAULT '',
  `doctor` varchar(100) NOT NULL DEFAULT '',
  `newdoctor` varchar(50) NOT NULL DEFAULT '',
  `mode` varchar(10) NOT NULL DEFAULT '',
  `deposit` varchar(50) NOT NULL DEFAULT '0',
  `insurancecover` varchar(11) NOT NULL DEFAULT '0.00',
  `discount` varchar(5) NOT NULL DEFAULT '0',
  `debt` varchar(11) NOT NULL DEFAULT '0.00',
  `topup` varchar(11) NOT NULL DEFAULT '0.00',
  `discounttype` varchar(3) NOT NULL DEFAULT '',
  `selectedtest` text DEFAULT NULL,
  `incaseofrefund` text DEFAULT NULL,
  `invoicenumber` varchar(11) NOT NULL DEFAULT '',
  `teststatus` varchar(5) NOT NULL DEFAULT '0',
  `statusdate` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `membershipcode` varchar(20) NOT NULL DEFAULT '',
  `agentcode` varchar(50) NOT NULL DEFAULT '',
  `viewstatus` tinyint(3) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `createtest`
--

INSERT INTO `createtest` (`id`, `centerusername`, `enteredby`, `branch`, `patientid`, `testtype`, `sessionid`, `labno`, `doctor`, `newdoctor`, `mode`, `deposit`, `insurancecover`, `discount`, `debt`, `topup`, `discounttype`, `selectedtest`, `incaseofrefund`, `invoicenumber`, `teststatus`, `statusdate`, `date`, `membershipcode`, `agentcode`, `viewstatus`) VALUES
(1, 'C002871450577', 'U579105540-2021', '526099782', 'H60224-2021', 1, 'H60224-2021-1624724312', 'L614406706-2021', '', '', 'Cash', '10', '0', '5', '0.00', '0', '2', 'YToxOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjI1OiJCL0YgRm9yIE1hbGFyaWEgUGFyYXNpdGVzIjtzOjQ6ImNvc3QiO3M6MjoiMTUiO3M6MTI6InNlbGVjdGVkY29zdCI7czo1OiIxNS4wMCI7czo5OiJuaGlzcHJpY2UiO3M6MToiMCI7czo3OiJwcml2YXRlIjtzOjE6IjAiO319', 'YToxOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjI1OiJCL0YgRm9yIE1hbGFyaWEgUGFyYXNpdGVzIjtzOjQ6ImNvc3QiO3M6MjoiMTUiO3M6MTI6InNlbGVjdGVkY29zdCI7czo1OiIxNS4wMCI7czo5OiJuaGlzcHJpY2UiO3M6MToiMCI7czo3OiJwcml2YXRlIjtzOjE6IjAiO319', '2021321823', '0', NULL, '2021-06-26 16:23:13', '', '', 1),
(2, 'C002871450577', 'U579105540-2021', '526099782', 'H60224-2021', 1, 'H60224-2021-1624724312', 'L869707862-2021', '', '', 'Insurance', '0', '25.00', '0', '0.00', '0', '1', 'YToxOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjI6IkhCIjtzOjQ6ImNvc3QiO3M6MjoiMjUiO3M6MTI6InNlbGVjdGVkY29zdCI7czo1OiIyNS4wMCI7czo5OiJuaGlzcHJpY2UiO3M6MToiMCI7czo3OiJwcml2YXRlIjtzOjE6IjAiO319', 'YToxOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjI6IkhCIjtzOjQ6ImNvc3QiO3M6MjoiMjUiO3M6MTI6InNlbGVjdGVkY29zdCI7czo1OiIyNS4wMCI7czo5OiJuaGlzcHJpY2UiO3M6MToiMCI7czo3OiJwcml2YXRlIjtzOjE6IjAiO319', '2021781425', '0', NULL, '2021-06-26 16:31:06', '', '865381534', 1),
(3, 'C002871450577', 'U579105540-2021', '526099782', 'B42006-2021', 1, 'B42006-2021-1625562958', 'L212678541-2021', '', '', 'Cash', '70.00', '0', '0', '0.00', '0', '1', 'YToxOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjE0OiJTZW1lbiBBbmFseXNpcyI7czo0OiJjb3N0IjtzOjI6IjcwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiNzAuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoxOiIwIjt9fQ==', 'YToxOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjE0OiJTZW1lbiBBbmFseXNpcyI7czo0OiJjb3N0IjtzOjI6IjcwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiNzAuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoxOiIwIjt9fQ==', '2021639699', '0', NULL, '2021-07-06 09:19:45', '', '', 1),
(4, 'C002871450577', 'U579105540-2021', '526099782', 'E63670-2021', 2, 'E63670-2021-1625563656', 'L542835467-2021', '', '', 'Cash', '70.00', '0', '0', '0.00', '0', '1', 'YToxOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjIzOiIxc3QgVHJpbWVzdGVyIFVTRyAoT0JTKSI7czo0OiJjb3N0IjtzOjI6IjcwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiNzAuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoyOiI4MCI7fX0=', 'YToxOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjIzOiIxc3QgVHJpbWVzdGVyIFVTRyAoT0JTKSI7czo0OiJjb3N0IjtzOjI6IjcwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiNzAuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoyOiI4MCI7fX0=', '2021468936', '1', '2021-07-06 11:14:12', '2021-07-06 09:28:34', '', '', 1),
(5, 'C002871450577', 'U579105540-2021', '526099782', 'D11533-2021', 2, 'D11533-2021-1625565894', 'L177596111-2021', '', '', 'Cash', '150.00', '0', '0', '0.00', '0', '1', 'YToxOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjExOiJBbm9tYWx5IFVTRyI7czo0OiJjb3N0IjtzOjM6IjE1MCI7czoxMjoic2VsZWN0ZWRjb3N0IjtzOjY6IjE1MC4wMCI7czo5OiJuaGlzcHJpY2UiO3M6MToiMCI7czo3OiJwcml2YXRlIjtzOjM6IjE2MCI7fX0=', 'YToxOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjExOiJBbm9tYWx5IFVTRyI7czo0OiJjb3N0IjtzOjM6IjE1MCI7czoxMjoic2VsZWN0ZWRjb3N0IjtzOjY6IjE1MC4wMCI7czo5OiJuaGlzcHJpY2UiO3M6MToiMCI7czo3OiJwcml2YXRlIjtzOjM6IjE2MCI7fX0=', '2021297245', '0', NULL, '2021-07-06 10:07:19', '', '', 1),
(6, 'C002871450577', 'U579105540-2021', '526099782', 'N21509-2021', 2, 'N21509-2021-1625566200', 'L503619567-2021', '', '', 'Cash', '70.00', '0', '0', '0.00', '0', '1', 'YToxOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjEyOiJMVCBBcm0gWC1SYXkiO3M6NDoiY29zdCI7czoyOiI3MCI7czoxMjoic2VsZWN0ZWRjb3N0IjtzOjU6IjcwLjAwIjtzOjk6Im5oaXNwcmljZSI7czoxOiIwIjtzOjc6InByaXZhdGUiO3M6MjoiODAiO319', 'YToxOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjEyOiJMVCBBcm0gWC1SYXkiO3M6NDoiY29zdCI7czoyOiI3MCI7czoxMjoic2VsZWN0ZWRjb3N0IjtzOjU6IjcwLjAwIjtzOjk6Im5oaXNwcmljZSI7czoxOiIwIjtzOjc6InByaXZhdGUiO3M6MjoiODAiO319', '2021797758', '0', NULL, '2021-07-06 10:12:29', '', '', 1),
(7, 'C002871450577', 'U579105540-2021', '526099782', 'M26733-2021', 2, 'M26733-2021-1625566846', 'L420259226-2021', '', '', 'Cash', '70.00', '0', '0', '0.00', '0', '1', 'YToxOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjExOiJDaGVzdCBYLVJheSI7czo0OiJjb3N0IjtzOjI6IjcwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiNzAuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoyOiI4MCI7fX0=', 'YToxOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjExOiJDaGVzdCBYLVJheSI7czo0OiJjb3N0IjtzOjI6IjcwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiNzAuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoyOiI4MCI7fX0=', '2021270222', '0', NULL, '2021-07-06 10:23:09', '', '', 1),
(8, 'C002871450577', 'U579105540-2021', '526099782', 'I99287-2021', 2, 'I99287-2021-1625567139', 'L741883525-2021', '', '', 'Cash', '110.00', '0', '0', '0.00', '0', '1', 'YToyOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjEyOiJMdW1iYXIgU3BpbmUiO3M6NDoiY29zdCI7czoyOiI3MCI7czoxMjoic2VsZWN0ZWRjb3N0IjtzOjU6IjcwLjAwIjtzOjk6Im5oaXNwcmljZSI7czoxOiIwIjtzOjc6InByaXZhdGUiO3M6MjoiODAiO31pOjI7YTo1OntzOjg6InRlc3RuYW1lIjtzOjI0OiJTYW1lIERheSBSZXBvcnQoIFNpbmdsZSkiO3M6NDoiY29zdCI7czoyOiI0MCI7czoxMjoic2VsZWN0ZWRjb3N0IjtzOjU6IjQwLjAwIjtzOjk6Im5oaXNwcmljZSI7czoxOiIwIjtzOjc6InByaXZhdGUiO3M6MToiMCI7fX0=', 'YToyOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjEyOiJMdW1iYXIgU3BpbmUiO3M6NDoiY29zdCI7czoyOiI3MCI7czoxMjoic2VsZWN0ZWRjb3N0IjtzOjU6IjcwLjAwIjtzOjk6Im5oaXNwcmljZSI7czoxOiIwIjtzOjc6InByaXZhdGUiO3M6MjoiODAiO31pOjI7YTo1OntzOjg6InRlc3RuYW1lIjtzOjI0OiJTYW1lIERheSBSZXBvcnQoIFNpbmdsZSkiO3M6NDoiY29zdCI7czoyOiI0MCI7czoxMjoic2VsZWN0ZWRjb3N0IjtzOjU6IjQwLjAwIjtzOjk6Im5oaXNwcmljZSI7czoxOiIwIjtzOjc6InByaXZhdGUiO3M6MToiMCI7fX0=', '2021035784', '0', NULL, '2021-07-06 10:27:33', '', '', 1),
(10, 'C002871450577', 'U579105540-2021', '526099782', 'E28289-2021', 2, 'E28289-2021-1625567372', 'L917364227-2021', '', '', 'Cash', '190.00', '0', '0', '0.00', '0', '1', 'YTo0OntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjIyOiJGdWxsIEJsb29kIENvdW50IChGQkMpIjtzOjQ6ImNvc3QiO3M6MjoiNDAiO3M6MTI6InNlbGVjdGVkY29zdCI7czo1OiI0MC4wMCI7czo5OiJuaGlzcHJpY2UiO3M6MToiMCI7czo3OiJwcml2YXRlIjtzOjE6IjAiO31pOjI7YTo1OntzOjg6InRlc3RuYW1lIjtzOjIwOiJILiBQeWxvcmkgQWIgKFNlcnVtKSI7czo0OiJjb3N0IjtzOjI6IjYwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiNjAuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoxOiIwIjt9aTozO2E6NTp7czo4OiJ0ZXN0bmFtZSI7czo1OiJXaWRhbCI7czo0OiJjb3N0IjtzOjI6IjIwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiMjAuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoxOiIwIjt9aTo0O2E6NTp7czo4OiJ0ZXN0bmFtZSI7czoxMDoiUEVMVklDIFVTRyI7czo0OiJjb3N0IjtzOjI6IjcwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiNzAuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoxOiIwIjt9fQ==', 'YTo0OntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjIyOiJGdWxsIEJsb29kIENvdW50IChGQkMpIjtzOjQ6ImNvc3QiO3M6MjoiNDAiO3M6MTI6InNlbGVjdGVkY29zdCI7czo1OiI0MC4wMCI7czo5OiJuaGlzcHJpY2UiO3M6MToiMCI7czo3OiJwcml2YXRlIjtzOjE6IjAiO31pOjI7YTo1OntzOjg6InRlc3RuYW1lIjtzOjIwOiJILiBQeWxvcmkgQWIgKFNlcnVtKSI7czo0OiJjb3N0IjtzOjI6IjYwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiNjAuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoxOiIwIjt9aTozO2E6NTp7czo4OiJ0ZXN0bmFtZSI7czo1OiJXaWRhbCI7czo0OiJjb3N0IjtzOjI6IjIwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiMjAuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoxOiIwIjt9aTo0O2E6NTp7czo4OiJ0ZXN0bmFtZSI7czoxMDoiUEVMVklDIFVTRyI7czo0OiJjb3N0IjtzOjI6IjcwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiNzAuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoxOiIwIjt9fQ==', '2021341735', '0', NULL, '2021-07-06 10:48:10', '', '', 1),
(11, 'C002871450577', 'U579105540-2021', '526099782', 'P47574-2021', 2, 'P47574-2021-1625567858', 'L644221809-2021', '', '', 'Cash', '110.00', '0', '0', '0.00', '0', '1', 'YToyOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjEyOiJMdW1iYXIgU3BpbmUiO3M6NDoiY29zdCI7czoyOiI3MCI7czoxMjoic2VsZWN0ZWRjb3N0IjtzOjU6IjcwLjAwIjtzOjk6Im5oaXNwcmljZSI7czoxOiIwIjtzOjc6InByaXZhdGUiO3M6MjoiODAiO31pOjI7YTo1OntzOjg6InRlc3RuYW1lIjtzOjI0OiJTYW1lIERheSBSZXBvcnQoIFNpbmdsZSkiO3M6NDoiY29zdCI7czoyOiI0MCI7czoxMjoic2VsZWN0ZWRjb3N0IjtzOjU6IjQwLjAwIjtzOjk6Im5oaXNwcmljZSI7czoxOiIwIjtzOjc6InByaXZhdGUiO3M6MToiMCI7fX0=', 'YToyOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjEyOiJMdW1iYXIgU3BpbmUiO3M6NDoiY29zdCI7czoyOiI3MCI7czoxMjoic2VsZWN0ZWRjb3N0IjtzOjU6IjcwLjAwIjtzOjk6Im5oaXNwcmljZSI7czoxOiIwIjtzOjc6InByaXZhdGUiO3M6MjoiODAiO31pOjI7YTo1OntzOjg6InRlc3RuYW1lIjtzOjI0OiJTYW1lIERheSBSZXBvcnQoIFNpbmdsZSkiO3M6NDoiY29zdCI7czoyOiI0MCI7czoxMjoic2VsZWN0ZWRjb3N0IjtzOjU6IjQwLjAwIjtzOjk6Im5oaXNwcmljZSI7czoxOiIwIjtzOjc6InByaXZhdGUiO3M6MToiMCI7fX0=', '2021057705', '0', NULL, '2021-07-06 10:56:42', '', '', 1),
(12, 'C002871450577', 'U579105540-2021', '526099782', 'K24531-2021', 2, 'K24531-2021-1625569252', 'L553136381-2021', '', '', 'Cash', '120.00', '0', '0', '0.00', '0', '1', 'YToxOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjE5OiJBYmRvbWluby1QZWx2aWMgVVNHIjtzOjQ6ImNvc3QiO3M6MzoiMTIwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NjoiMTIwLjAwIjtzOjk6Im5oaXNwcmljZSI7czoxOiIwIjtzOjc6InByaXZhdGUiO3M6MzoiMTMwIjt9fQ==', 'YToxOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjE5OiJBYmRvbWluby1QZWx2aWMgVVNHIjtzOjQ6ImNvc3QiO3M6MzoiMTIwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NjoiMTIwLjAwIjtzOjk6Im5oaXNwcmljZSI7czoxOiIwIjtzOjc6InByaXZhdGUiO3M6MzoiMTMwIjt9fQ==', '2021203478', '0', NULL, '2021-07-06 11:01:43', '', '', 1),
(13, 'C002871450577', 'U579105540-2021', '526099782', 'R42108-2021', 2, 'R42108-2021-1625570929', 'L648004984-2021', '', '', 'Cash', '270.00', '0', '0', '0.00', '0', '1', 'YTo1OntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjIyOiJGdWxsIEJsb29kIENvdW50IChGQkMpIjtzOjQ6ImNvc3QiO3M6MjoiNDAiO3M6MTI6InNlbGVjdGVkY29zdCI7czo1OiI0MC4wMCI7czo5OiJuaGlzcHJpY2UiO3M6MToiMCI7czo3OiJwcml2YXRlIjtzOjE6IjAiO31pOjI7YTo1OntzOjg6InRlc3RuYW1lIjtzOjM6IkIgRiI7czo0OiJjb3N0IjtzOjI6IjIwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiMjAuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoxOiIwIjt9aTozO2E6NTp7czo4OiJ0ZXN0bmFtZSI7czozMToiUm91dGluZSBVcmluZSBFeGFtaW5hdGlvbiAoUi9FKSI7czo0OiJjb3N0IjtzOjI6IjIwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiMjAuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoxOiIwIjt9aTo0O2E6NTp7czo4OiJ0ZXN0bmFtZSI7czoxOToiQWJkb21pbm8tUGVsdmljIFVTRyI7czo0OiJjb3N0IjtzOjM6IjEyMCI7czoxMjoic2VsZWN0ZWRjb3N0IjtzOjY6IjEyMC4wMCI7czo5OiJuaGlzcHJpY2UiO3M6MToiMCI7czo3OiJwcml2YXRlIjtzOjM6IjEzMCI7fWk6NTthOjU6e3M6ODoidGVzdG5hbWUiO3M6MTE6IkNoZXN0IFgtUmF5IjtzOjQ6ImNvc3QiO3M6MjoiNzAiO3M6MTI6InNlbGVjdGVkY29zdCI7czo1OiI3MC4wMCI7czo5OiJuaGlzcHJpY2UiO3M6MToiMCI7czo3OiJwcml2YXRlIjtzOjI6IjgwIjt9fQ==', 'YTo1OntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjIyOiJGdWxsIEJsb29kIENvdW50IChGQkMpIjtzOjQ6ImNvc3QiO3M6MjoiNDAiO3M6MTI6InNlbGVjdGVkY29zdCI7czo1OiI0MC4wMCI7czo5OiJuaGlzcHJpY2UiO3M6MToiMCI7czo3OiJwcml2YXRlIjtzOjE6IjAiO31pOjI7YTo1OntzOjg6InRlc3RuYW1lIjtzOjM6IkIgRiI7czo0OiJjb3N0IjtzOjI6IjIwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiMjAuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoxOiIwIjt9aTozO2E6NTp7czo4OiJ0ZXN0bmFtZSI7czozMToiUm91dGluZSBVcmluZSBFeGFtaW5hdGlvbiAoUi9FKSI7czo0OiJjb3N0IjtzOjI6IjIwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiMjAuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoxOiIwIjt9aTo0O2E6NTp7czo4OiJ0ZXN0bmFtZSI7czoxOToiQWJkb21pbm8tUGVsdmljIFVTRyI7czo0OiJjb3N0IjtzOjM6IjEyMCI7czoxMjoic2VsZWN0ZWRjb3N0IjtzOjY6IjEyMC4wMCI7czo5OiJuaGlzcHJpY2UiO3M6MToiMCI7czo3OiJwcml2YXRlIjtzOjM6IjEzMCI7fWk6NTthOjU6e3M6ODoidGVzdG5hbWUiO3M6MTE6IkNoZXN0IFgtUmF5IjtzOjQ6ImNvc3QiO3M6MjoiNzAiO3M6MTI6InNlbGVjdGVkY29zdCI7czo1OiI3MC4wMCI7czo5OiJuaGlzcHJpY2UiO3M6MToiMCI7czo3OiJwcml2YXRlIjtzOjI6IjgwIjt9fQ==', '2021130184', '0', NULL, '2021-07-06 11:37:11', '', '', 1),
(16, 'C002871450577', 'U579105540-2021', '526099782', 'R11601-2021', 1, 'R11601-2021-1625572151', 'L618899893-2021', '', '', 'Cash', '70.00', '0', '0', '0.00', '0', '1', 'YToxOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjM6IlBTQSI7czo0OiJjb3N0IjtzOjI6IjcwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiNzAuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoxOiIwIjt9fQ==', 'YToxOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjM6IlBTQSI7czo0OiJjb3N0IjtzOjI6IjcwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiNzAuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoxOiIwIjt9fQ==', '2021825582', '0', NULL, '2021-07-06 11:49:46', '', '', 1),
(17, 'C002871450577', 'U579105540-2021', '526099782', 'D09594-2021', 2, 'D09594-2021-1625571577', 'L567711203-2021', '', '', 'Insurance', '0', '70.00', '0', '0.00', '0', '1', 'YToxOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjc6IlJUIEtuZWUiO3M6NDoiY29zdCI7czoyOiI3MCI7czoxMjoic2VsZWN0ZWRjb3N0IjtzOjU6IjcwLjAwIjtzOjk6Im5oaXNwcmljZSI7czoxOiIwIjtzOjc6InByaXZhdGUiO3M6MjoiODAiO319', 'YToxOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjc6IlJUIEtuZWUiO3M6NDoiY29zdCI7czoyOiI3MCI7czoxMjoic2VsZWN0ZWRjb3N0IjtzOjU6IjcwLjAwIjtzOjk6Im5oaXNwcmljZSI7czoxOiIwIjtzOjc6InByaXZhdGUiO3M6MjoiODAiO319', '2021320556', '0', NULL, '2021-07-06 11:58:47', '', '482538814', 1),
(15, 'C002871450577', 'U579105540-2021', '526099782', 'G62116-2021', 2, 'G62116-2021-1625571819', 'L277328302-2021', '', '', 'Cash', '70.00', '0', '0', '0.00', '0', '1', 'YToxOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjEwOiJQRUxWSUMgVVNHIjtzOjQ6ImNvc3QiO3M6MjoiNzAiO3M6MTI6InNlbGVjdGVkY29zdCI7czo1OiI3MC4wMCI7czo5OiJuaGlzcHJpY2UiO3M6MToiMCI7czo3OiJwcml2YXRlIjtzOjE6IjAiO319', 'YToxOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjEwOiJQRUxWSUMgVVNHIjtzOjQ6ImNvc3QiO3M6MjoiNzAiO3M6MTI6InNlbGVjdGVkY29zdCI7czo1OiI3MC4wMCI7czo5OiJuaGlzcHJpY2UiO3M6MToiMCI7czo3OiJwcml2YXRlIjtzOjE6IjAiO319', '2021051733', '0', NULL, '2021-07-06 11:44:31', '', '', 1),
(18, 'C002871450577', 'U579105540-2021', '526099782', 'D09594-2021', 2, 'D09594-2021-1625571577', 'L836107708-2021', '', '', 'Cash', '40.00', '0', '0', '0.00', '0', '1', 'YToxOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjI0OiJTYW1lIERheSBSZXBvcnQoIFNpbmdsZSkiO3M6NDoiY29zdCI7czoyOiI0MCI7czoxMjoic2VsZWN0ZWRjb3N0IjtzOjU6IjQwLjAwIjtzOjk6Im5oaXNwcmljZSI7czoxOiIwIjtzOjc6InByaXZhdGUiO3M6MToiMCI7fX0=', 'YToxOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjI0OiJTYW1lIERheSBSZXBvcnQoIFNpbmdsZSkiO3M6NDoiY29zdCI7czoyOiI0MCI7czoxMjoic2VsZWN0ZWRjb3N0IjtzOjU6IjQwLjAwIjtzOjk6Im5oaXNwcmljZSI7czoxOiIwIjtzOjc6InByaXZhdGUiO3M6MToiMCI7fX0=', '2021755720', '0', NULL, '2021-07-06 12:00:04', '', '', 1),
(19, 'C002871450577', 'U579105540-2021', '526099782', 'K29729-2021', 2, 'K29729-2021-1625572884', 'L760080826-2021', '', '', 'Cash', '110.00', '0', '0', '0.00', '0', '1', 'YToyOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjExOiJDaGVzdCBYLVJheSI7czo0OiJjb3N0IjtzOjI6IjcwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiNzAuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoyOiI4MCI7fWk6MjthOjU6e3M6ODoidGVzdG5hbWUiO3M6MjQ6IlNhbWUgRGF5IFJlcG9ydCggU2luZ2xlKSI7czo0OiJjb3N0IjtzOjI6IjQwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiNDAuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoxOiIwIjt9fQ==', 'YToyOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjExOiJDaGVzdCBYLVJheSI7czo0OiJjb3N0IjtzOjI6IjcwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiNzAuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoyOiI4MCI7fWk6MjthOjU6e3M6ODoidGVzdG5hbWUiO3M6MjQ6IlNhbWUgRGF5IFJlcG9ydCggU2luZ2xlKSI7czo0OiJjb3N0IjtzOjI6IjQwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiNDAuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoxOiIwIjt9fQ==', '2021649352', '0', NULL, '2021-07-06 12:02:22', '', '', 1),
(20, 'C002871450577', 'U579105540-2021', '526099782', 'D09594-2021', 2, 'D09594-2021-1625571577', 'L251030602-2021', '', '', 'Insurance', '0.00', '80.00', '0', '0.00', '0', '1', 'YToxOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjc6IlJUIEtuZWUiO3M6NDoiY29zdCI7czoyOiI3MCI7czoxMjoic2VsZWN0ZWRjb3N0IjtzOjU6IjgwLjAwIjtzOjk6Im5oaXNwcmljZSI7czoxOiIwIjtzOjc6InByaXZhdGUiO3M6MjoiODAiO319', 'YToxOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjc6IlJUIEtuZWUiO3M6NDoiY29zdCI7czoyOiI3MCI7czoxMjoic2VsZWN0ZWRjb3N0IjtzOjU6IjgwLjAwIjtzOjk6Im5oaXNwcmljZSI7czoxOiIwIjtzOjc6InByaXZhdGUiO3M6MjoiODAiO319', '2021065859', '0', NULL, '2021-07-06 13:00:22', '519700065-0', '482538814', 1),
(21, 'C002871450577', 'U579105540-2021', '526099782', 'S27379-2021', 2, 'S27379-2021-1625576902', 'L081427069-2021', '', '', 'Cash', '70.00', '0', '0', '0.00', '0', '1', 'YToxOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjExOiJDaGVzdCBYLVJheSI7czo0OiJjb3N0IjtzOjI6IjcwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiNzAuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoyOiI4MCI7fX0=', 'YToxOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjExOiJDaGVzdCBYLVJheSI7czo0OiJjb3N0IjtzOjI6IjcwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiNzAuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoyOiI4MCI7fX0=', '2021750714', '0', NULL, '2021-07-06 13:08:58', '', '', 1),
(22, 'C002871450577', 'U579105540-2021', '526099782', 'S51313-2021', 2, 'S51313-2021-1625577032', 'L000478973-2021', '', '', 'Cash', '70.00', '0', '0', '0.00', '0', '1', 'YToxOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjExOiJDaGVzdCBYLVJheSI7czo0OiJjb3N0IjtzOjI6IjcwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiNzAuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoyOiI4MCI7fX0=', 'YToxOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjExOiJDaGVzdCBYLVJheSI7czo0OiJjb3N0IjtzOjI6IjcwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiNzAuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoyOiI4MCI7fX0=', '2021560308', '0', NULL, '2021-07-06 13:11:04', '', '', 1),
(23, 'C002871450577', 'U579105540-2021', '526099782', 'M55911-2021', 1, 'M55911-2021-1625577671', 'L058998195-2021', '', '', 'Cash', '295.00', '0', '0', '0.00', '0', '1', 'YTo2OntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjIyOiJGdWxsIEJsb29kIENvdW50IChGQkMpIjtzOjQ6ImNvc3QiO3M6MjoiNDAiO3M6MTI6InNlbGVjdGVkY29zdCI7czo1OiI0MC4wMCI7czo5OiJuaGlzcHJpY2UiO3M6MToiMCI7czo3OiJwcml2YXRlIjtzOjE6IjAiO31pOjI7YTo1OntzOjg6InRlc3RuYW1lIjtzOjMxOiJSb3V0aW5lIFVyaW5lIEV4YW1pbmF0aW9uIChSL0UpIjtzOjQ6ImNvc3QiO3M6MjoiMjAiO3M6MTI6InNlbGVjdGVkY29zdCI7czo1OiIyMC4wMCI7czo5OiJuaGlzcHJpY2UiO3M6MToiMCI7czo3OiJwcml2YXRlIjtzOjE6IjAiO31pOjM7YTo1OntzOjg6InRlc3RuYW1lIjtzOjM6IkZCUyI7czo0OiJjb3N0IjtzOjI6IjI1IjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiMjUuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoyOiIzMCI7fWk6NDthOjU6e3M6ODoidGVzdG5hbWUiO3M6NToiSEJBL0MiO3M6NDoiY29zdCI7czoyOiI4MCI7czoxMjoic2VsZWN0ZWRjb3N0IjtzOjU6IjgwLjAwIjtzOjk6Im5oaXNwcmljZSI7czoxOiIwIjtzOjc6InByaXZhdGUiO3M6MjoiODUiO31pOjU7YTo1OntzOjg6InRlc3RuYW1lIjtzOjg6IkJVRSYgQ1JFIjtzOjQ6ImNvc3QiO3M6MjoiNjAiO3M6MTI6InNlbGVjdGVkY29zdCI7czo1OiI2MC4wMCI7czo5OiJuaGlzcHJpY2UiO3M6MToiMCI7czo3OiJwcml2YXRlIjtzOjI6IjY1Ijt9aTo2O2E6NTp7czo4OiJ0ZXN0bmFtZSI7czoyNToiTGl2ZXIgRnVuY3Rpb24gVGVzdCAoTEZUKSI7czo0OiJjb3N0IjtzOjI6IjcwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiNzAuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoxOiIwIjt9fQ==', 'YTo2OntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjIyOiJGdWxsIEJsb29kIENvdW50IChGQkMpIjtzOjQ6ImNvc3QiO3M6MjoiNDAiO3M6MTI6InNlbGVjdGVkY29zdCI7czo1OiI0MC4wMCI7czo5OiJuaGlzcHJpY2UiO3M6MToiMCI7czo3OiJwcml2YXRlIjtzOjE6IjAiO31pOjI7YTo1OntzOjg6InRlc3RuYW1lIjtzOjMxOiJSb3V0aW5lIFVyaW5lIEV4YW1pbmF0aW9uIChSL0UpIjtzOjQ6ImNvc3QiO3M6MjoiMjAiO3M6MTI6InNlbGVjdGVkY29zdCI7czo1OiIyMC4wMCI7czo5OiJuaGlzcHJpY2UiO3M6MToiMCI7czo3OiJwcml2YXRlIjtzOjE6IjAiO31pOjM7YTo1OntzOjg6InRlc3RuYW1lIjtzOjM6IkZCUyI7czo0OiJjb3N0IjtzOjI6IjI1IjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiMjUuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoyOiIzMCI7fWk6NDthOjU6e3M6ODoidGVzdG5hbWUiO3M6NToiSEJBL0MiO3M6NDoiY29zdCI7czoyOiI4MCI7czoxMjoic2VsZWN0ZWRjb3N0IjtzOjU6IjgwLjAwIjtzOjk6Im5oaXNwcmljZSI7czoxOiIwIjtzOjc6InByaXZhdGUiO3M6MjoiODUiO31pOjU7YTo1OntzOjg6InRlc3RuYW1lIjtzOjg6IkJVRSYgQ1JFIjtzOjQ6ImNvc3QiO3M6MjoiNjAiO3M6MTI6InNlbGVjdGVkY29zdCI7czo1OiI2MC4wMCI7czo5OiJuaGlzcHJpY2UiO3M6MToiMCI7czo3OiJwcml2YXRlIjtzOjI6IjY1Ijt9aTo2O2E6NTp7czo4OiJ0ZXN0bmFtZSI7czoyNToiTGl2ZXIgRnVuY3Rpb24gVGVzdCAoTEZUKSI7czo0OiJjb3N0IjtzOjI6IjcwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiNzAuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoxOiIwIjt9fQ==', '2021612400', '0', NULL, '2021-07-06 13:38:04', '', '', 1),
(24, 'C002871450577', 'U579105540-2021', '526099782', 'M88518-2021', 1, 'M88518-2021-1625649907', 'L084958258-2021', '', '', 'Cash', '90.00', '0', '0', '0.00', '0', '1', 'YToyOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjM6IkIgRiI7czo0OiJjb3N0IjtzOjI6IjIwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiMjAuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoxOiIwIjt9aToyO2E6NTp7czo4OiJ0ZXN0bmFtZSI7czoxMzoiTGlwaWQgUHJvZmlsZSI7czo0OiJjb3N0IjtzOjI6IjcwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiNzAuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoxOiIwIjt9fQ==', 'YToyOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjM6IkIgRiI7czo0OiJjb3N0IjtzOjI6IjIwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiMjAuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoxOiIwIjt9aToyO2E6NTp7czo4OiJ0ZXN0bmFtZSI7czoxMzoiTGlwaWQgUHJvZmlsZSI7czo0OiJjb3N0IjtzOjI6IjcwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiNzAuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoxOiIwIjt9fQ==', '2021042309', '1', '2021-07-07 09:37:26', '2021-07-07 09:26:14', '', '', 1),
(25, 'C002871450577', 'U579105540-2021', '526099782', 'H60224-2021', 2, 'h60224-2021-1625664952', 'L341042070-2021', '', '', 'Cash', '80.00', '0', '0', '0.00', '0', '1', 'YToxOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjI0OiJUZXN0aWN1bGFyIFByb3N0YXRlICBVU0ciO3M6NDoiY29zdCI7czoyOiI4MCI7czoxMjoic2VsZWN0ZWRjb3N0IjtzOjU6IjgwLjAwIjtzOjk6Im5oaXNwcmljZSI7czoxOiIwIjtzOjc6InByaXZhdGUiO3M6MjoiOTAiO319', 'YToxOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjI0OiJUZXN0aWN1bGFyIFByb3N0YXRlICBVU0ciO3M6NDoiY29zdCI7czoyOiI4MCI7czoxMjoic2VsZWN0ZWRjb3N0IjtzOjU6IjgwLjAwIjtzOjk6Im5oaXNwcmljZSI7czoxOiIwIjtzOjc6InByaXZhdGUiO3M6MjoiOTAiO319', '2021215199', '0', NULL, '2021-07-07 13:36:59', '', '', 1),
(26, 'C002871450577', 'U579105540-2021', '526099782', 'H60224-2021', 1, 'h60224-2021-1628515746', 'L276923491-2021', '', '', 'Cash', '45.00', '0', '0', '0.00', '0', '1', 'YToyOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjI6IkhCIjtzOjQ6ImNvc3QiO3M6MjoiMjUiO3M6MTI6InNlbGVjdGVkY29zdCI7czo1OiIyNS4wMCI7czo5OiJuaGlzcHJpY2UiO3M6MToiMCI7czo3OiJwcml2YXRlIjtzOjE6IjAiO31pOjI7YTo1OntzOjg6InRlc3RuYW1lIjtzOjY6IkhCL1BDViI7czo0OiJjb3N0IjtzOjI6IjIwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiMjAuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoxOiIwIjt9fQ==', 'YToyOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjI6IkhCIjtzOjQ6ImNvc3QiO3M6MjoiMjUiO3M6MTI6InNlbGVjdGVkY29zdCI7czo1OiIyNS4wMCI7czo5OiJuaGlzcHJpY2UiO3M6MToiMCI7czo3OiJwcml2YXRlIjtzOjE6IjAiO31pOjI7YTo1OntzOjg6InRlc3RuYW1lIjtzOjY6IkhCL1BDViI7czo0OiJjb3N0IjtzOjI6IjIwIjtzOjEyOiJzZWxlY3RlZGNvc3QiO3M6NToiMjAuMDAiO3M6OToibmhpc3ByaWNlIjtzOjE6IjAiO3M6NzoicHJpdmF0ZSI7czoxOiIwIjt9fQ==', '2021131822', '1', '2021-08-09 13:48:19', '2021-08-09 13:29:45', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `debt`
--

CREATE TABLE `debt` (
  `id` int(11) NOT NULL,
  `centerusername` varchar(100) NOT NULL DEFAULT '',
  `patientusername` varchar(100) NOT NULL DEFAULT '',
  `testtype` tinyint(5) NOT NULL DEFAULT 0,
  `debtamount` varchar(11) NOT NULL DEFAULT '0',
  `sessionid` varchar(50) NOT NULL DEFAULT '',
  `labno` varchar(50) NOT NULL DEFAULT '',
  `branch` varchar(50) NOT NULL DEFAULT '',
  `enteredby` varchar(50) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `status` tinyint(5) NOT NULL DEFAULT 0,
  `collectedby` varchar(100) NOT NULL DEFAULT '',
  `datecollected` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `centerusername` varchar(50) NOT NULL DEFAULT '',
  `enteredby` varchar(50) NOT NULL DEFAULT '',
  `departmentname` varchar(100) NOT NULL DEFAULT '',
  `departmentranking` varchar(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `centerusername`, `enteredby`, `departmentname`, `departmentranking`, `date`) VALUES
(12, 'C002871450577', '', 'tumour markers', '0', '2021-03-05 16:21:59'),
(3, 'C002871450577', '', 'hematology', '0', '2021-03-01 11:39:34'),
(4, 'C002871450577', '', 'biochemistry', '0', '2021-03-01 11:40:03'),
(5, 'C002871450577', '', 'serology', '0', '2021-03-01 11:40:21'),
(6, 'C002871450577', '', 'endocrinology', '0', '2021-03-01 11:40:41'),
(7, 'C002871450577', '', 'microbiology', '0', '2021-03-01 11:40:53'),
(8, 'C002871450577', '', 'parasitology', '0', '2021-03-01 11:41:13'),
(9, 'C002871450577', '', 'tumour markers', '0', '2021-03-01 15:49:02'),
(10, 'C002871450577', '', 'diabetes screen', '0', '2021-03-01 15:49:19'),
(11, 'C002871450577', '', 'infectious diseases', '0', '2021-03-01 15:49:47'),
(13, 'C002871450577', '', 'heamatology', '0', '2021-03-15 17:11:59'),
(14, 'C002871450577', '', 'chemistry', '0', '2021-03-15 17:12:45'),
(15, 'C002871450577', '', 'serology', '0', '2021-03-15 17:13:17'),
(16, 'C002871450577', '', 'hormones', '0', '2021-03-15 17:13:45'),
(17, 'C002871450577', '', 'microbiology', '0', '2021-03-15 17:14:22'),
(18, 'C002871450577', '', 'dna test', '0', '2021-03-15 17:14:41'),
(19, 'C002871450577', '', 'allergy assay', '0', '2021-03-15 17:15:23'),
(20, 'C002871450577', '', 'cardiac enzymes', '0', '2021-03-15 17:16:18'),
(21, 'C002871450577', '', 'food vendors screening', '0', '2021-03-15 17:17:33'),
(22, 'C002871450577', '', 'all culturs', '0', '2021-03-15 17:20:23'),
(23, 'C002871450577', '', 'others', '0', '2021-03-15 17:20:46'),
(24, 'C002871450577', '', 'hematology', '0', '2021-03-19 14:49:09'),
(25, 'C002871450577', '', 'pathology', '0', '2021-03-19 14:49:23'),
(26, 'C002871450577', '', 'microbiology', '0', '2021-03-20 08:59:42'),
(27, 'C002871450577', '', 'parasitology', '0', '2021-03-20 09:01:05'),
(28, 'C002871450577', '', 'serology', '0', '2021-03-20 09:02:04'),
(29, 'C002871450577', '', 'tumor markers', '0', '2021-03-20 09:03:03'),
(30, 'C002871450577', '', 'fertility and steroid markers', '0', '2021-03-20 09:04:12'),
(31, 'C002871450577', '', 'hematology', '0', '2021-03-30 12:09:47'),
(32, 'C002871450577', '', 'biochemistry', '0', '2021-03-30 12:10:04'),
(33, 'C002871450577', '', 'microbiology', '0', '2021-03-30 12:10:15'),
(34, 'C002871450577', '', 'immunology/serology', '0', '2021-03-30 12:56:07'),
(35, 'C002871450577', '', 'coagulation', '0', '2021-03-30 16:40:55'),
(36, 'C002871450577', '', 'chemical pathology', '0', '2021-03-30 16:42:33'),
(37, 'C002871450577', '', 'General chemistry', '7', '2021-04-06 10:35:18'),
(38, 'C002871450577', '', 'Tumor markers', '8', '2021-04-06 11:00:15'),
(39, 'C002871450577', '', 'Hormonal assays', '9', '2021-04-06 11:14:08'),
(40, 'C002871450577', '', 'Cardiac profile', '10', '2021-04-06 11:36:08'),
(41, 'C002871450577', '', 'Haematology', '2', '2021-04-19 13:26:41'),
(42, 'C002871450577', '', 'Chemical pathology', '2', '2021-04-19 13:27:09'),
(43, 'C002871450577', '', 'Microbiology', '3', '2021-04-19 13:27:27'),
(44, 'C002871450577', '', 'Immunology', '4', '2021-04-19 13:27:42'),
(45, 'C002871450577', '', 'Pathology', '5', '2021-04-19 13:28:10'),
(46, 'C002871450577', '', 'Radiology', '6', '2021-04-19 13:28:40'),
(47, 'C002871450577', '', 'Hormones', '7', '2021-04-21 11:34:39'),
(48, 'C002871450577', '', 'Bacteriology', '8', '2021-04-21 11:35:20'),
(49, 'C002871450577', '', 'Tumor markers', '9', '2021-04-21 11:36:36'),
(50, 'C002871450577', '', 'Haematology', '1', '2021-04-25 12:12:03'),
(51, 'C002871450577', '', 'Biochemistry', '2', '2021-04-25 12:12:27'),
(52, 'C002871450577', '', 'Immunology', '3', '2021-04-25 12:12:55'),
(53, 'C002871450577', '', 'Microbiology', '4', '2021-04-25 12:13:18'),
(54, 'C002871450577', '', 'Ultrasound', '0', '2021-05-06 12:06:28');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `centerusername` varchar(50) NOT NULL DEFAULT '',
  `enteredby` varchar(50) NOT NULL DEFAULT '',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `specialization` varchar(100) NOT NULL DEFAULT '',
  `commission` varchar(5) NOT NULL DEFAULT '0',
  `address` text DEFAULT NULL,
  `hospital` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(30) NOT NULL DEFAULT '',
  `contact` varchar(15) NOT NULL DEFAULT '',
  `remarks` text DEFAULT NULL,
  `status` tinyint(5) NOT NULL DEFAULT 0,
  `verifyid` varchar(50) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dressingreport`
--

CREATE TABLE `dressingreport` (
  `id` int(11) NOT NULL,
  `patientusername` varchar(50) NOT NULL DEFAULT '',
  `centerusername` varchar(50) NOT NULL DEFAULT '',
  `enteredby` varchar(100) NOT NULL DEFAULT '',
  `enteredbyusername` varchar(50) NOT NULL DEFAULT '',
  `notes` text DEFAULT NULL,
  `diagnosis` varchar(255) NOT NULL,
  `sessionid` varchar(11) NOT NULL DEFAULT '',
  `recordtype` varchar(15) NOT NULL DEFAULT 'inpatient',
  `entrytype` varchar(10) NOT NULL DEFAULT 'new',
  `date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` int(11) NOT NULL,
  `centerusername` varchar(50) NOT NULL DEFAULT '',
  `enteredby` varchar(50) NOT NULL DEFAULT '',
  `hospitalname` varchar(100) NOT NULL DEFAULT '',
  `location` text DEFAULT NULL,
  `contact` varchar(15) NOT NULL DEFAULT '',
  `email` varchar(30) NOT NULL DEFAULT '',
  `remarks` text DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `labs`
--

CREATE TABLE `labs` (
  `id` int(11) NOT NULL,
  `Types` varchar(500) DEFAULT '',
  `Status` tinyint(3) NOT NULL DEFAULT 0,
  `labposition` varchar(10) NOT NULL DEFAULT '0',
  `Category` varchar(15) NOT NULL DEFAULT '',
  `GDRG` varchar(20) NOT NULL DEFAULT '',
  `isnhis` tinyint(5) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `labs`
--

INSERT INTO `labs` (`id`, `Types`, `Status`, `labposition`, `Category`, `GDRG`, `isnhis`) VALUES
(2, 'Full Blood Count (FBC)', 1, 'test_02', 'category1', '', 0),
(3, 'Liver Function Test (LFT)', 1, 'test_03', 'category1', '', 0),
(12, 'Lipid Profile', 1, 'test_04', 'category1', '', 0),
(41, 'Blood Urea and Creatine (BUE/Cr)', 1, 'test_01', 'category1', '', 0),
(58, 'Widal', 1, 'test_06', 'both', '', 0),
(59, 'PRO BNP', 1, 'test_07', 'category1', '', 0),
(60, 'Routine Urine Examination (R/E)', 1, 'test_08', 'category1', '', 0),
(61, 'Renal Function Test', 1, 'test_09', 'category1', '', 0),
(62, 'Cardiac Enzymes', 1, 'test_10', 'category1', '', 0),
(63, 'Blood C/S', 1, 'test_24', 'both', '', 0),
(65, 'Retro screen', 1, 'test_56', 'both', '', 0),
(66, 'Hepatitis A', 1, 'test_34', 'both', '', 0),
(68, 'Hepatitis C', 1, 'test_35', 'both', '', 0),
(69, 'HIV viral load', 1, '0', 'both', '', 0),
(70, 'CD4 count', 1, '0', 'both', '', 0),
(71, 'Hepatitis B Profile', 1, 'test_50', 'both', '', 0),
(72, 'Urine C/S', 1, 'test_23', 'both', '', 0),
(73, 'Uric Acid', 1, 'test_36', 'both', '', 0),
(74, 'Semen Analysis', 1, 'test_47', 'both', '', 0),
(75, 'FSH', 1, 'test_42', 'both', '', 0),
(76, 'LH', 1, 'test_41', 'both', '', 0),
(78, 'Troponin I', 1, 'test_32', 'both', '', 0),
(79, 'Troponin T', 1, 'test_33', 'both', '', 0),
(80, 'Lipase', 1, 'test_61', 'both', '', 0),
(81, 'Amylase', 1, 'test_37', 'both', '', 0),
(83, 'Alpha feto protein', 1, '0', 'both', '', 0),
(84, 'CK-MB', 1, '0', 'both', '', 0),
(85, 'CK', 1, '0', 'both', '', 0),
(86, 'Magnesium', 1, 'test_62', 'both', '', 0),
(87, 'Calcium', 1, 'test_59', 'both', '', 0),
(88, 'Phosphorus', 1, 'test_58', 'both', '', 0),
(89, 'Beta HCG Quantitative', 1, 'test_64', 'both', '', 0),
(90, 'CEA', 1, '0', 'both', '', 0),
(91, 'CA 125( ovary)', 1, '0', 'both', '', 0),
(92, 'CA 153 (breast)', 1, '0', 'both', '', 0),
(93, 'CA 72-4( ovary)', 1, '0', 'both', '', 0),
(94, 'PSA', 1, 'test_57', 'both', '', 0),
(97, 'D-Dimer', 1, '0', 'both', '', 0),
(98, 'Phenytoin', 1, '0', 'both', '', 0),
(99, 'Iron', 1, '0', 'both', '', 0),
(100, 'TIBC', 1, '0', 'both', '', 0),
(101, 'Ferritin', 1, '0', 'both', '', 0),
(102, 'Vit B12', 1, '0', 'both', '', 0),
(103, 'Stool For H-Pylori', 1, 'test_21', 'both', '', 0),
(104, 'LDH', 1, '0', 'both', '', 0),
(108, 'Cortisol', 1, '0', 'both', '', 0),
(109, 'ASOT', 1, '0', 'both', '', 0),
(110, 'Toxoplasmosis screen', 1, '0', 'both', '', 0),
(111, 'Toxo IgG', 1, '0', 'both', '', 0),
(112, 'Toxo IgM', 1, '0', 'both', '', 0),
(114, 'LDL Cholesterol', 1, '0', 'both', '', 0),
(115, 'HDL Cholesterol', 1, '0', 'both', '', 0),
(116, 'Triglycerides', 1, '0', 'both', '', 0),
(117, 'VDRL', 1, 'test_20', 'both', '', 0),
(118, 'Blood Group', 1, 'test_16', 'both', '', 0),
(120, 'Coombs Test', 1, 'test_22', 'both', '', 0),
(121, 'Rh Factor', 1, '0', 'both', '', 0),
(124, 'Serum folate', 1, '0', 'both', '', 0),
(125, 'OGTT', 1, '0', 'both', '', 0),
(126, 'FBS', 1, 'test_48', 'both', '', 0),
(127, 'RBS', 1, 'test_49', 'both', '', 0),
(128, 'HbA1c', 1, 'test_55', 'both', '', 0),
(129, 'Prolactin', 1, 'test_43', 'both', '', 0),
(130, 'DHEA-S', 1, '0', 'both', '', 0),
(131, 'Testosterone', 1, 'test_45', 'both', '', 0),
(132, 'Erythrocyte Sedimentation Rate (ESR)', 1, 'test_11', 'category1', '', 0),
(133, 'Hepatitis B', 1, 'test_12', 'both', '', 0),
(134, 'Retroviral (HIV I,II)', 1, 'test_13', 'category1', '', 0),
(135, 'Sickling', 1, 'test_14', 'category1', '', 0),
(136, 'G-6-PD', 1, 'test_15', 'category1', '', 0),
(137, 'UPT', 1, 'test_17', 'both', '', 0),
(138, 'BPT', 1, 'test_18', 'both', '', 0),
(139, 'HB', 1, 'test_40', 'both', '', 0),
(140, 'HB-Electrophoresis', 1, 'test_19', 'both', '', 0),
(141, 'RDT', 1, 'test_54', 'both', '', 0),
(142, 'BF for MPS', 1, 'test_05', 'both', '', 0),
(143, 'BF COMMENT', 1, '0', 'both', '', 0),
(144, 'HCV', 1, '0', 'both', '', 0),
(145, 'SKIN SNIP', 1, '0', 'both', '', 0),
(146, 'Stool R/E', 1, 'test_65', 'both', '', 0),
(148, 'High Vaginal Swab (HVS) R/E', 1, 'test_53', 'both', '', 0),
(149, 'High Vaginal Swab (HVS) C/S', 1, 'test_68', 'both', '', 0),
(152, 'ASPIRATE C/S', 1, '0', 'both', '', 0),
(153, 'MISCELLANEOUS C/S', 1, '0', 'both', '', 0),
(155, 'ELECTROLYTES', 1, '0', 'both', '', 0),
(156, 'SERUM BILIRUBIN', 1, '0', 'both', '', 0),
(158, 'TOTAL CHOLESTROL', 1, '0', 'both', '', 0),
(159, 'GLYCATED HAEMOGLOBIN', 1, '0', 'both', '', 0),
(163, 'ECG', 1, '0', 'both', '', 0),
(164, 'PELVIC USG', 1, '0', 'both', '', 0),
(183, 'CEA', 1, '0', 'both', '', 0),
(184, 'CA15-3', 1, '0', 'both', '', 0),
(185, 'CA 125', 1, '0', 'both', '', 0),
(186, 'CA 19-9', 1, '0', 'both', '', 0),
(187, 'ANTI-HBs', 1, '0', 'both', '', 0),
(188, 'ANTI-HBC', 1, '0', 'both', '', 0),
(189, 'HBe/ANTI HBe', 1, '0', 'both', '', 0),
(190, 'HAV IgM', 1, '0', 'both', '', 0),
(191, 'HAV IgG', 1, '0', 'both', '', 0),
(192, 'MYOGLOBIN', 1, '0', 'both', '', 0),
(193, 'H.S TROPONIN', 1, '0', 'both', '', 0),
(196, 'CORTISOL-S', 1, '0', 'both', '', 0),
(197, 'FERRITIN', 1, '0', 'both', '', 0),
(198, 'Serum For H-Pylori', 1, 'test_25', 'both', '', 0),
(199, 'HIV DUO ULTRA', 1, '0', 'both', '', 0),
(200, 'HIV DUO QUICK', 1, '0', 'both', '', 0),
(201, 'HIV P24 II', 1, '0', 'both', '', 0),
(202, 'HIV P24 II CONFIRMATION', 1, '0', 'both', '', 0),
(203, 'Thyroid Function Test', 1, 'test_26', 'both', '', 0),
(204, 'TSH', 1, 'test_27', 'both', '', 0),
(205, 'FT3', 1, 'test_28', 'both', '', 0),
(206, 'FT4', 1, 'test_29', 'both', '', 0),
(207, 'T3', 1, 'test_30', 'both', '', 0),
(208, 'T4', 1, 'test_31', 'both', '', 0),
(209, 'Clotting Profile', 1, 'test_38', 'both', '', 0),
(210, 'International Normalised Ratio (INR)', 1, 'test_39', 'both', '', 0),
(211, 'Progesterone', 1, 'test_44', 'both', '', 0),
(212, 'Estradiol', 1, 'test_46', 'both', '', 0),
(213, 'Gonorrhea', 1, 'test_51', 'both', '', 0),
(214, 'Chlamydia', 1, 'test_52', 'both', '', 0),
(215, 'SHCG', 1, '0', 'category1', '', 0),
(216, 'SPT', 1, 'test_63', 'category1', '', 0),
(217, 'CK-MM', 1, '0', 'category1', '', 0),
(219, 'Serum Glucose', 1, 'test_60', 'both', '', 0),
(220, 'BF', 0, '0', 'category1', '', 0),
(221, 'ESTROGEN', 0, '0', 'category1', '', 0),
(224, 'Stool C/S', 1, 'test_66', 'both', '', 0),
(226, 'Throat Swab C/S', 1, 'test_67', 'both', '', 0),
(227, 'OVULATION TEST', 0, '0', 'category1', '', 0),
(230, 'beta - hcg', 0, '0', 'category1', '', 0),
(231, 'G6PD', 0, '0', 'category1', '', 0),
(233, 'Urethral Swab', 0, '0', 'category1', '', 0),
(234, 'papsmear', 0, '0', 'category1', '', 0),
(235, 'oestrogen', 0, '0', 'category1', '', 0),
(236, 'HIV CONFIRMATION', 0, '0', 'category1', '', 0),
(237, 'HBsAg', 0, '0', 'category1', '', 0),
(238, 'HCG', 0, '0', 'category1', '', 0),
(239, 'SYPHILIS', 0, '0', 'category1', '', 0),
(240, 'vct', 0, '0', 'category1', '', 0),
(688, 'Alanine Aminotransferase (ALT)', 1, '0', 'both', '00INVE03D', 1),
(689, 'Alpha Amylase (Serum/Urine)', 1, '0', 'both', '00INVE04D', 1),
(690, 'Alpha-Fetoprotein (AFP)', 1, '0', 'both', '00INVE05D', 1),
(691, 'Ap-Prothrombin Time', 1, '0', 'both', '00INVE06D', 1),
(692, 'Arterial Blood Gas (ABG)', 1, '0', 'both', '00INVE07D', 1),
(693, 'Aspartate Aminotransferase (AST)', 1, '0', 'both', '00INVE08D', 1),
(694, 'B/F for Malaria Parasites', 1, '0', 'both', '00INVE09D', 1),
(695, 'Barium Enema', 1, '0', 'both', '00INVE10D', 1),
(696, 'Barium Meal', 1, '0', 'both', '00INVE11D', 1),
(697, 'Barium Meal &amp; Follow Through', 1, '0', 'both', '00INVE12D', 1),
(698, 'Barium Swallow', 1, '0', 'both', '00INVE13D', 1),
(699, 'Bilirubin', 1, '0', 'both', '00INVE14D', 1),
(700, 'Bleeding and Clotting Time', 1, '0', 'both', '00INVE15D', 1),
(701, 'Blood for C/S', 1, '0', 'both', '00INVE16D', 1),
(702, 'Blood Grouping', 1, '0', 'both', '00INVE17D', 1),
(703, 'Blood Grouping &amp; Antibody Screen', 1, '0', 'both', '00INVE18D', 1),
(704, 'Blood Parasites', 1, '0', 'both', '00INVE19D', 1),
(705, 'Blood Urea', 1, '0', 'both', '00INVE20D', 1),
(706, 'Blood Urea &amp; Electrolytes', 1, '0', 'both', '00INVE21D', 1),
(707, 'Bone Marrow - Trephine Biopsy', 1, '0', 'both', '00INVE22D', 1),
(708, 'Bone Marrow Aspirate', 1, '0', 'both', '00INVE23D', 1),
(709, 'Bue &amp; Creatinine', 1, '0', 'both', '00INVE24D', 1),
(710, 'Carcino Embryonic Antigen (CEA)', 1, '0', 'both', '00INVE25D', 1),
(711, 'Cerebrospinal Fluid For C/S', 1, '0', 'both', '00INVE26D', 1),
(712, 'Clusters of Differentiation Cells (CD4)', 1, '0', 'both', '00INVE27D', 1),
(713, 'Coombs Test (Direct)', 1, '0', 'both', '00INVE28D', 1),
(714, 'Creatine Kinase - Mb (CK - Mb)', 1, '0', 'both', '00INVE29D', 1),
(715, 'Creatine Kinase (CK)', 1, '0', 'both', '00INVE30D', 1),
(716, 'CSF Latex Agglutination', 1, '0', 'both', '00INVE31D', 1),
(717, 'CT Scan - 1 Region + 2 Contrast', 1, '0', 'both', '00INVE32D', 1),
(718, 'CT Scan - 1 Region + 1 IV Contrast', 1, '0', 'both', '00INVE33D', 1),
(719, 'CT Scan - 1 Region + No Contrast', 1, '0', 'both', '00INVE34D', 1),
(720, 'Cystogram', 1, '0', 'both', '00INVE35D', 1),
(721, 'Cytology', 1, '0', 'both', '00INVE36D', 1),
(722, 'Digoxin Level', 1, '0', 'both', '00INVE37D', 1),
(723, 'Dihydroxy Epiandesterone Sulphate (Dhea-S)', 1, '0', 'both', '00INVE38D', 1),
(724, 'Doppler Scan', 1, '0', 'both', '00INVE39D', 1),
(725, 'Ductologram/Galactography', 1, '0', 'both', '00INVE40D', 1),
(726, 'ECG', 1, '0', 'both', '00INVE41D', 1),
(727, 'Erythrocyte Sedimentation Rate (ESR)', 1, '0', 'both', '00INVE42D', 1),
(728, 'Estrogen', 1, '0', 'both', '00INVE43D', 1),
(729, 'Factor IX', 1, '0', 'both', '00INVE44D', 1),
(730, 'Factor VIII', 1, '0', 'both', '00INVE45D', 1),
(731, 'Fasting Blood Sugar/Random Blood Sugar', 1, '0', 'both', '00INVE46D', 1),
(732, 'Fistulogram', 1, '0', 'both', '00INVE47D', 1),
(733, 'Follicle Stimulating Hormone (FSH)', 1, '0', 'both', '00INVE48D', 1),
(734, 'FT3', 1, '0', 'both', '00INVE49D', 1),
(735, 'FT4', 1, '0', 'both', '00INVE50D', 1),
(736, 'Full Blood Count FBC (Auto) &amp; Film Comment', 1, '0', 'both', '00INVE51D', 1),
(737, 'Full Blood Count FBC (Automation)', 1, '0', 'both', '00INVE52D', 1),
(738, 'Full Blood Count With Film Comment (Manual)', 1, '0', 'both', '00INVE53D', 1),
(739, 'Fungal Cultures', 1, '0', 'both', '00INVE54D', 1),
(740, 'Gamma Glutamyl Transferase (GGT)', 1, '0', 'both', '00INVE55D', 1),
(741, 'Glucose-6-Phosphate Dehydrogenase (G6PD)', 1, '0', 'both', '00INVE56D', 1),
(742, 'Glycosylated Haemoglobin (HBA 1C)', 1, '0', 'both', '00INVE57D', 1),
(743, 'Haemoglobin A2 &amp; F Estimation', 1, '0', 'both', '00INVE58D', 1),
(744, 'Haemoglobin Electrophoresis', 1, '0', 'both', '00INVE59D', 1),
(745, 'Haemoglobin Estimation (HB)', 1, '0', 'both', '00INVE60D', 1),
(746, 'HDL ???????? Cholesterol', 1, '0', 'both', '00INVE61D', 1),
(747, 'Helicobacter Pylori Test', 1, '0', 'both', '00INVE62D', 1),
(748, 'Hepatitis B Surface Antigen (HBSAG) HBV', 1, '0', 'both', '00INVE63D', 1),
(749, 'Hepatitis B Virus Profile (HBV Profile)', 1, '0', 'both', '00INVE64D', 1),
(750, 'High Vaginal Swab for C/S', 1, '0', 'both', '00INVE65D', 1),
(751, 'High Vaginal Swab Routine Examination', 1, '0', 'both', '00INVE66D', 1),
(752, 'Histopathology', 1, '0', 'both', '00INVE67D', 1),
(753, 'Human Immunodeficiency Virus (HIV) Confirmation', 1, '0', 'both', '00INVE68D', 1),
(754, 'Human Immunodeficiency Virus (HIV) Screening', 1, '0', 'both', '00INVE69D', 1),
(755, 'Hysterosalpingogram', 1, '0', 'both', '00INVE70D', 1),
(756, 'Immunostaining', 1, '0', 'both', '00INVE71D', 1),
(757, 'Intravenous Urography', 1, '0', 'both', '00INVE72D', 1),
(758, 'LDL ???????? Cholesterol', 1, '0', 'both', '00INVE73D', 1),
(759, 'LFT', 1, '0', 'both', '00INVE74D', 1),
(760, 'Lipid Profile', 1, '0', 'both', '00INVE75D', 1),
(761, 'Lupus Erythematosus Cell (Le Cell)', 1, '0', 'both', '00INVE76D', 1),
(762, 'Luteinizing Hormone (LH)', 1, '0', 'both', '00INVE77D', 1),
(763, 'Mammogram', 1, '0', 'both', '00INVE78D', 1),
(764, 'Miscelllaneous Cultures (Fluids, Aspirates &amp; Exudates)', 1, '0', 'both', '00INVE79D', 1),
(765, 'MRI - 1 Region + Contrast', 1, '0', 'both', '00INVE80D', 1),
(766, 'MRI - 1 Region + No Contrast', 1, '0', 'both', '00INVE81D', 1),
(767, 'Myelogram - 1 Region', 1, '0', 'both', '00INVE82D', 1),
(768, 'Oral Glucose Tolerance Test (OGTT)', 1, '0', 'both', '00INVE83D', 1),
(769, 'Orthopanthomograph (OPT)', 1, '0', 'both', '00INVE84D', 1),
(770, 'Pancreatic Amylase', 1, '0', 'both', '00INVE85D', 1),
(771, 'Pap Smear/Fine Needle Aspiration', 1, '0', 'both', '00INVE86D', 1),
(772, 'Percutaneous Biopsy - CT Scan Guide', 1, '0', 'both', '00INVE87D', 1),
(773, 'Percutaneous Biopsy - Flouroscopic Guide', 1, '0', 'both', '00INVE88D', 1),
(774, 'Plain X-ray Musculoskeletal -  any one region', 1, '0', 'both', '00INVE89D', 1),
(775, 'Plain X-ray Musculoskeletal -  Two region', 1, '0', 'both', '00INVE90D', 1),
(776, 'Plasma Cortisol', 1, '0', 'both', '00INVE91D', 1),
(777, 'Pregnancy Test', 1, '0', 'both', '00INVE92D', 1),
(778, 'Progesterone (PROG)', 1, '0', 'both', '00INVE93D', 1),
(779, 'Prostate Specific Antigen (PSA)', 1, '0', 'both', '00INVE94D', 1),
(780, 'Prothrombin Time', 1, '0', 'both', '00INVE95D', 1),
(781, 'Reticulocyte Count (Retics)', 1, '0', 'both', '00INVE96D', 1),
(782, 'Rheumatoid Factor', 1, '0', 'both', '00INVE97D', 1),
(783, 'Routine Stool Examination', 1, '0', 'both', '00INVE98D', 1),
(784, 'Routine Urine Examination', 1, '0', 'both', '00INVE99D', 1),
(785, 'Serum Adrenocorticotropic Hormone (ACTH)', 1, '0', 'both', '00INVE01E', 1),
(786, 'Serum Albumin', 1, '0', 'both', '00INVE02E', 1),
(787, 'Serum Alkalne Phosphatase (ALP)', 1, '0', 'both', '00INVE03E', 1),
(788, 'Serum Beta-Human Chorionic Gonadotropin (HCG)', 1, '0', 'both', '00INVE04E', 1),
(789, 'Serum Calcium', 1, '0', 'both', '00INVE05E', 1),
(790, 'Serum Creatinine', 1, '0', 'both', '00INVE06E', 1),
(791, 'Serum Electrolyte (Na+, K+)', 1, '0', 'both', '00INVE07E', 1),
(792, 'Serum Ferritin', 1, '0', 'both', '00INVE08E', 1),
(793, 'Serum Iron (Fe)', 1, '0', 'both', '00INVE09E', 1),
(794, 'Serum Lactate Dehydrogenase (LDH)', 1, '0', 'both', '00INVE10E', 1),
(795, 'Serum Prolactin ( PRL)', 1, '0', 'both', '00INVE11E', 1),
(796, 'Serum Total Protein', 1, '0', 'both', '00INVE12E', 1),
(797, 'Serum Triglyceride', 1, '0', 'both', '00INVE13E', 1),
(798, 'Serum Uric Acid', 1, '0', 'both', '00INVE14E', 1),
(799, 'Sialogram', 1, '0', 'both', '00INVE15E', 1),
(800, 'Sickling Test', 1, '0', 'both', '00INVE16E', 1),
(801, 'Skin Scrapping for Fungal Elements', 1, '0', 'both', '00INVE17E', 1),
(802, 'Skin Snip', 1, '0', 'both', '00INVE18E', 1),
(803, 'Stool C/S', 1, '0', 'both', '00INVE19E', 1),
(804, 'Stool For Occult Blood', 1, '0', 'both', '00INVE20E', 1),
(805, 'T3', 1, '0', 'both', '00INVE21E', 1),
(806, 'T4', 1, '0', 'both', '00INVE22E', 1),
(807, 'Testosterone', 1, '0', 'both', '00INVE23E', 1),
(808, 'Thyroid Function Test (TSH)', 1, '0', 'both', '00INVE24E', 1),
(809, 'Thyroid Profile', 1, '0', 'both', '00INVE25E', 1),
(810, 'Total Iron Binding Capacity (TIBC)', 1, '0', 'both', '00INVE26E', 1),
(811, 'Total Serum Cholesterol', 1, '0', 'both', '00INVE27E', 1),
(812, 'Trophozoite Count', 1, '0', 'both', '00INVE28E', 1),
(813, 'Troponin', 1, '0', 'both', '00INVE29E', 1),
(814, 'Ultrasound', 1, '0', 'both', '00INVE30E', 1),
(815, 'Ultrasound - 2 Regions', 1, '0', 'both', '00INVE31E', 1),
(816, 'Ultrasound Guided Incision &amp; Drainage', 1, '0', 'both', '00INVE32E', 1),
(817, 'Urethrogram', 1, '0', 'both', '00INVE33E', 1),
(818, 'Urine C/S', 1, '0', 'both', '00INVE34E', 1),
(819, 'Urine for Bence Jones Protein', 1, '0', 'both', '00INVE35E', 1),
(820, 'Veneral Disease Research Laboratory (VDRL)', 1, '0', 'both', '00INVE36E', 1),
(821, 'Venogram - 1 Region', 1, '0', 'both', '00INVE37E', 1),
(822, 'Widal Test', 1, '0', 'both', '00INVE38E', 1),
(823, 'Acid Phosphate', 1, '0', 'both', '00INVE100', 1),
(824, 'Chloride', 1, '0', 'both', '00INVE101', 1),
(825, 'Direct Bilirubin/Total Bilirubin', 1, '0', 'both', '00INVE102', 1),
(826, 'Donor Screening For HB &amp; AG', 1, '0', 'both', '00INVE103', 1),
(827, 'Hepatitis C screening', 1, '0', 'both', '00INVE105', 1),
(828, 'IOPA X-ray', 1, '0', 'both', '00INVE106', 1),
(829, 'Magnesium', 1, '0', 'both', '00INVE107', 1),
(830, 'NA+', 1, '0', 'both', '00INVE108', 1),
(831, 'Phosphorus', 1, '0', 'both', '00INVE109', 1),
(832, 'Platelet Count', 1, '0', 'both', '00INVE110', 1),
(833, 'Potassium', 1, '0', 'both', '00INVE111', 1),
(834, 'Renal Function Test', 1, '0', 'both', '00INVE112', 1),
(835, 'Semen Analysis', 1, '0', 'both', '00INVE113', 1),
(836, 'Total leucocyte count', 1, '0', 'both', '00INVE114', 1),
(837, 'Total Proteins Blood', 1, '0', 'both', '00INVE115', 1),
(838, 'Urine Sugar', 1, '0', 'both', '00INVE116', 1),
(839, 'VCT', 1, '0', 'both', '00INVE117', 1),
(840, 'Vitality Test', 1, '0', 'both', '00INVE118', 1),
(841, 'VLDL', 1, '0', 'both', '00INVE119', 1),
(842, 'WBC+Differential', 1, '0', 'both', '00INVE120', 1),
(843, 'Malaria Card Test (Dipstik assay/rapid card)', 1, '0', 'both', '00INVE122', 1),
(844, 'RH Typing', 1, '0', 'both', '00INVE123', 1),
(845, 'Keratometry', 1, '0', 'both', '00INVE124', 1),
(846, 'A-scan', 1, '0', 'both', '00INVE125', 1),
(847, 'Serum vitamin B12, and folate levels', 1, '0', 'both', '00INVE126', 1),
(848, 'Ultrasound biomicroscopy', 1, '0', 'both', '00INVE129', 1),
(849, 'Demonstration of Heinz bodies', 1, '0', 'both', '00INVE130', 1),
(850, 'Anti-streptolysin test', 1, '0', 'both', '00INVE132', 1),
(851, 'Viral serology', 1, '0', 'both', '00INVE133', 1),
(852, 'Calcium Infusion test', 1, '0', 'both', '00INVE134', 1),
(853, 'Pulmonary Function test', 1, '0', 'both', '00INVE135', 1),
(854, 'Pleural fluid analysis', 1, '0', 'both', '00INVE136', 1),
(855, 'Cancer antigen 19-9', 1, '0', 'both', '00INVE137', 1),
(856, 'Transhepatic cholangiography (PTC)', 1, '0', 'both', '00INVE138', 1),
(857, 'Bone Scan', 1, '0', 'both', '00INVE139', 1),
(858, 'Breast tissue Biopsy', 1, '0', 'both', '00INVE140', 1),
(859, 'C Reactive Protein', 1, '0', 'both', '00INVE141', 1),
(860, 'EEG (Electroencephalogram)', 1, '0', 'both', '00INVE142', 1),
(861, 'Holter', 1, '0', 'both', '00INVE143', 1),
(862, 'Angiography', 1, '0', 'both', '00INVE144', 1),
(863, 'Myocardial perfusion imaging', 1, '0', 'both', '00INVE145', 1),
(864, 'Guthrie test', 1, '0', 'both', '00INVE146', 1),
(865, 'Typhi Dot', 1, '0', 'both', '00INVE149', 1),
(866, 'AEC', 1, '0', 'both', '00INVE150', 1),
(867, 'Blood Sugar PP', 1, '0', 'both', '00INVE151', 1),
(868, 'Biopsy L/A', 1, '0', 'both', '00INVE152', 1),
(869, 'ASO titre', 1, '0', 'both', '00INVE154', 1),
(870, 'Gonioscopy', 1, '0', 'both', '00INVE155', 1),
(871, 'Hematocrit', 1, '0', 'both', '00INVE156', 1),
(872, 'CT Scan - 1 Region + 2 Contrast', 1, '0', 'both', '00INVE32D', 1),
(873, 'CT Scan - 1 Region + 1 IV Contrast', 1, '0', 'both', '00INVE33D', 1),
(874, 'CT Scan - 1 Region + No Contrast', 1, '0', 'both', '00INVE34D', 1),
(875, 'Cystogram', 1, '0', 'both', '00INVE35D', 1),
(876, 'Doppler Scan', 1, '0', 'both', '00INVE39D', 1),
(877, 'Ductologram/Galactography', 1, '0', 'both', '00INVE40D', 1),
(878, 'ECG', 1, '0', 'both', '00INVE41D', 1),
(879, 'Fistulogram', 1, '0', 'both', '00INVE47D', 1),
(880, 'Hysterosalpingogram', 1, '0', 'both', '00INVE70D', 1),
(881, 'Intravenous Urography', 1, '0', 'both', '00INVE72D', 1),
(882, 'Mammogram', 1, '0', 'both', '00INVE78D', 1),
(883, 'MRI - 1 Region + Contrast', 1, '0', 'both', '00INVE80D', 1),
(884, 'MRI - 1 Region + No Contrast', 1, '0', 'both', '00INVE81D', 1),
(885, 'Myelogram - 1 Region', 1, '0', 'both', '00INVE82D', 1),
(886, 'Orthopanthomograph (OPT)', 1, '0', 'both', '00INVE84D', 1),
(887, 'Percutaneous Biopsy - CT Scan Guide', 1, '0', 'both', '00INVE87D', 1),
(888, 'Percutaneous Biopsy - Flouroscopic Guide', 1, '0', 'both', '00INVE88D', 1),
(889, 'Plain X-ray Musculoskeletal -  any one region', 1, '0', 'both', '00INVE89D', 1),
(890, 'Plain X-ray Musculoskeletal -  Two region', 1, '0', 'both', '00INVE90D', 1),
(891, 'Sialogram', 1, '0', 'both', '00INVE15E', 1),
(892, 'Ultrasound', 1, '0', 'both', '00INVE30E', 1),
(893, 'Ultrasound - 2 Regions', 1, '0', 'both', '00INVE31E', 1),
(894, 'Ultrasound Guided Incision &amp;amp; Drainage', 1, '0', 'both', '00INVE32E', 1),
(895, 'Urethrogram', 1, '0', 'both', '00INVE33E', 1),
(896, 'Venogram - 1 Region', 1, '0', 'both', '00INVE37E', 1),
(897, 'IOPA X-ray', 1, '0', 'both', '00INVE106', 1),
(898, 'A-scan', 1, '0', 'both', '00INVE125', 1),
(899, 'Ultrasound biomicroscopy', 1, '0', 'both', '00INVE129', 1),
(900, 'Transhepatic cholangiography (PTC)', 1, '0', 'both', '00INVE138', 1),
(901, 'Bone Scan', 1, '0', 'both', '00INVE139', 1),
(902, 'Breast tissue Biopsy', 1, '0', 'both', '00INVE140', 1),
(903, 'EEG (Electroencephalogram)', 1, '0', 'both', '00INVE142', 1),
(904, 'Holter', 1, '0', 'both', '00INVE143', 1),
(905, 'Angiography', 1, '0', 'both', '00INVE144', 1),
(906, 'Myocardial perfusion imaging', 1, '0', 'both', '00INVE145', 1),
(908, 'H pylori', 0, '0', 'category1', '', 0),
(909, 'Abdominal Ultrasound', 0, '0', '', '', 0),
(910, 'PELVIC USG', 0, '0', '', '', 0),
(911, 'Abdomino-Pelvic Ultrasound(Female)', 0, '0', '', '', 0),
(912, 'Abdomino-Pelvic Ultrasound(Male)', 0, '0', '', '', 0),
(913, 'Breast Ultrasound', 0, '0', '', '', 0),
(914, '1st Trimester Obstetris Ultrasound', 0, '0', '', '', 0),
(915, 'Second & Third(2nd/3rd) Trimester', 0, '0', '', '', 0),
(916, 'Scrotal / Testicival USG', 0, '0', '', '', 0),
(937, 'Venous Doppler USG - Lower Limbs', 0, '0', '', '', 0),
(938, 'Arterial Doppler USG - Lover Limbs', 0, '0', '', '', 0),
(939, 'Fetal Anomally USG', 0, '0', '', '', 0),
(940, 'Small Parts USG', 0, '0', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `labtest`
--

CREATE TABLE `labtest` (
  `id` int(11) NOT NULL,
  `centerusername` varchar(50) NOT NULL DEFAULT '',
  `patientid` varchar(20) NOT NULL DEFAULT '',
  `sessionid` varchar(50) NOT NULL DEFAULT '',
  `branch` varchar(20) NOT NULL DEFAULT '',
  `testresult` text DEFAULT NULL,
  `enteredby` varchar(50) NOT NULL DEFAULT '',
  `status` tinyint(5) NOT NULL DEFAULT 0,
  `viewstatus` tinyint(5) NOT NULL DEFAULT 0,
  `doneby` varchar(50) NOT NULL DEFAULT '',
  `datedone` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `labno` varchar(20) NOT NULL DEFAULT '',
  `attachedfiles` text DEFAULT NULL,
  `comment` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `labtest`
--

INSERT INTO `labtest` (`id`, `centerusername`, `patientid`, `sessionid`, `branch`, `testresult`, `enteredby`, `status`, `viewstatus`, `doneby`, `datedone`, `date`, `labno`, `attachedfiles`, `comment`) VALUES
(1, 'C002871450577', 'E63670-2021', 'E63670-2021-1625563656', '526099782', 'YToxOntpOjE7YTo2OntzOjE3OiJwYXJhbWV0ZXJ0ZXN0bmFtZSI7czoyMzoiMXN0IFRyaW1lc3RlciBVU0cgKE9CUykiO3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6NjoiUmVwb3J0IjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6MTQ6InBhcmFtZXRlcnJhbmdlIjtzOjA6IiI7czo4OiJmaW5kaW5ncyI7czo4OiJHT09EPGJyPiI7czo0OiJ1bml0IjtzOjA6IiI7fX0=', 'U060600711380', 1, 1, 'U501254926-2021', '2021-07-06 11:14:12', '2021-07-06 11:13:49', 'L542835467-2021', NULL, '&lt;p class=&quot;MsoNormal&quot; style=&quot;margin: 12pt 0in 0.0001pt; line-height: 19.5px;&quot;&gt;&lt;span style=&quot;font-size: 13pt; line-height: 26px; font-family: &amp;quot;Times New Roman&amp;quot;, serif;&quot;&gt;Early intrauterine gestation at 5 weeks 3 Days.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin: 12pt 0in 0.0001pt; line-height: 19.5px;&quot;&gt;&lt;span style=&quot;font-size: 13pt; line-height: 26px; font-family: &amp;quot;Times New Roman&amp;quot;, serif;&quot;&gt;Rescan in 4 weeks for further evaluation.&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot; style=&quot;margin: 12pt 0in 0.0001pt; line-height: 19.5px;&quot;&gt;&lt;span style=&quot;font-size: 13pt; line-height: 26px; font-family: &amp;quot;Times New Roman&amp;quot;, serif;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/p&gt;'),
(2, 'C002871450577', 'M88518-2021', 'M88518-2021-1625649907', '526099782', 'YTo2OntpOjE7YTo2OntzOjE3OiJwYXJhbWV0ZXJ0ZXN0bmFtZSI7czozOiJCIEYiO3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTA6IkJmIEZvciBNcHMiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czoxNDoicGFyYW1ldGVycmFuZ2UiO3M6MDoiIjtzOjg6ImZpbmRpbmdzIjtzOjU6IlN0cmF3IjtzOjQ6InVuaXQiO3M6MDoiIjt9aToyO2E6Njp7czoxNzoicGFyYW1ldGVydGVzdG5hbWUiO3M6MTM6IkxpcGlkIFByb2ZpbGUiO3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTc6IlRvdGFsIENob2xlc3Ryb2wgIjtzOjk6InJlZmVyZW5jZSI7czo1NDoiWzw1LjIgRGVzaXJhYmxlXVs1LjIgLSA2LjIgQm9yZGVybGluZSBIaWdoXVs+Ni4yIEhpZ2hdIjtzOjE0OiJwYXJhbWV0ZXJyYW5nZSI7czoxMDoiMy41MCAtIDUuMiI7czo4OiJmaW5kaW5ncyI7czoxOiIyIjtzOjQ6InVuaXQiO3M6NjoibW1vbC9sIjt9aTozO2E6Njp7czoxNzoicGFyYW1ldGVydGVzdG5hbWUiO3M6MTM6IkxpcGlkIFByb2ZpbGUiO3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTU6IkhETC1DaG9sZXN0ZXJvbCI7czo5OiJyZWZlcmVuY2UiO3M6NTc6Ils8MS4wIFVuZGVzaXJhYmxlXVsxLjAgLSAxLjYgQWNjZXB0YWJsZV0gWz4xLjYgRGVzaXJhYmxlXSI7czoxNDoicGFyYW1ldGVycmFuZ2UiO3M6OToiMS4wIC0gMS42IjtzOjg6ImZpbmRpbmdzIjtzOjE6IjEiO3M6NDoidW5pdCI7czo2OiJtbW9sL2wiO31pOjQ7YTo2OntzOjE3OiJwYXJhbWV0ZXJ0ZXN0bmFtZSI7czoxMzoiTGlwaWQgUHJvZmlsZSI7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNToiTERMLUNob2xlc3Rlcm9sIjtzOjk6InJlZmVyZW5jZSI7czoxMDA6Ils8MTIuNiBvcHRpbWFsXVsyLjYtIDMuMyBOZWFyIE9wdGltYWxdIFszLjQgLSA0LjEgIEJvcmRlcmxpbmUgSGlnaF0gWzQuMiAtIDQuOSBIaWdoXVs+NC45IFZlcnkgSGlnaF0iO3M6MTQ6InBhcmFtZXRlcnJhbmdlIjtzOjEwOiIwLjAgLSAzLjQwIjtzOjg6ImZpbmRpbmdzIjtzOjE6IjIiO3M6NDoidW5pdCI7czo2OiJtbW9sL2wiO31pOjU7YTo2OntzOjE3OiJwYXJhbWV0ZXJ0ZXN0bmFtZSI7czoxMzoiTGlwaWQgUHJvZmlsZSI7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMzoiVHJpZ2x5Y2VyaWRlICI7czo5OiJyZWZlcmVuY2UiO3M6NzQ6Ils8MS43IE5vcm1hbF1bMS43LSAyLjMgQm9yZGVyIGxpbmUgSGlnaF0gWzIuNCAtIDUuNiBIaWdoXSBbPjUuNiBWZXJ5IEhpZ2hdIjtzOjE0OiJwYXJhbWV0ZXJyYW5nZSI7czoxMDoiMC4wIC0gMS43MCI7czo4OiJmaW5kaW5ncyI7czoxOiIxIjtzOjQ6InVuaXQiO3M6NjoibW1vbC9sIjt9aTo2O2E6Njp7czoxNzoicGFyYW1ldGVydGVzdG5hbWUiO3M6MTM6IkxpcGlkIFByb2ZpbGUiO3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6Mjk6IkNob2xlc3Rlcm9sIChUb3RhbCkvSERMIFJhdGlvIjtzOjk6InJlZmVyZW5jZSI7czozNjoiWzw1LjAwIERlc2lyYWJsZV1bPiA1LjAgVW5kZXNpcmFibGVdIjtzOjE0OiJwYXJhbWV0ZXJyYW5nZSI7czo5OiIwLjAgLSA1LjAiO3M6ODoiZmluZGluZ3MiO3M6MToiMyI7czo0OiJ1bml0IjtzOjU6IlJhdGlvIjt9fQ==', 'U579105540-2021', 1, 1, 'U579105540-2021', '2021-07-07 09:37:26', '2021-07-07 09:34:22', 'L084958258-2021', NULL, ''),
(3, 'C002871450577', 'M55911-2021', 'M55911-2021-1625577671', '526099782', 'YTo0OntpOjE7YTo2OntzOjE3OiJwYXJhbWV0ZXJ0ZXN0bmFtZSI7czoyMjoiRnVsbCBCbG9vZCBDb3VudCAoRkJDKSI7czoxMzoicGFyYW1ldGVybmFtZSI7czo0OiIqV0JDIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6MTQ6InBhcmFtZXRlcnJhbmdlIjtzOjEwOiI0LjAgLSAxMC4wIjtzOjg6ImZpbmRpbmdzIjtzOjE6IjEiO3M6NDoidW5pdCI7czo4OiJ4MTBeMy91TCI7fWk6MjthOjY6e3M6MTc6InBhcmFtZXRlcnRlc3RuYW1lIjtzOjU6IkhCQS9DIjtzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjY6IlJFUE9SVCI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czoxNDoicGFyYW1ldGVycmFuZ2UiO3M6MDoiIjtzOjg6ImZpbmRpbmdzIjtzOjI2OiJhc2RhIHNkYXNkYXNkYXMgZGFzZGFzZGFzZCI7czo0OiJ1bml0IjtzOjA6IiI7fWk6MzthOjY6e3M6MTc6InBhcmFtZXRlcnRlc3RuYW1lIjtzOjM6IkZCUyI7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJGQlMiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czoxNDoicGFyYW1ldGVycmFuZ2UiO3M6OToiMy40IC0gNi45IjtzOjg6ImZpbmRpbmdzIjtzOjEyOiJhc2Rhc2Rhc2Rhc2QiO3M6NDoidW5pdCI7czo2OiJtbW9sL2wiO31pOjQ7YTo2OntzOjE3OiJwYXJhbWV0ZXJ0ZXN0bmFtZSI7czoyNToiTGl2ZXIgRnVuY3Rpb24gVGVzdCAoTEZUKSI7czoxMzoicGFyYW1ldGVybmFtZSI7czoyOToiRGlyZWN0IEJpbGlydWJpbiAoQ29uanVnYXRlZCkiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czoxNDoicGFyYW1ldGVycmFuZ2UiO3M6MTA6IjAuMCAtIDUuMTMiO3M6ODoiZmluZGluZ3MiO3M6NjoiYXNkYXNkIjtzOjQ6InVuaXQiO3M6Nzoizrxtb2wvTCI7fX0=', 'U579105540-2021', 0, 0, '', NULL, '2021-07-07 09:46:20', 'L058998195-2021', NULL, ''),
(4, 'C002871450577', 'H60224-2021', 'h60224-2021-1625664952', '526099782', 'YToxOntpOjE7YTo2OntzOjE3OiJwYXJhbWV0ZXJ0ZXN0bmFtZSI7czoyNDoiVGVzdGljdWxhciBQcm9zdGF0ZSAgVVNHIjtzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjY6IlJFUE9SVCI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjE0OiJwYXJhbWV0ZXJyYW5nZSI7czowOiIiO3M6ODoiZmluZGluZ3MiO3M6NjM6InRoZSB0aGUgamogYXNnZGdoYWdkIGdhc2Qgc2dnaGFzZ2Qgc2dkaHNkIHNnZHMgZ2dhc2hkZyBhc2hkPGJyPiI7czo0OiJ1bml0IjtzOjA6IiI7fX0=', 'U579105540-2021', 0, 0, '', NULL, '2021-07-07 13:37:37', 'L341042070-2021', NULL, ''),
(5, 'C002871450577', 'K29729-2021', 'K29729-2021-1625572884', '526099782', 'YToxOntpOjE7YTo2OntzOjE3OiJwYXJhbWV0ZXJ0ZXN0bmFtZSI7czoxMToiQ2hlc3QgWC1SYXkiO3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTE6IkNoZXN0IFgtUmF5IjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6MTQ6InBhcmFtZXRlcnJhbmdlIjtzOjA6IiI7czo4OiJmaW5kaW5ncyI7czoyNToiYXNkYXNkIGhhanNqIGhqc2FkIGphPGJyPiI7czo0OiJ1bml0IjtzOjA6IiI7fX0=', 'U579105540-2021', 0, 0, '', NULL, '2021-07-08 06:25:54', 'L760080826-2021', NULL, ''),
(6, 'C002871450577', 'N21509-2021', 'N21509-2021-1625566200', '526099782', 'YToxOntpOjE7YTo2OntzOjE3OiJwYXJhbWV0ZXJ0ZXN0bmFtZSI7czoxMjoiTFQgQXJtIFgtUmF5IjtzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjY6IlJlcG9ydCI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjE0OiJwYXJhbWV0ZXJyYW5nZSI7czowOiIiO3M6ODoiZmluZGluZ3MiO3M6NzM6IjxwPjx1PjxiPnNkZnNkZiBzZGYgc2Rmc2Rmc2Rmc2Rmc2RmZHM8L2I+PC91PjwvcD48cD5zZCBmc2Rmc2Rmc2RmPGJyPjwvcD4iO3M6NDoidW5pdCI7czowOiIiO319', 'U579105540-2021', 0, 0, '', NULL, '2021-07-08 06:33:46', 'L503619567-2021', NULL, 'afddsfsdf sdfsdfsd fsdfsdf sdfsd&lt;br&gt;'),
(7, 'C002871450577', 'H60224-2021', 'h60224-2021-1628515746', '526099782', 'YToxOntpOjE7YTo2OntzOjE3OiJwYXJhbWV0ZXJ0ZXN0bmFtZSI7czo2OiJIQi9QQ1YiO3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MjoiSEIiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czoxNDoicGFyYW1ldGVycmFuZ2UiO3M6MTE6IjExLjUgLSAxNi41IjtzOjg6ImZpbmRpbmdzIjtzOjI6ImRmIjtzOjQ6InVuaXQiO3M6NDoiZy9kTCI7fX0=', 'U579105540-2021', 1, 1, 'U579105540-2021', '2021-08-09 13:48:19', '2021-08-09 13:31:46', 'L276923491-2021', NULL, 'zxsdaasd'),
(8, 'C002871450577', 'D09594-2021', 'D09594-2021-1625571577', '526099782', 'YToxOntpOjE7YTo2OntzOjE3OiJwYXJhbWV0ZXJ0ZXN0bmFtZSI7czo3OiJSVCBLbmVlIjtzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjc6IlJUIEtuZWUiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czoxNDoicGFyYW1ldGVycmFuZ2UiO3M6MDoiIjtzOjg6ImZpbmRpbmdzIjtzOjc1OiJ0cmR0ZHJ0ZHQgZHJ0cmRmdHJkIHRyZHRyZCB0cmR0cmR0IHJkdHJkdHImYW1wbmJzcDsgdHJyZHQgZHQmbHRicj4mbHRwPjwvcD4iO3M6NDoidW5pdCI7czowOiIiO319', 'U579105540-2021', 0, 0, '', NULL, '2021-08-15 01:13:27', 'L567711203-2021', NULL, '&lt;p&gt;asdas dasdasdasd &quot;asdasdasdasdas&quot; asdasdasdasd asdasdasasd asdasdasdasd&lt;/p&gt;&lt;p&gt;asd asdasdasd\'asdasd as&quot;&lt;br&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `nhis`
--

CREATE TABLE `nhis` (
  `id` int(11) NOT NULL,
  `nhisid` varchar(50) NOT NULL DEFAULT '',
  `patientusername` varchar(20) NOT NULL DEFAULT '',
  `centerusername` varchar(20) NOT NULL DEFAULT '',
  `code` varchar(20) NOT NULL DEFAULT '',
  `sessionid` varchar(50) NOT NULL DEFAULT '',
  `attendance_type` varchar(30) NOT NULL DEFAULT '',
  `service_type` varchar(100) NOT NULL DEFAULT '',
  `scheme_code` varchar(50) NOT NULL DEFAULT '',
  `serial_number` varchar(20) NOT NULL DEFAULT '',
  `membership_number` varchar(20) NOT NULL DEFAULT '',
  `claim_number` varchar(20) NOT NULL DEFAULT '',
  `issued` varchar(20) NOT NULL DEFAULT '',
  `expiry` varchar(20) NOT NULL DEFAULT '',
  `dateofattendance` datetime DEFAULT NULL,
  `servicetype_A` tinyint(5) NOT NULL DEFAULT 0,
  `pharmacyservice` tinyint(5) NOT NULL DEFAULT 0,
  `servicetype_B` tinyint(5) NOT NULL DEFAULT 0,
  `first_visit` date DEFAULT NULL,
  `second_visit` date DEFAULT NULL,
  `duration` varchar(10) NOT NULL DEFAULT '',
  `outcome` tinyint(5) NOT NULL DEFAULT 0,
  `attendancetype` tinyint(5) NOT NULL DEFAULT 0,
  `specialty_code` varchar(20) NOT NULL DEFAULT '',
  `specialty_description` varchar(100) NOT NULL DEFAULT '',
  `specialty_mdc` varchar(5) NOT NULL DEFAULT '',
  `totalservice` varchar(11) NOT NULL DEFAULT '0',
  `physician` varchar(100) NOT NULL DEFAULT '',
  `physicianid` varchar(50) NOT NULL DEFAULT '',
  `procedures` text DEFAULT NULL,
  `diagnosis` text DEFAULT NULL,
  `investigation` text DEFAULT NULL,
  `medication` text DEFAULT NULL,
  `service` text DEFAULT NULL,
  `status` tinyint(5) NOT NULL DEFAULT 0,
  `date_completed` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pettycash`
--

CREATE TABLE `pettycash` (
  `id` int(11) NOT NULL,
  `amt` varchar(10) NOT NULL DEFAULT '',
  `type` varchar(10) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `createdby` varchar(50) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `branch` varchar(20) NOT NULL DEFAULT '',
  `centerusername` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pettycash`
--

INSERT INTO `pettycash` (`id`, `amt`, `type`, `description`, `createdby`, `date`, `branch`, `centerusername`) VALUES
(1, '12', '1', 'as sdasd as', 'U579105540-2021', '2021-07-07 12:01:42', '526099782', 'C002871450577');

-- --------------------------------------------------------

--
-- Table structure for table `receivables`
--

CREATE TABLE `receivables` (
  `id` int(11) NOT NULL,
  `centerusername` varchar(50) NOT NULL DEFAULT '',
  `enteredby` varchar(50) NOT NULL DEFAULT '',
  `items` varchar(100) NOT NULL DEFAULT '',
  `cost` varchar(11) NOT NULL DEFAULT '0',
  `unit` varchar(5) NOT NULL DEFAULT '',
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receivables`
--

INSERT INTO `receivables` (`id`, `centerusername`, `enteredby`, `items`, `cost`, `unit`, `date`) VALUES
(1, 'C358607563120', 'U968027533999', 'gloves', '0', '', '2021-03-01 11:44:07'),
(2, 'C358607563120', 'U968027533999', 'syringe / needle', '0', '', '2021-03-01 11:44:23'),
(3, 'C358607563120', 'U968027533999', 'hbsag kits', '0', '', '2021-03-01 11:44:50'),
(4, 'C358607563120', 'U968027533999', 'cotton', '0', '', '2021-03-08 17:44:43'),
(6, 'C358607563120', 'U968027533999', 'phlebotomy plaster', '0', '', '2021-03-08 17:45:44'),
(7, 'C358607563120', 'U968027533999', 'methylated spirit', '0', '', '2021-03-08 17:46:04'),
(8, 'C358607563120', 'U968027533999', 'vacutainer needles', '0', '', '2021-03-08 17:46:29'),
(9, 'C358607563120', 'U968027533999', 'potasium', '0', '', '2021-03-08 17:46:58'),
(10, 'C358607563120', 'U968027533999', 'chloride', '0', '', '2021-03-08 17:47:06'),
(11, 'C358607563120', 'U968027533999', 'sodium', '0', '', '2021-03-08 17:47:19'),
(12, 'C358607563120', 'U968027533999', 'urea', '0', '', '2021-03-08 17:47:33'),
(13, 'C358607563120', 'U968027533999', 'creatinine', '0', '', '2021-03-08 17:47:45'),
(14, 'C358607563120', 'U968027533999', 'cholesterol', '0', '', '2021-03-08 17:48:05'),
(15, 'C358607563120', 'U968027533999', 'hdl cholesterol', '0', '', '2021-03-08 17:48:24'),
(16, 'C358607563120', 'U968027533999', 'triglyceride', '0', '', '2021-03-08 17:48:40'),
(17, 'C358607563120', 'U968027533999', 'bilirubin', '0', '', '2021-03-08 17:49:04'),
(18, 'C358607563120', 'U968027533999', 'total protein', '0', '', '2021-03-08 17:49:19'),
(19, 'C358607563120', 'U968027533999', 'albumin', '0', '', '2021-03-08 17:49:34'),
(20, 'C358607563120', 'U968027533999', 'ast', '0', '', '2021-03-08 17:49:42'),
(21, 'C358607563120', 'U968027533999', 'alt', '0', '', '2021-03-08 17:49:52'),
(22, 'C358607563120', 'U968027533999', 'ggt', '0', '', '2021-03-08 17:49:59'),
(23, 'C358607563120', 'U968027533999', 'alp', '0', '', '2021-03-08 17:50:08'),
(24, 'C358607563120', 'U968027533999', 'uric acid', '0', '', '2021-03-08 17:50:27'),
(25, 'C358607563120', 'U968027533999', 'glycated haemoglobin', '0', '', '2021-03-08 17:51:01'),
(26, 'C358607563120', 'U968027533999', 'glucose strips', '0', '', '2021-03-08 17:51:20'),
(27, 'C358607563120', 'U968027533999', 'widal kits', '0', '', '2021-03-08 17:51:42'),
(28, 'C358607563120', 'U968027533999', 'urine strips', '0', '', '2021-03-08 17:51:55'),
(29, 'C359851819001', 'U528321717-2021', 'gloves', '0', '', '2021-03-13 10:09:58'),
(30, 'C358607563120', 'U968027533999', 'swab sticks', '0', '', '2021-03-16 16:59:10'),
(31, 'C358607563120', 'U968027533999', 'lyse', '0', '', '2021-03-16 16:59:35'),
(32, 'C358607563120', 'U968027533999', 'rinse', '0', '', '2021-03-16 16:59:49'),
(33, 'C358607563120', 'U968027533999', 'detergent', '0', '', '2021-03-16 17:00:00'),
(34, 'C358607563120', 'U968027533999', 'edta tubes', '0', '', '2021-03-16 17:00:50'),
(35, 'C358607563120', 'U968027533999', 'gel seterator tubes', '0', '', '2021-03-16 17:01:14'),
(36, 'C358607563120', 'U968027533999', 'tris buffer', '0', '', '2021-03-16 17:01:47'),
(37, 'C358607563120', 'U968027533999', 'ez cleaner', '0', '', '2021-03-16 17:02:03'),
(38, 'C358607563120', 'U968027533999', 'glass slides', '0', '', '2021-03-16 17:02:14'),
(39, 'C358607563120', 'U968027533999', 'pipette tips yellow', '0', '', '2021-03-16 17:04:41'),
(40, 'C358607563120', 'U968027533999', 'pipette tips blue', '0', '', '2021-03-16 17:04:55'),
(41, 'C663635942342', 'U631773963-2021', 'vdrl strips', '0', '', '2021-04-06 16:49:03'),
(42, 'C663635942342', 'U631773963-2021', 'h pylori (stool)', '0', '', '2021-04-06 16:49:53'),
(43, 'C663635942342', 'U631773963-2021', 'hepatitis b strips', '0', '', '2021-04-06 16:50:28'),
(44, 'C663635942342', 'U631773963-2021', 'hiv strips', '0', '', '2021-04-06 16:51:01'),
(45, 'C663635942342', 'U631773963-2021', 'giemsa stain', '0', '', '2021-04-06 16:51:32'),
(46, 'C663635942342', 'U631773963-2021', 'pipette tip (yellow)', '0', '', '2021-04-06 16:51:58'),
(47, 'C663635942342', 'U631773963-2021', 'pipette tip ( blue )', '0', '', '2021-04-06 16:52:23'),
(48, 'C663635942342', 'U631773963-2021', 'combi 10', '0', '', '2021-04-06 16:52:47'),
(49, 'C663635942342', 'U631773963-2021', 'syringe (2ml)', '0', '', '2021-04-06 16:53:10'),
(50, 'C663635942342', 'U631773963-2021', 'malaria kit', '0', '', '2021-04-06 16:53:45'),
(51, 'C663635942342', 'U631773963-2021', 'cotton wool', '0', '', '2021-04-06 16:54:02'),
(52, 'C663635942342', 'U631773963-2021', 'phlebotomy plaster', '0', '', '2021-04-06 16:54:55'),
(53, 'C663635942342', 'U631773963-2021', 'slide (plain)', '0', '', '2021-04-06 16:55:21'),
(54, 'C663635942342', 'U631773963-2021', 'slide ( frosted )', '0', '', '2021-04-06 16:55:41'),
(55, 'C663635942342', 'U631773963-2021', 'cover slip', '0', '', '2021-04-06 16:56:02'),
(56, 'C663635942342', 'U631773963-2021', 'edta tube', '0', '', '2021-04-06 16:56:22'),
(57, 'C663635942342', 'U631773963-2021', 'serum seperator tube (sst)', '0', '', '2021-04-06 16:57:41'),
(58, 'C663635942342', 'U631773963-2021', 'syringe (5ml)', '0', '', '2021-04-06 17:17:08'),
(59, 'C663635942342', 'U631773963-2021', 'urine strip', '0', '', '2021-04-06 17:17:44'),
(60, 'C663635942342', 'U631773963-2021', 'mopping bucket', '0', '', '2021-04-07 08:45:59'),
(61, 'C663635942342', 'U631773963-2021', 'standing broom', '0', '', '2021-04-07 08:46:22'),
(62, 'C663635942342', 'U631773963-2021', 'waste bag (blue)', '0', '', '2021-04-07 08:47:11'),
(63, 'C663635942342', 'U631773963-2021', 'mopping stick', '0', '', '2021-04-07 08:53:30'),
(64, 'C663635942342', 'U631773963-2021', 'standing broom', '0', '', '2021-04-07 08:53:52'),
(65, 'C706877632775', 'U279908219702', 'upt kits', '0', '', '2021-04-21 06:07:06'),
(66, 'C706877632775', 'U279908219702', 'hep b kits', '0', '', '2021-04-21 06:08:35'),
(67, 'C263095638551', 'U317942571-2021', 'gloves', '0', '', '2021-05-28 13:50:33'),
(68, 'C263095638551', 'U317942571-2021', 'malaria', '0', '', '2021-05-28 13:50:58');

-- --------------------------------------------------------

--
-- Table structure for table `refund`
--

CREATE TABLE `refund` (
  `id` int(11) NOT NULL,
  `centerusername` varchar(50) NOT NULL DEFAULT '',
  `branch` varchar(11) NOT NULL DEFAULT '',
  `labno` varchar(20) NOT NULL DEFAULT '',
  `patientid` varchar(10) NOT NULL DEFAULT '',
  `enteredby` varchar(20) NOT NULL DEFAULT '',
  `refund` varchar(11) NOT NULL DEFAULT '',
  `date` datetime NOT NULL,
  `selectedtest` text DEFAULT NULL,
  `remark` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registerpatient`
--

CREATE TABLE `registerpatient` (
  `id` int(11) NOT NULL,
  `centerusername` varchar(50) NOT NULL DEFAULT '',
  `enteredby` varchar(50) NOT NULL DEFAULT '',
  `branch` varchar(20) NOT NULL DEFAULT '',
  `patientid` varchar(20) NOT NULL DEFAULT '',
  `firstname` varchar(50) NOT NULL DEFAULT '',
  `surname` varchar(50) NOT NULL DEFAULT '',
  `contact` varchar(15) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `residence` text DEFAULT NULL,
  `marital` varchar(15) NOT NULL DEFAULT '',
  `yob` varchar(5) NOT NULL DEFAULT '',
  `mob` varchar(15) NOT NULL DEFAULT '',
  `dob` varchar(3) NOT NULL DEFAULT '',
  `sbn` tinyint(5) NOT NULL DEFAULT 0 COMMENT 'send birthday noty',
  `gender` varchar(10) NOT NULL DEFAULT '',
  `town` varchar(50) NOT NULL DEFAULT '',
  `nationality` varchar(100) NOT NULL DEFAULT '',
  `passport` varchar(50) NOT NULL DEFAULT '',
  `flight` varchar(50) NOT NULL DEFAULT '',
  `status` varchar(5) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `insuranceschemes` varchar(100) NOT NULL DEFAULT '',
  `schemenumber` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registerpatient`
--

INSERT INTO `registerpatient` (`id`, `centerusername`, `enteredby`, `branch`, `patientid`, `firstname`, `surname`, `contact`, `email`, `residence`, `marital`, `yob`, `mob`, `dob`, `sbn`, `gender`, `town`, `nationality`, `passport`, `flight`, `status`, `date`, `insuranceschemes`, `schemenumber`) VALUES
(1, 'C002871450577', 'U579105540-2021', '526099782', 'H60224-2021', 'helena', 'ahelegbe', '0542919281', '', '', '', '1993', 'July', '7', 1, 'Female', '', 'Ghana', '', '', '0', '2021-06-26 16:17:47', '865381534', ''),
(2, 'C002871450577', 'U579105540-2021', '526099782', 'B42006-2021', 'bismark', 'amoah sekyi', '0243173987', '', '', '', '1979', 'July', '6', 1, 'Male', '', 'Ghana', '', '', '0', '2021-07-06 09:15:51', '', ''),
(3, 'C002871450577', 'U579105540-2021', '526099782', 'E63670-2021', 'Evelyn', 'Adzai', '0545800634', '', '', '', '1997', 'January', '1', 0, 'Female', '', 'Ghana', '', '', '0', '2021-07-06 09:27:34', '', ''),
(4, 'C002871450577', 'U579105540-2021', '526099782', 'D11533-2021', 'Dora', 'Agbavitor', '0242850367', '', '', '', '1985', 'January', '1', 0, 'Female', '', 'Ghana', '', '', '0', '2021-07-06 10:04:52', '', ''),
(5, 'C002871450577', 'U579105540-2021', '526099782', 'N21509-2021', 'Nii', 'Ayi', '0243577092', '', '', '', '2004', 'January', '1', 0, 'Male', '', 'Ghana', '', '', '0', '2021-07-06 10:09:59', '', ''),
(6, 'C002871450577', 'U579105540-2021', '526099782', 'M26733-2021', 'Mamle Evelyn', 'Odor', '0557700441', '', '', '', '1976', 'January', '1', 0, 'Female', '', 'Ghana', '', '', '0', '2021-07-06 10:20:44', '', ''),
(7, 'C002871450577', 'U579105540-2021', '526099782', 'I99287-2021', 'Isaac', 'Osuwaley Alabi', '0207492907', '', '', '', '1976', 'January', '1', 0, 'Male', '', 'Ghana', '', '', '0', '2021-07-06 10:25:38', '', ''),
(8, 'C002871450577', 'U579105540-2021', '526099782', 'E28289-2021', 'Emelia', 'Essilfie', '0555605856', '', '', '', '1977', 'January', '1', 0, 'Female', '', 'Ghana', '', '', '0', '2021-07-06 10:29:31', '', ''),
(9, 'C002871450577', 'U579105540-2021', '526099782', 'P47574-2021', 'patricia', 'howard', '0558431931', '', '', '', '1982', 'January', '1', 0, 'Female', '', 'Ghana', '', '', '0', '2021-07-06 10:37:33', '', ''),
(10, 'C002871450577', 'U579105540-2021', '526099782', 'K24531-2021', 'Kwesi', 'Abaidoo', '0244663914', '', '', '', '1963', 'January', '1', 0, 'Male', '', 'Ghana', '', '', '0', '2021-07-06 11:00:50', '', ''),
(11, 'C002871450577', 'U579105540-2021', '526099782', 'R42108-2021', 'Ruth Akua', 'Agbesi', '0240754673', '', '', '', '1987', 'January', '1', 0, 'Female', '', 'Ghana', '', '', '0', '2021-07-06 11:28:47', '', ''),
(12, 'C002871450577', 'U579105540-2021', '526099782', 'D09594-2021', 'david nii', 'okai annang', '0509495177', '', '', '', '1995', 'January', '1', 0, 'Male', '', 'Ghana', '', '', '0', '2021-07-06 11:39:35', '482538814', '519700065-0'),
(13, 'C002871450577', 'U579105540-2021', '526099782', 'G62116-2021', 'Gloria', 'Nartey', '0558673835', '', '', '', '1979', 'January', '1', 0, 'Female', '', 'Ghana', '', '', '0', '2021-07-06 11:43:37', '', ''),
(14, 'C002871450577', 'U579105540-2021', '526099782', 'R11601-2021', 'Richard', 'Osah', '0244088363', '', '', '', '1947', 'January', '1', 0, 'Male', '', 'Ghana', '', '', '0', '2021-07-06 11:49:09', '', ''),
(15, 'C002871450577', 'U579105540-2021', '526099782', 'K29729-2021', 'Kwame', 'Darko', '0542034521', '', '', '', '1969', 'January', '1', 0, 'Male', '', 'Ghana', '', '', '0', '2021-07-06 12:01:20', '', ''),
(16, 'C002871450577', 'U579105540-2021', '526099782', 'S27379-2021', 'Sally', 'Gborglah', '0208331663', '', '', '', '1988', 'January', '1', 0, 'Female', '', 'Ghana', '', '', '0', '2021-07-06 13:08:20', '', ''),
(17, 'C002871450577', 'U579105540-2021', '526099782', 'S51313-2021', 'Selorm', 'Ayeke', '0245747811', '', '', '', '1992', 'January', '1', 0, 'Male', '', 'Ghana', '', '', '0', '2021-07-06 13:10:30', '', ''),
(18, 'C002871450577', 'U579105540-2021', '526099782', 'H07866-2021', 'helina', 'ocansey', '0240918663', '', '', '', '1967', 'January', '1', 0, 'Female', '', 'Ghana', '', '', '0', '2021-07-06 13:12:20', '', ''),
(19, 'C002871450577', 'U579105540-2021', '526099782', 'M55911-2021', 'mark', 'sunu', '0266111744', '', '', '', '1973', 'January', '1', 0, 'Male', '', 'Ghana', '', '', '0', '2021-07-06 13:21:09', '', ''),
(20, 'C002871450577', 'U060600711380', '', 'M88518-2021', 'Man', 'Sah', '', '', '', '', '', '', '', 0, 'Male', '', 'Ghana', '', '', '0', '2021-07-07 09:25:06', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `setupclaims`
--

CREATE TABLE `setupclaims` (
  `id` int(11) NOT NULL,
  `centerusername` varchar(50) NOT NULL DEFAULT '',
  `agencycode` varchar(20) NOT NULL DEFAULT '',
  `enteredby` varchar(50) NOT NULL DEFAULT '',
  `claimname` varchar(100) NOT NULL DEFAULT '',
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setupclaims`
--

INSERT INTO `setupclaims` (`id`, `centerusername`, `agencycode`, `enteredby`, `claimname`, `date`) VALUES
(10, 'C002871450577', '865381534', '', 'premier', '2021-06-26 16:01:32'),
(9, 'C002871450577', '482538814', '', 'apex', '2021-06-26 16:01:16');

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `id` int(11) NOT NULL,
  `centerusername` varchar(50) NOT NULL DEFAULT '',
  `message` text DEFAULT NULL,
  `recipients` text DEFAULT NULL,
  `senderid` varchar(20) NOT NULL DEFAULT 'Healthbuk',
  `date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `smstemplates`
--

CREATE TABLE `smstemplates` (
  `id` int(11) NOT NULL,
  `centerusername` varchar(50) NOT NULL DEFAULT '',
  `name` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplies`
--

CREATE TABLE `supplies` (
  `id` int(11) NOT NULL,
  `centerusername` varchar(20) NOT NULL DEFAULT '',
  `item` varchar(100) NOT NULL DEFAULT '',
  `supplier` varchar(100) NOT NULL DEFAULT '',
  `invoicenumber` varchar(50) NOT NULL DEFAULT '',
  `batch` varchar(50) NOT NULL DEFAULT '',
  `qtyreceived` varchar(11) NOT NULL DEFAULT '',
  `expiry` varchar(20) NOT NULL DEFAULT '',
  `unit` varchar(20) NOT NULL DEFAULT '',
  `datesupplied` varchar(20) NOT NULL DEFAULT '',
  `enteredby` varchar(100) NOT NULL DEFAULT '',
  `branch` varchar(20) NOT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testparameters`
--

CREATE TABLE `testparameters` (
  `id` int(11) NOT NULL,
  `parametername` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testparameters`
--

INSERT INTO `testparameters` (`id`, `parametername`) VALUES
(1, 'HB'),
(2, 'Na+'),
(3, 'Potassium (Plasma/Urine)'),
(4, 'Chloride'),
(5, 'Bicarbonate'),
(6, 'Anion Gap'),
(7, 'Urea (SI)'),
(8, 'Creatine (SI)'),
(9, 'Urea/Creatine Ratio'),
(10, 'Urea/Creatine Ratio'),
(11, 'RBC'),
(12, 'RDW'),
(13, 'HCT'),
(14, 'MCV'),
(15, 'MCH'),
(16, 'MCHC'),
(17, '*PLT'),
(18, 'MPV'),
(19, 'PDW'),
(20, 'WBC'),
(21, 'NEUT%'),
(22, 'LYMPH%'),
(23, 'RDW_SD'),
(24, 'RDW_CV'),
(25, 'MXD%'),
(26, 'MONO%'),
(27, 'EO%'),
(28, 'BASO%'),
(29, 'SGOT(AST)'),
(30, 'SGPT(ALT)'),
(31, 'Alkaline Phosphatase'),
(32, 'GGT'),
(33, 'Total Bilirubin (SI)'),
(34, 'Conjugated(Direct) Bilirubin'),
(35, 'UnConjugated(Indirect) Bilirubin'),
(36, 'Total Protein (SI)'),
(37, 'Albumin(SI)'),
(38, 'Globulin'),
(39, 'Total Cholestrol (SI)'),
(40, 'Triglyceride (SI)'),
(41, 'Direct HDL (SI)'),
(42, 'LDL'),
(43, 'VLDL'),
(44, 'Coronary Risk'),
(45, 'Malaria Parasitaemia(Trophozoite Count)'),
(46, 'BF(MPs)'),
(47, 'TYPHI'),
(48, 'PARATYPHI A'),
(49, 'PARATYPHI B'),
(50, 'PARATYPHI C'),
(51, 'NT-proBNP'),
(52, 'Macroscopy'),
(53, 'pH'),
(54, 'Protein'),
(55, 'Glucose'),
(56, 'Blood'),
(57, 'Bilirubin'),
(58, 'Pus Cell[/HPF]'),
(59, 'Epithelial cells [/HPF]'),
(60, 'RBC[/HPF]'),
(61, 'Spermatozoa'),
(62, 'WBC[/HPF]'),
(63, 'Unclassified Crystal[/HPF]'),
(64, 'Non-Squamous Epithelial'),
(65, 'Unclassified Crystal[/HPF]'),
(66, 'Budding Yeast[/HPF]'),
(67, 'Sperm [/HPF]'),
(68, 'Crystals'),
(69, 'Sodium'),
(70, 'Potassium'),
(71, 'Creatinine'),
(178, 'eGFR'),
(73, 'Urea'),
(74, 'CK-NAC'),
(75, 'CK-MB'),
(188, 'T. Protein'),
(77, 'LDH'),
(78, 'AST'),
(79, 'ESR'),
(80, 'Hepatitis B'),
(81, 'Retroviral (HIV I,II) Confirmation'),
(82, 'xCE\\xB1-AMY'),
(83, 'Sickle Cell Screen'),
(84, 'G-6-PD'),
(85, 'Blood group'),
(86, 'Pregnancy Test'),
(87, 'HB-Electrophorosis'),
(88, 'VDRL'),
(89, 'H-Pylori test'),
(90, 'Coombs Test'),
(91, 'Culture'),
(92, 'Isolate'),
(93, 'Sensitivity Test'),
(94, 'Antibiotics'),
(95, 'H-Pylori Test'),
(96, 'TSH'),
(97, 'FT3'),
(98, 'FT4'),
(99, 'T3'),
(100, 'T4'),
(396, 'FREE T3'),
(102, 'FT4'),
(103, 'T4'),
(104, 'Troponin I'),
(105, 'Troponin T'),
(106, 'Hepatitis A'),
(107, 'Hepatitis C'),
(108, 'Uric Acid'),
(109, 'Amylase'),
(110, 'Bleeding Time'),
(111, 'Clotting Time'),
(112, 'Prothrombin Time'),
(113, 'Control Time'),
(114, 'Ratio'),
(115, 'INR'),
(116, 'APTT'),
(117, 'Normal Plasma'),
(118, 'International Normalised Ratio (INR)'),
(119, 'LH'),
(120, 'Prolactin'),
(121, 'Progesterone'),
(122, 'Testosterone'),
(123, 'Estradiol'),
(124, 'Estradiol'),
(125, 'Time Produced'),
(126, 'Time Examined'),
(127, 'Volume'),
(128, 'Method'),
(129, 'Consistency'),
(131, 'Deformed Head'),
(132, 'Deformed Tail'),
(133, 'Count(>=20x10^6 Spermatozoa/mL)'),
(135, 'RBS'),
(136, 'HBsAg'),
(137, 'HBsAb'),
(138, 'HBeAg'),
(139, 'HBeAb'),
(140, 'HBcAb'),
(141, 'Gonorrhea'),
(142, 'Chlamydia'),
(391, 'QUANTITATIVE TPHA '),
(389, 'RBCS'),
(145, 'T.Vaginalis'),
(146, 'Yeast Cells'),
(147, 'Red Blood Cell[/HPF]'),
(148, 'Gram stain '),
(149, 'RDT'),
(150, 'HbA1c'),
(151, 'Retro screen'),
(152, 'PSA'),
(153, 'Phosphorus'),
(154, 'Calcium'),
(155, 'Serum Glucose'),
(156, 'Lipase'),
(157, 'Magnesium'),
(158, 'Beta HCG Quantitative'),
(159, 'Physical Examination'),
(160, 'Consistency'),
(161, 'Epithelial cells'),
(162, 'Pus Cell'),
(390, 'ACTIVATED PARTIAL THOMBOPLASTIN TIME'),
(164, 'Red Blood Cell'),
(165, 'Sensitivity Test'),
(166, 'Antibiotics'),
(167, 'FSH'),
(169, 'dsDNA'),
(170, 'ANTI-NUCLEAR ANTIBODIES'),
(171, 'C-REACTIVE PROTEIN'),
(172, 'Gram'),
(392, 'PHOSPHORUS (SI)'),
(174, 'dsDNA'),
(228, 'THROMBIN CLOTTING TIME'),
(176, 'C-REACTIVE PROTEIN'),
(179, 'K+'),
(180, 'T. Bilirubin'),
(181, 'D. Bilirubin'),
(182, 'Ind. Bilirubin'),
(229, 'D-DIMER'),
(184, 'K+'),
(185, 'T. Bilirubin'),
(186, 'D. Bilirubin'),
(187, 'Ind. Bilirubin'),
(189, 'AST(SGOT)'),
(190, 'Albumin'),
(191, 'ALP(Alkaline Phosphate'),
(192, 'ALT(SGPT)'),
(193, 'Gamma GT'),
(194, 'Cholesterol'),
(195, 'Triglycerides'),
(196, 'HDL Cholesterol'),
(197, 'LDL Cholesterol'),
(198, 'LDL/HDL'),
(199, 'URINE SUGAR'),
(200, 'FB Glucose'),
(201, 'RB Glucose'),
(202, 'Total Acid Phos.'),
(203, 'Pros Acid Phos.'),
(204, 'Inorg. Phos.'),
(205, 'Iron'),
(206, 'TIBC'),
(207, 'ALB/GLOB'),
(208, 'T. Protein'),
(414, 'P-LCR'),
(210, 'Albumin'),
(438, 'Platelets'),
(212, 'ALT(SGPT)'),
(214, 'Cholesterol'),
(215, 'Triglycerides'),
(216, 'HDL Cholesterol'),
(218, 'LDL/HDL'),
(463, 'CRYSTALS'),
(462, 'CASTS'),
(222, 'Total Acid Phos.'),
(223, 'Pros Acid Phos.'),
(224, 'Inorg. Phos.'),
(225, 'Iron'),
(226, 'TIBC'),
(227, 'ALB/GLOB'),
(230, 'CARDIAC MARKERS                         '),
(231, 'DHEA-S'),
(232, 'Neutrophils'),
(233, 'HCT'),
(234, 'T2'),
(235, 'GX'),
(236, 'G12'),
(237, 'W6'),
(238, 'W9'),
(239, 'F13'),
(240, 'F17'),
(241, 'F31'),
(242, 'F4'),
(243, 'F14'),
(244, 'ALLERGENS ASSAY'),
(245, 'F35'),
(246, 'SX1'),
(247, 'D1'),
(249, 'D-DIMER'),
(250, 'CARDIAC MARKERS                         '),
(251, 'DHEA-S'),
(252, 'Neutrophils'),
(253, 'HCT'),
(254, 'T2'),
(255, 'GX'),
(256, 'G12'),
(257, 'W6'),
(258, 'W9'),
(259, 'F13'),
(260, 'F17'),
(261, 'F31'),
(262, 'F4'),
(263, 'F14'),
(351, 'ALLERGEN EGG WHITE'),
(265, 'F35'),
(350, 'ALLERGEN TIMOTHY GRASS (g8) IGE'),
(268, 'ALLERGEN FISH COD (f3) IGE '),
(269, 'ALLERGEN EGG YOLK (f75) IGE '),
(271, 'ALLERGEN SESAME SEED (f10) IGE '),
(272, 'ALLERGEN SOYBEAN (f14) IGE '),
(273, 'ALLERGEN WALNUT (f256) IGE '),
(274, 'ALLERGEN WHEAT FLOUR (f4) IGE '),
(275, 'ALLERGEN CASEIN (f78) IGE '),
(276, 'ALLERGEN CRAB (f23) IGE '),
(277, 'ALLERGEN RYE FLOUR (f5) IGE '),
(278, 'ALLERGEN TOMATO (f25) IGE '),
(279, 'ALLERGEN CARROT (f31) IGE '),
(280, 'ALLERGEN ORANGE (f33) IGE '),
(281, 'ALLERGEN POTATO (f35) IGE '),
(282, 'ALLERGEN APPLE (f49) IGE '),
(283, 'ALLERGEN ALMOND'),
(284, 'ALLERGEN CELERY'),
(285, 'RESPIRATORY ALLERGIES'),
(286, 'ALLERGEN ALTERNA ALTE (m6) IGE '),
(287, 'ALLERGEN ASPERGILUS FUM (m3) IGE '),
(288, 'ALLERGEN FISH COD (f3) IGE '),
(352, 'ALLERGEN MILK PROTEIN (f2) IGE'),
(291, 'ALLERGEN SESAME SEED (f10) IGE '),
(292, 'ALLERGEN SOYBEAN (f14) IGE '),
(293, 'ALLERGEN WALNUT (f256) IGE '),
(294, 'ALLERGEN WHEAT FLOUR (f4) IGE '),
(353, 'SX1 Phadiatop (Mix) /Respiratory'),
(296, 'ALLERGEN CRAB (f23) IGE '),
(298, 'ALLERGEN TOMATO (f25) IGE '),
(299, 'ALLERGEN CARROT (f31) IGE '),
(300, 'ALLERGEN ORANGE (f33) IGE '),
(301, 'ALLERGEN POTATO (f35) IGE '),
(302, 'ALLERGEN APPLE (f49) IGE '),
(303, 'ALLERGEN ALMOND'),
(304, 'ALLERGEN CELERY'),
(305, 'RESPIRATORY ALLERGIES'),
(306, 'ALLERGEN ALTERNA ALTE (m6) IGE '),
(307, 'ALLERGEN ASPERGILUS FUM (m3) IGE '),
(308, 'ALLERGEN BERMUDA GRASS (g2) IGE '),
(309, 'ALLERGEN BOX ELDER (t1) IGE '),
(310, 'ALLERGEN CAT EPI DANDER (e1) IGE '),
(311, 'ALLERGEN CLADOSPORIUM HER (m2) IGE '),
(312, 'ALLERGEN COCKROACH (i6) IGE '),
(313, 'ALLERGEN COMMON RAGWEED (w1) IGE '),
(314, 'ALLERGEN COTTONWOOD (t14) IGE '),
(315, 'ALLERGEN D FARINAE (d2) IGE '),
(316, 'ALLERGEN D PTERONYSSINUS (d1) IGE '),
(317, 'ALLERGEN ELM TREE (t8) IGE '),
(318, 'ALLERGEN MAPLE LEAF SYC (t11) IGE '),
(319, 'ALLERGEN MOUNTAIN CEDER (t6) IGE '),
(320, 'ALLERGEN MULBERRY (t70) IGE '),
(321, 'ALLERGEN OAK TREE (t7) IGE '),
(322, 'ALLERGEN PECAN (t22) IGE'),
(323, 'ALLERGEN PENICILLIUM NOT (m1) IGE'),
(324, 'ALLERGEN ROUGH MARSHELD (w16) IGE'),
(325, 'ALLERGEN COMMON PIGWEED (w14) IGE'),
(326, 'ALLERGEN RUSSIAN THISTLE (w11) IGE'),
(327, 'ALLERGEN WALNUT TREE (t10) IGE'),
(348, 'ALLERGEN WHITE ASH (t15) IGE'),
(329, 'ALLERGEN BOX ELDER (t1) IGE '),
(330, 'ALLERGEN CAT EPI DANDER (e1) IGE '),
(331, 'ALLERGEN CLADOSPORIUM HER (m2) IGE '),
(332, 'ALLERGEN COCKROACH (i6) IGE '),
(333, 'ALLERGEN COMMON RAGWEED (w1) IGE '),
(334, 'ALLERGEN COTTONWOOD (t14) IGE '),
(335, 'ALLERGEN D FARINAE (d2) IGE '),
(336, 'ALLERGEN D PTERONYSSINUS (d1) IGE '),
(337, 'ALLERGEN ELM TREE (t8) IGE '),
(338, 'ALLERGEN MAPLE LEAF SYC (t11) IGE '),
(339, 'ALLERGEN MOUNTAIN CEDER (t6) IGE '),
(349, 'ALLERGEN DOG DANDER (e5) IGE'),
(341, 'ALLERGEN OAK TREE (t7) IGE '),
(342, 'ALLERGEN PECAN (t22) IGE'),
(343, 'ALLERGEN PENICILLIUM NOT (m1) IGE'),
(344, 'ALLERGEN ROUGH MARSHELD (w16) IGE'),
(345, 'ALLERGEN COMMON PIGWEED (w14) IGE'),
(346, 'ALLERGEN RUSSIAN THISTLE (w11) IGE'),
(347, 'ALLERGEN WALNUT TREE (t10) IGE'),
(354, 'TIMOTHY GRASS (g8)'),
(355, 'G12 Rye Grass'),
(356, 'E5 Dogshop'),
(357, 'D1 Derm. Pteronyssimus (DUST MITES)'),
(358, 'BIRCH GRASS (t3)'),
(359, 'MUGWORT (W6)'),
(360, 'FBS'),
(362, 'G6PD'),
(363, 'GROUPING'),
(394, 'IONIZED CALCIUM'),
(365, 'HIV I & II'),
(367, 'B/F'),
(368, 'ALLERGEN WHITE ASH (t15) IGE'),
(369, 'ALLERGEN DOG DANDER (e5) IGE'),
(370, 'ALLERGEN TIMOTHY GRASS (g8) IGE'),
(371, 'ALLERGEN EGG WHITE'),
(372, 'ALLERGEN MILK PROTEIN (f2) IGE'),
(373, 'SX1 Phadiatop (Mix) /Respiratory'),
(374, 'TIMOTHY GRASS (g8)'),
(375, 'G12 Rye Grass'),
(376, 'E5 Dogshop'),
(377, 'D1 Derm. Pteronyssimus (DUST MITES)'),
(378, 'BIRCH GRASS (t3)'),
(379, 'MUGWORT (W6)'),
(395, 'CALCIUM (SI)                                  '),
(388, 'HTC'),
(393, 'CORRECTED CALCIUM'),
(397, 'FREE T4'),
(398, 'QUANTITATIVE TPHA '),
(399, 'STOOL R/E'),
(400, '???	MICROSCOPY'),
(401, 'URINE FOR TYPHOID CARRIER'),
(402, '2HOUR POST-PRANDIAL GLUCOSE'),
(403, 'ALPHA FETO PROTEIN '),
(404, 'TOTAL HCG '),
(405, 'B/F for MPS'),
(406, 'TYPHOID'),
(408, 'S. TYPHI'),
(409, 'S. PARATYPHI  A'),
(410, 'S. PARATYPHI  B'),
(411, 'S. PARATYPHI  C'),
(412, 'B-HCG'),
(415, 'COVID-19'),
(417, 'FERRITIN (Elisa Method)'),
(418, 'FREE TESTOSTERONE '),
(420, '0 MINUTE'),
(421, '30 MINUTE'),
(422, '60 MINUTE'),
(423, '90 MINUTE'),
(424, '120 MINUTE'),
(425, '150 MINUTE'),
(426, 'Hepatitis A lgM'),
(427, 'Hepatitis A lgG'),
(428, 'HIV 1 RNA QUANTITATIVE '),
(429, 'HIV-I RNA LOG'),
(430, 'ELECTROPHORESIS'),
(431, 'HCV'),
(432, 'STOOL C/S'),
(433, 'SALMONELLA IgM'),
(434, 'SALMONELLA IgG'),
(435, 'HEPATITIS B VIRAL LOAD'),
(436, 'PCR HBV QUANTITATIVE'),
(437, 'VIRAL LOAD'),
(439, 'Platelecrit (PCT)'),
(440, 'P-LCR'),
(441, 'P-LCC'),
(442, 'Granulocytes'),
(443, 'Lymphocytes'),
(444, 'Mid Cells'),
(445, 'Eosinophil'),
(446, 'Monocytes'),
(447, 'Basophils'),
(448, 'Urea Nitrogen'),
(449, 'VLDL-Cholesterol'),
(450, 'Sperm Concentration  '),
(451, 'Total Sperm Count / Ejaculate'),
(452, 'Total Motile Count'),
(453, 'HEIGHT'),
(454, 'Weight'),
(455, 'HERPES IgG'),
(456, 'HERPES SIMPLEX VIRUS 1+2 IgM AB'),
(457, 'TOXOPLASMA IgG'),
(458, 'TOXOPLASMA IgM'),
(459, 'CYTOMEGALOVIRS IgM ANTIBODY'),
(460, 'CYTOMEGALOVIRUS IgG ANTIBODY'),
(461, 'CYTOMEGALOVIRUS IgG'),
(464, 'S. HEAMATOBIUM OVA'),
(465, 'Uterus'),
(466, 'Adnexa'),
(467, 'Pouch of douglas'),
(468, 'Pouch of douglas'),
(469, 'Liver'),
(470, 'Spleen'),
(471, 'Kidneys'),
(472, 'Gallbladder'),
(473, 'Pancreas'),
(474, 'Additional Comment'),
(475, 'Pouch of Douglas'),
(476, 'Urinary Bladder'),
(477, 'Recto-Vesical Recess'),
(478, 'Prostate'),
(479, 'Breast'),
(480, 'Axilla'),
(481, 'Number of Gestational sac/fetuses'),
(482, 'Fetal cardiac activity'),
(483, 'Mean sac diameter(MSD)'),
(484, 'Crown rump lenath(CRL)'),
(485, 'Estimated Gestational age(EGA)'),
(486, 'Estimated Date of Delivery (EDD)'),
(487, 'Placenta'),
(488, 'Presentation'),
(489, 'Liqour Volume(LV)'),
(490, 'Estimated Fetal Weight (EFW)'),
(491, 'Testes'),
(492, 'Epidiaymis'),
(493, 'Induinal Region'),
(494, 'Scrotum'),
(495, 'Head'),
(496, 'Face'),
(497, 'Thorax'),
(498, 'Abdomen'),
(499, 'Spine'),
(500, 'Extremities'),
(501, 'Plecentation'),
(502, 'Parts'),
(503, 'Skin and subcutaneous tissues'),
(504, 'Popliteal Veins'),
(505, 'Superficial femoral veins'),
(506, 'Common femoral veins'),
(507, 'Dorsalis Pedis Arteries');

-- --------------------------------------------------------

--
-- Table structure for table `testsetup`
--

CREATE TABLE `testsetup` (
  `id` int(11) NOT NULL,
  `centerusername` varchar(50) NOT NULL DEFAULT '',
  `enteredby` varchar(50) NOT NULL DEFAULT '',
  `branch` varchar(50) NOT NULL DEFAULT '',
  `testname` varchar(100) NOT NULL DEFAULT '',
  `cost` varchar(11) NOT NULL DEFAULT '0',
  `nhisprice` varchar(11) NOT NULL DEFAULT '0',
  `grdcode` varchar(10) NOT NULL DEFAULT '',
  `department` varchar(11) NOT NULL DEFAULT '',
  `ranking` varchar(11) NOT NULL DEFAULT '0',
  `type` tinyint(5) NOT NULL DEFAULT 0,
  `private` varchar(11) NOT NULL DEFAULT '0',
  `parameters` text DEFAULT NULL,
  `guideline` longtext DEFAULT NULL,
  `is_passage` tinyint(5) NOT NULL DEFAULT 0,
  `extra_info` tinyint(5) NOT NULL DEFAULT 0,
  `date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testsetup`
--

INSERT INTO `testsetup` (`id`, `centerusername`, `enteredby`, `branch`, `testname`, `cost`, `nhisprice`, `grdcode`, `department`, `ranking`, `type`, `private`, `parameters`, `guideline`, `is_passage`, `extra_info`, `date`) VALUES
(512, 'C002871450577', '', '526099782', 'HB', '25', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyOiJIQiI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjQ6ImcvZEwiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czo0OiIxMS41IjtzOjc6InNhbWVtYXgiO3M6NDoiMTYuMCI7fX0=', 'czowOiIiOw==', 0, 0, '2021-05-05 12:49:08'),
(461, 'C002871450577', '', '526099782', 'HB/PCV', '20', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyOiJIQiI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjQ6ImcvZEwiO3M6NzoibWFsZW1pbiI7czo0OiIxMi41IjtzOjc6Im1hbGVtYXgiO3M6NDoiMTcuNSI7czo5OiJmZW1hbGVtaW4iO3M6NDoiMTEuNSI7czo5OiJmZW1hbGVtYXgiO3M6NDoiMTYuNSI7czo4OiJjaGlsZG1pbiI7czo0OiIxMy4wIjtzOjg6ImNoaWxkbWF4IjtzOjQ6IjE4LjAiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-05 09:08:20'),
(462, 'C002871450577', '', '526099782', 'B F', '20', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMDoiQmYgZm9yIG1wcyI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 1, 0, '2021-05-05 09:08:20'),
(463, 'C002871450577', '', '526099782', 'Full Blood Count (FBC)', '40', '0', '', '', '', 1, '0', 'YToyMDp7aToxO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6NDoiKldCQyI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjg6IngxMF4zL3VMIjtzOjc6Im1hbGVtaW4iO3M6MzoiNC4wIjtzOjc6Im1hbGVtYXgiO3M6NDoiMTAuMCI7czo5OiJmZW1hbGVtaW4iO3M6MzoiNC4wIjtzOjk6ImZlbWFsZW1heCI7czo0OiIxMC4wIjtzOjg6ImNoaWxkbWluIjtzOjM6IjQuMCI7czo4OiJjaGlsZG1heCI7czo0OiIxMi4wIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToyO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6NjoiTFlNUEglIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6MToiJSI7czo3OiJtYWxlbWluIjtzOjQ6IjIwLjAiO3M6NzoibWFsZW1heCI7czo0OiI2MC4wIjtzOjk6ImZlbWFsZW1pbiI7czo0OiIyMC4wIjtzOjk6ImZlbWFsZW1heCI7czo0OiI2MC4wIjtzOjg6ImNoaWxkbWluIjtzOjQ6IjIwLjAiO3M6ODoiY2hpbGRtYXgiO3M6NDoiNzAuMCI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjQ6Ik1JRCUiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czoxOiIlIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MzoiMy4wIjtzOjc6InNhbWVtYXgiO3M6MzoiOC4wIjt9aTo0O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6NToiTkVVVCUiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czoxOiIlIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6NDoiNTAuMCI7czo3OiJzYW1lbWF4IjtzOjQ6IjcwLjAiO31pOjU7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJMWU1QSCMiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czo4OiJ4MTBeMy91TCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjM6IjEuMiI7czo3OiJzYW1lbWF4IjtzOjM6IjMuMiI7fWk6NjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjQ6Ik1JRCMiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czo4OiJ4MTBeMy91TCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjM6IjAuMyI7czo3OiJzYW1lbWF4IjtzOjM6IjAuOCI7fWk6NzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjU6Ik5FVVQjIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjg6IngxMF4zL3VMIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MzoiMS4yIjtzOjc6InNhbWVtYXgiO3M6MzoiNi44Ijt9aTo4O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MzoiUkJDIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6ODoieDEwXjYvdUwiO3M6NzoibWFsZW1pbiI7czozOiI0LjMiO3M6NzoibWFsZW1heCI7czozOiI2LjgiO3M6OToiZmVtYWxlbWluIjtzOjM6IjQuMyI7czo5OiJmZW1hbGVtYXgiO3M6MzoiNi4yIjtzOjg6ImNoaWxkbWluIjtzOjM6IjQuMyI7czo4OiJjaGlsZG1heCI7czozOiI3LjAiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjk7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJIR0IiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czo0OiJnL2RMIjtzOjc6Im1hbGVtaW4iO3M6NDoiMTMuNSI7czo3OiJtYWxlbWF4IjtzOjQ6IjE4LjAiO3M6OToiZmVtYWxlbWluIjtzOjQ6IjExLjAiO3M6OToiZmVtYWxlbWF4IjtzOjQ6IjE2LjAiO3M6ODoiY2hpbGRtaW4iO3M6NDoiMTMuMCI7czo4OiJjaGlsZG1heCI7czo0OiIxOC4wIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxMDthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjE3OiJIQUVNQVRPQ1JJVCAoSENUKSI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjE6IiUiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czo0OiIzNS4wIjtzOjc6InNhbWVtYXgiO3M6NDoiNTAuMCI7fWk6MTE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJNQ1YiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czoyOiJmTCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjQ6IjgwLjAiO3M6Nzoic2FtZW1heCI7czo1OiIxMDAuMCI7fWk6MTI7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJNQ0giO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czoyOiJwZyI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjQ6IjI3LjAiO3M6Nzoic2FtZW1heCI7czo0OiIzMi4wIjt9aToxMzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjQ6Ik1DSEMiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czo0OiJnL2RMIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6NDoiMzIuMCI7czo3OiJzYW1lbWF4IjtzOjQ6IjM2LjAiO31pOjE0O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6NjoiUkRXX1NEIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjI6ImZMIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6NDoiMTAuMCI7czo3OiJzYW1lbWF4IjtzOjQ6IjE1LjAiO31pOjE1O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6NjoiUkRXX0NWIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjE6IiUiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czo0OiIxMS41IjtzOjc6InNhbWVtYXgiO3M6NDoiMTQuNSI7fWk6MTY7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo5OiJQTEFURUxFVFMiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czo4OiJ4MTBeMy91TCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjU6IjE1MC4wIjtzOjc6InNhbWVtYXgiO3M6NToiNDUwLjAiO31pOjE3O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MzoiUERXIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6MjoiZkwiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czo0OiIxMC4wIjtzOjc6InNhbWVtYXgiO3M6NDoiMjAuMCI7fWk6MTg7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJNUFYiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czoyOiJmTCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjM6IjYuNSI7czo3OiJzYW1lbWF4IjtzOjQ6IjExLjAiO31pOjE5O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MzoiUENUIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6MToiJSI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjM6IjAuMSI7czo3OiJzYW1lbWF4IjtzOjM6IjAuNSI7fWk6MjA7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo1OiJQLUxDUiI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjE6IiUiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czo0OiIxMy4wIjtzOjc6InNhbWVtYXgiO3M6NDoiNDMuMCI7fX0=', 'czowOiIiOw==', 0, 0, '2021-05-05 09:08:20'),
(464, 'C002871450577', '', '526099782', 'Uric Acid', '45', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMzoiUyAtIFVyaWMgQWNpZCI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjY6InVtb2wvTCI7czo3OiJtYWxlbWluIjtzOjU6IjIwMi4wIjtzOjc6Im1hbGVtYXgiO3M6NToiNDE2LjAiO3M6OToiZmVtYWxlbWluIjtzOjU6IjE0My4wIjtzOjk6ImZlbWFsZW1heCI7czo1OiIzMzkuMCI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-05 09:08:20'),
(465, 'C002871450577', '', '526099782', 'Widal', '20', '0', '', '', '', 1, '0', 'YToyOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMDoiUy4gVFlQSEkgSCI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjEwOiJTLiBUWVBISSBPIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-05 09:08:20'),
(466, 'C002871450577', '', '526099782', 'Liver Function Test (LFT)', '70', '0', '', '', '', 1, '0', 'YToxMDp7aToxO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTU6IlRvdGFsIEJpbGlydWJpbiI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjc6Is68bW9sL0wiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czozOiI1LjAiO3M6Nzoic2FtZW1heCI7czo0OiIyMC4wIjt9aToyO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6Mjk6IkRpcmVjdCBCaWxpcnViaW4gKENvbmp1Z2F0ZWQpIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6Nzoizrxtb2wvTCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjM6IjAuMCI7czo3OiJzYW1lbWF4IjtzOjQ6IjUuMTMiO31pOjM7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozMzoiSW5kaXJlY3QgQmlsaXJ1YmluIChVbkNvbmp1Z2F0ZWQpIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6ODoiwrVtbW9sL0wiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czo0OiIwLjAwIjtzOjc6InNhbWVtYXgiO3M6MzoiNy4xIjt9aTo0O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTQ6IlRvdGFsIFByb3RlaW4gIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6MzoiZy9MIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6NDoiNjAuMCI7czo3OiJzYW1lbWF4IjtzOjQ6IjgwLjAiO31pOjU7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo3OiJBbGJ1bWluIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6MzoiZy9MIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6NDoiMzIuMCI7czo3OiJzYW1lbWF4IjtzOjQ6IjUwLjAiO31pOjY7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo4OiJHYW1tYSBHVCI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjM6IlUvTCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjQ6IjExLjAiO3M6Nzoic2FtZW1heCI7czo0OiI1MC4wIjt9aTo3O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6Mjc6IkFzcGFydGF0ZSBUcmFuc2ZlcmFzZSAoQVNUKSI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjM6IlUvTCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjM6IjAuMCI7czo3OiJzYW1lbWF4IjtzOjQ6IjM3LjAiO31pOjg7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyNToiQWxhbmluZSBUcmFuc2ZlcmFzZSAoQUxUKSI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjM6IlUvTCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjQ6IjAuMDAiO3M6Nzoic2FtZW1heCI7czo1OiI0Mi4wMCI7fWk6OTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjI2OiJBbGthbGluZSBQaG9zcGhhdGFzZSAoQUxQKSI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjM6IlUvTCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjM6IjAuMCI7czo3OiJzYW1lbWF4IjtzOjM6IjI3MCI7fWk6MTA7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo1OiJIQnNBZyI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czowOiIiOw==', 0, 0, '2021-05-05 09:08:20'),
(467, 'C002871450577', '', '526099782', 'Lipid Profile', '70', '0', '', '', '', 1, '0', 'YTo1OntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNzoiVG90YWwgQ2hvbGVzdHJvbCAiO3M6OToicmVmZXJlbmNlIjtzOjU0OiJbPDUuMiBEZXNpcmFibGVdWzUuMiAtIDYuMiBCb3JkZXJsaW5lIEhpZ2hdWz42LjIgSGlnaF0iO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6NjoibW1vbC9sIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6NDoiMy41MCI7czo3OiJzYW1lbWF4IjtzOjM6IjUuMiI7fWk6MjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjE1OiJIREwtQ2hvbGVzdGVyb2wiO3M6OToicmVmZXJlbmNlIjtzOjU3OiJbPDEuMCBVbmRlc2lyYWJsZV1bMS4wIC0gMS42IEFjY2VwdGFibGVdIFs+MS42IERlc2lyYWJsZV0iO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6NjoibW1vbC9sIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MzoiMS4wIjtzOjc6InNhbWVtYXgiO3M6MzoiMS42Ijt9aTozO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTU6IkxETC1DaG9sZXN0ZXJvbCI7czo5OiJyZWZlcmVuY2UiO3M6MTAwOiJbPDEyLjYgb3B0aW1hbF1bMi42LSAzLjMgTmVhciBPcHRpbWFsXSBbMy40IC0gNC4xICBCb3JkZXJsaW5lIEhpZ2hdIFs0LjIgLSA0LjkgSGlnaF1bPjQuOSBWZXJ5IEhpZ2hdIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjY6Im1tb2wvbCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjM6IjAuMCI7czo3OiJzYW1lbWF4IjtzOjQ6IjMuNDAiO31pOjQ7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMzoiVHJpZ2x5Y2VyaWRlICI7czo5OiJyZWZlcmVuY2UiO3M6NzQ6Ils8MS43IE5vcm1hbF1bMS43LSAyLjMgQm9yZGVyIGxpbmUgSGlnaF0gWzIuNCAtIDUuNiBIaWdoXSBbPjUuNiBWZXJ5IEhpZ2hdIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjY6Im1tb2wvbCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjM6IjAuMCI7czo3OiJzYW1lbWF4IjtzOjQ6IjEuNzAiO31pOjU7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyOToiQ2hvbGVzdGVyb2wgKFRvdGFsKS9IREwgUmF0aW8iO3M6OToicmVmZXJlbmNlIjtzOjM2OiJbPDUuMDAgRGVzaXJhYmxlXVs+IDUuMCBVbmRlc2lyYWJsZV0iO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6NToiUmF0aW8iO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czozOiIwLjAiO3M6Nzoic2FtZW1heCI7czozOiI1LjAiO319', 'czowOiIiOw==', 0, 0, '2021-05-05 09:08:20'),
(468, 'C002871450577', '', '526099782', 'Blood Urea Electrolyte And Creatine (BUE/Cr)', '70', '0', '', '', '', 1, '0', 'YTo1OntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJTb2RpdW0iO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czo2OiJtbW9sL2wiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czozOiIxMzUiO3M6Nzoic2FtZW1heCI7czozOiIxNTAiO31pOjI7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo4OiJDaGxvcmlkZSI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjY6Im1tb2wvbCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjI6Ijk1IjtzOjc6InNhbWVtYXgiO3M6MzoiMTA5Ijt9aTozO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6OToiUG90YXNzaXVtIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6NjoibW1vbC9sIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MzoiMy41IjtzOjc6InNhbWVtYXgiO3M6MzoiNS4xIjt9aTo0O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6NDoiVXJlYSI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjY6Im1tb2wvbCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjM6IjIuMSI7czo3OiJzYW1lbWF4IjtzOjM6IjguMyI7fWk6NTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjEwOiJDcmVhdGluaW5lIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6NjoidW1vbC9MIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MjoiNTMiO3M6Nzoic2FtZW1heCI7czozOiIxMzMiO319', 'czowOiIiOw==', 0, 0, '2021-05-05 09:08:20'),
(469, 'C002871450577', '', '526099782', 'High Vaginal Swab (HVS) C/S', '40', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo3OiJDVUxUVVJFIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-05 09:08:20'),
(470, 'C002871450577', '', '526099782', 'VDRL/RPR', '15', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo0OiJWRFJMIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-05 09:08:20'),
(472, 'C002871450577', '', '526099782', 'Random Blood Sugar(RBS)', '10', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJSQlMiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czo2OiJtbW9sL2wiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czozOiIzLjQiO3M6Nzoic2FtZW1heCI7czozOiI3LjgiO319', 'czowOiIiOw==', 0, 0, '2021-05-05 09:08:20'),
(473, 'C002871450577', '', '526099782', 'Renal Function Test (RFT)', '70', '0', '', '', '', 1, '0', 'YTo1OntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMToiU29kaXVtKE5hKykiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czo2OiJtbW9sL2wiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czozOiIxMzUiO3M6Nzoic2FtZW1heCI7czozOiIxNTAiO31pOjI7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo4OiJDaGxvcmlkZSI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjY6Im1tb2wvbCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjI6Ijk1IjtzOjc6InNhbWVtYXgiO3M6MzoiMTA5Ijt9aTozO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6OToiUG90YXNzaXVtIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6NjoibW1vbC9sIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MzoiMy41IjtzOjc6InNhbWVtYXgiO3M6MzoiNS4xIjt9aTo0O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6NDoiVXJlYSI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjY6Im1tb2wvbCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjM6IjIuMSI7czo3OiJzYW1lbWF4IjtzOjM6IjcuMSI7fWk6NTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjEwOiJDcmVhdGluaW5lIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6NjoidW1vbC9MIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MjoiNTMiO3M6Nzoic2FtZW1heCI7czozOiIxMzMiO319', 'czowOiIiOw==', 0, 0, '2021-05-05 09:08:20'),
(474, 'C002871450577', '', '526099782', 'Retro Test', '20', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMjoiUmV0cm8gc2NyZWVuIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-05 09:08:20'),
(475, 'C002871450577', '', '526099782', 'Glycosylated Haemoglobin (HBA 1C)', '0', '0', '', '', '0', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo1OiJIYkExYyI7czo5OiJyZWZlcmVuY2UiO3M6NzY6IiBOb3JtYWwJCQkJKDwgNS42KSAlCgpQcmUgRGlhYmV0ZXMJCQkoNS43IOKAkyA2LjQpICUKCkRpYWJldGVzCQkJKD4gNi41KSAlCgoiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czoxOiIlIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', NULL, 0, 0, '2021-05-05 09:08:20'),
(476, 'C002871450577', '', '526099782', 'Stool R/E', '20', '0', '', '', '', 1, '0', 'YToyOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMDoiTUFDUk9TQ09QWSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjEwOiJNSUNST1NDT1BZIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-05 09:08:20'),
(477, 'C002871450577', '', '526099782', 'Urine C/S', '40', '0', '', '', '', 1, '0', 'YToxMzp7aToxO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6OToiQVVHTUVOVElOIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToyO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTM6IkNJUFJPRkxPWEFDSU4iO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjM7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMToiQ0VGVFJJQVpPTkUiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjQ7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMDoiR0VOVEFNSUNJTiI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjExOiJQSVBFUkFDSUxJTiI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjg6IkFNSUtBQ0lOIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo3O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTQ6Ik5JVFJPRlVSQU5UT0lOIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo4O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTQ6Ik5BTElESVhJQyBBQ0lEIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo5O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTE6IkNFRlRBRElaSU1FIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxMDthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjExOiJOT1JGTE9YQUNJTiI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MTE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMjoiVEVUUkFDWUNMSU5FIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxMjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjEyOiJMRVZPRkxPWEFDSU4iO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjEzO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6NzoiQ1VMVFVSRSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czowOiIiOw==', 0, 0, '2021-05-05 09:08:20'),
(478, 'C002871450577', '', '526099782', 'TYPHOID Ag - STOOL', '0', '0', '', '', '0', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxODoiVFlQSE9JRCBBZyAtIFN0b29sIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', NULL, 0, 0, '2021-05-05 09:08:20'),
(479, 'C002871450577', '', '526099782', 'D-Dimer', '150', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyMDoiRC1ESU1FUiBRVUFOVElUQVRJVkUiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czo1OiJVZy9tTCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjM6IjAuMCI7czo3OiJzYW1lbWF4IjtzOjM6IjAuNSI7fX0=', 'czowOiIiOw==', 0, 0, '2021-05-05 09:08:20'),
(480, 'C002871450577', '', '526099782', 'Thyroid Function Test (TFT)', '210', '0', '', '', '', 1, '0', 'YTozOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNzoiVFNIIChUSFlST1RST1BJTikiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czo3OiLCtUlVL21sIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6NDoiMC40MCI7czo3OiJzYW1lbWF4IjtzOjQ6IjUuNTAiO31pOjI7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNjoiRnJlZSBUMyAoRElSRUNUKSI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjY6InBtb2wvTCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjM6IjMuNSI7czo3OiJzYW1lbWF4IjtzOjQ6IjYuNTAiO31pOjM7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxOToiRnJlZSBUNCAoVEhZUk9YSU5FKSI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjY6InBtb2wvTCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjM6IjkuMCI7czo3OiJzYW1lbWF4IjtzOjQ6IjIzLjAiO319', 'czowOiIiOw==', 0, 0, '2021-05-05 09:08:20'),
(481, 'C002871450577', '', '526099782', 'UPT', '0', '0', '', '', '0', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJVUFQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', NULL, 0, 0, '2021-05-05 09:08:20'),
(482, 'C002871450577', '', '526099782', 'HBsAg', '0', '0', '', '', '0', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo1OiJIQnNBZyI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', NULL, 0, 0, '2021-05-05 09:08:20'),
(483, 'C002871450577', '', '526099782', 'Pregnancy Test (serum)', '25', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNDoiUHJlZ25hbmN5IFRlc3QiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-05 09:08:20'),
(484, 'C002871450577', '', '526099782', 'H. Pylori Ab (Serum)', '60', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyMDoiSC4gcHlsb3JpIEFiIChTZXJ1bSkiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-05 09:08:20'),
(485, 'C002871450577', '', '526099782', 'H. Pylori Ag (Stool)', '60', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyMDoiSC4gcHlsb3JpIEFnIChzdG9vbCkiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-05 09:08:20'),
(486, 'C002871450577', '', '526099782', 'TYPHOID IgG/IgM', '0', '0', '', '', '0', 1, '0', 'YToyOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMToiVFlQSE9JRCBJZ0ciO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjI7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMToiVFlQSE9JRCBJZ00iO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', NULL, 0, 0, '2021-05-05 09:08:20'),
(487, 'C002871450577', '', '526099782', 'Routine Urine Examination (R/E)', '20', '0', '', '', '', 1, '0', 'YToyMjp7aToxO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTA6IkFwcGVhcmFuY2UiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjI7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo1OiJDb2xvciI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjI6InBIIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo0O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTY6IlNwZWNpZmljIEdyYXZpdHkiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjU7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo3OiJOaXRyaXRlIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo2O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6NzoiUHJvdGVpbiI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjk6IkJpbGlydWJpbiI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6ODthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjEwOiJMZXVrb2N5dGVzIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo5O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6NToiQmxvb2QiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjEwO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6NzoiS2V0b25lcyI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MTE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo3OiJHbHVjb3NlIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxMjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjEyOiJVcm9iaWxpbm9nZW4iO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjEzO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTY6IkVwaXRoZWxpYWwgQ2VsbHMiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjE0O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6OToiUHVzIENlbGxzIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxNTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjQ6IlJCQ3MiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjE2O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6ODoiQ3J5c3RhbHMiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjE3O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6NToiQ2FzdHMiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjE4O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6OToiUy4gSC4gT3ZhIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxOTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjg6IkJhY3RlcmlhIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToyMDthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjE3OiJZZWFzdCBMaWtlIENlbGxzICI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMToiU3Blcm1hdG96b2EiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjIyO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MjU6IlRyaWNob21vbmFzIFZhZ2luYWxpcyhUVikiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-05 09:08:20'),
(488, 'C002871450577', '', '526099782', 'Helicobacter Pylori Ab', '0', '0', '', '', '0', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMjoiSC1QeWxvcmkgQWIuIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', NULL, 0, 0, '2021-05-05 09:08:20'),
(489, 'C002871450577', '', '526099782', 'Sickling', '15', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo4OiJzaWNrbGluZyI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czowOiIiOw==', 0, 0, '2021-05-05 09:08:20'),
(490, 'C002871450577', '', '526099782', 'Blood Groupings', '15', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJBQk8iO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-05 09:08:20'),
(491, 'C002871450577', '', '526099782', 'G6PD', '20', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo0OiJHNlBEIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-05 09:08:20'),
(492, 'C002871450577', '', '526099782', 'SALMONELLA Ag - STOOL', '0', '0', '', '', '0', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyMToiU0FMTU9ORUxMQSBBZyAtIFN0b29sIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', NULL, 0, 0, '2021-05-05 09:08:20');
INSERT INTO `testsetup` (`id`, `centerusername`, `enteredby`, `branch`, `testname`, `cost`, `nhisprice`, `grdcode`, `department`, `ranking`, `type`, `private`, `parameters`, `guideline`, `is_passage`, `extra_info`, `date`) VALUES
(493, 'C002871450577', '', '526099782', 'High Vaginal Swab (HVS) R/E', '20', '0', '', '', '', 1, '0', 'YTo4OntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNDoiUHVzIENlbGxbL0hQRl0iO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjI7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyMzoiRXBpdGhlbGlhbCBjZWxscyBbL0hQRl0iO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjM7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo5OiJSQkNbL0hQRl0iO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjQ7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMToiVC5WYWdpbmFsaXMiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjU7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMToiU1BFUk0gQ0VMTFMiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjY7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyODoiWUVBU1QtTElLRSBDRUxMUy9DQU5ESURBIFNQLiI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjg6IkJBQ1RFUklBIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo4O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTE6IkdyYW0gc3RhaW4gIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-05 09:08:20'),
(494, 'C002871450577', '', '526099782', 'PSA', '70', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJQU0EiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czoyMToibmcvbUwgICAgICAgICAgICAgICAgIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6NDoiMC4wMCI7czo3OiJzYW1lbWF4IjtzOjQ6IjQuMDAiO319', 'czowOiIiOw==', 0, 0, '2021-05-05 09:08:20'),
(495, 'C002871450577', '', '526099782', 'Erythrocyte Sedimentation Rate (ESR)', '25', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJFU1IiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czozMjoibW0gZmFsbC9IciAgIChXZXN0ZXJncmVuIE1ldGhvZCkiO3M6NzoibWFsZW1pbiI7czozOiIxLjAiO3M6NzoibWFsZW1heCI7czo0OiIxMC4wIjtzOjk6ImZlbWFsZW1pbiI7czozOiIxLjAiO3M6OToiZmVtYWxlbWF4IjtzOjQ6IjE0LjAiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czowOiIiOw==', 0, 0, '2021-05-05 09:08:20'),
(496, 'C002871450577', '', '526099782', 'Hepatitis C', '15', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMToiSGVwYXRpdGlzIEMiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-05 09:08:20'),
(497, 'C002871450577', '', '526099782', 'HB-Electrophoresis', '25', '0', '', '', '', 1, '0', 'YToyOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo4OiJTSUNLTElORyI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjExOiJIQiBHRU5PVFlQRSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czowOiIiOw==', 0, 0, '2021-05-05 09:08:20'),
(498, 'C002871450577', '', '526099782', 'PELVIC USG', '70', '0', '', '', '', 2, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSRVBPUlQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-05-05 09:08:20'),
(499, 'C002871450577', '', '526099782', 'ECG', '70', '0', '', '', '', 2, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMjoiRUNHIENvbW1lbnRzIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-05 09:08:20'),
(500, 'C002871450577', '', '526099782', 'Abdominal USG', '80', '0', '', '', '', 2, '90', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSRVBPUlQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-05-05 09:08:20'),
(501, 'C002871450577', '', '526099782', 'Breast USG (Both Parts)', '120', '0', '', '', '', 2, '130', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-05-05 09:08:20'),
(591, 'C002871450577', '', '526099782', 'Albumin', '20', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo3OiJBbGJ1bWluIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjM6ImcvTCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjQ6IjMyLjAiO3M6Nzoic2FtZW1heCI7czo0OiI1NS4wIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-07 13:24:08'),
(734, 'C002871450577', '', '526099782', 'HBA/C', '80', '0', '', '', '', 1, '85', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSRVBPUlQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-07-06 13:23:34'),
(735, 'C002871450577', '', '526099782', 'Blood Urea And Creatine (BUE/Cr)', '60', '0', '', '', '', 1, '65', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSRVBPUlQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-07-06 13:30:53'),
(736, 'C002871450577', '', '526099782', 'BUE&amp; CRE', '60', '0', '', '', '', 1, '65', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSRVBPUlQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-07-06 13:34:28'),
(544, 'C002871450577', '', '526099782', 'Musculoskeletal USG', '150', '0', '', '', '', 2, '160', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-05-06 11:30:36'),
(548, 'C002871450577', '', '526099782', 'Echo (echocardiogram)', '350', '0', '', '', '', 2, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo3OiJEZXRhaWxzIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 1, 0, '2021-05-06 12:12:28'),
(549, 'C002871450577', '', '526099782', 'Doppler USG (VENOUS)', '180', '0', '', '', '', 2, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSRVBPUlQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-05-06 12:15:20'),
(507, 'C002871450577', '', '526099782', 'Thyriod USG', '120', '0', '', '', '', 2, '130', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-05-05 09:08:20'),
(725, 'C002871450577', '', '526099782', 'Same Day Report( Single)', '40', '0', '', '', '', 2, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJyZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 15:17:57'),
(511, 'C002871450577', '', '526099782', 'Pregnancy Test(Urine)', '15', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNDoiUHJlZ25hbmN5IFRlc3QiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-05 09:58:04'),
(516, 'C002871450577', '', '526099782', 'Protein', '15', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxODoiVG90YWwgUHJvdGVpbiAoU0kpIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjM6ImcvTCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjI6IjUzIjtzOjc6InNhbWVtYXgiO3M6MjoiODUiO319', 'czowOiIiOw==', 0, 0, '2021-05-05 12:53:16'),
(517, 'C002871450577', '', '526099782', 'FBS/URINE R/E', '20', '0', '', '', '', 1, '0', 'YToyMjp7aToxO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MzoiRkJTIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6NjoibW1vbC9sIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MzoiMy40IjtzOjc6InNhbWVtYXgiO3M6MzoiNi45Ijt9aToyO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTA6IkFwcGVhcmFuY2UiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjM7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo1OiJDb2xvciI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NDthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjI6InBIIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo1O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTY6IlNwZWNpZmljIEdyYXZpdHkiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjY7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo3OiJOaXRyaXRlIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo3O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6NzoiUHJvdGVpbiI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6ODthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjk6IkJpbGlydWJpbiI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6OTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjEwOiJMZXVrb2N5dGVzIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxMDthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjU6IkJsb29kIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxMTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjc6IktldG9uZXMiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjEyO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6NzoiR2x1Y29zZSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MTM7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMjoiVXJvYmlsaW5vZ2VuIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxNDthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjE2OiJFcGl0aGVsaWFsIENlbGxzIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxNTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjk6IlB1cyBDZWxscyI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MTY7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo0OiJSQkNzIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxNzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjg6IkNyeXN0YWxzIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxODthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjU6IkNhc3RzIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxOTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjk6IlMuIEguIE92YSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MjA7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo4OiJCYWN0ZXJpYSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNzoiWWVhc3QgTGlrZSBDZWxscyAiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjIyO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTE6IlNwZXJtYXRvem9hIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-05 13:12:47'),
(518, 'C002871450577', '', '526099782', 'TOTAL CHOLESTROL', '20', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyMToiVG90YWwgQ2hvbGVzdHJvbCAoU0kpIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjY6Im1tb2wvTCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjQ6IjMuNjQiO3M6Nzoic2FtZW1heCI7czo0OiI2LjQwIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-05 13:17:18'),
(519, 'C002871450577', '', '526099782', 'Free Tri-Iodothyronine (FT3)', '70', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJGVDMiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6NjoicG1vbC9MIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MzoiMy41IjtzOjc6InNhbWVtYXgiO3M6MzoiNi41Ijt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-05 13:26:56'),
(520, 'C002871450577', '', '526099782', 'Free Thyroxine(FT4)', '70', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJGVDQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czo2OiJwbW9sL0wiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-05 13:29:27'),
(521, 'C002871450577', '', '526099782', 'Thyroid Stimulating Hormone(TSH)', '70', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJUU0giO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czo3OiLOvElVL21MIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-05 13:33:29');
INSERT INTO `testsetup` (`id`, `centerusername`, `enteredby`, `branch`, `testname`, `cost`, `nhisprice`, `grdcode`, `department`, `ranking`, `type`, `private`, `parameters`, `guideline`, `is_passage`, `extra_info`, `date`) VALUES
(522, 'C002871450577', '', '526099782', 'Serum Beta-Human Chorionic Gonadotropin (HCG)', '70', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyMToiQmV0YSBIQ0cgUXVhbnRpdGF0aXZlIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6NjoibUlVL21MIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czozNDc5MToiJmx0OyEtLVtpZiBndGUgbXNvIDldJmd0OyZsdDt4bWwmZ3Q7biAmbHQ7bzpPZmZpY2VEb2N1bWVudFNldHRpbmdzJmd0O24gICZsdDtvOlJlbHlPblZNTCZndDsmbHQ7L286UmVseU9uVk1MJmd0O24gICZsdDtvOkFsbG93UE5HJmd0OyZsdDsvbzpBbGxvd1BORyZndDtuICAmbHQ7bzpUYXJnZXRTY3JlZW5TaXplJmd0OzgwMHg2MDAmbHQ7L286VGFyZ2V0U2NyZWVuU2l6ZSZndDtuICZsdDsvbzpPZmZpY2VEb2N1bWVudFNldHRpbmdzJmd0O24mbHQ7L3htbCZndDsmbHQ7IVtlbmRpZl0tLSZndDsmbHQ7IS0tW2lmIGd0ZSBtc28gOV0mZ3Q7Jmx0O3htbCZndDtuICZsdDt3OldvcmREb2N1bWVudCZndDtuICAmbHQ7dzpWaWV3Jmd0O05vcm1hbCZsdDsvdzpWaWV3Jmd0O24gICZsdDt3Olpvb20mZ3Q7MCZsdDsvdzpab29tJmd0O24gICZsdDt3OlRyYWNrTW92ZXMmZ3Q7Jmx0Oy93OlRyYWNrTW92ZXMmZ3Q7biAgJmx0O3c6VHJhY2tGb3JtYXR0aW5nJmd0OyZsdDsvdzpUcmFja0Zvcm1hdHRpbmcmZ3Q7biAgJmx0O3c6UHVuY3R1YXRpb25LZXJuaW5nJmd0OyZsdDsvdzpQdW5jdHVhdGlvbktlcm5pbmcmZ3Q7biAgJmx0O3c6VmFsaWRhdGVBZ2FpbnN0U2NoZW1hcyZndDsmbHQ7L3c6VmFsaWRhdGVBZ2FpbnN0U2NoZW1hcyZndDtuICAmbHQ7dzpTYXZlSWZYTUxJbnZhbGlkJmd0O2ZhbHNlJmx0Oy93OlNhdmVJZlhNTEludmFsaWQmZ3Q7biAgJmx0O3c6SWdub3JlTWl4ZWRDb250ZW50Jmd0O2ZhbHNlJmx0Oy93Oklnbm9yZU1peGVkQ29udGVudCZndDtuICAmbHQ7dzpBbHdheXNTaG93UGxhY2Vob2xkZXJUZXh0Jmd0O2ZhbHNlJmx0Oy93OkFsd2F5c1Nob3dQbGFjZWhvbGRlclRleHQmZ3Q7biAgJmx0O3c6RG9Ob3RQcm9tb3RlUUYmZ3Q7Jmx0Oy93OkRvTm90UHJvbW90ZVFGJmd0O24gICZsdDt3OkxpZFRoZW1lT3RoZXImZ3Q7RU4tVVMmbHQ7L3c6TGlkVGhlbWVPdGhlciZndDtuICAmbHQ7dzpMaWRUaGVtZUFzaWFuJmd0O1gtTk9ORSZsdDsvdzpMaWRUaGVtZUFzaWFuJmd0O24gICZsdDt3OkxpZFRoZW1lQ29tcGxleFNjcmlwdCZndDtYLU5PTkUmbHQ7L3c6TGlkVGhlbWVDb21wbGV4U2NyaXB0Jmd0O24gICZsdDt3OkNvbXBhdGliaWxpdHkmZ3Q7biAgICZsdDt3OkJyZWFrV3JhcHBlZFRhYmxlcyZndDsmbHQ7L3c6QnJlYWtXcmFwcGVkVGFibGVzJmd0O24gICAmbHQ7dzpTbmFwVG9HcmlkSW5DZWxsJmd0OyZsdDsvdzpTbmFwVG9HcmlkSW5DZWxsJmd0O24gICAmbHQ7dzpXcmFwVGV4dFdpdGhQdW5jdCZndDsmbHQ7L3c6V3JhcFRleHRXaXRoUHVuY3QmZ3Q7biAgICZsdDt3OlVzZUFzaWFuQnJlYWtSdWxlcyZndDsmbHQ7L3c6VXNlQXNpYW5CcmVha1J1bGVzJmd0O24gICAmbHQ7dzpEb250R3Jvd0F1dG9maXQmZ3Q7Jmx0Oy93OkRvbnRHcm93QXV0b2ZpdCZndDtuICAgJmx0O3c6U3BsaXRQZ0JyZWFrQW5kUGFyYU1hcmsmZ3Q7Jmx0Oy93OlNwbGl0UGdCcmVha0FuZFBhcmFNYXJrJmd0O24gICAmbHQ7dzpFbmFibGVPcGVuVHlwZUtlcm5pbmcmZ3Q7Jmx0Oy93OkVuYWJsZU9wZW5UeXBlS2VybmluZyZndDtuICAgJmx0O3c6RG9udEZsaXBNaXJyb3JJbmRlbnRzJmd0OyZsdDsvdzpEb250RmxpcE1pcnJvckluZGVudHMmZ3Q7biAgICZsdDt3Ok92ZXJyaWRlVGFibGVTdHlsZUhwcyZndDsmbHQ7L3c6T3ZlcnJpZGVUYWJsZVN0eWxlSHBzJmd0O24gICZsdDsvdzpDb21wYXRpYmlsaXR5Jmd0O24gICZsdDttOm1hdGhQciZndDtuICAgJmx0O206bWF0aEZvbnQgbTp2YWw9JnF1b3Q7Q2FtYnJpYSBNYXRoJnF1b3Q7Jmd0OyZsdDsvbTptYXRoRm9udCZndDtuICAgJmx0O206YnJrQmluIG06dmFsPSZxdW90O2JlZm9yZSZxdW90OyZndDsmbHQ7L206YnJrQmluJmd0O24gICAmbHQ7bTpicmtCaW5TdWIgbTp2YWw9JnF1b3Q7JmFtcDsjNDU7LSZxdW90OyZndDsmbHQ7L206YnJrQmluU3ViJmd0O24gICAmbHQ7bTpzbWFsbEZyYWMgbTp2YWw9JnF1b3Q7b2ZmJnF1b3Q7Jmd0OyZsdDsvbTpzbWFsbEZyYWMmZ3Q7biAgICZsdDttOmRpc3BEZWYmZ3Q7Jmx0Oy9tOmRpc3BEZWYmZ3Q7biAgICZsdDttOmxNYXJnaW4gbTp2YWw9JnF1b3Q7MCZxdW90OyZndDsmbHQ7L206bE1hcmdpbiZndDtuICAgJmx0O206ck1hcmdpbiBtOnZhbD0mcXVvdDswJnF1b3Q7Jmd0OyZsdDsvbTpyTWFyZ2luJmd0O24gICAmbHQ7bTpkZWZKYyBtOnZhbD0mcXVvdDtjZW50ZXJHcm91cCZxdW90OyZndDsmbHQ7L206ZGVmSmMmZ3Q7biAgICZsdDttOndyYXBJbmRlbnQgbTp2YWw9JnF1b3Q7MTQ0MCZxdW90OyZndDsmbHQ7L206d3JhcEluZGVudCZndDtuICAgJmx0O206aW50TGltIG06dmFsPSZxdW90O3N1YlN1cCZxdW90OyZndDsmbHQ7L206aW50TGltJmd0O24gICAmbHQ7bTpuYXJ5TGltIG06dmFsPSZxdW90O3VuZE92ciZxdW90OyZndDsmbHQ7L206bmFyeUxpbSZndDtuICAmbHQ7L206bWF0aFByJmd0OyZsdDsvdzpXb3JkRG9jdW1lbnQmZ3Q7biZsdDsveG1sJmd0OyZsdDshW2VuZGlmXS0tJmd0OyZsdDshLS1baWYgZ3RlIG1zbyA5XSZndDsmbHQ7eG1sJmd0O24gJmx0O3c6TGF0ZW50U3R5bGVzIERlZkxvY2tlZFN0YXRlPSZxdW90O2ZhbHNlJnF1b3Q7IERlZlVuaGlkZVdoZW5Vc2VkPSZxdW90O3RydWUmcXVvdDtuICBEZWZTZW1pSGlkZGVuPSZxdW90O3RydWUmcXVvdDsgRGVmUUZvcm1hdD0mcXVvdDtmYWxzZSZxdW90OyBEZWZQcmlvcml0eT0mcXVvdDs5OSZxdW90O24gIExhdGVudFN0eWxlQ291bnQ9JnF1b3Q7MjY3JnF1b3Q7Jmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7MCZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFFGb3JtYXQ9JnF1b3Q7dHJ1ZSZxdW90OyBOYW1lPSZxdW90O05vcm1hbCZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7OSZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFFGb3JtYXQ9JnF1b3Q7dHJ1ZSZxdW90OyBOYW1lPSZxdW90O2hlYWRpbmcgMSZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7OSZxdW90OyBRRm9ybWF0PSZxdW90O3RydWUmcXVvdDsgTmFtZT0mcXVvdDtoZWFkaW5nIDImcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzkmcXVvdDsgUUZvcm1hdD0mcXVvdDt0cnVlJnF1b3Q7IE5hbWU9JnF1b3Q7aGVhZGluZyAzJnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs5JnF1b3Q7IFFGb3JtYXQ9JnF1b3Q7dHJ1ZSZxdW90OyBOYW1lPSZxdW90O2hlYWRpbmcgNCZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7OSZxdW90OyBRRm9ybWF0PSZxdW90O3RydWUmcXVvdDsgTmFtZT0mcXVvdDtoZWFkaW5nIDUmcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzkmcXVvdDsgUUZvcm1hdD0mcXVvdDt0cnVlJnF1b3Q7IE5hbWU9JnF1b3Q7aGVhZGluZyA2JnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs5JnF1b3Q7IFFGb3JtYXQ9JnF1b3Q7dHJ1ZSZxdW90OyBOYW1lPSZxdW90O2hlYWRpbmcgNyZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7OSZxdW90OyBRRm9ybWF0PSZxdW90O3RydWUmcXVvdDsgTmFtZT0mcXVvdDtoZWFkaW5nIDgmcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzkmcXVvdDsgUUZvcm1hdD0mcXVvdDt0cnVlJnF1b3Q7IE5hbWU9JnF1b3Q7aGVhZGluZyA5JnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDszOSZxdW90OyBOYW1lPSZxdW90O3RvYyAxJnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDszOSZxdW90OyBOYW1lPSZxdW90O3RvYyAyJnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDszOSZxdW90OyBOYW1lPSZxdW90O3RvYyAzJnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDszOSZxdW90OyBOYW1lPSZxdW90O3RvYyA0JnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDszOSZxdW90OyBOYW1lPSZxdW90O3RvYyA1JnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDszOSZxdW90OyBOYW1lPSZxdW90O3RvYyA2JnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDszOSZxdW90OyBOYW1lPSZxdW90O3RvYyA3JnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDszOSZxdW90OyBOYW1lPSZxdW90O3RvYyA4JnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDszOSZxdW90OyBOYW1lPSZxdW90O3RvYyA5JnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDszNSZxdW90OyBRRm9ybWF0PSZxdW90O3RydWUmcXVvdDsgTmFtZT0mcXVvdDtjYXB0aW9uJnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDsxMCZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFFGb3JtYXQ9JnF1b3Q7dHJ1ZSZxdW90OyBOYW1lPSZxdW90O1RpdGxlJnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDsxJnF1b3Q7IE5hbWU9JnF1b3Q7RGVmYXVsdCBQYXJhZ3JhcGggRm9udCZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7MTEmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBRRm9ybWF0PSZxdW90O3RydWUmcXVvdDsgTmFtZT0mcXVvdDtTdWJ0aXRsZSZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7MjImcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBRRm9ybWF0PSZxdW90O3RydWUmcXVvdDsgTmFtZT0mcXVvdDtTdHJvbmcmcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzIwJnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUUZvcm1hdD0mcXVvdDt0cnVlJnF1b3Q7IE5hbWU9JnF1b3Q7RW1waGFzaXMmcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzU5JnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgTmFtZT0mcXVvdDtUYWJsZSBHcmlkJnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBOYW1lPSZxdW90O1BsYWNlaG9sZGVyIFRleHQmcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzEmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBRRm9ybWF0PSZxdW90O3RydWUmcXVvdDsgTmFtZT0mcXVvdDtObyBTcGFjaW5nJnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs2MCZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IE5hbWU9JnF1b3Q7TGlnaHQgU2hhZGluZyZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7NjEmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBOYW1lPSZxdW90O0xpZ2h0IExpc3QmcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzYyJnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgTmFtZT0mcXVvdDtMaWdodCBHcmlkJnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs2MyZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IE5hbWU9JnF1b3Q7TWVkaXVtIFNoYWRpbmcgMSZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7NjQmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBOYW1lPSZxdW90O01lZGl1bSBTaGFkaW5nIDImcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzY1JnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgTmFtZT0mcXVvdDtNZWRpdW0gTGlzdCAxJnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs2NiZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IE5hbWU9JnF1b3Q7TWVkaXVtIExpc3QgMiZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7NjcmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBOYW1lPSZxdW90O01lZGl1bSBHcmlkIDEmcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzY4JnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgTmFtZT0mcXVvdDtNZWRpdW0gR3JpZCAyJnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs2OSZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IE5hbWU9JnF1b3Q7TWVkaXVtIEdyaWQgMyZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7NzAmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBOYW1lPSZxdW90O0RhcmsgTGlzdCZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7NzEmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBOYW1lPSZxdW90O0NvbG9yZnVsIFNoYWRpbmcmcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzcyJnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgTmFtZT0mcXVvdDtDb2xvcmZ1bCBMaXN0JnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs3MyZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IE5hbWU9JnF1b3Q7Q29sb3JmdWwgR3JpZCZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7NjAmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBOYW1lPSZxdW90O0xpZ2h0IFNoYWRpbmcgQWNjZW50IDEmcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzYxJnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgTmFtZT0mcXVvdDtMaWdodCBMaXN0IEFjY2VudCAxJnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs2MiZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IE5hbWU9JnF1b3Q7TGlnaHQgR3JpZCBBY2NlbnQgMSZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7NjMmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBOYW1lPSZxdW90O01lZGl1bSBTaGFkaW5nIDEgQWNjZW50IDEmcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzY0JnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgTmFtZT0mcXVvdDtNZWRpdW0gU2hhZGluZyAyIEFjY2VudCAxJnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs2NSZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IE5hbWU9JnF1b3Q7TWVkaXVtIExpc3QgMSBBY2NlbnQgMSZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgTmFtZT0mcXVvdDtSZXZpc2lvbiZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7MzQmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBRRm9ybWF0PSZxdW90O3RydWUmcXVvdDsgTmFtZT0mcXVvdDtMaXN0IFBhcmFncmFwaCZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7MjkmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBRRm9ybWF0PSZxdW90O3RydWUmcXVvdDsgTmFtZT0mcXVvdDtRdW90ZSZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7MzAmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBRRm9ybWF0PSZxdW90O3RydWUmcXVvdDsgTmFtZT0mcXVvdDtJbnRlbnNlIFF1b3RlJnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs2NiZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IE5hbWU9JnF1b3Q7TWVkaXVtIExpc3QgMiBBY2NlbnQgMSZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7NjcmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBOYW1lPSZxdW90O01lZGl1bSBHcmlkIDEgQWNjZW50IDEmcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzY4JnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgTmFtZT0mcXVvdDtNZWRpdW0gR3JpZCAyIEFjY2VudCAxJnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs2OSZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IE5hbWU9JnF1b3Q7TWVkaXVtIEdyaWQgMyBBY2NlbnQgMSZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7NzAmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBOYW1lPSZxdW90O0RhcmsgTGlzdCBBY2NlbnQgMSZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7NzEmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBOYW1lPSZxdW90O0NvbG9yZnVsIFNoYWRpbmcgQWNjZW50IDEmcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzcyJnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgTmFtZT0mcXVvdDtDb2xvcmZ1bCBMaXN0IEFjY2VudCAxJnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs3MyZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IE5hbWU9JnF1b3Q7Q29sb3JmdWwgR3JpZCBBY2NlbnQgMSZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7NjAmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBOYW1lPSZxdW90O0xpZ2h0IFNoYWRpbmcgQWNjZW50IDImcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzYxJnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgTmFtZT0mcXVvdDtMaWdodCBMaXN0IEFjY2VudCAyJnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs2MiZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IE5hbWU9JnF1b3Q7TGlnaHQgR3JpZCBBY2NlbnQgMiZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7NjMmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBOYW1lPSZxdW90O01lZGl1bSBTaGFkaW5nIDEgQWNjZW50IDImcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzY0JnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgTmFtZT0mcXVvdDtNZWRpdW0gU2hhZGluZyAyIEFjY2VudCAyJnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs2NSZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IE5hbWU9JnF1b3Q7TWVkaXVtIExpc3QgMSBBY2NlbnQgMiZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7NjYmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBOYW1lPSZxdW90O01lZGl1bSBMaXN0IDIgQWNjZW50IDImcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzY3JnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgTmFtZT0mcXVvdDtNZWRpdW0gR3JpZCAxIEFjY2VudCAyJnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs2OCZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IE5hbWU9JnF1b3Q7TWVkaXVtIEdyaWQgMiBBY2NlbnQgMiZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7NjkmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBOYW1lPSZxdW90O01lZGl1bSBHcmlkIDMgQWNjZW50IDImcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzcwJnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgTmFtZT0mcXVvdDtEYXJrIExpc3QgQWNjZW50IDImcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzcxJnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgTmFtZT0mcXVvdDtDb2xvcmZ1bCBTaGFkaW5nIEFjY2VudCAyJnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs3MiZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IE5hbWU9JnF1b3Q7Q29sb3JmdWwgTGlzdCBBY2NlbnQgMiZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7NzMmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBOYW1lPSZxdW90O0NvbG9yZnVsIEdyaWQgQWNjZW50IDImcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzYwJnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgTmFtZT0mcXVvdDtMaWdodCBTaGFkaW5nIEFjY2VudCAzJnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs2MSZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IE5hbWU9JnF1b3Q7TGlnaHQgTGlzdCBBY2NlbnQgMyZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7NjImcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBOYW1lPSZxdW90O0xpZ2h0IEdyaWQgQWNjZW50IDMmcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzYzJnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgTmFtZT0mcXVvdDtNZWRpdW0gU2hhZGluZyAxIEFjY2VudCAzJnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs2NCZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IE5hbWU9JnF1b3Q7TWVkaXVtIFNoYWRpbmcgMiBBY2NlbnQgMyZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7NjUmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBOYW1lPSZxdW90O01lZGl1bSBMaXN0IDEgQWNjZW50IDMmcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzY2JnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgTmFtZT0mcXVvdDtNZWRpdW0gTGlzdCAyIEFjY2VudCAzJnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs2NyZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IE5hbWU9JnF1b3Q7TWVkaXVtIEdyaWQgMSBBY2NlbnQgMyZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7NjgmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBOYW1lPSZxdW90O01lZGl1bSBHcmlkIDIgQWNjZW50IDMmcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzY5JnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgTmFtZT0mcXVvdDtNZWRpdW0gR3JpZCAzIEFjY2VudCAzJnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs3MCZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IE5hbWU9JnF1b3Q7RGFyayBMaXN0IEFjY2VudCAzJnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs3MSZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IE5hbWU9JnF1b3Q7Q29sb3JmdWwgU2hhZGluZyBBY2NlbnQgMyZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7NzImcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBOYW1lPSZxdW90O0NvbG9yZnVsIExpc3QgQWNjZW50IDMmcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzczJnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgTmFtZT0mcXVvdDtDb2xvcmZ1bCBHcmlkIEFjY2VudCAzJnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs2MCZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IE5hbWU9JnF1b3Q7TGlnaHQgU2hhZGluZyBBY2NlbnQgNCZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7NjEmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBOYW1lPSZxdW90O0xpZ2h0IExpc3QgQWNjZW50IDQmcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzYyJnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgTmFtZT0mcXVvdDtMaWdodCBHcmlkIEFjY2VudCA0JnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs2MyZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IE5hbWU9JnF1b3Q7TWVkaXVtIFNoYWRpbmcgMSBBY2NlbnQgNCZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7NjQmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBOYW1lPSZxdW90O01lZGl1bSBTaGFkaW5nIDIgQWNjZW50IDQmcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzY1JnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgTmFtZT0mcXVvdDtNZWRpdW0gTGlzdCAxIEFjY2VudCA0JnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs2NiZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IE5hbWU9JnF1b3Q7TWVkaXVtIExpc3QgMiBBY2NlbnQgNCZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7NjcmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBOYW1lPSZxdW90O01lZGl1bSBHcmlkIDEgQWNjZW50IDQmcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzY4JnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgTmFtZT0mcXVvdDtNZWRpdW0gR3JpZCAyIEFjY2VudCA0JnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs2OSZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IE5hbWU9JnF1b3Q7TWVkaXVtIEdyaWQgMyBBY2NlbnQgNCZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7NzAmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBOYW1lPSZxdW90O0RhcmsgTGlzdCBBY2NlbnQgNCZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7NzEmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBOYW1lPSZxdW90O0NvbG9yZnVsIFNoYWRpbmcgQWNjZW50IDQmcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzcyJnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgTmFtZT0mcXVvdDtDb2xvcmZ1bCBMaXN0IEFjY2VudCA0JnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs3MyZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IE5hbWU9JnF1b3Q7Q29sb3JmdWwgR3JpZCBBY2NlbnQgNCZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7NjAmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBOYW1lPSZxdW90O0xpZ2h0IFNoYWRpbmcgQWNjZW50IDUmcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzYxJnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgTmFtZT0mcXVvdDtMaWdodCBMaXN0IEFjY2VudCA1JnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs2MiZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IE5hbWU9JnF1b3Q7TGlnaHQgR3JpZCBBY2NlbnQgNSZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7NjMmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBOYW1lPSZxdW90O01lZGl1bSBTaGFkaW5nIDEgQWNjZW50IDUmcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzY0JnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgTmFtZT0mcXVvdDtNZWRpdW0gU2hhZGluZyAyIEFjY2VudCA1JnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs2NSZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IE5hbWU9JnF1b3Q7TWVkaXVtIExpc3QgMSBBY2NlbnQgNSZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7NjYmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBOYW1lPSZxdW90O01lZGl1bSBMaXN0IDIgQWNjZW50IDUmcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzY3JnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgTmFtZT0mcXVvdDtNZWRpdW0gR3JpZCAxIEFjY2VudCA1JnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs2OCZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IE5hbWU9JnF1b3Q7TWVkaXVtIEdyaWQgMiBBY2NlbnQgNSZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7NjkmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBOYW1lPSZxdW90O01lZGl1bSBHcmlkIDMgQWNjZW50IDUmcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzcwJnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgTmFtZT0mcXVvdDtEYXJrIExpc3QgQWNjZW50IDUmcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzcxJnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgTmFtZT0mcXVvdDtDb2xvcmZ1bCBTaGFkaW5nIEFjY2VudCA1JnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs3MiZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IE5hbWU9JnF1b3Q7Q29sb3JmdWwgTGlzdCBBY2NlbnQgNSZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7NzMmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBOYW1lPSZxdW90O0NvbG9yZnVsIEdyaWQgQWNjZW50IDUmcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzYwJnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgTmFtZT0mcXVvdDtMaWdodCBTaGFkaW5nIEFjY2VudCA2JnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs2MSZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IE5hbWU9JnF1b3Q7TGlnaHQgTGlzdCBBY2NlbnQgNiZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7NjImcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBOYW1lPSZxdW90O0xpZ2h0IEdyaWQgQWNjZW50IDYmcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzYzJnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgTmFtZT0mcXVvdDtNZWRpdW0gU2hhZGluZyAxIEFjY2VudCA2JnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs2NCZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IE5hbWU9JnF1b3Q7TWVkaXVtIFNoYWRpbmcgMiBBY2NlbnQgNiZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7NjUmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBOYW1lPSZxdW90O01lZGl1bSBMaXN0IDEgQWNjZW50IDYmcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzY2JnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgTmFtZT0mcXVvdDtNZWRpdW0gTGlzdCAyIEFjY2VudCA2JnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs2NyZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IE5hbWU9JnF1b3Q7TWVkaXVtIEdyaWQgMSBBY2NlbnQgNiZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7NjgmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBOYW1lPSZxdW90O01lZGl1bSBHcmlkIDIgQWNjZW50IDYmcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzY5JnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgTmFtZT0mcXVvdDtNZWRpdW0gR3JpZCAzIEFjY2VudCA2JnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs3MCZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IE5hbWU9JnF1b3Q7RGFyayBMaXN0IEFjY2VudCA2JnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDs3MSZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IE5hbWU9JnF1b3Q7Q29sb3JmdWwgU2hhZGluZyBBY2NlbnQgNiZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7NzImcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBOYW1lPSZxdW90O0NvbG9yZnVsIExpc3QgQWNjZW50IDYmcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzczJnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgTmFtZT0mcXVvdDtDb2xvcmZ1bCBHcmlkIEFjY2VudCA2JnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDsxOSZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFFGb3JtYXQ9JnF1b3Q7dHJ1ZSZxdW90OyBOYW1lPSZxdW90O1N1YnRsZSBFbXBoYXNpcyZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7MjEmcXVvdDsgU2VtaUhpZGRlbj0mcXVvdDtmYWxzZSZxdW90O24gICBVbmhpZGVXaGVuVXNlZD0mcXVvdDtmYWxzZSZxdW90OyBRRm9ybWF0PSZxdW90O3RydWUmcXVvdDsgTmFtZT0mcXVvdDtJbnRlbnNlIEVtcGhhc2lzJnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAgJmx0O3c6THNkRXhjZXB0aW9uIExvY2tlZD0mcXVvdDtmYWxzZSZxdW90OyBQcmlvcml0eT0mcXVvdDszMSZxdW90OyBTZW1pSGlkZGVuPSZxdW90O2ZhbHNlJnF1b3Q7biAgIFVuaGlkZVdoZW5Vc2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFFGb3JtYXQ9JnF1b3Q7dHJ1ZSZxdW90OyBOYW1lPSZxdW90O1N1YnRsZSBSZWZlcmVuY2UmcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzMyJnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUUZvcm1hdD0mcXVvdDt0cnVlJnF1b3Q7IE5hbWU9JnF1b3Q7SW50ZW5zZSBSZWZlcmVuY2UmcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzMzJnF1b3Q7IFNlbWlIaWRkZW49JnF1b3Q7ZmFsc2UmcXVvdDtuICAgVW5oaWRlV2hlblVzZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUUZvcm1hdD0mcXVvdDt0cnVlJnF1b3Q7IE5hbWU9JnF1b3Q7Qm9vayBUaXRsZSZxdW90OyZndDsmbHQ7L3c6THNkRXhjZXB0aW9uJmd0O24gICZsdDt3OkxzZEV4Y2VwdGlvbiBMb2NrZWQ9JnF1b3Q7ZmFsc2UmcXVvdDsgUHJpb3JpdHk9JnF1b3Q7MzcmcXVvdDsgTmFtZT0mcXVvdDtCaWJsaW9ncmFwaHkmcXVvdDsmZ3Q7Jmx0Oy93OkxzZEV4Y2VwdGlvbiZndDtuICAmbHQ7dzpMc2RFeGNlcHRpb24gTG9ja2VkPSZxdW90O2ZhbHNlJnF1b3Q7IFByaW9yaXR5PSZxdW90OzM5JnF1b3Q7IFFGb3JtYXQ9JnF1b3Q7dHJ1ZSZxdW90OyBOYW1lPSZxdW90O1RPQyBIZWFkaW5nJnF1b3Q7Jmd0OyZsdDsvdzpMc2RFeGNlcHRpb24mZ3Q7biAmbHQ7L3c6TGF0ZW50U3R5bGVzJmd0O24mbHQ7L3htbCZndDsmbHQ7IVtlbmRpZl0tLSZndDsmbHQ7IS0tW2lmIGd0ZSBtc28gMTBdJmd0O24mbHQ7c3R5bGUmZ3Q7biAvKiBTdHlsZSBEZWZpbml0aW9ucyAqL24gdGFibGUuTXNvTm9ybWFsVGFibGVuCXttc28tc3R5bGUtbmFtZTomcXVvdDtUYWJsZSBOb3JtYWwmcXVvdDs7bgltc28tdHN0eWxlLXJvd2JhbmQtc2l6ZTowO24JbXNvLXRzdHlsZS1jb2xiYW5kLXNpemU6MDtuCW1zby1zdHlsZS1ub3Nob3c6eWVzO24JbXNvLXN0eWxlLXByaW9yaXR5Ojk5O24JbXNvLXN0eWxlLXBhcmVudDomcXVvdDsmcXVvdDs7bgltc28tcGFkZGluZy1hbHQ6MGluIDUuNHB0IDBpbiA1LjRwdDtuCW1zby1wYXJhLW1hcmdpbjowaW47bgltc28tcGFyYS1tYXJnaW4tYm90dG9tOi4wMDAxcHQ7bgltc28tcGFnaW5hdGlvbjp3aWRvdy1vcnBoYW47bglmb250LXNpemU6MTAuMHB0O24JZm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OywmcXVvdDtzYW5zLXNlcmlmJnF1b3Q7O31uJmx0Oy9zdHlsZSZndDtuJmx0OyFbZW5kaWZdLS0mZ3Q7Jmx0O3AgY2xhc3M9JnF1b3Q7TXNvTm9ybWFsJnF1b3Q7IHN0eWxlPSZxdW90O3RleHQtaW5kZW50Oi41aW47bGluZS1oZWlnaHQ6MTE1JSZxdW90OyZndDsxJmx0O3N1cCZndDtzdCZsdDsvc3VwJmd0OyBXZWVrJmx0O3NwYW4gc3R5bGU9JnF1b3Q7bXNvLXRhYi1jb3VudDoyJnF1b3Q7Jmd0OyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyAmbHQ7L3NwYW4mZ3Q7ICZsdDtzcGFuIHN0eWxlPSZxdW90O21zby10YWItY291bnQ6MSZxdW90OyZndDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7ICZsdDsvc3BhbiZndDsmbHQ7c3BhbiBzdHlsZT0mcXVvdDttc28tdGFiLWNvdW50OjMmcXVvdDsmZ3Q7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7ICZsdDsvc3BhbiZndDsxMG4tIDMwIChtSVUvbWwpJmx0Oy9wJmd0OyZsdDtwIGNsYXNzPSZxdW90O01zb05vcm1hbCZxdW90OyBzdHlsZT0mcXVvdDt0ZXh0LWluZGVudDouNWluO2xpbmUtaGVpZ2h0OjExNSUmcXVvdDsmZ3Q7MiZsdDtzdXAmZ3Q7bmQmbHQ7L3N1cCZndDsgV2VlayZsdDtzcGFuIHN0eWxlPSZxdW90O21zby10YWItY291bnQ6NiZxdW90OyZndDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7ICZsdDsvc3BhbiZndDszMG4tIDEwMCAobUlVL21sKSZsdDsvcCZndDsmbHQ7cCBjbGFzcz0mcXVvdDtNc29Ob3JtYWwmcXVvdDsgc3R5bGU9JnF1b3Q7dGV4dC1pbmRlbnQ6LjVpbjtsaW5lLWhlaWdodDoxMTUlJnF1b3Q7Jmd0OzMmbHQ7c3VwJmd0O3JkJmx0Oy9zdXAmZ3Q7IFdlZWsmbHQ7c3BhbiBzdHlsZT0mcXVvdDttc28tdGFiLWNvdW50OjYmcXVvdDsmZ3Q7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsgJmFtcDtuYnNwOyZhbXA7bmJzcDsgJmx0Oy9zcGFuJmd0OzEwMG7igJMgMSAwMDAgKG1JVS9tbCkmbHQ7L3AmZ3Q7Jmx0O3AgY2xhc3M9JnF1b3Q7TXNvTm9ybWFsJnF1b3Q7IHN0eWxlPSZxdW90O3RleHQtaW5kZW50Oi41aW47bGluZS1oZWlnaHQ6MTE1JSZxdW90OyZndDs0Jmx0O3N1cCZndDt0aCAmbHQ7L3N1cCZndDtXZWVrJmx0O3NwYW4gc3R5bGU9JnF1b3Q7bXNvLXRhYi1jb3VudDo2JnF1b3Q7Jmd0OyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyAmbHQ7L3NwYW4mZ3Q7MW4wMDAgLSAxMCAwMDAgKG1JVS9tbCkmbHQ7L3AmZ3Q7Jmx0O3AgY2xhc3M9JnF1b3Q7TXNvTm9ybWFsJnF1b3Q7IHN0eWxlPSZxdW90O3RleHQtaW5kZW50Oi41aW47bGluZS1oZWlnaHQ6MTE1JSZxdW90OyZndDsyJmx0O3N1cCZndDtuZCZsdDsvc3VwJmd0OyAmYW1wO2FtcDsgMyZsdDtzdXAmZ3Q7cmQmbHQ7L3N1cCZndDsgTW9udGgmbHQ7c3BhbiBzdHlsZT0mcXVvdDttc28tdGFiLWNvdW50OjUmcXVvdDsmZ3Q7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsgJmx0Oy9zcGFuJmd0OzMwbjAwMCDigJMgMTAwIDAwMCAobUlVL21sKSZsdDsvcCZndDsmbHQ7cCBjbGFzcz0mcXVvdDtNc29Ob3JtYWwmcXVvdDsgc3R5bGU9JnF1b3Q7dGV4dC1pbmRlbnQ6LjVpbjtsaW5lLWhlaWdodDoxMTUlJnF1b3Q7Jmd0OzImbHQ7c3VwJmd0O25kJmx0Oy9zdXAmZ3Q7IFRyaW1lc3RlciZsdDtzcGFuIHN0eWxlPSZxdW90O21zby10YWItY291bnQ6NiZxdW90OyZndDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsgJmx0Oy9zcGFuJmd0OzEwbjAwMCDigJMgMzAgMDAwIChtSVUvbWwpJmx0Oy9wJmd0OyZsdDtwIGNsYXNzPSZxdW90O01zb05vcm1hbCZxdW90OyBzdHlsZT0mcXVvdDt0ZXh0LWluZGVudDouNWluO2xpbmUtaGVpZ2h0OjExNSUmcXVvdDsmZ3Q7MyZsdDtzdXAmZ3Q7cmQmbHQ7L3N1cCZndDsgVHJpbWVzdGVyJmx0O3NwYW4gc3R5bGU9JnF1b3Q7bXNvLXRhYi1jb3VudDo2JnF1b3Q7Jmd0OyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsgJmx0Oy9zcGFuJmd0OzVuMDAwIOKAkyAxNSAwMDAgKG1JVS9tbCkmbHQ7L3AmZ3Q7Jmx0O3AgY2xhc3M9JnF1b3Q7TXNvTm9ybWFsJnF1b3Q7IHN0eWxlPSZxdW90O3RleHQtaW5kZW50Oi41aW47bGluZS1oZWlnaHQ6MTE1JSZxdW90OyZndDsmbHQ7c3BhbiBzdHlsZT0mcXVvdDttc28tc3BhY2VydW46eWVzJnF1b3Q7Jmd0OyZhbXA7bmJzcDsmbHQ7L3NwYW4mZ3Q7Tm9uIFByZWduYW50IEZlbWFsZXMgJmx0O3NwYW4gc3R5bGU9JnF1b3Q7bXNvLXRhYi1jb3VudDpuMSZxdW90OyZndDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsgJmx0Oy9zcGFuJmd0OyZsdDtzcGFuIHN0eWxlPSZxdW90O21zby1zcGFjZXJ1bjp5ZXMmcXVvdDsmZ3Q7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsgJmx0Oy9zcGFuJmd0OyZhbXA7bHQ7IDUuMG1JVS9tbCZsdDsvcCZndDsmbHQ7cCBjbGFzcz0mcXVvdDtNc29Ob3JtYWwmcXVvdDsgc3R5bGU9JnF1b3Q7dGV4dC1pbmRlbnQ6LjVpbjtsaW5lLWhlaWdodDoxMTUlJnF1b3Q7Jmd0O1Bvc3QgbWVub3BhdXNhbCBGZW1hbGVzICZsdDtzcGFuIHN0eWxlPSZxdW90O21zby10YWItY291bnQ6MSZxdW90OyZndDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsgJmx0Oy9zcGFuJmd0OyZsdDtzcGFuIHN0eWxlPSZxdW90O21zby1zcGFjZXJ1bjp5ZXMmcXVvdDsmZ3Q7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7JmFtcDtuYnNwOyZhbXA7bmJzcDsmYW1wO25ic3A7ICZsdDsvc3BhbiZndDsmYW1wO2x0OyA5LjVtSVUvbWwmbHQ7L3AmZ3Q7Ijs=', 0, 0, NULL),
(523, 'C002871450577', '', '526099782', 'Progesterone', '70', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMjoiUHJvZ2VzdGVyb25lIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6NDoibmcvTCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czo1Nzc6IiZsdDtwJmd0OyZsdDtiJmd0OyZsdDt1Jmd0O05vbi1QcmVnbmFudCBGZW1hbGUgJmx0Oy91Jmd0OyZsdDsvYiZndDsmbHQ7L3AmZ3Q7Jmx0O3AmZ3Q7W0ZvbGxpY3VsYXIgUGhhc2U6IDAuMTUgLSAxLjQwXSBbTHV0ZWFsIFBoYXNlOiAyLjAgLTI1LjAwXSZsdDsvcCZndDsmbHQ7cCZndDsmbHQ7YiZndDsmbHQ7dSZndDtQcmVnbmFudCBGZW1hbGUmbHQ7L3UmZ3Q7Jmx0Oy9iJmd0OyZsdDsvcCZndDsmbHQ7cCZndDtbRmlyc3QgVHJpbWVzdGVyOiA3LjI1IC0gOTAuMDBdIFtTZWNvbmQgVHJpbWVzdGVyOjE5LjUwIC0gOTEuMDBdIFtUaGlyZCBUcmltZXN0ZXI6IDQ5LjAwIC0gNDIuMDBdJmx0Oy9wJmd0OyZsdDtwJmd0OyZsdDtiJmd0OyZsdDt1Jmd0O1Bvc3QtTWVub3BhdXNhbCZsdDsvdSZndDsmbHQ7L2ImZ3Q7Jmx0Oy9wJmd0OyZsdDtwJmd0O1swLjAwIC0gMC44MF0mbHQ7L3AmZ3Q7Jmx0O3AmZ3Q7Jmx0O2ImZ3Q7Jmx0O3UmZ3Q7TWFsZSZsdDsvdSZndDsmbHQ7L2ImZ3Q7Jmx0Oy9wJmd0OyZsdDtwJmd0OyZsdDt1Jmd0O1smbHQ7L3UmZ3Q7MC4xMyAtIDEuMjImbHQ7dSZndDtdJmx0Oy91Jmd0OyZsdDsvcCZndDsiOw==', 0, 0, '2021-05-05 14:12:44'),
(524, 'C002871450577', '', '526099782', 'Prolactin', '70', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo5OiJQcm9sYWN0aW4iO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czo1OiJuZy9tbCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czozODk6IiZsdDtwJmd0OyZsdDtiJmd0OyZsdDt1Jmd0O0ZlbWFsZSZsdDsvdSZndDsmbHQ7L2ImZ3Q7Jmx0Oy9wJmd0OyZsdDtwJmd0O1tBZHVsdDogMS4yIC0gMjAuMF0gW1Bvc3RtZW5vcG9zYWw6IDEuNSAtIDE5LjBdIFtQcmVnbmFudCAmYW1wO2d0OyAyMy4yXSZsdDsvcCZndDsmbHQ7cCZndDsmbHQ7YiBzdHlsZT0mcXVvdDsmcXVvdDsmZ3Q7Jmx0O3UmZ3Q7TWFsZSZsdDsvdSZndDsmbHQ7L2ImZ3Q7Jmx0Oy9wJmd0OyZsdDtwJmd0OyZsdDt1Jmd0O1smbHQ7L3UmZ3Q7MS44IC0gMTcuMCZsdDt1Jmd0O10mbHQ7L3UmZ3Q7Jmx0Oy9wJmd0OyZsdDtwJmd0OyZsdDtiIHN0eWxlPSZxdW90OyZxdW90OyZndDsmbHQ7dSZndDsmbHQ7YnImZ3Q7Jmx0Oy91Jmd0OyZsdDsvYiZndDsmbHQ7L3AmZ3Q7Ijs=', 0, 0, '2021-05-05 14:20:32');
INSERT INTO `testsetup` (`id`, `centerusername`, `enteredby`, `branch`, `testname`, `cost`, `nhisprice`, `grdcode`, `department`, `ranking`, `type`, `private`, `parameters`, `guideline`, `is_passage`, `extra_info`, `date`) VALUES
(525, 'C002871450577', '', '526099782', 'Luteinizing Hormone (LH)', '70', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyOiJMSCI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjY6Im1JVS9tTCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czo3NTA6IiZsdDtwJmd0OyZsdDtzcGFuIHN0eWxlPSZxdW90O2ZvbnQtd2VpZ2h0OiBib2xkZXI7JnF1b3Q7Jmd0OyZsdDt1Jmd0O0ZlbWFsZSZsdDsvdSZndDsmbHQ7L3NwYW4mZ3Q7Jmx0Oy9wJmd0OyZsdDtwJmd0OyZsdDt1IHN0eWxlPSZxdW90O2ZvbnQtc2l6ZTogMC44MTI1cmVtOyZxdW90OyZndDtbJmx0Oy91Jmd0OyZsdDtzcGFuIHN0eWxlPSZxdW90O2ZvbnQtc2l6ZTogMC44MTI1cmVtOyZxdW90OyZndDtGb2xsaWN1bGFyIFBoYXNlOjEuNi0gMTUuMF0gW01pZCAtQ3ljbGUgOiAyMS45IC0gNTYuNl0gW0x1dGVhbCBQaGFzZTogMC42MSAtIDE2LjNdJmx0Oy9zcGFuJmd0OyZsdDsvcCZndDsmbHQ7cCZndDsmbHQ7c3BhbiBzdHlsZT0mcXVvdDtmb250LXNpemU6IDAuODEyNXJlbTsmcXVvdDsmZ3Q7Jmx0O3NwYW4gc3R5bGU9JnF1b3Q7Zm9udC13ZWlnaHQ6IGJvbGRlcjsmcXVvdDsmZ3Q7Jmx0O3UmZ3Q7UG9zdCBNZW5vcGF1c2FsJmx0Oy91Jmd0OyZsdDsvc3BhbiZndDsmbHQ7L3NwYW4mZ3Q7Jmx0Oy9wJmd0OyZsdDtwJmd0O1sxNC4yIC0gNTIuM10mbHQ7L3AmZ3Q7Jmx0O3AmZ3Q7Jmx0O3NwYW4gc3R5bGU9JnF1b3Q7Zm9udC13ZWlnaHQ6IGJvbGRlcjsmcXVvdDsmZ3Q7Jmx0O3UmZ3Q7TWFsZSZsdDsvdSZndDsmbHQ7L3NwYW4mZ3Q7Jmx0Oy9wJmd0OyZsdDtwJmd0OyZsdDtzcGFuIHN0eWxlPSZxdW90O2ZvbnQtc2l6ZTogMC44MTI1cmVtOyZxdW90OyZndDtbMS4yNCAtIDcuOF0mbHQ7L3NwYW4mZ3Q7Jmx0Oy9wJmd0OyI7', 0, 0, '2021-05-05 14:33:10'),
(526, 'C002871450577', '', '526099782', 'ESTROGEN', '70', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo5OiJFc3RyYWRpb2wiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czo1OiJwZy9tTCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czoxMTExOiImbHQ7cCZndDsmbHQ7YiZndDsmbHQ7dSZndDtGZW1hbGUmbHQ7L3UmZ3Q7Jmx0Oy9iJmd0OyZsdDsvcCZndDsmbHQ7cCZndDsmbHQ7dSZndDtbJmx0Oy91Jmd0O0Vhcmx5IEZvbGxpY3VsYXIgUGhhc2U6IDMwIC0xMDAmbHQ7dSZndDtdJmx0Oy91Jmd0OyZhbXA7bmJzcDsmbHQ7dSBzdHlsZT0mcXVvdDtmb250LXNpemU6IDAuODEyNXJlbTsmcXVvdDsmZ3Q7WyZsdDsvdSZndDsmbHQ7c3BhbiBzdHlsZT0mcXVvdDtmb250LXNpemU6IDAuODEyNXJlbTsmcXVvdDsmZ3Q7TGF0ZSBGb2xsaWN1bGFyIFBoYXNlOiAxMDAtNDAwJmx0Oy9zcGFuJmd0OyZsdDt1IHN0eWxlPSZxdW90O2ZvbnQtc2l6ZTogMC44MTI1cmVtOyZxdW90OyZndDtdJmx0Oy91Jmd0OyZsdDtzcGFuIHN0eWxlPSZxdW90O2ZvbnQtc2l6ZTogMC44MTI1cmVtOyZxdW90OyZndDsmYW1wO25ic3A7JmFtcDtuYnNwOyZsdDsvc3BhbiZndDsmbHQ7dSBzdHlsZT0mcXVvdDtmb250LXNpemU6IDAuODEyNXJlbTsmcXVvdDsmZ3Q7WyZsdDsvdSZndDsmbHQ7c3BhbiBzdHlsZT0mcXVvdDtmb250LXNpemU6IDAuODEyNXJlbTsmcXVvdDsmZ3Q7T3Z1bGF0aW5nIDogMzAgLTEwMCZsdDsvc3BhbiZndDsmbHQ7dSBzdHlsZT0mcXVvdDtmb250LXNpemU6IDAuODEyNXJlbTsmcXVvdDsmZ3Q7XSZsdDsvdSZndDsmbHQ7c3BhbiBzdHlsZT0mcXVvdDtmb250LXNpemU6IDAuODEyNXJlbTsmcXVvdDsmZ3Q7JmFtcDtuYnNwO1tMdXRlYWwgUGhhc2UgOiA2MC0gMTUwXSBbUG9zdCBtZW5vcGF1c2FsIHBoYXNlOiAmYW1wO2x0OzE4XSBbUHJlZ25hbnQsIG5vcm1hbCB1cCB0byA6IDM1MDAwXSBbUGVycHViZXJ0YWwgY2hpbGRyZW4gLCBub3JtYWwgJmFtcDtsdDsgMTBdJmx0Oy9zcGFuJmd0OyZsdDsvcCZndDsmbHQ7cCZndDsmbHQ7c3BhbiBzdHlsZT0mcXVvdDtmb250LXNpemU6IDAuODEyNXJlbTsmcXVvdDsmZ3Q7Jmx0O2ImZ3Q7Jmx0O3UmZ3Q7TWFsZSZhbXA7bmJzcDsmbHQ7L3UmZ3Q7Jmx0Oy9iJmd0OyZsdDsvc3BhbiZndDsmbHQ7L3AmZ3Q7Jmx0O3AmZ3Q7Jmx0O3NwYW4gc3R5bGU9JnF1b3Q7Zm9udC1zaXplOiAwLjgxMjVyZW07JnF1b3Q7Jmd0O1smYW1wO2x0OzYwXSZsdDsvc3BhbiZndDsmbHQ7L3AmZ3Q7Ijs=', 0, 0, '2021-05-05 14:42:31'),
(527, 'C002871450577', '', '526099782', 'Testosterone', '70', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMjoiVGVzdG9zdGVyb25lIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6NToibmcvbWwiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czo0Njg6IiZsdDtwJmd0OyZsdDtiJmd0OyZsdDt1Jmd0O01hbGUmbHQ7L3UmZ3Q7Jmx0Oy9iJmd0OyZsdDsvcCZndDsmbHQ7cCZndDtbUHJlcHViZXJ0YWw6IDAuMS0gMC4yXSBbQWR1bHQgOiAzLjAgLSZhbXA7bmJzcDsgMTAuMF0mbHQ7L3AmZ3Q7Jmx0O3AmZ3Q7Jmx0O2ImZ3Q7Jmx0O3UmZ3Q7RmVtYWxlJmFtcDtuYnNwOyZsdDsvdSZndDsmbHQ7L2ImZ3Q7Jmx0Oy9wJmd0OyZsdDtwJmd0O1tQcmVwdWJlcnRhbDogMC4xLSAwLjJdIFtGb2xsaWN1bGFyIFBoYXNlIDogMC4yIC0mYW1wO25ic3A7IDAuOF0mbHQ7c3BhbiBzdHlsZT0mcXVvdDtmb250LXNpemU6IDAuODEyNXJlbTsmcXVvdDsmZ3Q7W0ZvbGxpY3VsYXIgTWVub3BhdXNhbDogMC4wOCAtJmFtcDtuYnNwOyAwLjM1XSZsdDsvc3BhbiZndDsmbHQ7L3AmZ3Q7Jmx0O3AmZ3Q7Jmx0O2ImZ3Q7Jmx0O3UmZ3Q7Jmx0O2JyJmd0OyZsdDsvdSZndDsmbHQ7L2ImZ3Q7Jmx0Oy9wJmd0OyI7', 0, 0, '2021-05-05 14:59:45'),
(528, 'C002871450577', '', '526099782', 'Total Bilirubin', '20', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMjoiVC4gQmlsaXJ1YmluIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6Nzoizrxtb2wvTCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czowOiIiOw==', 0, 0, '2021-05-05 15:12:58'),
(529, 'C002871450577', '', '526099782', 'Hep B', '15', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMToiSGVwYXRpdGlzIEIiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-05 15:55:17'),
(530, 'C002871450577', '', '526099782', 'Hepatitis B Profile', '150', '0', '', '', '', 1, '0', 'YTo1OntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyNzoiSGVwYXRpdGlzIEIgU3VyZmFjZSBBbnRpZ2VuIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToyO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6Mjg6IkhlcGF0aXRpcyBCIFN1cmZhY2UgQW50aWJvZHkiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjM7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyODoiSGVwYXRpdGlzIEIgRW52ZWxvcGUgQW50aWdlbiI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NDthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjIwOiJIZXBhdGl0aXMgQiBFbnZlbG9wZSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjI1OiJIZXBhdGl0aXMgQiBDb3JlIEFudGlib2R5IjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-05 15:58:27'),
(531, 'C002871450577', '', '526099782', '2-Hour Post Prandial', '40', '0', '', '', '', 1, '0', 'YTo0OntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMToiVXJpbmUgU3VnYXIiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjI7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMzoiVXJpbmUgS2V0b25lcyI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTozO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTk6IkZhc3RpbmcgQmxvb2QgU3VnYXIiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6NjoibW1vbC9MIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MzoiMy41IjtzOjc6InNhbWVtYXgiO3M6MzoiNi41Ijt9aTo0O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MjA6IjItSG91ciBQb3N0IFByYW5kaWFsIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjY6Im1tb2wvTCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjM6IjMuNSI7czo3OiJzYW1lbWF4IjtzOjM6IjcuOCI7fX0=', 'czowOiIiOw==', 0, 0, '2021-05-05 16:06:15'),
(532, 'C002871450577', '', '526099782', 'Oral Glucose Tolerance Test (OGTT)', '60', '0', '', '', '', 1, '0', 'YTozOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyNjoiR2x1Y29zZSBGYXN0aW5nIChQbGFzbWEtRikiO3M6OToicmVmZXJlbmNlIjtzOjg1OiJOb3JtYWw6IDw9IDUuNSA8YnI+SW1wYWlyZWQgZmFzdGluZyBnbHVjb3NlIDogNS42IC0gNi45PGJyPkRpYWJldGVzIG1lbGxpdHVzIDogPj0gNy4wIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6NjoibW1vbC9MIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToyO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MzA6IkdsdWNvc2UgNjAgTWluICg2MCBNaW4tUGxhc21hKSI7czo5OiJyZWZlcmVuY2UiO3M6ODY6IiBOb3JtYWw6IDw9IDUuNSA8YnI+SW1wYWlyZWQgZmFzdGluZyBnbHVjb3NlIDogNS42IC0gNi45PGJyPkRpYWJldGVzIG1lbGxpdHVzIDogPj0gNy4wIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6NjoibW1vbC9MIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTozO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MzI6IkdsdWNvc2UgMTIwIE1pbiAoMTIwIE1pbi1QbGFzbWEpIjtzOjk6InJlZmVyZW5jZSI7czo4NToiIE5vcm1hbDogPD0gNy44IDxicj5JbXBhaXJlZCBmYXN0aW5nIGdsdWNvc2UgOjcuOC0gNi45PGJyPkRpYWJldGVzIG1lbGxpdHVzIDogPj0gMTEuMSI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjY6Im1tb2wvTCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czowOiIiOw==', 0, 0, '2021-05-05 16:34:47'),
(534, 'C002871450577', '', '526099782', 'Semen Analysis', '70', '0', '', '', '', 1, '0', 'YToxODp7aToxO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MjQ6IlNwZWNpbWVuIFByb2R1Y3Rpb24gVGltZSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjIwOiJUaW1lIFJlY2VpdmVkIGF0IExhYiI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjIwOiJNZXRob2Qgb2YgUHJvZHVjdGlvbiI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NDthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjEyOiJMaXF1ZWZhY3Rpb24iO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjU7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxOToiQXBwZWFyYW5jZSAvIENvbG91ciI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjE1OiJTcGVjaW1lbiBWb2x1bWUiO3M6OToicmVmZXJlbmNlIjtzOjExOiIgMS41IC0gNW1scyI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjM6Im1scyI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjExOiJTcGVjaW1lbiBwSCI7czo5OiJyZWZlcmVuY2UiO3M6ODoiIDcuMi03LjgiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjg7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxODoiU3BlY2ltZW4gVmlzY29zaXR5IjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo5O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6ODoiUHVzIENlbGwiO3M6OToicmVmZXJlbmNlIjtzOjExOiJMZXNzIFRoYW4gNSI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjg6IiBwZXIgSFBGIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxMDthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjE2OiJFcGl0aGVsaWFsIENlbGxzIjtzOjk6InJlZmVyZW5jZSI7czoxMjoiIExlc3MgVGhhbiA1IjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6NzoicGVyIEhQRiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MTE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNjoiIFJlZCBCbG9vZCBDZWxscyI7czo5OiJyZWZlcmVuY2UiO3M6MTE6Ikxlc3MgVGhhbiA1IjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6NzoicGVyIEhQRiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MTI7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyNDoiU3Blcm1hdG96b2FsIENlbGxzIENvdW50IjtzOjk6InJlZmVyZW5jZSI7czoyMDoiID4zNS0xNTAgbWlsbGlvbi9tbHMiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czo0OiIvbWxzIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxMzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjIzOiJNb3RpbGl0eShBY3RpdmUgTGluZWFyKSI7czo5OiJyZWZlcmVuY2UiO3M6Mzg6IiBBY3RpdmUgTGluZWFyIEZvd2FyZCBQcm9ncmVzc2lvbiA+NTAlIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MToiJSI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MTQ7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxODoiTW90aWxpdHkoU2x1Z2dpc2gpIjtzOjk6InJlZmVyZW5jZSI7czoyMzoiU2x1Z2dpc2goTGVzcyB0aGFuIDIwJSkiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czoxOiIlIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxNTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjE4OiJNb3RpbGl0eShJbW1vdGlsZSkiO3M6OToicmVmZXJlbmNlIjtzOjI1OiIgSW1tb3RpbGUgKExlc3MgVGhhbiAzMCUpIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MToiJSI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MTY7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo5OiJNb3JwaG9sZ3kiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czoxOiIlIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxNzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjMwOiJTbG93ICYgTm9uIC0gUHJvZ3Jlc3NpdmUgQ2VsbHMiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjE4O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTQ6IkltbWF0dXJlIEZvcm1zIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, NULL),
(538, 'C002871450577', '', '526099782', 'Scrotal USG', '120', '0', '', '', '', 2, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSRVBPUlQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-05-06 10:29:58'),
(539, 'C002871450577', '', '526099782', 'Testicular Prostate  USG', '80', '0', '', '', '', 2, '90', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSRVBPUlQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-05-06 10:32:07'),
(541, 'C002871450577', '', '526099782', '1st Trimester USG (OBS)', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-05-06 11:15:14'),
(543, 'C002871450577', '', '526099782', 'Transvaginal USG', '100', '0', '', '', '', 2, '120', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-05-06 11:23:54'),
(550, 'C002871450577', '', '526099782', 'Doppler USG (ARTERIAL)', '200', '0', '', '', '', 2, '220', 'YTozOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMjoiRGVzY3JpcHRpb24gIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToyO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6NzoiRGV0YWlscyI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjU6Ik5vdGVzIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-06 12:16:14'),
(562, 'C002871450577', '', '526099782', 'Semen C/S', '60', '0', '', '', '', 1, '0', 'YToyMjp7aToxO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MjQ6IlNwZWNpbWVuIFByb2R1Y3Rpb24gVGltZSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjIwOiJUaW1lIFJlY2VpdmVkIGF0IExhYiI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjIwOiJNZXRob2Qgb2YgUHJvZHVjdGlvbiI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NDthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjEyOiJMaXF1ZWZhY3Rpb24iO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjU7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxOToiQXBwZWFyYW5jZSAvIENvbG91ciI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjE1OiJTcGVjaW1lbiBWb2x1bWUiO3M6OToicmVmZXJlbmNlIjtzOjExOiIgMS41IC0gNW1scyI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjM6Im1scyI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjExOiJTcGVjaW1lbiBwSCI7czo5OiJyZWZlcmVuY2UiO3M6ODoiIDcuMi03LjgiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjg7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxODoiU3BlY2ltZW4gVmlzY29zaXR5IjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo5O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6ODoiUHVzIENlbGwiO3M6OToicmVmZXJlbmNlIjtzOjExOiJMZXNzIFRoYW4gNSI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjg6IiBwZXIgSFBGIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxMDthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjE2OiJFcGl0aGVsaWFsIENlbGxzIjtzOjk6InJlZmVyZW5jZSI7czoxMjoiIExlc3MgVGhhbiA1IjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6NzoicGVyIEhQRiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MTE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNjoiIFJlZCBCbG9vZCBDZWxscyI7czo5OiJyZWZlcmVuY2UiO3M6MTE6Ikxlc3MgVGhhbiA1IjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6NzoicGVyIEhQRiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MTI7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyNDoiU3Blcm1hdG96b2FsIENlbGxzIENvdW50IjtzOjk6InJlZmVyZW5jZSI7czoyMDoiID4zNS0xNTAgbWlsbGlvbi9tbHMiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czo0OiIvbWxzIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxMzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjIzOiJNb3RpbGl0eShBY3RpdmUgTGluZWFyKSI7czo5OiJyZWZlcmVuY2UiO3M6Mzg6IiBBY3RpdmUgTGluZWFyIEZvd2FyZCBQcm9ncmVzc2lvbiA+NTAlIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MToiJSI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MTQ7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxODoiTW90aWxpdHkoU2x1Z2dpc2gpIjtzOjk6InJlZmVyZW5jZSI7czoyMzoiU2x1Z2dpc2goTGVzcyB0aGFuIDIwJSkiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czoxOiIlIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxNTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjE4OiJNb3RpbGl0eShJbW1vdGlsZSkiO3M6OToicmVmZXJlbmNlIjtzOjI1OiIgSW1tb3RpbGUgKExlc3MgVGhhbiAzMCUpIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MToiJSI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MTY7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo5OiJNb3JwaG9sZ3kiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czoxOiIlIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxNzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjMwOiJTbG93ICYgTm9uIC0gUHJvZ3Jlc3NpdmUgQ2VsbHMiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjE4O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTQ6IkltbWF0dXJlIEZvcm1zIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxOTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjExOiJTYW1wbGUgRGF0ZSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MjA7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNDoiUmVwb3J0aW5nIERhdGUiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjIxO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTc6Ik9yZ2FuaXNtIElzb2xhdGVkIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToyMjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjg6IkNvbW1lbnRzIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-06 13:53:16'),
(563, 'C002871450577', '', '526099782', 'Pap Smear', '250', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNToiRXh0ZXJuYWwgUmVwb3J0IjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-06 14:16:37'),
(574, 'C002871450577', '', '526099782', 'Follicle Stimulating Hormone (FSH)', '70', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJGU0giO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czo3NDk6IiZsdDtwJmd0OyZsdDtzcGFuIHN0eWxlPSZxdW90O2ZvbnQtd2VpZ2h0OiBib2xkZXI7JnF1b3Q7Jmd0OyZsdDt1Jmd0O0ZlbWFsZSZsdDsvdSZndDsmbHQ7L3NwYW4mZ3Q7Jmx0Oy9wJmd0OyZsdDtwJmd0OyZsdDt1IHN0eWxlPSZxdW90O2ZvbnQtc2l6ZTogMC44MTI1cmVtOyZxdW90OyZndDtbJmx0Oy91Jmd0OyZsdDtzcGFuIHN0eWxlPSZxdW90O2ZvbnQtc2l6ZTogMC44MTI1cmVtOyZxdW90OyZndDtGb2xsaWN1bGFyIFBoYXNlOiAyLjUtIDEyLjBdIFtNaWQgLUN5Y2xlIDogOC4wIC0gMjIuMF0gW0x1dGVhbCBQaGFzZTogMi4wIC0gMTIuMF0mbHQ7L3NwYW4mZ3Q7Jmx0Oy9wJmd0OyZsdDtwJmd0OyZsdDtzcGFuIHN0eWxlPSZxdW90O2ZvbnQtc2l6ZTogMC44MTI1cmVtOyZxdW90OyZndDsmbHQ7c3BhbiBzdHlsZT0mcXVvdDtmb250LXdlaWdodDogYm9sZGVyOyZxdW90OyZndDsmbHQ7dSZndDtQb3N0IE1lbm9wYXVzYWwmbHQ7L3UmZ3Q7Jmx0Oy9zcGFuJmd0OyZsdDsvc3BhbiZndDsmbHQ7L3AmZ3Q7Jmx0O3AmZ3Q7WzMwLjAgLSA5NC4wXSZsdDsvcCZndDsmbHQ7cCZndDsmbHQ7c3BhbiBzdHlsZT0mcXVvdDtmb250LXdlaWdodDogYm9sZGVyOyZxdW90OyZndDsmbHQ7dSZndDtNYWxlJmx0Oy91Jmd0OyZsdDsvc3BhbiZndDsmbHQ7L3AmZ3Q7Jmx0O3AmZ3Q7Jmx0O3NwYW4gc3R5bGU9JnF1b3Q7Zm9udC1zaXplOiAwLjgxMjVyZW07JnF1b3Q7Jmd0O1sxLjAgLSAxMS4wXSZsdDsvc3BhbiZndDsmbHQ7L3AmZ3Q7Ijs=', 0, 0, '2021-05-06 17:00:51'),
(587, 'C002871450577', '', '526099782', 'Mammogram', '200', '0', '', '', '', 2, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNToiRXh0ZXJuYWwgUmVwb3J0IjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-07 05:55:06'),
(728, 'C002871450577', '', '526099782', 'Next Day Report (both)', '50', '0', '', '', '', 2, '60', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJyZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 15:20:53'),
(727, 'C002871450577', '', '526099782', 'Next Day Report (single)', '25', '0', '', '', '', 2, '30', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJyZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 15:20:02'),
(726, 'C002871450577', '', '526099782', 'Same Day Report (both)', '80', '0', '', '', '', 2, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJyZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 15:18:57'),
(593, 'C002871450577', '', '526099782', 'Anomaly USG', '150', '0', '', '', '', 2, '160', 'YToxMTp7aToxO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MjQ6IjxiPk5VTUJFUiBPRiBGRVRVU0VTPC9iPiI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjI5OiI8Yj5GRVRBTCBDQVJESUFDIEFDVElWSVRZPC9iPiI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjM4OiI8Yj5FU1RJTUFURUQgR0VTVEFUSU9OQUwgQUdFIChFR0EpPC9iPiI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NDthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjM5OiI8Yj5FU1RJTUFURUQgREFURSBPRiBERUxJVkVSWSAoRUREKTwvYj4iO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjU7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyNDoiPGI+TElFIC9QUkVTRU5UQVRJT048L2I+IjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo2O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTU6IjxiPlBMQUNFTlRBPC9iPiI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjI1OiI8Yj5MSVFPVVIgVk9MVU1FIChMVik8L2I+IjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo4O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MzU6IjxiPkVTVElNQVRFRCBGRVRBTCBXRUlHSFQgKEVGVyk8L2I+IjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo5O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTE6IjxiPlNFWDwvYj4gIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxMDthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjI3OiI8Yj5BTU5JT1RJQyBGTFVJRCBJTkRFWDwvYj4iO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjExO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6Mjg6IjxiPkFERElUSU9OQUwgRklORElORyhTKTwvYj4iO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-07 14:56:13'),
(594, 'C002871450577', '', '526099782', 'VDRL(Syphilis)', '20', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo0OiJWRFJMIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-12 09:28:32'),
(595, 'C002871450577', '', '526099782', 'FBS', '25', '0', '', '', '', 1, '30', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJGQlMiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czo2OiJtbW9sL2wiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czozOiIzLjQiO3M6Nzoic2FtZW1heCI7czozOiI2LjkiO319', 'czowOiIiOw==', 1, 0, '2021-05-12 09:28:32'),
(596, 'C002871450577', '', '526099782', 'RBS', '0', '0', '', '', '0', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJSQlMiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czo2OiJtbW9sL2wiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czozOiIzLjQiO3M6Nzoic2FtZW1heCI7czozOiI3LjgiO319', NULL, 0, 0, '2021-05-12 09:28:32'),
(597, 'C002871450577', '', '526099782', 'Retroviral (HIV I,II)', '0', '0', '', '', '0', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMjoiUmV0cm8gc2NyZWVuIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', NULL, 0, 0, '2021-05-12 09:28:32'),
(598, 'C002871450577', '', '526099782', 'G-6-PD', '0', '0', '', '', '0', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJHLTYtUEQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', NULL, 0, 0, '2021-05-12 09:28:32'),
(601, 'C002871450577', '', '526099782', 'Obstertics (2nd/3rd) Tri. BPPWITH UMBILICAL ARTERY DOPPLER', '130', '0', '', '', '', 2, '0', 'YTo5OntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNzoiTnVtYmVyIG9mIEZldHVzZXMiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjI7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyMjoiRmV0YWwgQ2FyZGlhYyBBY3Rpdml0eSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjEyOiJQcmVzZW50YXRpb24iO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjQ7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo4OiJQbGFjZW50YSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjE3OiJMaXFvdXIgVm9sdW1lKExWKSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjMxOiJFc3RpbWF0ZWQgRGF0ZSBvZiBEZWxpdmVyeShFREQpIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo3O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6Mjg6IkVzdGltYXRlZCBGZXRhbCBXZWlnaHQgKEVGVykiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjg7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozMToiRXN0aW1hdGVkIEdlc3RhdGlvbmFsIEFnZSAoRUdBKSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6OTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjIxOiJBZGRpdGlvbmFsIEZpbmRpbmcocykiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-12 09:28:32'),
(605, 'C002871450577', '', '526099782', 'Pelvic X-Ray', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSRVBPUlQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-05-12 11:17:07'),
(625, 'C002871450577', '', '526099782', 'Treponema Pallidum Haemagglutionation (TPHA)', '50', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxODoiQWRkaXRpb25hbCBDb21tZW50IjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-17 14:56:45'),
(648, 'C002871450577', '', '526099782', 'CD4 Count', '380', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo5OiJDRDQgQ291bnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-27 12:50:05'),
(649, 'C002871450577', '', '526099782', 'Chlamydia Anti Bodies', '175', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo5OiJDaGxhbXlkaWEiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-27 12:50:58'),
(650, 'C002871450577', '', '526099782', 'Clotting Profile', '100', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNjoiQ2xvdHRpbmcgUHJvZmlsZSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czowOiIiOw==', 0, 0, '2021-05-27 12:51:39'),
(651, 'C002871450577', '', '526099782', 'CA 19-9', '125', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo3OiJDQSAxOS05IjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-27 12:52:07');
INSERT INTO `testsetup` (`id`, `centerusername`, `enteredby`, `branch`, `testname`, `cost`, `nhisprice`, `grdcode`, `department`, `ranking`, `type`, `private`, `parameters`, `guideline`, `is_passage`, `extra_info`, `date`) VALUES
(652, 'C002871450577', '', '526099782', 'Serum Lipase', '65', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMjoiU2VydW0gTGlwYXNlIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-27 12:52:50'),
(653, 'C002871450577', '', '526099782', 'Serum Amylase', '65', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMzoiU2VydW0gQW15bGFzZSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czowOiIiOw==', 0, 0, '2021-05-27 12:53:43'),
(654, 'C002871450577', '', '526099782', 'Toxoplasma IgM', '170', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNDoiVE9YT1BMQVNNQSBJZ00iO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-27 13:06:44'),
(655, 'C002871450577', '', '526099782', 'Toxoplasma IgG', '170', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNDoiVG94b3BsYXNtYSBJZ0ciO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-27 13:32:14'),
(658, 'C002871450577', '', '526099782', 'Abdomino-Pelvic USG', '120', '0', '', '', '', 2, '130', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSRVBPUlQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-05-27 13:51:13'),
(659, 'C002871450577', '', '526099782', 'Trans-Screening', '300', '0', '', '', '', 2, '350', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSRVBPUlQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-05-27 13:52:35'),
(660, 'C002871450577', '', '526099782', 'Trans-Vaginal USG', '100', '0', '', '', '', 2, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNzoiVHJhbnMtVmFnaW5hbCBVU0ciO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-27 13:53:49'),
(730, 'C002871450577', '', '526099782', 'Fistola Arm Doppler USG', '500', '0', '', '', '', 2, '550', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJyZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 15:29:20'),
(662, 'C002871450577', '', '526099782', 'Carotid Doppler USG', '500', '0', '', '', '', 2, '550', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJyZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-05-27 13:59:34'),
(663, 'C002871450577', '', '526099782', 'EYE USG', '300', '0', '', '', '', 2, '350', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSRVBPUlQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-05-27 14:00:41'),
(664, 'C002871450577', '', '526099782', 'Trans Rectal/Trus USG', '100', '0', '', '', '', 2, '120', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNzoiVHJhbnMgUmVjdGFsL1RydXMiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-27 14:01:49'),
(665, 'C002871450577', '', '526099782', 'Calcaneus-Xray', '70', '0', '', '', '', 2, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNToiQ2FsY2FuZW51cy1YcmF5IjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-27 14:04:06'),
(666, 'C002871450577', '', '526099782', 'Arm X-ray', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJyZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-05-27 14:05:50'),
(667, 'C002871450577', '', '526099782', 'ECG Without Report', '50', '0', '', '', '', 2, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxODoiRUNHIHdpdGhvdXQgUmVwb3J0IjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-27 14:08:03'),
(668, 'C002871450577', '', '526099782', 'ECG Outside Report', '25', '0', '', '', '', 2, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxODoiRUNHIG91dHNpZGUgUmVwb3J0IjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-27 14:08:50'),
(669, 'C002871450577', '', '526099782', 'Radius &amp; Alna Xray', '70', '0', '', '', '', 2, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxODoiUmFkaXVzICYgQWxuYSBYcmF5IjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-27 14:13:14'),
(671, 'C002871450577', '', '526099782', 'Chiropratic (Whole Spine)', '280', '0', '', '', '', 2, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyNToiQ2hpcm9wcmF0aWMgKFdob2xlIFNwaW5lKSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czowOiIiOw==', 0, 0, '2021-05-27 14:17:35'),
(672, 'C002871450577', '', '526099782', 'Cystogram/MCUG', '580', '0', '', '', '', 2, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNjoiQ3lzdG9ncmFtIC8gTUNVRyI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czowOiIiOw==', 0, 0, '2021-05-27 14:19:30'),
(731, 'C002871450577', '', '526099782', 'RT Ankle X-ray', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJyZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 15:55:18'),
(732, 'C002871450577', '', '526099782', 'Lt Ankle X-ray', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJyZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 15:56:08'),
(675, 'C002871450577', '', '526099782', 'Cervical Spine', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNDoiQ2VydmljYWwgU3BpbmUiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 13:22:30'),
(676, 'C002871450577', '', '526099782', 'Thoracic Spine', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNDoiVGhvcmFjaWMgU3BpbmUiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 13:30:15'),
(677, 'C002871450577', '', '526099782', 'Lumbar Spine', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMjoiTHVtYmFyIFNwaW5lIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 1, 0, '2021-06-26 13:31:42'),
(678, 'C002871450577', '', '526099782', 'Both Shoulders', '140', '0', '', '', '', 2, '150', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNToiQm90aCBTaG91bGRlcnMgIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 1, 0, '2021-06-26 13:34:41'),
(679, 'C002871450577', '', '526099782', 'RT Shoulder', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMToiUlQgU2hvdWxkZXIiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 13:35:22'),
(680, 'C002871450577', '', '526099782', 'LT Shoulder', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMToiTFQgU2hvdWxkZXIiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 13:36:05'),
(681, 'C002871450577', '', '526099782', 'Both Knees', '140', '0', '', '', '', 2, '150', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMDoiQm90aCBLbmVlcyI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czowOiIiOw==', 1, 0, '2021-06-26 13:37:43'),
(682, 'C002871450577', '', '526099782', 'LT Knee', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo3OiJMVCBLbmVlIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 1, 0, '2021-06-26 13:38:24'),
(683, 'C002871450577', '', '526099782', 'RT Knee', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo3OiJSVCBLbmVlIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 1, 0, '2021-06-26 13:39:19'),
(684, 'C002871450577', '', '526099782', 'Calcaneus', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo5OiJDYWxjYW5ldXMiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 13:41:49'),
(685, 'C002871450577', '', '526099782', 'Chest X-Ray', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMToiQ2hlc3QgWC1SYXkiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 13:43:09'),
(686, 'C002871450577', '', '526099782', 'Chest PA/LAT', '110', '0', '', '', '', 2, '120', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMjoiQ2hlc3QgUEEvTEFUIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 1, 0, '2021-06-26 13:44:04'),
(687, 'C002871450577', '', '526099782', 'Both Femurs', '140', '0', '', '', '', 2, '150', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMToiQm90aCBGZW11cnMiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 13:46:48'),
(688, 'C002871450577', '', '526099782', 'LT Femur', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo5OiJMVCBGZW11ciAiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 13:47:20'),
(689, 'C002871450577', '', '526099782', 'RT Femur', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo4OiJSVCBGZW11ciI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czowOiIiOw==', 1, 0, '2021-06-26 13:47:57'),
(690, 'C002871450577', '', '526099782', 'Tib/Fib', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo3OiJUaWIvRmliIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 1, 0, '2021-06-26 13:48:55'),
(691, 'C002871450577', '', '526099782', 'Both Tib/Fib', '140', '0', '', '', '', 2, '150', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMjoiQm90aCBUaWIvRmliIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 1, 0, '2021-06-26 13:51:07'),
(692, 'C002871450577', '', '526099782', 'Thoracolumbar Spine', '140', '0', '', '', '', 2, '150', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyMDoiVGhvcmFjb2x1bWJhciBTcGluZSAiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 14:09:25'),
(693, 'C002871450577', '', '526099782', 'LT Foot', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo3OiJMVCBGb290IjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-06-26 14:09:56'),
(694, 'C002871450577', '', '526099782', 'RT Foot', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo3OiJSVCBGb290IjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 1, 0, '2021-06-26 14:10:25'),
(695, 'C002871450577', '', '526099782', 'Both Feet', '140', '0', '', '', '', 2, '150', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo5OiJCb3RoIEZlZXQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 14:11:25'),
(696, 'C002871450577', '', '526099782', 'RT Forearm', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-06-26 14:12:13'),
(697, 'C002871450577', '', '526099782', 'LT Forearm', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-06-26 14:13:11'),
(698, 'C002871450577', '', '526099782', 'LT Hand', '70', '0', '', '', '', 1, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 14:14:27'),
(699, 'C002871450577', '', '526099782', 'RT Hand', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo3OiJSVCBIYW5kIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 1, 0, '2021-06-26 14:15:00'),
(700, 'C002871450577', '', '526099782', 'Sinuses X-Ray', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 14:15:50'),
(701, 'C002871450577', '', '526099782', 'Skull X-Ray', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 14:16:28'),
(702, 'C002871450577', '', '526099782', 'Scapula X-Ray', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 14:17:11'),
(703, 'C002871450577', '', '526099782', 'Chiropractic (Whole Spine)', '280', '0', '', '', '', 2, '290', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 14:18:23'),
(704, 'C002871450577', '', '526099782', 'Alna &amp; Radius', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 14:19:01'),
(705, 'C002871450577', '', '526099782', 'Thoracic Inlet', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 14:19:33'),
(706, 'C002871450577', '', '526099782', 'Abdomen X-Ray', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 14:20:11'),
(707, 'C002871450577', '', '526099782', 'Abdomen X-Ray (Erect/Suspine)', '140', '0', '', '', '', 2, '150', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 14:21:12'),
(708, 'C002871450577', '', '526099782', 'Ankle X-Ray', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 14:21:45'),
(709, 'C002871450577', '', '526099782', 'Elbow X-Ray', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 14:22:14'),
(710, 'C002871450577', '', '526099782', 'HSG X-Ray', '450', '0', '', '', '', 2, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 14:24:38'),
(711, 'C002871450577', '', '526099782', 'HSG X-Ray (Sunday)', '500', '0', '', '', '', 2, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 14:25:05'),
(712, 'C002871450577', '', '526099782', 'MCUG X-Ray', '580', '0', '', '', '', 2, '580', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 14:25:47'),
(713, 'C002871450577', '', '526099782', 'IVU X-Ray', '580', '0', '', '', '', 2, '580', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 14:26:29'),
(714, 'C002871450577', '', '526099782', 'RUG X-Ray', '400', '0', '', '', '', 2, '400', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 14:27:15'),
(733, 'C002871450577', '', '526099782', 'Pelvic Male USG', '80', '0', '', '54', '', 2, '0', 'YTo1OntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo5OiJQcm9zdGF0ZSAiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czozOiJjbTMiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjI7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMzoiQm90aCBraWRuZXlzICI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjI6ImNtIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTozO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTU6IlVyaW5hcnkgQmxhZGRlciI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NDthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjk6IlByZS12b2lkICI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjM6Im1scyI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjk6IlBvc3Qtdm9pZCI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjM6Im1scyI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czowOiIiOw==', 0, 0, '2021-07-06 11:08:24'),
(716, 'C002871450577', '', '526099782', 'LT Wrist X-Ray', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 14:28:41'),
(717, 'C002871450577', '', '526099782', 'Both Wrist X-Ray', '140', '0', '', '', '', 2, '150', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 14:29:19'),
(718, 'C002871450577', '', '526099782', 'RT Wrist X-Ray', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 14:29:55'),
(719, 'C002871450577', '', '526099782', 'Both Arms', '140', '0', '', '', '', 2, '150', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 14:30:29'),
(720, 'C002871450577', '', '526099782', 'LT Arm X-Ray', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJSZXBvcnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 1, 0, '2021-06-26 14:34:07'),
(721, 'C002871450577', '', '526099782', 'RT Arm X-Ray', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMjoiUlQgQXJtIFgtUmF5IjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-06-26 14:35:46'),
(722, 'C002871450577', '', '526099782', 'LT Humerus X-Ray', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNjoiTFQgSHVtZXJ1cyBYLVJheSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czowOiIiOw==', 1, 0, '2021-06-26 14:36:42'),
(723, 'C002871450577', '', '526099782', 'RT Humerus X-Ray', '70', '0', '', '', '', 2, '80', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNjoiUlQgSHVtZXJ1cyBYLVJheSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czowOiIiOw==', 1, 0, '2021-06-26 14:37:18'),
(724, 'C002871450577', '', '526099782', 'Both Humerus X-Ray', '140', '0', '', '', '', 2, '150', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxODoiQm90aCBIdW1lcnVzIFgtUmF5IjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 1, 0, '2021-06-26 14:37:56'),
(647, 'C002871450577', '', '526099782', 'C-Peptide', '100', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo5OiJDLVBlcHRpZGUiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-27 12:49:27'),
(646, 'C002871450577', '', '526099782', 'CEA', '130', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJDRUEiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-27 12:48:31'),
(644, 'C002871450577', '', '526099782', 'Sodium', '30', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJTb2RpdW0iO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-27 12:47:09'),
(645, 'C002871450577', '', '526099782', 'Serum Electrolyte', '60', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNzoiU2VydW0gRWxlY3Ryb2x5dGUiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-27 12:48:02'),
(643, 'C002871450577', '', '526099782', 'Rheumatoid Factor', '50', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNzoiUmhldW1hdG9pZCBGYWN0b3IiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-27 12:46:23'),
(642, 'C002871450577', '', '526099782', 'TROPONIN I &amp;T', '200', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMzoiVFJPUE9OSU4gSSAmVCI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czowOiIiOw==', 0, 0, '2021-05-27 12:45:19');

-- --------------------------------------------------------

--
-- Table structure for table `testunits`
--

CREATE TABLE `testunits` (
  `id` int(11) NOT NULL,
  `units` varchar(10) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testunits`
--

INSERT INTO `testunits` (`id`, `units`) VALUES
(1, 'm3'),
(2, 'mmol/L'),
(3, 'x10^6/uL'),
(4, '%'),
(5, 'fL'),
(6, 'pg'),
(7, 'g/dL'),
(8, 'U/L'),
(9, 'umol/L'),
(10, 'g/L'),
(46, 'Pg/Cell'),
(13, 'pmol/L'),
(14, 'nmol/L'),
(15, 'mUI/mL'),
(16, 'ng/L'),
(17, 'umol/L'),
(51, 'ru/ml'),
(19, 'min'),
(20, 'sec'),
(21, 'mIU/L'),
(22, 'ng/ml'),
(23, 'm2'),
(52, '??IU/mL'),
(25, 'kU/1'),
(44, 'X10^12/L'),
(27, 'cells/??L  '),
(28, 'mg/dL     '),
(31, 'g/gCr     '),
(32, 'mg/gCr'),
(45, 'X10^9/L'),
(35, '/ hpf'),
(36, 'IU/mL '),
(37, 'kg'),
(38, 'm'),
(39, 'mmol/L (F)'),
(40, 'mol/L(M)'),
(41, 'mL'),
(42, 'pg/mL'),
(43, 'mls'),
(47, 'fall/hr'),
(48, 'mm'),
(49, '10^5 BACTE'),
(50, 'm^2'),
(53, 'seconds'),
(54, 'ug/ml '),
(55, 'iu/L'),
(56, '10^9/L');

-- --------------------------------------------------------

--
-- Table structure for table `usedcomments`
--

CREATE TABLE `usedcomments` (
  `id` int(11) NOT NULL,
  `centerusername` varchar(50) NOT NULL DEFAULT '',
  `enteredby` varchar(50) NOT NULL DEFAULT '',
  `commentname` varchar(100) NOT NULL DEFAULT '',
  `comment` text DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usedcomments`
--

INSERT INTO `usedcomments` (`id`, `centerusername`, `enteredby`, `commentname`, `comment`, `date`) VALUES
(1, 'C002871450577', '', 'sasa', 'asd &lt;br&gt;', '2021-07-07 12:20:23'),
(2, 'C002871450577', '', 'asdasd', 'asdasd &lt;br&gt;', '2021-07-07 12:21:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `verifyid` varchar(50) NOT NULL DEFAULT '',
  `firstname` varchar(20) NOT NULL DEFAULT '',
  `lastname` varchar(20) NOT NULL DEFAULT '',
  `username` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `login_noty` tinyint(5) NOT NULL DEFAULT 1,
  `password` varchar(255) NOT NULL DEFAULT '',
  `centerusername` varchar(20) NOT NULL DEFAULT '',
  `gender` varchar(15) NOT NULL DEFAULT '',
  `contact` varchar(15) NOT NULL DEFAULT '',
  `profilepic` varchar(50) NOT NULL DEFAULT '',
  `jobtitle` varchar(50) NOT NULL DEFAULT '',
  `role` varchar(10) NOT NULL DEFAULT '',
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `resetpin` varchar(20) NOT NULL DEFAULT '',
  `time` tinyint(5) NOT NULL DEFAULT 0,
  `time_from` varchar(15) DEFAULT '',
  `time_to` varchar(15) DEFAULT '',
  `access1` tinyint(5) NOT NULL DEFAULT 0,
  `access2` tinyint(5) NOT NULL DEFAULT 0,
  `access3` tinyint(5) NOT NULL DEFAULT 0,
  `access4` tinyint(5) NOT NULL DEFAULT 0,
  `branch` varchar(20) NOT NULL DEFAULT '',
  `extrainfo` tinyint(5) NOT NULL DEFAULT 0,
  `offline_online` tinyint(5) NOT NULL DEFAULT 0,
  `lastactive` datetime DEFAULT NULL,
  `date_created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `verifyid`, `firstname`, `lastname`, `username`, `email`, `login_noty`, `password`, `centerusername`, `gender`, `contact`, `profilepic`, `jobtitle`, `role`, `status`, `resetpin`, `time`, `time_from`, `time_to`, `access1`, `access2`, `access3`, `access4`, `branch`, `extrainfo`, `offline_online`, `lastactive`, `date_created`) VALUES
(101, 'U590413498-2021', 'Rhoda', 'Akyere', 'rhodaakyere', '', 1, '$2y$10$mYhtwxrjuK6INsksx7r8F.x/QsdNDynbjhQVDp8rRwQPWbwZV8Hoy', 'C002871450577', 'Female', '0240677099', '', 'Sonographer', 'user', 1, '', 0, '', '', 0, 0, 3, 0, '526099782', 0, 0, NULL, '2021-06-26 13:15:18'),
(100, 'U501254926-2021', 'Nana Adwoa', 'Agyemang', 'nanaadwoa', '', 1, '$2y$10$DPiqOE4CxveHUOGK6liry.FGF60cYLronO/7WKT9PgOhbNOJnQrQm', 'C002871450577', 'Female', '0546522824', '', 'Sonographer', 'user', 1, '', 0, '', '', 0, 0, 3, 0, '526099782', 0, 1, '2021-07-06 09:53:18', '2021-06-26 13:08:58'),
(99, 'U963410870-2021', 'Matilda', 'Ellimah', 'ellimah1', '', 1, '$2y$10$4KtTATsZUff53KEwPAkE8.i40362zfmV5ZMWjo5gP8UOWXhKaiCm6', 'C002871450577', 'Female', '0245778390', '', 'Sonographer', 'user', 1, '', 0, '', '', 0, 0, 3, 0, '526099782', 0, 0, NULL, '2021-06-26 13:07:06'),
(98, 'U612056082-2021', 'Jessica', 'Olalere', 'olalere1', '', 1, '$2y$10$a78sXBIM3ialSiU.gQcHs.rrWJbLPv0Ax1hjzUdzGwcMI.0ZlOsKq', 'C002871450577', 'Female', '0240865821', '', 'Front Desk', 'user', 1, '', 0, '', '', 1, 0, 3, 0, '526099782', 0, 0, NULL, '2021-06-26 12:55:34'),
(97, 'U342919970-2021', 'Emma', 'Afosah', 'emmagyafo', '', 1, '$2y$10$ytkzHxCKI2AAGCVDn5hgFuQUsli9RlLMeJjcODoOTr3i0iaXXDYNS', 'C002871450577', 'Female', '', '', 'Radiograhper', 'user', 1, '', 0, '', '', 0, 0, 3, 0, '526099782', 0, 0, NULL, '2021-06-26 12:51:43'),
(96, 'U947680646-2021', 'Rosaline Nana Ama', 'Smillie', 'amasmillie', '', 1, '$2y$10$R0iMxe8MwalgGOLbbYgsWe/5j2vU0.De/uUo6MufxzLYrVLWss9Ki', 'C002871450577', 'Female', '0546275329', '', 'Radiographer', 'user', 1, '', 0, '', '', 0, 0, 3, 0, '526099782', 0, 0, NULL, '2021-06-26 12:43:51'),
(95, 'U717572252-2021', 'Micheal', 'Adu-Mensah', 'adumensah', '', 1, '$2y$10$1tnVQf902ORVI17WerGECOLOQz/I2qmFULsMz.I5riSEZkrhkQFT6', 'C002871450577', 'Male', '0501208580', '', 'Lab Scientist', 'user', 1, '', 0, '', '', 0, 2, 0, 0, '526099782', 0, 1, '2021-06-26 16:29:53', '2021-06-26 12:40:52'),
(94, 'U851067690-2021', 'Esther', 'Anokye', 'anokyees', '', 1, '$2y$10$5tqBjKLGQXrDojiJZDCmxuCaho9dkIGRsAd8t8a/1O8TiuBknXJIC', 'C002871450577', 'Female', '0247954389', '', 'Lab Scientist', 'user', 1, '', 0, '', '', 0, 2, 0, 0, '526099782', 0, 0, NULL, '2021-06-26 12:35:09'),
(93, 'U119548924-2021', 'Isaac', 'Acheampong', 'acheampong', '', 1, '$2y$10$oRSOIA6rAnkfj8Re5Jnwd.QBxk5Dij5iWQu8b2gc11BV9GY8DwjhO', 'C002871450577', 'Male', '0242106829', '', 'Radiographer', 'user', 1, '', 0, '', '', 0, 0, 3, 0, '526099782', 0, 0, NULL, '2021-06-26 12:27:10'),
(91, 'U977883292-2021', 'Winifred', 'Golomeke', 'paulawhite', '', 1, '$2y$10$2SCzS07dtb23qkUIAPahIunray94FN..CZ3CluzpXa2kMPgJiNeEC', 'C002871450577', 'Female', '', '', 'Receptionist', 'user', 1, '', 0, '', '', 1, 0, 3, 0, '526099782', 0, 0, NULL, '2021-05-27 15:28:52'),
(92, 'U579105540-2021', 'Helena', 'Ahelegbe', 'raymond2', '', 1, '$2y$10$ppAJNzNpDLDbHtnY2xApie4A.hsiq85nZFWkv0iMpuC2TnJQjmM3i', 'C002871450577', 'Female', '', '', 'Receptionist', 'user', 1, '', 0, '', '', 1, 2, 3, 0, '526099782', 0, 1, '2021-09-18 10:21:28', '2021-05-27 15:57:00'),
(90, 'U912369074-2021', 'Grace', 'Ewudzie', 'adorable', '', 1, '$2y$10$hOxd1gqhPRr4YCxRKyvDPO2i2rQ6kW8E4GDaz7.97x7w4s33a9OYO', 'C002871450577', 'Female', '', '', 'Front Desk', 'user', 1, '', 0, '', '', 1, 0, 3, 0, '526099782', 0, 0, '2021-05-27 12:38:44', '2021-05-27 12:37:53'),
(89, 'U060600711380', 'Adelaide', 'Anim-Annor', 'adelaide', 'adeleannorbea2266@gamil.com', 1, '$2y$10$Cx1.n7btOHGJJJFRMPwLd.tAGa3d//WgWdHJ1MWVWhgBwd8w6WOQ2', 'C002871450577', '', '0240830577', '', '', 'admin', 1, '', 0, '', '', 1, 2, 3, 4, '', 0, 0, '2021-10-04 14:41:51', '2021-05-27 10:42:30');

-- --------------------------------------------------------

--
-- Table structure for table `validation`
--

CREATE TABLE `validation` (
  `id` int(11) NOT NULL,
  `centerusername` varchar(255) DEFAULT NULL,
  `verifyid` varchar(255) DEFAULT NULL,
  `branch` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(5) NOT NULL DEFAULT 0,
  `department` tinyint(11) NOT NULL DEFAULT 1,
  `sign` longtext DEFAULT NULL,
  `date` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activate`
--
ALTER TABLE `activate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminusers`
--
ALTER TABLE `adminusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commonresult`
--
ALTER TABLE `commonresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `createtest`
--
ALTER TABLE `createtest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `debt`
--
ALTER TABLE `debt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dressingreport`
--
ALTER TABLE `dressingreport`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labs`
--
ALTER TABLE `labs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Types` (`Types`);

--
-- Indexes for table `labtest`
--
ALTER TABLE `labtest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhis`
--
ALTER TABLE `nhis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pettycash`
--
ALTER TABLE `pettycash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receivables`
--
ALTER TABLE `receivables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refund`
--
ALTER TABLE `refund`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registerpatient`
--
ALTER TABLE `registerpatient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setupclaims`
--
ALTER TABLE `setupclaims`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smstemplates`
--
ALTER TABLE `smstemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplies`
--
ALTER TABLE `supplies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testparameters`
--
ALTER TABLE `testparameters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testsetup`
--
ALTER TABLE `testsetup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testunits`
--
ALTER TABLE `testunits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usedcomments`
--
ALTER TABLE `usedcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `validation`
--
ALTER TABLE `validation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activate`
--
ALTER TABLE `activate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `adminusers`
--
ALTER TABLE `adminusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `commonresult`
--
ALTER TABLE `commonresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `createtest`
--
ALTER TABLE `createtest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `debt`
--
ALTER TABLE `debt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dressingreport`
--
ALTER TABLE `dressingreport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `labs`
--
ALTER TABLE `labs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=941;

--
-- AUTO_INCREMENT for table `labtest`
--
ALTER TABLE `labtest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `nhis`
--
ALTER TABLE `nhis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pettycash`
--
ALTER TABLE `pettycash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `receivables`
--
ALTER TABLE `receivables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `refund`
--
ALTER TABLE `refund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registerpatient`
--
ALTER TABLE `registerpatient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `setupclaims`
--
ALTER TABLE `setupclaims`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `smstemplates`
--
ALTER TABLE `smstemplates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplies`
--
ALTER TABLE `supplies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testparameters`
--
ALTER TABLE `testparameters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=508;

--
-- AUTO_INCREMENT for table `testsetup`
--
ALTER TABLE `testsetup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=737;

--
-- AUTO_INCREMENT for table `testunits`
--
ALTER TABLE `testunits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `usedcomments`
--
ALTER TABLE `usedcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `validation`
--
ALTER TABLE `validation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
