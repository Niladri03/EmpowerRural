CREATE DATABSE project_db;

-- TABLE 01 

DROP TABLE IF EXISTS `user_master`;
CREATE TABLE IF NOT EXISTS `user_master` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` varchar(30) NOT NULL,
  `USER_NAME` varchar(50) NOT NULL,
  `USER_GENDER` enum('MALE','FEMALE','OTHER') DEFAULT 'MALE',
  `USER_DOB` date NOT NULL,
  `USER_ADDRESS` varchar(200) NOT NULL,
  `USER_DISTRICT` varchar(50) NOT NULL,
  `USER_PIN` int(11) NOT NULL,
  `USER_BLOCK` varchar(30) DEFAULT NULL,
  `USER_EMAIL` varchar(50) NOT NULL,
  `USER_MOBILE` varchar(15) NOT NULL,
  `CENTRE_CODE` varchar(15) DEFAULT NULL,
  `BANK_ACC` varchar(20) NOT NULL,
  `BANK_IFSC` varchar(20) NOT NULL,
  `BANK_NAME` varchar(50) NOT NULL,
  `BANK_BRANCH` varchar(50) NOT NULL,
  `BANK_HOLDER` varchar(30) NOT NULL,
  `USER_ROLE` enum('1','2','3','4','5','6') DEFAULT '2',
  `USER_STATUS` enum('ACTIVE','INACTIVE') DEFAULT 'ACTIVE',
  `SECURITY_QS` varchar(50) NOT NULL,
  `SECURITY_ANS` varchar(50) NOT NULL,
  `ENTRY_USER` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `USER_ID` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `user_master` VALUES ('1', 'admin', 'Niladri Khan', 'MALE', '2003-07-24', 'Salt Lake', 'Kolkata', '700064', 'Bidhannagar', 'niladri.khan03@gmail.com', '9350778825', '3333', '3333', '333', 'SBI', 'Salt Lake', 'niladri', '2', 'ACTIVE', 'aaaa', 'bbbb')

-- TABLE 02

DROP TABLE IF EXISTS `login_master`;
CREATE TABLE IF NOT EXISTS `login_master` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` varchar(30) NOT NULL,
  `USER_NAME` varchar(50) NOT NULL,
  `USER_ROLE` enum('1','2','3','4','5','6') DEFAULT '2',
  `USER_STATUS` enum('ACTIVE','INACTIVE') DEFAULT NULL,
  `USER_PW` varchar(30) DEFAULT 'vle#123',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `USER_ID` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
--

-- Trigger 01

CREATE TRIGGER user_login_creation 
  AFTER INSERT ON user_master
  FOR EACH ROW   
  Insert into login_master (USER_ID,USER_NAME,USER_ROLE,USER_STATUS)
  VALUES(new.USER_ID,new.USER_NAME,new.USER_ROLE,new.USER_STATUS);


-- TABLE 03

DROP TABLE IF EXISTS `district_master`;
CREATE TABLE IF NOT EXISTS `district_master` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DISTRICT_CODE` varchar(10) NOT NULL,
  `DISTRICT_NAME` varchar(50) NOT NULL,
  `USER_ID` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `DISTRICT_CODE` (`DISTRICT_CODE`),
  KEY `USER_ID` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-- TABLE 04

DROP TABLE IF EXISTS `block_master`;
CREATE TABLE IF NOT EXISTS `block_master` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BLOCK_CODE` varchar(10) NOT NULL,
  `DISTRICT_CODE` varchar(10) NOT NULL,
  `BLOCK_NAME` varchar(50) NOT NULL,
  `USER_ID` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `BLOCK_CODE` (`BLOCK_CODE`),
  KEY `DISTRICT_CODE` (`DISTRICT_CODE`),
  KEY `USER_ID` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- TABLE 05

DROP TABLE IF EXISTS `department_master`;
CREATE TABLE IF NOT EXISTS `department_master` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEPT_CODE` varchar(10) NOT NULL,
  `DEPT_NAME` varchar(100) NOT NULL,
  `DEPT_STATUS` varchar(20) NOT NULL,
  `USER_ID` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `DEPT_CODE` (`DEPT_CODE`),
  KEY `USER_ID` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- TABLE 06

DROP TABLE IF EXISTS `service_master`;
CREATE TABLE IF NOT EXISTS `service_master` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SERVICE_CODE` varchar(10) NOT NULL,
  `SERVICE_NAME` varchar(100) NOT NULL,
  `DEPT_CODE` varchar(10) NOT NULL,
  `SERVICE_DESC` varchar(100) NOT NULL,
  `SERVICE_STATUS` varchar(20) NOT NULL,
  `SERVICE_CHARGE` float NOT NULL,
  `VLE_COMMISSION` float NOT NULL,
  `SERVICE_REMARKS` varchar(100) DEFAULT NULL,
  `USER_ID` varchar(30) NOT NULL,
  `URL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `SERVICE_CODE` (`SERVICE_CODE`),
  KEY `DEPT_CODE` (`DEPT_CODE`),
  KEY `USER_ID` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- TABLE 07

DROP TABLE IF EXISTS `centre_master`;
CREATE TABLE IF NOT EXISTS `centre_master` (
  `CENTRE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CENTRE_CODE` varchar(10) NOT NULL,
  `CENTRE_NAME` varchar(100) NOT NULL,
  `DISTRICT_CODE` varchar(10) NOT NULL,
  `CENTRE_PIN` int(11) NOT NULL,
  `BLOCK_CODE` varchar(10) NOT NULL,
  `CENTRE_STATUS` varchar(20) NOT NULL,
  `CENTRE_DATE` date NOT NULL,
  `CENTRE_ADDRESS` varchar(100) NOT NULL,
  `CENTRE_LAT` varchar(10) NOT NULL,
  `CENTRE_LON` varchar(10) NOT NULL,
  `USER_ID` varchar(30) NOT NULL,
  PRIMARY KEY (`CENTRE_ID`),
  UNIQUE KEY `CENTRE_CODE` (`CENTRE_CODE`),
  KEY `BLOCK_CODE` (`BLOCK_CODE`),
  KEY `USER_ID` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- TABLE 08

DROP TABLE IF EXISTS `user_log`;
CREATE TABLE IF NOT EXISTS `user_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` varchar(30) NOT NULL,
  `LOG_DATE_TIME` timestamp NOT NULL DEFAULT current_timestamp(),
  `LOG_IP` varchar(20) NOT NULL,
  `LOG_DEVICE_NAME` varchar(30) NOT NULL,
  `LOG_DEVICE_TYPE` varchar(400) NOT NULL,
  `LOG_REMARKS` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `USER_ID` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- TABLE 09

DROP TABLE IF EXISTS `contact_us`;
CREATE TABLE IF NOT EXISTS `contact_us` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_NAME` varchar(30) NOT NULL,
  `PHONE` varchar(30) NOT NULL,
  `EMAIL_ID` varchar(100) NOT NULL,
  `QUERY_DETAIL` varchar(300) NOT NULL,
  `REMARKS` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- TABLE 10

DROP TABLE IF EXISTS `citizen_master`;
CREATE TABLE IF NOT EXISTS `citizen_master` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CITIZEN_NAME` varchar(30) NOT NULL,
  `CITIZEN_MOBILE` varchar(13) NOT NULL,
  `CITIZEN_ADDRESS` varchar(150) NOT NULL,
  `CITIZEN_PIN` int(11) NOT NULL,
  `CITIZEN_AGE` int(11) NOT NULL,
  `CITIZEN_GENDER` varchar(20) NOT NULL,
  `DISTRICT_NAME` varchar(30) NOT NULL,
  `BLOCK_NAME` varchar(30) NOT NULL,
  `ID_TYPE` varchar(30) NOT NULL,
  `ID_NO` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- TABLE 11

DROP TABLE IF EXISTS `provisions`;
CREATE TABLE IF NOT EXISTS `provisions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SERVICE_CODE` varchar(30) NOT NULL,
  `CITIZEN_NAME` varchar(30) NOT NULL,
  `CITIZEN_MOBILE` varchar(13) NOT NULL,
  `SERVICE_DATE` date NOT NULL DEFAULT curdate(),
  `CENTER_CODE` varchar(15) NOT NULL,
  `USER_ID` varchar(30) NOT NULL,
  `SERVICE_CHARGE` float NOT NULL,
  `SERVICE_COMMISSION` float NOT NULL,
  `REMARKS` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-----------------------------------------------------------------------

