-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2017 at 11:26 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jambajuiceph`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `subname` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `category` varchar(255) NOT NULL,
  `stocks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `subname`, `description`, `image`, `price`, `category`, `stocks`) VALUES
(1, 'Mango-A-Go-Go® Smoothie', 'subname', ' Are you the president of the Mango Appreciation Society? Do you count mangoes to fall asleep? Then welcome to paradise. We blend heaps of mangoes and passion fruit-mango juice topped off with pineapple sherbet to make your dreams come true. ', 'Images/maggs.png', '180.00', 'Classic Smoothies', 4),
(2, 'Razzmatazz® Smoothie', 'Dazzling you with the power of berries.', 'Your mouth won’t know which way to say “yummers!” with this super blend. Strawberries, bananas and mixed berry juice all jump in this sea of goodness to create the magnum opus of berrydom.', 'Images/rs.png', '150.00', 'Classic Smoothies', 0),
(3, 'Strawberry Surf Rider™ Smoothie', 'Hang ten and all that.', 'Let’s be honest: Strawberries can’t surf. That’s what the peaches are for. Enjoy some peaches teaching strawberries how to surf on an ocean of lemonade next to beaches made of lime sherbet. It’s radical.', 'Images/ssrs.png', '150.00', 'Classic Smoothies', 0),
(4, 'Aloha Pineapple® Smoothie', 'It’s a luau for your mouth!', 'Dream of relaxing on black sand beaches beneath waving palm trees and cooling off with this blend of strawberries, bananas, and pineapple sherbet. Gigantic sunbrella and tiki bar not included.', 'Images/aps.png', '150.00', 'Classic Smoothies', 0),
(5, 'Caribbean Passion® Smoothie', 'Beat the heat, the island way.', 'Get whisked away to a lush tropical island by a blend of strawberries, peaches, passion fruit-mango juice and orange sherbet. Are you being serenaded by birds of paradise? No, that’s a car horn; you’re daydreaming in the parking lot again.', 'Images/cps.png', '150.00', 'Classic Smoothies', 0),
(6, 'Strawberry Whirl™ Smoothie', 'Dizzying amounts of goodness.', 'We hope you’re not afraid of heights because you’re about to be swept up and taken for a ride on the back of a strawberry soaring through apple-berry skies around banana clouds. Fly high, fruit angel.', 'Images/allfruit/sws1.png', '170.00', 'All Fruit Smoothies', 0),
(7, 'Five Fruit Frenzy™ Smoothie', 'Hold on to your hats…', 'Get ready to be engulfed in a whirlwind of fruit flavor. Strawberry, banana, blueberry, mango and peach all vie for supremacy in a flavor tornado the likes of which your taste buds have never experienced.', 'Images/allfruit/fffs.png', '170.00', 'All Fruit Smoothies', 0),
(8, 'Peach Perfection™ Smoothie', 'No fruit is more fastidious.', 'The peach is very particular about her associates. Mangos, strawberries and two kinds of fruit juice ensure that she’s always seen with the right people. After all, she has a reputation to maintain.', 'Images/allfruit/pps1.png', '170.00', 'All Fruit Smoothies', 0),
(9, 'Mega Mango™ Smoothie', 'Whoa, that’s one big mango.', 'Gaze upon our towering monolith to the mango. We offer up strawberries, exotic juices and of course piles of mangos in order to appease our mighty lord of the fruits. It is good, and he is pleased.', 'Images/allfruit/mms.png', '170.00', 'All Fruit Smoothies', 0),
(10, 'Orange Dream Machine® Smoothie', 'Feed your dreams.', 'Thoughts of this amazing smoothie occupy your every waking moment and invade your slumber. Visions of orange juice, orange sherbet and nonfat vanilla frozen yogurt dancing together fill your nights. Isn’t it time you made this dream come true?', 'Images/creamy/odms.png', '180.00', 'Creamy Smoothies', 0),
(11, 'Chocolate Moo’d® Smoothie', 'Because you’re always in the mood.', 'Chocolate has been engineered to creep into your innermost thoughts, sabotaging productivity and creating maddening distractions. Fight back with this blend of nonfat vanilla frozen yogurt and creamy chocolate blend. Take back your mind!', 'Images/creamy/cms.png', '180.00', 'Creamy Smoothies', 0),
(12, 'Peanut Butter Moo’d® Smoothie', 'Almost too delicious.', 'These cows sure know what we like. Peanut butter, bananas, nonfat vanilla frozen yogurt and our chocolate moo’d milk chocolate are the perfect combination to lure us in. Why are they keeping us happy and docile? We’re on to you, cows!', 'Images/creamy/pbms.png', '180.00', 'Creamy Smoothies', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'peejay', 'b2b44ae030598c3393598946acecbf43ea8ab4c4', 'regular'),
(2, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin'),
(3, 'pjsaracho', 'ec2be217533eb16cce466e77a591a62af2c9b569', 'regular'),
(5, 'tuittph', '4e50e085f93cf4a0a7ba69a7f95fe2ab5f07a770', 'regular'),
(6, 'qwer', '1161e6ffd3637b302a5cd74076283a7bd1fc20d3', 'regular');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
