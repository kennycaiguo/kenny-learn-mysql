/*
Navicat MySQL Data Transfer

Source Server         : MySQLDB
Source Server Version : 50647
Source Host           : localhost:3306
Source Database       : gouser

Target Server Type    : MYSQL
Target Server Version : 50647
File Encoding         : 65001

Date: 2022-05-06 14:24:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `balance` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', 'Amy', '4000');
INSERT INTO `account` VALUES ('2', 'Alex', '3500');
INSERT INTO `account` VALUES ('3', 'Joicy', '3500');
INSERT INTO `account` VALUES ('5', 'Daisy', '2800');
INSERT INTO `account` VALUES ('6', 'Jackline', '2000');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT ' ',
  `age` int(4) DEFAULT '18',
  `email` varchar(100) DEFAULT ' ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'jack', '28', 'HelloJack@gmail.com');
INSERT INTO `user` VALUES ('2', 'Brandy', '18', 'Brandylee@gmail.com');
INSERT INTO `user` VALUES ('3', 'Cicilia', '18', 'ccla@gmail.com');
INSERT INTO `user` VALUES ('6', 'Miky', '18', 'Mikybbcc123@gmail.com');
INSERT INTO `user` VALUES ('7', 'Stacy', '18', 'Stacybbcc123@gmail.com');
