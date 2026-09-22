/*
Navicat MySQL Data Transfer

Source Server         : MySQLDB
Source Server Version : 50647
Source Host           : localhost:3306
Source Database       : hibernatem2m

Target Server Type    : MYSQL
Target Server Version : 50647
File Encoding         : 65001

Date: 2022-05-06 14:24:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_developer
-- ----------------------------
DROP TABLE IF EXISTS `t_developer`;
CREATE TABLE `t_developer` (
  `d_Id` int(11) NOT NULL AUTO_INCREMENT,
  `dName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`d_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_developer
-- ----------------------------
INSERT INTO `t_developer` VALUES ('1', '曹吉');
INSERT INTO `t_developer` VALUES ('2', '王春');
INSERT INTO `t_developer` VALUES ('3', '老张');
INSERT INTO `t_developer` VALUES ('4', '曹吉');
INSERT INTO `t_developer` VALUES ('5', '老张');
INSERT INTO `t_developer` VALUES ('6', '王春');

-- ----------------------------
-- Table structure for t_project
-- ----------------------------
DROP TABLE IF EXISTS `t_project`;
CREATE TABLE `t_project` (
  `p_Id` int(11) NOT NULL AUTO_INCREMENT,
  `pName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`p_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_project
-- ----------------------------
INSERT INTO `t_project` VALUES ('1', '电商项目');
INSERT INTO `t_project` VALUES ('2', 'OA项目');
INSERT INTO `t_project` VALUES ('3', '电商项目2');
INSERT INTO `t_project` VALUES ('4', 'OA项目2');

-- ----------------------------
-- Table structure for t_relation
-- ----------------------------
DROP TABLE IF EXISTS `t_relation`;
CREATE TABLE `t_relation` (
  `dId` int(11) NOT NULL,
  `pId` int(11) NOT NULL,
  PRIMARY KEY (`pId`,`dId`),
  KEY `FK95A06D67362E1D4F` (`dId`),
  KEY `FK95A06D672FB2372A` (`pId`),
  CONSTRAINT `FK95A06D672FB2372A` FOREIGN KEY (`pId`) REFERENCES `t_project` (`p_Id`),
  CONSTRAINT `FK95A06D67362E1D4F` FOREIGN KEY (`dId`) REFERENCES `t_developer` (`d_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_relation
-- ----------------------------
INSERT INTO `t_relation` VALUES ('1', '1');
INSERT INTO `t_relation` VALUES ('2', '1');
INSERT INTO `t_relation` VALUES ('2', '2');
INSERT INTO `t_relation` VALUES ('3', '2');
INSERT INTO `t_relation` VALUES ('4', '3');
INSERT INTO `t_relation` VALUES ('4', '4');
INSERT INTO `t_relation` VALUES ('5', '3');
INSERT INTO `t_relation` VALUES ('6', '4');
