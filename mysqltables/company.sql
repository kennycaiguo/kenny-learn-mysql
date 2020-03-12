/*
 Navicat Premium Data Transfer

 Source Server         : study
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : company

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 12/03/2020 17:21:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `amount` int(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES (1, 'jackline', 3500);
INSERT INTO `account` VALUES (2, 'pauline', 10000);

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pwd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'liming', '12345');
INSERT INTO `admin` VALUES (2, 'rose', '12345');
INSERT INTO `admin` VALUES (3, 'Jack', '12345');
INSERT INTO `admin` VALUES (4, 'pauline', '12345');
INSERT INTO `admin` VALUES (5, '李连杰', '12345');
INSERT INTO `admin` VALUES (6, '李丽珍', '12345');
INSERT INTO `admin` VALUES (7, '马云', '12345');

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept`  (
  `id` int(11) NOT NULL,
  `depName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES (1, '软件开发部');
INSERT INTO `dept` VALUES (3, '人事部');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `depId` int(11) NULL DEFAULT NULL,
  `gender` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `salary` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `employee_dept_fk`(`depId`) USING BTREE,
  CONSTRAINT `employee_dept_fk` FOREIGN KEY (`depId`) REFERENCES `dept` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1, 'Pauline', 1, 'female', 3500);
INSERT INTO `employee` VALUES (2, 'Nancy', 3, 'female', 3500);
INSERT INTO `employee` VALUES (3, 'john', 3, 'male', 5000);
INSERT INTO `employee` VALUES (4, 'johnny', 3, 'male', 5000);
INSERT INTO `employee` VALUES (5, 'mike', 1, 'male', 2500);
INSERT INTO `employee` VALUES (6, 'LILI', 1, 'female', 3000);
INSERT INTO `employee` VALUES (7, 'xiaoli', 1, 'male', 3000);
INSERT INTO `employee` VALUES (8, 'LIping', 1, 'female', 3000);
INSERT INTO `employee` VALUES (9, 'Liuking', 1, 'male', 3000);
INSERT INTO `employee` VALUES (10, 'LItongkee', 1, 'female', 3000);
INSERT INTO `employee` VALUES (11, 'cai', 1, 'female', 3000);
INSERT INTO `employee` VALUES (12, 'zhang', 3, 'female', 3000);
INSERT INTO `employee` VALUES (13, 'lulu', 3, 'female', 3500);
INSERT INTO `employee` VALUES (14, 'liaoli', 1, 'male', 3000);
INSERT INTO `employee` VALUES (15, 'zIping', 1, 'female', 3000);
INSERT INTO `employee` VALUES (16, 'biuking', 1, 'male', 3000);
INSERT INTO `employee` VALUES (17, 'ketongkee', 1, 'female', 3000);
INSERT INTO `employee` VALUES (18, 'chai', 1, 'female', 3000);
INSERT INTO `employee` VALUES (19, 'zhang', 3, 'female', 3000);
INSERT INTO `employee` VALUES (20, 'lulu2', 3, 'female', 3500);
INSERT INTO `employee` VALUES (21, 'liaoli2', 1, 'male', 3000);
INSERT INTO `employee` VALUES (22, 'zIping2', 1, 'fmale', 3000);
INSERT INTO `employee` VALUES (23, 'biuking2', 1, 'male', 3000);
INSERT INTO `employee` VALUES (24, 'ketongkee2', 1, 'fmale', 3000);
INSERT INTO `employee` VALUES (25, 'chai2', 1, 'female', 3000);
INSERT INTO `employee` VALUES (26, 'zhang2', 3, 'female', 3000);

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `datime` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (1, 'new record added', NULL);
INSERT INTO `log` VALUES (2, 'new record added', NULL);
INSERT INTO `log` VALUES (3, 'new record added', NULL);
INSERT INTO `log` VALUES (4, 'new record added', NULL);
INSERT INTO `log` VALUES (5, 'new record added', NULL);
INSERT INTO `log` VALUES (6, 'new record added', NULL);
INSERT INTO `log` VALUES (7, 'new record added', NULL);
INSERT INTO `log` VALUES (8, 'new record added', NULL);
INSERT INTO `log` VALUES (9, 'new record added', NULL);
INSERT INTO `log` VALUES (10, 'new record added', NULL);
INSERT INTO `log` VALUES (11, 'new record added', NULL);
INSERT INTO `log` VALUES (12, 'new record added', NULL);
INSERT INTO `log` VALUES (13, 'new record added', NULL);
INSERT INTO `log` VALUES (14, 'new record added', NULL);
INSERT INTO `log` VALUES (15, 'new record added', NULL);
INSERT INTO `log` VALUES (16, 'new record added', NULL);
INSERT INTO `log` VALUES (17, 'new record added', NULL);
INSERT INTO `log` VALUES (18, 'new record added', NULL);
INSERT INTO `log` VALUES (19, 'new record added', NULL);
INSERT INTO `log` VALUES (20, 'new record added', NULL);
INSERT INTO `log` VALUES (21, 'new record added', NULL);
INSERT INTO `log` VALUES (22, 'new record added', NULL);

-- ----------------------------
-- Procedure structure for pro_findById
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_findById`;
delimiter ;;
CREATE PROCEDURE `pro_findById`(IN sid INT,out oid INT, OUT sname VARCHAR(20))
BEGIN
       SELECT id ,name INTO oid, sname from employee where id=sid;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for pro_insert
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_insert`;
delimiter ;;
CREATE PROCEDURE `pro_insert`()
BEGIN
     INSERT INTO employee(name,depId,gender,salary) VALUES('lulu2',3,'female',3500);
		 INSERT INTO employee(name,depId,gender,salary) VALUES('liaoli2',1,'male',3000);
		 INSERT INTO employee(name,depId,gender,salary) VALUES('zIping2',1,'fmale',3000);
		 INSERT INTO employee(name,depId,gender,salary) VALUES('biuking2',1,'male',3000);
		 INSERT INTO employee(name,depId,gender,salary) VALUES('ketongkee2',1,'fmale',3000);
		 INSERT INTO employee(name,depId,gender,salary) VALUES('chai2',1,'female',3000);
		 INSERT INTO employee(name,depId,gender,salary) VALUES('zhang2',3,'female',3000);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for pro_showNameAndJob
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_showNameAndJob`;
delimiter ;;
CREATE PROCEDURE `pro_showNameAndJob`()
BEGIN
       SELECT name, gender,salary,depName from employee,dept where employee.depId=dept.id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for pro_test
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_test`;
delimiter ;;
CREATE PROCEDURE `pro_test`(OUT C INT)
BEGIN
        SELECT COUNT(*) INTO C FROM employee;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for pro_update
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_update`;
delimiter ;;
CREATE PROCEDURE `pro_update`()
BEGIN
 UPDATE employee set name='Pauline',salary=3000 WHERE id=1;
 UPDATE employee set name='Nancy', gender='female',salary=3500 WHERE id=2;
				 
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table employee
-- ----------------------------
DROP TRIGGER IF EXISTS `trg_add`;
delimiter ;;
CREATE TRIGGER `trg_add` AFTER INSERT ON `employee` FOR EACH ROW INSERT INTO log(content) values("new record added")
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
