/*
 Navicat Premium Data Transfer

 Source Server         : study
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : contact

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 12/03/2020 17:24:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `phone` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qq` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES (1, 'kenny', 'male', 44, '13532619767', 'kenny887@gmail.com', '1279995329');
INSERT INTO `contact` VALUES (3, 'karen Cai', '女', 22, '13233366666', 'karen@sex.net', '1276662222');
INSERT INTO `contact` VALUES (6, 'Rose.lee ', '女', 21, '13233366677', 'rose@hotmail.com', '1276665544');
INSERT INTO `contact` VALUES (7, '比尔.盖茨', '男', 45, '13233366666', 'billgate@pussy.net', '1276660005');
INSERT INTO `contact` VALUES (10, 'Ming', '男', 20, '13222244555', 'Liming@sex.net', '1276664444');
INSERT INTO `contact` VALUES (14, 'Mao', '男', 20, '13222244555', 'yao@sex.net', '1276664444');

SET FOREIGN_KEY_CHECKS = 1;
