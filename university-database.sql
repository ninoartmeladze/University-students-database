



--
-- Database: `university-database 10group`
--

-- --------------------------------------------------------

--
-- Table structure for table `assistant_manager`
--

CREATE TABLE `assistant_manager` (
  `assistant_manager_id` int(11) NOT NULL,
  `assistant_manager_name` varchar(255) NOT NULL,
  `assistant_manager_lastname` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assistant_manager`
--

INSERT INTO `assistant_manager` (`assistant_manager_id`, `assistant_manager_name`, `assistant_manager_lastname`, `gender`, `address`, `email`) VALUES
(20, 'Ani', 'Jiqia', 'female', 'tbilisi', 'anijiqia@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `courses_name` varchar(255) NOT NULL,
  `courses_price` varchar(255) NOT NULL,
  `duration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `courses_name`, `courses_price`, `duration`) VALUES
(51, 'Web Development', '1000 Gel', '8 month'),
(52, 'Data Science', '1000 Gel', '8 month'),
(53, 'Mobile Development', '1000 gel', '8 month'),
(54, 'Programming Languages', '1000 gel', '8 month'),
(55, 'Game Development', '1000 gel', '8 month'),
(56, 'Design', '1000 gel', '8 month');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `lecturer_id` int(11) NOT NULL,
  `lecturer_name` varchar(255) NOT NULL,
  `lecturer_lastname` varchar(255) NOT NULL,
  `birth_date` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `second_address` varchar(255) NOT NULL,
  `flat_number` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `rank` varchar(255) DEFAULT NULL,
  `subjects_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`lecturer_id`, `lecturer_name`, `lecturer_lastname`, `birth_date`, `gender`, `address`, `second_address`, `flat_number`, `email`, `account_number`, `rank`, `subjects_id`) VALUES
(1, 'lika', 'Dolidze', '01/05/1996', 'female', 'tbilisi', 'vazhaphshavela', 21, 'likadolidze@gmail.com', 'GE10GB01000000003', 'senior', 10),
(2, 'Nika', 'mchedlidze', '01/05/2003', 'male', 'kutaisi', 'vazhaphshavela', 20, 'nikamchedlidze@gmail.com', 'GE10GB01000000002', 'middle', 11),
(3, 'Anna', 'Machavariani', '08/08/1995', 'Female', 'Tbilisi', 'Pekini st', 20, 'Annamachavariani@gmail.com', 'GE10GB01000000001', 'senior', 12),
(4, 'Giorgi', 'Dadiani', '08/08/1995', 'Female', 'Tbilisi', 'Pekini st', 20, 'giorgidadiani@gmail.com', 'GE10GB01000000005', 'senior', 13);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `students_id` int(11) NOT NULL,
  `students_name` varchar(20) NOT NULL,
  `students_lastname` varchar(20) NOT NULL,
  `students_status` varchar(50) NOT NULL,
  `birth_date` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `second_address` varchar(255) DEFAULT NULL,
  `flat_number` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `students_transaction` varchar(255) DEFAULT NULL,
  `uni_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`students_id`, `students_name`, `students_lastname`, `students_status`, `birth_date`, `gender`, `address`, `second_address`, `flat_number`, `email`, `students_transaction`, `uni_id`) VALUES
(100, 'Nini', 'Artmeladze', 'Student of web development', '05/02/1995', 'Female', 'Batumi', 'Gorgiladze', 24, 'n.artmeladze@outlook.com', 'payable', 1),
(101, 'Khatia', 'Ormotsadze', 'Student of programing laguages', '10/07/1999', 'Female', 'Tbilisi', 'Gorgasali st', 23, 'khatiaormotsadze@gmail.com', 'payed', 1),
(102, 'Nutsa', 'Gelashvili', 'Student of design', '01/03/1992', 'female', 'Tbilisi', 'vazhaphshavela', 22, 'nucagelashvili@gmail.com', 'payed', 1),
(103, 'Anna', 'Antia', 'Student of game development', '01/05/1996', 'Female', 'Tbilisi', 'vazhaphshavela', 21, 'anitaantia@gmail.com', 'payable', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subjects_id` int(11) NOT NULL,
  `subjects_name` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `course_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subjects_id`, `subjects_name`, `date_time`, `course_id`) VALUES
(10, 'HTML', 'monday 19:00 PM', 51),
(11, 'CSS', 'friday 19:00 PM', 51),
(12, 'Dat Analysis', 'friday 19:00 PM', 52),
(13, 'Statistics', 'friday 19:00 PM', 52),
(14, 'React Native', 'friday 19:00 PM', 53),
(15, 'IOS Development', 'friday 19:00 PM', 53),
(16, 'Java', 'friday 19:00 PM', 54),
(17, 'Python', 'friday 19:00 PM', 54),
(18, 'Game Development Fundamentals', 'friday 19:00 PM', 55),
(19, 'Unity', 'friday 19:00 PM', 55),
(20, 'Web design', 'friday 19:00 PM', 56);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `trans_id` int(11) DEFAULT NULL,
  `amount` varchar(255) NOT NULL,
  `trans_date` datetime DEFAULT NULL,
  `students_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`trans_id`, `amount`, `trans_date`, `students_id`) VALUES
(1, '1000 GEL', '2022-09-01 12:00:00', 101),
(2, '1000 GEL', '2022-09-01 13:00:00', 102);

-- --------------------------------------------------------

--
-- Table structure for table `uni`
--

CREATE TABLE `uni` (
  `uni_id` int(11) NOT NULL,
  `uni_name` varchar(255) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uni`
--

INSERT INTO `uni` (`uni_id`, `uni_name`, `phone`, `email`, `street`, `city`, `country`) VALUES
(1, 'Development', '555010101', 'Development@gmail.com', 'Rustaveli', 'Tbilisi', 'Georgia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assistant_manager`
--
ALTER TABLE `assistant_manager`
  ADD PRIMARY KEY (`assistant_manager_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`lecturer_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `subjects_id` (`subjects_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`students_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `uni_id` (`uni_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subjects_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD KEY `students_id` (`students_id`);

--
-- Indexes for table `uni`
--
ALTER TABLE `uni`
  ADD PRIMARY KEY (`uni_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD CONSTRAINT `lecturer_ibfk_1` FOREIGN KEY (`subjects_id`) REFERENCES `subjects` (`subjects_id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`uni_id`) REFERENCES `uni` (`uni_id`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`students_id`) REFERENCES `students` (`students_id`);
COMMIT;


