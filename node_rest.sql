-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2019 at 06:05 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `node_rest`
--
CREATE DATABASE IF NOT EXISTS `node_rest` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `node_rest`;

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
CREATE TABLE `friends` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `friends`
--

TRUNCATE TABLE `friends`;
--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `user_id`, `friend_id`, `time`, `status`) VALUES
(1, 12, 37, '2019-05-06 19:09:03', 1),
(2, 1, 10, '2019-05-06 19:11:22', 0),
(3, 1, 12, '2019-05-06 19:11:44', 0),
(4, 1, 28, '2019-05-06 19:12:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `users`
--

TRUNCATE TABLE `users`;
--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `avatar`) VALUES
(1, 'Brynn', 'Le', 'https://i.pravatar.cc/50'),
(2, 'Magee', 'Hughes', 'https://i.pravatar.cc/50'),
(3, 'Kaye', 'Sutton', 'https://i.pravatar.cc/50'),
(4, 'Grant', 'Dickerson', 'https://i.pravatar.cc/50'),
(5, 'Reuben', 'Pickett', 'https://i.pravatar.cc/50'),
(6, 'Phelan', 'Dejesus', 'https://i.pravatar.cc/50'),
(7, 'Moses', 'Ellis', 'https://i.pravatar.cc/50'),
(8, 'Ivor', 'Chapman', 'https://i.pravatar.cc/50'),
(9, 'Sheila', 'Cortez', 'https://i.pravatar.cc/50'),
(10, 'Cassidy', 'Gregory', 'https://i.pravatar.cc/50'),
(11, 'Ronan', 'Barnett', 'https://i.pravatar.cc/50'),
(12, 'Erich', 'Cantu', 'https://i.pravatar.cc/50'),
(13, 'Hunter', 'Horn', 'https://i.pravatar.cc/50'),
(14, 'Jocelyn', 'Randall', 'https://i.pravatar.cc/50'),
(15, 'Harriet', 'Moody', 'https://i.pravatar.cc/50'),
(16, 'Libby', 'Vega', 'https://i.pravatar.cc/50'),
(17, 'Francis', 'Riggs', 'https://i.pravatar.cc/50'),
(18, 'Kaden', 'Walter', 'https://i.pravatar.cc/50'),
(19, 'Leandra', 'Miles', 'https://i.pravatar.cc/50'),
(20, 'Erich', 'Martinez', 'https://i.pravatar.cc/50'),
(21, 'Tad', 'Stephens', 'https://i.pravatar.cc/50'),
(22, 'Illana', 'Sykes', 'https://i.pravatar.cc/50'),
(23, 'Dustin', 'Cole', 'https://i.pravatar.cc/50'),
(24, 'Kennan', 'Roberts', 'https://i.pravatar.cc/50'),
(25, 'Scarlet', 'Mcdonald', 'https://i.pravatar.cc/50'),
(26, 'Raymond', 'Boyle', 'https://i.pravatar.cc/50'),
(27, 'Fatima', 'Herman', 'https://i.pravatar.cc/50'),
(28, 'August', 'Knox', 'https://i.pravatar.cc/50'),
(29, 'Tasha', 'Davenport', 'https://i.pravatar.cc/50'),
(30, 'Vivien', 'Fields', 'https://i.pravatar.cc/50'),
(31, 'Tiger', 'Whitaker', 'https://i.pravatar.cc/50'),
(32, 'Vivien', 'Langley', 'https://i.pravatar.cc/50'),
(33, 'Clementine', 'Wilkinson', 'https://i.pravatar.cc/50'),
(34, 'Tucker', 'Cantrell', 'https://i.pravatar.cc/50'),
(35, 'William', 'Ware', 'https://i.pravatar.cc/50'),
(36, 'Mary', 'Pollard', 'https://i.pravatar.cc/50'),
(37, 'Colt', 'Norman', 'https://i.pravatar.cc/50'),
(38, 'Jeanette', 'Whitney', 'https://i.pravatar.cc/50'),
(39, 'Timothy', 'Tillman', 'https://i.pravatar.cc/50'),
(40, 'Emma', 'Bean', 'https://i.pravatar.cc/50'),
(41, 'Megan', 'Thompson', 'https://i.pravatar.cc/50'),
(42, 'Tad', 'Leonard', 'https://i.pravatar.cc/50'),
(43, 'Russell', 'Jones', 'https://i.pravatar.cc/50'),
(44, 'Herrod', 'Sanders', 'https://i.pravatar.cc/50'),
(45, 'Hadassah', 'Buckley', 'https://i.pravatar.cc/50'),
(46, 'Lev', 'Good', 'https://i.pravatar.cc/50'),
(47, 'Jasmine', 'Abbott', 'https://i.pravatar.cc/50'),
(48, 'Yael', 'Haney', 'https://i.pravatar.cc/50'),
(49, 'Zenia', 'Hatfield', 'https://i.pravatar.cc/50'),
(50, 'Quin', 'Hess', 'https://i.pravatar.cc/50'),
(51, 'Karen', 'Mathews', 'https://i.pravatar.cc/50'),
(52, 'Catherine', 'Dillard', 'https://i.pravatar.cc/50'),
(53, 'Gage', 'Clemons', 'https://i.pravatar.cc/50'),
(54, 'Kiona', 'Buck', 'https://i.pravatar.cc/50'),
(55, 'Mikayla', 'Gross', 'https://i.pravatar.cc/50'),
(56, 'Isadora', 'Jarvis', 'https://i.pravatar.cc/50'),
(57, 'Ima', 'Prince', 'https://i.pravatar.cc/50'),
(58, 'Jeremy', 'Levy', 'https://i.pravatar.cc/50'),
(59, 'Jayme', 'Saunders', 'https://i.pravatar.cc/50'),
(60, 'Aquila', 'Olson', 'https://i.pravatar.cc/50'),
(61, 'Eleanor', 'Hawkins', 'https://i.pravatar.cc/50'),
(62, 'Bertha', 'Hull', 'https://i.pravatar.cc/50'),
(63, 'Judith', 'Lawson', 'https://i.pravatar.cc/50'),
(64, 'Connor', 'Blevins', 'https://i.pravatar.cc/50'),
(65, 'Carl', 'Lewis', 'https://i.pravatar.cc/50'),
(66, 'Urielle', 'Weiss', 'https://i.pravatar.cc/50'),
(67, 'Ebony', 'Anderson', 'https://i.pravatar.cc/50'),
(68, 'McKenzie', 'Gilmore', 'https://i.pravatar.cc/50'),
(69, 'Reuben', 'Valdez', 'https://i.pravatar.cc/50'),
(70, 'Hamilton', 'Garcia', 'https://i.pravatar.cc/50'),
(71, 'Gray', 'Rutledge', 'https://i.pravatar.cc/50'),
(72, 'Jerry', 'Hoffman', 'https://i.pravatar.cc/50'),
(73, 'Kalia', 'Keith', 'https://i.pravatar.cc/50'),
(74, 'Zahir', 'Mcfarland', 'https://i.pravatar.cc/50'),
(75, 'Catherine', 'Tanner', 'https://i.pravatar.cc/50'),
(76, 'Ainsley', 'Payne', 'https://i.pravatar.cc/50'),
(77, 'Amethyst', 'Richard', 'https://i.pravatar.cc/50'),
(78, 'Burke', 'Horton', 'https://i.pravatar.cc/50'),
(79, 'John', 'Horne', 'https://i.pravatar.cc/50'),
(80, 'Ciaran', 'Crawford', 'https://i.pravatar.cc/50'),
(81, 'Lacy', 'Coleman', 'https://i.pravatar.cc/50'),
(82, 'Dylan', 'Brady', 'https://i.pravatar.cc/50'),
(83, 'Ariana', 'Porter', 'https://i.pravatar.cc/50'),
(84, 'Griffith', 'Bond', 'https://i.pravatar.cc/50'),
(85, 'Anastasia', 'Hatfield', 'https://i.pravatar.cc/50'),
(86, 'Scarlet', 'Goodwin', 'https://i.pravatar.cc/50'),
(87, 'Lars', 'Berger', 'https://i.pravatar.cc/50'),
(88, 'Gemma', 'Maddox', 'https://i.pravatar.cc/50'),
(89, 'Evangeline', 'Guy', 'https://i.pravatar.cc/50'),
(90, 'Savannah', 'Wells', 'https://i.pravatar.cc/50'),
(91, 'Akeem', 'Bradshaw', 'https://i.pravatar.cc/50'),
(92, 'Joelle', 'Hooper', 'https://i.pravatar.cc/50'),
(93, 'Alvin', 'Lang', 'https://i.pravatar.cc/50'),
(94, 'Orlando', 'Kidd', 'https://i.pravatar.cc/50'),
(95, 'Igor', 'Shepard', 'https://i.pravatar.cc/50'),
(96, 'Kyle', 'Hartman', 'https://i.pravatar.cc/50'),
(97, 'Felix', 'Reed', 'https://i.pravatar.cc/50'),
(98, 'Rae', 'Marks', 'https://i.pravatar.cc/50'),
(99, 'Quyn', 'Allison', 'https://i.pravatar.cc/50'),
(100, 'Omar', 'Dotson', 'https://i.pravatar.cc/50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_friend_indx` (`user_id`,`friend_id`) USING BTREE,
  ADD KEY `user_id_indx` (`user_id`),
  ADD KEY `friend_id_fk` (`friend_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `friends`
--
ALTER TABLE `friends`
  ADD CONSTRAINT `friend_id_fk` FOREIGN KEY (`friend_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
