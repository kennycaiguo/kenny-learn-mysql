/*
 Navicat Premium Data Transfer

 Source Server         : study
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : family

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 12/03/2020 17:23:49
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
  `birthday` date NULL DEFAULT NULL,
  `phone` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qq` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES (1, 'kenny', 'male', '2019-09-26', '13532619767', 'kenny887@gmail.com', '1279995329');
INSERT INTO `contact` VALUES (3, 'karen', '女', '2019-07-01', '13233366666', 'karen@sex.net', '1276662222');
INSERT INTO `contact` VALUES (6, 'jacky', '女', '2019-09-27', '13233366677', 'rose@hotmail.com', '1276665544');
INSERT INTO `contact` VALUES (38, 'pussy', '女', '1978-01-16', '13233344555', 'pussy@pussy.net', '1278885566');
INSERT INTO `contact` VALUES (39, 'Jason', 'male', '1980-12-09', '12345678', 'Jason@qq.com', '1267775544');
INSERT INTO `contact` VALUES (40, 'guo', 'male', '1975-12-26', '506 83322996', NULL, '1279995329');
INSERT INTO `contact` VALUES (41, 'guoken', 'male', '1975-12-26', '506 83322996', 'kennycai2014@126.com', '1279995329');
INSERT INTO `contact` VALUES (42, 'ben', 'male', '1975-12-26', '506 83322996', 'kennycai2014@126.com', '1279995329');

SET FOREIGN_KEY_CHECKS = 1;
