-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 15, 2020 at 10:41 AM
-- Server version: 5.7.21
-- PHP Version: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tellmonifa_maindb`
--

-- --------------------------------------------------------

--
-- Table structure for table `affiliations`
--

DROP TABLE IF EXISTS `affiliations`;
CREATE TABLE IF NOT EXISTS `affiliations` (
  `Affiliations_id` int(11) NOT NULL,
  `Network_id` varchar(50) NOT NULL DEFAULT '0',
  `Status` tinyint(3) NOT NULL DEFAULT '1',
  `DateOfAffiliation` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE IF NOT EXISTS `location` (
  `Location_id` int(11) NOT NULL AUTO_INCREMENT,
  `Country` varchar(100) NOT NULL DEFAULT '',
  `City` varchar(50) NOT NULL DEFAULT '',
  `State` varchar(50) NOT NULL DEFAULT '',
  `Street` varchar(100) NOT NULL DEFAULT '',
  `Zipcode` varchar(10) NOT NULL DEFAULT '',
  `IpAddress` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`Location_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
CREATE TABLE IF NOT EXISTS `profile` (
  `Profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(20) NOT NULL DEFAULT '',
  `LastName` varchar(20) NOT NULL DEFAULT '',
  `PictureSmall` varchar(50) NOT NULL DEFAULT '',
  `PictureBig` varchar(50) NOT NULL DEFAULT '',
  `UserId` varchar(100) NOT NULL DEFAULT '',
  `Gender` tinyint(5) NOT NULL DEFAULT '0',
  `BirthDay` date DEFAULT NULL,
  `LastActive` datetime DEFAULT NULL,
  `UserStatus` tinyint(3) NOT NULL DEFAULT '0' COMMENT 'this is to check the online and offline mode of user',
  `Location_id` int(11) NOT NULL DEFAULT '0' COMMENT 'This is a foreign field from the location table',
  `Affiliations_id` int(11) NOT NULL DEFAULT '0' COMMENT 'This is a foreign field from the Affiliation table',
  `DateRegistered` datetime DEFAULT CURRENT_TIMESTAMP,
  `UpdateTime` datetime DEFAULT NULL COMMENT 'time for last db update',
  `Password` varchar(255) NOT NULL DEFAULT '',
  `ResetPin` varchar(100) NOT NULL DEFAULT '',
  `VerifyCode` varchar(10) NOT NULL DEFAULT '0',
  `AccountStatus` tinyint(3) NOT NULL DEFAULT '0',
  `IncognitoName` varchar(15) NOT NULL DEFAULT '',
  `Contact` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`Profile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`Profile_id`, `FirstName`, `LastName`, `PictureSmall`, `PictureBig`, `UserId`, `Gender`, `BirthDay`, `LastActive`, `UserStatus`, `Location_id`, `Affiliations_id`, `DateRegistered`, `UpdateTime`, `Password`, `ResetPin`, `VerifyCode`, `AccountStatus`, `IncognitoName`, `Contact`) VALUES
(1, '', '', '', '', 'c683eee26addc653a222c6709f7256611b90c86372fb349a9cd519ddc720b3ba', 1, '1984-10-24', '2020-03-01 17:03:15', 1, 0, 0, '2020-02-28 22:04:10', NULL, '$2y$10$G20z2Cy8uJ8.EoV8SdTA5ux4V4GXv6mxiUGMMT/bZRc4z6bPiaChm', '4b302eae1d4384a160e640fee83930318f9c1bfdc85c56f0ecee01fef03b8113', '0', 0, 'sammyNti', '1koflwa1@gmail.com'),
(2, '', '', '', '', '49e47ab0516855483bc5f5d04e85fde4ef3ba0b1ddfbaf475d4c2fa5a25e7aa6', 1, '1984-10-24', NULL, 0, 0, 0, '2020-03-10 17:08:08', NULL, '$2y$10$5goT6Aky.fUy.HcIQ8XAz./r1LbizA25UBsvZ14FyF6d7a15B.Iyu', '', '0', 0, 'boooonu', 'boonu@gmail.com'),
(3, '', '', '', '', '01d31e464679ff187cdd6019cd3ad4e6b933c4a86740b1d5a0f84d86aaa0c80a', 1, '1984-10-24', NULL, 0, 0, 0, '2020-03-10 18:33:23', NULL, '$2y$10$rGbVdcYftYEfepKOw0jzJuvSf0Jq.oxHZBeroE2z.2tUDCZvw5jBW', '', '0', 0, 'wensten', '0279953350'),
(4, '', '', '', '', 'ea88369338a64cd0129b1d1a7c407e6987c2df96366c269f2d985982914efb02', 1, '1984-10-24', NULL, 0, 0, 0, '2020-03-11 00:25:43', NULL, '$2y$10$ZsWZ4oq6zaDMK./ennOIyeV5fHrPCClvTWKAflDh81/Vb63meGi3a', '', '0', 0, 'pankutil', 'panku@gmail.com'),
(5, '', '', '', '', 'd05af01773c5a9e684c7228e03f89c0a7440921f6d5f2722fbfd422aef2b1485', 1, '1984-10-24', NULL, 0, 0, 0, '2020-03-11 00:30:38', NULL, '$2y$10$0VrimopiQIIXxyhnYZ3JkeSipXQ24rjaBDttPDIo.P5C1Bbj52a1u', '', '0', 0, 'pioti3333', '0279953351'),
(6, '', '', '', '', '1eb380a244033f945a6fc5ab8677cc363696261373f4f468c8c163c495d13322', 1, '1984-10-24', NULL, 0, 0, 0, '2020-03-11 00:33:24', NULL, '$2y$10$DD25Tqun6TGy9KJSQ7SYV.W.rJiSHssJ9CLqO7Ox2p/Eg8eaUM3gu', '', '0', 0, 'xcvghyte', '0279953340'),
(7, '', '', '', '', 'd4f8e348bd99108c325774c9573b0956e590fb622d7bfeec7ac08cb9f738219b', 1, '1984-10-24', NULL, 0, 0, 0, '2020-03-11 00:39:36', NULL, '$2y$10$r39LJSUgHseCeUgP443RgOey1rgVwQucLFDM8EZsssCjJmurzdgme', '', '0', 0, 'lkoiuyhg', '0279987765'),
(8, '', '', '', '', '6cc0939d15a8e57d316a8d2d7c4ce252651072888b92576bbdc222469774da40', 1, '1984-10-24', NULL, 0, 0, 0, '2020-03-11 00:41:00', NULL, '$2y$10$aF0SlJOBAVD/D5zZ2S4IeOOHTcanjnORqCbB8d25XHdgiU34lI2OW', '', '0', 0, 'ddddddd', '0987767765'),
(9, '', '', '', '', '88c665caf694bec37defb52810095af7a7d5fb829aaac33f1f511888ca185909', 1, '1984-10-24', NULL, 0, 0, 0, '2020-03-11 00:42:12', NULL, '$2y$10$Sz/eO0FJNkVV0XeqX23cGupWayGr6ZtloftJMCD0b5k.yk0oCpRNe', '', '0', 0, 'dfertghy', '0344456678'),
(10, '', '', '', '', 'd7430086732d7497de70452d703161e511fb41e7be81e9dd1a44b267b4933862', 1, '1984-10-24', NULL, 0, 0, 0, '2020-03-11 00:43:10', NULL, '$2y$10$qp1IOPGZFY8znzmaDthlUOFwfHB6ITGszqtH/EyUw29LFhS0S4DCm', '', '0', 0, 'sdferthh', 'asd@gmail.com'),
(11, '', '', '', '', '4844f7494c4978273d5455470894681c2bd146f34153f5c544da1decd17c2268', 1, '1984-10-24', NULL, 0, 0, 0, '2020-03-11 00:45:55', NULL, '$2y$10$17U3KbqW9HCg./zkZ1xEM.efqLrINfzHn1bYbNe8qxpkwyhEC.Z5W', '', '923074', 0, 'wwwwwwwww', '0279956678'),
(12, '', '', '', '', '998919b307ece81c87b2c5e5b9701986785f671edec2f3cdd9d540c60c4723e9', 1, '1984-10-24', NULL, 0, 0, 0, '2020-03-11 00:48:09', NULL, '$2y$10$HsB.YlCn0jK8JriIe2bZ.uLq7Xqg6NhJzomBJf4HOnPO8kOEPgQbG', '', '273693', 0, 'cdfwerty', '0345678987'),
(13, '', '', '', '', '00fc4b42f18008cc031e903689e31f95c8b5b6031d9ac11f8485a7e4a9e14064', 1, '1984-10-24', NULL, 0, 0, 0, '2020-03-11 00:49:06', NULL, '$2y$10$QmBpWHoTTxu4mx35dJROrOzwku8vuRcO9JaGp1KW/33X.dymtuDX6', '', '037961', 0, 'dswerfgt', '0897654542'),
(14, '', '', '', '', '2d773b81a1ec8dbd2a77d217bdb041890b22713a5f3fab870f393109eb05b045', 1, '1984-10-24', NULL, 0, 0, 0, '2020-03-11 00:49:57', NULL, '$2y$10$L0eDH7tlnANtv5ZPcteim.qgcha8HRSJasM9JR0zVk6KUzXA/PzCu', '', '281075', 0, 'vmnfjfurirkr', '0289876765'),
(15, '', '', '', '', '8bce445463a75e4c9a84515583d8716fa22386ec560418e5b55f174def4342eb', 1, '1984-10-24', NULL, 0, 0, 0, '2020-03-11 00:50:47', NULL, '$2y$10$BIHSj4FP57NOA9hQ6KCoZeaDXnyhkOlLbIVENBBfT08lyyQuQVoQS', '', '593821', 0, 'ffffffffffff', '0987656765'),
(16, '', '', '', '', '9b15b345b79ac09b3d2e1501d59579ae684d941cdefc21aaf8949bb9b93e790a', 1, '1984-10-24', '2020-03-14 20:20:49', 1, 0, 0, '2020-03-11 00:53:02', NULL, '$2y$10$f5XoF9guj0/45CXOp0DrHeDZg4hPQsEfhb/c066kT9Ihv7.ZEBd8q', '', '0', 1, 'quieyhjff', '0267654567'),
(17, '', '', '', '', '0030e874bd85a215ebaaf737a38f8d217d59c24cc9dd588b6de9f8b2e926fb3c', 1, '1984-10-24', NULL, 0, 0, 0, '2020-03-11 03:53:58', NULL, '$2y$10$5Xw2Y8IchnE4UrmAjDTZd.gPx1Dc5g3UTN7xIMbjxhzXKYowVgCYm', '', '0', 0, 'jimako', 'jones@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `usersessions`
--

DROP TABLE IF EXISTS `usersessions`;
CREATE TABLE IF NOT EXISTS `usersessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` varchar(100) NOT NULL DEFAULT '',
  `Hash` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usersessions`
--

INSERT INTO `usersessions` (`id`, `UserId`, `Hash`) VALUES
(4, '9b15b345b79ac09b3d2e1501d59579ae684d941cdefc21aaf8949bb9b93e790a', 'de2b5167e20c65c24a8aa864bc360b92b1a4ae693de79d4eda7870360cefb37d');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
