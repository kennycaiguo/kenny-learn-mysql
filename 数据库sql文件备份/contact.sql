/*
Navicat MySQL Data Transfer

Source Server         : MySQLDB
Source Server Version : 50647
Source Host           : localhost:3306
Source Database       : contact

Target Server Type    : MYSQL
Target Server Version : 50647
File Encoding         : 65001

Date: 2022-05-06 14:17:38
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `ID` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES ('1', 'Jack');
INSERT INTO `customers` VALUES ('3', 'Jackline');
INSERT INTO `customers` VALUES ('2', 'Jade');
INSERT INTO `customers` VALUES ('4', 'Pauline');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `ID` varchar(255) DEFAULT NULL,
  `ISBN` varchar(255) DEFAULT NULL,
  `PRICE` varchar(255) DEFAULT NULL,
  `CID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES ('17', 'charlie', '17', 'pussy@pussy.net');
INSERT INTO `person` VALUES ('18', 'Jackline', '16', 'jackline@pussy.net');
INSERT INTO `person` VALUES ('19', 'lucia', '20', 'jackline@pussy.net');
INSERT INTO `person` VALUES ('20', 'Jackma', '25', 'pussy@pussy.net');
INSERT INTO `person` VALUES ('21', 'howard', '30', 'hw@pussy.net');
INSERT INTO `person` VALUES ('22', 'fanny', '30', 'fn@pussy.net');
INSERT INTO `person` VALUES ('23', 'Jolly', '20', 'Jolly@gmail.com');
INSERT INTO `person` VALUES ('24', 'Molly', '21', 'Mollygirl@gmail.com');

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `ID` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `GENDER` varchar(255) DEFAULT NULL,
  `SALARY` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of students
-- ----------------------------
