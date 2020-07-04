/*
 Navicat Premium Data Transfer

 Source Server         : localhost-mysql
 Source Server Type    : MySQL
 Source Server Version : 100410
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 100410
 File Encoding         : 65001

 Date: 05/07/2020 00:30:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, '啊', 12);
INSERT INTO `student` VALUES (3, '啊实打实', 12);

-- ----------------------------
-- Table structure for tbl_deptment
-- ----------------------------
DROP TABLE IF EXISTS `tbl_deptment`;
CREATE TABLE `tbl_deptment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_deptment
-- ----------------------------
INSERT INTO `tbl_deptment` VALUES (1, '研发部');
INSERT INTO `tbl_deptment` VALUES (2, '技术部');
INSERT INTO `tbl_deptment` VALUES (3, '销售部');
INSERT INTO `tbl_deptment` VALUES (4, '后勤部');
INSERT INTO `tbl_deptment` VALUES (5, '维护部');

-- ----------------------------
-- Table structure for tbl_employee
-- ----------------------------
DROP TABLE IF EXISTS `tbl_employee`;
CREATE TABLE `tbl_employee`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gender` int(255) NULL DEFAULT NULL,
  `d_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 304 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_employee
-- ----------------------------
INSERT INTO `tbl_employee` VALUES (1, 'zhangsan', '194849', 1, 1);
INSERT INTO `tbl_employee` VALUES (2, 'lisu', 'weqe', 0, 2);
INSERT INTO `tbl_employee` VALUES (3, 'wangsd', '2321', 1, 1);
INSERT INTO `tbl_employee` VALUES (204, 'd0600', '03971b35@qq.com.', 0, 1);
INSERT INTO `tbl_employee` VALUES (205, '3fe78', '5466eef3@qq.com.', 1, 2);
INSERT INTO `tbl_employee` VALUES (206, '997de', '4fb2534e@qq.com.', 0, 3);
INSERT INTO `tbl_employee` VALUES (207, 'ed921', 'c6b7a730@qq.com.', 1, 4);
INSERT INTO `tbl_employee` VALUES (208, '03a1a', 'b9df0321@qq.com.', 0, 5);
INSERT INTO `tbl_employee` VALUES (209, 'ca89b', '9e93f22a@qq.com.', 1, 1);
INSERT INTO `tbl_employee` VALUES (210, 'dfb8a', '2b6ed4cc@qq.com.', 0, 2);
INSERT INTO `tbl_employee` VALUES (211, '36124', '92cff063@qq.com.', 1, 3);
INSERT INTO `tbl_employee` VALUES (212, '27778', '02918886@qq.com.', 0, 4);
INSERT INTO `tbl_employee` VALUES (213, 'ba75c', 'ab2adf39@qq.com.', 1, 5);
INSERT INTO `tbl_employee` VALUES (214, 'ec4f4', '40af3eb3@qq.com.', 0, 1);
INSERT INTO `tbl_employee` VALUES (215, '4889c', '777d8327@qq.com.', 1, 2);
INSERT INTO `tbl_employee` VALUES (216, '05732', '9723a6aa@qq.com.', 0, 3);
INSERT INTO `tbl_employee` VALUES (217, 'bdba9', 'c0db2c3a@qq.com.', 1, 4);
INSERT INTO `tbl_employee` VALUES (218, '07999', '43c5f59f@qq.com.', 0, 5);
INSERT INTO `tbl_employee` VALUES (219, '3fed5', '4ee5ceb1@qq.com.', 1, 1);
INSERT INTO `tbl_employee` VALUES (220, 'f4377', 'ca911170@qq.com.', 0, 2);
INSERT INTO `tbl_employee` VALUES (221, '6c505', '299e77be@qq.com.', 1, 3);
INSERT INTO `tbl_employee` VALUES (222, '7e5e5', '4466a753@qq.com.', 0, 4);
INSERT INTO `tbl_employee` VALUES (223, '335b3', '052ec450@qq.com.', 1, 5);
INSERT INTO `tbl_employee` VALUES (224, '557dc', '13db403e@qq.com.', 0, 1);
INSERT INTO `tbl_employee` VALUES (225, '8ee13', '36eddbc9@qq.com.', 1, 2);
INSERT INTO `tbl_employee` VALUES (226, '885ab', '5b56ad3c@qq.com.', 0, 3);
INSERT INTO `tbl_employee` VALUES (227, 'f645f', '7676c590@qq.com.', 1, 4);
INSERT INTO `tbl_employee` VALUES (228, '69487', 'df1465b0@qq.com.', 0, 5);
INSERT INTO `tbl_employee` VALUES (229, '884b5', 'e7fd423f@qq.com.', 1, 1);
INSERT INTO `tbl_employee` VALUES (230, 'f7eae', '111a6428@qq.com.', 0, 2);
INSERT INTO `tbl_employee` VALUES (231, 'a0b69', 'dd096430@qq.com.', 1, 3);
INSERT INTO `tbl_employee` VALUES (232, 'df6a9', '945c82b8@qq.com.', 0, 4);
INSERT INTO `tbl_employee` VALUES (233, '384ee', '48f02d3e@qq.com.', 1, 5);
INSERT INTO `tbl_employee` VALUES (234, '7c808', '91268c4c@qq.com.', 0, 1);
INSERT INTO `tbl_employee` VALUES (235, '65b2e', '5912a97b@qq.com.', 1, 2);
INSERT INTO `tbl_employee` VALUES (236, 'a7baa', 'dd278638@qq.com.', 0, 3);
INSERT INTO `tbl_employee` VALUES (237, 'f5dd9', '20ef77f6@qq.com.', 1, 4);
INSERT INTO `tbl_employee` VALUES (238, '9b5d1', '8421c0ac@qq.com.', 0, 5);
INSERT INTO `tbl_employee` VALUES (239, '3368b', '783562be@qq.com.', 1, 1);
INSERT INTO `tbl_employee` VALUES (240, '37456', '9613231d@qq.com.', 0, 2);
INSERT INTO `tbl_employee` VALUES (241, 'b8a2d', 'd1ffd8eb@qq.com.', 1, 3);
INSERT INTO `tbl_employee` VALUES (242, '0afe6', '4105641f@qq.com.', 0, 4);
INSERT INTO `tbl_employee` VALUES (243, 'c4f2d', 'fde13cc2@qq.com.', 1, 5);
INSERT INTO `tbl_employee` VALUES (244, '79232', 'c5072093@qq.com.', 0, 1);
INSERT INTO `tbl_employee` VALUES (245, 'b5b16', 'd1901156@qq.com.', 1, 2);
INSERT INTO `tbl_employee` VALUES (246, '7ce0e', '1214e401@qq.com.', 0, 3);
INSERT INTO `tbl_employee` VALUES (247, '44c33', '42d09c57@qq.com.', 1, 4);
INSERT INTO `tbl_employee` VALUES (248, 'f4696', '351d8e3b@qq.com.', 0, 5);
INSERT INTO `tbl_employee` VALUES (249, '201b6', 'ba737720@qq.com.', 1, 1);
INSERT INTO `tbl_employee` VALUES (250, 'de816', '38b1c3dc@qq.com.', 0, 2);
INSERT INTO `tbl_employee` VALUES (251, '2bc29', 'e69b2ca3@qq.com.', 1, 3);
INSERT INTO `tbl_employee` VALUES (252, 'eae94', '28a3ccd7@qq.com.', 0, 4);
INSERT INTO `tbl_employee` VALUES (253, 'f563e', '337f7d07@qq.com.', 1, 5);
INSERT INTO `tbl_employee` VALUES (254, 'abb4a', '5df83a9b@qq.com.', 0, 1);
INSERT INTO `tbl_employee` VALUES (255, '630cf', '34a0b5d6@qq.com.', 1, 2);
INSERT INTO `tbl_employee` VALUES (256, '27f80', '866110b8@qq.com.', 0, 3);
INSERT INTO `tbl_employee` VALUES (257, '6fd0c', '6627f3e5@qq.com.', 1, 4);
INSERT INTO `tbl_employee` VALUES (258, 'f58ef', '37af9702@qq.com.', 0, 5);
INSERT INTO `tbl_employee` VALUES (259, '29c1e', '9fe94b2a@qq.com.', 1, 1);
INSERT INTO `tbl_employee` VALUES (260, 'ad128', '0f982a40@qq.com.', 0, 2);
INSERT INTO `tbl_employee` VALUES (261, '132a6', 'ba75fad6@qq.com.', 1, 3);
INSERT INTO `tbl_employee` VALUES (262, 'bbd9b', '52adb6dc@qq.com.', 0, 4);
INSERT INTO `tbl_employee` VALUES (263, '158f8', 'a4654f13@qq.com.', 1, 5);
INSERT INTO `tbl_employee` VALUES (264, '721a6', 'bbb677df@qq.com.', 0, 1);
INSERT INTO `tbl_employee` VALUES (265, 'e46a4', 'a07175d3@qq.com.', 1, 2);
INSERT INTO `tbl_employee` VALUES (266, '4b583', 'a30971c5@qq.com.', 0, 3);
INSERT INTO `tbl_employee` VALUES (267, 'b3fc8', 'e0293582@qq.com.', 1, 4);
INSERT INTO `tbl_employee` VALUES (268, '85ea8', '994d86ec@qq.com.', 0, 5);
INSERT INTO `tbl_employee` VALUES (269, '5448a', '0aac8382@qq.com.', 1, 1);
INSERT INTO `tbl_employee` VALUES (270, 'f3c60', '4c88295d@qq.com.', 0, 2);
INSERT INTO `tbl_employee` VALUES (271, '33159', 'c0db3caa@qq.com.', 1, 3);
INSERT INTO `tbl_employee` VALUES (272, '434a8', 'a07a82ff@qq.com.', 0, 4);
INSERT INTO `tbl_employee` VALUES (273, 'e0ce3', '392b127f@qq.com.', 1, 5);
INSERT INTO `tbl_employee` VALUES (274, '2f9b3', '5dc3c4d2@qq.com.', 0, 1);
INSERT INTO `tbl_employee` VALUES (275, '351a2', 'e0e2fd63@qq.com.', 1, 2);
INSERT INTO `tbl_employee` VALUES (276, '281c3', '455a5885@qq.com.', 0, 3);
INSERT INTO `tbl_employee` VALUES (277, '4189d', '411b3080@qq.com.', 1, 4);
INSERT INTO `tbl_employee` VALUES (278, '684fc', '549d22db@qq.com.', 0, 5);
INSERT INTO `tbl_employee` VALUES (279, 'bf978', 'c1d077a3@qq.com.', 1, 1);
INSERT INTO `tbl_employee` VALUES (280, '9579d', '9e6d40dc@qq.com.', 0, 2);
INSERT INTO `tbl_employee` VALUES (281, '4ea83', '85b5f60c@qq.com.', 1, 3);
INSERT INTO `tbl_employee` VALUES (282, '5e1b6', '2bb8d47d@qq.com.', 0, 4);
INSERT INTO `tbl_employee` VALUES (283, '03b29', 'a54d1fb9@qq.com.', 1, 5);
INSERT INTO `tbl_employee` VALUES (284, '1c048', 'a00e72db@qq.com.', 0, 1);
INSERT INTO `tbl_employee` VALUES (285, '05c3a', 'e3a63e46@qq.com.', 1, 2);
INSERT INTO `tbl_employee` VALUES (286, '9189f', '56774e14@qq.com.', 0, 3);
INSERT INTO `tbl_employee` VALUES (287, '9f936', '85bc59b9@qq.com.', 1, 4);
INSERT INTO `tbl_employee` VALUES (288, 'e9da7', 'e643aa62@qq.com.', 0, 5);
INSERT INTO `tbl_employee` VALUES (289, '8526c', 'ccb572ca@qq.com.', 1, 1);
INSERT INTO `tbl_employee` VALUES (290, 'e4fce', '226ca540@qq.com.', 0, 2);
INSERT INTO `tbl_employee` VALUES (291, '29b8b', 'ed818a93@qq.com.', 1, 3);
INSERT INTO `tbl_employee` VALUES (292, '4cd4c', '397fc644@qq.com.', 0, 4);
INSERT INTO `tbl_employee` VALUES (293, '07cec', '9ddb7e2e@qq.com.', 1, 5);
INSERT INTO `tbl_employee` VALUES (294, '7a08f', 'd33e8719@qq.com.', 0, 1);
INSERT INTO `tbl_employee` VALUES (295, '98aae', '836c0d37@qq.com.', 1, 2);
INSERT INTO `tbl_employee` VALUES (296, '84164', 'b10872e4@qq.com.', 0, 3);
INSERT INTO `tbl_employee` VALUES (297, 'b0f8f', '37316a80@qq.com.', 1, 4);
INSERT INTO `tbl_employee` VALUES (298, '4c153', 'e1a6441c@qq.com.', 0, 5);
INSERT INTO `tbl_employee` VALUES (299, 'bed1e', '53e0a6e9@qq.com.', 1, 1);
INSERT INTO `tbl_employee` VALUES (300, '3bbd6', '290da6fc@qq.com.', 0, 2);
INSERT INTO `tbl_employee` VALUES (301, '022dd', 'a5ef66c5@qq.com.', 1, 3);
INSERT INTO `tbl_employee` VALUES (302, '1879e', 'caf330b9@qq.com.', 0, 4);
INSERT INTO `tbl_employee` VALUES (303, '05947', 'c3fd3e2e@qq.com.', 1, 5);

SET FOREIGN_KEY_CHECKS = 1;
