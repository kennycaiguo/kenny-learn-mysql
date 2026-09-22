/*
Navicat MySQL Data Transfer

Source Server         : MySQLDB
Source Server Version : 50647
Source Host           : localhost:3306
Source Database       : company

Target Server Type    : MYSQL
Target Server Version : 50647
File Encoding         : 65001

Date: 2022-05-06 13:29:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountName` varchar(255) DEFAULT NULL,
  `amount` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', 'jackline', '3500');
INSERT INTO `account` VALUES ('2', 'pauline', '10000');

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `pwd` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

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
INSERT INTO `admin` VALUES ('8', 'kenny', '123');
INSERT INTO `admin` VALUES ('9', 'kenny', '123');

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `id` int(11) NOT NULL,
  `depName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', '软件开发部');
INSERT INTO `dept` VALUES ('3', '人事部');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `depId` int(11) DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `employee_dept_fk` (`depId`) USING BTREE,
  CONSTRAINT `employee_dept_fk` FOREIGN KEY (`depId`) REFERENCES `dept` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', 'PaulinE', '1', 'female', '2500');
INSERT INTO `employee` VALUES ('2', 'Nancy', '3', 'female', '3500');
INSERT INTO `employee` VALUES ('3', 'john', '3', 'male', '5000');
INSERT INTO `employee` VALUES ('4', 'johnny', '3', 'male', '5000');
INSERT INTO `employee` VALUES ('50', 'Ricky Rojas', '1', 'male', '3000');
INSERT INTO `employee` VALUES ('52', 'Paula fernandez', '1', 'female', '3000');
INSERT INTO `employee` VALUES ('53', 'Paula fernandez', '1', 'female', '3000');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(100) DEFAULT NULL,
  `datime` date DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('1', 'new record added', null);
INSERT INTO `log` VALUES ('2', 'new record added', null);
INSERT INTO `log` VALUES ('3', 'new record added', null);
INSERT INTO `log` VALUES ('4', 'new record added', null);
INSERT INTO `log` VALUES ('5', 'new record added', null);
INSERT INTO `log` VALUES ('6', 'new record added', null);
INSERT INTO `log` VALUES ('7', 'new record added', null);
INSERT INTO `log` VALUES ('8', 'new record added', null);
INSERT INTO `log` VALUES ('9', 'new record added', null);
INSERT INTO `log` VALUES ('10', 'new record added', null);
INSERT INTO `log` VALUES ('11', 'new record added', null);
INSERT INTO `log` VALUES ('12', 'new record added', null);
INSERT INTO `log` VALUES ('13', 'new record added', null);
INSERT INTO `log` VALUES ('14', 'new record added', null);
INSERT INTO `log` VALUES ('15', 'new record added', null);
INSERT INTO `log` VALUES ('16', 'new record added', null);
INSERT INTO `log` VALUES ('17', 'new record added', null);
INSERT INTO `log` VALUES ('18', 'new record added', null);
INSERT INTO `log` VALUES ('19', 'new record added', null);
INSERT INTO `log` VALUES ('20', 'new record added', null);
INSERT INTO `log` VALUES ('21', 'new record added', null);
INSERT INTO `log` VALUES ('22', 'new record added', null);
INSERT INTO `log` VALUES ('23', 'new record added', null);
INSERT INTO `log` VALUES ('24', 'new record added', null);
INSERT INTO `log` VALUES ('25', 'new record added', null);
INSERT INTO `log` VALUES ('26', 'new record added', null);
INSERT INTO `log` VALUES ('27', 'new record added', null);
INSERT INTO `log` VALUES ('28', 'new record added', null);
INSERT INTO `log` VALUES ('29', 'new record added', null);
INSERT INTO `log` VALUES ('30', 'new record added', null);
INSERT INTO `log` VALUES ('31', 'new record added', null);
INSERT INTO `log` VALUES ('32', 'new record added', null);
INSERT INTO `log` VALUES ('33', 'new record added', null);
INSERT INTO `log` VALUES ('34', 'new record added', null);
INSERT INTO `log` VALUES ('35', 'new record added', null);
INSERT INTO `log` VALUES ('36', 'new record added', null);
INSERT INTO `log` VALUES ('37', 'new record added', null);
INSERT INTO `log` VALUES ('38', 'new record added', null);
INSERT INTO `log` VALUES ('39', 'new record added', null);
INSERT INTO `log` VALUES ('40', 'new record added', null);
INSERT INTO `log` VALUES ('41', 'new record added', null);
INSERT INTO `log` VALUES ('42', 'new record added', null);
INSERT INTO `log` VALUES ('43', 'new record added', null);
INSERT INTO `log` VALUES ('44', 'new record added', null);
INSERT INTO `log` VALUES ('45', 'new record added', null);
INSERT INTO `log` VALUES ('46', 'new record added', null);
INSERT INTO `log` VALUES ('47', 'new record added', null);
DROP TRIGGER IF EXISTS `trg_add`;
DELIMITER ;;
CREATE TRIGGER `trg_add` AFTER INSERT ON `employee` FOR EACH ROW INSERT INTO log(content) values("new record added")
;;
DELIMITER ;
