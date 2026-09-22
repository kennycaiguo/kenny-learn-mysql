/*
Navicat MySQL Data Transfer

Source Server         : MySQLDB
Source Server Version : 50647
Source Host           : localhost:3306
Source Database       : webuserlist

Target Server Type    : MYSQL
Target Server Version : 50647
File Encoding         : 65001

Date: 2022-05-06 14:23:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for addresslist
-- ----------------------------
DROP TABLE IF EXISTS `addresslist`;
CREATE TABLE `addresslist` (
  `uid` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `idx` int(11) NOT NULL,
  PRIMARY KEY (`uid`,`idx`),
  KEY `FKADF3329274C8B68D` (`uid`),
  CONSTRAINT `FKADF3329274C8B68D` FOREIGN KEY (`uid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of addresslist
-- ----------------------------
INSERT INTO `addresslist` VALUES ('1', '13 main street ,Ohio ', '0');
INSERT INTO `addresslist` VALUES ('1', '1 main street ,Ohio ', '1');
INSERT INTO `addresslist` VALUES ('1', '52 king street ,texas ', '2');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'Fanny');
