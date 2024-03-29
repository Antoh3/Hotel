

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(20) NOT NULL,
  `pass` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pass`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bookingstatus`
--

CREATE TABLE `bookingstatus` (
  `email` varchar(40) NOT NULL,
  `category` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `roomWant` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookingstatus`
--

INSERT INTO `bookingstatus` (`email`, `category`, `type`, `roomWant`, `status`, `date`) VALUES
('iamsabit99@gmail.com', 'Business Class ', 'Single Bed', 21, 0, '2020-05-03');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `name` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `cost` int(11) NOT NULL,
  `available` int(11) NOT NULL,
  `img` varchar(50) NOT NULL,
  `dec` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`name`, `type`, `cost`, `available`, `img`, `dec`) VALUES
('Business Class ', 'Double Bed', 1200, 11, '/assets/img/rooms/room1.jpg', 'Non AC Room'),
('Business Class ', 'Double Bed', 2005, 9, '/assets/img/rooms/room2.jpg', 'AC Room'),
('Business Class ', 'Single Bed', 800, 10, '/assets/img/rooms/room3.jpg', 'Non AC Room'),
('Business Class ', 'Single Bed', 1200, 10, '/assets/img/rooms/room4.jpg', 'AC Room');


INSERT INTO `category` (`name`, `type`, `cost`, `available`, `img`, `dec`) VALUES
('Second class ', 'Double Bed', 3000, 11, '/assets/img/rooms/room1.jpg', 'Non AC Room'),
('Second clas ', 'Double Bed', 2500, 9, '/assets/img/rooms/room2.jpg', 'AC Room'),
('Second clas ', 'Single Bed', 1000, 10, '/assets/img/rooms/room3.jpg', 'Non AC Room'),
('Second clas ', 'Single Bed', 1500, 10, '/assets/img/rooms/room4.jpg', 'AC Room');


INSERT INTO `category` (`name`, `type`, `cost`, `available`, `img`, `dec`) VALUES
('First class ', 'Double Bed', 5000, 11, '/assets/img/rooms/room1.jpg', 'Non AC Room'),
('First class ', 'Double Bed', 4000, 9, '/assets/img/rooms/room2.jpg', 'AC Room'),
('First class ', 'Single Bed', 3000, 10, '/assets/img/rooms/room3.jpg', 'Non AC Room'),
('First class ', 'Single Bed', 3500, 10, '/assets/img/rooms/room4.jpg', 'AC Room');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `email`, `phone`, `password`) VALUES
('admin', 'admin@admin.com', '1', '1'),
('Sabit', 'iamsabit99@gmail.com', '01744248058', '1'),
('Sabit', 'st.sabit13@gmail.com', '01744248058', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookingstatus`
--
ALTER TABLE `bookingstatus`
  ADD PRIMARY KEY (`email`,`category`,`type`,`roomWant`,`date`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`name`,`type`,`cost`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookingstatus`
--
ALTER TABLE `bookingstatus`
  ADD CONSTRAINT `ibfk_01` FOREIGN KEY (`email`) REFERENCES `user` (`email`);
COMMIT;