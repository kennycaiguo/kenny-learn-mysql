/*
Navicat MySQL Data Transfer

Source Server         : MySQLDB
Source Server Version : 50647
Source Host           : localhost:3306
Source Database       : webusermap

Target Server Type    : MYSQL
Target Server Version : 50647
File Encoding         : 65001

Date: 2022-05-06 14:26:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for addresses
-- ----------------------------
DROP TABLE IF EXISTS `addresses`;
CREATE TABLE `addresses` (
  `uid` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `shortname` varchar(255) NOT NULL,
  PRIMARY KEY (`uid`,`shortname`),
  KEY `FK34207BA274C8B68D` (`uid`),
  CONSTRAINT `FK34207BA274C8B68D` FOREIGN KEY (`uid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of addresses
-- ----------------------------
INSERT INTO `addresses` VALUES ('3', '13 main street ,Ohio ', 'addr1');
INSERT INTO `addresses` VALUES ('3', '1 orange street ,Ohio ', 'addr2');
INSERT INTO `addresses` VALUES ('3', '13 duke street ,Texas ', 'addr3');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('3', 'banny');
