-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2019 at 09:37 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `podcast`
--

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `pubDate` varchar(255) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `music` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`id`, `title`, `description`, `pubDate`, `author`, `copyright`, `music`) VALUES
(1, '#1923: Emboldened Electrons', 'Rob\'s car has trouble starting unless he holds the key in the start position for several seconds. Does Ray\'s Emboldened Electrons theory mean Rob\'s electrical system needs to read Profiles in Courage? Elsewhere, Gary is guilty until proven innocent for his mother-in-law\'s T-Bird catching fire, and even exculpatory evidence may not get him off the hook. Also, Isla\'s had to replace her Jeep\'s brake pads three times in the last year, and Midas says she\'s run out of free replacements; Carly has been living with a shaking Civic for two years; and Avital\'s ex-boyfriend is trying to convince her that motor oil behaves like bottled salad dressing.', 'Sat, 08 Jun 2019 08:00:53 -0400', 'author0', '2001 Dewey, Cheetham and Howe', 'https://play.podtrac.com/npr-510208/edge1.pod.npr.org/anon.npr-mp3/npr/cartalk/2019/06/20190604_cartalk_1923electronics.mp3?awCollectionId=510208&awEpisodeId=730260996&orgId=1&d=3302&p=510208&story=730260996&t=podcast&e=730260996&size=52539915&ft=pod&f=51'),
(2, '#1922: If It Blows, It Blows', 'This week on The Best of Car Talk, climbing Mt. Adams apparently wasn\'t exciting enough for Glen. When he discovered his truck was leaking gas on the way home, he decided to keep driving. While Glen undoubtedly tops this week\'s dope slap count, Denise won\'t be far behind. She celebrated a \"significant birthday\" by buying a 1961 Volvo online sight unseen. As you might imagine, it arrived with enough problems to keep any mechanic\'s boat fueled for the entire season. Also, Marc\'s Corolla\'s gas mileage began dropping, and every attempted fix has only continued the decline; Bob wants to know if he can set off a bug bomb in his truck without damaging the electronics (we\'re a little more concerned about his lungs); and there\'s only one problem with Tom and Ray\'s brilliant diagnosis that Beth\'s Accord needs a new clutch. All this and more, this week on The Best of Car Talk.', 'Sat, 01 Jun 2019 08:00:00 -0400', 'author1', '2001 Dewey, Cheetham and Howe', 'https://play.podtrac.com/npr-510208/edge1.pod.npr.org/anon.npr-podcasts/podcast/510208/728885601/npr_728885601.mp3?awCollectionId=510208&awEpisodeId=728885601&orgId=1&d=3304&p=510208&story=728885601&t=podcast&e=728885601&size=0&ft=pod&f=510208'),
(3, 'Cleansed Series Update / Stitcher Partnership', 'Creator Fred Greenhalgh talks about THE CLEANSED\'s partnership with Stitcher Premium, his new project THE DARK TOME, and talks on future CLEANSED project, OUT OF THE WEST.<img src=\"http://feeds.feedburner.com/~r/TheCleansed/~4/fNv5z2lxP3w\" height=\"1\" width=\"1\" alt=\"\"/>', 'Mon, 19 Nov 2018 21:46:55 +0000', 'author0', NULL, 'http://dts.podtrac.com/redirect.mp3/api.spreaker.com/download/episode/16262372/cleansed_update.mp3'),
(4, 'New Show: The Mayan Crystal', 'Announcing THE MAYAN CRYSTAL, created by the same team responsible for THE CLEANSED.\n\n\n\n\nIn the spirit of Mayan folklore, a twelve-year old Belizean girl accidentally invokes the evil spirit of an ancient enemy that threatens to consume the rainforest. With the help of her ancient ancestors, her sister, and her new friend, a 20- foot boa constrictor, she’ll go on a thrilling journey to save her village and discover the most incredible secret.<img src=\"http://feeds.feedburner.com/~r/TheCleansed/~4/qdvrVT1kdFs\" height=\"1\" width=\"1\" alt=\"\"/>', 'Fri, 02 Mar 2018 14:11:54 +0000', 'author1', NULL, 'http://dts.podtrac.com/redirect.mp3/api.spreaker.com/download/episode/14565318/09e56ba3_bac2_4a57_a8be_02d854bfd183.mp3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `library`
--
ALTER TABLE `library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
