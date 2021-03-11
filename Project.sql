-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 09, 2020 at 09:34 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Project`
--

-- --------------------------------------------------------

--
-- Table structure for table `App`
--

CREATE TABLE `App` (
  `AppID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Description` text NOT NULL,
  `MonthlyCost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `App`
--

INSERT INTO `App` (`AppID`, `Name`, `Description`, `MonthlyCost`) VALUES
(1, 'Netflix', 'Streaming service featuring shows, movies, and documentaries', 10),
(2, 'Hulu', 'Streaming service featuring shows, movies, and documentaries', 12),
(3, 'HBO', 'Streaming service featuring shows, movies, and documentaries', 13),
(4, 'ESPN+', 'Streaming service featuring sports', 11),
(5, 'Showtime', 'Streaming service featuring shows, movies, and documentaries', 10),
(6, 'YoutubeTV', 'Streaming service featuring shows, movies, and documentaries', 12),
(7, 'Amazon Prime Video', 'Streaming service featuring shows, movies, and documentaries', 11),
(8, 'Peacock', 'Streaming service featuring shows, movies, and documentaries', 12),
(9, 'Disney+', 'Streaming service featuring shows, movies, and documentaries', 11),
(10, 'HBO Max', 'Streaming service featuring shows, movies, and documentaries', 12);

-- --------------------------------------------------------

--
-- Table structure for table `AppPlatform`
--

CREATE TABLE `AppPlatform` (
  `AppID` int(11) NOT NULL,
  `PlatformID` int(11) NOT NULL,
  `VersionNum` float NOT NULL,
  `Rating` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `AppPlatform`
--

INSERT INTO `AppPlatform` (`AppID`, `PlatformID`, `VersionNum`, `Rating`) VALUES
(1, 1, 3.7, 4.1),
(1, 2, 1.2, 4.3),
(1, 3, 6, 3.6),
(1, 4, 2.8, 2.1),
(2, 2, 7.9, 2.8),
(2, 3, 2.3, 4.7),
(2, 5, 5.8, 3.6),
(3, 6, 10.1, 2.9),
(4, 7, 1.8, 3.3),
(5, 8, 6.3, 3.5),
(6, 9, 3.9, 4.4),
(7, 10, 9.1, 4.6),
(8, 8, 10.7, 4.8),
(9, 9, 0.5, 3.2),
(10, 10, 4.8, 4);

-- --------------------------------------------------------

--
-- Table structure for table `MyListShow`
--

CREATE TABLE `MyListShow` (
  `UserID` int(11) NOT NULL,
  `ShowID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `MyListShow`
--

INSERT INTO `MyListShow` (`UserID`, `ShowID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(3, 6),
(4, 7),
(10, 1),
(10, 16),
(13, 3),
(13, 8),
(14, 2),
(14, 9),
(15, 3);

-- --------------------------------------------------------

--
-- Table structure for table `MyListVideo`
--

CREATE TABLE `MyListVideo` (
  `UserID` int(11) NOT NULL,
  `VideoID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `MyListVideo`
--

INSERT INTO `MyListVideo` (`UserID`, `VideoID`) VALUES
(1, 3),
(1, 5),
(1, 10),
(5, 7),
(5, 8),
(5, 9),
(6, 1),
(7, 7),
(8, 13),
(9, 10);

-- --------------------------------------------------------

--
-- Table structure for table `Platform`
--

CREATE TABLE `Platform` (
  `PlatformID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Mobile` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Platform`
--

INSERT INTO `Platform` (`PlatformID`, `Name`, `Mobile`) VALUES
(1, 'Roku', 0),
(2, 'IOS', 1),
(3, 'Android', 1),
(4, 'PS4', 0),
(5, 'Xbox', 0),
(6, 'AppleTV', 0),
(7, 'SamsungTV', 0),
(8, 'Linux', 0),
(9, 'Windows', 0),
(10, 'MacOS', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Seasons`
--

CREATE TABLE `Seasons` (
  `SeasonID` int(11) NOT NULL,
  `ShowID` int(50) NOT NULL,
  `VideoID` int(50) NOT NULL,
  `SeasonNum` int(50) NOT NULL,
  `EpisodeNum` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Seasons`
--

INSERT INTO `Seasons` (`SeasonID`, `ShowID`, `VideoID`, `SeasonNum`, `EpisodeNum`) VALUES
(1, 14, 2, 1, 1),
(2, 14, 4, 1, 2),
(3, 14, 5, 1, 3),
(4, 14, 6, 1, 4),
(5, 14, 7, 1, 5),
(6, 14, 8, 1, 6),
(7, 14, 9, 1, 7),
(8, 1, 10, 1, 1),
(9, 11, 11, 3, 1),
(10, 12, 12, 1, 3),
(11, 13, 13, 2, 5),
(12, 2, 29, 0, 1),
(40, 14, 40, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `Shows`
--

CREATE TABLE `Shows` (
  `ShowID` int(11) NOT NULL,
  `Title` text NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Shows`
--

INSERT INTO `Shows` (`ShowID`, `Title`, `Description`) VALUES
(1, 'Breaking Bad', 'teacher turned meth cook'),
(2, 'Stranger Things', 'supernatural forces'),
(3, 'Prison Break', 'escaping prison'),
(4, 'Black Mirror', 'trippy'),
(5, 'Spongebob', 'yellow sponge'),
(6, 'Death Note', 'a death note'),
(7, 'Dexter', 'serial killer'),
(8, 'Sherlock', 'crime solving'),
(9, 'Narcos', 'drug dealing'),
(10, 'Seinfeld', 'a sitcom'),
(11, 'Criminal Minds', 'a crime show'),
(12, 'Masterchef', 'cooking competition show'),
(13, 'X-files', 'science-fiction'),
(14, 'Brooklyn Nine-Nine', 'Cops Show'),
(15, 'Rick And Morty', 'Science'),
(16, 'Parks and Rec', 'Comedy');

-- --------------------------------------------------------

--
-- Table structure for table `Subscription`
--

CREATE TABLE `Subscription` (
  `UserID` int(100) NOT NULL,
  `Cost` float NOT NULL,
  `ExpDate` date NOT NULL,
  `AppID` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Subscription`
--

INSERT INTO `Subscription` (`UserID`, `Cost`, `ExpDate`, `AppID`) VALUES
(1, 10, '0000-00-00', 1),
(1, 45, '2020-12-20', 6),
(1, 9.99, '0000-00-00', 7),
(2, 10, '0000-00-00', 1),
(2, 4.99, '0000-00-00', 5),
(2, 45, '2021-03-01', 6),
(3, 25, '2020-12-20', 1),
(3, 7.99, '0000-00-00', 2),
(3, 50, '2021-02-01', 3),
(3, 45, '2020-12-20', 6),
(4, 25, '2020-12-20', 1),
(4, 50, '2020-12-20', 2),
(4, 50, '2021-09-01', 3),
(4, 4.99, '0000-00-00', 5),
(4, 45, '2021-06-01', 6),
(5, 100, '2021-04-01', 1),
(5, 100, '2021-06-01', 2),
(5, 45, '2021-04-01', 6),
(5, 6.01, '0000-00-00', 10),
(6, 25, '2020-12-20', 1),
(6, 50, '2021-07-01', 3),
(6, 45, '2020-12-20', 4),
(6, 85, '2020-12-20', 5),
(6, 45, '2020-12-20', 6),
(6, 45, '2021-03-01', 8),
(6, 45, '2021-02-28', 9),
(6, 45, '2021-01-30', 10),
(7, 100, '2021-06-01', 2),
(7, 1.99, '0000-00-00', 3),
(7, 50, '2021-05-01', 7),
(8, 45, '2021-08-01', 5),
(8, 3.98, '0000-00-00', 9),
(9, 45, '0000-00-00', 4),
(9, 9.99, '0000-00-00', 7),
(10, 10, '0000-00-00', 6),
(13, 30, '2021-03-09', 5),
(13, 48, '2021-04-09', 8),
(14, 30, '2021-03-09', 1),
(14, 72, '2021-06-09', 2),
(14, 30, '2021-03-09', 5),
(14, 44, '2021-04-09', 7),
(14, 24, '2021-02-09', 10),
(15, 30, '2021-03-09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Tag`
--

CREATE TABLE `Tag` (
  `VideoID` int(50) NOT NULL,
  `Tag` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Tag`
--

INSERT INTO `Tag` (`VideoID`, `Tag`) VALUES
(1, 'Korean'),
(1, 'Music'),
(2, 'Cops'),
(2, 'Easy to Watch'),
(2, 'Shows'),
(3, 'Science'),
(3, 'Shows'),
(4, 'Cops'),
(5, 'Crime'),
(6, 'Crime');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `UserID` int(11) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Country` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`UserID`, `FirstName`, `LastName`, `Country`, `Email`, `Password`) VALUES
(1, 'John', 'Smith', 'United States', 'jsmith@gmail.com', '$2a$09$PnaZ/0eROAhfmpqNyMd2s.2nKcwnzgn/9PzjF9SN8u5uCsRu/jD5.'),
(2, 'Michael', 'Jordan', 'United States', 'mjordan@gmail.com', '$2a$09$b81Fh07XNWJky/3ALTqhReQWziSXZ1vBX74iZVWSrCDPjnVOGANg.'),
(3, 'Albert', 'Einstein', 'Germany', 'aeinstein@gmail.com', '$2a$09$Lgl5CMTdO.4Ceg3jTAEZjuXhhJJQsDBWKHW2aWe5J1gWDKawVv1zS'),
(4, 'Muhammad', 'Ali', 'United States', 'mali@gmail.com', '$2a$09$wvc8yrRmPQqxTuUsQPc.Hu9uTDjAEF2v98BKWmI7rvBJdEDVZI4yG'),
(5, 'Elon', 'Musk', 'South Africa', 'emusk@gmail.com', '$2a$09$yF1xaBZAZ9k2RKP0TaGLduz6fr6HH0OyE1vUqr2o.gYEyC9YeOzFC'),
(6, 'Tiger', 'Woods', 'United States', 'twoods@gmail.com', '$2a$09$/f9gwsWHHphC5tmwMx9LpOuYvBbpD3U2rzreniXe8U04kHeixMU0y'),
(7, 'Vladimir', 'Putin', 'Russia', 'putin@gmail.com', '$2a$09$yB.8inKlwjTLawc8CbV5FO9P2udTifGICsMywuHX9dJ4uboCi4.ru'),
(8, 'John', 'Kennedy', 'United States', 'jfk@gmail.com', '$2a$09$S.NTyzFbCNsrMHKd1//n2ehqiis8Oo8Ora4hsXo6OPcusTuFeT52G'),
(9, 'Wayne', 'Gretzky', 'Canada', 'wgretzky@gmail.com', '$2a$09$dvTUrflmtKBE16u0XdTc/.BX/oS3mIl64JG8i7e3tWBgIrQWsa90y'),
(10, 'Alexander', 'Thegreat', 'Macedonia', 'athegreat@gmail.com', '$2a$09$wWsslnk1tiyiYsWTY2zqYu40SFoc90wbhSnPRfdVU9DtFAznLA1OO'),
(12, 'Tom', 'Brady', 'United States', 'b@gmail.com', '$2a$09$FlrQ6WoeMNWqpOi8.WYr6OUIJaZQfW8uKnPpOy6Tlkk2eeLnQRUaC'),
(13, 'Mike ', 'Tyson', 'United States', 'mtyson@gmail.com', '$2a$09$vTYJ6wsv7MZIOx/pC4xYwuNWhaZtFBI/O0eN50hC2IkxPK5AlT.Ne'),
(14, 'John', 'Cena', 'United States', 'cena@gmail.com', '$2a$09$DSRm6VkPklysK3QNgHaYp.zuQ46NAVdNBWReEbtdjNvk.vMfhpfRq'),
(15, 'Michael', 'Jordan', 'United States', 'mj23@gmail.com', '$2a$09$qDBxMnZOE9AwgV9ptj/vd.UptTvi.qoPo135VI1SDizeGom.Xn8Aq');

-- --------------------------------------------------------

--
-- Table structure for table `UserVideoLiked`
--

CREATE TABLE `UserVideoLiked` (
  `UserID` int(11) NOT NULL,
  `VideoID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `UserVideoLiked`
--

INSERT INTO `UserVideoLiked` (`UserID`, `VideoID`) VALUES
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(2, 2),
(2, 3),
(3, 4),
(3, 5),
(5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `UserVideoWatched`
--

CREATE TABLE `UserVideoWatched` (
  `UserID` int(11) NOT NULL,
  `VideoID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `UserVideoWatched`
--

INSERT INTO `UserVideoWatched` (`UserID`, `VideoID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 9),
(1, 10),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 6),
(2, 7),
(2, 11),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 22),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 6),
(3, 7),
(3, 8),
(3, 14),
(3, 15),
(3, 16),
(3, 18),
(3, 19),
(3, 20),
(3, 23),
(4, 6),
(4, 7),
(4, 12),
(4, 14),
(4, 15),
(4, 16),
(4, 17),
(4, 18),
(4, 20),
(4, 24),
(5, 6),
(5, 8),
(5, 14),
(5, 16),
(5, 24),
(6, 5),
(6, 6),
(6, 8),
(6, 14),
(7, 6),
(7, 7),
(7, 9),
(7, 14),
(7, 17),
(8, 17),
(9, 13),
(9, 17),
(9, 25),
(10, 5),
(10, 6),
(10, 8),
(10, 25);

-- --------------------------------------------------------

--
-- Table structure for table `Video`
--

CREATE TABLE `Video` (
  `VideoID` int(11) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Description` text NOT NULL,
  `Duration` double NOT NULL,
  `AppID` int(50) NOT NULL,
  `SubNeeded` tinyint(1) NOT NULL,
  `ReleaseDate` date NOT NULL,
  `ShowID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Video`
--

INSERT INTO `Video` (`VideoID`, `Title`, `Description`, `Duration`, `AppID`, `SubNeeded`, `ReleaseDate`, `ShowID`) VALUES
(1, 'Gangnam Style', 'Song by Psy', 252, 6, 0, '0000-00-00', NULL),
(2, 'BB9 Pilot', 'BB9 S1 E1', 4000, 1, 1, '0000-00-00', 14),
(3, 'Rick and Morty Pilot', '1st Episode of Rick and Morty', 4500, 1, 1, '0000-00-00', 15),
(4, 'BB9 The Tager', 'BB9 S1 E2', 4500, 1, 1, '0000-00-00', 14),
(5, 'BB9 The Slump', 'BB9 S1 E3', 4500, 1, 1, '0000-00-00', 14),
(6, 'BB9 M.E Time', 'BB9 S1 E4', 4500, 1, 1, '0000-00-00', 14),
(7, 'BB9 The Vulture', 'BB9 S1 E5', 4500, 1, 1, '0000-00-00', 14),
(8, 'BB9 Halloween', 'BB9 S1 E6', 4500, 1, 1, '0000-00-00', 14),
(9, 'BB9 58 Hours', 'BB9 S1 E7', 4500, 1, 1, '0000-00-00', 14),
(10, 'Breaking Bad Pilot', 'Breaking Bad S1 E1', 10000, 1, 1, '0000-00-00', 1),
(11, 'Doubt', 'Episode 1 of Season 3 of Criminal Minds', 2700, 1, 1, '2007-09-26', 11),
(12, 'Top 14 Chefs Revealed', 'Episode 3 of Season 1 of Masterchef', 4500, 1, 1, '2010-08-10', 12),
(13, 'Duane Barry', 'Episode 5 of Season 2 of the X-Files', 2700, 1, 1, '1994-10-14', 13),
(14, 'Dexter Ep 1', '1st Episode of Dexter', 250, 3, 0, '2020-01-01', 7),
(15, 'Dexter Ep 2', '2nd Episode of Dexter', 250, 3, 0, '2020-02-01', 7),
(16, 'Dexter Ep 3', '3rd Episode of Dexter', 250, 3, 0, '2020-03-01', 7),
(17, 'Sherlock Ep 1', '1st Episode of Sherlock', 500, 4, 0, '2020-01-01', 8),
(18, 'Sherlock Ep 2', '2nd Episode of Sherlock', 500, 4, 0, '2020-02-01', 8),
(19, 'Sherlock Ep 3', '3rd Episode of Sherlock', 500, 4, 0, '2020-03-01', 8),
(20, 'Narcos Ep 1', '1st Episode of Narcos', 350, 5, 0, '2020-02-01', 9),
(21, 'Narcos Ep 3', '2nd Episode of Narcos', 350, 5, 0, '2020-03-01', 9),
(22, 'Narcos Ep 3', '3rd Episode of Narcos', 350, 5, 0, '2020-04-01', 9),
(23, 'Stranger Things Ep 1', '1st Episode of Stranger Things', 350, 6, 1, '2020-03-01', 2),
(24, 'Stranger Things Ep 2', '2ns Episode of Stranger Things', 350, 6, 1, '2020-04-01', 2),
(25, 'Stranger Things Ep 3', '3rd Episode of Stranger Things', 350, 6, 1, '2020-05-01', 2),
(26, 'Spongebob Ep 1', '1st Episode of Spongebob', 250, 7, 0, '2020-05-01', 5),
(27, 'Spongebob Ep 2', '2nd Episode of Spongebob', 250, 7, 0, '2020-06-01', 5),
(28, 'Spongebob Ep 3', '3rd Episode of Spongebob', 250, 7, 0, '2020-07-01', 5),
(29, 'Stranger Thing S1E1', 'S1E1', 9000, 2, 1, '2018-01-01', 2),
(37, 'Episode 1', 'S1E1', 4000, 1, 1, '2020-03-01', 4),
(38, 'Episode 1', 'S1E1', 4000, 1, 1, '2020-03-01', 6),
(39, 'Episode 1', 'S1E1', 4000, 1, 1, '2020-03-01', 10),
(40, 'Demo', 'Desc Demo', 5432, 1, 1, '2013-09-07', 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `App`
--
ALTER TABLE `App`
  ADD PRIMARY KEY (`AppID`);

--
-- Indexes for table `AppPlatform`
--
ALTER TABLE `AppPlatform`
  ADD PRIMARY KEY (`AppID`,`PlatformID`),
  ADD KEY `AppPlatformFKS` (`PlatformID`);

--
-- Indexes for table `MyListShow`
--
ALTER TABLE `MyListShow`
  ADD PRIMARY KEY (`UserID`,`ShowID`) USING BTREE,
  ADD KEY `c112` (`ShowID`);

--
-- Indexes for table `MyListVideo`
--
ALTER TABLE `MyListVideo`
  ADD PRIMARY KEY (`UserID`,`VideoID`),
  ADD KEY `C124` (`VideoID`);

--
-- Indexes for table `Platform`
--
ALTER TABLE `Platform`
  ADD PRIMARY KEY (`PlatformID`);

--
-- Indexes for table `Seasons`
--
ALTER TABLE `Seasons`
  ADD PRIMARY KEY (`SeasonID`),
  ADD KEY `SEASONS1` (`ShowID`),
  ADD KEY `SEASONS2` (`VideoID`);

--
-- Indexes for table `Shows`
--
ALTER TABLE `Shows`
  ADD PRIMARY KEY (`ShowID`);

--
-- Indexes for table `Subscription`
--
ALTER TABLE `Subscription`
  ADD PRIMARY KEY (`UserID`,`AppID`) USING BTREE,
  ADD KEY `Subscription2` (`AppID`);

--
-- Indexes for table `Tag`
--
ALTER TABLE `Tag`
  ADD PRIMARY KEY (`VideoID`,`Tag`(50)) USING BTREE;

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `UserVideoLiked`
--
ALTER TABLE `UserVideoLiked`
  ADD PRIMARY KEY (`UserID`,`VideoID`),
  ADD KEY `UserVideoLikedFK2` (`VideoID`);

--
-- Indexes for table `UserVideoWatched`
--
ALTER TABLE `UserVideoWatched`
  ADD PRIMARY KEY (`UserID`,`VideoID`),
  ADD KEY `UserVideoWachedFK2` (`VideoID`);

--
-- Indexes for table `Video`
--
ALTER TABLE `Video`
  ADD PRIMARY KEY (`VideoID`),
  ADD KEY `FK` (`AppID`),
  ADD KEY `FK2` (`ShowID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `App`
--
ALTER TABLE `App`
  MODIFY `AppID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Platform`
--
ALTER TABLE `Platform`
  MODIFY `PlatformID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Seasons`
--
ALTER TABLE `Seasons`
  MODIFY `SeasonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `Shows`
--
ALTER TABLE `Shows`
  MODIFY `ShowID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `Video`
--
ALTER TABLE `Video`
  MODIFY `VideoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `AppPlatform`
--
ALTER TABLE `AppPlatform`
  ADD CONSTRAINT `AppPlatformFK` FOREIGN KEY (`AppID`) REFERENCES `App` (`AppID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `AppPlatformFKS` FOREIGN KEY (`PlatformID`) REFERENCES `Platform` (`PlatformID`) ON UPDATE CASCADE;

--
-- Constraints for table `MyListShow`
--
ALTER TABLE `MyListShow`
  ADD CONSTRAINT `C111` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `c112` FOREIGN KEY (`ShowID`) REFERENCES `Shows` (`ShowID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `MyListVideo`
--
ALTER TABLE `MyListVideo`
  ADD CONSTRAINT `C123` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `C124` FOREIGN KEY (`VideoID`) REFERENCES `Video` (`VideoID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Seasons`
--
ALTER TABLE `Seasons`
  ADD CONSTRAINT `SEASONS1` FOREIGN KEY (`ShowID`) REFERENCES `Shows` (`ShowID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `SEASONS2` FOREIGN KEY (`VideoID`) REFERENCES `Video` (`VideoID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Subscription`
--
ALTER TABLE `Subscription`
  ADD CONSTRAINT `Subscription1` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Subscription2` FOREIGN KEY (`AppID`) REFERENCES `App` (`AppID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Tag`
--
ALTER TABLE `Tag`
  ADD CONSTRAINT `VA` FOREIGN KEY (`VideoID`) REFERENCES `Video` (`VideoID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `UserVideoLiked`
--
ALTER TABLE `UserVideoLiked`
  ADD CONSTRAINT `UserVideoLikedFK` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `UserVideoLikedFK2` FOREIGN KEY (`VideoID`) REFERENCES `Video` (`VideoID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `UserVideoWatched`
--
ALTER TABLE `UserVideoWatched`
  ADD CONSTRAINT `UserVideoWachedFK2` FOREIGN KEY (`VideoID`) REFERENCES `Video` (`VideoID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `UserVideoWatchedFK` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Video`
--
ALTER TABLE `Video`
  ADD CONSTRAINT `FK` FOREIGN KEY (`AppID`) REFERENCES `App` (`AppID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK2` FOREIGN KEY (`ShowID`) REFERENCES `Shows` (`ShowID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
