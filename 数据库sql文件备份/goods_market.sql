/*
Navicat MySQL Data Transfer

Source Server         : MySQLDB
Source Server Version : 50647
Source Host           : localhost:3306
Source Database       : goods_market

Target Server Type    : MYSQL
Target Server Version : 50647
File Encoding         : 65001

Date: 2022-05-06 14:18:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `goods_type_id` int(11) DEFAULT NULL,
  `old_price` double(10,2) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `on_sale` varchar(255) DEFAULT NULL,
  `detail` mediumint(9) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `merchant_name` varchar(255) DEFAULT NULL,
  `evaluation_count` int(11) DEFAULT NULL COMMENT '商品评价',
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------

-- ----------------------------
-- Table structure for goods_type
-- ----------------------------
DROP TABLE IF EXISTS `goods_type`;
CREATE TABLE `goods_type` (
  `goods_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_type_id` int(11) DEFAULT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `icon_class` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`goods_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_type
-- ----------------------------

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info` (
  `order_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) DEFAULT NULL,
  `origin_goods_id` int(11) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `old_price` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`order_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_info
-- ----------------------------

-- ----------------------------
-- Table structure for shopcart
-- ----------------------------
DROP TABLE IF EXISTS `shopcart`;
CREATE TABLE `shopcart` (
  `shop_car_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`shop_car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopcart
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `nick_name` varchar(255) DEFAULT NULL,
  `real_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `last_login_ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'fatjack', 'jack lee', '13522244444', '123', '2020-10-25 15:48:16', null);
INSERT INTO `user` VALUES ('2', 'slimmary', 'marycake', '13233355666', '123', '2020-10-25 23:05:30', null);

-- ----------------------------
-- Table structure for user_order
-- ----------------------------
DROP TABLE IF EXISTS `user_order`;
CREATE TABLE `user_order` (
  `order_id` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `all_cost` double(20,2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `pay_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `receiver_phone` varchar(255) DEFAULT NULL,
  `receiver_name` varchar(255) DEFAULT NULL,
  `receiver_address` varchar(255) DEFAULT NULL,
  `pay_type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `actual_payment` double(20,2) DEFAULT NULL,
  `total_deduction` double(20,2) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_order
-- ----------------------------
