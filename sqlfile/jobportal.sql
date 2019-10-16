-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2019 at 08:55 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE `employer` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `logo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employer`
--

INSERT INTO `employer` (`id`, `name`, `email`, `password`, `logo`) VALUES
(3, 'shirisha', 'shirisharao2015@gmail.com', '1234', 'pp.jpg'),
(4, 'Wipro Technologies ', 'admin@wipro.com', '1234', ''),
(9, 'Mahindra & Mahindra', 'admin@mahindra.com', '1234', ''),
(10, 'Mahindra', 'admin@mahindra.com', '1234', ''),
(11, 'Ins It Services', 'admin@ins.com', '1234', ''),
(14, 'infosys', 'admin@infosys.com', '1234', ''),
(15, 'Paladion Networks', 'admin@paladion.com', '1234', 'AudenbergBanne.jpg'),
(16, 'Accenture', 'admin@accenture.com', '1234', '1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `jobsapplied`
--

CREATE TABLE `jobsapplied` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `pid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `status` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobsapplied`
--

INSERT INTO `jobsapplied` (`id`, `date`, `pid`, `sid`, `status`) VALUES
(15, '2018-10-05', 4, 2, 'Accepted'),
(16, '2018-10-05', 5, 2, 'Rejected'),
(17, '2018-10-05', 6, 2, 'Rejected'),
(18, '2018-10-05', 4, 3, 'sent'),
(19, '2018-10-05', 8, 4, 'Accepted');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `eid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `category` varchar(500) NOT NULL,
  `minexp` varchar(100) NOT NULL,
  `desc` varchar(5000) NOT NULL,
  `salary` varchar(200) NOT NULL,
  `industry` varchar(500) NOT NULL,
  `role` varchar(500) NOT NULL,
  `employmentType` varchar(500) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `date`, `eid`, `name`, `category`, `minexp`, `desc`, `salary`, `industry`, `role`, `employmentType`, `status`) VALUES
(4, '2019-08-29 18:30:00', 3, 'Software Engineer', 'Accounting Jobs', '5', 'Software engineer with java skills', '500000-700000', 'Accounting , Finance', 'Software Engineer', 'Permanent', 'open'),
(5, '2018-10-03 18:30:00', 3, 'Network engineer', 'IT Jobs', '2', 'Engineer having skills of configuring routers and switches', '300000-400000', 'IT-Hardware & Networking', 'L1 engineer', 'Permanent', 'open'),
(6, '2018-10-04 18:30:00', 14, 'Team Lead', 'IT Jobs', '8', 'Lead a team of 10 developers', '1000000-1500000', 'IT-Software , Software Services', 'Team Lead', 'Permanent', 'open'),
(8, '2018-10-04 18:30:00', 16, 'Accounts manager', 'Accounting Jobs', '6', 'Manage a team of 10 employees', '700000-800000', 'Accounting , Finance', 'Account Manager', 'Permanent', 'open'),
(9, '2019-08-30 18:30:00', 3, 'php developer', 'IT Jobs', '1-2', 'knowledge of PHP and with MYSQL is mandatory for the candidates to apply.', '500000', 'IT-Software , Software Services', 'software developer', 'Part-Time', 'open'),
(10, '2019-08-30 18:30:00', 3, 'JAVA developer', 'IT Jobs', '1-2', 'knlowledge of JAVA is mandatory for the candidates to apply.', '300000-400000', 'IT-Software , Software Services', 'software developer', 'Permanent', 'open'),
(11, '2019-08-30 18:30:00', 3, 'Accounts Executive', 'Accounting Jobs', '1-6', 'gst, tally, Accountant, Accounts executive, TDS, Service tax, BRS, Bank Reconciliation Statement, General Ledger, Accounts Receivable, Accounts Payable, Accountant, Account assistant, Senior accountant', '300000', 'Accounting , Finance', 'Event Management', 'Permanent', 'open'),
(12, '2019-08-30 18:30:00', 3, 'Hotel cooking', 'Hotel Jobs', '9', 'Greets and seats guests, presents menus to guests, informs them of special catch and soups..\r\nâ€¢ Takes names on a waiting list.\r\nâ€¢ Runs the floor plan board.\r\nâ€¢ Observes tables and keeps track of clean, dirty and occupied tables..\r\nâ€¢ Cleans, organizes and stocks menus at host area..\r\nâ€¢ Fills to-go orders, if applicable.\r\nâ€¢ Maintains restrooms throughout shift.\r\nâ€¢ Sweeps foyer and front entrance area frequently.\r\nâ€¢ Performs other duties as directed.\r\n', '600000', 'Food Processing', ' cooking', 'Permanent', 'open'),
(13, '2019-09-13 18:30:00', 3, 'oracle', 'IT Jobs', '1-2', 'programmer', '1200000', 'IT-Software , Software Services', 'codding', 'Permanent', 'open');

-- --------------------------------------------------------

--
-- Table structure for table `seeker`
--

CREATE TABLE `seeker` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `qualification` varchar(500) NOT NULL,
  `dob` date NOT NULL,
  `skills` varchar(2000) NOT NULL,
  `resume` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seeker`
--

INSERT INTO `seeker` (`id`, `name`, `email`, `password`, `qualification`, `dob`, `skills`, `resume`) VALUES
(2, 'shirisha', 'shirisharao1999@gmail.com', '1234', 'BCA', '1999-08-07', 'java bootstrap', ''),
(3, 'prabha', 'prabhagowda@gmali.com', '1234', 'Mtech', '1999-01-01', 'Java, Bootstrap, PHP', 'DOC-20171020-WA0005.pdf'),
(4, 'harshitha', 'harshithag@gmail.com', '1234', 'MBA', '1999-12-01', 'Accounts, GST, MBA', 'balanceSheetTest.pdf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobsapplied`
--
ALTER TABLE `jobsapplied`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobapplied_seekerFK` (`sid`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `employer_postFK` (`eid`);

--
-- Indexes for table `seeker`
--
ALTER TABLE `seeker`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employer`
--
ALTER TABLE `employer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `jobsapplied`
--
ALTER TABLE `jobsapplied`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `seeker`
--
ALTER TABLE `seeker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jobsapplied`
--
ALTER TABLE `jobsapplied`
  ADD CONSTRAINT `jobapplied_seekerFK` FOREIGN KEY (`sid`) REFERENCES `seeker` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `employer_postFK` FOREIGN KEY (`eid`) REFERENCES `employer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
