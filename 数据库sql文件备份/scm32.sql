/*
Navicat MySQL Data Transfer

Source Server         : MySQLDB
Source Server Version : 50647
Source Host           : localhost:3306
Source Database       : scm32

Target Server Type    : MYSQL
Target Server Version : 50647
File Encoding         : 65001

Date: 2022-05-06 14:25:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `acc_id` int(11) NOT NULL AUTO_INCREMENT,
  `acc_login` varchar(20) DEFAULT NULL,
  `acc_name` varchar(20) DEFAULT NULL,
  `acc_pass` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`acc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', 'admin', null, 'admin');
INSERT INTO `account` VALUES ('2', 'admin2', null, 'admin2');

-- ----------------------------
-- Table structure for account_records
-- ----------------------------
DROP TABLE IF EXISTS `account_records`;
CREATE TABLE `account_records` (
  `ar_id` varchar(36) NOT NULL,
  `sup_id` int(11) DEFAULT NULL,
  `ar_date` date DEFAULT NULL,
  `ar_order_id` varchar(36) DEFAULT NULL,
  `ar_bus_type` varchar(10) DEFAULT NULL,
  `ar_payable` decimal(12,2) DEFAULT NULL,
  `ar_paid` decimal(12,2) DEFAULT NULL,
  `ar_arrears` decimal(12,2) DEFAULT NULL,
  `ar_discount` decimal(12,2) DEFAULT NULL,
  `ar_attn` varchar(20) DEFAULT NULL,
  `ar_operator` int(11) DEFAULT NULL,
  `ar_remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_records
-- ----------------------------

-- ----------------------------
-- Table structure for buy_order
-- ----------------------------
DROP TABLE IF EXISTS `buy_order`;
CREATE TABLE `buy_order` (
  `bo_id` varchar(36) NOT NULL,
  `sup_id` int(11) DEFAULT NULL,
  `sh_id` varchar(10) DEFAULT NULL,
  `bo_date` date DEFAULT NULL,
  `bo_payable` decimal(12,2) DEFAULT NULL,
  `bo_paid` decimal(12,2) DEFAULT NULL,
  `bo_arrears` decimal(12,2) DEFAULT NULL,
  `bo_original` varchar(20) DEFAULT NULL,
  `bo_remark` varchar(100) DEFAULT NULL,
  `bo_attn` varchar(20) DEFAULT NULL,
  `bo_operator` int(11) DEFAULT NULL,
  PRIMARY KEY (`bo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of buy_order
-- ----------------------------

-- ----------------------------
-- Table structure for buy_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `buy_order_detail`;
CREATE TABLE `buy_order_detail` (
  `bod_id` varchar(36) NOT NULL,
  `goods_id` varchar(36) DEFAULT NULL,
  `goods_name` varchar(20) DEFAULT NULL,
  `goods_unit` varchar(10) DEFAULT NULL,
  `goods_type` varchar(10) DEFAULT NULL,
  `goods_color` varchar(10) DEFAULT NULL,
  `bod_amount` int(11) DEFAULT NULL,
  `bod_buy_price` decimal(12,2) DEFAULT NULL,
  `bod_total_price` decimal(12,2) DEFAULT NULL,
  `bo_id` varchar(36) DEFAULT NULL,
  `bod_imei_list` text,
  PRIMARY KEY (`bod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of buy_order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(50) DEFAULT NULL,
  `dept_address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', '研发部一部', '广州');
INSERT INTO `dept` VALUES ('2', '研发部二部', '广州');
INSERT INTO `dept` VALUES ('3', '研发部三部', '深圳');
INSERT INTO `dept` VALUES ('4', '测试部', '上海');
INSERT INTO `dept` VALUES ('5', '财务部', '广州越秀');
INSERT INTO `dept` VALUES ('6', '人事部', '深圳福田');
INSERT INTO `dept` VALUES ('7', '行政部', '上海');
INSERT INTO `dept` VALUES ('8', '采购部', '中国香港');
INSERT INTO `dept` VALUES ('9', '公关部', '中国海南');
INSERT INTO `dept` VALUES ('10', '研发4', '东莞');
INSERT INTO `dept` VALUES ('11', '研发5', '中国海南');
INSERT INTO `dept` VALUES ('12', '研发6', '东莞');
INSERT INTO `dept` VALUES ('13', '测试2部', '山东');
INSERT INTO `dept` VALUES ('14', '开发部', '珠海斗门');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_Id` varchar(36) NOT NULL,
  `goods_name` varchar(20) DEFAULT NULL,
  `goods_unit` varchar(10) DEFAULT NULL,
  `goods_type` varchar(10) DEFAULT NULL,
  `goods_color` varchar(10) DEFAULT NULL,
  `goods_store` int(11) DEFAULT NULL,
  `goods_limit` int(11) DEFAULT NULL,
  `goods_commission` decimal(2,2) DEFAULT NULL,
  `goods_producer` varchar(50) DEFAULT NULL,
  `goods_remark` varchar(100) DEFAULT NULL,
  `goods_sel_price` decimal(12,2) DEFAULT NULL,
  `goods_buy_price` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`goods_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', 'note4', '部', null, '1', null, null, null, null, 'red note4', '2500.00', '2000.00');
INSERT INTO `goods` VALUES ('2', 'note5', '部', null, '5', null, null, null, null, 'red note5', '3500.00', '3000.00');
INSERT INTO `goods` VALUES ('3', 'note6', '部', null, '6', null, null, null, null, 'blue note5', '4500.00', '4000.00');

-- ----------------------------
-- Table structure for return_order
-- ----------------------------
DROP TABLE IF EXISTS `return_order`;
CREATE TABLE `return_order` (
  `ro_id` varchar(36) NOT NULL,
  `sup_id` int(11) DEFAULT NULL,
  `sh_id` varchar(10) DEFAULT NULL,
  `ro_date` date DEFAULT NULL,
  `ro_payable` decimal(12,2) DEFAULT NULL,
  `ro_paid` decimal(12,2) DEFAULT NULL,
  `ro_remark` varchar(100) DEFAULT NULL,
  `ro_attn` varchar(20) DEFAULT NULL,
  `ro_operator` int(11) DEFAULT NULL,
  PRIMARY KEY (`ro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of return_order
-- ----------------------------

-- ----------------------------
-- Table structure for return_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `return_order_detail`;
CREATE TABLE `return_order_detail` (
  `rod_id` varchar(36) NOT NULL,
  `goods_id` varchar(36) DEFAULT NULL,
  `goods_unit` varchar(10) DEFAULT NULL,
  `goods_name` varchar(20) DEFAULT NULL,
  `goods_type` varchar(10) DEFAULT NULL,
  `goods_color` varchar(10) DEFAULT NULL,
  `rod_amount` int(11) DEFAULT NULL,
  `rod_return_price` decimal(12,2) DEFAULT NULL,
  `rod_total_price` decimal(12,2) DEFAULT NULL,
  `rod_imei_list` text,
  `ro_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`rod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of return_order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for stock
-- ----------------------------
DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock` (
  `stock_id` varchar(40) NOT NULL,
  `sh_id` varchar(10) DEFAULT NULL,
  `goods_id` varchar(36) DEFAULT NULL,
  `stock_firstdate` date DEFAULT NULL,
  `stock_lastdate` date DEFAULT NULL,
  `stock_amount` int(11) DEFAULT NULL,
  `stock_price` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stock
-- ----------------------------

-- ----------------------------
-- Table structure for store_house
-- ----------------------------
DROP TABLE IF EXISTS `store_house`;
CREATE TABLE `store_house` (
  `sh_id` varchar(10) NOT NULL,
  `sh_name` varchar(20) DEFAULT NULL,
  `sh_responsible` varchar(20) DEFAULT NULL,
  `sh_phone` varchar(11) DEFAULT NULL,
  `sh_address` varchar(50) DEFAULT NULL,
  `sh_type` varchar(10) DEFAULT NULL,
  `sh_remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sh_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of store_house
-- ----------------------------
INSERT INTO `store_house` VALUES ('1', '主仓库', null, null, '广州', null, null);
INSERT INTO `store_house` VALUES ('2', '分仓库', null, null, '广州', null, null);

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `sup_id` int(11) NOT NULL,
  `sup_name` varchar(20) DEFAULT NULL,
  `sup_linkman` varchar(20) DEFAULT NULL,
  `sup_phone` varchar(11) DEFAULT NULL,
  `sup_address` varchar(100) DEFAULT NULL,
  `sup_remark` varchar(200) DEFAULT NULL,
  `sup_pay` decimal(10,2) DEFAULT NULL,
  `sup_type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`sup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES ('1', '苹果供应商', '小张', '12345678913', '广州花都', '一级供应商', '0.00', '1');
INSERT INTO `supplier` VALUES ('2', '三星供应商', '小王', '13245678812', '东莞常平解放路32号', '二级供应商', '0.00', '2');
INSERT INTO `supplier` VALUES ('3', '华为供应商', '小王', '15623456766', '广东深圳', '一级供应商', '0.00', '1');
INSERT INTO `supplier` VALUES ('7', '魅族', '小刚', '13455566700', '广州天河石牌100号', '二级供应商', '0.00', '2');
INSERT INTO `supplier` VALUES ('8', 'oppo', '小敏', '13455566709', '广州天河路33号', '三级供应商', '0.00', '3');
INSERT INTO `supplier` VALUES ('9', '小米', '小敏', '13455566779', '广州天河路55号', '四级供应商', '0.00', '4');
INSERT INTO `supplier` VALUES ('10', 'Nokia', 'lili', '13232455666', 'main street ocho rios', '一级供应商', '0.00', '1');
INSERT INTO `supplier` VALUES ('11', 'TCL', 'ben', '12444455556', '3 king street downtown', '三级供应商', '0.00', '3');
INSERT INTO `supplier` VALUES ('15', '阿里云', '猪猪', '1445556677', '柏地', '四级供应商', '0.00', '4');
INSERT INTO `supplier` VALUES ('16', 'BlackBerry', '小敏', '13455566778', '惠州天河大道333号', 'good', '30.00', '三级供应商');
INSERT INTO `supplier` VALUES ('17', '小小米', 'nick', '13855566777', '广州天河大道30号', 'good', '100.00', '二级供应商');

-- ----------------------------
-- Table structure for sys_param
-- ----------------------------
DROP TABLE IF EXISTS `sys_param`;
CREATE TABLE `sys_param` (
  `sys_param_id` bigint(20) NOT NULL,
  `sys_param_field` varchar(50) DEFAULT NULL,
  `sys_param_value` varchar(500) DEFAULT NULL,
  `sys_param_text` varchar(50) DEFAULT NULL,
  `sys_param_type` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`sys_param_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_param
-- ----------------------------
INSERT INTO `sys_param` VALUES ('1', 'shId', 'select s.sh_id as sys_param_value,s.sh_name as sys_param_text from store_house s', null, '1');
INSERT INTO `sys_param` VALUES ('2', 'supType', '1', '一级供应商', null);
INSERT INTO `sys_param` VALUES ('3', 'supType', '2', '二级供应商', null);
INSERT INTO `sys_param` VALUES ('4', 'supType', '3', '三级供应商', null);
INSERT INTO `sys_param` VALUES ('5', 'goodsColor', '1', '红色', null);
INSERT INTO `sys_param` VALUES ('6', 'goodsColor', '2', '绿色', null);
INSERT INTO `sys_param` VALUES ('7', 'goodsColor', '3', '蓝色', null);
INSERT INTO `sys_param` VALUES ('8', 'supType', '4', '四级供应商', null);
