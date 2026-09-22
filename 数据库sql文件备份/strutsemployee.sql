/*
Navicat MySQL Data Transfer

Source Server         : MySQLDB
Source Server Version : 50647
Source Host           : localhost:3306
Source Database       : strutsemployee

Target Server Type    : MYSQL
Target Server Version : 50647
File Encoding         : 65001

Date: 2022-05-06 14:22:34
*/

SET FOREIGN_KEY_CHECKS=0;

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
  `empname` varchar(255) DEFAULT NULL,
  `workDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', 'jack', '1990-01-01');
INSERT INTO `employee` VALUES ('2', 'pussy', '1990-03-03');
INSERT INTO `employee` VALUES ('3', 'rose', '1978-09-09');
INSERT INTO `employee` VALUES ('4', 'cat', '1999-01-01');
INSERT INTO `employee` VALUES ('5', 'lilipussy', '2018-01-01');
INSERT INTO `employee` VALUES ('6', 'nancybigpussy', '1999-12-25');
INSERT INTO `employee` VALUES ('7', 'luju', '1990-01-01');
INSERT INTO `employee` VALUES ('8', 'ronlod', '1998-02-20');
INSERT INTO `employee` VALUES ('9', 'vagina', '1990-01-01');
INSERT INTO `employee` VALUES ('10', 'marlon', '1988-01-01');
INSERT INTO `employee` VALUES ('11', 'mark', '2000-01-01');
INSERT INTO `employee` VALUES ('12', 'Jason', '2011-05-05');
INSERT INTO `employee` VALUES ('13', 'mayble', '2015-06-06');
INSERT INTO `employee` VALUES ('14', 'mary', '2015-01-01');
INSERT INTO `employee` VALUES ('15', 'bosswife', '1990-01-01');
INSERT INTO `employee` VALUES ('16', 'miky', '2013-02-04');
INSERT INTO `employee` VALUES ('17', 'Monkey', '2011-11-09');
INSERT INTO `employee` VALUES ('18', 'applw', '2014-09-30');
INSERT INTO `employee` VALUES ('19', 'pussy', '2011-09-12');
INSERT INTO `employee` VALUES ('20', 'katie', '2009-10-22');
