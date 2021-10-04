-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2021 at 02:36 AM
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
-- Database: `kkb`
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
(10, 'A38385-2021-1620986633', 'C257708322072', '704454738', 'A38385-2021', 'U986790605-2021', 1, '2021-05-14 10:03:53');

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
  `secret_key` varchar(255) NOT NULL DEFAULT '',
  `lck` tinyint(5) NOT NULL DEFAULT 0,
  `npd` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminusers`
--

INSERT INTO `adminusers` (`id`, `centername`, `address`, `contact`, `location`, `reg_date`, `email`, `country`, `region`, `logo`, `status`, `resetpin`, `pkg`, `verifyid`, `api_key`, `api_secret`, `claim`, `scheme_name`, `signature`, `facility_code`, `facility_type`, `headerpic`, `footerpic`, `printsetup`, `secret_key`, `lck`, `npd`) VALUES
(1, 'Meditech Laboratory Services', 'Alhaji, Accra', '0249702413', 'Alhaji', '2021-05-05 23:42:38', 'ayertey205@gmail.com', 'Ghana', 'GREATER ACCRA', '', 1, '', 2, 'C257708322072', '', '', NULL, '', '', '', 0, '', NULL, 'YTo5OntpOjA7czoxOiIwIjtpOjE7czoxOiIwIjtpOjI7czoyOiIzMCI7aTozO3M6MjoiMTUiO2k6NDtzOjI6IjEwIjtpOjU7czoxOiIwIjtpOjY7czoxOiIwIjtpOjc7czoxOiIwIjtpOjg7czoxOiIwIjt9', '162028335866233641007741948163', 0, '2021-06-30 10:23:53');

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
(1, 'C257708322072', '', 'alhaji', '704454738', 'ALH', '2021-05-05 23:57:10');

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
(1, 'C257708322072', '', 'Amber', '2021-05-05 09:19:51'),
(2, 'C257708322072', '', 'Clear', '2021-05-05 09:19:51'),
(3, 'C257708322072', '', 'Cloudy', '2021-05-05 09:19:51'),
(4, 'C257708322072', '', 'Coitus Interruptus', '2021-05-05 09:19:51'),
(5, 'C257708322072', '', 'Coliforms Isolated', '2021-05-05 09:19:51'),
(6, 'C257708322072', '', 'Complete Liquefaction', '2021-05-05 09:19:51'),
(7, 'C257708322072', '', 'Formed Specimen', '2021-05-05 09:19:51'),
(8, 'C257708322072', '', 'Full Defect', '2021-05-05 09:19:51'),
(9, 'C257708322072', '', 'Grey', '2021-05-05 09:19:51'),
(10, 'C257708322072', '', 'Hazy', '2021-05-05 09:19:51'),
(11, 'C257708322072', '', 'Intestinal Flagellates Present', '2021-05-05 09:19:51'),
(12, 'C257708322072', '', 'Light Amber', '2021-05-05 09:19:51'),
(13, 'C257708322072', '', 'Loose Specimen', '2021-05-05 09:19:51'),
(14, 'C257708322072', '', 'Malaria Parasites Present', '2021-05-05 09:19:51'),
(15, 'C257708322072', '', 'Masturbation', '2021-05-05 09:19:51'),
(16, 'C257708322072', '', 'Negative', '2021-05-05 09:19:51'),
(17, 'C257708322072', '', 'Nil', '2021-05-05 09:19:51'),
(18, 'C257708322072', '', 'No AFB Seen', '2021-05-05 09:19:51'),
(19, 'C257708322072', '', 'No Bacterial Growth', '2021-05-05 09:19:51'),
(20, 'C257708322072', '', 'No Malaria Parasites Seen', '2021-05-05 09:19:51'),
(21, 'C257708322072', '', 'No Salmonella Or Shigella Isolated', '2021-05-05 09:19:51'),
(22, 'C257708322072', '', 'Non-Reactive', '2021-05-05 09:19:51'),
(23, 'C257708322072', '', 'Normal', '2021-05-05 09:19:51'),
(24, 'C257708322072', '', 'Not Seen', '2021-05-05 09:19:51'),
(25, 'C257708322072', '', 'O Rh(D) Positive', '2021-05-05 09:19:51'),
(26, 'C257708322072', '', 'Partial Defect', '2021-05-05 09:19:51'),
(27, 'C257708322072', '', 'Platelets-Appear Adequate', '2021-05-05 09:19:51'),
(28, 'C257708322072', '', 'Positive', '2021-05-05 09:19:51'),
(29, 'C257708322072', '', 'Pseudomonas Aeruginosa', '2021-05-05 09:19:51'),
(30, 'C257708322072', '', 'RBC-Normocytic Normochromic', '2021-05-05 09:19:51'),
(31, 'C257708322072', '', 'Reactive', '2021-05-05 09:19:51'),
(32, 'C257708322072', '', 'Resistant', '2021-05-05 09:19:51'),
(33, 'C257708322072', '', 'Sensitive', '2021-05-05 09:19:51'),
(34, 'C257708322072', '', 'Staphylococcus Aureus Isolated', '2021-05-05 09:19:51'),
(35, 'C257708322072', '', 'Straw', '2021-05-05 09:19:51'),
(36, 'C257708322072', '', 'Trace', '2021-05-05 09:19:51'),
(37, 'C257708322072', '', 'WBC-Normal Picture', '2021-05-05 09:19:51'),
(38, 'C257708322072', '', 'Escherichia Coli Isolated        ', '2021-05-05 09:19:51'),
(39, 'C257708322072', '', 'Streptococcus Faecalis Isolated', '2021-05-05 09:19:51'),
(40, 'C257708322072', '', 'Enterobacter Species  ', '2021-05-05 09:19:51'),
(41, 'C257708322072', '', 'Semi-formed Specimen', '2021-05-05 09:19:51'),
(42, 'C257708322072', '', 'Present', '2021-05-05 09:19:51'),
(43, 'C257708322072', '', 'Calcium Oxalate Present', '2021-05-05 09:19:51'),
(44, 'C257708322072', '', 'Yeastlike Cells Present', '2021-05-05 09:19:51'),
(45, 'C257708322072', '', 'Lactobacillus Species', '2021-05-05 09:19:51'),
(46, 'C257708322072', '', 'Citrobacter Freundii Isolated', '2021-05-05 09:19:51'),
(47, 'C257708322072', '', 'Deep Amber', '2021-05-05 09:19:51'),
(48, 'C257708322072', '', 'No Onchocerca Volvulus Seen', '2021-05-05 09:19:51'),
(49, 'C257708322072', '', 'No L.E. Cells Seen', '2021-05-05 09:19:51'),
(50, 'C257708322072', '', 'E-coli Isolated', '2021-05-05 09:19:51'),
(51, 'C257708322072', '', 'Beta Haemolytic Streptococcus Species Isolated', '2021-05-05 09:19:51'),
(52, 'C257708322072', '', 'No Fungal Elements Seen', '2021-05-05 09:19:51'),
(53, 'C257708322072', '', 'DELUXE', '2021-05-05 09:19:51'),
(54, 'C257708322072', '', 'Slimy Specimen', '2021-05-05 09:19:51'),
(55, 'C257708322072', '', 'Normospermia', '2021-05-05 09:19:51'),
(56, 'C257708322072', '', 'Azoospermia', '2021-05-05 09:19:51'),
(57, 'C257708322072', '', 'Incomplete Liquefaction', '2021-05-05 09:19:51'),
(58, 'C257708322072', '', 'Increased', '2021-05-05 09:19:51'),
(59, 'C257708322072', '', 'Proteus Mirabilis Isolated', '2021-05-05 09:19:51'),
(60, 'C257708322072', '', 'Candida Species Isolated', '2021-05-05 09:19:51'),
(61, 'C257708322072', '', 'Normal Flora Only', '2021-05-05 09:19:51'),
(62, 'C257708322072', '', 'Alpha Haemolytic Streptococcus Isolated', '2021-05-05 09:19:51'),
(63, 'C257708322072', '', 'Granular Casts Present', '2021-05-05 09:19:51'),
(64, 'C257708322072', '', 'Mixed Growth, Please Repeat', '2021-05-05 09:19:51'),
(65, 'C257708322072', '', 'Amorphous Phosphate Present', '2021-05-05 09:19:51'),
(66, 'C257708322072', '', 'No Helminth Ova Seen', '2021-05-05 09:19:51'),
(67, 'C257708322072', '', 'Gardnerella Species Seen', '2021-05-05 09:19:51'),
(68, 'C257708322072', '', 'Oligospermia', '2021-05-05 09:19:51'),
(69, 'C257708322072', '', 'Commensals Only', '2021-05-05 09:19:51'),
(70, 'C257708322072', '', 'No Significant Growth', '2021-05-05 09:19:51'),
(71, 'C257708322072', '', 'Mucoid', '2021-05-05 09:19:51'),
(72, 'C257708322072', '', 'Coagulase Negative Staphylococcus', '2021-05-05 09:19:51'),
(73, 'C257708322072', '', 'Klebsiella Pneumoniae Isolated', '2021-05-05 09:19:51'),
(74, 'C257708322072', '', 'No Vibrio Cholerae Isolated', '2021-05-05 09:19:51'),
(75, 'C257708322072', '', 'Hyaline Present', '2021-05-05 09:19:51'),
(76, 'C257708322072', '', 'Acinetobacter Species', '2021-05-05 09:19:51'),
(77, 'C257708322072', '', 'No Microfilarae Seen', '2021-05-05 09:19:51'),
(78, 'C257708322072', '', 'No Pathogen Isolated', '2021-05-05 09:19:51'),
(79, 'C257708322072', '', 'Enterococcus Species', '2021-05-05 09:19:51'),
(80, 'C257708322072', '', 'Colourless', '2021-05-05 09:19:51'),
(81, 'C257708322072', '', 'No Organism Seen', '2021-05-05 09:19:51'),
(82, 'C257708322072', '', 'Salmonella Species  isolated', '2021-05-05 09:19:51'),
(83, 'C257708322072', '', 'Bacillus Species Only', '2021-05-05 09:19:51'),
(84, 'C257708322072', '', 'Fungal Elements Present', '2021-05-05 09:19:51'),
(85, 'C257708322072', '', 'Over-range', '2021-05-05 09:19:51'),
(86, 'C257708322072', '', 'Indeterminate', '2021-05-05 09:19:51'),
(87, 'C257708322072', '', 'See Comment', '2021-05-05 09:19:51'),
(88, 'C257708322072', '', 'Streptococcus Viridans Isolated', '2021-05-05 09:19:51'),
(89, 'C257708322072', '', 'Streptococcus Pneumoniae Isolated', '2021-05-05 09:19:51'),
(90, 'C257708322072', '', 'Staphylococcus Saprophyticus Isolated', '2021-05-05 09:19:51'),
(91, 'C257708322072', '', 'Proteus Vulgaris Isolated', '2021-05-05 09:19:51'),
(92, 'C257708322072', '', 'Bacillus Species, Probably A Contaminant', '2021-05-05 09:19:51'),
(93, 'C257708322072', '', 'Proteus Species Isolated', '2021-05-05 09:19:51'),
(94, 'C257708322072', '', 'Morganella Morganii Isolated', '2021-05-05 09:19:51'),
(95, 'C257708322072', '', 'Cervical', '2021-05-05 09:19:51'),
(96, 'C257708322072', '', 'No Bacterial Growth After 7 Days Of Incubation', '2021-05-05 09:19:51'),
(97, 'C257708322072', '', 'No Bacterial Growth After 48 Hours Of Incubation', '2021-05-05 09:19:51'),
(98, 'C257708322072', '', 'Uric Acid Crystals Present', '2021-05-05 09:19:51'),
(99, 'C257708322072', '', 'Active', '2021-05-05 09:19:51'),
(100, 'C257708322072', '', 'Sluggish', '2021-05-05 09:19:51'),
(101, 'C257708322072', '', 'Triple Phosphates Present', '2021-05-05 09:19:51'),
(102, 'C257708322072', '', 'Viable', '2021-05-05 09:19:51'),
(103, 'C257708322072', '', 'Appear Normal', '2021-05-05 09:19:51'),
(104, 'C257708322072', '', 'Providencia Species Isolated', '2021-05-05 09:19:51'),
(105, 'C257708322072', '', 'RBC-Normocytic Normochromic, WBC- Morphologically', '2021-05-05 09:19:51'),
(106, 'C257708322072', '', 'Staphylococcus Epidermidis Only', '2021-05-05 09:19:51'),
(107, 'C257708322072', '', 'Positive (P. Falciparum)', '2021-05-05 09:19:51'),
(108, 'C257708322072', '', 'Negative (P. Falciparum)', '2021-05-05 09:19:51'),
(109, 'C257708322072', '', 'Bagulase Negative', '2021-05-05 09:19:51'),
(110, 'C257708322072', '', 'Plasmodium Falciparum', '2021-05-05 09:19:51'),
(111, 'C257708322072', '', 'Plasmodium Vivax', '2021-05-05 09:19:51'),
(112, 'C257708322072', '', 'Plasmodium Ovalae', '2021-05-05 09:19:51'),
(113, 'C257708322072', '', 'Plasmodium Malariae', '2021-05-05 09:19:51'),
(114, 'C257708322072', '', 'Equivocal', '2021-05-05 09:19:51'),
(115, 'C257708322072', '', 'A Rh(D) Positive', '2021-05-05 09:19:51'),
(116, 'C257708322072', '', 'A Rh(D) Negative', '2021-05-05 09:19:51'),
(117, 'C257708322072', '', 'B Rh(D) Positive', '2021-05-05 09:19:51'),
(118, 'C257708322072', '', 'B Rh(D) Negative', '2021-05-05 09:19:51'),
(119, 'C257708322072', '', 'AB Rh(D) Positive', '2021-05-05 09:19:51'),
(120, 'C257708322072', '', 'AB Rh(D) Negative', '2021-05-05 09:19:51'),
(121, 'C257708322072', '', 'O Rh(D) Negative', '2021-05-05 09:19:51'),
(122, 'C257708322072', '', 'No Defect', '2021-05-05 09:19:51'),
(123, 'C257708322072', '', 'Turbid', '2021-05-05 09:19:51'),
(124, 'C257708322072', '', 'NULL', '2021-05-05 09:19:51'),
(125, 'C257708322072', '', 'Present (+)', '2021-05-05 09:19:51'),
(126, 'C257708322072', '', 'Present (++)', '2021-05-05 09:19:51'),
(127, 'C257708322072', '', 'Present (+++)', '2021-05-05 09:19:51'),
(128, 'C257708322072', '', 'Parasites/ul', '2021-05-05 09:19:51'),
(129, 'C257708322072', '', 'Singleton', '2021-05-05 09:21:03'),
(130, 'C257708322072', '', 'Anterior', '2021-05-05 09:21:45'),
(131, 'C257708322072', '', 'Adequate', '2021-05-05 09:22:23');

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
(18, 'C257708322072', 'U098765432', '704454738', 'A38385-2021', 2, 'A38385-2021-1620986633', 'ALHL303425650-2021', '', '', 'Cash', '50.00', '0', '0', '0.00', '0', '1', 'YToxOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjM0OiIxc3QgVHJpbWVzdGVyIE9ic3RldHJpcyBVbHRyYXNvdW5kIjtzOjQ6ImNvc3QiO3M6MjoiNTAiO3M6MTI6InNlbGVjdGVkY29zdCI7czo1OiI1MC4wMCI7czo5OiJuaGlzcHJpY2UiO3M6MToiMCI7czo3OiJwcml2YXRlIjtzOjE6IjAiO319', 'YToxOntpOjE7YTo1OntzOjg6InRlc3RuYW1lIjtzOjM0OiIxc3QgVHJpbWVzdGVyIE9ic3RldHJpcyBVbHRyYXNvdW5kIjtzOjQ6ImNvc3QiO3M6MjoiNTAiO3M6MTI6InNlbGVjdGVkY29zdCI7czo1OiI1MC4wMCI7czo5OiJuaGlzcHJpY2UiO3M6MToiMCI7czo3OiJwcml2YXRlIjtzOjE6IjAiO319', '', '1', '2021-05-14 10:36:32', '2021-05-14 10:04:31', '', '', 0);

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
(746, 'HDL â€“ Cholesterol', 1, '0', 'both', '00INVE61D', 1),
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
(758, 'LDL â€“ Cholesterol', 1, '0', 'both', '00INVE73D', 1),
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
(7, 'C257708322072', 'A38385-2021', 'A38385-2021-1620986633', '704454738', 'YTo0OntpOjE7YTo2OntzOjE3OiJwYXJhbWV0ZXJ0ZXN0bmFtZSI7czozNDoiMXN0IFRyaW1lc3RlciBPYnN0ZXRyaXMgVWx0cmFzb3VuZCI7czoxMzoicGFyYW1ldGVybmFtZSI7czo4OiJGSU5ESU5HUyI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjE0OiJwYXJhbWV0ZXJyYW5nZSI7czowOiIiO3M6ODoiZmluZGluZ3MiO3M6NDY6IlRoZSB1dGVydXMgaGFzIGFuIGludHJhdXRlcmluZSBnZXN0YXRpb25hbCBzYWMiO3M6NDoidW5pdCI7czowOiIiO31pOjI7YTo2OntzOjE3OiJwYXJhbWV0ZXJ0ZXN0bmFtZSI7czozNDoiMXN0IFRyaW1lc3RlciBPYnN0ZXRyaXMgVWx0cmFzb3VuZCI7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJHU0QiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czoxNDoicGFyYW1ldGVycmFuZ2UiO3M6MDoiIjtzOjg6ImZpbmRpbmdzIjtzOjc6IjEuMDUgY20iO3M6NDoidW5pdCI7czowOiIiO31pOjM7YTo2OntzOjE3OiJwYXJhbWV0ZXJ0ZXN0bmFtZSI7czozNDoiMXN0IFRyaW1lc3RlciBPYnN0ZXRyaXMgVWx0cmFzb3VuZCI7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJBR0EiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czoxNDoicGFyYW1ldGVycmFuZ2UiO3M6MDoiIjtzOjg6ImZpbmRpbmdzIjtzOjE1OiI0IHdlZWtzIDMgZGF5cyAiO3M6NDoidW5pdCI7czowOiIiO31pOjQ7YTo2OntzOjE3OiJwYXJhbWV0ZXJ0ZXN0bmFtZSI7czozNDoiMXN0IFRyaW1lc3RlciBPYnN0ZXRyaXMgVWx0cmFzb3VuZCI7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJFREQiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czoxNDoicGFyYW1ldGVycmFuZ2UiO3M6MDoiIjtzOjg6ImZpbmRpbmdzIjtzOjE4OiIxOHRoIEphbnVhcnksIDIwMjIiO3M6NDoidW5pdCI7czowOiIiO319', 'U986790605-2021', 1, 1, 'U986790605-2021', '2021-05-14 10:36:32', '2021-05-14 10:36:18', 'ALHL303425650-2021', NULL, 'EARLY INTRAUTERINE CYESIS AT 4 WEEKS&amp;nbsp; 3 DAYS&lt;br&gt;');

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
(9, 'C257708322072', 'U986790605-2021', '704454738', 'A38385-2021', 'AMAMDA', 'AMOAK', '0246115389', '', '', 'Married', '1991', 'January', '1', 0, 'Female', '', 'Ghana', '', '', '0', '2021-05-14 10:03:52', '', '');

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
(400, '•	MICROSCOPY'),
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
(1, 'C257708322072', '', '704454738', 'HB', '20', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyOiJIQiI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjQ6ImcvZEwiO3M6NzoibWFsZW1pbiI7czo0OiIxMi41IjtzOjc6Im1hbGVtYXgiO3M6NDoiMTcuNSI7czo5OiJmZW1hbGVtaW4iO3M6NDoiMTEuNSI7czo5OiJmZW1hbGVtYXgiO3M6NDoiMTYuNSI7czo4OiJjaGlsZG1pbiI7czo0OiIxMy4wIjtzOjg6ImNoaWxkbWF4IjtzOjQ6IjE4LjAiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-05 05:21:39'),
(2, 'C257708322072', '', '704454738', 'B/F For Malaria Parasites', '20', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMDoiQmYgZm9yIG1wcyI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-05 05:21:39'),
(3, 'C257708322072', '', '704454738', 'Full Blood Count (FBC)', '40', '0', '', '', '', 1, '0', 'YToxNjp7aToxO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MzoiV0JDIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6ODoieDEwXjMvdUwiO3M6NzoibWFsZW1pbiI7czozOiIzLjUiO3M6NzoibWFsZW1heCI7czo0OiIxMC4wIjtzOjk6ImZlbWFsZW1pbiI7czozOiIzLjUiO3M6OToiZmVtYWxlbWF4IjtzOjQ6IjEwLjAiO3M6ODoiY2hpbGRtaW4iO3M6MzoiMy41IjtzOjg6ImNoaWxkbWF4IjtzOjQ6IjEyLjAiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjI7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJMWU1QSCUiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czoxOiIlIjtzOjc6Im1hbGVtaW4iO3M6NDoiMjAuMCI7czo3OiJtYWxlbWF4IjtzOjQ6IjUwLjAiO3M6OToiZmVtYWxlbWluIjtzOjQ6IjIwLjAiO3M6OToiZmVtYWxlbWF4IjtzOjQ6IjUwLjAiO3M6ODoiY2hpbGRtaW4iO3M6NDoiMjAuMCI7czo4OiJjaGlsZG1heCI7czo0OiI3MC4wIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTozO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6NDoiTUlEJSI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjE6IiUiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czozOiIzLjAiO3M6Nzoic2FtZW1heCI7czo0OiIxNS4wIjt9aTo0O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6NToiR1JBTiUiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czoxOiIlIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6NDoiNDAuMCI7czo3OiJzYW1lbWF4IjtzOjQ6Ijc0LjAiO31pOjU7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo0OiJMWU0jIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6ODoieDEwXjMvdUwiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czozOiIxLjAiO3M6Nzoic2FtZW1heCI7czozOiI0LjIiO31pOjY7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo0OiJNSUQjIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6ODoieDEwXjMvdUwiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czozOiIwLjEiO3M6Nzoic2FtZW1heCI7czozOiIxLjAiO31pOjc7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo1OiJHUkFOIyI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjg6IngxMF4zL3VMIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MzoiMS44IjtzOjc6InNhbWVtYXgiO3M6MzoiNy4zIjt9aTo4O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MzoiUkJDIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6ODoieDEwXjYvdUwiO3M6NzoibWFsZW1pbiI7czozOiI0LjMiO3M6NzoibWFsZW1heCI7czozOiI2LjgiO3M6OToiZmVtYWxlbWluIjtzOjM6IjQuMyI7czo5OiJmZW1hbGVtYXgiO3M6MzoiNi4yIjtzOjg6ImNoaWxkbWluIjtzOjM6IjQuMyI7czo4OiJjaGlsZG1heCI7czozOiI3LjAiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjk7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJIR0IiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czo0OiJnL2RMIjtzOjc6Im1hbGVtaW4iO3M6NDoiMTIuNSI7czo3OiJtYWxlbWF4IjtzOjQ6IjE3LjUiO3M6OToiZmVtYWxlbWluIjtzOjQ6IjExLjUiO3M6OToiZmVtYWxlbWF4IjtzOjQ6IjE2LjUiO3M6ODoiY2hpbGRtaW4iO3M6NDoiMTIuNSI7czo4OiJjaGlsZG1heCI7czoyOiIxOCI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MTA7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJIQ1QiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czozOiJwL2ciO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czo0OiIzNS4wIjtzOjc6InNhbWVtYXgiO3M6NDoiNTQuMCI7fWk6MTE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJNQ1YiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czoyOiJmTCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjQ6IjgyLjAiO3M6Nzoic2FtZW1heCI7czo1OiIxMDAuMCI7fWk6MTI7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJNQ0giO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czoyOiJwZyI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjQ6IjI3LjAiO3M6Nzoic2FtZW1heCI7czo0OiIzNC4wIjt9aToxMzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjQ6Ik1DSEMiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czo0OiJnL2RMIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6NDoiMzAuMCI7czo3OiJzYW1lbWF4IjtzOjQ6IjM3LjAiO31pOjE0O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MzoiTVBWIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6MjoiZkwiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czozOiI2LjUiO3M6Nzoic2FtZW1heCI7czo0OiIxMi4wIjt9aToxNTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjM6IlBMVCI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjc6IjEwXjMvdUwiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czo1OiIxMDAuMCI7czo3OiJzYW1lbWF4IjtzOjU6IjM1MC4wIjt9aToxNjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjM6IlBDVCI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjE6IiUiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czo0OiIwLjEwIjtzOjc6InNhbWVtYXgiO3M6NDoiMC4yOCI7fX0=', 'czowOiIiOw==', 0, 0, '2021-05-05 05:21:39'),
(51, 'C257708322072', '', '704454738', 'Obstetris Ultrasound', '50', '0', '', '', '', 2, '0', 'YToxNjp7aToxO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTU6Ik5VTUJFUiBPRiBGRVRVUyI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjE3OiJQTEFDRU5UQSBMT0NBVElPTiI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjEzOiJMSVFVT1IgVk9MVU1FIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo0O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTY6IkNBUkRJQUMgQUNUSVZJVFkiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjU7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxODoiRkVUQUwgUFJFU0VOVEFUSU9OIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo2O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6OToiRkVUQUwgTElFIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo3O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MzoiU0VYIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo4O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MzoiRUZXIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo5O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MzoiQlBEIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxMDthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjI6IkZMIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxMTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjI6IkFDIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxMjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjI6IkhDIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxMzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjM6IkFHQSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MTQ7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJFREQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjE1O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTE6IkxJTUJTLFNQSU5FIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxNjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjExOiJDRVJWSUNBTCBPUyI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czowOiIiOw==', 0, 0, '2021-05-05 07:22:50'),
(4, 'C257708322072', '', '704454738', 'Uric Acid', '30', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMzoiUyAtIFVyaWMgQWNpZCI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjY6InVtb2wvTCI7czo3OiJtYWxlbWluIjtzOjU6IjIwMi4wIjtzOjc6Im1hbGVtYXgiO3M6NToiNDE2LjAiO3M6OToiZmVtYWxlbWluIjtzOjU6IjE0My4wIjtzOjk6ImZlbWFsZW1heCI7czo1OiIzNDAuMCI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-05 05:21:39'),
(5, 'C257708322072', '', '704454738', 'Widal', '30', '0', '', '', '', 1, '0', 'YToyOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMDoiUy4gVFlQSEkgSCI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjEwOiJTLiBUWVBISSBPIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-05 05:21:39'),
(6, 'C257708322072', '', '704454738', 'Liver Function Test (LFT)', '80', '0', '', '', '', 1, '0', 'YTo4OntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyNzoiQXNwYXJ0YXRlIFRyYW5zZmVyYXNlIChBU1QpIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6MzoiVS9MIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MzoiNS4wIjtzOjc6InNhbWVtYXgiO3M6NDoiNDUuMCI7fWk6MjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjI1OiJBbGFuaW5lIFRyYW5zZmVyYXNlIChBTFQpIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6MzoiVS9MIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MzoiNS4wIjtzOjc6InNhbWVtYXgiO3M6NDoiNDAuMCI7fWk6MzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjg6IkdhbW1hIEdUIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6MzoiVS9MIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6NDoiMTEuMCI7czo3OiJzYW1lbWF4IjtzOjQ6IjUwLjAiO31pOjQ7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo3OiJBbGJ1bWluIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6MzoiZy9MIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6NDoiMzYuMCI7czo3OiJzYW1lbWF4IjtzOjQ6IjU2LjAiO31pOjU7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNDoiVG90YWwgUHJvdGVpbiAiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czozOiJnL0wiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czo0OiI2MC4wIjtzOjc6InNhbWVtYXgiO3M6NDoiODguMCI7fWk6NjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjE1OiJUb3RhbCBCaWxpcnViaW4iO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czo2OiJ1bW9sL0wiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czozOiIyLjAiO3M6Nzoic2FtZW1heCI7czo0OiIyMS4wIjt9aTo3O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6Mjk6IkRpcmVjdCBCaWxpcnViaW4gKENvbmp1Z2F0ZWQpIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6NjoidW1vbC9MIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MzoiMC4wIjtzOjc6InNhbWVtYXgiO3M6MzoiNy4wIjt9aTo4O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MjY6IkFsa2FsaW5lIFBob3NwaGF0YXNlIChBTFApIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6MzoiVS9MIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6NDoiMzAuMCI7czo3OiJzYW1lbWF4IjtzOjU6IjI3MC4wIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-05 05:21:39'),
(59, 'C257708322072', '', '704454738', 'PROLATIN', '60', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo4OiJQUk9MQVRJTiI7czo5OiJyZWZlcmVuY2UiO3M6NDg6IiBGZW1hbGU6My4yNCDigJMgMjkuMTA8YnI+bWFsZTozLjI4ICAtIDE5LjY4PGJyPiI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjU6Im5nL21sIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-06 10:54:55'),
(7, 'C257708322072', '', '704454738', 'Lipid Profile', '60', '0', '', '', '', 1, '0', 'YTo1OntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNzoiVG90YWwgQ2hvbGVzdHJvbCAiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czo2OiJtbW9sL2wiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czo0OiIzLjY0IjtzOjc6InNhbWVtYXgiO3M6NDoiNi40MCI7fWk6MjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjEzOiJUcmlnbHljZXJpZGUgIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6NjoibW1vbC9sIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MzoiMC4wIjtzOjc6InNhbWVtYXgiO3M6NDoiMS43MCI7fWk6MzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjE1OiJIREwtQ2hvbGVzdGVyb2wiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czo2OiJtbW9sL2wiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czozOiIxLjYiO3M6Nzoic2FtZW1heCI7czozOiIzLjgiO31pOjQ7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNToiTERMLUNob2xlc3Rlcm9sIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6NjoibW1vbC9sIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MzoiMC4wIjtzOjc6InNhbWVtYXgiO3M6NDoiMy44OCI7fWk6NTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjEzOiJDb3JvbmFyeSBSaXNrIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6NToiUmF0aW8iO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czozOiIxLjAiO3M6Nzoic2FtZW1heCI7czozOiI0LjAiO319', 'czowOiIiOw==', 0, 0, '2021-05-05 05:21:39'),
(8, 'C257708322072', '', '704454738', 'Blood Urea Electrolyte And Creatine (BUE/Cr)', '0', '0', '', '', '0', 1, '0', 'YTo1OntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJTb2RpdW0iO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czo2OiJtbW9sL2wiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czozOiIxMzUiO3M6Nzoic2FtZW1heCI7czozOiIxNTAiO31pOjI7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo4OiJDaGxvcmlkZSI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjY6Im1tb2wvbCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjI6Ijk1IjtzOjc6InNhbWVtYXgiO3M6MzoiMTA5Ijt9aTozO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6OToiUG90YXNzaXVtIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6NjoibW1vbC9sIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MzoiMy41IjtzOjc6InNhbWVtYXgiO3M6MzoiNS4xIjt9aTo0O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6NDoiVXJlYSI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjY6Im1tb2wvbCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjM6IjIuMSI7czo3OiJzYW1lbWF4IjtzOjM6IjguMyI7fWk6NTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjEwOiJDcmVhdGluaW5lIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6NjoidW1vbC9MIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MjoiNTMiO3M6Nzoic2FtZW1heCI7czozOiIxMzMiO319', NULL, 0, 0, '2021-05-05 05:21:39'),
(9, 'C257708322072', '', '704454738', 'High Vaginal Swab (HVS) C/S', '70', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo3OiJDVUxUVVJFIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-05 05:21:39'),
(10, 'C257708322072', '', '704454738', 'VDRL', '0', '0', '', '', '0', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo0OiJWRFJMIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', NULL, 0, 0, '2021-05-05 05:21:39'),
(11, 'C257708322072', '', '704454738', 'FBS', '0', '0', '', '', '0', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJGQlMiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czo2OiJtbW9sL2wiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czozOiIzLjQiO3M6Nzoic2FtZW1heCI7czozOiI2LjkiO319', NULL, 0, 0, '2021-05-05 05:21:39'),
(12, 'C257708322072', '', '704454738', 'RBS', '0', '0', '', '', '0', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJSQlMiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czo2OiJtbW9sL2wiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czozOiIzLjQiO3M6Nzoic2FtZW1heCI7czozOiI3LjgiO319', NULL, 0, 0, '2021-05-05 05:21:39'),
(13, 'C257708322072', '', '704454738', 'Renal Function Test (RFT)', '0', '0', '', '', '0', 1, '0', 'YTo1OntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMToiU29kaXVtKE5hKykiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czo2OiJtbW9sL2wiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czozOiIxMzUiO3M6Nzoic2FtZW1heCI7czozOiIxNTAiO31pOjI7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo4OiJDaGxvcmlkZSI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjY6Im1tb2wvbCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjI6Ijk1IjtzOjc6InNhbWVtYXgiO3M6MzoiMTA5Ijt9aTozO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6OToiUG90YXNzaXVtIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6NjoibW1vbC9sIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MzoiMy41IjtzOjc6InNhbWVtYXgiO3M6MzoiNS4xIjt9aTo0O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6NDoiVXJlYSI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjY6Im1tb2wvbCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjM6IjIuMSI7czo3OiJzYW1lbWF4IjtzOjM6IjcuMSI7fWk6NTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjEwOiJDcmVhdGluaW5lIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6NjoidW1vbC9MIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MjoiNTMiO3M6Nzoic2FtZW1heCI7czozOiIxMzMiO319', NULL, 0, 0, '2021-05-05 05:21:39'),
(14, 'C257708322072', '', '704454738', 'Retroviral (HIV I,II)', '0', '0', '', '', '0', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMjoiUmV0cm8gc2NyZWVuIjtzOjk6InJlZmVyZW5jZSI7czowOiIiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', NULL, 0, 0, '2021-05-05 05:21:39'),
(15, 'C257708322072', '', '704454738', 'Glycosylated Haemoglobin (HBA 1C)', '90', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo1OiJIYkExYyI7czo5OiJyZWZlcmVuY2UiO3M6NzY6IiBOb3JtYWwJCQkJKDwgNS42KSAlCgpQcmUgRGlhYmV0ZXMJCQkoNS43IOKAkyA2LjQpICUKCkRpYWJldGVzCQkJKD4gNi41KSAlCgoiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czoxOiIlIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-05 05:21:39'),
(16, 'C257708322072', '', '704454738', 'Stool R/E', '30', '0', '', '', '', 1, '0', 'YToyOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMDoiTUFDUk9TQ09QWSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjEwOiJNSUNST1NDT1BZIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-05 05:21:39'),
(17, 'C257708322072', '', '704454738', 'Urine C/S', '60', '0', '', '', '', 1, '0', 'YToxMzp7aToxO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6OToiQVVHTUVOVElOIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToyO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTM6IkNJUFJPRkxPWEFDSU4iO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjM7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMToiQ0VGVFJJQVpPTkUiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjQ7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMDoiR0VOVEFNSUNJTiI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjExOiJQSVBFUkFDSUxJTiI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjg6IkFNSUtBQ0lOIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo3O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTQ6Ik5JVFJPRlVSQU5UT0lOIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo4O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTQ6Ik5BTElESVhJQyBBQ0lEIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo5O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTE6IkNFRlRBRElaSU1FIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxMDthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjExOiJOT1JGTE9YQUNJTiI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MTE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMjoiVEVUUkFDWUNMSU5FIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxMjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjEyOiJMRVZPRkxPWEFDSU4iO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjEzO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6NzoiQ1VMVFVSRSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czowOiIiOw==', 0, 0, '2021-05-05 05:21:39'),
(18, 'C257708322072', '', '704454738', 'TYPHOID Ag - STOOL', '0', '0', '', '', '0', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxODoiVFlQSE9JRCBBZyAtIFN0b29sIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', NULL, 0, 0, '2021-05-05 05:21:39'),
(19, 'C257708322072', '', '704454738', 'D-Dimer', '0', '0', '', '', '0', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyMDoiRC1ESU1FUiBRVUFOVElUQVRJVkUiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czo1OiJVZy9tTCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjM6IjAuMCI7czo3OiJzYW1lbWF4IjtzOjM6IjAuNSI7fX0=', NULL, 0, 0, '2021-05-05 05:21:39'),
(20, 'C257708322072', '', '704454738', 'Thyroid Function Test (TFT)', '180', '0', '', '', '', 1, '0', 'YTozOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNzoiVFNIIChUSFlST1RST1BJTikiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czo3OiLCtUlVL21sIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MzoiMC4zIjtzOjc6InNhbWVtYXgiO3M6MzoiNC4yIjt9aToyO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTY6IkZyZWUgVDMgKERJUkVDVCkiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czo2OiJwbW9sL0wiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czozOiIzLjEiO3M6Nzoic2FtZW1heCI7czozOiI3LjAiO31pOjM7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxOToiRnJlZSBUNCAoVEhZUk9YSU5FKSI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjY6InBtb2wvTCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjM6IjkuMCI7czo3OiJzYW1lbWF4IjtzOjQ6IjIwLjAiO319', 'czowOiIiOw==', 0, 0, '2021-05-05 05:21:39'),
(21, 'C257708322072', '', '704454738', 'UPT', '0', '0', '', '', '0', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJVUFQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', NULL, 0, 0, '2021-05-05 05:21:39'),
(22, 'C257708322072', '', '704454738', 'HBsAg', '0', '0', '', '', '0', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo1OiJIQnNBZyI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', NULL, 0, 0, '2021-05-05 05:21:39'),
(23, 'C257708322072', '', '704454738', 'Pregnancy Test (serum)', '0', '0', '', '', '0', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNDoiUHJlZ25hbmN5IFRlc3QiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', NULL, 0, 0, '2021-05-05 05:21:39'),
(24, 'C257708322072', '', '704454738', 'H. Pylori Ab (Serum)', '0', '0', '', '', '0', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyMDoiSC4gcHlsb3JpIEFiIChTZXJ1bSkiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', NULL, 0, 0, '2021-05-05 05:21:39'),
(25, 'C257708322072', '', '704454738', 'H. Pylori Ag (Stool)', '0', '0', '', '', '0', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyMDoiSC4gcHlsb3JpIEFnIChzdG9vbCkiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', NULL, 0, 0, '2021-05-05 05:21:39'),
(26, 'C257708322072', '', '704454738', 'TYPHOID IgG/IgM', '0', '0', '', '', '0', 1, '0', 'YToyOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMToiVFlQSE9JRCBJZ0ciO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjI7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMToiVFlQSE9JRCBJZ00iO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', NULL, 0, 0, '2021-05-05 05:21:39'),
(27, 'C257708322072', '', '704454738', 'Routine Urine Examination (R/E)', '30', '0', '', '', '', 1, '0', 'YToxNzp7aToxO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6NToiQ29sb3IiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjI7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMDoiQXBwZWFyYW5jZSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjI6InBIIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo0O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6NzoiR2x1Y29zZSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjc6Ik5pdHJpdGUiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjY7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo1OiJCbG9vZCI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjc6IktldG9uZXMiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjg7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo3OiJQcm90ZWluIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo5O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTA6IkxldWtvY3l0ZXMiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjEwO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6OToiQmlsaXJ1YmluIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxMTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjEyOiJVcm9iaWxpbm9nZW4iO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjEyO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6OToiUHVzIENlbGxzIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxMzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjE2OiJFcGl0aGVsaWFsIENlbGxzIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxNDthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjE3OiJZZWFzdCBMaWtlIENlbGxzICI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MTU7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo0OiJSQkNzIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxNjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjU6IkNhc3RzIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxNzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjg6IkNyeXN0YWxzIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-05 05:21:39'),
(71, 'C257708322072', '', '704454738', 'H Pylori AG / AB', '60', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNjoiSCBQeWxvcmkgQUcgLyBBQiI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czowOiIiOw==', 0, 0, '2021-05-06 11:47:09'),
(72, 'C257708322072', '', '704454738', 'Blood Pregnacy Test', '20', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxOToiQmxvb2QgUHJlZ25hY3kgVGVzdCI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czowOiIiOw==', 0, 0, '2021-05-06 11:50:02'),
(73, 'C257708322072', '', '704454738', 'Chlamydia', '50', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo5OiJDaGxhbXlkaWEiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-06 11:51:23'),
(28, 'C257708322072', '', '704454738', 'Helicobacter Pylori Ab', '0', '0', '', '', '0', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMjoiSC1QeWxvcmkgQWIuIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', NULL, 0, 0, '2021-05-05 05:21:39');
INSERT INTO `testsetup` (`id`, `centerusername`, `enteredby`, `branch`, `testname`, `cost`, `nhisprice`, `grdcode`, `department`, `ranking`, `type`, `private`, `parameters`, `guideline`, `is_passage`, `extra_info`, `date`) VALUES
(29, 'C257708322072', '', '704454738', 'Sickling', '30', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo4OiJzaWNrbGluZyI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czowOiIiOw==', 0, 0, '2021-05-05 05:21:39'),
(30, 'C257708322072', '', '704454738', 'Blood Groupings', '30', '0', '', '', '', 1, '0', 'YToyOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJBQk8iO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjI7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo0OiJSSCBEIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-05 05:21:39'),
(31, 'C257708322072', '', '704454738', 'G6PD', '30', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo0OiJHNlBEIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-05 05:21:39'),
(32, 'C257708322072', '', '704454738', 'SALMONELLA Ag - STOOL', '0', '0', '', '', '0', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyMToiU0FMTU9ORUxMQSBBZyAtIFN0b29sIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', NULL, 0, 0, '2021-05-05 05:21:39'),
(33, 'C257708322072', '', '704454738', 'High Vaginal Swab (HVS) R/E', '30', '0', '', '', '', 1, '0', 'YTo4OntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNDoiUHVzIENlbGxbL0hQRl0iO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjI7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyMzoiRXBpdGhlbGlhbCBjZWxscyBbL0hQRl0iO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjM7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo5OiJSQkNbL0hQRl0iO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjQ7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyODoiWUVBU1QtTElLRSBDRUxMUy9DQU5ESURBIFNQLiI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjExOiJULlZhZ2luYWxpcyI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjExOiJTUEVSTSBDRUxMUyI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjg6IkJBQ1RFUklBIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo4O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTE6IkdyYW0gc3RhaW4gIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-05 05:21:39'),
(34, 'C257708322072', '', '704454738', 'PSA', '70', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJQU0EiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czoyMToibmcvbUwgICAgICAgICAgICAgICAgIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6NDoiMC4wMCI7czo3OiJzYW1lbWF4IjtzOjQ6IjQuMDAiO319', 'czowOiIiOw==', 0, 0, '2021-05-05 05:21:39'),
(35, 'C257708322072', '', '704454738', 'Erythrocyte Sedimentation Rate (ESR)', '0', '0', '', '', '0', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJFU1IiO3M6OToicmVmZXJlbmNlIjtzOjA6IiI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czozMjoibW0gZmFsbC9IciAgIChXZXN0ZXJncmVuIE1ldGhvZCkiO3M6NzoibWFsZW1pbiI7czozOiIxLjAiO3M6NzoibWFsZW1heCI7czo0OiIxMC4wIjtzOjk6ImZlbWFsZW1pbiI7czozOiIxLjAiO3M6OToiZmVtYWxlbWF4IjtzOjQ6IjE0LjAiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', NULL, 0, 0, '2021-05-05 05:21:39'),
(36, 'C257708322072', '', '704454738', 'Hepatitis C', '40', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMToiSGVwYXRpdGlzIEMiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-05 05:21:39'),
(37, 'C257708322072', '', '704454738', 'ECG', '0', '0', '', '', '0', 2, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJFQ0ciO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', NULL, 0, 0, '2021-05-05 05:21:39'),
(38, 'C257708322072', '', '704454738', 'HB-Electrophoresis', '50', '0', '', '', '', 1, '0', 'YToyOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo4OiJTSUNLTElORyI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjExOiJIQiBHRU5PVFlQRSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czowOiIiOw==', 0, 0, '2021-05-05 05:21:39'),
(39, 'C257708322072', '', '704454738', 'PELVIC USG', '60', '0', '', '', '', 2, '0', 'YTo0OntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJVdGVydXMiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjI7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJBZG5leGEiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjM7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNjoiUG91Y2ggb2YgZG91Z2xhcyI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NDthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjE4OiJBZGRpdGlvbmFsIGNvbW1lbnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-05 05:21:39'),
(40, 'C257708322072', '', '704454738', 'Abdominal Ultrasound', '100', '0', '', '', '', 2, '0', 'YTo2OntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo1OiJMaXZlciI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjY6IlNwbGVlbiI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjc6IktpZG5leXMiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjQ7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMToiR2FsbGJsYWRkZXIiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjU7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo4OiJQYW5jcmVhcyI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjE4OiJBZGRpdGlvbmFsIENvbW1lbnQiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-05 05:21:39'),
(41, 'C257708322072', '', '704454738', 'Breast Ultrasound', '80', '0', '', '', '', 2, '0', 'YToyOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJBeGlsbGEiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjI7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJCcmVhc3QiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-05 05:21:39'),
(42, 'C257708322072', '', '704454738', 'Abdomino-Pelvic Ultrasound(Female)', '120', '0', '', '', '', 2, '0', 'YToxMDp7aToxO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6NToiTGl2ZXIiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjI7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJTcGxlZW4iO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjM7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo3OiJLaWRuZXlzIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo0O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTE6IkdhbGxibGFkZGVyIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo1O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6ODoiUGFuY3JlYXMiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjY7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJVdGVydXMiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjc7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJBZG5leGEiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjg7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNjoiUG91Y2ggb2YgRG91Z2xhcyI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6OTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjE1OiJVcmluYXJ5IEJsYWRkZXIiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjEwO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTg6IkFkZGl0aW9uYWwgQ29tbWVudCI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czowOiIiOw==', 0, 0, '2021-05-05 05:21:39'),
(43, 'C257708322072', '', '704454738', 'Abdomino-Pelvic Ultrasound(Male)', '120', '0', '', '', '', 2, '0', 'YTo5OntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo1OiJMaXZlciI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjY6IlNwbGVlbiI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjc6IktpZG5leXMiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjQ7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMToiR2FsbGJsYWRkZXIiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjU7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo4OiJQYW5jcmVhcyI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjE1OiJVcmluYXJ5IEJsYWRkZXIiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjc7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyMDoiUmVjdG8tVmVzaWNhbCBSZWNlc3MiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjg7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo4OiJQcm9zdGF0ZSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6OTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjIxOiJBZGRpdGlvbmFsIEZpbmRpbmcocykiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-05 05:21:39'),
(44, 'C257708322072', '', '704454738', '1st Trimester Obstetris Ultrasound', '50', '0', '', '', '', 2, '0', 'YTo0OntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo4OiJGSU5ESU5HUyI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjM6IkdTRCI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjM6IkFHQSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NDthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjM6IkVERCI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czowOiIiOw==', 0, 0, '2021-05-05 05:21:39'),
(45, 'C257708322072', '', '704454738', 'Second &amp;amp; Third(2nd/3rd) Trimester', '0', '0', '', '', '0', 2, '0', 'YTo5OntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNzoiTnVtYmVyIG9mIEZldHVzZXMiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjI7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyMjoiRmV0YWwgQ2FyZGlhYyBBY3Rpdml0eSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjEyOiJQcmVzZW50YXRpb24iO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjQ7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo4OiJQbGFjZW50YSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjE3OiJMaXFvdXIgVm9sdW1lKExWKSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjMxOiJFc3RpbWF0ZWQgRGF0ZSBvZiBEZWxpdmVyeShFREQpIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo3O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6Mjg6IkVzdGltYXRlZCBGZXRhbCBXZWlnaHQgKEVGVykiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjg7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozMToiRXN0aW1hdGVkIEdlc3RhdGlvbmFsIEFnZSAoRUdBKSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6OTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjIxOiJBZGRpdGlvbmFsIEZpbmRpbmcocykiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', NULL, 0, 0, '2021-05-05 05:21:39'),
(46, 'C257708322072', '', '704454738', 'Scrotal / Testicular USG', '80', '0', '', '', '', 2, '0', 'YTo1OntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJUZXN0ZXMiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjI7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo3OiJTY3JvdHVtIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTozO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTI6IkVwaWRpZHltaWRlcyI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NDthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjE1OiJJbmd1aW5hbCBSZWdpb24iO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjU7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyMToiQWRkaXRpb25hbCBGaW5kaW5nKHMpIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-05 05:21:39'),
(47, 'C257708322072', '', '704454738', 'Thyriod USG', '70', '0', '', '', '', 2, '0', 'YTo0OntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMDoiUmlnaHQgTG9iZSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjk6IkxlZnQgTG9iZSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjc6IklzdGhtdXMiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjQ7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxODoiQWRkaXRpb25hbCBDb21tZW50IjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-05 05:21:39'),
(48, 'C257708322072', '', '704454738', 'Venous Doppler USG - Lower Limbs', '0', '0', '', '', '0', 2, '0', 'YTo1OntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyMDoiQ29tbW9uIGZlbW9yYWwgdmVpbnMiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjI7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyNToiU3VwZXJmaWNpYWwgZmVtb3JhbCB2ZWlucyI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjE1OiJQb3BsaXRlYWwgVmVpbnMiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjQ7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozMDoiU2tpbiBhbmQgc3ViY3V0YW5lb3VzIHRpc3N1ZXMgIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo1O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTg6IkFkZGl0aW9uYWwgQ29tbWVudCI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', NULL, 0, 0, '2021-05-05 05:21:39'),
(49, 'C257708322072', '', '704454738', 'Fetal Anomaly USG', '0', '0', '', '', '0', 2, '0', 'YToxMjp7aToxO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6NDoiSGVhZCI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjQ6IkZhY2UiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjM7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJUaG9yYXgiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjQ7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo3OiJBYmRvbWVuIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo1O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6NToiU3BpbmUiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjY7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMToiRXh0cmVtaXRpZXMiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjc7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyNToiRXN0aW1hdGVkIEdlc3RhdGlvbmFsIEFnZSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6ODthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjI2OiJFc3RpbWF0ZWQgRGF0ZSBvZiBEZWxpdmVyeSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6OTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjE0OiJMaXF1b3IgVm9sdW1lICI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MTA7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMjoiUHJlc2VudGF0aW9uIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxMTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjIyOiJFc3RpbWF0ZWQgRmV0YWwgV2VpZ2h0IjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aToxMjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjg6IlBsYWNlbnRhIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', NULL, 0, 0, '2021-05-05 05:21:39'),
(50, 'C257708322072', '', '704454738', 'Arterial Dropper USG - Lower Limbs', '0', '0', '', '', '0', 2, '0', 'YTo4OntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyMzoiQ29tbW9uIEZlbW9yYWwgQXJ0ZXJpZXMiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjI7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyODoiU3VwZXJmaWNpYWwgRmVtb3JhbCBBcnRlcmllcyI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjE4OiJQb3BsaXRlYWwgQXJ0ZXJpZXMiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjQ7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyOToiU2tpbiBBbmQgU3ViY3V0YW5lb3VzIFRpc3N1ZXMiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjU7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyNDoiQW50ZXJpb3IgVGliaWFsIEFydGVyaWVzIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo2O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MjU6IlBvc3RlcmlvciB0aWJpYWwgQXJ0ZXJpZXMiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjc7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyMzoiRG9yc2FsaXMgUGVkaXMgQXJ0ZXJpZXMiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjg7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxOToiQWRkaXRpb25hbCBDb21tZW50cyI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', NULL, 0, 0, '2021-05-05 05:21:39'),
(52, 'C257708322072', '', '704454738', 'Obstetris Ultrasound', '50', '0', '', '', '', 2, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNToiTlVNQkVSIE9GIEZFVFVTIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-05 07:24:53'),
(53, 'C257708322072', '', '704454738', 'ABC', '34', '0', '', '', '', 2, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo1OiJTRFNEUyI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czowOiIiOw==', 0, 0, '2021-05-05 07:25:49'),
(54, 'C257708322072', '', '704454738', 'ABC', '12', '0', '', '', '', 2, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo4OiJTQURTREFTRCI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czowOiIiOw==', 0, 0, '2021-05-05 07:27:03'),
(55, 'C257708322072', '', '704454738', 'ASDAD', '10', '0', '', '', '', 2, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJBU0QiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-05 07:28:51'),
(56, 'C257708322072', '', '704454738', 'Abc', '23', '0', '', '', '', 2, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJhc2QiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-05 07:35:16'),
(57, 'C257708322072', '', '704454738', 'Prostate Scan', '70', '0', '', '', '', 2, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo4OiJGaW5kaW5ncyI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czowOiIiOw==', 1, 0, '2021-05-05 09:38:22'),
(58, 'C257708322072', '', '704454738', 'KIDNEY FUNCTION TEST', '70', '0', '', '', '', 1, '0', 'YTo1OntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo0OiJVUkVBIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjY6Im1tb2wvTCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjM6IjIuMCI7czo3OiJzYW1lbWF4IjtzOjQ6IjcuMjAiO31pOjI7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo4OiJDUkVBVElORSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czo2OiJtbW9sL0wiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czo0OiI2MC4wIjtzOjc6InNhbWVtYXgiO3M6NToiMTI3LjAiO31pOjM7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo2OiJTT0RJVU0iO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MzoiWWVzIjtzOjQ6InVuaXQiO3M6NjoibW1vbC9MIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MzoiMTM1IjtzOjc6InNhbWVtYXgiO3M6MzoiMTUwIjt9aTo0O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6OToiUE9UQVNTSVVNIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjY6Im1tb2wvTCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjM6IjMuNSI7czo3OiJzYW1lbWF4IjtzOjM6IjUuNSI7fWk6NTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjg6IkNITE9SSU1FIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjM6IlllcyI7czo0OiJ1bml0IjtzOjY6Im1tb2wvTCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjI6Ijk2IjtzOjc6InNhbWVtYXgiO3M6MzoiMTgwIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-06 10:10:24'),
(60, 'C257708322072', '', '704454738', 'Follicle Stimulating Hormone (FSH)', '60', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozOiJGU0giO3M6OToicmVmZXJlbmNlIjtzOjExNzoiRm9sbC4gcGhhc2U6IDQg4oCTIDEzLCA8YnI+TWlkOiBwaGFzZTogNSDigJMgMjI8YnI+IEx1dC4gUGhhc2U6IDIg4oCTIDEzPGJyPlBvc3QgbWVubzoyMCAtIDEzOCwgIDxicj5NYWxlOiAxIC0gODxicj4gIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6NToibWxVL0wiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-06 10:58:30'),
(61, 'C257708322072', '', '704454738', 'TESTOSTERONE', '60', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxNDoiIFRFU1RPU1RFUk9ORSAiO3M6OToicmVmZXJlbmNlIjtzOjQ5OiIgRmVtYWxlOiAwLjA1IOKAkyAwLjc1PGJyPk1hbGU6IDIuMjUg4oCTIDkuNzI8YnI+IjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6NToibmcvbWwiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-06 11:00:22'),
(62, 'C257708322072', '', '704454738', 'ESTROGEN', '60', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo4OiJFU1RST0dFTiI7czo5OiJyZWZlcmVuY2UiO3M6MTI0OiIgRm9sbC4gUGhhc2U6IDEyIC0gMjYyIDxicj5NaWQuIFBoYXNlOiA5NCAtIDUwOCAgPGJyPkx1dC4gUGhhc2U6IDQ4IOKAkyAzMDksIDxicj5Qb3N0IG1lbm86IDIwIOKAkyA0MSw8YnI+IE1hbGU6IDAgLSA2MiA8YnI+IjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6NToicGcvbWwiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-06 11:03:13'),
(63, 'C257708322072', '', '704454738', 'PROGESTERONE', '60', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMjoiUFJPR0VTVEVST05FIjtzOjk6InJlZmVyZW5jZSI7czoxNDA6IiBGb2xsLiBQaGFzZTogMC4yNyDigJMgMi42MSw8YnI+TWlkLiBQaGFzZTogMy4yOCAtIDM4LjYzPGJyPiBMdXQuIFBoYXNlOiA1LjI1IOKAkyAzOC42MyA8YnI+UG9zdCBtZW5vLiAwLjItIDAuODIsPGJyPiBNYWxlOiAwLjIg4oCTIDMuMzc8YnI+IjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6NToibmcvbWwiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-06 11:05:30'),
(64, 'C257708322072', '', '704454738', 'Luteinizing Hormone (LH)', '60', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoyOiJMSCI7czo5OiJyZWZlcmVuY2UiO3M6MTE2OiIgRm9sbC4gUGhhc2U6MS0gMTgsPGJyPiBNaWQuIFBoYXNlOiAyNCDigJMgMTA1LDxicj4gTHV0LiBQaGFzZTogMC40IOKAkyAyMCw8YnI+IFBvc3QgbWVubzoxNSDigJMgNjIsIG1hbGU6MiAtIDEyPGJyPiI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czowOiIiOw==', 0, 0, '2021-05-06 11:07:00');
INSERT INTO `testsetup` (`id`, `centerusername`, `enteredby`, `branch`, `testname`, `cost`, `nhisprice`, `grdcode`, `department`, `ranking`, `type`, `private`, `parameters`, `guideline`, `is_passage`, `extra_info`, `date`) VALUES
(65, 'C257708322072', '', '704454738', 'Blood Glucose', '10', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMzoiQmxvb2QgR2x1Y29zZSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czowOiIiOw==', 0, 0, '2021-05-06 11:24:18'),
(66, 'C257708322072', '', '704454738', 'HbA1c', '90', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo1OiJIYkExYyI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czoxOiIlIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MzoiNC4wIjtzOjc6InNhbWVtYXgiO3M6MzoiNy4wIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-06 11:26:22'),
(67, 'C257708322072', '', '704454738', 'Rectro Screen', '20', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMzoiUmVjdHJvIFNjcmVlbiI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czowOiIiOw==', 0, 0, '2021-05-06 11:27:45'),
(68, 'C257708322072', '', '704454738', '2HR Post Prandial', '50', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxODoiMkhSIFBvc3QgUHJhbmRpYWwgIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-06 11:30:14'),
(69, 'C257708322072', '', '704454738', 'Hepatitis B', '30', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czoxMToiSGVwYXRpdGlzIEIiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-06 11:31:52'),
(70, 'C257708322072', '', '704454738', 'Hepatitis B Profile', '100', '0', '', '', '', 1, '0', 'YTo1OntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo1OiJIYnNBZyI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjU6IkhiU0FiIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTozO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6NToiSGJlQWciO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjQ7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo1OiJIYmVBYiI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjU6IkhiQ0FiIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-06 11:34:31'),
(74, 'C257708322072', '', '704454738', 'SYPHILIS', '30', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo4OiJTeXBoaWxpcyI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fX0=', 'czowOiIiOw==', 0, 0, '2021-05-06 11:52:19'),
(75, 'C257708322072', '', '704454738', 'Gonorrhea', '70', '0', '', '', '', 1, '0', 'YToxOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo5OiJHb25vcnJoZWEiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-06 12:48:00'),
(76, 'C257708322072', '', '704454738', 'Oral Glucose Tolerance Test (OGTT)', '70', '0', '', '', '', 1, '0', 'YToyOntpOjE7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo1OiJCbG9vZCI7czo5OiJyZWZlcmVuY2UiO3M6MDoiIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6NzoiIG1tb2wvTCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjU6IlVyaW5lIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9fQ==', 'czowOiIiOw==', 0, 0, '2021-05-06 12:53:21'),
(77, 'C257708322072', '', '704454738', 'Semen Analysis', '100', '0', '', '', '', 1, '0', 'YToxMzp7aToxO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTI6IlNFTUVOIFZPTFVNRSI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czozOiJZZXMiO3M6NDoidW5pdCI7czoyOiJtTCI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjM6IjIuMCI7czo3OiJzYW1lbWF4IjtzOjM6IjUuMCI7fWk6MjthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjU6IkNvbG9yIjtzOjk6InJlZmVyZW5jZSI7czo1OiIgR1JFWSI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MzthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjI6IlBIIjtzOjk6InJlZmVyZW5jZSI7czo1OiI+PTcuNSI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6NDthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjg6IlB1cyBDZWxsIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo1O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTQ6IlJlZCBCbG9vZCBDZWxsIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo2O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MzI6Ik1PVkVNRU5UIE9GIFNMVUdHSVNIIFNQRVJNIENFTExTIjtzOjk6InJlZmVyZW5jZSI7czoxOiIgIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MDoiIjtzOjc6Im1hbGVtaW4iO3M6MDoiIjtzOjc6Im1hbGVtYXgiO3M6MDoiIjtzOjk6ImZlbWFsZW1pbiI7czowOiIiO3M6OToiZmVtYWxlbWF4IjtzOjA6IiI7czo4OiJjaGlsZG1pbiI7czowOiIiO3M6ODoiY2hpbGRtYXgiO3M6MDoiIjtzOjc6InNhbWVtaW4iO3M6MDoiIjtzOjc6InNhbWVtYXgiO3M6MDoiIjt9aTo3O2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTY6IkRFQUQgU1BFUk0gQ0VMTFMiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjg7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czozNjoiTU9USUxJVFkgKFJBUElEIExJTkVBUikgIFBST0dSRVNTSVZFIjtzOjk6InJlZmVyZW5jZSI7czoxNToiIE1PUkUgVEhBTiA3MCAlIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MToiJSI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6OTthOjEyOntzOjEzOiJwYXJhbWV0ZXJuYW1lIjtzOjEwOiJNT1JQSE9MT0dZIjtzOjk6InJlZmVyZW5jZSI7czoxNToiIE1PUkUgVEhBTiA3MCAlIjtzOjU6ImZsYWdzIjtzOjI6Ik5vIjtzOjQ6InVuaXQiO3M6MToiJSI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MTA7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo5OiJWSUFCSUxJVFkiO3M6OToicmVmZXJlbmNlIjtzOjE0OiIgTU9SRSBUSEFOIDcwJSI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjE6IiUiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjExO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6NToiQ09VTlQiO3M6OToicmVmZXJlbmNlIjtzOjIzOiIgTU9SRSBUSEFOIDIwIFggMTBeNi9tTCI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjc6IjEwXjYvdUwiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO31pOjEyO2E6MTI6e3M6MTM6InBhcmFtZXRlcm5hbWUiO3M6MTI6IkxJUVVFRkFDVElPTiI7czo5OiJyZWZlcmVuY2UiO3M6MToiICI7czo1OiJmbGFncyI7czoyOiJObyI7czo0OiJ1bml0IjtzOjA6IiI7czo3OiJtYWxlbWluIjtzOjA6IiI7czo3OiJtYWxlbWF4IjtzOjA6IiI7czo5OiJmZW1hbGVtaW4iO3M6MDoiIjtzOjk6ImZlbWFsZW1heCI7czowOiIiO3M6ODoiY2hpbGRtaW4iO3M6MDoiIjtzOjg6ImNoaWxkbWF4IjtzOjA6IiI7czo3OiJzYW1lbWluIjtzOjA6IiI7czo3OiJzYW1lbWF4IjtzOjA6IiI7fWk6MTM7YToxMjp7czoxMzoicGFyYW1ldGVybmFtZSI7czo5OiJWSVNDT1NJVFkiO3M6OToicmVmZXJlbmNlIjtzOjE6IiAiO3M6NToiZmxhZ3MiO3M6MjoiTm8iO3M6NDoidW5pdCI7czowOiIiO3M6NzoibWFsZW1pbiI7czowOiIiO3M6NzoibWFsZW1heCI7czowOiIiO3M6OToiZmVtYWxlbWluIjtzOjA6IiI7czo5OiJmZW1hbGVtYXgiO3M6MDoiIjtzOjg6ImNoaWxkbWluIjtzOjA6IiI7czo4OiJjaGlsZG1heCI7czowOiIiO3M6Nzoic2FtZW1pbiI7czowOiIiO3M6Nzoic2FtZW1heCI7czowOiIiO319', 'czowOiIiOw==', 0, 0, '2021-05-06 13:01:33');

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
(52, 'µIU/mL'),
(25, 'kU/1'),
(44, 'X10^12/L'),
(27, 'cells/µL  '),
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
(1, 'C257708322072', '', 'Amber', 'Amber', '2021-05-05 09:23:07'),
(2, 'C257708322072', '', 'Clear', 'Amber', '2021-05-05 09:23:07'),
(3, 'C257708322072', '', 'obs', 'Single live intrauterine cyesis at 34 weeks o Day&lt;br&gt;', '2021-05-05 09:24:02');

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
(2, 'U758262562-2021', 'Samuel', 'Ayertey', 'samuel01', '', 1, '$2y$10$DP2acPyEC.thX.Af./UqBuRSn0QjX0qocCxJESfiX1M5s/JOwymJS', 'C257708322072', 'Male', '0249702413', '', 'Lab Scientist', 'user', 1, '', 0, '', '', 1, 2, 3, 0, '704454738', 0, 1, '2021-05-14 12:12:38', '2021-05-05 05:13:35'),
(3, 'U986790605-2021', 'Joyce', 'Godzo', 'joycegodzo', '', 1, '$2y$10$90kmNCA5TGDzo3cUkcf8yOK9RJt2AwbKO6pd6WwdKap1IgtD8O6Eq', 'C257708322072', 'Male', '0246075612', '', 'Lab Technician', 'user', 1, '', 0, '', '', 1, 2, 3, 0, '704454738', 0, 1, '2021-05-17 09:52:47', '2021-05-05 05:18:23'),
(4, 'U098765432', 'Samuel', 'Ayertey', 'meditech', '', 1, '$2y$10$DP2acPyEC.thX.Af./UqBuRSn0QjX0qocCxJESfiX1M5s/JOwymJS', 'C257708322072', 'Male', '0249702413', '', '', 'admin', 1, '', 0, '', '', 1, 2, 3, 4, '', 1, 0, '2021-05-14 12:13:42', '2021-05-05 05:13:35');

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
  `sign` longtext DEFAULT NULL,
  `date` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `validation`
--

INSERT INTO `validation` (`id`, `centerusername`, `verifyid`, `branch`, `status`, `sign`, `date`) VALUES
(1, 'C257708322072', 'U758262562-2021', '704454738', 1, '&lt;p&gt;&lt;b&gt;Samuel Ayertey&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Lab Scientist &lt;br&gt;&lt;/p&gt;', '2021-05-05 05:29:49');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `adminusers`
--
ALTER TABLE `adminusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `commonresult`
--
ALTER TABLE `commonresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `createtest`
--
ALTER TABLE `createtest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `debt`
--
ALTER TABLE `debt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nhis`
--
ALTER TABLE `nhis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receivables`
--
ALTER TABLE `receivables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refund`
--
ALTER TABLE `refund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registerpatient`
--
ALTER TABLE `registerpatient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `setupclaims`
--
ALTER TABLE `setupclaims`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `smstemplates`
--
ALTER TABLE `smstemplates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `testunits`
--
ALTER TABLE `testunits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `usedcomments`
--
ALTER TABLE `usedcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `validation`
--
ALTER TABLE `validation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
