CREATE TABLE `M_CUSTOMER` (
  `CUSTOMER_NO` int(11) NOT NULL AUTO_INCREMENT,
  `CUSTOMER_NAME_KJ` varchar(100) DEFAULT NULL,
  `CUSTOMER_NAME_KN` varchar(100) DEFAULT NULL,
  `CUSTOMER_BIRTHDAY` date DEFAULT NULL,
  `ZIP_CD` varchar(10) DEFAULT NULL,
  `ADDRESS` varchar(300) DEFAULT NULL,
  `TEL_NO` varchar(11) DEFAULT NULL,
  `MAIL_ADDRESS` varchar(100) DEFAULT NULL,
  `PASSWORD` varchar(100) DEFAULT NULL,
  `CUSTOMER_RANK` int(11) DEFAULT NULL,
  `IS_DELETE` int(11) DEFAULT 0,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_ID` varchar(8) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_ID` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`CUSTOMER_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;