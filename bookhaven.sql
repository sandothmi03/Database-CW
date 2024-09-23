-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2023 at 06:29 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookhaven`
--

-- --------------------------------------------------------

--
-- Table structure for table `bankconfirmation`
--

CREATE TABLE `bankconfirmation` (
  `paymentID` int(15) NOT NULL,
  `customerID` int(15) NOT NULL,
  `orderID` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bankconfirmation`
--

INSERT INTO `bankconfirmation` (`paymentID`, `customerID`, `orderID`) VALUES
(3451, 2023145, 16675),
(3468, 2023023, 16728),
(3470, 2023023, 16756),
(3471, 2022348, 16903),
(3473, 2021475, 16905);

-- --------------------------------------------------------

--
-- Table structure for table `banktranspayment`
--

CREATE TABLE `banktranspayment` (
  `paymentId` int(15) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `date` date DEFAULT NULL,
  `bankName` varchar(50) NOT NULL,
  `accountNumber` varchar(20) NOT NULL,
  `customerID` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banktranspayment`
--

INSERT INTO `banktranspayment` (`paymentId`, `amount`, `date`, `bankName`, `accountNumber`, `customerID`) VALUES
(3451, 30.60, '2023-08-05', 'Central Bank', '1234567890', 2023145),
(3455, 75.50, '2023-09-10', 'PLK Bank', '9876543210', 2022357),
(3463, 120.00, '2023-09-15', 'HDD Bank', '5556547895', 2021001),
(3468, 30.00, '2023-09-20', 'Central Bank', '1354786233', 2023023),
(3470, 40.00, '2023-10-25', 'SK Bank', '4444333322', 2023023),
(3471, 100.00, '2023-09-03', 'JK Bank', '2345687591', 2022348),
(3473, 10.00, '2023-10-06', 'JJK Bank', '3654289516', 2021475);

-- --------------------------------------------------------

--
-- Table structure for table `bookitem`
--

CREATE TABLE `bookitem` (
  `itemCode` int(15) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stockLevel` int(10) NOT NULL,
  `reorderLevel` int(10) NOT NULL,
  `ISBN` varchar(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `genre` varchar(50) NOT NULL,
  `category` varchar(500) NOT NULL,
  `author` varchar(100) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `yearOfPublication` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookitem`
--

INSERT INTO `bookitem` (`itemCode`, `price`, `stockLevel`, `reorderLevel`, `ISBN`, `title`, `genre`, `category`, `author`, `publisher`, `yearOfPublication`) VALUES
(16155, 20.70, 45, 9, '13-648-35781-64298', 'Database Systems: Concepts, Design, and Applications', 'DBMS', 'Database', 'Ramez Elmasri', 'Springer', 2022),
(23456, 10.00, 30, 10, '654-8-768954-56-9', 'My crush Yuvi', 'Romantic', 'Novel', 'Aanya Dorson', 'YH Publishers', 2023),
(25146, 5.00, 50, 10, '23-456-7593214568', 'Jesus', 'Catholic', 'Documentary', 'B. B. Martin', 'DM Publishers', 2020),
(26433, 10.20, 50, 20, '978-1-348957-89-9', 'G.C.E ALs Past Papers', 'Educational', 'Exam Preparation', 'Pornesio Parapio', 'Exam Guide Publishers', 2022),
(33505, 8.90, 25, 6, '13-978-0133970777', 'Fundamentals of Database Systems', 'DBMS', 'Database', 'Ramez Elmasri', 'Pearson', 2022),
(35987, 11.00, 10, 3, '958-6-756985-95-7', 'Zoology', 'Biology', 'Documentary', 'J.J.Stew', 'JJ Publishers', 2021),
(43157, 2.00, 20, 5, '65-586-6347596214', 'My Drawing Book', 'Educational', 'Education', 'M.L.Limin', 'Blah Blah Publishers', 2022),
(45689, 20.00, 40, 10, '28-845-6571546832', 'Introduction to Database Systems', 'DBMS', 'Database', 'Ramez Elmasri', 'Pearson', 2022),
(51500, 15.00, 50, 10, '978-1-234567-89-0', 'The Great Novel', 'Fiction', 'Novel', 'John Depp', 'Edward Publishers', 2020),
(66207, 29.50, 15, 3, '978-1-239567-89-6', 'Our History', 'Educational-History', 'Documentary', 'David Miller', 'JK Publisher', 2016);

-- --------------------------------------------------------

--
-- Table structure for table `bookplacement`
--

CREATE TABLE `bookplacement` (
  `itemCode` int(15) NOT NULL,
  `customerID` int(15) NOT NULL,
  `orderID` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookplacement`
--

INSERT INTO `bookplacement` (`itemCode`, `customerID`, `orderID`) VALUES
(16155, 2023045, 16546),
(23456, 2021475, 16905),
(26433, 2023145, 16675),
(43157, 2023648, 16933),
(51500, 2023023, 16728);

-- --------------------------------------------------------

--
-- Table structure for table `book_company`
--

CREATE TABLE `book_company` (
  `itemCode` int(15) NOT NULL,
  `supplierID` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_company`
--

INSERT INTO `book_company` (`itemCode`, `supplierID`) VALUES
(16155, 46),
(23456, 100),
(26433, 101),
(33505, 23),
(51500, 135);

-- --------------------------------------------------------

--
-- Table structure for table `book_individual`
--

CREATE TABLE `book_individual` (
  `itemCode` int(15) NOT NULL,
  `supplierID` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_individual`
--

INSERT INTO `book_individual` (`itemCode`, `supplierID`) VALUES
(25146, 202),
(35987, 189),
(43157, 200),
(45689, 162),
(66207, 161);

-- --------------------------------------------------------

--
-- Table structure for table `companysupplier`
--

CREATE TABLE `companysupplier` (
  `supplierID` int(15) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contactPerson` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `companysupplier`
--

INSERT INTO `companysupplier` (`supplierID`, `name`, `contactPerson`) VALUES
(23, 'NM Book Suppliers', 'Manura SellsManager'),
(46, 'YHM Publishers', 'Vinuka Manager'),
(55, 'SS School Suppliers', 'Ethan SellsManager'),
(87, 'Nine Hearts Art and Crafts', 'Kevin DesignManager'),
(88, 'MH Solutions', 'Sathija ExecutiveOfficer'),
(99, 'Hello World Suppliers', 'Praveen Deeler'),
(100, 'Heaven Publishers', 'Nayomi Manager'),
(101, 'Exam Guide Publishers', 'Ava SellsManager'),
(103, 'GK Office Solutions', 'Sofia Manager'),
(135, 'Edward Publishers', 'John Publisher');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerID` int(15) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `name`, `email`, `address`) VALUES
(2021001, 'Babara Watson', 'babara@ymail.com', '14/3 10th Street, Cortez'),
(2021475, 'Bob Canel', 'bob@ymail.com', '3 Nervous St, NewYork'),
(2022348, 'James Corden', 'jamy@ymail.com', '2 JK St, Florida'),
(2022357, 'Benet Hello', 'bene.he@ymail.com', '25 Arina Drive, NewYork'),
(2022358, 'Jones Bones', 'jonas@ymail.com', '45 Extra Road, Washington DC'),
(2023023, 'John David', 'john.daw@ymail.com', '14 Main St, NewYork'),
(2023045, 'Michael White', 'mich.wh@ymail.com', '655 Maple St, Florida'),
(2023145, 'Guwen Janet', 'guwen.j@ymail.com', '5 2nd lane, Ontario'),
(2023648, 'J. M. Place', 'place@ymail.com', 'Main Street, Ontario'),
(2023845, 'M. S. Jones', 'jones@ymail.com', '9 Back St, Cortex');

-- --------------------------------------------------------

--
-- Table structure for table `individualsupplier`
--

CREATE TABLE `individualsupplier` (
  `supplierID` int(15) NOT NULL,
  `name` varchar(100) NOT NULL,
  `NIC` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `individualsupplier`
--

INSERT INTO `individualsupplier` (`supplierID`, `name`, `NIC`) VALUES
(151, 'Jen Doe', 'AB4579537861'),
(161, 'Olivia Gray', 'CD2548697315'),
(162, 'Emma Pattinson', 'YM8463759216'),
(171, 'Pegras Orendo', 'EX1497364286'),
(189, 'Robert Mathew', 'ZV3589764286'),
(200, 'Camila Cabello', 'BC4563289517'),
(201, 'Jenny Kim', 'PK2658934865'),
(202, 'Kevin Blah', 'JK6258934567'),
(205, 'Jani Hei', 'AS4536925761'),
(208, 'Nandya Feros', 'IU2486753214');

-- --------------------------------------------------------

--
-- Table structure for table `onlineconfirmation`
--

CREATE TABLE `onlineconfirmation` (
  `paymentID` int(15) NOT NULL,
  `customerID` int(15) NOT NULL,
  `orderID` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `onlineconfirmation`
--

INSERT INTO `onlineconfirmation` (`paymentID`, `customerID`, `orderID`) VALUES
(11034, 2023023, 16698),
(12004, 2021001, 16950),
(12008, 2023145, 16755),
(12010, 2023845, 16910),
(12015, 2023648, 16933);

-- --------------------------------------------------------

--
-- Table structure for table `onlinepaypayment`
--

CREATE TABLE `onlinepaypayment` (
  `paymentId` int(15) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `date` date DEFAULT NULL,
  `paymentMethod` varchar(30) NOT NULL,
  `customerID` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `onlinepaypayment`
--

INSERT INTO `onlinepaypayment` (`paymentId`, `amount`, `date`, `paymentMethod`, `customerID`) VALUES
(11034, 120.00, '2023-09-05', 'Credit Card', 2023023),
(11042, 25.25, '2023-09-10', 'PayPal', 2023045),
(11083, 75.50, '2023-10-15', 'Google Pay', 2022357),
(12004, 30.75, '2023-10-20', 'Credit Card', 2021001),
(12008, 20.50, '2023-10-25', 'Debit Card', 2023145),
(12010, 25.00, '2023-10-27', 'Debit Card', 2023845),
(12015, 200.00, '2023-11-01', 'Credit Card', 2023648);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `orderID` int(15) NOT NULL,
  `orderDate` date DEFAULT NULL,
  `deliveryDate` date DEFAULT NULL,
  `deliveryAddress` varchar(200) NOT NULL,
  `quantity` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`orderID`, `orderDate`, `deliveryDate`, `deliveryAddress`, `quantity`) VALUES
(16546, '2023-07-10', '2023-07-13', '89 Ward Place, Colorado.', 1),
(16675, '2023-08-05', '2023-08-07', '5 2nd Lane, Ontario.', 3),
(16698, '2023-09-05', '2023-09-08', '14 Main St, New York.', 40),
(16728, '2023-09-20', '2023-09-23', '14 Main St, New York.', 2),
(16755, '2023-10-25', '2023-10-27', '5 2nd Lane, Ontario.', 5),
(16756, '2023-10-25', '2023-10-27', '14 Main St, New York.', 40),
(16805, '2023-11-01', '2023-11-05', '456 JK St, California.', 10),
(16903, '2023-09-03', '2023-09-05', '2 JK St, Florida', 10),
(16905, '2023-10-06', '2023-10-08', '3 Nervous St, NewYork', 1),
(16910, '2023-10-27', '2023-10-29', '9 Back St, Cortex', 5),
(16933, '2023-11-01', '2023-11-03', 'Main Street, Ontario', 100),
(16950, '2023-11-03', '2023-11-05', '14/3 10th Street, Cortez', 6);

-- --------------------------------------------------------

--
-- Table structure for table `stationaryitem`
--

CREATE TABLE `stationaryitem` (
  `itemCode` int(15) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stockLevel` int(10) NOT NULL,
  `reorderLevel` int(10) NOT NULL,
  `type` varchar(50) NOT NULL,
  `brand` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stationaryitem`
--

INSERT INTO `stationaryitem` (`itemCode`, `price`, `stockLevel`, `reorderLevel`, `type`, `brand`) VALUES
(1001, 3.00, 50, 10, 'Pen', 'Atlas'),
(1005, 5.50, 30, 5, 'NoteBook', 'Athena'),
(1145, 4.10, 15, 3, 'Paint Brushers', 'Nine Hearts'),
(1205, 1.00, 100, 50, 'Eraser', 'BB'),
(1256, 5.00, 25, 5, 'Ruler', 'Ten'),
(1265, 6.00, 25, 6, 'Marker', 'Ten'),
(1285, 10.00, 50, 5, 'Pencil case', 'The fullstop'),
(1295, 2.00, 100, 50, 'Sticky note', 'Maped'),
(1296, 30.00, 50, 5, 'School bag', 'Atlas'),
(1300, 3.00, 100, 10, 'Pencil', 'Atlas');

-- --------------------------------------------------------

--
-- Table structure for table `stationaryplacement`
--

CREATE TABLE `stationaryplacement` (
  `itemCode` int(15) NOT NULL,
  `customerID` int(15) NOT NULL,
  `orderID` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stationaryplacement`
--

INSERT INTO `stationaryplacement` (`itemCode`, `customerID`, `orderID`) VALUES
(1001, 2023023, 16698),
(1005, 2022357, 16805),
(1145, 2023145, 16755),
(1205, 2023023, 16756),
(1285, 2022348, 16903);

-- --------------------------------------------------------

--
-- Table structure for table `stationary_company`
--

CREATE TABLE `stationary_company` (
  `itemCode` int(15) NOT NULL,
  `supplierID` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stationary_company`
--

INSERT INTO `stationary_company` (`itemCode`, `supplierID`) VALUES
(1005, 103),
(1145, 87),
(1285, 99),
(1296, 88),
(1300, 55);

-- --------------------------------------------------------

--
-- Table structure for table `stationary_individual`
--

CREATE TABLE `stationary_individual` (
  `itemCode` int(15) NOT NULL,
  `supplierID` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stationary_individual`
--

INSERT INTO `stationary_individual` (`itemCode`, `supplierID`) VALUES
(1001, 151),
(1205, 171),
(1256, 201),
(1265, 205),
(1295, 208);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bankconfirmation`
--
ALTER TABLE `bankconfirmation`
  ADD PRIMARY KEY (`paymentID`,`customerID`,`orderID`),
  ADD KEY `cust_fk4` (`customerID`),
  ADD KEY `ord_fk2` (`orderID`);

--
-- Indexes for table `banktranspayment`
--
ALTER TABLE `banktranspayment`
  ADD PRIMARY KEY (`paymentId`),
  ADD KEY `cust_fk1` (`customerID`);

--
-- Indexes for table `bookitem`
--
ALTER TABLE `bookitem`
  ADD PRIMARY KEY (`itemCode`),
  ADD UNIQUE KEY `ISBN` (`ISBN`);

--
-- Indexes for table `bookplacement`
--
ALTER TABLE `bookplacement`
  ADD PRIMARY KEY (`itemCode`,`customerID`,`orderID`),
  ADD KEY `cust_fk8` (`customerID`),
  ADD KEY `ord_fk8` (`orderID`);

--
-- Indexes for table `book_company`
--
ALTER TABLE `book_company`
  ADD PRIMARY KEY (`itemCode`,`supplierID`),
  ADD KEY `comp_ID1` (`supplierID`);

--
-- Indexes for table `book_individual`
--
ALTER TABLE `book_individual`
  ADD PRIMARY KEY (`itemCode`,`supplierID`),
  ADD KEY `indi_ID1` (`supplierID`);

--
-- Indexes for table `companysupplier`
--
ALTER TABLE `companysupplier`
  ADD PRIMARY KEY (`supplierID`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `individualsupplier`
--
ALTER TABLE `individualsupplier`
  ADD PRIMARY KEY (`supplierID`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `NIC` (`NIC`);

--
-- Indexes for table `onlineconfirmation`
--
ALTER TABLE `onlineconfirmation`
  ADD PRIMARY KEY (`paymentID`,`customerID`,`orderID`),
  ADD KEY `cust_fk9` (`customerID`),
  ADD KEY `ord_fk9` (`orderID`);

--
-- Indexes for table `onlinepaypayment`
--
ALTER TABLE `onlinepaypayment`
  ADD PRIMARY KEY (`paymentId`),
  ADD KEY `cust_fk2` (`customerID`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`orderID`);

--
-- Indexes for table `stationaryitem`
--
ALTER TABLE `stationaryitem`
  ADD PRIMARY KEY (`itemCode`);

--
-- Indexes for table `stationaryplacement`
--
ALTER TABLE `stationaryplacement`
  ADD PRIMARY KEY (`itemCode`,`customerID`,`orderID`),
  ADD KEY `cust_fk3` (`customerID`),
  ADD KEY `ord_fk1` (`orderID`);

--
-- Indexes for table `stationary_company`
--
ALTER TABLE `stationary_company`
  ADD PRIMARY KEY (`itemCode`,`supplierID`),
  ADD KEY `comp_ID2` (`supplierID`);

--
-- Indexes for table `stationary_individual`
--
ALTER TABLE `stationary_individual`
  ADD PRIMARY KEY (`itemCode`,`supplierID`),
  ADD KEY `indi_ID2` (`supplierID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bankconfirmation`
--
ALTER TABLE `bankconfirmation`
  ADD CONSTRAINT `cust_fk4` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`),
  ADD CONSTRAINT `onl_pay_fk4` FOREIGN KEY (`paymentID`) REFERENCES `banktranspayment` (`paymentId`),
  ADD CONSTRAINT `ord_fk2` FOREIGN KEY (`orderID`) REFERENCES `order` (`orderID`);

--
-- Constraints for table `banktranspayment`
--
ALTER TABLE `banktranspayment`
  ADD CONSTRAINT `cust_fk1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`);

--
-- Constraints for table `bookplacement`
--
ALTER TABLE `bookplacement`
  ADD CONSTRAINT `book_item_fk2` FOREIGN KEY (`itemCode`) REFERENCES `bookitem` (`itemCode`),
  ADD CONSTRAINT `cust_fk8` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`),
  ADD CONSTRAINT `ord_fk8` FOREIGN KEY (`orderID`) REFERENCES `order` (`orderID`);

--
-- Constraints for table `book_company`
--
ALTER TABLE `book_company`
  ADD CONSTRAINT `book_code1` FOREIGN KEY (`itemCode`) REFERENCES `bookitem` (`itemCode`),
  ADD CONSTRAINT `comp_ID1` FOREIGN KEY (`supplierID`) REFERENCES `companysupplier` (`supplierID`);

--
-- Constraints for table `book_individual`
--
ALTER TABLE `book_individual`
  ADD CONSTRAINT `book_code2` FOREIGN KEY (`itemCode`) REFERENCES `bookitem` (`itemCode`),
  ADD CONSTRAINT `indi_ID1` FOREIGN KEY (`supplierID`) REFERENCES `individualsupplier` (`supplierID`);

--
-- Constraints for table `onlineconfirmation`
--
ALTER TABLE `onlineconfirmation`
  ADD CONSTRAINT `cust_fk9` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`),
  ADD CONSTRAINT `onl_pay_fk9` FOREIGN KEY (`paymentID`) REFERENCES `onlinepaypayment` (`paymentId`),
  ADD CONSTRAINT `ord_fk9` FOREIGN KEY (`orderID`) REFERENCES `order` (`orderID`);

--
-- Constraints for table `onlinepaypayment`
--
ALTER TABLE `onlinepaypayment`
  ADD CONSTRAINT `cust_fk2` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`);

--
-- Constraints for table `stationaryplacement`
--
ALTER TABLE `stationaryplacement`
  ADD CONSTRAINT `cust_fk3` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`),
  ADD CONSTRAINT `ord_fk1` FOREIGN KEY (`orderID`) REFERENCES `order` (`orderID`),
  ADD CONSTRAINT `stat_item_fk2` FOREIGN KEY (`itemCode`) REFERENCES `stationaryitem` (`itemCode`);

--
-- Constraints for table `stationary_company`
--
ALTER TABLE `stationary_company`
  ADD CONSTRAINT `comp_ID2` FOREIGN KEY (`supplierID`) REFERENCES `companysupplier` (`supplierID`),
  ADD CONSTRAINT `stat_code1` FOREIGN KEY (`itemCode`) REFERENCES `stationaryitem` (`itemCode`);

--
-- Constraints for table `stationary_individual`
--
ALTER TABLE `stationary_individual`
  ADD CONSTRAINT `indi_ID2` FOREIGN KEY (`supplierID`) REFERENCES `individualsupplier` (`supplierID`),
  ADD CONSTRAINT `stat_code2` FOREIGN KEY (`itemCode`) REFERENCES `stationaryitem` (`itemCode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
