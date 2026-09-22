/*
Navicat MySQL Data Transfer

Source Server         : MySQLDB
Source Server Version : 50647
Source Host           : localhost:3306
Source Database       : mybatismany2many

Target Server Type    : MYSQL
Target Server Version : 50647
File Encoding         : 65001

Date: 2022-05-06 14:21:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for courses
-- ----------------------------
DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses` (
  `cid` int(5) NOT NULL,
  `cname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses
-- ----------------------------
INSERT INTO `courses` VALUES ('1', 'java');
INSERT INTO `courses` VALUES ('2', 'c++');
INSERT INTO `courses` VALUES ('3', '.net');
INSERT INTO `courses` VALUES ('4', 'python');

-- ----------------------------
-- Table structure for middles
-- ----------------------------
DROP TABLE IF EXISTS `middles`;
CREATE TABLE `middles` (
  `msid` int(5) NOT NULL DEFAULT '0',
  `mcid` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msid`,`mcid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of middles
-- ----------------------------
INSERT INTO `middles` VALUES ('1', '1');
INSERT INTO `middles` VALUES ('1', '2');
INSERT INTO `middles` VALUES ('2', '1');
INSERT INTO `middles` VALUES ('2', '2');
INSERT INTO `middles` VALUES ('3', '3');
INSERT INTO `middles` VALUES ('3', '4');

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `sid` int(5) NOT NULL,
  `sname` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES ('1', 'jackline');
INSERT INTO `students` VALUES ('2', 'mary');
INSERT INTO `students` VALUES ('3', 'tary');
INSERT INTO `students` VALUES ('4', 'gary');
INSERT INTO `students` VALUES ('5', 'dary');
INSERT INTO `students` VALUES ('6', 'crary');
