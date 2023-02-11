-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 07, 2022 at 06:27 AM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `TraderJoe`
--

-- --------------------------------------------------------

--
-- Table structure for table `Account`
--

CREATE TABLE `Account` (
  `AccountID` int(11) NOT NULL,
  `PointsEarned` int(4) NOT NULL,
  `CustomerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Account`
--

INSERT INTO `Account` (`AccountID`, `PointsEarned`, `CustomerID`) VALUES
(11, 6, 1),
(22, 8542, 2),
(33, 97116, 3),
(44, 19601, 4),
(55, 4118, 5),
(66, 73127, 6),
(77, 251, 7),
(88, 4, 8),
(99, 8720, 9),
(100, 4628, 10),
(110, 8, 11),
(120, 5133, 12),
(130, 550, 13),
(140, 2, 14),
(150, 86957, 15),
(160, 26, 16),
(170, 2, 17),
(180, 6176, 18),
(190, 311, 19),
(200, 952, 20);

-- --------------------------------------------------------

--
-- Table structure for table `CARDDETAIL`
--

CREATE TABLE `CARDDETAIL` (
  `CardNumber` bigint(20) NOT NULL,
  `CardHolderName` varchar(100) NOT NULL,
  `CVV` char(3) NOT NULL,
  `ExpireDate` varchar(20) NOT NULL,
  `BillingStreet` varchar(100) NOT NULL,
  `BillingCity` varchar(100) NOT NULL,
  `BillingState` varchar(100) NOT NULL,
  `BillingZipCode` varchar(10) NOT NULL,
  `BillingCountry` varchar(20) NOT NULL,
  `CustomerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CARDDETAIL`
--

INSERT INTO `CARDDETAIL` (`CardNumber`, `CardHolderName`, `CVV`, `ExpireDate`, `BillingStreet`, `BillingCity`, `BillingState`, `BillingZipCode`, `BillingCountry`, `CustomerID`) VALUES
(2221585961728168, 'Barbara Mundiya', '189', '2024-05', '951 Clopper Rd', 'Gaithersburg', 'MD', '20878', 'US', 4),
(2221693130831002, 'Pranit Crippen', '265', '2023-10', '5329 Baltimore Ave', 'Chevy Chase', 'MD', '20815', 'US', 9),
(2329265684647190, 'Chao Raeburn', '124', '2021-10', 'Po Box 989', 'Bluefield', 'VA', '24605', 'US', 6),
(2453360195698051, 'Tayler Brisset', '901', '2025-12', '230 Sunset Dr', 'Sedona', 'AZ', '86336', 'US', 5),
(2456541256431905, 'Hrutik Konke', '451', '2025-05', '2202 Haden St', 'Lynchburg', 'VA', '24501', 'US', 11),
(2536299727960491, 'Mirilla Shah', '548', '2021-02', '859 S 12th St #104', 'Cottonwood', 'AZ', '86326', 'US', 7),
(2720516617348529, 'Boothe Joshi', '305', '2022-06', '714 N Houcksville Rd', 'Hampstead', 'MD', '21074', 'US', 19),
(3425494588468815, 'Priya Duligall', '347', '2023-06', '2702 E Hopi Ave', 'Mesa', 'AZ', '85204', 'US', 2),
(4442393130831002, 'Lynnet Ronaldo', '241', '2024-12', '329 New York Ave', 'New York City', 'NY', '6632', 'US', 14),
(4539649680766082, 'Kay Normanell', '251', '2022-08', '816 W Main St', 'Danville', 'VA', '24541', 'US', 20),
(4916593995554630, 'Royce Bridgland', '364', '2021-05', '146 Village Rd', 'Chase City', 'VA', '23924', 'US', 10),
(4929916746771846, 'Demetria Deliwala', '365', '2020-11', '5055 E Somerset Dr', 'Cornville', 'AZ', '86325', 'US', 3),
(4934540544547521, 'Becky Dedhia', '586', '2021-01', '883 Jenkins Church Rd', 'Cumberland', 'VA', '23040', 'US', 12),
(5156729655599558, 'Helene Gockelen', '475', '2022-04', '8817 Sherando Dr', 'Bristow', 'VA', '20136', 'US', 1),
(5204308685378192, 'Messi Madeley', '671', '2025-01', '1221 S Eads St', 'Arlington', 'VA', '22202', 'US', 15),
(5278155521636932, 'Josh Penning', '269', '2025-11', '1727 Fountain Rock Way #C', 'Edgewood', 'MD', '21040', 'US', 8),
(5334883160148974, 'Komal Pannett', '521', '2020-12', '2001 Edmund Halley Dr', 'Reston', 'VA', '20191', 'US', 16),
(5419799522416149, 'Christine Alywin', '472', '2024-01', '8828 Western Hemlock Way', 'Lorton', 'VA', '22079', 'US', 18),
(6011237172767321, 'Scotty Ross', '278', '2023-11', '113 Buffalo Rd', 'Clarksville', 'VA', '23927', 'US', 13),
(6621693133331002, 'Morgun Patil', '265', '2023-12', '4329 Norwalk Drive', 'San Jose', 'San Jose', '42915', 'US', 17);

-- --------------------------------------------------------

--
-- Table structure for table `CUSTOMER`
--

CREATE TABLE `CUSTOMER` (
  `CustomerID` int(11) NOT NULL,
  `CustomerName` varchar(255) NOT NULL,
  `CustomerAddr` varchar(255) DEFAULT NULL,
  `PhoneNumber` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CUSTOMER`
--

INSERT INTO `CUSTOMER` (`CustomerID`, `CustomerName`, `CustomerAddr`, `PhoneNumber`) VALUES
(1, 'Helene Gockelen', '59033 Cardinal Alley', 2025804871),
(2, 'Priya Duligall', '1567 Merchant Terrace', 2025804872),
(3, 'Demetria Deliwala', '89 Kenwood Avenue', 2025804873),
(4, 'Barbara Mundiya', '0400 Green Ridge Alley', 2025804874),
(5, 'Tayler Brisset', '2 Main Hill', 2025804875),
(6, 'Chao Raeburn', '26 Badeau Alley', 2025804876),
(7, 'Mirilla Shah', '53 Surrey Road', 2025804877),
(8, 'Josh Penning', '525 Prairie Rose Lane', 2025804878),
(9, 'Pranit Crippen', '22023 Anniversary Pass', 2025804879),
(10, 'Royce Bridgland', '2129 Hoffman Parkway', 2025804870),
(11, 'Hrutik Konke', '10 Quincy Road', 2025804811),
(12, 'Becky Dedhia', '922 Sherman Park', 2025804821),
(13, 'Scotty Ross', '852 Cardinal Place', 2025804831),
(14, 'Lynnet Ronaldo', '16 Fulton Pass', 2025804841),
(15, 'Messi Madeley', '823 Nevada Way', 2025804851),
(16, 'Komal Pannett', '939 Pearson Terrace', 2025804861),
(17, 'Morgun Patil', '9235 Corben Trail', 2025804881),
(18, 'Christine Alywin', '0382 Union Center', 2025804891),
(19, 'Boothe Joshi', '6732 Fieldstone Parkway', 2025804171),
(20, 'Kay Normanell', '71 East Road', 2025802871);

-- --------------------------------------------------------

--
-- Table structure for table `EMPLOYEE`
--

CREATE TABLE `EMPLOYEE` (
  `Employee_ID` int(11) NOT NULL,
  `Store_ID` int(11) NOT NULL,
  `EmployeeName` varchar(255) DEFAULT NULL,
  `EmployeeAddress` varchar(255) DEFAULT NULL,
  `Phonenumber` varchar(255) NOT NULL,
  `JobTitle` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `EMPLOYEE`
--

INSERT INTO `EMPLOYEE` (`Employee_ID`, `Store_ID`, `EmployeeName`, `EmployeeAddress`, `Phonenumber`, `JobTitle`) VALUES
(1, 1, 'Skyla Rojas', '1271 Bond Street, Newport RI 02840', '(401) 760-9887', 'Captain'),
(2, 1, 'Destiny Owens', '5921 Giesela Dr, Harlem, GA 30814', '(706) 449-8130', 'Merchant'),
(3, 3, 'Harvey Peyton', '1567 Meadow Cir, Carpinteria, CA 93013', '(805) 684-9766', 'Crew'),
(4, 4, 'Peter Jeffery', '5300 Eugene Blvd, Snyder, TX 79549', '(325) 573-3984', 'Crew'),
(5, 5, 'Taylor Davies', '1005 Fuselage Ave, Middle River, MD 21220', '(410) 682-3955', 'Mate'),
(6, 6, 'Lucia Nguyen', '1327 Dd Hwy., Smithton, MO 65350', '(660) 343-5308', 'Crew'),
(7, 7, 'Silvio Rivas Perez', '122 Long Ln., New Braunfels, TX 78130', '(830) 609-2238', 'Merchant'),
(8, 8, 'Sarah Grace', '1628 W Saint Clair St, Vandalia, IL 62471', '(618) 283-4128', 'Captain'),
(9, 9, 'Rob Smith', '23753 S Keystone Way, Clinton Township, MI 48036', '(586) 477-09107', 'Captain'),
(10, 10, 'Emilia Singh', '201 Lexington Dr, Phoenixville, PA 19460', '(610) 933-4070', 'Mate');

-- --------------------------------------------------------

--
-- Table structure for table `Feedback`
--

CREATE TABLE `Feedback` (
  `FeedbackID` int(11) NOT NULL,
  `Description` varchar(1000) NOT NULL,
  `CustomerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Feedback`
--

INSERT INTO `Feedback` (`FeedbackID`, `Description`, `CustomerID`) VALUES
(1, 'Everything I need and want is there. The shop personnel are friendly and accommodating. The costs are reasonable, and I enjoy the benefits of being a club member!', 10),
(2, 'I will NEVER again order groceries from Trader Joe\'s, and I will warn everyone I know to stay away from your service. To the extent that I\'ve experienced today, I\'ve never had a problem like this with a company.', 11),
(3, 'Due to a $30 off offer, my wife and I chose to try your service. We canceled the delivery after placing the order and scheduling the time owing to a staffing shortage. I am aware of the circumstances and approved of the drop-rescheduling. off\'s However, because your system wasn\'t functioning properly and wouldn\'t let us just reschedule, we ultimately had to cancel the order. We likewise had to call and spent more than an hour on the phone attempting to figure this out (we followed the instructions provided).', 12),
(4, 'I\'ve been utilizing Trader Joe\'s delivery service for a while. Each experience was noticeably worse than the previous one—missing products, a four-hour delay in arrival, and total lack of contact.', 19),
(5, 'Every time I visit the produce section of Trader Joe\'s Food Store, where I shop a few times a week, it looks lovely, fresh, and appetizing', 8),
(6, 'They always deliver my orders on time and in full each time.', 2),
(7, 'Never go to Trader Joe\'s. I really dislike the service and so few items are available at all times!', 1),
(8, 'Avoid shopping at Trader Joe\'s. Nothing sold comes with a guarantee of fulfillment. Never again will I shop at Trader Joe\'s!', 15),
(9, 'Easy sign up, easy navigation. Expert service and support.', 16),
(10, 'I dont like their store. It always has rats', 17),
(11, 'Best customer service of any grocery store I\'ve been to anywhere in the country. Keep up the great work!', 3),
(12, 'I have been a frequent Trader Joe\'s shopper for many years, primarily purchasing groceries and occasionally using the pharmacy there. There are no grievances I can think of against them.', 10),
(13, 'I would like to say that for about two years, I have received assistance with my groceries twice a week, and I have been extremely happy with everything.', 18),
(14, 'It is much simpler for us to purchase all of our food and office supplies at Trader Joe\'s than through online delivery services. They help so well and perfectly with everything our office purchases, from cases of diet coke to paper towels.', 4),
(15, 'I love Trader Joe\'s fastest route technology, saves a lot of time!', 5);

-- --------------------------------------------------------

--
-- Table structure for table `IotSolution1`
--

CREATE TABLE `IotSolution1` (
  `BeaconID` int(11) NOT NULL,
  `Store_ID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `Employee_ID` int(11) NOT NULL,
  `ClockIn` time NOT NULL,
  `ClockOut` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `IotSolution1`
--

INSERT INTO `IotSolution1` (`BeaconID`, `Store_ID`, `CustomerID`, `Employee_ID`, `ClockIn`, `ClockOut`) VALUES
(1, 1, 13, 10, '09:03:12', '14:04:45'),
(2, 3, 9, 7, '11:20:23', '15:23:02'),
(3, 1, 3, 9, '09:01:49', '13:03:59'),
(4, 2, 2, 8, '10:02:52', '16:03:03'),
(5, 7, 3, 2, '09:03:12', '14:03:40'),
(6, 10, 5, 3, '13:30:50', '19:31:37'),
(7, 4, 11, 4, '12:27:50', '18:30:32'),
(8, 2, 14, 1, '12:45:00', '18:45:00'),
(9, 5, 3, 5, '10:00:58', '14:04:45'),
(10, 7, 1, 6, '15:03:29', '21:02:32');

-- --------------------------------------------------------

--
-- Table structure for table `IotSolution2`
--

CREATE TABLE `IotSolution2` (
  `SmartTagID` int(11) NOT NULL,
  `ItemID` int(11) NOT NULL,
  `SupplierID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `IotSolution2`
--

INSERT INTO `IotSolution2` (`SmartTagID`, `ItemID`, `SupplierID`) VALUES
(11, 1, 10),
(12, 2, 9),
(13, 3, 8),
(14, 4, 7),
(15, 5, 6),
(16, 6, 5),
(17, 7, 4),
(18, 8, 3),
(19, 9, 2),
(20, 10, 1),
(21, 10, 1),
(22, 9, 2),
(23, 8, 3),
(24, 7, 4),
(25, 6, 5),
(26, 5, 6),
(27, 4, 7),
(28, 3, 8),
(29, 2, 9);

-- --------------------------------------------------------

--
-- Table structure for table `ITEM`
--

CREATE TABLE `ITEM` (
  `ItemID` int(11) NOT NULL,
  `ItemName` varchar(255) NOT NULL,
  `ItemPrice` decimal(7,4) DEFAULT NULL,
  `SubstitutionID` int(11) NOT NULL,
  `SupplierID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ITEM`
--

INSERT INTO `ITEM` (`ItemID`, `ItemName`, `ItemPrice`, `SubstitutionID`, `SupplierID`) VALUES
(1, 'Non Dairy Oat Creamer', '1.9900', 13, 5),
(2, 'Evething Bagel', '2.7800', 2, 2),
(3, 'Focaccia Bread', '4.9900', 3, 10),
(4, 'Broccoli', '2.4900', 113, 7),
(5, 'Pasta Sauce', '3.1900', 50, 8),
(6, 'Hand Sanitizer', '1.9900', 332, 4),
(7, 'Naan Bread', '1.6900', 26, 3),
(8, 'Hot Chocolate', '3.5900', 703, 1),
(9, 'Brussel Sprout', '4.9900', 202, 6),
(10, 'Campari Tomato', '1.9900', 410, 9);

-- --------------------------------------------------------

--
-- Table structure for table `NOTIFICATION`
--

CREATE TABLE `NOTIFICATION` (
  `NotificationID` int(11) NOT NULL,
  `OrderID` int(11) NOT NULL,
  `ItemID` int(11) NOT NULL,
  `Employee_ID` int(11) NOT NULL,
  `AccountID` int(11) NOT NULL,
  `Message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `NOTIFICATION`
--

INSERT INTO `NOTIFICATION` (`NotificationID`, `OrderID`, `ItemID`, `Employee_ID`, `AccountID`, `Message`) VALUES
(11, 1110008880, 1, 1, 66, 'The substitution \'Value Corner Milk Reduced Fat 2%-1 Gallon\' is currently unavailable.'),
(14, 1133008883, 9, 7, 88, 'The substitution \'Lucerne Milk Reduced Fat 2% Milkfat-1 Gallon\' is currently unavailable.'),
(19, 1233008883, 10, 8, 100, 'The substitution \'Land O Lakes Eggs Organic Brown Large - 12 Count\' is currently unavailable.'),
(21, 1110008888, 7, 6, 33, 'The substitution \'Bosc Pear\' is currently unavailable.'),
(22, 1110008883, 2, 2, 77, 'The substitution \'Bartlett Pear\' is currently unavailable.'),
(23, 1110008889, 8, 9, 99, 'The substitution \'Green Seedless Grapes\' is currently unavailable.'),
(32, 1110008884, 3, 5, 55, 'The substitution \'Organic Valley Eggs Organic Large Brown - 12 Count\' is currently unavailable.'),
(45, 1110008885, 4, 3, 11, 'The substitution \'On The Vine Red Tomato\' is currently unavailable.'),
(55, 1110008886, 5, 4, 22, 'The substitution \'Green Seedless Grapes\' is currently unavailable.'),
(63, 1110008887, 6, 10, 44, 'The substitution \'Organic Red Roma Tomato\' is currently unavailable.');

-- --------------------------------------------------------

--
-- Table structure for table `ORDERDETAIL`
--

CREATE TABLE `ORDERDETAIL` (
  `OrderDetailID` int(11) NOT NULL,
  `ItemID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Discount` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ORDERDETAIL`
--

INSERT INTO `ORDERDETAIL` (`OrderDetailID`, `ItemID`, `Quantity`, `Discount`) VALUES
(1, 4, 2, '20 OFF'),
(2, 6, 5, '20 OFF'),
(3, 7, 8, '15 OFF'),
(4, 1, 2, '20 OFF'),
(5, 2, 5, '20 OFF'),
(6, 5, 8, '15 OFF'),
(7, 8, 22, '20 OFF'),
(8, 10, 45, '20 OFF'),
(9, 9, 18, '15 OFF'),
(10, 3, 10, '15 OFF');

-- --------------------------------------------------------

--
-- Table structure for table `ORDERS`
--

CREATE TABLE `ORDERS` (
  `OrderID` int(11) NOT NULL,
  `OrderDate` date NOT NULL,
  `Employee_ID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `Store_ID` int(11) NOT NULL,
  `TimeReceived` time DEFAULT NULL,
  `TimeCompleted` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ORDERS`
--

INSERT INTO `ORDERS` (`OrderID`, `OrderDate`, `Employee_ID`, `CustomerID`, `Store_ID`, `TimeReceived`, `TimeCompleted`) VALUES
(1110008880, '2022-11-20', 5, 13, 7, '15:01:00', '15:03:00'),
(1110008883, '2022-11-11', 6, 19, 9, '11:30:00', '11:32:00'),
(1110008884, '2022-11-14', 5, 4, 1, '19:27:00', '19:30:00'),
(1110008885, '2022-11-15', 1, 5, 1, '10:58:00', '11:00:00'),
(1110008886, '2022-11-16', 8, 2, 6, '16:49:00', '16:51:00'),
(1110008887, '2022-11-17', 4, 11, 5, '09:30:00', '09:34:00'),
(1110008888, '2022-11-18', 3, 8, 3, '14:44:00', '14:47:00'),
(1110008889, '2022-11-19', 9, 9, 8, '20:34:00', '20:38:00'),
(1133008883, '2022-11-13', 10, 10, 10, '12:01:00', '12:04:00'),
(1233008883, '2022-11-12', 7, 1, 4, '09:17:00', '09:19:00');

-- --------------------------------------------------------

--
-- Table structure for table `PAYMENT`
--

CREATE TABLE `PAYMENT` (
  `PaymentID` int(11) NOT NULL,
  `OrderID` int(11) NOT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `PaymentTime` datetime DEFAULT NULL,
  `TotalAmount` decimal(7,4) NOT NULL,
  `DiscountAmount` decimal(7,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PAYMENT`
--

INSERT INTO `PAYMENT` (`PaymentID`, `OrderID`, `Description`, `PaymentTime`, `TotalAmount`, `DiscountAmount`) VALUES
(1, 1110008880, 'VISA', '2018-08-26 01:00:00', '30.2800', '5.8800'),
(2, 1110008883, 'CASH', '2019-10-18 02:00:00', '28.7800', '3.2000'),
(3, 1110008884, 'MASTER', '2018-09-25 03:00:00', '39.3800', '4.8300'),
(4, 1110008885, 'CHECK', '2019-10-14 04:00:00', '40.7800', '4.6200'),
(5, 1110008886, 'CASH', '2020-01-20 05:00:00', '20.6100', '6.3700'),
(6, 1110008887, 'VISA', '2019-01-28 06:00:00', '29.9100', '4.0400'),
(7, 1110008888, 'APPLE PAY', '2019-01-20 07:00:00', '28.7100', '1.3900'),
(8, 1110008889, 'DISCOVERY', '2018-07-25 08:00:00', '33.2600', '1.7300'),
(9, 1133008883, 'APPLE PAY', '2020-09-03 00:00:00', '7.5800', '0.9800'),
(10, 1233008883, 'CASH', '2020-05-31 00:00:00', '10.2600', '2.4300');

-- --------------------------------------------------------

--
-- Table structure for table `STORE`
--

CREATE TABLE `STORE` (
  `Store_ID` int(11) NOT NULL,
  `StoreAddress` varchar(255) NOT NULL,
  `StorePhoneNumber` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `STORE`
--

INSERT INTO `STORE` (`Store_ID`, `StoreAddress`, `StorePhoneNumber`) VALUES
(1, '1489 New Britain Ave, West Hartford, CT 06110', '(243) 398-3502'),
(2, '400 Hebron Ave, Glastonbury, CT 06033', '(375) 458-7020'),
(3, '5605 Concord Pike, Wilmington, DE 19803', '(979) 354-2247'),
(4, '1600 S Milwaukee Ave, Libertyville, IL 60048', '(891) 405-2664'),
(5, '1211 Chicago Avenue, Evanston, IL 60202', '(498) 214-3995'),
(6, '483 N Harlem Ave, Oak Park, IL 60301', '(708) 327-9733'),
(7, '2500 Fashion Center Blvd., Newark, DE 19702', '(951) 895-2330'),
(8, '1914 14th St NW, Washington, DC 20009', '(272) 558-1075'),
(9, '6831 Wisconsin Ave, Bethesda, MD 20815', '(626) 695-9729'),
(10, '10076 Darnestown Rd, Rockville, MD 20850', '(558) 940-5709');

-- --------------------------------------------------------

--
-- Table structure for table `SUPPLIER`
--

CREATE TABLE `SUPPLIER` (
  `SupplierID` int(11) NOT NULL,
  `SupplierName` varchar(255) NOT NULL,
  `ContactNumber` varchar(10) NOT NULL,
  `EmailID` varchar(50) DEFAULT NULL,
  `Address` varchar(255) NOT NULL,
  `SupplierStatus` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SUPPLIER`
--

INSERT INTO `SUPPLIER` (`SupplierID`, `SupplierName`, `ContactNumber`, `EmailID`, `Address`, `SupplierStatus`) VALUES
(1, 'Vasudeva Marquart', '7799882760', 'vasudeva.marqu@arketmay.com', '2676 Hazy Barn Stead, Village Seven, IL 60602', 'Active'),
(2, 'Pallavi CONNECTION LLC', '9894542728', 'pallaconn@diaperstack.com', '9426 Quaking Prairie Road,\r\n    FALSE Pass,\r\n    MI 49049', 'Active'),
(3, 'Arthur Santora Family & Son', '8728676805', 'arth.santo@egl-inc.info', '3985 Colonial Nectar Byway, Ketchikan IL 61578', 'Active'),
(4, 'San Diego Produce', '6818770280', 'su.diego@progressenergyinc.info', '8252 High Rise Subdivision,\r\n    Gualala,\r\n    WV 25102', 'Active'),
(5, 'Patrick Zeng Farm', '7857033369', 'p_zen@egl-inc.info', '854 Sleepy Beacon Corners, Tillicum, KS 67593', 'Active'),
(6, 'Trader Jose Beer', '6165454262', 'dandegr@progressenergyinc.info', '7378 Golden Butterfly Thicket, Buckskin Joe, MI 49388', 'Active'),
(7, 'Tempest Hulett', '7819263588', 'tempes-hu@consolidated-farm-research.net', '806 Amber Mountain, Forest Crook, MA 02659', 'Active'),
(8, 'Arthur Jessen Produce', '6204682398', 'ar.jessen@autozone-inc.info', '9896 Cinder Bluff Pike, Dollar, KS 67428', 'Active'),
(9, 'Val Gillam', '3163682607', 'vagillam@egl-inc.info', '5570 Thunder Dell,\r\n    Cash,\r\n    CT 66345', 'Active'),
(10, 'Tristessa Company ', '9132095315', 'tri.c@consolidated-farm-research.net', '7807 Crystal Deer Street,\r\n    Winnebago,\r\n    KS 67272', 'Active');

-- --------------------------------------------------------

--
-- Stand-in structure for view `supplierinfo`
-- (See below for the actual view)
--
CREATE TABLE `supplierinfo` (
`SupplierName` varchar(255)
,`ContactNumber` varchar(10)
,`SupplierStatus` varchar(15)
,`SUM(ItemPrice)` decimal(29,4)
,`SmartTagID` bigint(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `supplierinformation`
-- (See below for the actual view)
--
CREATE TABLE `supplierinformation` (
`SupplierName` varchar(255)
,`ContactNumber` varchar(10)
,`SupplierStatus` varchar(15)
,`SUM(ItemPrice)` decimal(29,4)
,`SmartTagID` bigint(11)
);

-- --------------------------------------------------------

--
-- Structure for view `supplierinfo`
--
DROP TABLE IF EXISTS `supplierinfo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `supplierinfo`  AS SELECT `supplier`.`SupplierName` AS `SupplierName`, `supplier`.`ContactNumber` AS `ContactNumber`, `supplier`.`SupplierStatus` AS `SupplierStatus`, sum(`item`.`ItemPrice`) AS `SUM(ItemPrice)`, `iotsolution2`.`SmartTagID` AS `SmartTagID` FROM ((`supplier` join `item`) join `iotsolution2`) WHERE ((`supplier`.`SupplierID` = `item`.`SupplierID`) AND (`item`.`ItemID` = `iotsolution2`.`ItemID`) AND (`item`.`ItemName` = 'Campari Tomato') AND (`item`.`ItemID` = '10')) ;

-- --------------------------------------------------------

--
-- Structure for view `supplierinformation`
--
DROP TABLE IF EXISTS `supplierinformation`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `supplierinformation`  AS SELECT `supplier`.`SupplierName` AS `SupplierName`, `supplier`.`ContactNumber` AS `ContactNumber`, `supplier`.`SupplierStatus` AS `SupplierStatus`, sum(`item`.`ItemPrice`) AS `SUM(ItemPrice)`, `iotsolution2`.`SmartTagID` AS `SmartTagID` FROM ((`supplier` join `item`) join `iotsolution2`) WHERE ((`supplier`.`SupplierID` = `item`.`SupplierID`) AND (`item`.`ItemID` = `iotsolution2`.`ItemID`) AND (`item`.`ItemName` = 'Campari Tomato')) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Account`
--
ALTER TABLE `Account`
  ADD PRIMARY KEY (`AccountID`),
  ADD KEY `Account_FK` (`CustomerID`);

--
-- Indexes for table `CARDDETAIL`
--
ALTER TABLE `CARDDETAIL`
  ADD PRIMARY KEY (`CardNumber`),
  ADD KEY `Carddetail_FK` (`CustomerID`);

--
-- Indexes for table `CUSTOMER`
--
ALTER TABLE `CUSTOMER`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `EMPLOYEE`
--
ALTER TABLE `EMPLOYEE`
  ADD PRIMARY KEY (`Employee_ID`),
  ADD KEY `FK_EmployeeStore` (`Store_ID`);

--
-- Indexes for table `Feedback`
--
ALTER TABLE `Feedback`
  ADD PRIMARY KEY (`FeedbackID`),
  ADD KEY `Feedback_FK` (`CustomerID`);

--
-- Indexes for table `IotSolution1`
--
ALTER TABLE `IotSolution1`
  ADD PRIMARY KEY (`BeaconID`),
  ADD KEY `IotSolution1_FK1` (`Store_ID`),
  ADD KEY `IotSolution1_FK2` (`CustomerID`),
  ADD KEY `IotSolution1_FK3` (`Employee_ID`),
  ADD KEY `ClockOut` (`ClockOut`),
  ADD KEY `ClockIn` (`ClockIn`);

--
-- Indexes for table `IotSolution2`
--
ALTER TABLE `IotSolution2`
  ADD PRIMARY KEY (`SmartTagID`),
  ADD KEY `IotSolution2_FK1` (`ItemID`),
  ADD KEY `IotSolution2_FK2` (`SupplierID`);

--
-- Indexes for table `ITEM`
--
ALTER TABLE `ITEM`
  ADD PRIMARY KEY (`ItemID`),
  ADD KEY `ITEM_FK1` (`SupplierID`);

--
-- Indexes for table `NOTIFICATION`
--
ALTER TABLE `NOTIFICATION`
  ADD PRIMARY KEY (`NotificationID`),
  ADD KEY `Notification_FK1` (`AccountID`),
  ADD KEY `Notification_FK2` (`ItemID`),
  ADD KEY `Notification_FK3` (`Employee_ID`),
  ADD KEY `Notification_FK4` (`OrderID`);

--
-- Indexes for table `ORDERDETAIL`
--
ALTER TABLE `ORDERDETAIL`
  ADD PRIMARY KEY (`OrderDetailID`),
  ADD KEY `Orderdetail_FK1` (`ItemID`);

--
-- Indexes for table `ORDERS`
--
ALTER TABLE `ORDERS`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `Orders_FK1` (`Employee_ID`),
  ADD KEY `Orders_FK2` (`CustomerID`),
  ADD KEY `Orders_FK3` (`Store_ID`);

--
-- Indexes for table `PAYMENT`
--
ALTER TABLE `PAYMENT`
  ADD PRIMARY KEY (`PaymentID`),
  ADD KEY `Payment_FK` (`OrderID`);

--
-- Indexes for table `STORE`
--
ALTER TABLE `STORE`
  ADD PRIMARY KEY (`Store_ID`);

--
-- Indexes for table `SUPPLIER`
--
ALTER TABLE `SUPPLIER`
  ADD PRIMARY KEY (`SupplierID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Account`
--
ALTER TABLE `Account`
  ADD CONSTRAINT `Account_FK` FOREIGN KEY (`CustomerID`) REFERENCES `CUSTOMER` (`CustomerID`);

--
-- Constraints for table `CARDDETAIL`
--
ALTER TABLE `CARDDETAIL`
  ADD CONSTRAINT `Carddetail_FK` FOREIGN KEY (`CustomerID`) REFERENCES `Customer` (`CustomerID`);

--
-- Constraints for table `EMPLOYEE`
--
ALTER TABLE `EMPLOYEE`
  ADD CONSTRAINT `FK_EmployeeStore` FOREIGN KEY (`Store_ID`) REFERENCES `STORE` (`Store_ID`);

--
-- Constraints for table `Feedback`
--
ALTER TABLE `Feedback`
  ADD CONSTRAINT `Feedback_FK` FOREIGN KEY (`CustomerID`) REFERENCES `CUSTOMER` (`CustomerID`);

--
-- Constraints for table `IotSolution1`
--
ALTER TABLE `IotSolution1`
  ADD CONSTRAINT `IotSolution1_FK1` FOREIGN KEY (`Store_ID`) REFERENCES `STORE` (`Store_ID`),
  ADD CONSTRAINT `IotSolution1_FK2` FOREIGN KEY (`CustomerID`) REFERENCES `CUSTOMER` (`CustomerID`),
  ADD CONSTRAINT `IotSolution1_FK3` FOREIGN KEY (`Employee_ID`) REFERENCES `EMPLOYEE` (`Employee_ID`);

--
-- Constraints for table `IotSolution2`
--
ALTER TABLE `IotSolution2`
  ADD CONSTRAINT `IotSolution2_FK1` FOREIGN KEY (`ItemID`) REFERENCES `ITEM` (`ItemID`),
  ADD CONSTRAINT `IotSolution2_FK2` FOREIGN KEY (`SupplierID`) REFERENCES `SUPPLIER` (`SupplierID`);

--
-- Constraints for table `ITEM`
--
ALTER TABLE `ITEM`
  ADD CONSTRAINT `ITEM_FK1` FOREIGN KEY (`SupplierID`) REFERENCES `SUPPLIER` (`SupplierID`);

--
-- Constraints for table `NOTIFICATION`
--
ALTER TABLE `NOTIFICATION`
  ADD CONSTRAINT `Notification_FK1` FOREIGN KEY (`AccountID`) REFERENCES `Account` (`AccountID`),
  ADD CONSTRAINT `Notification_FK2` FOREIGN KEY (`ItemID`) REFERENCES `ITEM` (`ItemID`),
  ADD CONSTRAINT `Notification_FK3` FOREIGN KEY (`Employee_ID`) REFERENCES `EMPLOYEE` (`Employee_ID`),
  ADD CONSTRAINT `Notification_FK4` FOREIGN KEY (`OrderID`) REFERENCES `ORDERS` (`OrderID`);

--
-- Constraints for table `ORDERDETAIL`
--
ALTER TABLE `ORDERDETAIL`
  ADD CONSTRAINT `Orderdetail_FK1` FOREIGN KEY (`ItemID`) REFERENCES `ITEM` (`ItemID`);

--
-- Constraints for table `ORDERS`
--
ALTER TABLE `ORDERS`
  ADD CONSTRAINT `Orders_FK1` FOREIGN KEY (`Employee_ID`) REFERENCES `EMPLOYEE` (`Employee_ID`),
  ADD CONSTRAINT `Orders_FK2` FOREIGN KEY (`CustomerID`) REFERENCES `CUSTOMER` (`CustomerID`),
  ADD CONSTRAINT `Orders_FK3` FOREIGN KEY (`Store_ID`) REFERENCES `STORE` (`Store_ID`);

--
-- Constraints for table `PAYMENT`
--
ALTER TABLE `PAYMENT`
  ADD CONSTRAINT `Payment_FK` FOREIGN KEY (`OrderID`) REFERENCES `ORDERS` (`OrderID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
