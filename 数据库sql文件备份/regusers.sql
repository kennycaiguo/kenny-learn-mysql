/*
Navicat MySQL Data Transfer

Source Server         : MySQLDB
Source Server Version : 50647
Source Host           : localhost:3306
Source Database       : regusers

Target Server Type    : MYSQL
Target Server Version : 50647
File Encoding         : 65001

Date: 2022-05-06 14:25:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `ID` tinyint(10) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) NOT NULL,
  `GENDER` varchar(6) NOT NULL,
  `BIRTHDAY` varchar(255) NOT NULL,
  `PHONE` varchar(12) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `qq` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'SCOTT', 'M', '1980-02-02', '13532677776', 'SCOTT@GMAIL.COM', '1277775555');
INSERT INTO `users` VALUES ('2', 'LILI', 'female', '1976-03-03', '13322244555', 'MARY@QQ.COM', '1233334444');
