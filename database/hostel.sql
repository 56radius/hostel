-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2022 at 03:40 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin@1234', '2016-04-04 20:31:45', '2016-04-17');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hostels`
--

CREATE TABLE `hostels` (
  `H_id` int(11) NOT NULL,
  `HostelName` varchar(500) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL,
  `RoomCapacity` int(11) DEFAULT NULL,
  `OccupantCapacity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hostels`
--

INSERT INTO `hostels` (`H_id`, `HostelName`, `gender`, `Location`, `RoomCapacity`, `OccupantCapacity`) VALUES
(1, 'New Daniel Hall', 'Male', 'Inside', 107, 428),
(2, 'New Elizabeth Hall', 'Female', 'Inside', 100, 400);

-- --------------------------------------------------------

--
-- Table structure for table `ndha_room_count`
--

CREATE TABLE `ndha_room_count` (
  `id` bigint(20) NOT NULL,
  `count` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ndha_room_count`
--

INSERT INTO `ndha_room_count` (`id`, `count`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `new_daniel_hall_a`
--

CREATE TABLE `new_daniel_hall_a` (
  `id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `room_no` varchar(500) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `date_registered` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `new_daniel_hall_a`
--

INSERT INTO `new_daniel_hall_a` (`id`, `name`, `room_no`, `email`, `date_registered`) VALUES
(1, 'Ebube', 'A101a  ', 'Bube@gmail.com', '0000-00-00'),
(2, NULL, 'A101b  ', NULL, NULL),
(3, NULL, 'A101c  ', NULL, NULL),
(4, NULL, 'A101d  ', NULL, NULL),
(5, NULL, 'A102a  ', NULL, NULL),
(6, NULL, 'A102b  ', NULL, NULL),
(7, NULL, 'A102c  ', NULL, NULL),
(8, NULL, 'A102d  ', NULL, NULL),
(9, NULL, 'A103a  ', NULL, NULL),
(10, NULL, 'A103b  ', NULL, NULL),
(11, NULL, 'A103c  ', NULL, NULL),
(12, NULL, 'A103d  ', NULL, NULL),
(13, NULL, 'A104a  ', NULL, NULL),
(14, NULL, 'A104b  ', NULL, NULL),
(15, NULL, 'A104c  ', NULL, NULL),
(16, NULL, 'A104d  ', NULL, NULL),
(17, NULL, 'A105a  ', NULL, NULL),
(18, NULL, 'A105b  ', NULL, NULL),
(19, NULL, 'A105c  ', NULL, NULL),
(20, NULL, 'A105d  ', NULL, NULL),
(21, NULL, 'A106a  ', NULL, NULL),
(22, NULL, 'A106b  ', NULL, NULL),
(23, NULL, 'A106c  ', NULL, NULL),
(24, NULL, 'A106d  ', NULL, NULL),
(25, NULL, 'A107a  ', NULL, NULL),
(26, NULL, 'A107b  ', NULL, NULL),
(27, NULL, 'A107c  ', NULL, NULL),
(28, NULL, 'A107d  ', NULL, NULL),
(29, NULL, 'A108a  ', NULL, NULL),
(30, NULL, 'A108b  ', NULL, NULL),
(31, NULL, 'A108c  ', NULL, NULL),
(32, NULL, 'A108d  ', NULL, NULL),
(33, NULL, 'A109a  ', NULL, NULL),
(34, NULL, 'A109b  ', NULL, NULL),
(35, NULL, 'A109c  ', NULL, NULL),
(36, NULL, 'A109d  ', NULL, NULL),
(37, NULL, 'A110a  ', NULL, NULL),
(38, NULL, 'A110b  ', NULL, NULL),
(39, NULL, 'A110c  ', NULL, NULL),
(40, NULL, 'A110d  ', NULL, NULL),
(41, NULL, 'A111a  ', NULL, NULL),
(42, NULL, 'A111b  ', NULL, NULL),
(43, NULL, 'A111c  ', NULL, NULL),
(44, NULL, 'A111d  ', NULL, NULL),
(45, NULL, 'A112a  ', NULL, NULL),
(46, NULL, 'A112b  ', NULL, NULL),
(47, NULL, 'A112c  ', NULL, NULL),
(48, NULL, 'A112d  ', NULL, NULL),
(49, NULL, 'A113a  ', NULL, NULL),
(50, NULL, 'A113b  ', NULL, NULL),
(51, NULL, 'A113c  ', NULL, NULL),
(52, NULL, 'A113d  ', NULL, NULL),
(53, NULL, 'A201a  ', NULL, NULL),
(54, NULL, 'A201b  ', NULL, NULL),
(55, NULL, 'A201c  ', NULL, NULL),
(56, NULL, 'A201d  ', NULL, NULL),
(57, NULL, 'A202a  ', NULL, NULL),
(58, NULL, 'A202b  ', NULL, NULL),
(59, NULL, 'A202c  ', NULL, NULL),
(60, NULL, 'A202d  ', NULL, NULL),
(61, NULL, 'A203a  ', NULL, NULL),
(62, NULL, 'A203b  ', NULL, NULL),
(63, NULL, 'A203c  ', NULL, NULL),
(64, NULL, 'A203d  ', NULL, NULL),
(65, NULL, 'A204a  ', NULL, NULL),
(66, NULL, 'A204b  ', NULL, NULL),
(67, NULL, 'A204c  ', NULL, NULL),
(68, NULL, 'A204d  ', NULL, NULL),
(69, NULL, 'A205a  ', NULL, NULL),
(70, NULL, 'A205b  ', NULL, NULL),
(71, NULL, 'A205c  ', NULL, NULL),
(72, NULL, 'A205d  ', NULL, NULL),
(73, NULL, 'A206a  ', NULL, NULL),
(74, NULL, 'A206b  ', NULL, NULL),
(75, NULL, 'A206c  ', NULL, NULL),
(76, NULL, 'A206d  ', NULL, NULL),
(77, NULL, 'A207a  ', NULL, NULL),
(78, NULL, 'A207b  ', NULL, NULL),
(79, NULL, 'A207c  ', NULL, NULL),
(80, NULL, 'A207d  ', NULL, NULL),
(81, NULL, 'A208a  ', NULL, NULL),
(82, NULL, 'A208b  ', NULL, NULL),
(83, NULL, 'A208c  ', NULL, NULL),
(84, NULL, 'A208d  ', NULL, NULL),
(85, NULL, 'A209a  ', NULL, NULL),
(86, NULL, 'A209b  ', NULL, NULL),
(87, NULL, 'A209c  ', NULL, NULL),
(88, NULL, 'A209d  ', NULL, NULL),
(89, NULL, 'A210a  ', NULL, NULL),
(90, NULL, 'A210b  ', NULL, NULL),
(91, NULL, 'A210c  ', NULL, NULL),
(92, NULL, 'A210d  ', NULL, NULL),
(93, NULL, 'A211a  ', NULL, NULL),
(94, NULL, 'A211b  ', NULL, NULL),
(95, NULL, 'A211c  ', NULL, NULL),
(96, NULL, 'A211d  ', NULL, NULL),
(97, NULL, 'A212a  ', NULL, NULL),
(98, NULL, 'A212b  ', NULL, NULL),
(99, NULL, 'A212c  ', NULL, NULL),
(100, NULL, 'A212d  ', NULL, NULL),
(101, NULL, 'A213a  ', NULL, NULL),
(102, NULL, 'A213b  ', NULL, NULL),
(103, NULL, 'A213c  ', NULL, NULL),
(104, NULL, 'A213d  ', NULL, NULL),
(105, NULL, 'A301a  ', NULL, NULL),
(106, NULL, 'A301b  ', NULL, NULL),
(107, NULL, 'A301c  ', NULL, NULL),
(108, NULL, 'A301d  ', NULL, NULL),
(109, NULL, 'A302a  ', NULL, NULL),
(110, NULL, 'A302b  ', NULL, NULL),
(111, NULL, 'A302c  ', NULL, NULL),
(112, NULL, 'A302d  ', NULL, NULL),
(113, NULL, 'A303a  ', NULL, NULL),
(114, NULL, 'A303b  ', NULL, NULL),
(115, NULL, 'A303c  ', NULL, NULL),
(116, NULL, 'A303d  ', NULL, NULL),
(117, NULL, 'A304a  ', NULL, NULL),
(118, NULL, 'A304b  ', NULL, NULL),
(119, NULL, 'A304c  ', NULL, NULL),
(120, NULL, 'A304d  ', NULL, NULL),
(121, NULL, 'A305a  ', NULL, NULL),
(122, NULL, 'A305b  ', NULL, NULL),
(123, NULL, 'A305c  ', NULL, NULL),
(124, NULL, 'A305d  ', NULL, NULL),
(125, NULL, 'A306a  ', NULL, NULL),
(126, NULL, 'A306b  ', NULL, NULL),
(127, NULL, 'A306c  ', NULL, NULL),
(128, NULL, 'A306d  ', NULL, NULL),
(129, NULL, 'A307a  ', NULL, NULL),
(130, NULL, 'A307b  ', NULL, NULL),
(131, NULL, 'A307c  ', NULL, NULL),
(132, NULL, 'A307d  ', NULL, NULL),
(133, NULL, 'A308a  ', NULL, NULL),
(134, NULL, 'A308b  ', NULL, NULL),
(135, NULL, 'A308c  ', NULL, NULL),
(136, NULL, 'A308d  ', NULL, NULL),
(137, NULL, 'A309a  ', NULL, NULL),
(138, NULL, 'A309b  ', NULL, NULL),
(139, NULL, 'A309c  ', NULL, NULL),
(140, NULL, 'A309d  ', NULL, NULL),
(141, NULL, 'A310a  ', NULL, NULL),
(142, NULL, 'A310b  ', NULL, NULL),
(143, NULL, 'A310c  ', NULL, NULL),
(144, NULL, 'A310d  ', NULL, NULL),
(145, NULL, 'A311a  ', NULL, NULL),
(146, NULL, 'A311b  ', NULL, NULL),
(147, NULL, 'A311c  ', NULL, NULL),
(148, NULL, 'A311d  ', NULL, NULL),
(149, NULL, 'A312a  ', NULL, NULL),
(150, NULL, 'A312b  ', NULL, NULL),
(151, NULL, 'A312c  ', NULL, NULL),
(152, NULL, 'A312d  ', NULL, NULL),
(153, NULL, 'A313a  ', NULL, NULL),
(154, NULL, 'A313b  ', NULL, NULL),
(155, NULL, 'A313c  ', NULL, NULL),
(156, NULL, 'A313d  ', NULL, NULL),
(157, NULL, 'A401a  ', NULL, NULL),
(158, NULL, 'A401b  ', NULL, NULL),
(159, NULL, 'A401c  ', NULL, NULL),
(160, NULL, 'A401d  ', NULL, NULL),
(161, NULL, 'A402a  ', NULL, NULL),
(162, NULL, 'A402b  ', NULL, NULL),
(163, NULL, 'A402c  ', NULL, NULL),
(164, NULL, 'A402d  ', NULL, NULL),
(165, NULL, 'A403a  ', NULL, NULL),
(166, NULL, 'A403b  ', NULL, NULL),
(167, NULL, 'A403c  ', NULL, NULL),
(168, NULL, 'A403d  ', NULL, NULL),
(169, NULL, 'A404a  ', NULL, NULL),
(170, NULL, 'A404b  ', NULL, NULL),
(171, NULL, 'A404c  ', NULL, NULL),
(172, NULL, 'A404d  ', NULL, NULL),
(173, NULL, 'A405a  ', NULL, NULL),
(174, NULL, 'A405b  ', NULL, NULL),
(175, NULL, 'A405c  ', NULL, NULL),
(176, NULL, 'A405d  ', NULL, NULL),
(177, NULL, 'A406a  ', NULL, NULL),
(178, NULL, 'A406b  ', NULL, NULL),
(179, NULL, 'A406c  ', NULL, NULL),
(180, NULL, 'A406d  ', NULL, NULL),
(181, NULL, 'A407a  ', NULL, NULL),
(182, NULL, 'A407b  ', NULL, NULL),
(183, NULL, 'A407c  ', NULL, NULL),
(184, NULL, 'A407d  ', NULL, NULL),
(185, NULL, 'A408a  ', NULL, NULL),
(186, NULL, 'A408b  ', NULL, NULL),
(187, NULL, 'A408c  ', NULL, NULL),
(188, NULL, 'A408d  ', NULL, NULL),
(189, NULL, 'A409a  ', NULL, NULL),
(190, NULL, 'A409b  ', NULL, NULL),
(191, NULL, 'A409c  ', NULL, NULL),
(192, NULL, 'A409d  ', NULL, NULL),
(193, NULL, 'A410a  ', NULL, NULL),
(194, NULL, 'A410b  ', NULL, NULL),
(195, NULL, 'A410c  ', NULL, NULL),
(196, NULL, 'A410d  ', NULL, NULL),
(197, NULL, 'A411a  ', NULL, NULL),
(198, NULL, 'A411b  ', NULL, NULL),
(199, NULL, 'A411c  ', NULL, NULL),
(200, NULL, 'A411d  ', NULL, NULL),
(201, NULL, 'A412a  ', NULL, NULL),
(202, NULL, 'A412b  ', NULL, NULL),
(203, NULL, 'A412c  ', NULL, NULL),
(204, NULL, 'A412d  ', NULL, NULL),
(205, NULL, 'A413a  ', NULL, NULL),
(206, NULL, 'A413b  ', NULL, NULL),
(207, NULL, 'A413c  ', NULL, NULL),
(208, NULL, 'A413d  ', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `new_daniel_hall_b`
--

CREATE TABLE `new_daniel_hall_b` (
  `id` int(11) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `room_no` varchar(800) DEFAULT NULL,
  `date_registered` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `new_daniel_hall_b`
--

INSERT INTO `new_daniel_hall_b` (`id`, `name`, `room_no`, `date_registered`) VALUES
(1, NULL, 'B101a  ', NULL),
(2, NULL, 'B101b  ', NULL),
(3, NULL, 'B101c  ', NULL),
(4, NULL, 'B101d  ', NULL),
(5, NULL, 'B102a  ', NULL),
(6, NULL, 'B102b  ', NULL),
(7, NULL, 'B102c  ', NULL),
(8, NULL, 'B102d  ', NULL),
(9, NULL, 'B103a  ', NULL),
(10, NULL, 'B103b  ', NULL),
(11, NULL, 'B103c  ', NULL),
(12, NULL, 'B103d  ', NULL),
(13, NULL, 'B104a  ', NULL),
(14, NULL, 'B104b  ', NULL),
(15, NULL, 'B104c  ', NULL),
(16, NULL, 'B104d  ', NULL),
(17, NULL, 'B105a  ', NULL),
(18, NULL, 'B105b  ', NULL),
(19, NULL, 'B105c  ', NULL),
(20, NULL, 'B105d  ', NULL),
(21, NULL, 'B106a  ', NULL),
(22, NULL, 'B106b  ', NULL),
(23, NULL, 'B106c  ', NULL),
(24, NULL, 'B106d  ', NULL),
(25, NULL, 'B107a  ', NULL),
(26, NULL, 'B107b  ', NULL),
(27, NULL, 'B107c  ', NULL),
(28, NULL, 'B107d  ', NULL),
(29, NULL, 'B108a  ', NULL),
(30, NULL, 'B108b  ', NULL),
(31, NULL, 'B108c  ', NULL),
(32, NULL, 'B108d  ', NULL),
(33, NULL, 'B109a  ', NULL),
(34, NULL, 'B109b  ', NULL),
(35, NULL, 'B109c  ', NULL),
(36, NULL, 'B109d  ', NULL),
(37, NULL, 'B110a  ', NULL),
(38, NULL, 'B110b  ', NULL),
(39, NULL, 'B110c  ', NULL),
(40, NULL, 'B110d  ', NULL),
(41, NULL, 'B111a  ', NULL),
(42, NULL, 'B111b  ', NULL),
(43, NULL, 'B111c  ', NULL),
(44, NULL, 'B111d  ', NULL),
(45, NULL, 'B112a  ', NULL),
(46, NULL, 'B112b  ', NULL),
(47, NULL, 'B112c  ', NULL),
(48, NULL, 'B112d  ', NULL),
(49, NULL, 'B113a  ', NULL),
(50, NULL, 'B113b  ', NULL),
(51, NULL, 'B113c  ', NULL),
(52, NULL, 'B113d  ', NULL),
(53, NULL, 'B201a  ', NULL),
(54, NULL, 'B201b  ', NULL),
(55, NULL, 'B201c  ', NULL),
(56, NULL, 'B201d  ', NULL),
(57, NULL, 'B202a  ', NULL),
(58, NULL, 'B202b  ', NULL),
(59, NULL, 'B202c  ', NULL),
(60, NULL, 'B202d  ', NULL),
(61, NULL, 'B203a  ', NULL),
(62, NULL, 'B203b  ', NULL),
(63, NULL, 'B203c  ', NULL),
(64, NULL, 'B203d  ', NULL),
(65, NULL, 'B204a  ', NULL),
(66, NULL, 'B204b  ', NULL),
(67, NULL, 'B204c  ', NULL),
(68, NULL, 'B204d  ', NULL),
(69, NULL, 'B205a  ', NULL),
(70, NULL, 'B205b  ', NULL),
(71, NULL, 'B205c  ', NULL),
(72, NULL, 'B205d  ', NULL),
(73, NULL, 'B206a  ', NULL),
(74, NULL, 'B206b  ', NULL),
(75, NULL, 'B206c  ', NULL),
(76, NULL, 'B206d  ', NULL),
(77, NULL, 'B207a  ', NULL),
(78, NULL, 'B207b  ', NULL),
(79, NULL, 'B207c  ', NULL),
(80, NULL, 'B207d  ', NULL),
(81, NULL, 'B208a  ', NULL),
(82, NULL, 'B208b  ', NULL),
(83, NULL, 'B208c  ', NULL),
(84, NULL, 'B208d  ', NULL),
(85, NULL, 'B209a  ', NULL),
(86, NULL, 'B209b  ', NULL),
(87, NULL, 'B209c  ', NULL),
(88, NULL, 'B209d  ', NULL),
(89, NULL, 'B210a  ', NULL),
(90, NULL, 'B210b  ', NULL),
(91, NULL, 'B210c  ', NULL),
(92, NULL, 'B210d  ', NULL),
(93, NULL, 'B211a  ', NULL),
(94, NULL, 'B211b  ', NULL),
(95, NULL, 'B211c  ', NULL),
(96, NULL, 'B211d  ', NULL),
(97, NULL, 'B212a  ', NULL),
(98, NULL, 'B212b  ', NULL),
(99, NULL, 'B212c  ', NULL),
(100, NULL, 'B212d  ', NULL),
(101, NULL, 'B213a  ', NULL),
(102, NULL, 'B213b  ', NULL),
(103, NULL, 'B213c  ', NULL),
(104, NULL, 'B213d  ', NULL),
(105, NULL, 'B301a  ', NULL),
(106, NULL, 'B301b  ', NULL),
(107, NULL, 'B301c  ', NULL),
(108, NULL, 'B301d  ', NULL),
(109, NULL, 'B302a  ', NULL),
(110, NULL, 'B302b  ', NULL),
(111, NULL, 'B302c  ', NULL),
(112, NULL, 'B302d  ', NULL),
(113, NULL, 'B303a  ', NULL),
(114, NULL, 'B303b  ', NULL),
(115, NULL, 'B303c  ', NULL),
(116, NULL, 'B303d  ', NULL),
(117, NULL, 'B304a  ', NULL),
(118, NULL, 'B304b  ', NULL),
(119, NULL, 'B304c  ', NULL),
(120, NULL, 'B304d  ', NULL),
(121, NULL, 'B305a  ', NULL),
(122, NULL, 'B305b  ', NULL),
(123, NULL, 'B305c  ', NULL),
(124, NULL, 'B305d  ', NULL),
(125, NULL, 'B306a  ', NULL),
(126, NULL, 'B306b  ', NULL),
(127, NULL, 'B306c  ', NULL),
(128, NULL, 'B306d  ', NULL),
(129, NULL, 'B307a  ', NULL),
(130, NULL, 'B307b  ', NULL),
(131, NULL, 'B307c  ', NULL),
(132, NULL, 'B307d  ', NULL),
(133, NULL, 'B308a  ', NULL),
(134, NULL, 'B308b  ', NULL),
(135, NULL, 'B308c  ', NULL),
(136, NULL, 'B308d  ', NULL),
(137, NULL, 'B309a  ', NULL),
(138, NULL, 'B309b  ', NULL),
(139, NULL, 'B309c  ', NULL),
(140, NULL, 'B309d  ', NULL),
(141, NULL, 'B310a  ', NULL),
(142, NULL, 'B310b  ', NULL),
(143, NULL, 'B310c  ', NULL),
(144, NULL, 'B310d  ', NULL),
(145, NULL, 'B311a  ', NULL),
(146, NULL, 'B311b  ', NULL),
(147, NULL, 'B311c  ', NULL),
(148, NULL, 'B311d  ', NULL),
(149, NULL, 'B312a  ', NULL),
(150, NULL, 'B312b  ', NULL),
(151, NULL, 'B312c  ', NULL),
(152, NULL, 'B312d  ', NULL),
(153, NULL, 'B313a  ', NULL),
(154, NULL, 'B313b  ', NULL),
(155, NULL, 'B313c  ', NULL),
(156, NULL, 'B313d  ', NULL),
(157, NULL, 'B401a  ', NULL),
(158, NULL, 'B401b  ', NULL),
(159, NULL, 'B401c  ', NULL),
(160, NULL, 'B401d  ', NULL),
(161, NULL, 'B402a  ', NULL),
(162, NULL, 'B402b  ', NULL),
(163, NULL, 'B402c  ', NULL),
(164, NULL, 'B402d  ', NULL),
(165, NULL, 'B403a  ', NULL),
(166, NULL, 'B403b  ', NULL),
(167, NULL, 'B403c  ', NULL),
(168, NULL, 'B403d  ', NULL),
(169, NULL, 'B404a  ', NULL),
(170, NULL, 'B404b  ', NULL),
(171, NULL, 'B404c  ', NULL),
(172, NULL, 'B404d  ', NULL),
(173, NULL, 'B405a  ', NULL),
(174, NULL, 'B405b  ', NULL),
(175, NULL, 'B405c  ', NULL),
(176, NULL, 'B405d  ', NULL),
(177, NULL, 'B406a  ', NULL),
(178, NULL, 'B406b  ', NULL),
(179, NULL, 'B406c  ', NULL),
(180, NULL, 'B406d  ', NULL),
(181, NULL, 'B407a  ', NULL),
(182, NULL, 'B407b  ', NULL),
(183, NULL, 'B407c  ', NULL),
(184, NULL, 'B407d  ', NULL),
(185, NULL, 'B408a  ', NULL),
(186, NULL, 'B408b  ', NULL),
(187, NULL, 'B408c  ', NULL),
(188, NULL, 'B408d  ', NULL),
(189, NULL, 'B409a  ', NULL),
(190, NULL, 'B409b  ', NULL),
(191, NULL, 'B409c  ', NULL),
(192, NULL, 'B409d  ', NULL),
(193, NULL, 'B410a  ', NULL),
(194, NULL, 'B410b  ', NULL),
(195, NULL, 'B410c  ', NULL),
(196, NULL, 'B410d  ', NULL),
(197, NULL, 'B411a  ', NULL),
(198, NULL, 'B411b  ', NULL),
(199, NULL, 'B411c  ', NULL),
(200, NULL, 'B411d  ', NULL),
(201, NULL, 'B412a  ', NULL),
(202, NULL, 'B412b  ', NULL),
(203, NULL, 'B412c  ', NULL),
(204, NULL, 'B412d  ', NULL),
(205, NULL, 'B413a  ', NULL),
(206, NULL, 'B413b  ', NULL),
(207, NULL, 'B413c  ', NULL),
(208, NULL, 'B413d  ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `feespm` int(11) NOT NULL,
  `foodstatus` int(11) NOT NULL,
  `stayfrom` date NOT NULL,
  `duration` int(11) NOT NULL,
  `course` varchar(500) NOT NULL,
  `regno` int(11) NOT NULL,
  `firstName` varchar(500) NOT NULL,
  `middleName` varchar(500) NOT NULL,
  `lastName` varchar(500) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `emailid` varchar(500) NOT NULL,
  `egycontactno` bigint(11) NOT NULL,
  `guardianName` varchar(500) NOT NULL,
  `guardianRelation` varchar(500) NOT NULL,
  `guardianContactno` bigint(11) NOT NULL,
  `corresAddress` varchar(500) NOT NULL,
  `corresCIty` varchar(500) NOT NULL,
  `corresState` varchar(500) NOT NULL,
  `corresPincode` int(11) NOT NULL,
  `pmntAddress` varchar(500) NOT NULL,
  `pmntCity` varchar(500) NOT NULL,
  `pmnatetState` varchar(500) NOT NULL,
  `pmntPincode` int(11) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`) VALUES
(8, 112, 3, 4000, 0, '2016-06-27', 5, 'Bachelor  of Science', 102355, 'Harry', 'projects', 'Singh', 'male', 6786786786, 'Harry@gmail.com', 789632587, 'demo', 'demo', 1234567890, 'New Delhi', 'Delhi', 'Delhi (NCT)', 110001, 'New Delhi', 'Delhi', 'Delhi (NCT)', 110001, '2016-06-26 16:31:08', ''),
(9, 132, 5, 2000, 1, '2016-06-28', 6, 'Bachelor of Engineering', 586952, 'Benjamin', '', 'projects', 'male', 8596185625, 'Benjamin@gmail.com', 8285703354, 'demo', 'demo', 8285703354, 'H no- 18/1 Bihari puram phase-1 melrose bye pass', 'Aligarh', 'EPE', 202001, 'H no- 18/1 Bihari puram phase-1 melrose bye pass', 'Aligarh', 'EPE', 202001, '2016-06-26 16:40:07', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(1, 10, 'test@gmail.com', '', '', '', '2016-06-22 06:16:42'),
(2, 10, 'test@gmail.com', '', '', '', '2016-06-24 11:20:28'),
(4, 10, 'test@gmail.com', 0x3a3a31, '', '', '2016-06-24 11:22:47'),
(5, 10, 'test@gmail.com', 0x3a3a31, '', '', '2016-06-26 15:37:40'),
(6, 20, 'Benjamin@gmail.com', 0x3a3a31, '', '', '2016-06-26 16:40:57'),
(7, 10, 'test@gmail.com', 0x3a3a31, '', '', '2019-02-10 07:43:43'),
(8, 21, 'flga@gmail.com', 0x3a3a31, '', '', '2019-02-10 08:49:33'),
(9, 21, 'flga@gmail.com', 0x3a3a31, '', '', '2019-02-10 08:52:11'),
(10, 21, 'flga@gmail.com', 0x3a3a31, '', '', '2019-02-10 08:54:58'),
(11, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-06-01 13:18:45'),
(12, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-06-01 13:52:13'),
(13, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-06-01 14:06:04'),
(14, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-06-01 22:30:38'),
(15, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-06-01 22:39:10'),
(16, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-06-01 23:01:53'),
(17, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-06-02 16:08:26'),
(18, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-06-04 04:08:50'),
(19, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-06-04 05:03:04'),
(20, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-06-16 22:13:56'),
(21, 10, 'test@gmail.com', 0x3a3a31, '', '', '2022-06-17 01:26:58'),
(22, 20, 'Benjamin@gmail.com', 0x3a3a31, '', '', '2022-06-17 01:40:04'),
(23, 20, 'Benjamin@gmail.com', 0x3a3a31, '', '', '2022-06-19 07:04:08'),
(24, 22, 'king@gmail.com', 0x3a3a31, '', '', '2022-06-19 07:09:18'),
(25, 20, 'Benjamin@gmail.com', 0x3a3a31, '', '', '2022-06-20 13:14:25'),
(26, 22, 'king@gmail.com', 0x3a3a31, '', '', '2022-06-20 13:59:51'),
(27, 23, 'Benjamin@gmail.com', 0x3a3a31, '', '', '2022-06-20 14:01:58'),
(28, 24, 'Olushola@gmail.com', 0x3a3a31, '', '', '2022-06-20 14:03:54'),
(29, 25, 'lola@gmail.com', 0x3a3a31, '', '', '2022-06-20 14:05:27'),
(30, 26, 'Michael@gmail.com', 0x3a3a31, '', '', '2022-06-20 14:08:44'),
(31, 27, 'Bube@gmail.com', 0x3a3a31, '', '', '2022-06-20 14:10:03');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contactNo` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(45) NOT NULL,
  `passUdateDate` varchar(45) NOT NULL,
  `room_no` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`, `room_no`) VALUES
(23, '21010501087', 'Benjamin', 'Ayo', 'Daniels', 'male', 8203232322, 'Benjamin@gmail.com', '8596185625', '2022-06-20 14:01:51', '', '', 'A101a  '),
(24, '3213312q31', 'Olushola', 'Akaaya', 'Ekinge', 'male', 2342431232, 'Olushola@gmail.com', 'king', '2022-06-20 14:03:25', '', '', 'A101a  '),
(25, '23421323', 'lola', 'heyp', 'adsdsd', 'male', 8203232322, 'lola@gmail.com', 'lola', '2022-06-20 14:05:17', '', '', 'A101a  '),
(26, '23434567890', 'Michael', 'Porn', 'Longgg', 'male', 20010301066, 'Michael@gmail.com', 'long', '2022-06-20 14:08:32', '', '', 'A101a  '),
(27, '987654321', 'Ebube', 'Mirande', 'Okike', 'male', 2637283922, 'Bube@gmail.com', 'bube', '2022-06-20 14:09:54', '', '', 'A101a  ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostels`
--
ALTER TABLE `hostels`
  ADD PRIMARY KEY (`H_id`);

--
-- Indexes for table `ndha_room_count`
--
ALTER TABLE `ndha_room_count`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_daniel_hall_a`
--
ALTER TABLE `new_daniel_hall_a`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_daniel_hall_b`
--
ALTER TABLE `new_daniel_hall_b`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
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
-- AUTO_INCREMENT for table `hostels`
--
ALTER TABLE `hostels`
  MODIFY `H_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `new_daniel_hall_a`
--
ALTER TABLE `new_daniel_hall_a`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `new_daniel_hall_b`
--
ALTER TABLE `new_daniel_hall_b`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
