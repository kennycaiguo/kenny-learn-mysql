/*
Navicat MySQL Data Transfer

Source Server         : MySQLDB
Source Server Version : 50647
Source Host           : localhost:3306
Source Database       : mybatisdb

Target Server Type    : MYSQL
Target Server Version : 50647
File Encoding         : 65001

Date: 2022-05-06 14:21:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `ID` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES ('1', 'Jack', '33');
INSERT INTO `customers` VALUES ('3', 'Jackline', '40');
INSERT INTO `customers` VALUES ('2', 'Jade', '45');
INSERT INTO `customers` VALUES ('4', 'Pauline', '52');

-- ----------------------------
-- Table structure for emps
-- ----------------------------
DROP TABLE IF EXISTS `emps`;
CREATE TABLE `emps` (
  `empno` int(11) NOT NULL,
  `ename` varchar(20) DEFAULT NULL,
  `mgr` int(5) DEFAULT NULL,
  PRIMARY KEY (`empno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emps
-- ----------------------------
INSERT INTO `emps` VALUES ('1', 'aa', '5');
INSERT INTO `emps` VALUES ('2', 'bb', '5');
INSERT INTO `emps` VALUES ('3', 'cc', '6');
INSERT INTO `emps` VALUES ('4', 'dd', '6');
INSERT INTO `emps` VALUES ('5', 'ee', '7');
INSERT INTO `emps` VALUES ('6', 'ff', '7');
INSERT INTO `emps` VALUES ('7', 'gg', '9');
INSERT INTO `emps` VALUES ('8', 'hh', '9');
INSERT INTO `emps` VALUES ('9', 'ii', null);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `ISBN` varchar(10) NOT NULL,
  `PRICE` int(10) NOT NULL,
  `CUSTOMERS_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CUSTOMERS_ID_FK` (`CUSTOMERS_ID`),
  CONSTRAINT `CUSTOMERS_ID_FK` FOREIGN KEY (`CUSTOMERS_ID`) REFERENCES `customers` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', 'isbn100', '100', '1');
INSERT INTO `orders` VALUES ('2', 'isbn200', '120', '1');
INSERT INTO `orders` VALUES ('3', 'isbn100', '100', '1');
INSERT INTO `orders` VALUES ('4', 'isbn200', '120', '2');
INSERT INTO `orders` VALUES ('5', 'isbn100', '100', '2');
INSERT INTO `orders` VALUES ('6', 'isbn100', '100', '3');

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` int(5) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `sal` double(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES ('1', 'Sharon', '2000.00');
INSERT INTO `students` VALUES ('2', 'pussy', '1000.00');
INSERT INTO `students` VALUES ('3', 'vagina', '1000.00');
INSERT INTO `students` VALUES ('4', 'pussylips', '1000.00');
INSERT INTO `students` VALUES ('5', 'clitoris', '1000.00');
INSERT INTO `students` VALUES ('6', 'Mike', '2000.00');
INSERT INTO `students` VALUES ('7', 'Miky', '2000.00');
INSERT INTO `students` VALUES ('8', 'Mik', '2000.00');
INSERT INTO `students` VALUES ('9', 'Micke', '2000.00');
INSERT INTO `students` VALUES ('10', 'Mile', '2000.00');
INSERT INTO `students` VALUES ('11', 'Mide', '2000.00');
INSERT INTO `students` VALUES ('12', 'Miwe', '2000.00');
INSERT INTO `students` VALUES ('13', 'Mise', '2000.00');
INSERT INTO `students` VALUES ('14', 'Mihe', '2000.00');
INSERT INTO `students` VALUES ('15', 'Mige', '2000.00');

-- ----------------------------
-- Table structure for students2
-- ----------------------------
DROP TABLE IF EXISTS `students2`;
CREATE TABLE `students2` (
  `stu_id` int(11) NOT NULL,
  `stu_name` varchar(20) DEFAULT NULL,
  `stu_sal` double(10,0) DEFAULT NULL,
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of students2
-- ----------------------------
INSERT INTO `students2` VALUES ('1', 'Mike', '2000');
INSERT INTO `students2` VALUES ('2', null, null);
INSERT INTO `students2` VALUES ('3', 'pussycat dolls', '1500');
INSERT INTO `students2` VALUES ('4', 'pussy licker', '1500');
INSERT INTO `students2` VALUES ('5', 'pussy', null);
INSERT INTO `students2` VALUES ('6', '牛人', '3000');
INSERT INTO `students2` VALUES ('7', 'Miky', '2000');
INSERT INTO `students2` VALUES ('8', 'Mik', '2000');
INSERT INTO `students2` VALUES ('9', 'Micke', '2000');
INSERT INTO `students2` VALUES ('10', 'Mile', '2300');
INSERT INTO `students2` VALUES ('11', 'Mide', '2000');
INSERT INTO `students2` VALUES ('12', 'Miwe', '2000');
INSERT INTO `students2` VALUES ('13', 'Mise', '2000');
INSERT INTO `students2` VALUES ('14', 'Mihe', '2000');
INSERT INTO `students2` VALUES ('15', 'Mige', '2000');
INSERT INTO `students2` VALUES ('17', 'pussy sucker', '1500');

-- ----------------------------
-- Table structure for stus
-- ----------------------------
DROP TABLE IF EXISTS `stus`;
CREATE TABLE `stus` (
  `sid` int(11) NOT NULL,
  `sname` varchar(12) DEFAULT NULL,
  `ssal` double(8,2) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stus
-- ----------------------------
INSERT INTO `stus` VALUES ('1', 'pussy sucker', '1500.00');
