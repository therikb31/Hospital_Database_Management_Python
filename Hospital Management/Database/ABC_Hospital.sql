-- MySQL dump 10.13  Distrib 5.5.16, for Win64 (x86)
--
-- Host: localhost    Database: ABC_Hospital
-- ------------------------------------------------------
-- Server version	5.5.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment` (
  `PID` varchar(3) NOT NULL,
  `DID` varchar(3) DEFAULT NULL,
  `ApptDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES ('P01','D07','2019-11-09 13:39:57'),('P02','D01','2019-11-08 16:00:30'),('P03','D01','2019-11-09 13:21:06'),('P04','D30','2019-11-10 15:30:26'),('P06','D02','2019-11-13 14:36:08'),('P07','D02','2019-11-13 14:39:05');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor` (
  `DID` varchar(3) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Specialist` varchar(30) DEFAULT NULL,
  `Experiance` int(11) DEFAULT NULL,
  `Charge` int(11) DEFAULT NULL,
  `Timing` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`DID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES ('D01','Dr.Susanket Dutta','General Physician',2,200,'08AM - 11AM'),('D02','Dr.Pragyashree Chauhan','General Physician',5,500,'12PM-2PM'),('D03','DR.jean','General Physician',3,400,'5PM-4PM'),('D04','DR.Jessica','Cardiologist',8,2000,'10AM-01PM'),('D05','DR.Sarai','Cardiologist',5,1100,'2PM-4PM'),('D06','DR.Avah','Cardiologist',2,900,'5PM-4PM'),('D07','DR.Rachale','Neurologist',8,1700,'10AM-01PM'),('D08','DR.Matias','Neurologist',4,1000,'2PM-4PM'),('D09','DR.Sloane','Neurologist',3,600,'5PM-4PM'),('D10','DR.Ariana','Gynecologist',10,1200,'10AM-01PM'),('D11','DR.Kyleanee','Gynecologist',6,950,'2PM-4PM'),('D12','DR.Tara','Gynecologist',3,540,'5PM-4PM'),('D13','DR.Avah','Orthologist',7,1000,'10AM-01PM'),('D14','DR.David','Orthologist',5,750,'2PM-4PM'),('D15','DR.Iliana','Orthologist',2,480,'5PM-4PM'),('D16','DR.lalita','ENT Specialist',9,900,'10AM-01PM'),('D17','DR.Swaraj','ENT Specialist',4,550,'2PM-4PM'),('D18','DR.Narayan','ENT Specialist',3,480,'5PM-4PM'),('D19','DR.Amitabha','Dermatologist',8,1800,'10AM-01PM'),('D20','DR.Nitin','Dermatologist',4,950,'2PM-4PM'),('D21','DR.Ashutosh','Dermatologist',2,580,'5PM-4PM'),('D22','DR.kashi','Dietitian',9,1000,'10AM-01PM'),('D23','DR.Sonakshi','Dietitian',5,650,'2PM-4PM'),('D24','DR.sumvo','Dietitian',2,440,'5PM-4PM'),('D25','DR.Rajesh','Dietitan',8,2100,'10AM-01PM'),('D26','DR.Deepak','Dietitan',4,950,'2PM-4PM'),('D27','DR.Suprotim','Dietitan',2,520,'5PM-4PM'),('D28','DR.S.B.Sing','Psychologist',7,1000,'10AM-01PM'),('D29','DR.Arunovo','Psychologist',4,750,'2PM-4PM'),('D30','DR.Javed','Psychologist',2,480,'5PM-4PM');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor_info`
--

DROP TABLE IF EXISTS `doctor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor_info` (
  `Doctor_ID` varchar(4) NOT NULL,
  `Doctor_Name` varchar(50) DEFAULT NULL,
  `Doctor_Address` varchar(50) DEFAULT NULL,
  `Specialist` varchar(50) DEFAULT NULL,
  `Sex` varchar(6) DEFAULT NULL,
  `Date_Of_Birth` date DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Doctor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor_info`
--

LOCK TABLES `doctor_info` WRITE;
/*!40000 ALTER TABLE `doctor_info` DISABLE KEYS */;
INSERT INTO `doctor_info` VALUES ('D01','Dr.Anupam Roy','Durgapur','General Physician','Male','2000-01-12','8659849571'),('D02','Dr.Adrija Sen','Durgapur','Cardiac Surgeon','Female','1985-08-06','9657829570'),('D03','Dr.Anupama Mondol','Kolkata','Neurologist','Female','1988-05-21','8137829873');
/*!40000 ALTER TABLE `doctor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `EID` varchar(4) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Sex` varchar(1) DEFAULT NULL,
  `Department` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`EID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('E01','Rik Biswas','M','Technology'),('E02','Ashif','M','Design'),('E03','Ayan','M','Printing'),('E04','Bong Guy','M','Youtube');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_info`
--

DROP TABLE IF EXISTS `patient_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient_info` (
  `Patient_ID` varchar(5) NOT NULL,
  `Patient_Name` varchar(50) DEFAULT NULL,
  `Patient_Address` varchar(50) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Sex` varchar(6) DEFAULT NULL,
  `Blood_Group` varchar(5) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Date_Of_Registration` datetime DEFAULT NULL,
  PRIMARY KEY (`Patient_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_info`
--

LOCK TABLES `patient_info` WRITE;
/*!40000 ALTER TABLE `patient_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration` (
  `PID` varchar(3) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PhNumber` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`PID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
INSERT INTO `registration` VALUES ('P01','Suranjan Das',17,'Male','2019-11-08 15:46:24','9876543210'),('P02','Satyam Mallick',18,'Male','2019-11-08 15:52:12','9123456780'),('P03','Arun Chakraborty',75,'Male','2019-11-08 16:32:55','9333824716'),('P04','Jeet Gupta',18,'M','2019-11-10 15:28:35','9933064650'),('P05','asutosh',1,'M','2019-11-13 12:19:22','9273180180'),('P06','Patient1',22,'F','2019-11-13 14:35:06','0123456789'),('P07','Patient1',22,'F','2019-11-13 14:38:47','0123456789');
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salary` (
  `EID` varchar(4) NOT NULL,
  `Salary` int(11) DEFAULT NULL,
  `Pay_Frequency` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`EID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

LOCK TABLES `salary` WRITE;
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` VALUES ('E01',10000000,'Monthly');
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `PID` varchar(3) NOT NULL,
  `Dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`PID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test2`
--

DROP TABLE IF EXISTS `test2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test2` (
  `Eid` int(11) DEFAULT NULL,
  `DT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test2`
--

LOCK TABLES `test2` WRITE;
/*!40000 ALTER TABLE `test2` DISABLE KEYS */;
INSERT INTO `test2` VALUES (1,'2019-11-08 15:36:35');
/*!40000 ALTER TABLE `test2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-14 23:25:46
