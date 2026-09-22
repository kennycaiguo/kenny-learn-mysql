/*
Navicat MySQL Data Transfer

Source Server         : MySQLDB
Source Server Version : 50647
Source Host           : localhost:3306
Source Database       : springdb

Target Server Type    : MYSQL
Target Server Version : 50647
File Encoding         : 65001

Date: 2022-05-06 14:22:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'liming', '12345');
INSERT INTO `admin` VALUES ('2', 'rose', '12345');
INSERT INTO `admin` VALUES ('3', 'Jack', '12345');
INSERT INTO `admin` VALUES ('4', 'pauline', '12345');
INSERT INTO `admin` VALUES ('5', '李连杰', '12345');
INSERT INTO `admin` VALUES ('6', '李丽珍', '12345');
INSERT INTO `admin` VALUES ('7', '马云', '12345');

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `deptId` int(11) NOT NULL AUTO_INCREMENT,
  `deptName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`deptId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', '应用开发部');
INSERT INTO `dept` VALUES ('2', '行政部');
INSERT INTO `dept` VALUES ('3', '软件测试部');
INSERT INTO `dept` VALUES ('4', '销售部');
INSERT INTO `dept` VALUES ('5', '后勤部');
INSERT INTO `dept` VALUES ('6', '采购部');
INSERT INTO `dept` VALUES ('7', '业务部');
INSERT INTO `dept` VALUES ('8', '人事部');
INSERT INTO `dept` VALUES ('9', '秘书部');
INSERT INTO `dept` VALUES ('10', '财务部');
INSERT INTO `dept` VALUES ('11', '保安部');
INSERT INTO `dept` VALUES ('12', '培训部');
INSERT INTO `dept` VALUES ('13', '质检部');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `empId` int(11) NOT NULL AUTO_INCREMENT,
  `empName` varchar(255) DEFAULT NULL,
  `salary` double(10,2) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`empId`),
  KEY `employee` (`dept_id`),
  CONSTRAINT `employee` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`deptId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', 'Scott', '3000.00', '3');
INSERT INTO `employee` VALUES ('2', 'Mary', '2000.00', '9');
INSERT INTO `employee` VALUES ('3', 'Jackline', '1500.00', '5');
INSERT INTO `employee` VALUES ('4', 'Stacey', '2000.00', '10');

-- ----------------------------
-- Table structure for log_
-- ----------------------------
DROP TABLE IF EXISTS `log_`;
CREATE TABLE `log_` (
  `content` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log_
-- ----------------------------
INSERT INTO `log_` VALUES ('在保存数据');
INSERT INTO `log_` VALUES ('在保存数据');

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(255) DEFAULT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'liming', '12345');
INSERT INTO `t_admin` VALUES ('2', 'rose', '12345');
INSERT INTO `t_admin` VALUES ('3', 'Jack', '12345');
INSERT INTO `t_admin` VALUES ('4', 'pauline', '12345');
INSERT INTO `t_admin` VALUES ('5', '李连杰', '12345');
INSERT INTO `t_admin` VALUES ('6', '李丽珍', '12345');
INSERT INTO `t_admin` VALUES ('7', '马云', '12345');

-- ----------------------------
-- Table structure for t_dept
-- ----------------------------
DROP TABLE IF EXISTS `t_dept`;
CREATE TABLE `t_dept` (
  `deptId` int(11) NOT NULL AUTO_INCREMENT,
  `deptName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`deptId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dept
-- ----------------------------
INSERT INTO `t_dept` VALUES ('1', '应用开发部');
INSERT INTO `t_dept` VALUES ('2', '行政部');
INSERT INTO `t_dept` VALUES ('3', '软件测试部');
INSERT INTO `t_dept` VALUES ('4', '销售部');
INSERT INTO `t_dept` VALUES ('5', '后勤部');
INSERT INTO `t_dept` VALUES ('6', '采购部');
INSERT INTO `t_dept` VALUES ('7', '业务部');
INSERT INTO `t_dept` VALUES ('8', '人事部');
INSERT INTO `t_dept` VALUES ('9', '秘书部');
INSERT INTO `t_dept` VALUES ('10', '财务部');
INSERT INTO `t_dept` VALUES ('11', '保安部');
INSERT INTO `t_dept` VALUES ('12', '培训部');
INSERT INTO `t_dept` VALUES ('13', '质检部');

-- ----------------------------
-- Table structure for t_employee
-- ----------------------------
DROP TABLE IF EXISTS `t_employee`;
CREATE TABLE `t_employee` (
  `empId` int(11) NOT NULL AUTO_INCREMENT,
  `empName` varchar(255) DEFAULT NULL,
  `salary` double(10,2) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`empId`),
  KEY `employee` (`dept_id`),
  KEY `FKFDCF5A19856CCA6B` (`dept_id`),
  CONSTRAINT `FKFDCF5A19856CCA6B` FOREIGN KEY (`dept_id`) REFERENCES `t_dept` (`deptId`),
  CONSTRAINT `t_employee_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`deptId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_employee
-- ----------------------------
INSERT INTO `t_employee` VALUES ('1', 'Scott', '3000.00', '3');
INSERT INTO `t_employee` VALUES ('2', 'Mary', '2000.00', '9');
INSERT INTO `t_employee` VALUES ('3', 'Jackline', '800.00', '5');
INSERT INTO `t_employee` VALUES ('4', 'Stacey', '2000.00', '10');
INSERT INTO `t_employee` VALUES ('5', 'Lilian chan', '700.00', '5');
INSERT INTO `t_employee` VALUES ('14', 'wangcai', '5000.00', '1');
INSERT INTO `t_employee` VALUES ('15', 'pusky', '900.00', '9');
