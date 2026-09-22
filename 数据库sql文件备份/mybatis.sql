/*
Navicat MySQL Data Transfer

Source Server         : MySQLDB
Source Server Version : 50647
Source Host           : localhost:3306
Source Database       : mybatis

Target Server Type    : MYSQL
Target Server Version : 50647
File Encoding         : 65001

Date: 2022-05-06 14:20:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` int(4) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `updated` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'zhangsan', '123456', '张三', '30', '1', '1984-08-08', '2014-09-19 16:00:00.000000', '2014-09-21 11:24:59.000000');
INSERT INTO `tb_user` VALUES ('2', 'lisi', '123456', '里斯', '21', '0', '1991-01-01', '2014-09-09 16:56:04.000000', '2014-09-09 16:56:04.000000');
INSERT INTO `tb_user` VALUES ('3', 'wangwu', '123456', '王武', '22', '1', '1990-01-01', '2014-09-09 16:56:04.000000', '2014-09-09 16:56:04.000000');
INSERT INTO `tb_user` VALUES ('5', 'zhaoliu', '123456', '赵六', '19', '0', '1989-01-01', '2014-09-09 16:56:04.000000', '2014-09-09 16:56:04.000000');
INSERT INTO `tb_user` VALUES ('6', 'lina', '123456', '李娜', '28', '0', '1986-03-05', '2014-09-09 16:56:04.000000', '2014-09-09 16:56:04.000000');
INSERT INTO `tb_user` VALUES ('7', 'lilei', '12345', '李磊', '25', '1', '1988-05-23', '2014-09-21 11:24:15.000000', '2014-09-21 11:24:15.000000');
