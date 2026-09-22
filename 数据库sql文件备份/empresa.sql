/*
Navicat MySQL Data Transfer

Source Server         : MySQLDB
Source Server Version : 50647
Source Host           : localhost:3306
Source Database       : empresa

Target Server Type    : MYSQL
Target Server Version : 50647
File Encoding         : 65001

Date: 2022-05-06 14:18:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `deptId` int(11) NOT NULL AUTO_INCREMENT,
  `deptName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`deptId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', '销售部');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `empId` int(11) NOT NULL AUTO_INCREMENT,
  `empName` varchar(20) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `dept_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`empId`),
  KEY `FK4722E6AE4AE752D4` (`dept_Id`),
  CONSTRAINT `FK4722E6AE4AE752D4` FOREIGN KEY (`dept_Id`) REFERENCES `dept` (`deptId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', 'fretty', '4000', '1');
INSERT INTO `employee` VALUES ('2', 'brook', '3500', '1');

-- ----------------------------
-- Table structure for employee_copy1
-- ----------------------------
DROP TABLE IF EXISTS `employee_copy1`;
CREATE TABLE `employee_copy1` (
  `empId` int(11) NOT NULL AUTO_INCREMENT,
  `empName` varchar(20) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `dept_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`empId`),
  KEY `FK4722E6AE4AE752D4` (`dept_Id`),
  CONSTRAINT `employee_copy1_ibfk_1` FOREIGN KEY (`dept_Id`) REFERENCES `dept` (`deptId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee_copy1
-- ----------------------------
INSERT INTO `employee_copy1` VALUES ('1', 'fretty', '4000', '1');
INSERT INTO `employee_copy1` VALUES ('2', 'brook', '3500', '1');

-- ----------------------------
-- Table structure for t_dept
-- ----------------------------
DROP TABLE IF EXISTS `t_dept`;
CREATE TABLE `t_dept` (
  `deptId` int(11) NOT NULL AUTO_INCREMENT,
  `deptName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`deptId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dept
-- ----------------------------
INSERT INTO `t_dept` VALUES ('1', '人事部');
INSERT INTO `t_dept` VALUES ('2', '财政部');
INSERT INTO `t_dept` VALUES ('3', '研发部');
INSERT INTO `t_dept` VALUES ('5', '行政部');
INSERT INTO `t_dept` VALUES ('6', '销售部');

-- ----------------------------
-- Table structure for t_employee
-- ----------------------------
DROP TABLE IF EXISTS `t_employee`;
CREATE TABLE `t_employee` (
  `empId` int(11) NOT NULL AUTO_INCREMENT,
  `empName` varchar(20) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `dept_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`empId`),
  KEY `FKFDCF5A194AE752D4` (`dept_Id`),
  CONSTRAINT `FKFDCF5A194AE752D4` FOREIGN KEY (`dept_Id`) REFERENCES `t_dept` (`deptId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_employee
-- ----------------------------
INSERT INTO `t_employee` VALUES ('1', 'Jack', '3000', '1');
INSERT INTO `t_employee` VALUES ('2', 'John', '3500', '1');
INSERT INTO `t_employee` VALUES ('7', 'margret', '3500', '3');
INSERT INTO `t_employee` VALUES ('8', 'randlo', '3000', '3');
INSERT INTO `t_employee` VALUES ('9', 'Jackline', '2000', '2');
INSERT INTO `t_employee` VALUES ('10', 'cedrid', '3500', '2');
INSERT INTO `t_employee` VALUES ('12', 'Crook', '3500', '5');
INSERT INTO `t_employee` VALUES ('13', '朱美丽', '1000', '2');
INSERT INTO `t_employee` VALUES ('14', '年大力', '2000', '2');
INSERT INTO `t_employee` VALUES ('15', 'fretty', '4000', '6');
INSERT INTO `t_employee` VALUES ('16', 'brook', '3500', '6');
INSERT INTO `t_employee` VALUES ('19', 'Betty', '3000', '2');
INSERT INTO `t_employee` VALUES ('20', 'Benny', '2000', '2');
