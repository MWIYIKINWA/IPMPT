-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 18, 2022 at 03:10 PM
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
-- Database: `file_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `admin_user` text NOT NULL,
  `admin_password` text NOT NULL,
  `admin_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `name`, `admin_user`, `admin_password`, `admin_status`) VALUES
(13, 'CampCodes', 'admin@campcodes.com', '$2y$12$yjn.g4FtUoXrOqqNMka/Mu/4tq7Brp7Q.aAILGCrjpw.iHKas/uC.', ''),
(14, 'Kaseeta C', 'mujjuzi2030@gmail.com', '$2y$12$w5GCvoL8gCc9/EVlpC8CbO6ifh7oWQzO2fmAjzqswKxLgznCaIhlG', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `history_log`
--

CREATE TABLE `history_log` (
  `log_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `email_address` text NOT NULL,
  `action` varchar(100) NOT NULL,
  `actions` varchar(200) NOT NULL DEFAULT 'Has LoggedOut the system at',
  `ip` text NOT NULL,
  `host` text NOT NULL,
  `login_time` varchar(200) NOT NULL DEFAULT current_timestamp(),
  `logout_time` varchar(200) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_log`
--

INSERT INTO `history_log` (`log_id`, `id`, `email_address`, `action`, `actions`, `ip`, `host`, `login_time`, `logout_time`) VALUES
(1, 1, 'nario@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'buhayko-PC', 'May-29-2019 02:36 PM', 'May-30-2019 04:33 PM'),
(2, 1, 'nario@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'buhayko-PC', 'May-30-2019 04:30 PM', 'May-30-2019 04:33 PM'),
(3, 3, 'mayanjaadrian242@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '127.0.0.1', 'localhost', 'Jul-18-2022 04:50 PM', 'Jul-18-2022 05:28 PM'),
(4, 4, 'kaseetac@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '127.0.0.1', 'localhost', 'Jul-18-2022 05:00 PM', 'Jul-18-2022 05:27 PM'),
(5, 4, 'kaseetac@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '127.0.0.1', 'localhost', 'Jul-18-2022 05:21 PM', 'Jul-18-2022 05:27 PM'),
(6, 4, 'kaseetac@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '127.0.0.1', 'localhost', 'Jul-18-2022 05:27 PM', 'Jul-18-2022 05:27 PM'),
(7, 3, 'mayanjaadrian242@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '127.0.0.1', 'localhost', 'Jul-18-2022 05:28 PM', 'Jul-18-2022 05:28 PM'),
(8, 3, 'mayanjaadrian242@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '127.0.0.1', 'localhost', 'Jul-18-2022 06:30 PM', '2022-07-18 13:30:55');

-- --------------------------------------------------------

--
-- Table structure for table `history_log1`
--

CREATE TABLE `history_log1` (
  `log_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `admin_user` text NOT NULL,
  `action` varchar(100) NOT NULL,
  `actions` varchar(200) NOT NULL DEFAULT 'Has LoggedOut the system at',
  `ip` text NOT NULL,
  `host` text NOT NULL,
  `login_time` varchar(200) NOT NULL DEFAULT current_timestamp(),
  `logout_time` varchar(200) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_log1`
--

INSERT INTO `history_log1` (`log_id`, `id`, `admin_user`, `action`, `actions`, `ip`, `host`, `login_time`, `logout_time`) VALUES
(1, 11, 'richard@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'buhayko-PC', 'May-29-2019 02:34 PM', 'May-29-2019 02:35 PM'),
(2, 12, 'joneltoledo@yahoo.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'buhayko-PC', 'May-29-2019 02:35 PM', 'Mar-27-2021 10:59 PM'),
(3, 12, 'joneltoledo@yahoo.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'buhayko-PC', 'May-29-2019 02:37 PM', 'Mar-27-2021 10:59 PM'),
(4, 12, 'joneltoledo@yahoo.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '::1', 'buhayko-PC', 'May-30-2019 04:33 PM', 'Mar-27-2021 10:59 PM'),
(5, 12, 'joneltoledo@yahoo.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '127.0.0.1', 'keystone.mwbsys.com', 'Mar-27-2021 10:56 PM', 'Mar-27-2021 10:59 PM'),
(6, 13, 'admin@campcodes.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '127.0.0.1', 'keystone.mwbsys.com', 'Mar-27-2021 10:59 PM', 'Jul-18-2022 06:26 PM'),
(7, 13, 'admin@campcodes.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '127.0.0.1', 'localhost', 'Jul-18-2022 03:49 PM', 'Jul-18-2022 06:26 PM'),
(8, 13, 'admin@campcodes.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '127.0.0.1', 'localhost', 'Jul-18-2022 05:36 PM', 'Jul-18-2022 06:26 PM'),
(9, 13, 'admin@campcodes.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '127.0.0.1', 'localhost', 'Jul-18-2022 05:37 PM', 'Jul-18-2022 06:26 PM'),
(10, 13, 'admin@campcodes.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '127.0.0.1', 'localhost', 'Jul-18-2022 05:37 PM', 'Jul-18-2022 06:26 PM'),
(11, 13, 'admin@campcodes.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '127.0.0.1', 'localhost', 'Jul-18-2022 05:51 PM', 'Jul-18-2022 06:26 PM'),
(12, 14, 'mujjuzi2030@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '127.0.0.1', 'localhost', 'Jul-18-2022 06:27 PM', 'Jul-18-2022 06:27 PM'),
(13, 14, 'mujjuzi2030@gmail.com', 'Has LoggedIn the system at', 'Has LoggedOut the system at', '127.0.0.1', 'localhost', 'Jul-18-2022 06:28 PM', '2022-07-18 13:28:05');

-- --------------------------------------------------------

--
-- Table structure for table `login_user`
--

CREATE TABLE `login_user` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email_address` text NOT NULL,
  `user_password` text NOT NULL,
  `user_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_user`
--

INSERT INTO `login_user` (`id`, `name`, `email_address`, `user_password`, `user_status`) VALUES
(3, 'Mayanja Adrian', 'mayanjaadrian242@gmail.com', '$2y$12$cJ/oTL4PVGoNuaNtW67tMe4taVuARevMQVfMnKW17tWB.9Ustubw2', ''),
(4, 'Kaseeta C', 'kaseetac@gmail.com', '$2y$12$9lQ3Pm3nALE47JtH/cj/pOY/flkyXfL7ByjazncYzsNKJwI01RTzO', '');

-- --------------------------------------------------------

--
-- Table structure for table `upload_files`
--

CREATE TABLE `upload_files` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `SIZE` varchar(200) NOT NULL,
  `DOWNLOAD` varchar(200) NOT NULL,
  `TIMERS` varchar(200) NOT NULL,
  `ADMIN_STATUS` varchar(300) NOT NULL,
  `EMAIL` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload_files`
--

INSERT INTO `upload_files` (`ID`, `NAME`, `SIZE`, `DOWNLOAD`, `TIMERS`, `ADMIN_STATUS`, `EMAIL`) VALUES
(1, 'ajax_tutorial.pdf', '618379', '0', 'May-29-2019 02:36 PM', 'Employee', 'Email Luis Nario'),
(2, 'css_tutorial.pdf', '910221', '1', 'May-29-2019 02:36 PM', 'Employee', 'Email Luis Nario'),
(3, 'MAYANJA ADRIAN 18-U-21096-PS 1800721096.pdf', '186000', '1', 'Jul-18-2022 06:30 PM', 'Admin', 'Kaseeta C');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_log`
--
ALTER TABLE `history_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `history_log1`
--
ALTER TABLE `history_log1`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `login_user`
--
ALTER TABLE `login_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_files`
--
ALTER TABLE `upload_files`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `history_log`
--
ALTER TABLE `history_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `history_log1`
--
ALTER TABLE `history_log1`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `login_user`
--
ALTER TABLE `login_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `upload_files`
--
ALTER TABLE `upload_files`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
