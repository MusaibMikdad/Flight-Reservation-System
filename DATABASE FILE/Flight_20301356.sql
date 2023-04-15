SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";



--
-- Database: `FLight_20301356`
--

-- --------------------------------------------------------

--
-- Table structure for table `_admin`
--

CREATE TABLE `_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_uname` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_pwd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_admin`
--

INSERT INTO `_admin` (`admin_id`, `admin_uname`, `admin_email`, `admin_pwd`) VALUES
(1, 'musaib_mikdad', 'musaib@gmail.com', '$2y$10$mbgnbJ4qf8YpAV.mcjhObOAZH7zOnF6nMUgN.JWzv5NbqWiDyn2ie');

-- --------------------------------------------------------

--
-- Table structure for table `airline`
--

CREATE TABLE `airline` (
  `airline_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `seats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airline`
--

INSERT INTO `airline` (`airline_id`, `name`, `seats`) VALUES
(1, 'Biman Bangladesh Airlines', 165),
(2, 'United Airways', 220),
(3, 'Air Bangladesh', 125),
(4, 'US-Bangla Airlines', 210),
(5, 'Novo Air', 185),
(9, 'Regent Airways', 200),
(10, 'Charter Airlines', 205),
(11, 'Bangladesh Biman',158),
(12,'Fly Biman',210),
(13,'Biman Bangla Air',215),
(14,'Square Airlines',135);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city`) VALUES
('Dhaka'),
('Chittagong'),
('Sylhet'),
('Saidpur'),
('Rajshahi'),
('Khulna'),
('Jessore'),
('Coxs Bazar'),
('Saintmartin'),
('Kolkata'),
('Nepal'),
('Bhutan'),
('Delhi'),
('Dubai'),
('Russia'),
('U.S.A'),
('Philipine'),
('Brazil');

-- --------------------------------------------------------


--

CREATE TABLE `One_Way_flight` (
  `flight_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `departure` datetime NOT NULL,
  `Destination` varchar(20) NOT NULL,
  `source` varchar(20) NOT NULL,
  `airline` varchar(20) NOT NULL,
  `Seats` varchar(110) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `Price` int(11) NOT NULL,
  `status` varchar(6) DEFAULT NULL,
  `issue` varchar(50) DEFAULT NULL,
  `last_seat` varchar(5) DEFAULT '',
  `cavin_seats` int(11) DEFAULT '20',
  `last_cavin_seat` varchar(5) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--
-- Dumping data for table `One_way_flight`
--

INSERT INTO `One_Way_Flight` (`flight_id`, `admin_id`,`departure`, `Destination`, `source`, `airline`, `Seats`, `duration`, `Price`, `status`, `issue`, `last_seat`, `cavin_seats`, `last_cavin_seat`)VALUES
(1, 1, '2022-08-27 10:03:00',  'Chittagong', 'Dhaka', 'Novo Air', '63', '1', 175, '', '', '21B', 20, ''),
(2, 1, '2022-08-27 11:15:00', 'Dhaka', 'Sylhet', 'United Airways', '61', '1', 185, 'arr', '', '21D', 20, ''),
(3, 1, '2022-12-11 12:13:00', 'U.S.A', 'DHAKA', 'United Airways ', '123', '2', 205, 'arr', '', '21B', 20, ''),
(4, 1, '2022-08-27 16:30:00', 'Rajshahi', 'Chittagong', 'Air Bangladesh', '220', '1', 155, 'issue', '120', '', 20, ''),
(5, 1, '2022-08-27 15:30:00', 'Dhaka', 'Kolkata', 'Regent Airways', '125', '3', 326, '', '', '', 20, ''),
(6, 1, '2022-08-27 17:55:00', 'Kolkata', 'Dhaka', 'Novo Air', '125', '2', 285, '', '', '', 20, ''),
(7, 1, '2022-08-27 20:50:00', 'Dhaka', 'Russia', 'Biman Bangladesh Airlines', '125', '2', 265, '', '', '', 20, ''),
(8, 1, '2022-08-27 00:55:00', 'Dhaka', 'Kolkata', 'Air Bangladesh', '183', '7', 615, 'arr', '', '21B', 20, ''),
(9, 1, '2022-08-28 17:09:00', 'Dhaka', 'Chittagong', 'Novo Air', '210', '1', 155, '', '', '', 20, ''),
(10, 1, '2022-08-28 13:10:00', 'Dhaka', 'Delhi', 'Novo Air', '165', '2', 200, '', '', '', 20, ''),
(11, 1, '2022-07-05 19:10:00', 'Oriaridge', 'Flerough', 'Echo Airline', '220', '1', 165, '', '', '', 20, ''),
(12, 1, '2022-07-05 21:10:00', 'Chicago', 'Yleigh', 'Peak Airways', '210', '2', 320, '', '', '', 20, ''),
(13, 1, '2022-07-05 13:50:00', 'Olisphis', 'Chicago', 'Core Airways', '165', '1', 110, 'issue', '110', '', 20, ''),
(14, 1, '2022-07-05 11:08:00', 'Oyladnard', 'San', 'Spark Airways', '125', '2', 195, 'issue', '120', '', 20, ''),
(15, 1, '2022-07-05 10:10:00', 'Weling', 'Chicago', 'Peak Airways', '210', '2', 125, 'issue', '120', '', 20, ''),
(16, 1, '2022-07-05 18:10:00', 'Flerough', 'San', 'Homelander Airways', '185', '2', 220, 'dep', '', '', 20, ''),
(17, 1, '2022-07-05 17:10:00', 'San', 'Chiby', 'Echo Airline', '220', '1', 125, 'arr', '', '', 20, ''),
(18, 1, '2022-07-05 19:15:00', 'San', 'Flerough', 'Core Airways', '165', '3', 275, 'dep', '', '', 20, ''),
(19, 1, '2022-07-05 23:40:00', 'Shiburn', 'Oyladnard', 'Aero Airways', '210', '3', 295, '', '', '', 20, ''),
(20, 1, '2022-07-05 23:58:00', 'Zhotrora', 'Trerdence', 'Aero Airways', '208', '1', 185, 'dep', '', '21B', 20, ''),
(21, 1, '2022-07-06 10:14:00', 'Odonhull', 'Otiginia', 'Blue Airlines', '200', '11', 965, '', '', '', 20, '');


CREATE TABLE `Round_Trip_flight` (
  `flight_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `departure` datetime NOT NULL,
  `return_date` datetime NOT NULL,
  `Destination` varchar(20) NOT NULL,
  `source` varchar(20) NOT NULL,
  `airline` varchar(20) NOT NULL,
  `Seats` varchar(110) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `Price` int(11) NOT NULL,
  `status` varchar(6) DEFAULT NULL,
  `issue` varchar(50) DEFAULT NULL,
  `last_seat` varchar(5) DEFAULT '',
  `cavin_seats` int(11) DEFAULT '20',
  `last_cavin_seat` varchar(5) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Round_Trip_flight` (`flight_id`, `admin_id`, `departure`, `return_date`, `Destination`, `source`, `airline`, `Seats`, `duration`, `Price`, `status`, `issue`, `last_seat`, `cavin_seats`, `last_cavin_seat`) VALUES
(1, 1, '2022-08-27 10:03:00', '2022-08-28 09:01:00', 'Chittagong', 'Dhaka', 'Novo Air', '63', '1', 175, '', '', '21B', 20, ''),
(2, 1, '2022-08-27 11:15:00', '2022-08-29 10:05:00', 'Dhaka', 'Sylhet', 'United Airways', '61', '1', 185, 'arr', '', '21D', 20, ''),
(3, 1, '2022-12-11 12:13:00', '2022-12-13 10:13:00', 'U.S.A', 'DHAKA', 'United Airways ', '123', '2', 205, 'arr', '', '21B', 20, ''),
(4, 1, '2022-08-27 16:30:00', '2022-08-27 15:26:00', 'Rajshahi', 'Chittagong', 'Air Bangladesh', '220', '1', 155, 'issue', '120', '', 20, ''),
(5, 1, '2022-08-27 15:30:00', '2022-08-28 12:30:00', 'Dhaka', 'Kolkata', 'Regent Airways', '125', '3', 326, '', '', '', 20, ''),
(6, 1, '2022-08-27 17:55:00', '2022-08-30 15:30:00', 'Kolkata', 'Dhaka', 'Novo Air', '125', '2', 285, '', '', '', 20, ''),
(7, 1, '2022-08-27 20:50:00', '2022-08-31 18:50:00', 'Dhaka', 'Russia', 'Biman Bangladesh Airlines', '125', '2', 265, '', '', '', 20, ''),
(8, 1, '2022-08-27 00:55:00', '2022-08-30 17:00:00', 'Dhaka', 'Kolkata', 'Air Bangladesh', '183', '7', 615, 'arr', '', '21B', 20, ''),
(9, 1, '2022-08-28 17:09:00', '2022-08-28  23:05:00', 'Dhaka', 'Chittagong', 'Novo Air', '210', '1', 155, '', '', '', 20, ''),
(10, 1, '2022-08-28 13:10:00', '2022-08-29 11:05:00', 'Dhaka', 'Delhi', 'Novo Air', '165', '2', 200, '', '', '', 20, ''),
(11, 1, '2022-07-05 19:10:00', '2022-07-10 18:05:00', 'Oriaridge', 'Flerough', 'Echo Airline', '220', '1', 165, '', '', '', 20, ''),
(12, 1, '2022-07-05 21:10:00', '2022-07-25 19:05:00', 'Chicago', 'Yleigh', 'Peak Airways', '210', '2', 320, '', '', '', 20, ''),
(13, 1, '2022-07-05 13:50:00', '2022-07-06 12:56:00', 'Olisphis', 'Chicago', 'Core Airways', '165', '1', 110, 'issue', '110', '', 20, ''),
(14, 1, '2022-07-05 11:08:00', '2022-07-11 09:07:00', 'Oyladnard', 'San', 'Spark Airways', '125', '2', 195, 'issue', '120', '', 20, ''),
(15, 1, '2022-07-05 10:10:00', '2022-07-08 08:10:00', 'Weling', 'Chicago', 'Peak Airways', '210', '2', 125, 'issue', '120', '', 20, ''),
(16, 1, '2022-07-05 18:10:00', '2022-07-07 16:09:00', 'Flerough', 'San', 'Homelander Airways', '185', '2', 220, 'dep', '', '', 20, ''),
(17, 1, '2022-07-05 17:10:00', '2022-07-15 16:10:00', 'San', 'Chiby', 'Echo Airline', '220', '1', 125, 'arr', '', '', 20, ''),
(18, 1, '2022-07-05 19:15:00', '2022-07-10 16:12:00', 'San', 'Flerough', 'Core Airways', '165', '3', 275, 'dep', '', '', 20, ''),
(19, 1, '2022-07-05 23:40:00', '2022-07-17 20:31:00', 'Shiburn', 'Oyladnard', 'Aero Airways', '210', '3', 295, '', '', '', 20, ''),
(20, 1, '2022-07-05 23:58:00', '2022-07-09 22:14:00', 'Zhotrora', 'Trerdence', 'Aero Airways', '208', '1', 185, 'dep', '', '21B', 20, ''),
(21, 1, '2022-07-06 10:14:00', '2022-08-05 23:15:00', 'Odonhull', 'Otiginia', 'Blue Airlines', '200', '11', 965, '', '', '', 20, '');

-- --------------------------------------------------------

--
-- Table structure for table `One_Way_passenger_profile`
--

CREATE TABLE `One_Way_passenger_profile` (
  `passenger_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `mobile` varchar(110) NOT NULL,
  `dob` datetime NOT NULL,
  `f_name` varchar(20) DEFAULT NULL,
  `l_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `One_Way_passenger_profile`
--

INSERT INTO `One_Way_passenger_profile` (`passenger_id`, `user_id`, `flight_id`, `mobile`, `dob`, `f_name`, `l_name`) VALUES
(1, 1, 1, '2147483647', '2000-02-03 00:00:00', 'Musaib', 'Mikdad'),
(2, 2, 3, '2147483647', '2000-10-11 00:00:00', 'Joty', 'Hasan'),
(3, 3, 2, '2147483647', '2000-01-21 00:00:00', 'Nafiz', 'Mahfuz'),
(4, 4, 2, '2147483647', '2000 -04-24 00:00:00', 'Alif', 'CV'),
(5, 2, 8, '7854444411', '2000-09-10 00:00:00', 'Jameela', 'Jamil'),
(6, 2, 20, '7412585555', '2000-04-13 00:00:00', 'Niloy', 'Biswas');

-- --------------------------------------------------------

--
CREATE TABLE `Round_Trip_passenger_profile` (
  `passenger_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `mobile` varchar(110) NOT NULL,
  `dob` datetime NOT NULL,
  `f_name` varchar(20) DEFAULT NULL,
  `l_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `Round_Trip_passenger_profile` (`passenger_id`, `user_id`, `flight_id`, `mobile`, `dob`, `f_name`, `l_name`) VALUES
(1, 1, 1, '2147483647', '2000-02-03 00:00:00', 'Musaib', 'Mikdad'),
(2, 2, 3, '2147483647', '2000-10-11 00:00:00', 'Joty', 'Hasan'),
(3, 3, 2, '2147483647', '2000-01-21 00:00:00', 'Nafiz', 'Mahfuz'),
(4, 4, 2, '2147483647', '2000 -04-24 00:00:00', 'Alif', 'CV'),
(5, 2, 8, '7854444411', '2000-09-10 00:00:00', 'Jameela', 'Jamil'),
(6, 2, 20, '7412585555', '2000-04-13 00:00:00', 'Niloy', 'Biswas');

-- --------------------------------------------------------

--
-- Table structure for table `One_Way_payment`
--

CREATE TABLE `One_Way_payment` (
  `card_no` varchar(16) NOT NULL,
  `user_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `expire_date` varchar(5) DEFAULT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `One_Way_payment`
--

INSERT INTO `One_Way_payment` (`card_no`, `user_id`, `flight_id`, `expire_date`, `amount`) VALUES
('1010555677851111', 4, 2, '10/26', 370),
('1020445869651011', 2, 20, '12/25', 370),
('1111888889897778', 2, 3, '12/25', 205),
('1400565800004478', 2, 8, '12/25', 1230),
('1458799990001450', 3, 2, '12/25', 185),
('4204558500014587', 1, 1, '02/25', 350);

-- --------------------------------------------------------

CREATE TABLE `Round_Trip_payment` (
  `card_no` varchar(16) NOT NULL,
  `user_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `expire_date` varchar(5) DEFAULT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `Round_Trip_payment` (`card_no`, `user_id`, `flight_id`, `expire_date`, `amount`) VALUES
('1010555677851111', 4, 2, '10/26', 370),
('1020445869651011', 2, 20, '12/25', 370),
('1111888889897778', 2, 3, '12/25', 205),
('1400565800004478', 2, 8, '12/25', 1230),
('1458799990001450', 3, 2, '12/25', 185),
('4204558500014587', 1, 1, '02/25', 350);

--
-- Table structure for table `pwdreset`
--

CREATE TABLE `pwdreset` (
  `pwd_reset_id` int(11) NOT NULL,
  `pwd_reset_email` varchar(50) NOT NULL,
  `pwd_reset_selector` varchar(80) NOT NULL,
  `pwd_reset_token` varchar(120) NOT NULL,
  `pwd_reset_expires` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

-- Table structure for table `One_Way_ticket`
--

CREATE TABLE `One_Way_ticket` (
  `ticket_id` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seat_no` varchar(10) NOT NULL,
  `cost` int(11) NOT NULL,
  `class` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `One_Way_ticket` (`ticket_id`, `passenger_id`, `flight_id`, `user_id`, `seat_no`, `cost`, `class`) VALUES
(1, 1, 1, 1, '21A', 350, 'E'),
(2, 2, 3, 2, '21A', 205, 'E'),
(4, 3, 2, 3, '21A', 185, 'E'),
(6, 4, 2, 4, '21C', 370, 'E'),
(8, 5, 8, 2, '21A', 1230, 'E'),
(10, 6, 20, 2, '21A', 370, 'E');



CREATE TABLE `Round_Trip_ticket` (
  `ticket_id` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seat_no` varchar(10) NOT NULL,
  `cost` int(11) NOT NULL,
  `class` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `Round_Trip_ticket` (`ticket_id`, `passenger_id`, `flight_id`, `user_id`, `seat_no`, `cost`, `class`) VALUES
(1, 1, 1, 1, '21A', 350, 'E'),
(2, 2, 3, 2, '21A', 205, 'E'),
(4, 3, 2, 3, '21A', 185, 'E'),
(6, 4, 2, 4, '21C', 370, 'E'),
(8, 5, 8, 2, '21A', 1230, 'E'),
(10, 6, 20, 2, '21A', 370, 'E');

-- --------------------------------------------------------

-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'mikdad', 'mikdad@email.com', '$2y$10$mbgnbJ4qf8YpAV.mcjhObOAZH7zOnF6nMUgN.JWzv5NbqWiDyn2ie'),
(2, 'joty', 'jotypicchi@email.com', '$2y$10$mbgnbJ4qf8YpAV.mcjhObOAZH7zOnF6nMUgN.JWzv5NbqWiDyn2ie'),
(3, 'romo', 'romo@email.com', '$2y$10$mbgnbJ4qf8YpAV.mcjhObOAZH7zOnF6nMUgN.JWzv5NbqWiDyn2ie'),
(4, 'niloy', 'niloy@email.com', '$2y$10$mbgnbJ4qf8YpAV.mcjhObOAZH7zOnF6nMUgN.JWzv5NbqWiDyn2ie');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `_admin`
--
ALTER TABLE `_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `airline`
--
ALTER TABLE `airline`
  ADD PRIMARY KEY (`airline_id`);



--
-- Indexes for table `One_way_flight`
--
ALTER TABLE `One_way_flight`
  ADD PRIMARY KEY (`flight_id`),
  ADD KEY `admin_id` (`admin_id`);



ALTER TABLE `Round_Trip_flight`
  ADD PRIMARY KEY (`flight_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `One_way_passenger_profile`
--
ALTER TABLE `One_way_passenger_profile`
  ADD PRIMARY KEY (`passenger_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`);


ALTER TABLE `Round_Trip_passenger_profile`
  ADD PRIMARY KEY (`passenger_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Indexes for table `One_Way_payment`
--
ALTER TABLE `One_Way_payment`
  ADD PRIMARY KEY (`card_no`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`);



ALTER TABLE `Round_Trip_payment`
  ADD PRIMARY KEY (`card_no`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Indexes for table `pwdreset`
--
ALTER TABLE `pwdreset`
  ADD PRIMARY KEY (`pwd_reset_id`);

--
-- Indexes for table `One_Way_ticket`
--
ALTER TABLE `One_Way_ticket`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`),
  ADD KEY `passenger_id` (`passenger_id`);


ALTER TABLE `Round_Trip_ticket`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `flight_id` (`flight_id`),
  ADD KEY `passenger_id` (`passenger_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `_admin`
--
ALTER TABLE `_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `airline`
--
ALTER TABLE `airline`
  MODIFY `airline_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--


--
-- AUTO_INCREMENT for table `One_Way_flight`
--
ALTER TABLE `One_Way_flight`
  MODIFY `flight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;


ALTER TABLE `Round_Trip_flight`
  MODIFY `flight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `One_Way_passenger_profile`
--
ALTER TABLE `One_Way_passenger_profile`
  MODIFY `passenger_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;



ALTER TABLE `Round_Trip_passenger_profile`
  MODIFY `passenger_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pwdreset`
--
ALTER TABLE `pwdreset`
  MODIFY `pwd_reset_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `One_Way_ticket`
--
ALTER TABLE `One_Way_ticket`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;



ALTER TABLE `Round_Trip_ticket`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for table `One_Way_flight`
--
-- Constraints for table `One_way_passenger_profile`
--
ALTER TABLE `One_way_passenger_profile`
  ADD CONSTRAINT `One_way_passenger_profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `One_way_passenger_profile_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `One_Way_flight` (`flight_id`);




ALTER TABLE `Round_Trip_passenger_profile`
  ADD CONSTRAINT `Round_Trip_passenger_profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `Round_Trip_passenger_profile_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `Round_Trip_flight` (`flight_id`);

-- Constraints for table `One_Way_payment`
--
ALTER TABLE `One_Way_payment`
  ADD CONSTRAINT `One_Way_payment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `One_Way_payment_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `One_Way_flight` (`flight_id`);



ALTER TABLE `Round_Trip_payment`
  ADD CONSTRAINT `Round_Trip_payment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `Round_Trip_payment_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `Round_Trip_flight` (`flight_id`);

--
-- Constraints for table `One_Way_ticket`
--
ALTER TABLE `One_Way_ticket`
  ADD CONSTRAINT `One_Way_ticket_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `One_Way_ticket_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `One_Way_flight` (`flight_id`),
  ADD CONSTRAINT `One_Way_ticket_ibfk_3` FOREIGN KEY (`passenger_id`) REFERENCES `One_Way_passenger_profile` (`passenger_id`) ON DELETE CASCADE;



ALTER TABLE `Round_Trip_ticket`
  ADD CONSTRAINT `Round_Trip_ticket_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `Round_Trip_ticket_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `Round_Trip_flight` (`flight_id`),
  ADD CONSTRAINT `Round_Trip_ticket_ibfk_3` FOREIGN KEY (`passenger_id`) REFERENCES `Round_Trip_passenger_profile` (`passenger_id`) ON DELETE CASCADE;


