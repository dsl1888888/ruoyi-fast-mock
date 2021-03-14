/*
 Navicat Premium Data Transfer

 Source Server         : 120.79.161.223
 Source Server Type    : MySQL
 Source Server Version : 50730
 Source Host           : 120.79.161.223:3306
 Source Schema         : ry

 Target Server Type    : MySQL
 Target Server Version : 50730
 File Encoding         : 65001

 Date: 14/03/2021 14:39:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (7, 'mock_wykj_xinsheng_fudai', '', NULL, NULL, 'MockWykjXinshengFudai', 'crud', 'com.ruoyi.project.system', 'system', 'fudai', NULL, 'ruoyi', '0', '/', NULL, 'admin', '2021-01-14 17:33:23', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (8, 'mock_wykj_xinsheng_shoudai', '', NULL, NULL, 'MockWykjXinshengShoudai', 'crud', 'com.ruoyi.project.system', 'system', 'shoudai', NULL, 'ruoyi', '0', '/', NULL, 'admin', '2021-01-14 17:33:23', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (9, 'mock_wykj_yunyingbaobiao4', '', NULL, NULL, 'MockWykjYunyingbaobiao4', 'crud', 'com.ruoyi.project.system', 'system', 'yunyingbaobiao4', NULL, 'ruoyi', '0', '/', NULL, 'admin', '2021-01-14 21:17:37', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (10, 'mock_wykj_yunyingbaobiao3_fangkuan', '', NULL, NULL, 'MockWykjYunyingbaobiao3Fangkuan', 'crud', 'com.ruoyi.project.system', 'system', 'fangkuan', NULL, 'ruoyi', '0', '/', NULL, 'admin', '2021-01-14 21:29:34', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (11, 'mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing', '', NULL, NULL, 'MockWykjYunyingbaobiao2Yinghuanqieshijihuanqing', 'crud', 'com.ruoyi.project.system', 'system', 'yinghuanqieshijihuanqing', NULL, 'ruoyi', '0', '/', NULL, 'admin', '2021-01-15 10:00:05', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (12, 'mock_wykj_yunyingbaobiao1_yuanyingqingkuan', '', NULL, NULL, 'MockWykjYunyingbaobiao1Yuanyingqingkuan', 'crud', 'com.ruoyi.project.system', 'system', 'yuanyingqingkuan', NULL, 'ruoyi', '0', '/', NULL, 'admin', '2021-01-15 10:10:38', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (13, 'mock_wykj_daihoubaobiao', '', NULL, NULL, 'MockWykjDaihoubaobiao', 'crud', 'com.ruoyi.project.system', 'system', 'daihoubaobiao', NULL, 'ruoyi', '0', '/', NULL, 'admin', '2021-01-15 11:18:41', '', NULL, NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 171 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (79, '7', 'a0', NULL, 'varchar(300)', 'String', 'a0', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 1, 'admin', '2021-01-14 17:33:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (80, '7', 'a1', NULL, 'varchar(300)', 'String', 'a1', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-01-14 17:33:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (81, '7', 'a2', NULL, 'varchar(300)', 'String', 'a2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-01-14 17:33:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (82, '7', 'a3', NULL, 'varchar(300)', 'String', 'a3', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-01-14 17:33:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (83, '7', 'a4', NULL, 'varchar(300)', 'String', 'a4', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-01-14 17:33:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (84, '7', 'a5', NULL, 'varchar(300)', 'String', 'a5', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-01-14 17:33:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (85, '7', 'a6', NULL, 'varchar(300)', 'String', 'a6', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-01-14 17:33:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (86, '7', 'id', NULL, 'bigint(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2021-01-14 17:33:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (87, '8', 'a0', NULL, 'varchar(300)', 'String', 'a0', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 1, 'admin', '2021-01-14 17:33:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (88, '8', 'a1', NULL, 'varchar(300)', 'String', 'a1', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-01-14 17:33:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (89, '8', 'a2', NULL, 'varchar(300)', 'String', 'a2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-01-14 17:33:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (90, '8', 'a3', NULL, 'varchar(300)', 'String', 'a3', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-01-14 17:33:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (91, '8', 'a4', NULL, 'varchar(300)', 'String', 'a4', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-01-14 17:33:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (92, '8', 'a5', NULL, 'varchar(300)', 'String', 'a5', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-01-14 17:33:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (93, '8', 'a6', NULL, 'varchar(300)', 'String', 'a6', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-01-14 17:33:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (94, '8', 'a7', NULL, 'varchar(300)', 'String', 'a7', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2021-01-14 17:33:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (95, '8', 'a8', NULL, 'varchar(300)', 'String', 'a8', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2021-01-14 17:33:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (96, '8', 'a9', NULL, 'varchar(300)', 'String', 'a9', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2021-01-14 17:33:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (97, '8', 'a10', NULL, 'varchar(300)', 'String', 'a10', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2021-01-14 17:33:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (98, '8', 'a11', NULL, 'varchar(300)', 'String', 'a11', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2021-01-14 17:33:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (99, '8', 'a12', NULL, 'varchar(300)', 'String', 'a12', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2021-01-14 17:33:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (100, '8', 'a13', NULL, 'varchar(300)', 'String', 'a13', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2021-01-14 17:33:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (101, '8', 'a14', NULL, 'varchar(300)', 'String', 'a14', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2021-01-14 17:33:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (102, '8', 'a15', NULL, 'varchar(300)', 'String', 'a15', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2021-01-14 17:33:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (103, '8', 'a16', NULL, 'varchar(300)', 'String', 'a16', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2021-01-14 17:33:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (104, '8', 'id', NULL, 'bigint(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 18, 'admin', '2021-01-14 17:33:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (105, '9', 'a0', NULL, 'varchar(300)', 'String', 'a0', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 1, 'admin', '2021-01-14 21:17:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (106, '9', 'a1', NULL, 'varchar(300)', 'String', 'a1', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-01-14 21:17:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (107, '9', 'a2', NULL, 'varchar(300)', 'String', 'a2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-01-14 21:17:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (108, '9', 'a3', NULL, 'varchar(300)', 'String', 'a3', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-01-14 21:17:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (109, '9', 'a4', NULL, 'varchar(300)', 'String', 'a4', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-01-14 21:17:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (110, '9', 'a5', NULL, 'varchar(300)', 'String', 'a5', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-01-14 21:17:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (111, '9', 'a6', NULL, 'varchar(300)', 'String', 'a6', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-01-14 21:17:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (112, '9', 'a7', NULL, 'varchar(300)', 'String', 'a7', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2021-01-14 21:17:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (113, '9', 'id', NULL, 'bigint(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2021-01-14 21:17:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (114, '10', 'a0', NULL, 'varchar(300)', 'String', 'a0', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 1, 'admin', '2021-01-14 21:29:34', '', NULL);
INSERT INTO `gen_table_column` VALUES (115, '10', 'a1', NULL, 'varchar(300)', 'String', 'a1', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-01-14 21:29:34', '', NULL);
INSERT INTO `gen_table_column` VALUES (116, '10', 'a2', NULL, 'varchar(300)', 'String', 'a2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-01-14 21:29:34', '', NULL);
INSERT INTO `gen_table_column` VALUES (117, '10', 'a3', NULL, 'varchar(300)', 'String', 'a3', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-01-14 21:29:34', '', NULL);
INSERT INTO `gen_table_column` VALUES (118, '10', 'a4', NULL, 'varchar(300)', 'String', 'a4', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-01-14 21:29:34', '', NULL);
INSERT INTO `gen_table_column` VALUES (119, '10', 'a5', NULL, 'varchar(300)', 'String', 'a5', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-01-14 21:29:34', '', NULL);
INSERT INTO `gen_table_column` VALUES (120, '10', 'a6', NULL, 'varchar(300)', 'String', 'a6', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-01-14 21:29:34', '', NULL);
INSERT INTO `gen_table_column` VALUES (121, '10', 'id', NULL, 'bigint(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2021-01-14 21:29:34', '', NULL);
INSERT INTO `gen_table_column` VALUES (122, '11', 'a0', NULL, 'varchar(300)', 'String', 'a0', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 1, 'admin', '2021-01-15 10:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (123, '11', 'a1', NULL, 'varchar(300)', 'String', 'a1', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-01-15 10:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (124, '11', 'a2', NULL, 'varchar(300)', 'String', 'a2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-01-15 10:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (125, '11', 'a3', NULL, 'varchar(300)', 'String', 'a3', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-01-15 10:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (126, '11', 'a4', NULL, 'varchar(300)', 'String', 'a4', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-01-15 10:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (127, '11', 'a5', NULL, 'varchar(300)', 'String', 'a5', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-01-15 10:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (128, '11', 'a6', NULL, 'varchar(300)', 'String', 'a6', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-01-15 10:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (129, '11', 'a7', NULL, 'varchar(300)', 'String', 'a7', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2021-01-15 10:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (130, '11', 'a8', NULL, 'varchar(300)', 'String', 'a8', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2021-01-15 10:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (131, '11', 'a9', NULL, 'varchar(300)', 'String', 'a9', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2021-01-15 10:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (132, '11', 'id', NULL, 'bigint(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2021-01-15 10:00:05', '', NULL);
INSERT INTO `gen_table_column` VALUES (133, '12', 'a0', NULL, 'varchar(300)', 'String', 'a0', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 1, 'admin', '2021-01-15 10:10:39', '', NULL);
INSERT INTO `gen_table_column` VALUES (134, '12', 'a1', NULL, 'varchar(300)', 'String', 'a1', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-01-15 10:10:39', '', NULL);
INSERT INTO `gen_table_column` VALUES (135, '12', 'a2', NULL, 'varchar(300)', 'String', 'a2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-01-15 10:10:39', '', NULL);
INSERT INTO `gen_table_column` VALUES (136, '12', 'a3', NULL, 'varchar(300)', 'String', 'a3', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-01-15 10:10:39', '', NULL);
INSERT INTO `gen_table_column` VALUES (137, '12', 'a4', NULL, 'varchar(300)', 'String', 'a4', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-01-15 10:10:39', '', NULL);
INSERT INTO `gen_table_column` VALUES (138, '12', 'a5', NULL, 'varchar(300)', 'String', 'a5', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-01-15 10:10:39', '', NULL);
INSERT INTO `gen_table_column` VALUES (139, '12', 'a6', NULL, 'varchar(300)', 'String', 'a6', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-01-15 10:10:39', '', NULL);
INSERT INTO `gen_table_column` VALUES (140, '12', 'a7', NULL, 'varchar(300)', 'String', 'a7', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2021-01-15 10:10:39', '', NULL);
INSERT INTO `gen_table_column` VALUES (141, '12', 'a8', NULL, 'varchar(300)', 'String', 'a8', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2021-01-15 10:10:39', '', NULL);
INSERT INTO `gen_table_column` VALUES (142, '12', 'a9', NULL, 'varchar(300)', 'String', 'a9', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2021-01-15 10:10:39', '', NULL);
INSERT INTO `gen_table_column` VALUES (143, '12', 'a10', NULL, 'varchar(300)', 'String', 'a10', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2021-01-15 10:10:39', '', NULL);
INSERT INTO `gen_table_column` VALUES (144, '12', 'a11', NULL, 'varchar(300)', 'String', 'a11', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2021-01-15 10:10:39', '', NULL);
INSERT INTO `gen_table_column` VALUES (145, '12', 'a12', NULL, 'varchar(300)', 'String', 'a12', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2021-01-15 10:10:39', '', NULL);
INSERT INTO `gen_table_column` VALUES (146, '12', 'a13', NULL, 'varchar(300)', 'String', 'a13', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2021-01-15 10:10:39', '', NULL);
INSERT INTO `gen_table_column` VALUES (147, '12', 'a14', NULL, 'varchar(300)', 'String', 'a14', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2021-01-15 10:10:39', '', NULL);
INSERT INTO `gen_table_column` VALUES (148, '12', 'a15', NULL, 'varchar(300)', 'String', 'a15', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2021-01-15 10:10:39', '', NULL);
INSERT INTO `gen_table_column` VALUES (149, '12', 'a16', NULL, 'varchar(300)', 'String', 'a16', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2021-01-15 10:10:39', '', NULL);
INSERT INTO `gen_table_column` VALUES (150, '12', 'a17', NULL, 'varchar(300)', 'String', 'a17', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2021-01-15 10:10:39', '', NULL);
INSERT INTO `gen_table_column` VALUES (151, '12', 'a18', NULL, 'varchar(300)', 'String', 'a18', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2021-01-15 10:10:39', '', NULL);
INSERT INTO `gen_table_column` VALUES (152, '12', 'a19', NULL, 'varchar(300)', 'String', 'a19', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2021-01-15 10:10:39', '', NULL);
INSERT INTO `gen_table_column` VALUES (153, '12', 'id', NULL, 'bigint(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 21, 'admin', '2021-01-15 10:10:39', '', NULL);
INSERT INTO `gen_table_column` VALUES (154, '13', 'a0', NULL, 'varchar(300)', 'String', 'a0', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 1, 'admin', '2021-01-15 11:18:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (155, '13', 'a1', NULL, 'varchar(300)', 'String', 'a1', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-01-15 11:18:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (156, '13', 'a2', NULL, 'varchar(300)', 'String', 'a2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-01-15 11:18:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (157, '13', 'a3', NULL, 'varchar(300)', 'String', 'a3', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-01-15 11:18:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (158, '13', 'a4', NULL, 'varchar(300)', 'String', 'a4', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-01-15 11:18:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (159, '13', 'a5', NULL, 'varchar(300)', 'String', 'a5', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-01-15 11:18:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (160, '13', 'a6', NULL, 'varchar(300)', 'String', 'a6', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-01-15 11:18:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (161, '13', 'a7', NULL, 'varchar(300)', 'String', 'a7', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2021-01-15 11:18:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (162, '13', 'a8', NULL, 'varchar(300)', 'String', 'a8', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2021-01-15 11:18:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (163, '13', 'a9', NULL, 'varchar(300)', 'String', 'a9', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2021-01-15 11:18:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (164, '13', 'a10', NULL, 'varchar(300)', 'String', 'a10', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2021-01-15 11:18:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (165, '13', 'a11', NULL, 'varchar(300)', 'String', 'a11', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2021-01-15 11:18:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (166, '13', 'a12', NULL, 'varchar(300)', 'String', 'a12', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2021-01-15 11:18:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (167, '13', 'a13', NULL, 'varchar(300)', 'String', 'a13', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2021-01-15 11:18:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (168, '13', 'a14', NULL, 'varchar(300)', 'String', 'a14', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2021-01-15 11:18:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (169, '13', 'a15', NULL, 'varchar(300)', 'String', 'a15', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2021-01-15 11:18:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (170, '13', 'id', NULL, 'bigint(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 17, 'admin', '2021-01-15 11:18:41', '', NULL);

-- ----------------------------
-- Table structure for mock_wykj_daihoubaobiao
-- ----------------------------
DROP TABLE IF EXISTS `mock_wykj_daihoubaobiao`;
CREATE TABLE `mock_wykj_daihoubaobiao`  (
  `a0` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a1` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a2` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a3` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a4` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a5` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a6` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a7` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a8` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a9` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a10` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a11` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a12` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a13` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a14` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a15` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 557 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mock_wykj_daihoubaobiao
-- ----------------------------
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-07-29', '全部', '72', '69', '3', '0.291667', '13', '0.180556', '9', '0.125', '6', '0.083333', '5', '0.069444', '4', '0.055556', 1);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-07-30', '全部', '25', '22', '3', '0.28', '6', '0.24', '4', '0.16', '4', '0.16', '3', '0.12', '3', '0.12', 2);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-07-31', '全部', '58', '50', '8', '0.362069', '14', '0.241379', '11', '0.189655', '9', '0.155172', '9', '0.155172', '9', '0.155172', 3);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-01', '全部', '41', '35', '6', '0.365854', '12', '0.292683', '9', '0.219512', '7', '0.170732', '7', '0.170732', '7', '0.170732', 4);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-02', '全部', '70', '59', '11', '0.328571', '20', '0.285714', '17', '0.242857', '14', '0.2', '12', '0.171429', '12', '0.171429', 5);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-03', '全部', '56', '49', '7', '0.339286', '14', '0.25', '11', '0.196429', '10', '0.178571', '10', '0.178571', '8', '0.142857', 6);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-04', '全部', '68', '57', '11', '0.338235', '19', '0.279412', '16', '0.235294', '14', '0.205882', '12', '0.176471', '11', '0.161765', 7);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-05', '全部', '83', '72', '11', '0.325301', '20', '0.240964', '16', '0.192771', '12', '0.144578', '12', '0.144578', '12', '0.144578', 8);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-06', '全部', '96', '89', '7', '0.28125', '17', '0.177083', '12', '0.125', '10', '0.104167', '8', '0.083333', '8', '0.083333', 9);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-07', '全部', '41', '37', '4', '0.317073', '10', '0.243902', '8', '0.195122', '5', '0.121951', '5', '0.121951', '4', '0.097561', 10);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-08', '全部', '45', '39', '6', '0.333333', '11', '0.244444', '8', '0.177778', '7', '0.155556', '6', '0.133333', '6', '0.133333', 11);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-09', '全部', '67', '60', '7', '0.313433', '15', '0.223881', '13', '0.19403', '10', '0.149254', '9', '0.134328', '8', '0.119403', 12);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-10', '全部', '59', '48', '11', '0.355932', '17', '0.288136', '15', '0.254237', '12', '0.20339', '12', '0.20339', '11', '0.186441', 13);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-11', '全部', '96', '87', '9', '0.28125', '20', '0.208333', '15', '0.15625', '11', '0.114583', '10', '0.104167', '9', '0.09375', 14);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-12', '全部', '65', '52', '13', '0.353846', '19', '0.292308', '16', '0.246154', '14', '0.215385', '14', '0.215385', '13', '0.2', 15);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-13', '全部', '720', '597', '123', '0.354167', '203', '0.281944', '174', '0.241667', '152', '0.211111', '134', '0.186111', '134', '0.186111', 16);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-14', '全部', '902', '823', '79', '0.296009', '200', '0.221729', '152', '0.168514', '108', '0.119734', '96', '0.10643', '80', '0.088692', 17);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-15', '全部', '803', '755', '48', '0.287671', '146', '0.181818', '109', '0.135741', '75', '0.0934', '60', '0.07472', '55', '0.068493', 18);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-16', '全部', '751', '640', '111', '0.283622', '181', '0.241012', '150', '0.199734', '126', '0.167776', '121', '0.161119', '121', '0.161119', 19);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-17', '全部', '1090', '998', '92', '0.319266', '218', '0.2', '163', '0.149541', '123', '0.112844', '98', '0.089908', '95', '0.087156', 20);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-18', '全部', '1254', '1180', '74', '0.277512', '227', '0.181021', '163', '0.129984', '125', '0.099681', '101', '0.080542', '93', '0.074163', 21);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-19', '全部', '1119', '955', '164', '0.301162', '283', '0.252904', '234', '0.209115', '202', '0.180518', '186', '0.16622', '177', '0.158177', 22);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-20', '全部', '1282', '1063', '219', '0.306552', '335', '0.26131', '297', '0.231669', '259', '0.202028', '237', '0.184867', '228', '0.177847', 23);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-21', '全部', '1077', '925', '152', '0.351903', '271', '0.251625', '227', '0.210771', '194', '0.18013', '170', '0.157846', '155', '0.143918', 24);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-22', '全部', '1140', '1016', '124', '0.292105', '265', '0.232456', '205', '0.179825', '172', '0.150877', '153', '0.134211', '137', '0.120175', 25);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-23', '全部', '1286', '1122', '164', '0.293157', '303', '0.235614', '239', '0.185848', '192', '0.1493', '185', '0.143857', '172', '0.133748', 26);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-24', '全部', '1184', '1039', '145', '0.304899', '271', '0.228885', '227', '0.191723', '184', '0.155405', '165', '0.139358', '151', '0.127534', 27);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-25', '全部', '1158', '1041', '117', '0.326425', '265', '0.228843', '219', '0.189119', '167', '0.144214', '142', '0.122625', '128', '0.110535', 28);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-26', '全部', '1149', '980', '169', '0.314186', '262', '0.228024', '224', '0.194952', '196', '0.170583', '191', '0.166232', '179', '0.155788', 29);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-27', '全部', '1015', '869', '146', '0.312315', '244', '0.240394', '200', '0.197044', '174', '0.171429', '158', '0.155665', '152', '0.149754', 30);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-28', '全部', '1290', '1209', '81', '0.272868', '236', '0.182946', '175', '0.135659', '120', '0.093023', '100', '0.077519', '89', '0.068992', 31);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-29', '全部', '1068', '904', '164', '0.320225', '262', '0.245318', '225', '0.210674', '201', '0.188202', '184', '0.172285', '179', '0.167603', 32);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-30', '全部', '1340', '1135', '205', '0.315672', '329', '0.245522', '273', '0.203731', '228', '0.170149', '219', '0.163433', '211', '0.157463', 33);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-31', '全部', '1067', '999', '68', '0.281162', '200', '0.187441', '137', '0.128397', '105', '0.098407', '91', '0.085286', '78', '0.073102', 34);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-01', '全部', '1290', '1178', '112', '0.283721', '267', '0.206977', '201', '0.155814', '157', '0.121705', '131', '0.10155', '123', '0.095349', 35);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-02', '全部', '1244', '1080', '164', '0.319936', '306', '0.245981', '245', '0.196945', '201', '0.161576', '181', '0.145498', '169', '0.135852', 36);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-03', '全部', '1229', '1102', '127', '0.318145', '280', '0.227828', '214', '0.174125', '179', '0.145647', '155', '0.126119', '143', '0.116355', 37);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-04', '全部', '1223', '1060', '163', '0.30417', '273', '0.223222', '221', '0.180703', '190', '0.155356', '177', '0.144726', '172', '0.140638', 38);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-05', '全部', '1193', '1024', '169', '0.342833', '273', '0.228835', '235', '0.196982', '208', '0.17435', '192', '0.160939', '173', '0.145013', 39);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-06', '全部', '983', '852', '131', '0.327569', '246', '0.250254', '201', '0.204476', '167', '0.169888', '149', '0.151577', '140', '0.142421', 40);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-07', '全部', '1063', '983', '80', '0.245532', '184', '0.173095', '153', '0.143932', '129', '0.121355', '110', '0.103481', '96', '0.09031', 41);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-08', '全部', '1276', '1088', '188', '0.323668', '305', '0.239028', '242', '0.189655', '209', '0.163793', '201', '0.157524', '198', '0.155172', 42);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-09', '全部', '1171', '1064', '107', '0.287788', '248', '0.211785', '188', '0.160547', '150', '0.128096', '131', '0.11187', '121', '0.10333', 43);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-10', '全部', '1019', '964', '55', '0.265947', '171', '0.167812', '116', '0.113837', '88', '0.086359', '74', '0.07262', '65', '0.063788', 44);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-11', '全部', '1192', '979', '213', '0.339765', '327', '0.274329', '264', '0.221477', '229', '0.192114', '223', '0.187081', '217', '0.182047', 45);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-12', '全部', '1097', '939', '158', '0.309936', '255', '0.232452', '219', '0.199635', '180', '0.164084', '169', '0.154057', '165', '0.15041', 46);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-13', '全部', '1025', '916', '109', '0.294634', '219', '0.213659', '170', '0.165854', '135', '0.131707', '127', '0.123902', '122', '0.119024', 47);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-14', '全部', '960', '819', '141', '0.344792', '240', '0.25', '180', '0.1875', '161', '0.167708', '151', '0.157292', '144', '0.15', 48);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-15', '全部', '1167', '1054', '113', '0.278492', '249', '0.213368', '181', '0.155099', '152', '0.130249', '127', '0.108826', '118', '0.101114', 49);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-16', '全部', '1044', '903', '141', '0.310345', '259', '0.248084', '202', '0.193487', '170', '0.162835', '163', '0.15613', '150', '0.143678', 50);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-17', '全部', '1098', '1031', '67', '0.275046', '191', '0.173953', '151', '0.137523', '109', '0.099271', '91', '0.082878', '80', '0.07286', 51);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-18', '全部', '1192', '1111', '81', '0.271812', '222', '0.186242', '145', '0.121644', '107', '0.089765', '93', '0.07802', '82', '0.068792', 52);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-19', '全部', '1117', '946', '171', '0.331244', '307', '0.274843', '242', '0.216652', '215', '0.19248', '187', '0.167413', '186', '0.166517', 53);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-20', '全部', '891', '796', '95', '0.30303', '200', '0.224467', '147', '0.164983', '120', '0.13468', '105', '0.117845', '99', '0.111111', 54);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-21', '全部', '1081', '899', '182', '0.3321', '292', '0.27012', '248', '0.229417', '207', '0.191489', '201', '0.185939', '189', '0.174838', 55);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-22', '全部', '1163', '1084', '79', '0.269991', '208', '0.178848', '153', '0.131556', '109', '0.093723', '104', '0.089424', '87', '0.074807', 56);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-23', '全部', '1144', '995', '149', '0.326923', '273', '0.238636', '213', '0.186189', '185', '0.161713', '169', '0.147727', '162', '0.141608', 57);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-24', '全部', '1201', '1107', '94', '0.290591', '235', '0.19567', '180', '0.149875', '138', '0.114904', '116', '0.096586', '99', '0.082431', 58);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-25', '全部', '1100', '980', '120', '0.295455', '225', '0.204545', '185', '0.168182', '149', '0.135455', '135', '0.122727', '125', '0.113636', 59);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-26', '全部', '1173', '997', '176', '0.327366', '299', '0.254902', '241', '0.205456', '203', '0.173061', '180', '0.153453', '177', '0.150895', 60);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-27', '全部', '1235', '1148', '87', '0.289879', '222', '0.179757', '152', '0.123077', '116', '0.093927', '98', '0.079352', '96', '0.077733', 61);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-28', '全部', '988', '833', '155', '0.30668', '218', '0.220648', '182', '0.184211', '164', '0.165992', '158', '0.159919', '156', '0.157895', 62);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-29', '全部', '1167', '978', '189', '0.353042', '313', '0.268209', '274', '0.23479', '226', '0.193659', '217', '0.185947', '202', '0.173093', 63);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-30', '全部', '1181', '1010', '171', '0.325995', '271', '0.229467', '216', '0.182896', '188', '0.159187', '176', '0.149026', '172', '0.145639', 64);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-01', '全部', '1121', '1036', '85', '0.299732', '222', '0.198037', '167', '0.148974', '125', '0.111508', '106', '0.094558', '97', '0.08653', 65);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-02', '全部', '1060', '902', '158', '0.334906', '292', '0.275472', '234', '0.220755', '204', '0.192453', '185', '0.174528', '169', '0.159434', 66);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-03', '全部', '976', '881', '95', '0.302254', '202', '0.206967', '158', '0.161885', '121', '0.123975', '103', '0.105533', '101', '0.103484', 67);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-04', '全部', '1128', '964', '164', '0.310284', '240', '0.212766', '201', '0.178191', '179', '0.158688', '179', '0.158688', '176', '0.156028', 68);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-05', '全部', '1103', '970', '133', '0.310063', '248', '0.224841', '202', '0.183137', '172', '0.155938', '155', '0.140526', '148', '0.13418', 69);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-06', '全部', '1229', '1067', '162', '0.318145', '271', '0.220504', '220', '0.179007', '193', '0.157038', '173', '0.140765', '165', '0.134255', 70);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-07', '全部', '1138', '997', '141', '0.283831', '261', '0.22935', '202', '0.177504', '169', '0.148506', '158', '0.13884', '154', '0.135325', 71);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-08', '全部', '996', '909', '87', '0.285141', '188', '0.188755', '134', '0.134538', '110', '0.110442', '104', '0.104418', '100', '0.100402', 72);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-09', '全部', '1298', '1150', '148', '0.294299', '300', '0.231125', '226', '0.174114', '191', '0.147149', '167', '0.128659', '162', '0.124807', 73);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-10', '全部', '1030', '924', '106', '0.3', '221', '0.214563', '158', '0.153398', '134', '0.130097', '122', '0.118447', '115', '0.11165', 74);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-11', '全部', '1168', '1018', '150', '0.332192', '288', '0.246575', '233', '0.199486', '190', '0.162671', '169', '0.144692', '155', '0.132705', 75);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-12', '全部', '1040', '884', '156', '0.339423', '249', '0.239423', '221', '0.2125', '189', '0.181731', '169', '0.1625', '168', '0.161538', 76);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-13', '全部', '1205', '1030', '175', '0.318672', '317', '0.263071', '259', '0.214938', '220', '0.182573', '191', '0.158506', '177', '0.146888', 77);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-14', '全部', '1063', '972', '91', '0.285042', '205', '0.19285', '174', '0.163688', '131', '0.123236', '109', '0.10254', '105', '0.098777', 78);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-15', '全部', '1070', '943', '127', '0.325234', '267', '0.249533', '206', '0.192523', '170', '0.158879', '153', '0.142991', '137', '0.128037', 79);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-16', '全部', '1003', '911', '92', '0.274177', '201', '0.200399', '151', '0.150548', '122', '0.121635', '112', '0.111665', '99', '0.098704', 80);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-17', '全部', '960', '821', '139', '0.319792', '230', '0.239583', '196', '0.204167', '165', '0.171875', '154', '0.160417', '149', '0.155208', 81);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-18', '全部', '1025', '884', '141', '0.327805', '264', '0.257561', '224', '0.218537', '181', '0.176585', '164', '0.16', '151', '0.147317', 82);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-19', '全部', '1022', '931', '91', '0.262231', '186', '0.181996', '136', '0.133072', '110', '0.107632', '103', '0.100783', '93', '0.090998', 83);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-20', '全部', '1189', '1094', '95', '0.287637', '208', '0.174937', '168', '0.141295', '120', '0.100925', '114', '0.095879', '105', '0.08831', 84);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-21', '全部', '1202', '1116', '86', '0.274542', '226', '0.18802', '158', '0.131448', '120', '0.099834', '93', '0.077371', '86', '0.071547', 85);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-22', '全部', '1105', '962', '143', '0.310407', '258', '0.233484', '196', '0.177376', '169', '0.152941', '151', '0.136652', '149', '0.134842', 86);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-23', '全部', '1098', '967', '131', '0.326047', '235', '0.214026', '196', '0.178506', '170', '0.154827', '146', '0.132969', '135', '0.122951', 87);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-24', '全部', '1188', '1070', '118', '0.315657', '256', '0.215488', '208', '0.175084', '166', '0.139731', '145', '0.122054', '132', '0.111111', 88);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-25', '全部', '1168', '1042', '126', '0.298801', '243', '0.208048', '181', '0.154966', '152', '0.130137', '143', '0.122432', '126', '0.107877', 89);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-26', '全部', '1161', '1025', '136', '0.302326', '270', '0.232558', '198', '0.170543', '168', '0.144703', '144', '0.124031', '137', '0.118002', 90);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-27', '全部', '1196', '1110', '86', '0.272575', '225', '0.188127', '166', '0.138796', '120', '0.100334', '101', '0.084448', '93', '0.077759', 91);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-28', '全部', '1107', '956', '151', '0.34869', '276', '0.249322', '227', '0.205059', '190', '0.171635', '180', '0.162602', '167', '0.150858', 92);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-29', '全部', '1028', '879', '149', '0.324903', '258', '0.250973', '211', '0.205253', '178', '0.173152', '166', '0.161479', '152', '0.14786', 93);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-30', '全部', '1092', '949', '143', '0.339744', '268', '0.245421', '202', '0.184982', '163', '0.149267', '154', '0.141026', '145', '0.132784', 94);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-31', '全部', '1038', '877', '161', '0.344894', '277', '0.266859', '233', '0.22447', '202', '0.194605', '176', '0.169557', '163', '0.157033', 95);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-01', '全部', '969', '803', '166', '0.353973', '272', '0.280702', '233', '0.240454', '190', '0.196078', '172', '0.177503', '169', '0.174407', 96);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-02', '全部', '1003', '828', '175', '0.337986', '265', '0.264207', '227', '0.226321', '199', '0.198405', '187', '0.186441', '182', '0.181456', 97);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-03', '全部', '1171', '1001', '170', '0.333903', '295', '0.251921', '231', '0.197267', '192', '0.163962', '183', '0.156277', '179', '0.152861', 98);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-04', '全部', '1218', '1070', '148', '0.286535', '267', '0.219212', '204', '0.167488', '174', '0.142857', '159', '0.130542', '152', '0.124795', 99);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-05', '全部', '1079', '910', '169', '0.336423', '301', '0.278962', '256', '0.237257', '219', '0.202966', '199', '0.18443', '182', '0.168675', 100);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-06', '全部', '1129', '983', '146', '0.270151', '252', '0.223206', '199', '0.176262', '173', '0.153233', '168', '0.148804', '154', '0.136404', 101);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-07', '全部', '994', '834', '160', '0.330986', '256', '0.257545', '214', '0.215292', '184', '0.185111', '173', '0.174044', '165', '0.165996', 102);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-08', '全部', '1084', '917', '167', '0.333948', '277', '0.255535', '215', '0.198339', '181', '0.166974', '176', '0.162362', '169', '0.155904', 103);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-09', '全部', '1146', '1072', '74', '0.273124', '228', '0.198953', '160', '0.139616', '114', '0.099476', '93', '0.081152', '89', '0.077661', 104);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-10', '全部', '1149', '1044', '105', '0.281984', '237', '0.206266', '176', '0.153177', '148', '0.128808', '124', '0.10792', '119', '0.103568', 105);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-11', '全部', '1071', '936', '135', '0.320261', '255', '0.238095', '204', '0.190476', '165', '0.154062', '147', '0.137255', '139', '0.129785', 106);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-12', '全部', '1071', '994', '77', '0.286648', '212', '0.197946', '150', '0.140056', '105', '0.098039', '84', '0.078431', '82', '0.076564', 107);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-13', '全部', '1052', '952', '100', '0.273764', '208', '0.197719', '164', '0.155894', '133', '0.126426', '123', '0.11692', '111', '0.105513', 108);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-14', '全部', '958', '865', '93', '0.310021', '222', '0.231733', '160', '0.167015', '124', '0.129436', '109', '0.113779', '105', '0.109603', 109);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-15', '全部', '1204', '1078', '126', '0.306478', '230', '0.19103', '181', '0.150332', '143', '0.118771', '142', '0.11794', '129', '0.107143', 110);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-16', '全部', '1219', '1002', '217', '0.345365', '357', '0.292863', '286', '0.234619', '243', '0.199344', '238', '0.195242', '225', '0.184578', 111);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-17', '全部', '1310', '1138', '172', '0.335115', '318', '0.242748', '250', '0.19084', '204', '0.155725', '193', '0.147328', '183', '0.139695', 112);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-18', '全部', '982', '870', '112', '0.263747', '206', '0.209776', '170', '0.173116', '126', '0.12831', '120', '0.1222', '117', '0.119145', 113);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-19', '全部', '932', '807', '125', '0.322961', '237', '0.254292', '190', '0.203863', '150', '0.160944', '144', '0.154506', '139', '0.149142', 114);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-20', '全部', '989', '891', '98', '0.278059', '216', '0.218402', '155', '0.156724', '120', '0.121335', '103', '0.104146', '100', '0.101112', 115);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-21', '全部', '960', '853', '107', '0.310417', '205', '0.213542', '158', '0.164583', '128', '0.133333', '121', '0.126042', '116', '0.120833', 116);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-22', '全部', '981', '894', '87', '0.268094', '175', '0.178389', '142', '0.14475', '106', '0.108053', '95', '0.09684', '93', '0.094801', 117);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-23', '全部', '1113', '953', '160', '0.30009', '262', '0.2354', '218', '0.195867', '185', '0.166217', '177', '0.15903', '167', '0.150045', 118);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-24', '全部', '1123', '1046', '77', '0.277827', '202', '0.179875', '141', '0.125557', '104', '0.092609', '93', '0.082814', '84', '0.0748', 119);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-25', '全部', '1205', '1036', '169', '0.307884', '279', '0.231535', '226', '0.187552', '196', '0.162656', '190', '0.157676', '180', '0.149378', 120);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-26', '全部', '1220', '1065', '155', '0.311475', '274', '0.22459', '228', '0.186885', '183', '0.15', '169', '0.138525', '160', '0.131148', 121);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-27', '全部', '933', '859', '74', '0.296892', '179', '0.191854', '133', '0.142551', '101', '0.108253', '90', '0.096463', '81', '0.086817', 122);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-28', '全部', '1088', '951', '137', '0.330882', '252', '0.231618', '187', '0.171875', '164', '0.150735', '146', '0.134191', '141', '0.129596', 123);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-29', '全部', '1009', '857', '152', '0.320119', '257', '0.254708', '216', '0.214073', '190', '0.188305', '172', '0.170466', '158', '0.156591', 124);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-30', '全部', '983', '907', '76', '0.256358', '190', '0.193286', '136', '0.138352', '112', '0.113937', '90', '0.091556', '86', '0.087487', 125);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-01', '全部', '1016', '874', '142', '0.312992', '248', '0.244094', '191', '0.187992', '164', '0.161417', '152', '0.149606', '145', '0.142717', 126);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-02', '全部', '1167', '1025', '142', '0.299057', '252', '0.215938', '206', '0.176521', '164', '0.140531', '154', '0.131962', '143', '0.122536', 127);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-03', '全部', '1222', '1081', '141', '0.308511', '292', '0.238953', '211', '0.172668', '178', '0.145663', '160', '0.130933', '145', '0.118658', 128);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-04', '全部', '1075', '951', '124', '0.294884', '252', '0.234419', '192', '0.178605', '161', '0.149767', '139', '0.129302', '126', '0.117209', 129);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-05', '全部', '1266', '1132', '134', '0.293049', '278', '0.219589', '214', '0.169036', '168', '0.132701', '153', '0.120853', '141', '0.111374', 130);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-06', '全部', '1025', '793', '232', '0.390244', '316', '0.308293', '279', '0.272195', '258', '0.251707', '247', '0.240976', '239', '0.233171', 131);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-07', '全部', '565', '497', '68', '0.283186', '115', '0.20354', '89', '0.157522', '79', '0.139823', '77', '0.136283', '70', '0.123894', 132);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-08', '全部', '635', '501', '134', '0.354331', '184', '0.289764', '167', '0.262992', '154', '0.24252', '143', '0.225197', '141', '0.222047', 133);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-09', '全部', '636', '543', '93', '0.294025', '132', '0.207547', '109', '0.171384', '102', '0.160377', '99', '0.15566', '99', '0.15566', 134);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-10', '全部', '502', '393', '109', '0.35259', '137', '0.272908', '121', '0.241036', '113', '0.2251', '113', '0.2251', '111', '0.221116', 135);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-11', '全部', '574', '475', '99', '0.315331', '148', '0.25784', '131', '0.228223', '114', '0.198606', '103', '0.179443', '102', '0.1777', 136);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-12', '全部', '611', '500', '111', '0.307692', '158', '0.258592', '134', '0.219313', '127', '0.207856', '116', '0.189853', '112', '0.183306', 137);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-13', '全部', '656', '572', '84', '0.262195', '129', '0.196646', '104', '0.158537', '99', '0.150915', '92', '0.140244', '86', '0.131098', 138);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-14', '全部', '659', '518', '141', '0.344461', '181', '0.274659', '161', '0.24431', '157', '0.23824', '147', '0.223065', '144', '0.218513', 139);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-15', '全部', '668', '544', '124', '0.356287', '171', '0.255988', '147', '0.22006', '131', '0.196108', '130', '0.194611', '125', '0.187126', 140);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-16', '全部', '523', '446', '77', '0.307839', '133', '0.254302', '105', '0.200765', '92', '0.175908', '84', '0.160612', '82', '0.156788', 141);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-17', '全部', '648', '524', '124', '0.351852', '189', '0.291667', '159', '0.24537', '142', '0.219136', '134', '0.20679', '128', '0.197531', 142);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-18', '全部', '727', '620', '107', '0.265475', '148', '0.203576', '130', '0.178817', '122', '0.167813', '116', '0.15956', '112', '0.154058', 143);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-19', '全部', '594', '532', '62', '0.292929', '119', '0.200337', '86', '0.144781', '73', '0.122896', '69', '0.116162', '63', '0.106061', 144);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-20', '全部', '719', '565', '154', '0.393602', '219', '0.30459', '183', '0.25452', '170', '0.236439', '164', '0.228095', '158', '0.21975', 145);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-21', '全部', '757', '593', '164', '0.305152', '204', '0.269485', '187', '0.247028', '177', '0.233818', '171', '0.225892', '168', '0.221929', 146);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-22', '全部', '704', '552', '152', '0.365057', '204', '0.289773', '175', '0.24858', '170', '0.241477', '165', '0.234375', '160', '0.227273', 147);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-23', '全部', '592', '462', '130', '0.346284', '166', '0.280405', '150', '0.253378', '144', '0.243243', '141', '0.238176', '134', '0.226351', 148);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-24', '全部', '628', '478', '150', '0.39172', '205', '0.326433', '170', '0.270701', '166', '0.264331', '162', '0.257962', '158', '0.251592', 149);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-25', '全部', '611', '483', '128', '0.314239', '163', '0.266776', '154', '0.252046', '139', '0.227496', '136', '0.222586', '132', '0.216039', 150);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-26', '全部', '676', '512', '164', '0.35355', '208', '0.307692', '196', '0.289941', '184', '0.272189', '173', '0.255917', '171', '0.252959', 151);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-27', '全部', '628', '477', '151', '0.355096', '206', '0.328025', '171', '0.272293', '158', '0.251592', '158', '0.251592', '153', '0.243631', 152);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-28', '全部', '596', '440', '156', '0.38255', '202', '0.338926', '178', '0.298658', '167', '0.280201', '163', '0.27349', '160', '0.268456', 153);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-29', '全部', '765', '597', '168', '0.371242', '230', '0.300654', '204', '0.266667', '185', '0.24183', '175', '0.228758', '172', '0.224837', 154);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-30', '全部', '636', '500', '136', '0.327044', '169', '0.265723', '158', '0.248428', '150', '0.235849', '147', '0.231132', '142', '0.22327', 155);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-31', '全部', '682', '519', '163', '0.38563', '228', '0.334311', '196', '0.28739', '182', '0.266862', '171', '0.250733', '168', '0.246334', 156);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-01', '全部', '760', '605', '155', '0.380263', '226', '0.297368', '186', '0.244737', '174', '0.228947', '168', '0.221053', '162', '0.213158', 157);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-02', '全部', '656', '515', '141', '0.382622', '201', '0.306402', '183', '0.278963', '165', '0.251524', '152', '0.231707', '145', '0.221037', 158);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-03', '全部', '660', '558', '102', '0.325758', '153', '0.231818', '134', '0.20303', '130', '0.19697', '116', '0.175758', '109', '0.165152', 159);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-04', '全部', '609', '465', '144', '0.387521', '186', '0.305419', '169', '0.277504', '156', '0.256158', '150', '0.246305', '148', '0.243021', 160);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-05', '全部', '798', '676', '122', '0.302005', '174', '0.218045', '153', '0.191729', '140', '0.175439', '131', '0.16416', '127', '0.159148', 161);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-06', '全部', '865', '668', '197', '0.34104', '232', '0.268208', '220', '0.254335', '202', '0.233526', '202', '0.233526', '199', '0.230058', 162);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-07', '全部', '965', '751', '214', '0.40829', '294', '0.304663', '256', '0.265285', '238', '0.246632', '225', '0.233161', '220', '0.227979', 163);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-08', '全部', '787', '602', '185', '0.390089', '247', '0.31385', '212', '0.269377', '198', '0.251588', '188', '0.238882', '185', '0.23507', 164);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-09', '全部', '649', '532', '117', '0.298921', '157', '0.241911', '143', '0.220339', '131', '0.201849', '125', '0.192604', '122', '0.187982', 165);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-10', '全部', '595', '486', '109', '0.331092', '147', '0.247059', '126', '0.211765', '121', '0.203361', '115', '0.193277', '111', '0.186555', 166);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-11', '全部', '776', '656', '120', '0.291237', '192', '0.247423', '147', '0.189433', '135', '0.173969', '130', '0.167526', '126', '0.162371', 167);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-12', '全部', '754', '617', '137', '0.338196', '191', '0.253316', '163', '0.21618', '157', '0.208223', '144', '0.190981', '139', '0.18435', 168);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-13', '全部', '793', '605', '188', '0.395965', '253', '0.319042', '220', '0.277427', '203', '0.25599', '193', '0.24338', '191', '0.240858', 169);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-14', '全部', '811', '633', '178', '0.353884', '226', '0.278668', '207', '0.25524', '201', '0.247842', '188', '0.231813', '181', '0.223181', 170);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-15', '全部', '668', '539', '129', '0.351796', '191', '0.285928', '161', '0.241018', '148', '0.221557', '137', '0.20509', '135', '0.202096', 171);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-16', '全部', '600', '488', '112', '0.323333', '149', '0.248333', '130', '0.216667', '121', '0.201667', '115', '0.191667', '114', '0.19', 172);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-17', '全部', '759', '600', '159', '0.357049', '220', '0.289855', '193', '0.254282', '176', '0.231884', '168', '0.221344', '163', '0.214756', 173);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-18', '全部', '707', '524', '183', '0.390382', '215', '0.304102', '201', '0.2843', '193', '0.272984', '189', '0.267327', '0', '0', 174);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-19', '全部', '948', '715', '233', '0.406118', '314', '0.331224', '282', '0.297468', '253', '0.266878', '238', '0.251055', '0', '0', 175);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-20', '全部', '469', '355', '114', '0.396588', '148', '0.315565', '130', '0.277186', '120', '0.255864', '117', '0.249467', '0', '0', 176);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-21', '全部', '941', '745', '196', '0.363443', '249', '0.264612', '214', '0.227418', '209', '0.222104', '203', '0.215728', '0', '0', 177);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-22', '全部', '618', '527', '91', '0.317152', '148', '0.239482', '114', '0.184466', '110', '0.177994', '99', '0.160194', '0', '0', 178);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-23', '全部', '923', '749', '174', '0.369447', '244', '0.264355', '194', '0.210184', '189', '0.204767', '178', '0.192849', '0', '0', 179);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-24', '全部', '923', '689', '234', '0.392199', '298', '0.32286', '262', '0.283857', '246', '0.266522', '242', '0.262189', '0', '0', 180);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-25', '全部', '748', '625', '123', '0.343583', '174', '0.23262', '159', '0.212567', '136', '0.181818', '0', '0', '0', '0', 181);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-26', '全部', '945', '697', '248', '0.393651', '323', '0.341799', '276', '0.292063', '272', '0.287831', '0', '0', '0', '0', 182);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-27', '全部', '824', '678', '146', '0.324029', '204', '0.247573', '186', '0.225728', '0', '0', '0', '0', '0', '0', 183);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-28', '全部', '592', '456', '136', '0.356419', '179', '0.302365', '159', '0.268581', '0', '0', '0', '0', '0', '0', 184);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-29', '全部', '779', '556', '223', '0.405648', '280', '0.359435', '0', '0', '0', '0', '0', '0', '0', '0', 185);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-30', '全部', '934', '673', '261', '0.382227', '315', '0.337259', '0', '0', '0', '0', '0', '0', '0', '0', 186);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-31', '全部', '785', '589', '196', '0.374522', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 187);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-07-29', '首贷', '72', '69', '3', '0.291667', '13', '0.180556', '9', '0.125', '6', '0.083333', '5', '0.069444', '4', '0.055556', 188);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-07-30', '首贷', '25', '22', '3', '0.28', '6', '0.24', '4', '0.16', '4', '0.16', '3', '0.12', '3', '0.12', 189);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-07-31', '首贷', '58', '50', '8', '0.362069', '14', '0.241379', '11', '0.189655', '9', '0.155172', '9', '0.155172', '9', '0.155172', 190);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-01', '首贷', '41', '35', '6', '0.365854', '12', '0.292683', '9', '0.219512', '7', '0.170732', '7', '0.170732', '7', '0.170732', 191);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-02', '首贷', '70', '59', '11', '0.328571', '20', '0.285714', '17', '0.242857', '14', '0.2', '12', '0.171429', '12', '0.171429', 192);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-03', '首贷', '36', '31', '5', '0.361111', '10', '0.277778', '8', '0.222222', '7', '0.194444', '7', '0.194444', '6', '0.166667', 193);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-04', '首贷', '50', '41', '9', '0.36', '16', '0.32', '13', '0.26', '11', '0.22', '10', '0.2', '9', '0.18', 194);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-05', '首贷', '59', '49', '10', '0.372881', '17', '0.288136', '14', '0.237288', '11', '0.186441', '11', '0.186441', '11', '0.186441', 195);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-06', '首贷', '66', '62', '4', '0.287879', '13', '0.19697', '9', '0.136364', '7', '0.106061', '5', '0.075758', '5', '0.075758', 196);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-07', '首贷', '26', '23', '3', '0.346154', '7', '0.269231', '6', '0.230769', '4', '0.153846', '4', '0.153846', '3', '0.115385', 197);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-08', '首贷', '20', '18', '2', '0.3', '5', '0.25', '3', '0.15', '2', '0.1', '2', '0.1', '2', '0.1', 198);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-09', '首贷', '38', '34', '4', '0.342105', '9', '0.236842', '8', '0.210526', '6', '0.157895', '5', '0.131579', '5', '0.131579', 199);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-10', '首贷', '42', '34', '8', '0.357143', '13', '0.309524', '11', '0.261905', '9', '0.214286', '9', '0.214286', '8', '0.190476', 200);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-11', '首贷', '64', '58', '6', '0.28125', '13', '0.203125', '10', '0.15625', '7', '0.109375', '7', '0.109375', '6', '0.09375', 201);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-12', '首贷', '36', '28', '8', '0.388889', '12', '0.333333', '10', '0.277778', '9', '0.25', '9', '0.25', '8', '0.222222', 202);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-13', '首贷', '694', '574', '120', '0.357349', '199', '0.286744', '171', '0.246398', '149', '0.214697', '131', '0.188761', '131', '0.188761', 203);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-14', '首贷', '887', '810', '77', '0.295378', '197', '0.222097', '149', '0.167982', '106', '0.119504', '94', '0.105975', '78', '0.087937', 204);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-15', '首贷', '779', '734', '45', '0.287548', '141', '0.181001', '105', '0.134788', '72', '0.092426', '57', '0.073171', '52', '0.066752', 205);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-16', '首贷', '732', '622', '110', '0.285519', '178', '0.243169', '148', '0.202186', '125', '0.170765', '120', '0.163934', '120', '0.163934', 206);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-17', '首贷', '639', '552', '87', '0.370892', '162', '0.253521', '125', '0.195618', '103', '0.161189', '87', '0.13615', '87', '0.13615', 207);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-18', '首贷', '822', '780', '42', '0.312652', '160', '0.194647', '120', '0.145985', '82', '0.099757', '65', '0.079075', '59', '0.071776', 208);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-19', '首贷', '601', '528', '73', '0.309484', '161', '0.267887', '125', '0.207987', '99', '0.164725', '87', '0.144759', '82', '0.136439', 209);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-20', '首贷', '771', '668', '103', '0.286641', '189', '0.245136', '164', '0.212711', '131', '0.169909', '114', '0.14786', '110', '0.142672', 210);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-21', '首贷', '604', '514', '90', '0.379139', '176', '0.291391', '144', '0.238411', '122', '0.201987', '104', '0.172185', '92', '0.152318', 211);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-22', '首贷', '709', '636', '73', '0.307475', '190', '0.267983', '143', '0.201693', '117', '0.165021', '100', '0.141044', '86', '0.121298', 212);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-23', '首贷', '892', '781', '111', '0.306054', '219', '0.245516', '168', '0.188341', '134', '0.150224', '131', '0.146861', '119', '0.133408', 213);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-24', '首贷', '742', '622', '120', '0.343666', '209', '0.281671', '174', '0.234501', '147', '0.198113', '136', '0.183288', '125', '0.168464', 214);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-25', '首贷', '678', '645', '33', '0.309735', '129', '0.190265', '104', '0.153392', '70', '0.103245', '50', '0.073746', '41', '0.060472', 215);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-26', '首贷', '730', '637', '93', '0.312329', '161', '0.220548', '132', '0.180822', '110', '0.150685', '110', '0.150685', '102', '0.139726', 216);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-27', '首贷', '633', '534', '99', '0.331754', '175', '0.276461', '139', '0.219589', '118', '0.186414', '105', '0.165877', '102', '0.161137', 217);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-28', '首贷', '835', '774', '61', '0.306587', '167', '0.2', '131', '0.156886', '89', '0.106587', '73', '0.087425', '67', '0.08024', 218);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-29', '首贷', '662', '571', '91', '0.305136', '168', '0.253776', '141', '0.212991', '119', '0.179758', '105', '0.15861', '102', '0.154079', 219);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-30', '首贷', '852', '754', '98', '0.307512', '202', '0.237089', '161', '0.188967', '120', '0.140845', '111', '0.130282', '104', '0.122066', 220);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-31', '首贷', '626', '591', '35', '0.309904', '135', '0.215655', '92', '0.146965', '61', '0.097444', '54', '0.086262', '42', '0.067093', 221);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-01', '首贷', '857', '773', '84', '0.325554', '208', '0.242707', '152', '0.177363', '114', '0.133022', '96', '0.112019', '92', '0.107351', 222);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-02', '首贷', '895', '767', '128', '0.343017', '243', '0.271508', '201', '0.224581', '160', '0.178771', '140', '0.156425', '130', '0.145251', 223);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-03', '首贷', '768', '708', '60', '0.351563', '182', '0.236979', '129', '0.167969', '104', '0.135417', '84', '0.109375', '74', '0.096354', 224);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-04', '首贷', '765', '651', '114', '0.362092', '203', '0.265359', '162', '0.211765', '131', '0.171242', '123', '0.160784', '119', '0.155556', 225);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-05', '首贷', '807', '688', '119', '0.354399', '196', '0.242875', '171', '0.211896', '145', '0.179678', '137', '0.169765', '121', '0.149938', 226);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-06', '首贷', '600', '539', '61', '0.335', '155', '0.258333', '118', '0.196667', '89', '0.148333', '76', '0.126667', '70', '0.116667', 227);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-07', '首贷', '543', '490', '53', '0.285451', '125', '0.230203', '104', '0.191529', '83', '0.152855', '74', '0.13628', '64', '0.117864', 228);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-08', '首贷', '784', '642', '142', '0.369898', '227', '0.289541', '180', '0.229592', '156', '0.19898', '149', '0.190051', '147', '0.1875', 229);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-09', '首贷', '792', '703', '89', '0.32702', '203', '0.256313', '162', '0.204545', '126', '0.159091', '108', '0.136364', '100', '0.126263', 230);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-10', '首贷', '533', '478', '55', '0.326454', '127', '0.238274', '101', '0.189493', '85', '0.159475', '73', '0.136961', '65', '0.121951', 231);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-11', '首贷', '745', '614', '131', '0.346309', '213', '0.285906', '162', '0.21745', '139', '0.186577', '138', '0.185235', '135', '0.181208', 232);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-12', '首贷', '676', '602', '74', '0.289941', '134', '0.198225', '107', '0.158284', '82', '0.121302', '77', '0.113905', '77', '0.113905', 233);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-13', '首贷', '546', '473', '73', '0.338828', '140', '0.25641', '112', '0.205128', '89', '0.163004', '84', '0.153846', '83', '0.152015', 234);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-14', '首贷', '520', '452', '68', '0.355769', '130', '0.25', '96', '0.184615', '79', '0.151923', '76', '0.146154', '70', '0.134615', 235);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-15', '首贷', '734', '662', '72', '0.287466', '178', '0.242507', '128', '0.174387', '103', '0.140327', '81', '0.110354', '76', '0.103542', 236);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-16', '首贷', '702', '581', '121', '0.361823', '218', '0.310541', '172', '0.245014', '144', '0.205128', '140', '0.19943', '128', '0.182336', 237);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-17', '首贷', '654', '634', '20', '0.281346', '107', '0.163609', '79', '0.120795', '53', '0.08104', '39', '0.059633', '30', '0.045872', 238);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-18', '首贷', '714', '633', '81', '0.319328', '162', '0.226891', '114', '0.159664', '93', '0.130252', '88', '0.123249', '82', '0.114846', 239);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-19', '首贷', '720', '628', '92', '0.326389', '201', '0.279167', '151', '0.209722', '126', '0.175', '105', '0.145833', '105', '0.145833', 240);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-20', '首贷', '524', '484', '40', '0.29771', '113', '0.215649', '79', '0.150763', '62', '0.118321', '47', '0.089695', '44', '0.083969', 241);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-21', '首贷', '669', '535', '134', '0.367713', '205', '0.306428', '183', '0.273543', '152', '0.227205', '148', '0.221226', '139', '0.207773', 242);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-22', '首贷', '791', '741', '50', '0.280657', '154', '0.19469', '110', '0.139064', '78', '0.098609', '73', '0.092288', '57', '0.072061', 243);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-23', '首贷', '782', '672', '110', '0.365729', '219', '0.280051', '169', '0.216113', '141', '0.180307', '128', '0.163683', '121', '0.154731', 244);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-24', '首贷', '763', '707', '56', '0.334207', '165', '0.216252', '128', '0.167759', '91', '0.119266', '70', '0.091743', '56', '0.073394', 245);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-25', '首贷', '629', '562', '67', '0.302067', '133', '0.211447', '109', '0.173291', '88', '0.139905', '77', '0.122417', '72', '0.114467', 246);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-26', '首贷', '758', '625', '133', '0.340369', '218', '0.287599', '184', '0.242744', '159', '0.209763', '137', '0.180739', '134', '0.176781', 247);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-27', '首贷', '724', '700', '24', '0.285912', '122', '0.168508', '76', '0.104972', '48', '0.066298', '30', '0.041436', '29', '0.040055', 248);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-28', '首贷', '530', '421', '109', '0.35283', '146', '0.275472', '129', '0.243396', '112', '0.211321', '111', '0.209434', '109', '0.20566', 249);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-29', '首贷', '726', '604', '122', '0.370523', '213', '0.293388', '187', '0.257576', '155', '0.213499', '146', '0.201102', '134', '0.184573', 250);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-30', '首贷', '704', '613', '91', '0.323864', '168', '0.238636', '129', '0.183239', '101', '0.143466', '93', '0.132102', '91', '0.129261', 251);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-01', '首贷', '743', '724', '19', '0.281292', '123', '0.165545', '86', '0.115747', '53', '0.071332', '37', '0.049798', '30', '0.040377', 252);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-02', '首贷', '642', '564', '78', '0.333333', '184', '0.286604', '143', '0.222741', '116', '0.180685', '99', '0.154206', '86', '0.133956', 253);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-03', '首贷', '523', '472', '51', '0.302103', '108', '0.206501', '88', '0.16826', '66', '0.126195', '55', '0.105163', '55', '0.105163', 254);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-04', '首贷', '651', '538', '113', '0.3702', '165', '0.253456', '146', '0.22427', '124', '0.190476', '124', '0.190476', '124', '0.190476', 255);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-05', '首贷', '682', '601', '81', '0.340176', '181', '0.265396', '144', '0.211144', '115', '0.168622', '101', '0.148094', '95', '0.139296', 256);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-06', '首贷', '765', '632', '133', '0.363399', '212', '0.277124', '182', '0.237908', '156', '0.203922', '144', '0.188235', '136', '0.177778', 257);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-07', '首贷', '719', '632', '87', '0.290682', '172', '0.239221', '134', '0.18637', '111', '0.154381', '103', '0.143255', '100', '0.139082', 258);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-08', '首贷', '635', '570', '65', '0.322835', '140', '0.220472', '97', '0.152756', '76', '0.119685', '75', '0.11811', '74', '0.116535', 259);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-09', '首贷', '775', '699', '76', '0.307097', '184', '0.237419', '141', '0.181935', '109', '0.140645', '92', '0.11871', '90', '0.116129', 260);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-10', '首贷', '571', '522', '49', '0.295972', '124', '0.217163', '87', '0.152364', '67', '0.117338', '57', '0.099825', '55', '0.096322', 261);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-11', '首贷', '774', '696', '78', '0.328165', '186', '0.24031', '142', '0.183463', '108', '0.139535', '90', '0.116279', '79', '0.102067', 262);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-12', '首贷', '573', '500', '73', '0.342059', '138', '0.240838', '120', '0.209424', '96', '0.167539', '83', '0.144852', '83', '0.144852', 263);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-13', '首贷', '789', '666', '123', '0.332066', '222', '0.281369', '189', '0.239544', '161', '0.204056', '139', '0.176172', '125', '0.158428', 264);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-14', '首贷', '723', '655', '68', '0.319502', '164', '0.226833', '141', '0.195021', '106', '0.146611', '84', '0.116183', '81', '0.112033', 265);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-15', '首贷', '543', '456', '87', '0.338858', '162', '0.298343', '133', '0.244936', '117', '0.21547', '103', '0.189687', '93', '0.171271', 266);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-16', '首贷', '569', '529', '40', '0.293497', '123', '0.216169', '88', '0.154657', '61', '0.107206', '58', '0.101933', '47', '0.082601', 267);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-17', '首贷', '596', '498', '98', '0.350671', '157', '0.263423', '139', '0.233221', '120', '0.201342', '113', '0.189597', '108', '0.181208', 268);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-18', '首贷', '566', '488', '78', '0.319788', '157', '0.277385', '133', '0.234982', '106', '0.187279', '94', '0.166078', '83', '0.146643', 269);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-19', '首贷', '617', '559', '58', '0.291734', '130', '0.210697', '91', '0.147488', '68', '0.110211', '66', '0.106969', '60', '0.097245', 270);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-20', '首贷', '773', '715', '58', '0.297542', '139', '0.179819', '112', '0.14489', '73', '0.094437', '72', '0.093144', '65', '0.084088', 271);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-21', '首贷', '798', '739', '59', '0.304511', '165', '0.206767', '120', '0.150376', '83', '0.10401', '62', '0.077694', '59', '0.073935', 272);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-22', '首贷', '703', '602', '101', '0.347084', '189', '0.268848', '142', '0.201991', '116', '0.165007', '103', '0.146515', '103', '0.146515', 273);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-23', '首贷', '634', '581', '53', '0.31388', '123', '0.194006', '99', '0.156151', '78', '0.123028', '63', '0.099369', '54', '0.085174', 274);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-24', '首贷', '758', '678', '80', '0.337731', '176', '0.23219', '148', '0.195251', '122', '0.16095', '105', '0.138522', '93', '0.122691', 275);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-25', '首贷', '726', '651', '75', '0.334711', '167', '0.230028', '118', '0.162534', '95', '0.130854', '87', '0.119835', '75', '0.103306', 276);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-26', '首贷', '756', '667', '89', '0.297619', '187', '0.247354', '137', '0.181217', '111', '0.146825', '95', '0.125661', '90', '0.119048', 277);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-27', '首贷', '720', '634', '86', '0.319444', '182', '0.252778', '150', '0.208333', '120', '0.166667', '101', '0.140278', '93', '0.129167', 278);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-28', '首贷', '595', '523', '72', '0.359664', '152', '0.255462', '127', '0.213445', '98', '0.164706', '94', '0.157983', '83', '0.139496', 279);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-29', '首贷', '615', '507', '108', '0.341463', '180', '0.292683', '152', '0.247154', '127', '0.206504', '121', '0.196748', '109', '0.177236', 280);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-30', '首贷', '681', '581', '100', '0.371512', '196', '0.287812', '149', '0.218796', '115', '0.168869', '106', '0.155653', '100', '0.146843', 281);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-31', '首贷', '583', '481', '102', '0.360206', '173', '0.296741', '148', '0.253859', '130', '0.222985', '112', '0.19211', '103', '0.176672', 282);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-01', '首贷', '545', '433', '112', '0.376147', '172', '0.315596', '155', '0.284404', '129', '0.236697', '116', '0.212844', '113', '0.207339', 283);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-02', '首贷', '589', '487', '102', '0.329372', '170', '0.288625', '142', '0.241087', '119', '0.202037', '109', '0.185059', '106', '0.179966', 284);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-03', '首贷', '654', '570', '84', '0.331804', '151', '0.230887', '114', '0.174312', '93', '0.142202', '91', '0.139144', '88', '0.134557', 285);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-04', '首贷', '747', '650', '97', '0.313253', '182', '0.243641', '144', '0.192771', '118', '0.157965', '103', '0.137885', '98', '0.131191', 286);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-05', '首贷', '638', '513', '125', '0.374608', '212', '0.332288', '185', '0.289969', '165', '0.258621', '148', '0.231975', '136', '0.213166', 287);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-06', '首贷', '705', '592', '113', '0.310638', '188', '0.266667', '159', '0.225532', '136', '0.192908', '132', '0.187234', '118', '0.167376', 288);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-07', '首贷', '570', '465', '105', '0.361404', '175', '0.307018', '143', '0.250877', '121', '0.212281', '113', '0.198246', '107', '0.187719', 289);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-08', '首贷', '722', '598', '124', '0.378116', '217', '0.300554', '167', '0.231302', '134', '0.185596', '130', '0.180055', '124', '0.171745', 290);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-09', '首贷', '756', '703', '53', '0.301587', '165', '0.218254', '118', '0.156085', '80', '0.10582', '65', '0.085979', '65', '0.085979', 291);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-10', '首贷', '710', '655', '55', '0.285915', '153', '0.215493', '119', '0.167606', '91', '0.128169', '73', '0.102817', '68', '0.095775', 292);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-11', '首贷', '577', '507', '70', '0.306759', '148', '0.256499', '119', '0.206239', '92', '0.159445', '79', '0.136915', '72', '0.124783', 293);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-12', '首贷', '705', '653', '52', '0.316312', '157', '0.222695', '108', '0.153191', '73', '0.103546', '59', '0.083688', '57', '0.080851', 294);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-13', '首贷', '649', '575', '74', '0.306626', '148', '0.228043', '125', '0.192604', '102', '0.157165', '94', '0.144838', '83', '0.127889', 295);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-14', '首贷', '510', '435', '75', '0.335294', '147', '0.288235', '112', '0.219608', '91', '0.178431', '85', '0.166667', '83', '0.162745', 296);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-15', '首贷', '784', '694', '90', '0.317602', '155', '0.197704', '129', '0.164541', '103', '0.131378', '102', '0.130102', '92', '0.117347', 297);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-16', '首贷', '777', '633', '144', '0.353925', '242', '0.311454', '197', '0.253539', '165', '0.212355', '161', '0.207207', '150', '0.19305', 298);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-17', '首贷', '795', '682', '113', '0.349686', '214', '0.269182', '164', '0.206289', '134', '0.168553', '128', '0.161006', '121', '0.152201', 299);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-18', '首贷', '529', '456', '73', '0.283554', '123', '0.232514', '105', '0.198488', '79', '0.149338', '78', '0.147448', '76', '0.143667', 300);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-19', '首贷', '585', '477', '108', '0.374359', '181', '0.309402', '153', '0.261538', '125', '0.213675', '120', '0.205128', '118', '0.201709', 301);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-20', '首贷', '577', '497', '80', '0.315425', '152', '0.263432', '116', '0.20104', '97', '0.168111', '83', '0.143847', '80', '0.138648', 302);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-21', '首贷', '534', '488', '46', '0.320225', '107', '0.200375', '84', '0.157303', '58', '0.108614', '55', '0.102996', '53', '0.099251', 303);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-22', '首贷', '506', '449', '57', '0.304348', '108', '0.213439', '88', '0.173913', '70', '0.13834', '63', '0.124506', '62', '0.12253', 304);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-23', '首贷', '670', '588', '82', '0.28806', '151', '0.225373', '126', '0.18806', '95', '0.141791', '93', '0.138806', '86', '0.128358', 305);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-24', '首贷', '677', '625', '52', '0.288035', '138', '0.20384', '103', '0.152142', '69', '0.10192', '62', '0.091581', '57', '0.084195', 306);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-25', '首贷', '789', '655', '134', '0.34981', '217', '0.275032', '177', '0.224335', '151', '0.191381', '151', '0.191381', '144', '0.18251', 307);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-26', '首贷', '688', '577', '111', '0.332849', '176', '0.255814', '151', '0.219477', '124', '0.180233', '120', '0.174419', '112', '0.162791', 308);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-27', '首贷', '527', '463', '64', '0.345351', '129', '0.244782', '104', '0.197343', '83', '0.157495', '76', '0.144213', '70', '0.132827', 309);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-28', '首贷', '601', '512', '89', '0.36772', '171', '0.284526', '132', '0.219634', '109', '0.181364', '94', '0.156406', '93', '0.154742', 310);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-29', '首贷', '547', '440', '107', '0.367459', '171', '0.312614', '152', '0.277879', '134', '0.244973', '121', '0.221207', '110', '0.201097', 311);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-30', '首贷', '550', '499', '51', '0.287273', '129', '0.234545', '93', '0.169091', '76', '0.138182', '63', '0.114545', '59', '0.107273', 312);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-01', '首贷', '532', '440', '92', '0.336466', '140', '0.263158', '120', '0.225564', '108', '0.203008', '100', '0.18797', '95', '0.178571', 313);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-02', '首贷', '769', '660', '109', '0.315995', '177', '0.230169', '145', '0.188557', '122', '0.158648', '115', '0.149545', '109', '0.141743', 314);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-03', '首贷', '753', '653', '100', '0.337317', '200', '0.265604', '143', '0.189907', '123', '0.163347', '113', '0.150066', '101', '0.13413', 315);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-04', '首贷', '604', '530', '74', '0.322848', '145', '0.240066', '112', '0.18543', '100', '0.165563', '87', '0.14404', '76', '0.125828', 316);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-05', '首贷', '745', '653', '92', '0.283221', '166', '0.222819', '133', '0.178523', '118', '0.158389', '109', '0.146309', '99', '0.132886', 317);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-06', '首贷', '557', '416', '141', '0.425494', '193', '0.346499', '170', '0.305206', '158', '0.283662', '151', '0.271095', '145', '0.260323', 318);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-07', '首贷', '160', '121', '39', '0.38125', '52', '0.325', '46', '0.2875', '44', '0.275', '43', '0.26875', '40', '0.25', 319);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-08', '首贷', '224', '169', '55', '0.410714', '80', '0.357143', '73', '0.325893', '67', '0.299107', '60', '0.267857', '58', '0.258929', 320);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-09', '首贷', '170', '121', '49', '0.417647', '60', '0.352941', '54', '0.317647', '52', '0.305882', '51', '0.3', '51', '0.3', 321);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-10', '首贷', '103', '72', '31', '0.456311', '42', '0.407767', '37', '0.359223', '34', '0.330097', '34', '0.330097', '33', '0.320388', 322);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-11', '首贷', '206', '151', '55', '0.407767', '73', '0.354369', '67', '0.325243', '62', '0.300971', '56', '0.271845', '56', '0.271845', 323);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-12', '首贷', '172', '124', '48', '0.447674', '69', '0.401163', '59', '0.343023', '55', '0.319767', '52', '0.302326', '49', '0.284884', 324);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-13', '首贷', '212', '171', '41', '0.358491', '65', '0.306604', '54', '0.254717', '50', '0.235849', '45', '0.212264', '42', '0.198113', 325);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-14', '首贷', '293', '209', '84', '0.416382', '109', '0.372014', '98', '0.334471', '94', '0.320819', '89', '0.303754', '86', '0.293515', 326);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-15', '首贷', '225', '157', '68', '0.453333', '87', '0.386667', '77', '0.342222', '71', '0.315556', '70', '0.311111', '68', '0.302222', 327);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-16', '首贷', '101', '78', '23', '0.405941', '36', '0.356436', '31', '0.306931', '28', '0.277228', '26', '0.257426', '24', '0.237624', 328);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-17', '首贷', '275', '202', '73', '0.425455', '99', '0.36', '83', '0.301818', '79', '0.287273', '77', '0.28', '74', '0.269091', 329);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-18', '首贷', '283', '222', '61', '0.367491', '87', '0.30742', '78', '0.275618', '71', '0.250883', '69', '0.243816', '66', '0.233216', 330);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-19', '首贷', '165', '126', '39', '0.418182', '58', '0.351515', '48', '0.290909', '45', '0.272727', '41', '0.248485', '39', '0.236364', 331);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-20', '首贷', '248', '183', '65', '0.419355', '90', '0.362903', '77', '0.310484', '73', '0.294355', '70', '0.282258', '66', '0.266129', 332);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-21', '首贷', '211', '162', '49', '0.383886', '72', '0.341232', '62', '0.293839', '58', '0.274882', '52', '0.246445', '51', '0.241706', 333);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-22', '首贷', '256', '193', '63', '0.386719', '88', '0.34375', '78', '0.304688', '74', '0.289063', '71', '0.277344', '68', '0.265625', 334);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-23', '首贷', '144', '116', '28', '0.375', '44', '0.305556', '36', '0.25', '35', '0.243056', '34', '0.236111', '31', '0.215278', 335);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-24', '首贷', '155', '115', '40', '0.43871', '57', '0.367742', '51', '0.329032', '49', '0.316129', '46', '0.296774', '43', '0.277419', 336);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-25', '首贷', '216', '164', '52', '0.361111', '67', '0.310185', '61', '0.282407', '54', '0.25', '53', '0.24537', '52', '0.240741', 337);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-26', '首贷', '237', '175', '62', '0.413502', '83', '0.350211', '75', '0.316456', '73', '0.308017', '67', '0.2827', '66', '0.278481', 338);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-27', '首贷', '143', '108', '35', '0.377622', '48', '0.335664', '40', '0.27972', '38', '0.265734', '38', '0.265734', '36', '0.251748', 339);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-28', '首贷', '191', '143', '48', '0.397906', '63', '0.329843', '56', '0.293194', '53', '0.277487', '53', '0.277487', '50', '0.26178', 340);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-29', '首贷', '273', '205', '68', '0.413919', '94', '0.344322', '80', '0.29304', '72', '0.263736', '71', '0.260073', '70', '0.25641', 341);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-30', '首贷', '137', '103', '34', '0.386861', '45', '0.328467', '40', '0.291971', '38', '0.277372', '38', '0.277372', '35', '0.255474', 342);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-31', '首贷', '283', '209', '74', '0.409894', '99', '0.349823', '89', '0.314488', '86', '0.303887', '81', '0.286219', '78', '0.275618', 343);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-01', '首贷', '259', '212', '47', '0.378378', '79', '0.305019', '66', '0.254826', '61', '0.235521', '56', '0.216216', '52', '0.200772', 344);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-02', '首贷', '224', '176', '48', '0.401786', '76', '0.339286', '63', '0.28125', '58', '0.258929', '52', '0.232143', '49', '0.21875', 345);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-03', '首贷', '196', '137', '59', '0.44898', '80', '0.408163', '73', '0.372449', '70', '0.357143', '64', '0.326531', '61', '0.311224', 346);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-04', '首贷', '334', '249', '85', '0.422156', '111', '0.332335', '101', '0.302395', '91', '0.272455', '88', '0.263473', '88', '0.263473', 347);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-05', '首贷', '414', '326', '88', '0.342995', '117', '0.282609', '107', '0.258454', '96', '0.231884', '94', '0.227053', '92', '0.222222', 348);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-06', '首贷', '507', '377', '130', '0.366864', '156', '0.307692', '145', '0.285996', '134', '0.2643', '134', '0.2643', '131', '0.258383', 349);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-07', '首贷', '547', '410', '137', '0.435101', '185', '0.338208', '163', '0.297989', '149', '0.272395', '141', '0.25777', '140', '0.255941', 350);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-08', '首贷', '510', '367', '143', '0.443137', '192', '0.376471', '163', '0.319608', '152', '0.298039', '143', '0.280392', '143', '0.280392', 351);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-09', '首贷', '246', '202', '44', '0.369919', '66', '0.268293', '57', '0.231707', '49', '0.199187', '47', '0.191057', '45', '0.182927', 352);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-10', '首贷', '220', '173', '47', '0.340909', '60', '0.272727', '52', '0.236364', '51', '0.231818', '48', '0.218182', '47', '0.213636', 353);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-11', '首贷', '356', '287', '69', '0.337079', '98', '0.275281', '78', '0.219101', '74', '0.207865', '73', '0.205056', '73', '0.205056', 354);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-12', '首贷', '495', '389', '106', '0.341414', '134', '0.270707', '120', '0.242424', '119', '0.240404', '109', '0.220202', '106', '0.214141', 355);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-13', '首贷', '543', '419', '124', '0.414365', '174', '0.320442', '146', '0.268877', '132', '0.243094', '126', '0.232044', '126', '0.232044', 356);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-14', '首贷', '444', '352', '92', '0.369369', '124', '0.279279', '106', '0.238739', '103', '0.231982', '97', '0.218468', '93', '0.209459', 357);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-15', '首贷', '292', '254', '38', '0.325342', '69', '0.236301', '58', '0.19863', '47', '0.160959', '41', '0.140411', '41', '0.140411', 358);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-16', '首贷', '215', '169', '46', '0.334884', '61', '0.283721', '55', '0.255814', '48', '0.223256', '47', '0.218605', '46', '0.213953', 359);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-17', '首贷', '303', '232', '71', '0.419142', '102', '0.336634', '87', '0.287129', '77', '0.254125', '76', '0.250825', '72', '0.237624', 360);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-18', '首贷', '305', '224', '81', '0.386885', '98', '0.321311', '90', '0.295082', '86', '0.281967', '84', '0.27541', '0', '0', 361);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-19', '首贷', '542', '407', '135', '0.429889', '185', '0.341328', '165', '0.304428', '147', '0.271218', '138', '0.254613', '0', '0', 362);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-20', '首贷', '201', '148', '53', '0.40796', '70', '0.348259', '62', '0.308458', '55', '0.273632', '54', '0.268657', '0', '0', 363);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-21', '首贷', '533', '404', '129', '0.386492', '153', '0.287054', '135', '0.253283', '135', '0.253283', '134', '0.251407', '0', '0', 364);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-22', '首贷', '218', '170', '48', '0.380734', '67', '0.307339', '56', '0.256881', '54', '0.247706', '50', '0.229358', '0', '0', 365);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-23', '首贷', '410', '321', '89', '0.385366', '117', '0.285366', '95', '0.231707', '94', '0.229268', '91', '0.221951', '0', '0', 366);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-24', '首贷', '415', '295', '120', '0.416867', '153', '0.368675', '136', '0.327711', '123', '0.296386', '122', '0.293976', '0', '0', 367);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-25', '首贷', '237', '200', '37', '0.324895', '56', '0.236287', '49', '0.206751', '41', '0.172996', '0', '0', '0', '0', 368);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-26', '首贷', '401', '285', '116', '0.418953', '148', '0.369077', '133', '0.331671', '130', '0.32419', '0', '0', '0', '0', 369);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-27', '首贷', '383', '320', '63', '0.321149', '100', '0.261097', '83', '0.21671', '0', '0', '0', '0', '0', '0', 370);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-28', '首贷', '320', '252', '68', '0.34375', '94', '0.29375', '81', '0.253125', '0', '0', '0', '0', '0', '0', 371);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-29', '首贷', '427', '309', '118', '0.409836', '151', '0.35363', '0', '0', '0', '0', '0', '0', '0', '0', 372);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-30', '首贷', '528', '390', '138', '0.378788', '168', '0.318182', '0', '0', '0', '0', '0', '0', '0', '0', 373);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-31', '首贷', '324', '251', '73', '0.419753', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 374);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-03', '复贷', '20', '18', '2', '0.3', '4', '0.2', '3', '0.15', '3', '0.15', '3', '0.15', '2', '0.1', 375);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-04', '复贷', '18', '16', '2', '0.277778', '3', '0.166667', '3', '0.166667', '3', '0.166667', '2', '0.111111', '2', '0.111111', 376);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-05', '复贷', '24', '23', '1', '0.208333', '3', '0.125', '2', '0.083333', '1', '0.041667', '1', '0.041667', '1', '0.041667', 377);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-06', '复贷', '30', '27', '3', '0.266667', '4', '0.133333', '3', '0.1', '3', '0.1', '3', '0.1', '3', '0.1', 378);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-07', '复贷', '15', '14', '1', '0.266667', '3', '0.2', '2', '0.133333', '1', '0.066667', '1', '0.066667', '1', '0.066667', 379);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-08', '复贷', '25', '21', '4', '0.36', '6', '0.24', '5', '0.2', '5', '0.2', '4', '0.16', '4', '0.16', 380);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-09', '复贷', '29', '26', '3', '0.275862', '6', '0.206897', '5', '0.172414', '4', '0.137931', '4', '0.137931', '3', '0.103448', 381);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-10', '复贷', '17', '14', '3', '0.352941', '4', '0.235294', '4', '0.235294', '3', '0.176471', '3', '0.176471', '3', '0.176471', 382);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-11', '复贷', '32', '29', '3', '0.28125', '7', '0.21875', '5', '0.15625', '4', '0.125', '3', '0.09375', '3', '0.09375', 383);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-12', '复贷', '29', '24', '5', '0.310345', '7', '0.241379', '6', '0.206897', '5', '0.172414', '5', '0.172414', '5', '0.172414', 384);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-13', '复贷', '26', '23', '3', '0.269231', '4', '0.153846', '3', '0.115385', '3', '0.115385', '3', '0.115385', '3', '0.115385', 385);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-14', '复贷', '15', '13', '2', '0.333333', '3', '0.2', '3', '0.2', '2', '0.133333', '2', '0.133333', '2', '0.133333', 386);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-15', '复贷', '24', '21', '3', '0.291667', '5', '0.208333', '4', '0.166667', '3', '0.125', '3', '0.125', '3', '0.125', 387);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-16', '复贷', '19', '18', '1', '0.210526', '3', '0.157895', '2', '0.105263', '1', '0.052632', '1', '0.052632', '1', '0.052632', 388);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-17', '复贷', '451', '446', '5', '0.24612', '56', '0.124169', '38', '0.084257', '20', '0.044346', '11', '0.02439', '8', '0.017738', 389);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-18', '复贷', '432', '400', '32', '0.210648', '67', '0.155093', '43', '0.099537', '43', '0.099537', '36', '0.083333', '34', '0.078704', 390);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-19', '复贷', '518', '427', '91', '0.291506', '122', '0.235521', '109', '0.210425', '103', '0.198842', '99', '0.19112', '95', '0.183398', 391);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-20', '复贷', '511', '395', '116', '0.336595', '146', '0.285714', '133', '0.260274', '128', '0.250489', '123', '0.240705', '118', '0.23092', 392);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-21', '复贷', '473', '411', '62', '0.317125', '95', '0.200846', '83', '0.175476', '72', '0.15222', '66', '0.139535', '63', '0.133192', 393);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-22', '复贷', '431', '380', '51', '0.266821', '75', '0.174014', '62', '0.143852', '55', '0.12761', '53', '0.12297', '51', '0.118329', 394);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-23', '复贷', '394', '341', '53', '0.263959', '84', '0.213198', '71', '0.180203', '58', '0.147208', '54', '0.137056', '53', '0.134518', 395);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-24', '复贷', '442', '417', '25', '0.239819', '62', '0.140271', '53', '0.11991', '37', '0.08371', '29', '0.065611', '26', '0.058824', 396);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-25', '复贷', '480', '396', '84', '0.35', '136', '0.283333', '115', '0.239583', '97', '0.202083', '92', '0.191667', '87', '0.18125', 397);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-26', '复贷', '419', '343', '76', '0.317422', '101', '0.24105', '92', '0.21957', '86', '0.205251', '81', '0.193317', '77', '0.183771', 398);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-27', '复贷', '382', '335', '47', '0.280105', '69', '0.180628', '61', '0.159686', '56', '0.146597', '53', '0.138743', '50', '0.13089', 399);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-28', '复贷', '455', '435', '20', '0.210989', '69', '0.151648', '44', '0.096703', '31', '0.068132', '27', '0.059341', '22', '0.048352', 400);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-29', '复贷', '406', '333', '73', '0.344828', '94', '0.231527', '84', '0.206897', '82', '0.20197', '79', '0.194581', '77', '0.189655', 401);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-30', '复贷', '488', '381', '107', '0.329918', '127', '0.260246', '112', '0.229508', '108', '0.221311', '108', '0.221311', '107', '0.219262', 402);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-08-31', '复贷', '441', '408', '33', '0.240363', '65', '0.147392', '45', '0.102041', '44', '0.099773', '37', '0.0839', '36', '0.081633', 403);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-01', '复贷', '433', '405', '28', '0.200924', '59', '0.136259', '49', '0.113164', '43', '0.099307', '35', '0.080831', '31', '0.071594', 404);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-02', '复贷', '349', '313', '36', '0.260745', '63', '0.180516', '44', '0.126074', '41', '0.117479', '41', '0.117479', '39', '0.111748', 405);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-03', '复贷', '461', '394', '67', '0.262473', '98', '0.212581', '85', '0.184382', '75', '0.16269', '71', '0.154013', '69', '0.149675', 406);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-04', '复贷', '458', '409', '49', '0.207424', '70', '0.152838', '59', '0.128821', '59', '0.128821', '54', '0.117904', '53', '0.115721', 407);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-05', '复贷', '386', '336', '50', '0.318653', '77', '0.199482', '64', '0.165803', '63', '0.163212', '55', '0.142487', '52', '0.134715', 408);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-06', '复贷', '383', '313', '70', '0.315927', '91', '0.237598', '83', '0.21671', '78', '0.203655', '73', '0.190601', '70', '0.182768', 409);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-07', '复贷', '520', '493', '27', '0.203846', '59', '0.113462', '49', '0.094231', '46', '0.088462', '36', '0.069231', '32', '0.061538', 410);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-08', '复贷', '492', '446', '46', '0.25', '78', '0.158537', '62', '0.126016', '53', '0.107724', '52', '0.105691', '51', '0.103659', 411);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-09', '复贷', '379', '361', '18', '0.205805', '45', '0.118734', '26', '0.068602', '24', '0.063325', '23', '0.060686', '21', '0.055409', 412);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-10', '复贷', '486', '486', '0', '0.199588', '44', '0.090535', '15', '0.030864', '3', '0.006173', '1', '0.002058', '0', '0', 413);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-11', '复贷', '447', '365', '82', '0.328859', '114', '0.255034', '102', '0.228188', '90', '0.201342', '85', '0.190157', '82', '0.183445', 414);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-12', '复贷', '421', '337', '84', '0.342043', '121', '0.287411', '112', '0.266033', '98', '0.232779', '92', '0.218527', '88', '0.209026', 415);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-13', '复贷', '479', '443', '36', '0.244259', '79', '0.164927', '58', '0.121086', '46', '0.096033', '43', '0.08977', '39', '0.08142', 416);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-14', '复贷', '440', '367', '73', '0.331818', '110', '0.25', '84', '0.190909', '82', '0.186364', '75', '0.170455', '74', '0.168182', 417);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-15', '复贷', '433', '392', '41', '0.263279', '71', '0.163972', '53', '0.122402', '49', '0.113164', '46', '0.106236', '42', '0.096998', 418);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-16', '复贷', '342', '322', '20', '0.204678', '41', '0.119883', '30', '0.087719', '26', '0.076023', '23', '0.067251', '22', '0.064327', 419);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-17', '复贷', '444', '397', '47', '0.265766', '84', '0.189189', '72', '0.162162', '56', '0.126126', '52', '0.117117', '50', '0.112613', 420);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-18', '复贷', '478', '478', '0', '0.200837', '60', '0.125523', '31', '0.064854', '14', '0.029289', '5', '0.01046', '0', '0', 421);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-19', '复贷', '397', '318', '79', '0.34005', '106', '0.267003', '91', '0.229219', '89', '0.224181', '82', '0.206549', '81', '0.20403', 422);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-20', '复贷', '367', '312', '55', '0.310627', '87', '0.237057', '68', '0.185286', '58', '0.158038', '58', '0.158038', '55', '0.149864', 423);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-21', '复贷', '412', '364', '48', '0.274272', '87', '0.211165', '65', '0.157767', '55', '0.133495', '53', '0.128641', '50', '0.121359', 424);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-22', '复贷', '372', '343', '29', '0.247312', '54', '0.145161', '43', '0.115591', '31', '0.083333', '31', '0.083333', '30', '0.080645', 425);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-23', '复贷', '362', '323', '39', '0.243094', '54', '0.149171', '44', '0.121547', '44', '0.121547', '41', '0.11326', '41', '0.11326', 426);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-24', '复贷', '438', '400', '38', '0.214612', '70', '0.159817', '52', '0.118721', '47', '0.107306', '46', '0.105023', '43', '0.098174', 427);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-25', '复贷', '471', '418', '53', '0.286624', '92', '0.195329', '76', '0.161359', '61', '0.129512', '58', '0.123142', '53', '0.112527', 428);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-26', '复贷', '415', '372', '43', '0.303614', '81', '0.195181', '57', '0.137349', '44', '0.106024', '43', '0.103614', '43', '0.103614', 429);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-27', '复贷', '511', '448', '63', '0.295499', '100', '0.195695', '76', '0.148728', '68', '0.133072', '68', '0.133072', '67', '0.131115', 430);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-28', '复贷', '458', '412', '46', '0.253275', '72', '0.157205', '53', '0.115721', '52', '0.113537', '47', '0.10262', '47', '0.10262', 431);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-29', '复贷', '441', '374', '67', '0.324263', '100', '0.226757', '87', '0.197279', '71', '0.160998', '71', '0.160998', '68', '0.154195', 432);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-09-30', '复贷', '477', '397', '80', '0.32914', '103', '0.215933', '87', '0.18239', '87', '0.18239', '83', '0.174004', '81', '0.169811', 433);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-01', '复贷', '378', '312', '66', '0.335979', '99', '0.261905', '81', '0.214286', '72', '0.190476', '69', '0.18254', '67', '0.177249', 434);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-02', '复贷', '418', '338', '80', '0.337321', '108', '0.258373', '91', '0.217703', '88', '0.210526', '86', '0.205742', '83', '0.198565', 435);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-03', '复贷', '453', '409', '44', '0.302428', '94', '0.207506', '70', '0.154525', '55', '0.121413', '48', '0.10596', '46', '0.101545', 436);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-04', '复贷', '477', '426', '51', '0.228512', '75', '0.157233', '55', '0.115304', '55', '0.115304', '55', '0.115304', '52', '0.109015', 437);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-05', '复贷', '421', '369', '52', '0.261283', '67', '0.159145', '58', '0.137767', '57', '0.135392', '54', '0.128266', '53', '0.125891', 438);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-06', '复贷', '464', '435', '29', '0.243534', '59', '0.127155', '38', '0.081897', '37', '0.079741', '29', '0.0625', '29', '0.0625', 439);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-07', '复贷', '419', '365', '54', '0.272076', '89', '0.212411', '68', '0.162291', '58', '0.138425', '55', '0.131265', '54', '0.128878', 440);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-08', '复贷', '361', '339', '22', '0.218837', '48', '0.132964', '37', '0.102493', '34', '0.094183', '29', '0.080332', '26', '0.072022', 441);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-09', '复贷', '523', '451', '72', '0.275335', '116', '0.221797', '85', '0.162524', '82', '0.156788', '75', '0.143403', '72', '0.137667', 442);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-10', '复贷', '459', '402', '57', '0.305011', '97', '0.211329', '71', '0.154684', '67', '0.145969', '65', '0.141612', '60', '0.130719', 443);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-11', '复贷', '394', '322', '72', '0.340102', '102', '0.258883', '91', '0.230964', '82', '0.208122', '79', '0.200508', '76', '0.192893', 444);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-12', '复贷', '467', '384', '83', '0.336188', '111', '0.237687', '101', '0.216274', '93', '0.199143', '86', '0.184154', '85', '0.182013', 445);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-13', '复贷', '416', '364', '52', '0.293269', '95', '0.228365', '70', '0.168269', '59', '0.141827', '52', '0.125', '52', '0.125', 446);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-14', '复贷', '340', '317', '23', '0.211765', '41', '0.120588', '33', '0.097059', '25', '0.073529', '25', '0.073529', '24', '0.070588', 447);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-15', '复贷', '527', '487', '40', '0.311195', '105', '0.199241', '73', '0.13852', '53', '0.100569', '50', '0.094877', '44', '0.083491', 448);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-16', '复贷', '434', '382', '52', '0.248848', '78', '0.179724', '63', '0.145161', '61', '0.140553', '54', '0.124424', '52', '0.119816', 449);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-17', '复贷', '364', '323', '41', '0.269231', '73', '0.200549', '57', '0.156593', '45', '0.123626', '41', '0.112637', '41', '0.112637', 450);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-18', '复贷', '459', '396', '63', '0.337691', '107', '0.233115', '91', '0.198257', '75', '0.163399', '70', '0.152505', '68', '0.148148', 451);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-19', '复贷', '405', '372', '33', '0.217284', '56', '0.138272', '45', '0.111111', '42', '0.103704', '37', '0.091358', '33', '0.081481', 452);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-20', '复贷', '416', '379', '37', '0.269231', '69', '0.165865', '56', '0.134615', '47', '0.112981', '42', '0.100962', '40', '0.096154', 453);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-21', '复贷', '404', '377', '27', '0.215347', '61', '0.15099', '38', '0.094059', '37', '0.091584', '31', '0.076733', '27', '0.066832', 454);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-22', '复贷', '402', '360', '42', '0.246269', '69', '0.171642', '54', '0.134328', '53', '0.131841', '48', '0.119403', '46', '0.114428', 455);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-23', '复贷', '464', '386', '78', '0.342672', '112', '0.241379', '97', '0.209052', '92', '0.198276', '83', '0.178879', '81', '0.174569', 456);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-24', '复贷', '430', '392', '38', '0.276744', '80', '0.186047', '60', '0.139535', '44', '0.102326', '40', '0.093023', '39', '0.090698', 457);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-25', '复贷', '442', '391', '51', '0.239819', '76', '0.171946', '63', '0.142534', '57', '0.128959', '56', '0.126697', '51', '0.115385', 458);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-26', '复贷', '405', '358', '47', '0.311111', '83', '0.204938', '61', '0.150617', '57', '0.140741', '49', '0.120988', '47', '0.116049', 459);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-27', '复贷', '476', '476', '0', '0.201681', '43', '0.090336', '16', '0.033613', '0', '0', '0', '0', '0', '0', 460);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-28', '复贷', '512', '433', '79', '0.335938', '124', '0.242188', '100', '0.195313', '92', '0.179688', '86', '0.167969', '84', '0.164063', 461);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-29', '复贷', '413', '372', '41', '0.300242', '78', '0.188862', '59', '0.142857', '51', '0.123487', '45', '0.108959', '43', '0.104116', 462);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-30', '复贷', '411', '368', '43', '0.287105', '72', '0.175182', '53', '0.128954', '48', '0.116788', '48', '0.116788', '45', '0.109489', 463);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-10-31', '复贷', '455', '396', '59', '0.325275', '104', '0.228571', '85', '0.186813', '72', '0.158242', '64', '0.140659', '60', '0.131868', 464);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-01', '复贷', '424', '370', '54', '0.325472', '100', '0.235849', '78', '0.183962', '61', '0.143868', '56', '0.132075', '56', '0.132075', 465);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-02', '复贷', '414', '341', '73', '0.350242', '95', '0.229469', '85', '0.205314', '80', '0.193237', '78', '0.188406', '76', '0.183575', 466);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-03', '复贷', '517', '431', '86', '0.336557', '144', '0.27853', '117', '0.226306', '99', '0.191489', '92', '0.17795', '91', '0.176015', 467);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-04', '复贷', '471', '420', '51', '0.244161', '85', '0.180467', '60', '0.127389', '56', '0.118896', '56', '0.118896', '54', '0.11465', 468);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-05', '复贷', '441', '397', '44', '0.281179', '89', '0.201814', '71', '0.160998', '54', '0.122449', '51', '0.115646', '46', '0.104308', 469);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-06', '复贷', '424', '391', '33', '0.20283', '64', '0.150943', '40', '0.09434', '37', '0.087264', '36', '0.084906', '36', '0.084906', 470);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-07', '复贷', '424', '369', '55', '0.290094', '81', '0.191038', '71', '0.167453', '63', '0.148585', '60', '0.141509', '58', '0.136792', 471);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-08', '复贷', '362', '319', '43', '0.245856', '60', '0.165746', '48', '0.132597', '47', '0.129834', '46', '0.127072', '45', '0.124309', 472);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-09', '复贷', '390', '369', '21', '0.217949', '63', '0.161538', '42', '0.107692', '34', '0.087179', '28', '0.071795', '24', '0.061538', 473);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-10', '复贷', '439', '389', '50', '0.275626', '84', '0.191344', '57', '0.129841', '57', '0.129841', '51', '0.116173', '51', '0.116173', 474);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-11', '复贷', '494', '429', '65', '0.336032', '107', '0.216599', '85', '0.172065', '73', '0.147773', '68', '0.137652', '67', '0.135628', 475);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-12', '复贷', '366', '341', '25', '0.229508', '55', '0.150273', '42', '0.114754', '32', '0.087432', '25', '0.068306', '25', '0.068306', 476);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-13', '复贷', '403', '377', '26', '0.220844', '60', '0.148883', '39', '0.096774', '31', '0.076923', '29', '0.07196', '28', '0.069479', 477);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-14', '复贷', '448', '430', '18', '0.28125', '75', '0.167411', '48', '0.107143', '33', '0.073661', '24', '0.053571', '22', '0.049107', 478);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-15', '复贷', '420', '384', '36', '0.285714', '75', '0.178571', '52', '0.12381', '40', '0.095238', '40', '0.095238', '37', '0.088095', 479);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-16', '复贷', '442', '369', '73', '0.330317', '115', '0.260181', '89', '0.201357', '78', '0.176471', '77', '0.174208', '75', '0.169683', 480);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-17', '复贷', '515', '456', '59', '0.312621', '104', '0.201942', '86', '0.16699', '70', '0.135922', '65', '0.126214', '62', '0.120388', 481);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-18', '复贷', '453', '414', '39', '0.240618', '83', '0.183223', '65', '0.143488', '47', '0.103753', '42', '0.092715', '41', '0.090508', 482);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-19', '复贷', '347', '330', '17', '0.236311', '56', '0.161383', '37', '0.106628', '25', '0.072046', '24', '0.069164', '21', '0.060519', 483);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-20', '复贷', '412', '394', '18', '0.225728', '64', '0.15534', '39', '0.09466', '23', '0.055825', '20', '0.048544', '20', '0.048544', 484);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-21', '复贷', '426', '365', '61', '0.298122', '98', '0.230047', '74', '0.173709', '70', '0.164319', '66', '0.15493', '63', '0.147887', 485);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-22', '复贷', '475', '445', '30', '0.229474', '67', '0.141053', '54', '0.113684', '36', '0.075789', '32', '0.067368', '31', '0.065263', 486);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-23', '复贷', '443', '365', '78', '0.318284', '111', '0.250564', '92', '0.207675', '90', '0.20316', '84', '0.189616', '81', '0.182844', 487);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-24', '复贷', '446', '421', '25', '0.262332', '64', '0.143498', '38', '0.085202', '35', '0.078475', '31', '0.069507', '27', '0.060538', 488);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-25', '复贷', '416', '381', '35', '0.228365', '62', '0.149038', '49', '0.117788', '45', '0.108173', '39', '0.09375', '36', '0.086538', 489);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-26', '复贷', '532', '488', '44', '0.283835', '98', '0.184211', '77', '0.144737', '59', '0.110902', '49', '0.092105', '48', '0.090226', 490);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-27', '复贷', '406', '396', '10', '0.23399', '50', '0.123153', '29', '0.071429', '18', '0.044335', '14', '0.034483', '11', '0.027094', 491);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-28', '复贷', '487', '439', '48', '0.285421', '81', '0.166324', '55', '0.112936', '55', '0.112936', '52', '0.106776', '48', '0.098563', 492);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-29', '复贷', '462', '417', '45', '0.264069', '86', '0.186147', '64', '0.138528', '56', '0.121212', '51', '0.11039', '48', '0.103896', 493);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-11-30', '复贷', '433', '408', '25', '0.21709', '61', '0.140878', '43', '0.099307', '36', '0.083141', '27', '0.062356', '27', '0.062356', 494);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-01', '复贷', '484', '434', '50', '0.28719', '108', '0.22314', '71', '0.146694', '56', '0.115702', '52', '0.107438', '50', '0.103306', 495);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-02', '复贷', '398', '365', '33', '0.266332', '75', '0.188442', '61', '0.153266', '42', '0.105528', '39', '0.09799', '34', '0.085427', 496);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-03', '复贷', '469', '428', '41', '0.26226', '92', '0.196162', '68', '0.144989', '55', '0.117271', '47', '0.100213', '44', '0.093817', 497);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-04', '复贷', '471', '421', '50', '0.259023', '107', '0.227176', '80', '0.169851', '61', '0.129512', '52', '0.110403', '50', '0.106157', 498);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-05', '复贷', '521', '479', '42', '0.307102', '112', '0.214971', '81', '0.15547', '50', '0.095969', '44', '0.084453', '42', '0.080614', 499);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-06', '复贷', '468', '377', '91', '0.348291', '123', '0.262821', '109', '0.232906', '100', '0.213675', '96', '0.205128', '94', '0.200855', 500);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-07', '复贷', '405', '376', '29', '0.244444', '63', '0.155556', '43', '0.106173', '35', '0.08642', '34', '0.083951', '30', '0.074074', 501);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-08', '复贷', '411', '332', '79', '0.323601', '104', '0.253041', '94', '0.22871', '87', '0.211679', '83', '0.201946', '83', '0.201946', 502);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-09', '复贷', '466', '422', '44', '0.248927', '72', '0.154506', '55', '0.118026', '50', '0.107296', '48', '0.103004', '48', '0.103004', 503);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-10', '复贷', '399', '321', '78', '0.325815', '95', '0.238095', '84', '0.210526', '79', '0.197995', '79', '0.197995', '78', '0.195489', 504);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-11', '复贷', '368', '324', '44', '0.263587', '75', '0.203804', '64', '0.173913', '52', '0.141304', '47', '0.127717', '46', '0.125', 505);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-12', '复贷', '439', '376', '63', '0.252847', '89', '0.202733', '75', '0.170843', '72', '0.164009', '64', '0.145786', '63', '0.143508', 506);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-13', '复贷', '444', '401', '43', '0.216216', '64', '0.144144', '50', '0.112613', '49', '0.11036', '47', '0.105856', '44', '0.099099', 507);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-14', '复贷', '366', '309', '57', '0.286885', '72', '0.196721', '63', '0.172131', '63', '0.172131', '58', '0.15847', '58', '0.15847', 508);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-15', '复贷', '443', '387', '56', '0.306998', '84', '0.189616', '70', '0.158014', '60', '0.13544', '60', '0.13544', '57', '0.128668', 509);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-16', '复贷', '422', '368', '54', '0.28436', '97', '0.229858', '74', '0.175355', '64', '0.151659', '58', '0.137441', '58', '0.137441', 510);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-17', '复贷', '373', '322', '51', '0.297587', '90', '0.241287', '76', '0.203753', '63', '0.168901', '57', '0.152815', '54', '0.144772', 511);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-18', '复贷', '444', '398', '46', '0.20045', '61', '0.137387', '52', '0.117117', '51', '0.114865', '47', '0.105856', '46', '0.103604', 512);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-19', '复贷', '429', '406', '23', '0.244755', '61', '0.142191', '38', '0.088578', '28', '0.065268', '28', '0.065268', '24', '0.055944', 513);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-20', '复贷', '471', '382', '89', '0.380042', '129', '0.273885', '106', '0.225053', '97', '0.205945', '94', '0.199575', '92', '0.195329', 514);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-21', '复贷', '546', '431', '115', '0.274725', '132', '0.241758', '125', '0.228938', '119', '0.217949', '119', '0.217949', '117', '0.214286', 515);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-22', '复贷', '448', '359', '89', '0.352679', '116', '0.258929', '97', '0.216518', '96', '0.214286', '94', '0.209821', '92', '0.205357', 516);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-23', '复贷', '448', '346', '102', '0.337054', '122', '0.272321', '114', '0.254464', '109', '0.243304', '107', '0.238839', '103', '0.229911', 517);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-24', '复贷', '473', '363', '110', '0.376321', '148', '0.312896', '119', '0.251586', '117', '0.247357', '116', '0.245243', '115', '0.243129', 518);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-25', '复贷', '395', '319', '76', '0.288608', '96', '0.243038', '93', '0.235443', '85', '0.21519', '83', '0.210127', '80', '0.202532', 519);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-26', '复贷', '439', '337', '102', '0.321185', '125', '0.284738', '121', '0.275626', '111', '0.252847', '106', '0.241458', '105', '0.23918', 520);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-27', '复贷', '485', '369', '116', '0.348454', '158', '0.325773', '131', '0.270103', '120', '0.247423', '120', '0.247423', '117', '0.241237', 521);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-28', '复贷', '405', '297', '108', '0.375309', '139', '0.34321', '122', '0.301235', '114', '0.281481', '110', '0.271605', '110', '0.271605', 522);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-29', '复贷', '492', '392', '100', '0.347561', '136', '0.276423', '124', '0.252033', '113', '0.229675', '104', '0.211382', '102', '0.207317', 523);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-30', '复贷', '499', '397', '102', '0.310621', '124', '0.248497', '118', '0.236473', '112', '0.224449', '109', '0.218437', '107', '0.214429', 524);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2020-12-31', '复贷', '399', '310', '89', '0.368421', '129', '0.323308', '107', '0.26817', '96', '0.240602', '90', '0.225564', '90', '0.225564', 525);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-01', '复贷', '501', '393', '108', '0.381238', '147', '0.293413', '120', '0.239521', '113', '0.225549', '112', '0.223553', '110', '0.219561', 526);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-02', '复贷', '432', '339', '93', '0.372685', '125', '0.289352', '120', '0.277778', '107', '0.247685', '100', '0.231481', '96', '0.222222', 527);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-03', '复贷', '464', '421', '43', '0.273707', '73', '0.157328', '61', '0.131466', '60', '0.12931', '52', '0.112069', '48', '0.103448', 528);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-04', '复贷', '275', '216', '59', '0.345455', '75', '0.272727', '68', '0.247273', '65', '0.236364', '62', '0.225455', '60', '0.218182', 529);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-05', '复贷', '384', '350', '34', '0.257813', '57', '0.148438', '46', '0.119792', '44', '0.114583', '37', '0.096354', '35', '0.091146', 530);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-06', '复贷', '358', '291', '67', '0.304469', '76', '0.212291', '75', '0.209497', '68', '0.189944', '68', '0.189944', '68', '0.189944', 531);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-07', '复贷', '418', '341', '77', '0.373206', '109', '0.260766', '93', '0.222488', '89', '0.212919', '84', '0.200957', '80', '0.191388', 532);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-08', '复贷', '277', '235', '42', '0.292419', '55', '0.198556', '49', '0.176895', '46', '0.166065', '45', '0.162455', '42', '0.151625', 533);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-09', '复贷', '403', '330', '73', '0.255583', '91', '0.225806', '86', '0.2134', '82', '0.203474', '78', '0.193548', '77', '0.191067', 534);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-10', '复贷', '375', '313', '62', '0.325333', '87', '0.232', '74', '0.197333', '70', '0.186667', '67', '0.178667', '64', '0.170667', 535);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-11', '复贷', '420', '369', '51', '0.252381', '94', '0.22381', '69', '0.164286', '61', '0.145238', '57', '0.135714', '53', '0.12619', 536);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-12', '复贷', '259', '228', '31', '0.332046', '57', '0.220077', '43', '0.166023', '38', '0.146718', '35', '0.135135', '33', '0.127413', 537);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-13', '复贷', '250', '186', '64', '0.356', '79', '0.316', '74', '0.296', '71', '0.284', '67', '0.268', '65', '0.26', 538);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-14', '复贷', '367', '281', '86', '0.33515', '102', '0.277929', '101', '0.275204', '98', '0.26703', '91', '0.247956', '88', '0.239782', 539);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-15', '复贷', '376', '285', '91', '0.37234', '122', '0.324468', '103', '0.273936', '101', '0.268617', '96', '0.255319', '94', '0.25', 540);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-16', '复贷', '385', '319', '66', '0.316883', '88', '0.228571', '75', '0.194805', '73', '0.18961', '68', '0.176623', '68', '0.176623', 541);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-17', '复贷', '456', '368', '88', '0.315789', '118', '0.258772', '106', '0.232456', '99', '0.217105', '92', '0.201754', '91', '0.199561', 542);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-18', '复贷', '402', '300', '102', '0.393035', '117', '0.291045', '111', '0.276119', '107', '0.266169', '105', '0.261194', '0', '0', 543);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-19', '复贷', '406', '308', '98', '0.374384', '129', '0.317734', '117', '0.288177', '106', '0.261084', '100', '0.246305', '0', '0', 544);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-20', '复贷', '268', '207', '61', '0.38806', '78', '0.291045', '68', '0.253731', '65', '0.242537', '63', '0.235075', '0', '0', 545);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-21', '复贷', '408', '341', '67', '0.333333', '96', '0.235294', '79', '0.193627', '74', '0.181373', '69', '0.169118', '0', '0', 546);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-22', '复贷', '400', '357', '43', '0.2825', '81', '0.2025', '58', '0.145', '56', '0.14', '49', '0.1225', '0', '0', 547);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-23', '复贷', '513', '428', '85', '0.356725', '127', '0.247563', '99', '0.192982', '95', '0.185185', '87', '0.169591', '0', '0', 548);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-24', '复贷', '508', '394', '114', '0.372047', '145', '0.285433', '126', '0.248031', '123', '0.242126', '120', '0.23622', '0', '0', 549);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-25', '复贷', '511', '425', '86', '0.35225', '118', '0.23092', '110', '0.215264', '95', '0.18591', '0', '0', '0', '0', 550);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-26', '复贷', '544', '412', '132', '0.375', '175', '0.321691', '143', '0.262868', '142', '0.261029', '0', '0', '0', '0', 551);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-27', '复贷', '441', '358', '83', '0.326531', '104', '0.235828', '103', '0.23356', '0', '0', '0', '0', '0', '0', 552);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-28', '复贷', '272', '204', '68', '0.371324', '85', '0.3125', '78', '0.286765', '0', '0', '0', '0', '0', '0', 553);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-29', '复贷', '352', '247', '105', '0.400568', '129', '0.366477', '0', '0', '0', '0', '0', '0', '0', '0', 554);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-30', '复贷', '406', '283', '123', '0.3867', '147', '0.362069', '0', '0', '0', '0', '0', '0', '0', '0', 555);
INSERT INTO `mock_wykj_daihoubaobiao` VALUES ('2021-01-31', '复贷', '461', '338', '123', '0.342733', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 556);

-- ----------------------------
-- Table structure for mock_wykj_xinsheng_fudai
-- ----------------------------
DROP TABLE IF EXISTS `mock_wykj_xinsheng_fudai`;
CREATE TABLE `mock_wykj_xinsheng_fudai`  (
  `a0` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a1` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a2` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a3` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a4` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a5` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a6` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 192 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mock_wykj_xinsheng_fudai
-- ----------------------------
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-07-28', '28', '20', '8', '0', '20', '0.714286', 1);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-07-29', '26', '18', '8', '0', '18', '0.692308', 2);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-07-30', '32', '24', '8', '0', '24', '0.75', 3);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-07-31', '39', '30', '9', '0', '30', '0.769231', 4);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-08-01', '20', '15', '5', '0', '15', '0.75', 5);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-08-02', '32', '25', '7', '0', '25', '0.78125', 6);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-08-03', '35', '29', '6', '0', '29', '0.828571', 7);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-08-04', '22', '17', '5', '0', '17', '0.772727', 8);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-08-05', '39', '32', '7', '0', '32', '0.820513', 9);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-08-06', '37', '29', '8', '0', '29', '0.783784', 10);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-08-07', '35', '26', '9', '0', '26', '0.742857', 11);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-08-08', '22', '15', '7', '0', '15', '0.681818', 12);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-08-09', '30', '24', '6', '0', '24', '0.8', 13);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-08-10', '23', '19', '4', '0', '19', '0.826087', 14);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-08-11', '86', '68', '18', '0', '68', '0.790698', 15);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-08-12', '77', '60', '17', '0', '60', '0.779221', 16);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-08-13', '100', '81', '19', '0', '81', '0.81', 17);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-08-14', '641', '511', '130', '0', '511', '0.797192', 18);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-08-15', '630', '473', '157', '0', '473', '0.750794', 19);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-08-16', '607', '431', '176', '0', '431', '0.710049', 20);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-08-17', '490', '394', '96', '0', '394', '0.804082', 21);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-08-18', '548', '442', '106', '0', '442', '0.806569', 22);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-08-19', '623', '480', '143', '0', '480', '0.770465', 23);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-08-20', '555', '419', '136', '0', '419', '0.754955', 24);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-08-21', '510', '382', '128', '0', '382', '0.74902', 25);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-08-22', '573', '455', '118', '0', '455', '0.794066', 26);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-08-23', '533', '406', '127', '0', '406', '0.761726', 27);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-08-24', '602', '488', '114', '0', '488', '0.810631', 28);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-08-25', '600', '441', '159', '0', '441', '0.735', 29);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-08-26', '539', '433', '106', '0', '433', '0.80334', 30);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-08-27', '492', '349', '143', '0', '349', '0.70935', 31);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-08-28', '560', '461', '99', '0', '461', '0.823214', 32);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-08-29', '550', '458', '92', '0', '458', '0.832727', 33);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-08-30', '528', '386', '142', '0', '386', '0.731061', 34);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-08-31', '526', '383', '143', '0', '383', '0.728137', 35);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-09-01', '623', '520', '103', '0', '520', '0.834671', 36);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-09-02', '586', '492', '94', '0', '492', '0.83959', 37);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-09-03', '501', '379', '122', '0', '379', '0.756487', 38);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-09-04', '642', '486', '156', '0', '486', '0.757009', 39);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-09-05', '593', '447', '146', '0', '447', '0.753794', 40);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-09-06', '513', '421', '92', '0', '421', '0.820663', 41);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-09-07', '583', '479', '104', '0', '479', '0.821612', 42);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-09-08', '627', '440', '187', '0', '440', '0.701754', 43);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-09-09', '561', '433', '128', '0', '433', '0.771836', 44);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-09-10', '488', '342', '146', '0', '342', '0.70082', 45);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-09-11', '528', '444', '84', '0', '444', '0.840909', 46);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-09-12', '613', '478', '135', '0', '478', '0.779772', 47);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-09-13', '520', '397', '123', '0', '397', '0.763462', 48);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-09-14', '484', '367', '117', '0', '367', '0.758264', 49);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-09-15', '497', '412', '85', '0', '412', '0.828974', 50);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-09-16', '531', '372', '159', '0', '372', '0.700565', 51);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-09-17', '505', '362', '143', '0', '362', '0.716832', 52);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-09-18', '538', '438', '100', '0', '438', '0.814126', 53);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-09-19', '561', '471', '90', '0', '471', '0.839572', 54);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-09-20', '546', '415', '131', '0', '415', '0.760073', 55);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-09-21', '646', '511', '135', '0', '511', '0.791022', 56);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-09-22', '639', '458', '181', '0', '458', '0.716745', 57);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-09-23', '572', '441', '131', '0', '441', '0.770979', 58);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-09-24', '566', '477', '89', '0', '477', '0.842756', 59);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-09-25', '537', '378', '159', '0', '378', '0.703911', 60);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-09-26', '536', '418', '118', '0', '418', '0.779851', 61);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-09-27', '571', '453', '118', '0', '453', '0.793345', 62);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-09-28', '586', '477', '109', '0', '477', '0.813993', 63);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-09-29', '511', '421', '90', '0', '421', '0.823875', 64);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-09-30', '596', '464', '132', '0', '464', '0.778523', 65);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-10-01', '530', '419', '111', '0', '419', '0.790566', 66);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-10-02', '482', '361', '121', '0', '361', '0.748963', 67);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-10-03', '636', '523', '113', '0', '523', '0.822327', 68);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-10-04', '587', '459', '128', '0', '459', '0.781942', 69);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-10-05', '523', '394', '129', '0', '394', '0.753346', 70);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-10-06', '569', '467', '102', '0', '467', '0.820738', 71);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-10-07', '512', '416', '96', '0', '416', '0.8125', 72);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-10-08', '480', '340', '140', '0', '340', '0.708333', 73);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-10-09', '631', '527', '104', '0', '527', '0.835182', 74);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-10-10', '606', '434', '172', '0', '434', '0.716172', 75);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-10-11', '480', '364', '116', '0', '364', '0.758333', 76);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-10-12', '603', '459', '144', '0', '459', '0.761194', 77);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-10-13', '537', '405', '132', '0', '405', '0.75419', 78);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-10-14', '498', '416', '82', '0', '416', '0.835341', 79);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-10-15', '555', '404', '151', '0', '404', '0.727928', 80);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-10-16', '516', '402', '114', '0', '402', '0.77907', 81);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-10-17', '648', '464', '184', '0', '464', '0.716049', 82);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-10-18', '530', '430', '100', '0', '430', '0.811321', 83);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-10-19', '532', '442', '90', '0', '442', '0.830827', 84);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-10-20', '571', '405', '166', '0', '405', '0.709282', 85);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-10-21', '636', '476', '160', '0', '476', '0.748428', 86);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-10-22', '618', '512', '106', '0', '512', '0.828479', 87);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-10-23', '578', '413', '165', '0', '413', '0.714533', 88);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-10-24', '516', '411', '105', '0', '411', '0.796512', 89);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-10-25', '587', '455', '132', '0', '455', '0.775128', 90);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-10-26', '524', '424', '100', '0', '424', '0.80916', 91);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-10-27', '545', '414', '131', '0', '414', '0.759633', 92);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-10-28', '629', '517', '112', '0', '517', '0.82194', 93);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-10-29', '604', '471', '133', '0', '471', '0.779801', 94);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-10-30', '627', '441', '186', '0', '441', '0.703349', 95);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-10-31', '532', '424', '108', '0', '424', '0.796992', 96);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-11-01', '530', '424', '106', '0', '424', '0.8', 97);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-11-02', '480', '362', '118', '0', '362', '0.754167', 98);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-11-03', '506', '390', '116', '0', '390', '0.770751', 99);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-11-04', '574', '439', '135', '0', '439', '0.764808', 100);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-11-05', '621', '494', '127', '0', '494', '0.795491', 101);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-11-06', '510', '366', '144', '0', '366', '0.717647', 102);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-11-07', '485', '403', '82', '0', '403', '0.830928', 103);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-11-08', '564', '448', '116', '0', '448', '0.794326', 104);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-11-09', '590', '420', '170', '0', '420', '0.711864', 105);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-11-10', '565', '442', '123', '0', '442', '0.782301', 106);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-11-11', '641', '515', '126', '0', '515', '0.803432', 107);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-11-12', '549', '453', '96', '0', '453', '0.825137', 108);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-11-13', '489', '347', '142', '0', '347', '0.709611', 109);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-11-14', '570', '412', '158', '0', '412', '0.722807', 110);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-11-15', '576', '426', '150', '0', '426', '0.739583', 111);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-11-16', '569', '475', '94', '0', '475', '0.834798', 112);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-11-17', '570', '443', '127', '0', '443', '0.777193', 113);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-11-18', '604', '446', '158', '0', '446', '0.738411', 114);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-11-19', '547', '416', '131', '0', '416', '0.760512', 115);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-11-20', '638', '532', '106', '0', '532', '0.833856', 116);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-11-21', '522', '406', '116', '0', '406', '0.777778', 117);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-11-22', '629', '487', '142', '0', '487', '0.774245', 118);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-11-23', '624', '462', '162', '0', '462', '0.740385', 119);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-11-24', '572', '433', '139', '0', '433', '0.756993', 120);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-11-25', '618', '484', '134', '0', '484', '0.783172', 121);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-11-26', '541', '398', '143', '0', '398', '0.735675', 122);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-11-27', '584', '469', '115', '0', '469', '0.803082', 123);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-11-28', '617', '471', '146', '0', '471', '0.763371', 124);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-11-29', '644', '521', '123', '0', '521', '0.809006', 125);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-11-30', '634', '468', '166', '0', '468', '0.73817', 126);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-12-01', '496', '405', '91', '0', '405', '0.816532', 127);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-12-02', '536', '411', '125', '0', '411', '0.766791', 128);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-12-03', '641', '466', '175', '0', '466', '0.726989', 129);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-12-04', '556', '399', '157', '0', '399', '0.717626', 130);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-12-05', '503', '368', '135', '0', '368', '0.73161', 131);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-12-06', '588', '439', '149', '0', '439', '0.746599', 132);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-12-07', '550', '444', '106', '0', '444', '0.807273', 133);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-12-08', '518', '366', '152', '0', '366', '0.706564', 134);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-12-09', '597', '443', '154', '0', '443', '0.742044', 135);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-12-10', '558', '422', '136', '0', '422', '0.756272', 136);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-12-11', '497', '373', '124', '0', '373', '0.750503', 137);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-12-12', '554', '444', '110', '0', '444', '0.801444', 138);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-12-13', '602', '429', '173', '0', '429', '0.712625', 139);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-12-14', '633', '471', '162', '0', '471', '0.744076', 140);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-12-15', '649', '546', '103', '0', '546', '0.841294', 141);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-12-16', '551', '448', '103', '0', '448', '0.813067', 142);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-12-17', '607', '448', '159', '0', '448', '0.738056', 143);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-12-18', '614', '473', '141', '0', '473', '0.770358', 144);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-12-19', '549', '395', '154', '0', '395', '0.71949', 145);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-12-20', '551', '439', '112', '0', '439', '0.796733', 146);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-12-21', '633', '485', '148', '0', '485', '0.766193', 147);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-12-22', '513', '405', '108', '0', '405', '0.789474', 148);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-12-23', '591', '492', '99', '0', '492', '0.832487', 149);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-12-24', '623', '499', '124', '0', '499', '0.800963', 150);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-12-25', '531', '399', '132', '0', '399', '0.751412', 151);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-12-26', '645', '501', '144', '0', '501', '0.776744', 152);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-12-27', '544', '432', '112', '0', '432', '0.794118', 153);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-12-28', '627', '464', '163', '0', '464', '0.740032', 154);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-12-29', '331', '275', '56', '0', '275', '0.830816', 155);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-12-30', '497', '384', '113', '0', '384', '0.772636', 156);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2020-12-31', '451', '358', '93', '0', '358', '0.793792', 157);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2021-01-01', '514', '418', '96', '0', '418', '0.81323', 158);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2021-01-02', '348', '277', '71', '0', '277', '0.795977', 159);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2021-01-03', '496', '403', '93', '0', '403', '0.8125', 160);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2021-01-04', '449', '375', '74', '0', '375', '0.835189', 161);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2021-01-05', '514', '420', '94', '0', '420', '0.817121', 162);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2021-01-06', '319', '259', '60', '0', '259', '0.811912', 163);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2021-01-07', '298', '250', '48', '0', '250', '0.838926', 164);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2021-01-08', '469', '367', '102', '0', '367', '0.782516', 165);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2021-01-09', '497', '376', '121', '0', '376', '0.756539', 166);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2021-01-10', '499', '385', '114', '0', '385', '0.771543', 167);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2021-01-11', '580', '456', '124', '0', '456', '0.786207', 168);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2021-01-12', '476', '402', '74', '0', '402', '0.844538', 169);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2021-01-13', '513', '406', '107', '0', '406', '0.791423', 170);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2021-01-14', '335', '268', '67', '0', '268', '0.8', 171);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2021-01-15', '481', '408', '73', '0', '408', '0.848233', 172);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2021-01-16', '491', '400', '91', '0', '400', '0.814664', 173);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2021-01-17', '658', '513', '145', '0', '513', '0.779635', 174);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2021-01-18', '618', '508', '110', '0', '508', '0.822006', 175);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2021-01-19', '655', '511', '144', '0', '511', '0.780153', 176);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2021-01-20', '700', '544', '156', '0', '544', '0.777143', 177);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2021-01-21', '555', '441', '114', '0', '441', '0.794595', 178);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2021-01-22', '346', '272', '74', '0', '272', '0.786127', 179);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2021-01-23', '463', '352', '111', '0', '352', '0.760259', 180);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2021-01-24', '490', '406', '84', '0', '406', '0.828571', 181);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2021-01-25', '553', '461', '92', '0', '461', '0.833635', 182);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2021-01-26', '616', '463', '153', '0', '463', '0.751623', 183);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2021-01-27', '511', '412', '99', '0', '412', '0.806262', 184);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2021-01-28', '414', '336', '78', '0', '336', '0.811594', 185);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2021-01-29', '646', '495', '151', '0', '495', '0.766254', 186);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2021-01-30', '444', '339', '105', '0', '339', '0.763514', 187);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2021-01-31', '346', '269', '77', '0', '269', '0.777457', 188);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2021-02-01', '382', '299', '83', '0', '299', '0.782723', 189);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2021-02-02', '347', '283', '64', '0', '283', '0.815562', 190);
INSERT INTO `mock_wykj_xinsheng_fudai` VALUES ('2021-02-03', '384', '301', '83', '0', '301', '0.783854', 191);

-- ----------------------------
-- Table structure for mock_wykj_xinsheng_shoudai
-- ----------------------------
DROP TABLE IF EXISTS `mock_wykj_xinsheng_shoudai`;
CREATE TABLE `mock_wykj_xinsheng_shoudai`  (
  `a0` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a1` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a2` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a3` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a4` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a5` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a6` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a7` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a8` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a9` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a10` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a11` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a12` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a13` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a14` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a15` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a16` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 199 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mock_wykj_xinsheng_shoudai
-- ----------------------------
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-07-23', '659', '114', '545', '0', '0', '89', '25', '0', '72', '72', '0', '72', '0.172989', '0.780702', '0.135053', '1', 1);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-07-24', '255', '55', '200', '0', '0', '43', '12', '0', '25', '25', '0', '25', '0.215686', '0.781818', '0.168627', '1', 2);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-07-25', '573', '106', '467', '0', '0', '87', '19', '0', '58', '58', '0', '58', '0.184991', '0.820755', '0.151832', '1', 3);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-07-26', '441', '84', '357', '0', '0', '68', '16', '0', '41', '41', '0', '41', '0.190476', '0.809524', '0.154195', '1', 4);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-07-27', '465', '100', '365', '0', '0', '79', '21', '0', '71', '70', '1', '70', '0.215054', '0.79', '0.169892', '0.985915', 5);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-07-28', '371', '72', '299', '0', '0', '56', '16', '0', '36', '36', '0', '36', '0.19407', '0.777778', '0.150943', '1', 6);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-07-29', '342', '75', '267', '0', '0', '60', '15', '0', '50', '50', '0', '50', '0.219298', '0.8', '0.175439', '1', 7);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-07-30', '415', '75', '340', '0', '0', '61', '14', '0', '59', '59', '0', '59', '0.180723', '0.813333', '0.146988', '1', 8);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-07-31', '576', '116', '460', '0', '0', '90', '26', '0', '67', '66', '1', '66', '0.201389', '0.775862', '0.15625', '0.985075', 9);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-08-01', '310', '66', '244', '0', '0', '51', '15', '0', '26', '26', '0', '26', '0.212903', '0.772727', '0.164516', '1', 10);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-08-02', '259', '44', '215', '0', '0', '35', '9', '0', '20', '20', '0', '20', '0.169884', '0.795455', '0.135135', '1', 11);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-08-03', '435', '78', '357', '0', '0', '60', '18', '0', '39', '38', '1', '38', '0.17931', '0.769231', '0.137931', '0.974359', 12);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-08-04', '492', '92', '400', '0', '0', '71', '21', '0', '42', '42', '0', '42', '0.186992', '0.771739', '0.144309', '1', 13);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-08-05', '508', '109', '399', '0', '0', '88', '21', '0', '65', '64', '1', '64', '0.214567', '0.807339', '0.173228', '0.984615', 14);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-08-06', '289', '64', '225', '0', '0', '50', '14', '0', '36', '36', '0', '36', '0.221453', '0.78125', '0.17301', '1', 15);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-08-07', '3894', '861', '3033', '0', '0', '710', '151', '0', '700', '694', '6', '694', '0.221109', '0.824623', '0.182332', '0.991429', 16);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-08-08', '6167', '1152', '5015', '0', '0', '907', '245', '0', '890', '887', '3', '887', '0.186801', '0.787326', '0.147073', '0.996629', 17);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-08-09', '5055', '1016', '4039', '0', '0', '801', '215', '0', '792', '779', '13', '779', '0.200989', '0.788386', '0.158457', '0.983586', 18);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-08-10', '5150', '959', '4191', '0', '0', '772', '187', '0', '745', '732', '13', '732', '0.186214', '0.805005', '0.149903', '0.98255', 19);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-08-11', '4112', '810', '3302', '0', '0', '665', '145', '0', '649', '639', '10', '639', '0.196984', '0.820988', '0.161722', '0.984592', 20);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-08-12', '4678', '1025', '3653', '0', '0', '828', '197', '0', '827', '822', '5', '822', '0.219111', '0.807805', '0.176999', '0.993954', 21);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-08-13', '3982', '753', '3229', '0', '0', '614', '139', '0', '607', '601', '6', '601', '0.189101', '0.815405', '0.154194', '0.990115', 22);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-08-14', '4906', '966', '3940', '0', '0', '798', '168', '0', '784', '771', '13', '771', '0.196902', '0.826087', '0.162658', '0.983418', 23);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-08-15', '4037', '786', '3251', '0', '0', '628', '158', '0', '612', '604', '8', '604', '0.194699', '0.798982', '0.155561', '0.986928', 24);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-08-16', '4685', '863', '3822', '0', '0', '714', '149', '0', '712', '709', '3', '709', '0.184205', '0.827346', '0.152401', '0.995787', 25);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-08-17', '5503', '1177', '4326', '0', '0', '916', '261', '0', '898', '892', '6', '892', '0.213883', '0.77825', '0.166455', '0.993318', 26);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-08-18', '4024', '923', '3101', '0', '0', '755', '168', '0', '742', '742', '0', '742', '0.229374', '0.817985', '0.187624', '1', 27);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-08-19', '3826', '849', '2977', '0', '0', '680', '169', '0', '679', '678', '1', '678', '0.221903', '0.800942', '0.177731', '0.998527', 28);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-08-20', '4321', '923', '3398', '0', '0', '744', '179', '0', '732', '730', '2', '730', '0.213608', '0.806067', '0.172182', '0.997268', 29);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-08-21', '4253', '774', '3479', '0', '0', '641', '133', '0', '639', '633', '6', '633', '0.181989', '0.828165', '0.150717', '0.99061', 30);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-08-22', '5225', '1079', '4146', '0', '0', '870', '209', '0', '845', '835', '10', '835', '0.206507', '0.806302', '0.166507', '0.988166', 31);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-08-23', '5109', '869', '4240', '0', '0', '677', '192', '0', '669', '662', '7', '662', '0.170092', '0.779056', '0.132511', '0.989537', 32);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-08-24', '5901', '1097', '4804', '0', '0', '866', '231', '0', '861', '852', '9', '852', '0.185901', '0.789426', '0.146755', '0.989547', 33);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-08-25', '4281', '824', '3457', '0', '0', '657', '167', '0', '632', '626', '6', '626', '0.192478', '0.79733', '0.153469', '0.990506', 34);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-08-26', '4882', '1098', '3784', '0', '0', '890', '208', '0', '871', '857', '14', '857', '0.224908', '0.810565', '0.182302', '0.983927', 35);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-08-27', '5401', '1179', '4222', '0', '0', '918', '261', '0', '909', '895', '14', '895', '0.218293', '0.778626', '0.169969', '0.984598', 36);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-08-28', '5341', '1033', '4308', '0', '0', '812', '221', '0', '783', '768', '15', '768', '0.193409', '0.78606', '0.152031', '0.980843', 37);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-08-29', '4448', '963', '3485', '0', '0', '794', '169', '0', '769', '765', '4', '765', '0.216502', '0.824507', '0.178507', '0.994798', 38);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-08-30', '4833', '1068', '3765', '0', '0', '823', '245', '0', '810', '807', '3', '807', '0.220981', '0.770599', '0.170288', '0.996296', 39);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-08-31', '3994', '790', '3204', '0', '0', '613', '177', '0', '610', '600', '10', '600', '0.197797', '0.775949', '0.15348', '0.983607', 40);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-09-01', '3729', '701', '3028', '0', '0', '567', '134', '0', '545', '543', '2', '543', '0.187986', '0.808845', '0.152051', '0.99633', 41);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-09-02', '5746', '1048', '4698', '0', '0', '813', '235', '0', '791', '784', '7', '784', '0.182388', '0.775763', '0.14149', '0.99115', 42);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-09-03', '4725', '1032', '3693', '0', '0', '816', '216', '0', '793', '792', '1', '792', '0.218413', '0.790698', '0.172698', '0.998739', 43);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-09-04', '3603', '703', '2900', '0', '0', '571', '132', '0', '543', '533', '10', '533', '0.195115', '0.812233', '0.158479', '0.981584', 44);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-09-05', '5345', '945', '4400', '0', '0', '753', '192', '0', '750', '745', '5', '745', '0.176801', '0.796825', '0.140879', '0.993333', 45);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-09-06', '4945', '850', '4095', '0', '0', '692', '158', '0', '681', '676', '5', '676', '0.171891', '0.814118', '0.139939', '0.992658', 46);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-09-07', '3531', '713', '2818', '0', '0', '580', '133', '0', '553', '546', '7', '546', '0.201926', '0.813464', '0.164259', '0.987342', 47);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-09-08', '3626', '668', '2958', '0', '0', '550', '118', '0', '528', '520', '8', '520', '0.184225', '0.823353', '0.151682', '0.984848', 48);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-09-09', '4798', '926', '3872', '0', '0', '759', '167', '0', '738', '734', '4', '734', '0.192997', '0.819654', '0.158191', '0.99458', 49);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-09-10', '4393', '897', '3496', '0', '0', '720', '177', '0', '705', '702', '3', '702', '0.204188', '0.802676', '0.163897', '0.995745', 50);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-09-11', '3734', '833', '2901', '0', '0', '680', '153', '0', '663', '654', '9', '654', '0.223085', '0.816327', '0.18211', '0.986425', 51);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-09-12', '4300', '916', '3384', '0', '0', '738', '178', '0', '723', '714', '9', '714', '0.213023', '0.805677', '0.171628', '0.987552', 52);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-09-13', '4035', '924', '3111', '0', '0', '747', '177', '0', '730', '720', '10', '720', '0.228996', '0.808442', '0.18513', '0.986301', 53);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-09-14', '3818', '680', '3138', '0', '0', '554', '126', '0', '527', '524', '3', '524', '0.178104', '0.814706', '0.145102', '0.994307', 54);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-09-15', '4411', '858', '3553', '0', '0', '700', '158', '0', '675', '669', '6', '669', '0.194514', '0.815851', '0.158694', '0.991111', 55);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-09-16', '4782', '1029', '3753', '0', '0', '793', '236', '0', '792', '791', '1', '791', '0.215182', '0.770651', '0.16583', '0.998737', 56);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-09-17', '4930', '1019', '3911', '0', '0', '801', '218', '0', '784', '782', '2', '782', '0.206694', '0.786065', '0.162475', '0.997449', 57);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-09-18', '4518', '1017', '3501', '0', '0', '794', '223', '0', '768', '763', '5', '763', '0.2251', '0.780728', '0.175741', '0.99349', 58);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-09-19', '3883', '819', '3064', '0', '0', '646', '173', '0', '637', '629', '8', '629', '0.210919', '0.788767', '0.166366', '0.987441', 59);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-09-20', '5765', '1017', '4748', '0', '0', '788', '229', '0', '759', '758', '1', '758', '0.176409', '0.774828', '0.136687', '0.998682', 60);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-09-21', '4684', '972', '3712', '0', '0', '754', '218', '0', '738', '724', '14', '724', '0.207515', '0.77572', '0.160974', '0.98103', 61);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-09-22', '3301', '682', '2619', '0', '0', '536', '146', '0', '533', '530', '3', '530', '0.206604', '0.785924', '0.162375', '0.994371', 62);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-09-23', '4627', '936', '3691', '0', '0', '749', '187', '0', '732', '726', '6', '726', '0.202291', '0.800214', '0.161876', '0.991803', 63);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-09-24', '4404', '938', '3466', '0', '0', '734', '204', '0', '706', '704', '2', '704', '0.212988', '0.782516', '0.166667', '0.997167', 64);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-09-25', '5446', '941', '4505', '0', '0', '754', '187', '0', '748', '743', '5', '743', '0.172787', '0.801275', '0.13845', '0.993316', 65);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-09-26', '4665', '856', '3809', '0', '0', '679', '177', '0', '649', '642', '7', '642', '0.183494', '0.793224', '0.145552', '0.989214', 66);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-09-27', '3745', '694', '3051', '0', '0', '542', '152', '0', '533', '523', '10', '523', '0.185314', '0.78098', '0.144726', '0.981238', 67);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-09-28', '4097', '814', '3283', '0', '0', '662', '152', '0', '654', '651', '3', '651', '0.198682', '0.813268', '0.161582', '0.995413', 68);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-09-29', '5214', '891', '4323', '0', '0', '719', '172', '0', '692', '682', '10', '682', '0.170886', '0.806958', '0.137898', '0.985549', 69);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-09-30', '4690', '962', '3728', '0', '0', '780', '182', '0', '777', '765', '12', '765', '0.205117', '0.810811', '0.166311', '0.984556', 70);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-10-01', '5332', '939', '4393', '0', '0', '752', '187', '0', '723', '719', '4', '719', '0.176107', '0.800852', '0.141035', '0.994467', 71);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-10-02', '4100', '811', '3289', '0', '0', '669', '142', '0', '647', '635', '12', '635', '0.197805', '0.824908', '0.163171', '0.981453', 72);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-10-03', '5435', '999', '4436', '0', '0', '788', '211', '0', '782', '775', '7', '775', '0.183809', '0.788789', '0.144986', '0.991049', 73);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-10-04', '3292', '737', '2555', '0', '0', '574', '163', '0', '572', '571', '1', '571', '0.223876', '0.778833', '0.174362', '0.998252', 74);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-10-05', '5321', '969', '4352', '0', '0', '799', '170', '0', '778', '774', '4', '774', '0.182109', '0.824561', '0.15016', '0.994859', 75);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-10-06', '3500', '741', '2759', '0', '0', '595', '146', '0', '580', '573', '7', '573', '0.211714', '0.802969', '0.17', '0.987931', 76);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-10-07', '4300', '970', '3330', '0', '0', '798', '172', '0', '790', '789', '1', '789', '0.225581', '0.82268', '0.185581', '0.998734', 77);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-10-08', '5678', '967', '4711', '0', '0', '751', '216', '0', '728', '723', '5', '723', '0.170306', '0.776629', '0.132265', '0.993132', 78);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-10-09', '3368', '746', '2622', '0', '0', '577', '169', '0', '547', '543', '4', '543', '0.221496', '0.773458', '0.171318', '0.992687', 79);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-10-10', '3825', '750', '3075', '0', '0', '585', '165', '0', '573', '569', '4', '569', '0.196078', '0.78', '0.152941', '0.993019', 80);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-10-11', '3756', '782', '2974', '0', '0', '626', '156', '0', '597', '596', '1', '596', '0.2082', '0.800512', '0.166667', '0.998325', 81);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-10-12', '3627', '749', '2878', '0', '0', '592', '157', '0', '575', '566', '9', '566', '0.206507', '0.790387', '0.16322', '0.984348', 82);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-10-13', '4515', '823', '3692', '0', '0', '645', '178', '0', '629', '617', '12', '617', '0.182281', '0.783718', '0.142857', '0.980922', 83);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-10-14', '5664', '998', '4666', '0', '0', '786', '212', '0', '780', '773', '7', '773', '0.176201', '0.787575', '0.138771', '0.991026', 84);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-10-15', '4767', '1022', '3745', '0', '0', '830', '192', '0', '810', '798', '12', '798', '0.214391', '0.812133', '0.174114', '0.985185', 85);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-10-16', '4532', '924', '3608', '0', '0', '729', '195', '0', '705', '703', '2', '703', '0.203883', '0.788961', '0.160856', '0.997163', 86);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-10-17', '4002', '826', '3176', '0', '0', '643', '183', '0', '641', '634', '7', '634', '0.206397', '0.77845', '0.16067', '0.98908', 87);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-10-18', '5076', '963', '4113', '0', '0', '793', '170', '0', '772', '758', '14', '758', '0.189716', '0.823468', '0.156225', '0.981865', 88);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-10-19', '5220', '937', '4283', '0', '0', '735', '202', '0', '734', '726', '8', '726', '0.179502', '0.784418', '0.140805', '0.989101', 89);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-10-20', '4116', '934', '3182', '0', '0', '767', '167', '0', '765', '756', '9', '756', '0.226919', '0.821199', '0.186346', '0.988235', 90);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-10-21', '5081', '907', '4174', '0', '0', '738', '169', '0', '727', '720', '7', '720', '0.178508', '0.813671', '0.145247', '0.990371', 91);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-10-22', '3832', '750', '3082', '0', '0', '621', '129', '0', '603', '595', '8', '595', '0.19572', '0.828', '0.162056', '0.986733', 92);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-10-23', '4202', '792', '3410', '0', '0', '627', '165', '0', '615', '615', '0', '615', '0.188482', '0.791667', '0.149215', '1', 93);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-10-24', '3875', '849', '3026', '0', '0', '689', '160', '0', '686', '681', '5', '681', '0.219097', '0.811543', '0.177806', '0.992711', 94);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-10-25', '4285', '731', '3554', '0', '0', '593', '138', '0', '591', '583', '8', '583', '0.170595', '0.811218', '0.13839', '0.986464', 95);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-10-26', '3124', '690', '2434', '0', '0', '561', '129', '0', '555', '545', '10', '545', '0.220871', '0.813043', '0.179577', '0.981982', 96);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-10-27', '4398', '763', '3635', '0', '0', '619', '144', '0', '597', '589', '8', '589', '0.173488', '0.811271', '0.140746', '0.9866', 97);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-10-28', '4764', '857', '3907', '0', '0', '679', '178', '0', '656', '654', '2', '654', '0.179891', '0.792299', '0.142527', '0.996951', 98);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-10-29', '4923', '954', '3969', '0', '0', '773', '181', '0', '757', '747', '10', '747', '0.193784', '0.810273', '0.157018', '0.98679', 99);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-10-30', '4463', '848', '3615', '0', '0', '656', '192', '0', '642', '638', '4', '638', '0.190007', '0.773585', '0.146986', '0.993769', 100);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-10-31', '4335', '926', '3409', '0', '0', '714', '212', '0', '710', '705', '5', '705', '0.21361', '0.771058', '0.164706', '0.992958', 101);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-11-01', '3381', '740', '2641', '0', '0', '589', '151', '0', '578', '570', '8', '570', '0.21887', '0.795946', '0.174209', '0.986159', 102);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-11-02', '5328', '918', '4410', '0', '0', '739', '179', '0', '728', '722', '6', '722', '0.172297', '0.805011', '0.138701', '0.991758', 103);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-11-03', '4545', '1013', '3532', '0', '0', '784', '229', '0', '764', '756', '8', '756', '0.222882', '0.773939', '0.172497', '0.989529', 104);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-11-04', '4357', '902', '3455', '0', '0', '747', '155', '0', '720', '710', '10', '710', '0.207023', '0.82816', '0.171448', '0.986111', 105);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-11-05', '3425', '738', '2687', '0', '0', '588', '150', '0', '583', '577', '6', '577', '0.215474', '0.796748', '0.171679', '0.989708', 106);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-11-06', '4973', '918', '4055', '0', '0', '736', '182', '0', '716', '705', '11', '705', '0.184597', '0.801743', '0.147999', '0.984637', 107);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-11-07', '4046', '852', '3194', '0', '0', '671', '181', '0', '661', '649', '12', '649', '0.210578', '0.787559', '0.165843', '0.981846', 108);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-11-08', '3581', '689', '2892', '0', '0', '543', '146', '0', '519', '510', '9', '510', '0.192404', '0.788099', '0.151634', '0.982659', 109);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-11-09', '5299', '1010', '4289', '0', '0', '810', '200', '0', '785', '784', '1', '784', '0.190602', '0.80198', '0.152859', '0.998726', 110);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-11-10', '4478', '1004', '3474', '0', '0', '795', '209', '0', '781', '777', '4', '777', '0.224207', '0.791833', '0.177535', '0.994878', 111);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-11-11', '5646', '1040', '4606', '0', '0', '830', '210', '0', '803', '795', '8', '795', '0.184201', '0.798077', '0.147007', '0.990037', 112);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-11-12', '3536', '687', '2849', '0', '0', '558', '129', '0', '529', '529', '0', '529', '0.194287', '0.812227', '0.157805', '1', 113);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-11-13', '3479', '749', '2730', '0', '0', '596', '153', '0', '595', '585', '10', '585', '0.215292', '0.795728', '0.171314', '0.983193', 114);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-11-14', '3352', '760', '2592', '0', '0', '592', '168', '0', '582', '577', '5', '577', '0.22673', '0.778947', '0.176611', '0.991409', 115);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-11-15', '3822', '720', '3102', '0', '0', '563', '157', '0', '537', '534', '3', '534', '0.188383', '0.781944', '0.147305', '0.994413', 116);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-11-16', '3828', '665', '3163', '0', '0', '537', '128', '0', '509', '506', '3', '506', '0.17372', '0.807519', '0.140282', '0.994106', 117);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-11-17', '4533', '844', '3689', '0', '0', '676', '168', '0', '671', '670', '1', '670', '0.18619', '0.800948', '0.149129', '0.99851', 118);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-11-18', '3880', '883', '2997', '0', '0', '699', '184', '0', '687', '677', '10', '677', '0.227577', '0.791619', '0.180155', '0.985444', 119);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-11-19', '5257', '1032', '4225', '0', '0', '825', '207', '0', '797', '789', '8', '789', '0.19631', '0.799419', '0.156934', '0.989962', 120);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-11-20', '4279', '854', '3425', '0', '0', '700', '154', '0', '691', '688', '3', '688', '0.199579', '0.819672', '0.16359', '0.995658', 121);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-11-21', '3129', '718', '2411', '0', '0', '565', '153', '0', '537', '527', '10', '527', '0.229466', '0.786908', '0.180569', '0.981378', 122);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-11-22', '4083', '810', '3273', '0', '0', '627', '183', '0', '606', '601', '5', '601', '0.198384', '0.774074', '0.153564', '0.991749', 123);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-11-23', '4173', '732', '3441', '0', '0', '575', '157', '0', '553', '547', '6', '547', '0.175413', '0.785519', '0.137791', '0.98915', 124);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-11-24', '4012', '694', '3318', '0', '0', '555', '139', '0', '553', '550', '3', '550', '0.172981', '0.799712', '0.138335', '0.994575', 125);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-11-25', '3719', '698', '3021', '0', '0', '556', '142', '0', '536', '532', '4', '532', '0.187685', '0.796562', '0.149503', '0.992537', 126);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-11-26', '4784', '1018', '3766', '0', '0', '791', '227', '0', '777', '769', '8', '769', '0.212793', '0.777014', '0.165343', '0.989704', 127);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-11-27', '4201', '960', '3241', '0', '0', '770', '190', '0', '755', '753', '2', '753', '0.228517', '0.802083', '0.18329', '0.997351', 128);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-11-28', '3585', '818', '2767', '0', '0', '630', '188', '0', '615', '604', '11', '604', '0.228173', '0.770171', '0.175732', '0.982114', 129);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-11-29', '4801', '963', '3838', '0', '0', '771', '192', '0', '755', '745', '10', '745', '0.200583', '0.800623', '0.160592', '0.986755', 130);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-11-30', '3541', '693', '2848', '0', '0', '570', '123', '0', '562', '557', '5', '557', '0.195707', '0.822511', '0.160971', '0.991103', 131);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-12-01', '986', '211', '775', '0', '0', '170', '41', '0', '161', '160', '1', '160', '0.213996', '0.805687', '0.172414', '0.993789', 132);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-12-02', '1647', '309', '1339', '0', '0', '244', '65', '0', '226', '224', '2', '224', '0.187614', '0.789644', '0.148148', '0.99115', 133);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-12-03', '1257', '236', '1021', '0', '0', '187', '50', '0', '172', '170', '2', '170', '0.187749', '0.792373', '0.148767', '0.988372', 134);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-12-04', '745', '141', '604', '0', '0', '116', '25', '0', '105', '103', '2', '103', '0.189262', '0.822695', '0.155705', '0.980952', 135);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-12-05', '1395', '283', '1112', '0', '0', '224', '59', '0', '210', '206', '4', '206', '0.202867', '0.791519', '0.160573', '0.980952', 136);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-12-06', '1057', '229', '828', '0', '0', '183', '46', '0', '174', '172', '2', '172', '0.216651', '0.799127', '0.173132', '0.988506', 137);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-12-07', '1308', '287', '1021', '0', '0', '224', '63', '0', '212', '212', '0', '212', '0.219419', '0.780488', '0.171254', '1', 138);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-12-08', '1889', '400', '1489', '0', '0', '311', '89', '0', '295', '293', '2', '293', '0.211752', '0.7775', '0.164637', '0.99322', 139);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-12-09', '1397', '308', '1089', '0', '0', '238', '71', '0', '229', '225', '4', '225', '0.220472', '0.772727', '0.170365', '0.982533', 140);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-12-10', '668', '139', '529', '0', '0', '114', '25', '0', '101', '101', '0', '101', '0.208084', '0.820144', '0.170659', '1', 141);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-12-11', '2088', '361', '1727', '0', '0', '295', '66', '0', '278', '275', '3', '275', '0.172893', '0.817175', '0.141284', '0.989209', 142);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-12-12', '1853', '374', '1480', '0', '0', '296', '78', '0', '288', '283', '5', '283', '0.201835', '0.791444', '0.159741', '0.982639', 143);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-12-13', '933', '212', '721', '0', '0', '175', '37', '0', '168', '165', '3', '165', '0.227224', '0.825472', '0.187567', '0.982143', 144);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-12-14', '1374', '310', '1064', '0', '0', '255', '56', '0', '249', '248', '1', '248', '0.225619', '0.822581', '0.18559', '0.995984', 145);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-12-15', '1226', '282', '944', '0', '0', '229', '53', '0', '215', '211', '4', '211', '0.230016', '0.812057', '0.186786', '0.981395', 146);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-12-16', '1910', '339', '1571', '0', '0', '281', '58', '0', '261', '256', '5', '256', '0.177487', '0.828909', '0.14712', '0.980843', 147);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-12-17', '1189', '208', '981', '0', '0', '161', '46', '0', '145', '144', '1', '144', '0.174937', '0.774038', '0.135408', '0.993103', 148);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-12-18', '953', '198', '755', '0', '0', '159', '39', '0', '157', '155', '2', '155', '0.207765', '0.80303', '0.166842', '0.987261', 149);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-12-19', '1637', '284', '1352', '0', '0', '224', '61', '0', '217', '216', '1', '216', '0.173488', '0.788732', '0.136836', '0.995392', 150);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-12-20', '1622', '321', '1301', '0', '0', '249', '72', '0', '238', '237', '1', '237', '0.197904', '0.775701', '0.153514', '0.995798', 151);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-12-21', '846', '182', '663', '0', '0', '149', '33', '0', '144', '143', '1', '143', '0.21513', '0.818681', '0.176123', '0.993056', 152);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-12-22', '1270', '240', '1030', '0', '0', '198', '42', '0', '191', '191', '0', '191', '0.188976', '0.825', '0.155906', '1', 153);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-12-23', '1670', '369', '1301', '0', '0', '290', '79', '0', '276', '273', '3', '273', '0.220958', '0.785908', '0.173653', '0.98913', 154);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-12-24', '837', '184', '653', '0', '0', '145', '40', '0', '140', '137', '3', '137', '0.219833', '0.788043', '0.173238', '0.978571', 155);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-12-25', '1831', '396', '1435', '0', '0', '307', '89', '0', '287', '283', '4', '283', '0.216275', '0.775253', '0.167668', '0.986063', 156);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-12-26', '1968', '346', '1621', '0', '0', '275', '71', '0', '263', '259', '4', '259', '0.175813', '0.794798', '0.139736', '0.984791', 157);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-12-27', '1491', '297', '1194', '0', '0', '244', '53', '0', '228', '224', '4', '224', '0.199195', '0.821549', '0.163649', '0.982456', 158);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-12-28', '1511', '260', '1251', '0', '0', '210', '50', '0', '196', '196', '0', '196', '0.172071', '0.807692', '0.138981', '1', 159);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-12-29', '1924', '441', '1483', '0', '0', '350', '91', '0', '339', '334', '5', '334', '0.2292', '0.7933', '0.181824', '0.984', 160);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-12-30', '2809', '500', '2309', '0', '0', '422', '78', '0', '419', '414', '5', '414', '0.178', '0.8441', '0.15025', '0.988', 161);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2020-12-31', '2912', '657', '2255', '0', '0', '520', '137', '0', '514', '507', '7', '507', '0.2256', '0.7915', '0.178562', '0.987', 162);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-01-01', '3111', '653', '2458', '0', '0', '549', '104', '0', '549', '547', '2', '547', '0.2099', '0.8403', '0.176379', '0.997', 163);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-01-02', '3214', '637', '2577', '0', '0', '515', '122', '0', '515', '510', '5', '510', '0.1982', '0.8084', '0.160225', '0.991', 164);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-01-03', '1504', '315', '1189', '0', '0', '262', '53', '0', '248', '246', '2', '246', '0.2094', '0.8314', '0.174095', '0.99', 165);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-01-04', '1230', '272', '958', '0', '0', '229', '43', '0', '224', '220', '4', '220', '0.2212', '0.8409', '0.186007', '0.983', 166);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-01-05', '2308', '446', '1862', '0', '0', '370', '76', '0', '358', '356', '2', '356', '0.1932', '0.8302', '0.160395', '0.995', 167);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-01-06', '3524', '609', '2915', '0', '0', '501', '108', '0', '501', '495', '6', '495', '0.1728', '0.822', '0.142042', '0.988', 168);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-01-07', '3291', '677', '2614', '0', '0', '548', '129', '0', '548', '543', '5', '543', '0.2057', '0.8095', '0.166514', '0.99', 169);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-01-08', '3165', '544', '2621', '0', '0', '459', '85', '0', '452', '444', '8', '444', '0.1719', '0.8437', '0.145032', '0.982', 170);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-01-09', '2057', '363', '1694', '0', '0', '306', '57', '0', '293', '292', '1', '292', '0.1765', '0.8434', '0.14886', '0.998', 171);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-01-10', '1575', '283', '1292', '0', '0', '221', '62', '0', '218', '215', '3', '215', '0.1797', '0.7809', '0.140328', '0.988', 172);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-01-11', '1831', '378', '1453', '0', '0', '314', '64', '0', '305', '303', '2', '303', '0.2065', '0.8299', '0.171374', '0.992', 173);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-01-12', '2062', '387', '1675', '0', '0', '309', '78', '0', '309', '305', '4', '305', '0.1877', '0.7987', '0.149916', '0.987', 174);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-01-13', '3283', '713', '2570', '0', '0', '567', '146', '0', '552', '542', '10', '542', '0.2172', '0.795', '0.172674', '0.981', 175);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-01-14', '1259', '240', '1019', '0', '0', '202', '38', '0', '202', '201', '1', '201', '0.1907', '0.8402', '0.160226', '0.997', 176);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-01-15', '3601', '723', '2878', '0', '0', '554', '169', '0', '542', '533', '9', '533', '0.2008', '0.7658', '0.153773', '0.983', 177);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-01-16', '1445', '270', '1175', '0', '0', '227', '43', '0', '220', '218', '2', '218', '0.1869', '0.8398', '0.156959', '0.993', 178);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-01-17', '2385', '528', '1857', '0', '0', '410', '118', '0', '410', '410', '0', '410', '0.2214', '0.7769', '0.172006', '1', 179);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-01-18', '2770', '506', '2264', '0', '0', '427', '79', '0', '420', '415', '5', '415', '0.1827', '0.8434', '0.154089', '0.987', 180);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-01-19', '1720', '320', '1400', '0', '0', '248', '72', '0', '237', '237', '0', '237', '0.1861', '0.7759', '0.144395', '0.998', 181);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-01-20', '2568', '527', '2041', '0', '0', '413', '114', '0', '404', '401', '3', '401', '0.2052', '0.7833', '0.160733', '0.992', 182);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-01-21', '2177', '473', '1704', '0', '0', '391', '82', '0', '383', '383', '0', '383', '0.2173', '0.8265', '0.179598', '1', 183);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-01-22', '2008', '419', '1589', '0', '0', '333', '86', '0', '320', '320', '0', '320', '0.2087', '0.7944', '0.165791', '0.999', 184);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-01-23', '2414', '518', '1896', '0', '0', '431', '87', '0', '431', '427', '4', '427', '0.2146', '0.8325', '0.178655', '0.991', 185);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-01-24', '3275', '653', '2622', '0', '0', '531', '122', '0', '531', '528', '3', '528', '0.1994', '0.8134', '0.162192', '0.994', 186);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-01-25', '2258', '419', '1839', '0', '0', '334', '85', '0', '329', '324', '5', '324', '0.1856', '0.798', '0.148109', '0.986', 187);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-01-26', '1786', '379', '1407', '0', '0', '300', '79', '0', '298', '298', '0', '298', '0.2122', '0.7915', '0.167956', '0.999', 188);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-01-27', '2660', '483', '2177', '0', '0', '400', '83', '0', '398', '391', '7', '391', '0.1816', '0.8289', '0.150528', '0.983', 189);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-01-28', '1969', '366', '1603', '0', '0', '299', '67', '0', '299', '294', '5', '294', '0.1859', '0.817', '0.15188', '0.983', 190);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-01-29', '1535', '358', '1177', '0', '0', '300', '58', '0', '290', '289', '1', '289', '0.2333', '0.8379', '0.195482', '0.996', 191);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-01-30', '1291', '277', '1014', '0', '0', '219', '58', '0', '218', '214', '4', '214', '0.2145', '0.7915', '0.169777', '0.982', 192);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-01-31', '3253', '594', '2659', '0', '0', '499', '95', '0', '496', '493', '3', '493', '0.1826', '0.8397', '0.153329', '0.994', 193);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-02-01', '2012', '436', '1576', '0', '0', '356', '80', '0', '349', '348', '1', '348', '0.2167', '0.8174', '0.177131', '0.996', 194);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-02-02', '2321', '534', '1787', '0', '0', '437', '97', '0', '424', '424', '0', '424', '0.2301', '0.8183', '0.188291', '1', 195);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-02-03', '2340', '557', '1783', '0', '0', '462', '95', '0', '456', '456', '0', '456', '0.238', '0.8289', '0.197278', '1', 196);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-02-04', '2756', '589', '2167', '0', '0', '478', '111', '0', '468', '460', '8', '460', '0.2137', '0.8117', '0.17346', '0.982', 197);
INSERT INTO `mock_wykj_xinsheng_shoudai` VALUES ('2021-02-05', '1890', '391', '1499', '0', '0', '310', '81', '0', '299', '294', '5', '294', '0.2069', '0.7932', '0.164113', '0.983', 198);

-- ----------------------------
-- Table structure for mock_wykj_yunyingbaobiao1_yuanyingqingkuan
-- ----------------------------
DROP TABLE IF EXISTS `mock_wykj_yunyingbaobiao1_yuanyingqingkuan`;
CREATE TABLE `mock_wykj_yunyingbaobiao1_yuanyingqingkuan`  (
  `a0` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a1` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a2` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a3` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a4` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a5` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a6` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a7` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a8` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a9` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a10` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a11` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a12` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a13` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a14` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a15` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a16` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a17` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a18` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a19` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mock_wykj_yunyingbaobiao1_yuanyingqingkuan
-- ----------------------------
INSERT INTO `mock_wykj_yunyingbaobiao1_yuanyingqingkuan` VALUES ('2021-01-15', '1278634', '29017', '68683', '0.07641', '366375834.9', '414130579.74', '81597948.12', '15398916.84', '1674697.2', '748', '2652069.24', '878', '0', '0', '2863509.84', '66199031.28', '1736833.5', '3570325.56', '7198042.14', 1);
INSERT INTO `mock_wykj_yunyingbaobiao1_yuanyingqingkuan` VALUES ('2021-01-21', '1284375', '29775', '67529', '0.07576', '368491595.4', '415202885.64', '81588886.38', '15045508.98', '2115760.5', '945', '1335096.36', '442', '0', '0', '1416652.02', '66543377.4', '1600907.4', '3346802.64', '7173877.5', 2);
INSERT INTO `mock_wykj_yunyingbaobiao1_yuanyingqingkuan` VALUES ('2021-01-22', '1289592', '30120', '67992', '0.07608', '370336449', '417453217.74', '82102384.98', '14966973.9', '1844853.6', '824', '2824242.3', '935', '0', '0', '2842365.78', '67135411.08', '1640174.94', '3401173.08', '7170856.92', 3);
INSERT INTO `mock_wykj_yunyingbaobiao1_yuanyingqingkuan` VALUES ('2021-01-23', '1295198', '29810', '68249', '0.07571', '371661877.8', '419045063.4', '81942294.24', '14532010.38', '1325428.8', '592', '1990562.22', '659', '0', '0', '1866718.44', '67410283.86', '1211252.58', '3286391.04', '6799325.58', 4);
INSERT INTO `mock_wykj_yunyingbaobiao1_yuanyingqingkuan` VALUES ('2021-01-24', '1300037', '28990', '70632', '0.07663', '373405980.9', '421307477.82', '82501101.54', '14565236.76', '1744103.1', '779', '2742686.64', '908', '0', '0', '2787995.34', '67935864.78', '1392487.38', '3473667', '6766099.2', 5);
INSERT INTO `mock_wykj_yunyingbaobiao1_yuanyingqingkuan` VALUES ('2021-01-25', '1304569', '31221', '69492', '0.0772', '375497113.5', '423388657.44', '83319678.72', '14676998.22', '2091132.6', '934', '2643007.5', '875', '0', '0', '2787995.34', '68642680.5', '1507269.42', '3700210.5', '7119507.06', 6);
INSERT INTO `mock_wykj_yunyingbaobiao1_yuanyingqingkuan` VALUES ('2021-01-26', '1309325', '29209', '71164', '0.07666', '377254650', '425276519.94', '83135423.34', '14121211.5', '1757536.5', '785', '2313764.28', '766', '0', '0', '2259393.84', '69014211.84', '1603927.98', '3518975.7', '7161795.18', 7);
INSERT INTO `mock_wykj_yunyingbaobiao1_yuanyingqingkuan` VALUES ('2021-01-27', '1314535', '30528', '71572', '0.07767', '378958452.9', '427381864.2', '83821095', '14057779.32', '1703802.9', '761', '2700398.52', '894', '0', '0', '2854448.1', '69763315.68', '1827450.9', '3564284.4', '7548429.42', 8);
INSERT INTO `mock_wykj_yunyingbaobiao1_yuanyingqingkuan` VALUES ('2021-01-28', '1319612', '29107', '70576', '0.07554', '380756289.6', '429429817.44', '84376881.72', '14172561.36', '1797836.7', '803', '2624884.02', '869', '0', '0', '2488957.92', '70204320.36', '1561639.86', '3660942.96', '7575614.64', 9);
INSERT INTO `mock_wykj_yunyingbaobiao1_yuanyingqingkuan` VALUES ('2021-01-29', '1324534', '29432', '71709', '0.07636', '382166796.6', '430807201.92', '84802783.5', '14187664.26', '1410507', '630', '1794224.52', '594', '0', '0', '1788183.36', '70615119.24', '1600907.4', '3479708.16', '7418544.48', 10);
INSERT INTO `mock_wykj_yunyingbaobiao1_yuanyingqingkuan` VALUES ('2021-01-30', '1329967', '31170', '70692', '0.07659', '383922094.2', '432486644.4', '84325531.86', '13036823.28', '1755297.6', '784', '2180858.76', '722', '0', '0', '2353031.82', '71288708.58', '1525392.9', '3878424.72', '7554470.58', 11);
INSERT INTO `mock_wykj_yunyingbaobiao1_yuanyingqingkuan` VALUES ('2021-01-31', '1335470', '30611', '70083', '0.0754', '385160205.9', '434519494.74', '85044429.9', '12967349.94', '1238111.7', '553', '2718522', '900', '0', '0', '2821221.72', '72077079.96', '1872759.6', '4141215.18', '7953187.14', 12);
INSERT INTO `mock_wykj_yunyingbaobiao1_yuanyingqingkuan` VALUES ('2021-02-01', '1340300', '31003', '70645', '0.07584', '386866247.7', '436298616.36', '85292117.46', '12623003.82', '1706041.8', '762', '2313764.28', '766', '0', '0', '2371155.3', '72669113.64', '2053994.4', '4026433.14', '8206915.86', 13);
INSERT INTO `mock_wykj_yunyingbaobiao1_yuanyingqingkuan` VALUES ('2021-02-02', '1346290', '30915', '73880', '0.07784', '388314816', '438147211.32', '85452208.2', '12333028.14', '1448568.3', '647', '2313764.28', '766', '0', '0', '2298661.38', '73119180.06', '1830471.48', '4104968.22', '8176710.06', 14);
INSERT INTO `mock_wykj_yunyingbaobiao1_yuanyingqingkuan` VALUES ('2021-02-03', '1351398', '31890', '72668', '0.07737', '389897718.3', '440077361.94', '86331196.98', '12716641.8', '1582902.3', '707', '2440628.64', '808', '0', '0', '2425525.74', '73614555.18', '1537475.22', '3851239.5', '8119319.04', 15);
INSERT INTO `mock_wykj_yunyingbaobiao1_yuanyingqingkuan` VALUES ('2021-02-04', '1356802', '31554', '70233', '0.07502', '391592565.6', '441475890.48', '84467499.12', '10348507.08', '1694847.3', '757', '1806306.84', '598', '0', '0', '1902965.4', '74118992.04', '1449878.4', '3914671.68', '7919960.76', 16);
INSERT INTO `mock_wykj_yunyingbaobiao1_yuanyingqingkuan` VALUES ('2021-01-16', '1278634', '29017', '68683', '0.07641', '366375834.9', '414130579.74', '81597948.12', '15398916.84', '1674697.2', '748', '2652069.24', '878', '0', '0', '2863509.84', '66199031.28', '1736833.5', '3570325.56', '7198042.14', 17);
INSERT INTO `mock_wykj_yunyingbaobiao1_yuanyingqingkuan` VALUES ('2021-01-17', '1278634', '29017', '68683', '0.07641', '366375834.9', '414130579.74', '81597948.12', '15398916.84', '1674697.2', '748', '2652069.24', '878', '0', '0', '2863509.84', '66199031.28', '1736833.5', '3570325.56', '7198042.14', 18);
INSERT INTO `mock_wykj_yunyingbaobiao1_yuanyingqingkuan` VALUES ('2021-01-18', '1278634', '29017', '68683', '0.07641', '366375834.9', '414130579.74', '81597948.12', '15398916.84', '1674697.2', '748', '2652069.24', '878', '0', '0', '2863509.84', '66199031.28', '1736833.5', '3570325.56', '7198042.14', 19);
INSERT INTO `mock_wykj_yunyingbaobiao1_yuanyingqingkuan` VALUES ('2021-01-19', '1278634', '29017', '68683', '0.07641', '366375834.9', '414130579.74', '81597948.12', '15398916.84', '1674697.2', '748', '2652069.24', '878', '0', '0', '2863509.84', '66199031.28', '1736833.5', '3570325.56', '7198042.14', 20);
INSERT INTO `mock_wykj_yunyingbaobiao1_yuanyingqingkuan` VALUES ('2021-01-20', '1278634', '29017', '68683', '0.07641', '366375834.9', '414130579.74', '81597948.12', '15398916.84', '1674697.2', '748', '2652069.24', '878', '0', '0', '2863509.84', '66199031.28', '1736833.5', '3570325.56', '7198042.14', 21);

-- ----------------------------
-- Table structure for mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing
-- ----------------------------
DROP TABLE IF EXISTS `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing`;
CREATE TABLE `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing`  (
  `a0` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a1` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a2` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a3` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a4` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a5` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a6` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a7` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a8` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a9` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 197 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing
-- ----------------------------
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-07-29', '72', '69', '0.708333', '3', '0.958333', '0.958333', '0', '26', '0.509804', 1);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-07-30', '25', '22', '0.72', '3', '0.88', '0.88', '0', '14', '0.777778', 2);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-07-31', '58', '50', '0.637931', '8', '0.862069', '0.862069', '0', '23', '0.621622', 3);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-08-01', '41', '35', '0.634146', '6', '0.853659', '0.853659', '0', '20', '0.769231', 4);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-08-02', '70', '59', '0.671429', '11', '0.842857', '0.842857', '0', '32', '0.680851', 5);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-08-03', '56', '49', '0.660714', '7', '0.875', '0.861111', '0.9', '28', '0.756757', 6);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-08-04', '68', '57', '0.661765', '11', '0.838235', '0.82', '0.888889', '30', '0.666667', 7);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-08-05', '83', '72', '0.674699', '11', '0.86747', '0.830508', '0.958333', '41', '0.732143', 8);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-08-06', '96', '89', '0.71875', '7', '0.927083', '0.939394', '0.9', '49', '0.710145', 9);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-08-07', '41', '37', '0.682927', '4', '0.902439', '0.884615', '0.933333', '20', '0.714286', 10);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-08-08', '45', '39', '0.666667', '6', '0.866667', '0.9', '0.84', '23', '0.766667', 11);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-08-09', '67', '60', '0.686567', '7', '0.895522', '0.894737', '0.896552', '30', '0.652174', 12);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-08-10', '59', '48', '0.644068', '11', '0.813559', '0.809524', '0.823529', '23', '0.605263', 13);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-08-11', '96', '87', '0.71875', '9', '0.90625', '0.90625', '0.90625', '55', '0.797101', 14);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-08-12', '65', '52', '0.646154', '13', '0.8', '0.777778', '0.827586', '32', '0.761905', 15);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-08-13', '720', '597', '0.645833', '123', '0.829167', '0.827089', '0.884615', '280', '0.602151', 16);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-08-14', '902', '823', '0.703991', '79', '0.912417', '0.913191', '0.866667', '455', '0.716535', 17);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-08-15', '803', '755', '0.712329', '48', '0.940224', '0.942234', '0.875', '444', '0.776224', 18);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-08-16', '751', '640', '0.716378', '111', '0.852197', '0.849727', '0.947368', '394', '0.732342', 19);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-08-17', '1090', '998', '0.680734', '92', '0.915596', '0.86385', '0.988914', '528', '0.71159', 20);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-08-18', '1254', '1180', '0.722488', '74', '0.940989', '0.948905', '0.925926', '540', '0.596026', 21);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-08-19', '1119', '955', '0.698838', '164', '0.853441', '0.878536', '0.824324', '569', '0.727621', 22);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-08-20', '1282', '1063', '0.693448', '219', '0.829173', '0.866407', '0.772994', '550', '0.618673', 23);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-08-21', '1077', '925', '0.648097', '152', '0.858867', '0.850993', '0.868922', '439', '0.62894', 24);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-08-22', '1140', '1016', '0.707895', '124', '0.891228', '0.897038', '0.881671', '539', '0.667906', 25);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-08-23', '1286', '1122', '0.706843', '164', '0.872473', '0.875561', '0.865482', '500', '0.550055', 26);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-08-24', '1184', '1039', '0.695101', '145', '0.877534', '0.838275', '0.943439', '556', '0.675577', 27);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-08-25', '1158', '1041', '0.673575', '117', '0.898964', '0.951327', '0.825', '595', '0.762821', 28);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-08-26', '1149', '980', '0.685814', '169', '0.852916', '0.872603', '0.818616', '582', '0.738579', 29);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-08-27', '1015', '869', '0.687685', '146', '0.856158', '0.843602', '0.876963', '419', '0.600287', 30);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-08-28', '1290', '1209', '0.727132', '81', '0.937209', '0.926946', '0.956044', '533', '0.56823', 31);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-08-29', '1068', '904', '0.679775', '164', '0.846442', '0.862538', '0.820197', '539', '0.742424', 32);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-08-30', '1340', '1135', '0.684328', '205', '0.847015', '0.884977', '0.780738', '613', '0.668484', 33);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-08-31', '1067', '999', '0.718838', '68', '0.93627', '0.944089', '0.92517', '538', '0.701434', 34);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-09-01', '1290', '1178', '0.716279', '112', '0.913178', '0.901984', '0.935335', '637', '0.689394', 35);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-09-02', '1244', '1080', '0.680064', '164', '0.868167', '0.856983', '0.896848', '586', '0.692671', 36);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-09-03', '1229', '1102', '0.681855', '127', '0.896664', '0.921875', '0.854664', '481', '0.573986', 37);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-09-04', '1223', '1060', '0.69583', '163', '0.866721', '0.85098', '0.893013', '672', '0.789659', 38);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-09-05', '1193', '1024', '0.657167', '169', '0.85834', '0.85254', '0.870466', '492', '0.627551', 39);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-09-06', '983', '852', '0.672431', '131', '0.866734', '0.898333', '0.817232', '448', '0.677761', 40);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-09-07', '1063', '983', '0.754468', '80', '0.924741', '0.902394', '0.948077', '589', '0.734414', 41);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-09-08', '1276', '1088', '0.676332', '188', '0.852665', '0.818878', '0.906504', '600', '0.695249', 42);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-09-09', '1171', '1064', '0.712212', '107', '0.908625', '0.887626', '0.952507', '600', '0.719424', 43);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-09-10', '1019', '964', '0.734053', '55', '0.946026', '0.896811', '1', '473', '0.632353', 44);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-09-11', '1192', '979', '0.660235', '213', '0.821309', '0.824161', '0.816555', '608', '0.772554', 45);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-09-12', '1097', '939', '0.690064', '158', '0.855971', '0.890533', '0.800475', '573', '0.756935', 46);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-09-13', '1025', '916', '0.705366', '109', '0.893659', '0.8663', '0.924843', '533', '0.737206', 47);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-09-14', '960', '819', '0.655208', '141', '0.853125', '0.869231', '0.834091', '466', '0.740859', 48);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-09-15', '1167', '1054', '0.721508', '113', '0.903171', '0.901907', '0.905312', '466', '0.553444', 49);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-09-16', '1044', '903', '0.689655', '141', '0.864943', '0.827635', '0.94152', '480', '0.666667', 50);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-09-17', '1098', '1031', '0.724954', '67', '0.93898', '0.969419', '0.894144', '547', '0.687186', 51);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-09-18', '1192', '1111', '0.728188', '81', '0.932047', '0.886555', '1', '496', '0.571429', 52);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-09-19', '1117', '946', '0.668756', '171', '0.846911', '0.872222', '0.801008', '593', '0.793842', 53);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-09-20', '891', '796', '0.69697', '95', '0.893378', '0.923664', '0.850136', '415', '0.668277', 54);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-09-21', '1081', '899', '0.6679', '182', '0.831637', '0.799701', '0.883495', '459', '0.635734', 55);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-09-22', '1163', '1084', '0.730009', '79', '0.932072', '0.936789', '0.922043', '576', '0.678445', 56);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-09-23', '1144', '995', '0.673077', '149', '0.869755', '0.859335', '0.892265', '567', '0.736364', 57);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-09-24', '1201', '1107', '0.709409', '94', '0.921732', '0.926606', '0.913242', '581', '0.681925', 58);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-09-25', '1100', '980', '0.704545', '120', '0.890909', '0.893482', '0.887473', '553', '0.713548', 59);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-09-26', '1173', '997', '0.672634', '176', '0.849957', '0.824538', '0.896386', '534', '0.676806', 60);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-09-27', '1235', '1148', '0.710121', '87', '0.929555', '0.966851', '0.876712', '605', '0.689852', 61);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-09-28', '988', '833', '0.69332', '155', '0.843117', '0.79434', '0.899563', '536', '0.782482', 62);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-09-29', '1167', '978', '0.646958', '189', '0.838046', '0.831956', '0.848073', '478', '0.633113', 63);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-09-30', '1181', '1010', '0.674005', '171', '0.855207', '0.870739', '0.832285', '577', '0.724874', 64);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-10-01', '1121', '1036', '0.700268', '85', '0.924175', '0.974428', '0.825397', '617', '0.785987', 65);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-10-02', '1060', '902', '0.665094', '158', '0.850943', '0.878505', '0.808612', '436', '0.61844', 66);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-10-03', '976', '881', '0.697746', '95', '0.902664', '0.902486', '0.90287', '420', '0.61674', 67);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-10-04', '1128', '964', '0.689716', '164', '0.85461', '0.826421', '0.893082', '591', '0.75964', 68);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-10-05', '1103', '970', '0.689937', '133', '0.87942', '0.881232', '0.876485', '466', '0.612352', 69);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-10-06', '1229', '1067', '0.681855', '162', '0.868186', '0.826144', '0.9375', '540', '0.644391', 70);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-10-07', '1138', '997', '0.716169', '141', '0.876098', '0.878999', '0.871122', '570', '0.699387', 71);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-10-08', '996', '909', '0.714859', '87', '0.912651', '0.897638', '0.939058', '500', '0.702247', 72);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-10-09', '1298', '1150', '0.705701', '148', '0.885978', '0.901935', '0.862333', '596', '0.650655', 73);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-10-10', '1030', '924', '0.7', '106', '0.897087', '0.914186', '0.875817', '477', '0.661581', 74);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-10-11', '1168', '1018', '0.667808', '150', '0.871575', '0.899225', '0.817259', '548', '0.702564', 75);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-10-12', '1040', '884', '0.660577', '156', '0.85', '0.8726', '0.82227', '433', '0.630277', 76);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-10-13', '1205', '1030', '0.681328', '175', '0.854772', '0.844106', '0.875', '559', '0.680877', 77);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-10-14', '1063', '972', '0.714958', '91', '0.914393', '0.905947', '0.932353', '572', '0.752632', 78);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-10-15', '1070', '943', '0.674766', '127', '0.881308', '0.839779', '0.924099', '477', '0.660665', 79);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-10-16', '1003', '911', '0.725823', '92', '0.908275', '0.929701', '0.880184', '493', '0.677198', 80);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-10-17', '960', '821', '0.680208', '139', '0.855208', '0.83557', '0.887363', '516', '0.790199', 81);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-10-18', '1025', '884', '0.672195', '141', '0.862439', '0.862191', '0.862745', '489', '0.709724', 82);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-10-19', '1022', '931', '0.737769', '91', '0.910959', '0.905997', '0.918519', '504', '0.668435', 83);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-10-20', '1189', '1094', '0.712363', '95', '0.920101', '0.924968', '0.911058', '525', '0.619835', 84);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-10-21', '1202', '1116', '0.725458', '86', '0.928453', '0.926065', '0.933168', '536', '0.614679', 85);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-10-22', '1105', '962', '0.689593', '143', '0.870588', '0.85633', '0.895522', '503', '0.660105', 86);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-10-23', '1098', '967', '0.673953', '131', '0.880692', '0.916404', '0.831897', '535', '0.722973', 87);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-10-24', '1188', '1070', '0.684343', '118', '0.900673', '0.894459', '0.911628', '500', '0.615006', 88);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-10-25', '1168', '1042', '0.701199', '126', '0.892123', '0.896694', '0.884615', '609', '0.74359', 89);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-10-26', '1161', '1025', '0.697674', '136', '0.88286', '0.882275', '0.883951', '599', '0.739506', 90);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-10-27', '1196', '1110', '0.727425', '86', '0.928094', '0.880556', '1', '586', '0.673563', 91);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-10-28', '1107', '956', '0.65131', '151', '0.863595', '0.878992', '0.845703', '484', '0.67129', 92);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-10-29', '1028', '879', '0.675097', '149', '0.855058', '0.82439', '0.900726', '503', '0.724784', 93);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-10-30', '1092', '949', '0.660256', '143', '0.869048', '0.853157', '0.895377', '490', '0.679612', 94);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-10-31', '1038', '877', '0.655106', '161', '0.844894', '0.825043', '0.87033', '480', '0.705882', 95);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-11-01', '969', '803', '0.646027', '166', '0.828689', '0.794495', '0.872642', '463', '0.739617', 96);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-11-02', '1003', '828', '0.662014', '175', '0.825523', '0.826825', '0.823671', '468', '0.704819', 97);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-11-03', '1171', '1001', '0.666097', '170', '0.854825', '0.87156', '0.833656', '545', '0.698718', 98);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-11-04', '1218', '1070', '0.713465', '148', '0.878489', '0.870147', '0.89172', '629', '0.72382', 99);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-11-05', '1079', '910', '0.663577', '169', '0.843373', '0.804075', '0.900227', '556', '0.776536', 100);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-11-06', '1129', '983', '0.729849', '146', '0.870682', '0.839716', '0.92217', '589', '0.714806', 101);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-11-07', '994', '834', '0.669014', '160', '0.839034', '0.815789', '0.870283', '450', '0.676692', 102);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-11-08', '1084', '917', '0.666052', '167', '0.845941', '0.828255', '0.881215', '552', '0.764543', 103);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-11-09', '1146', '1072', '0.726876', '74', '0.935428', '0.929894', '0.946154', '544', '0.653061', 104);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-11-10', '1149', '1044', '0.718016', '105', '0.908616', '0.922535', '0.886105', '540', '0.654545', 105);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-11-11', '1071', '936', '0.679739', '135', '0.87395', '0.878683', '0.868421', '496', '0.681319', 106);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-11-12', '1071', '994', '0.713352', '77', '0.928105', '0.926241', '0.931694', '579', '0.757853', 107);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-11-13', '1052', '952', '0.726236', '100', '0.904943', '0.885978', '0.935484', '485', '0.634817', 108);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-11-14', '958', '865', '0.689979', '93', '0.902923', '0.852941', '0.959821', '524', '0.792738', 109);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-11-15', '1204', '1078', '0.693522', '126', '0.895349', '0.885204', '0.914286', '597', '0.71497', 110);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-11-16', '1219', '1002', '0.654635', '217', '0.821985', '0.814672', '0.834842', '605', '0.758145', 111);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-11-17', '1310', '1138', '0.664885', '172', '0.868702', '0.857862', '0.885437', '550', '0.631458', 112);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-11-18', '982', '870', '0.736253', '112', '0.885947', '0.862004', '0.913907', '565', '0.781466', 113);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-11-19', '932', '807', '0.677039', '125', '0.86588', '0.815385', '0.951009', '415', '0.657686', 114);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-11-20', '989', '891', '0.721941', '98', '0.90091', '0.861352', '0.956311', '445', '0.623249', 115);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-11-21', '960', '853', '0.689583', '107', '0.888542', '0.913858', '0.856808', '402', '0.607251', 116);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-11-22', '981', '894', '0.731906', '87', '0.911315', '0.887352', '0.936842', '533', '0.74234', 117);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-11-23', '1113', '953', '0.69991', '160', '0.856244', '0.877612', '0.823928', '615', '0.789474', 118);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-11-24', '1123', '1046', '0.722173', '77', '0.931434', '0.923191', '0.943946', '573', '0.706535', 119);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-11-25', '1205', '1036', '0.692116', '169', '0.859751', '0.830165', '0.915865', '551', '0.660671', 120);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-11-26', '1220', '1065', '0.688525', '155', '0.872951', '0.838663', '0.917293', '556', '0.661905', 121);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-11-27', '933', '859', '0.703108', '74', '0.920686', '0.878558', '0.975369', '455', '0.693598', 122);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-11-28', '1088', '951', '0.669118', '137', '0.874081', '0.851913', '0.901437', '550', '0.755495', 123);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-11-29', '1009', '857', '0.679881', '152', '0.849356', '0.804388', '0.902597', '525', '0.765306', 124);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-11-30', '983', '907', '0.743642', '76', '0.922686', '0.907273', '0.942263', '485', '0.663475', 125);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-12-01', '1016', '874', '0.687008', '142', '0.860236', '0.827068', '0.896694', '432', '0.618911', 126);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-12-02', '1167', '1025', '0.700943', '142', '0.87832', '0.858257', '0.917085', '569', '0.695599', 127);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-12-03', '1222', '1081', '0.691489', '141', '0.884615', '0.867198', '0.91258', '525', '0.621302', 128);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-12-04', '1075', '951', '0.705116', '124', '0.884651', '0.877483', '0.893843', '500', '0.659631', 129);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-12-05', '1266', '1132', '0.706951', '134', '0.894155', '0.87651', '0.919386', '500', '0.558659', 130);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-12-06', '1025', '793', '0.609756', '232', '0.773659', '0.746858', '0.805556', '391', '0.6256', 131);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-12-07', '565', '497', '0.716814', '68', '0.879646', '0.75625', '0.928395', '269', '0.664198', 132);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-12-08', '635', '501', '0.645669', '134', '0.788976', '0.754464', '0.807786', '308', '0.75122', 133);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-12-09', '636', '543', '0.705975', '93', '0.853774', '0.711765', '0.905579', '351', '0.781737', 134);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-12-10', '502', '393', '0.64741', '109', '0.782869', '0.699029', '0.804511', '233', '0.716923', 135);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-12-11', '574', '475', '0.684669', '99', '0.827526', '0.73301', '0.880435', '265', '0.6743', 136);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-12-12', '611', '500', '0.692308', '111', '0.818331', '0.72093', '0.856492', '297', '0.702128', 137);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-12-13', '656', '572', '0.737805', '84', '0.871951', '0.806604', '0.903153', '356', '0.735537', 138);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-12-14', '659', '518', '0.655539', '141', '0.786039', '0.713311', '0.844262', '319', '0.738426', 139);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-12-15', '668', '544', '0.643713', '124', '0.814371', '0.697778', '0.873589', '300', '0.697674', 140);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-12-16', '523', '446', '0.692161', '77', '0.852772', '0.772277', '0.872038', '231', '0.638122', 141);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-12-17', '648', '524', '0.648148', '124', '0.808642', '0.734545', '0.863271', '317', '0.754762', 142);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-12-18', '727', '620', '0.734525', '107', '0.85282', '0.784452', '0.896396', '323', '0.604869', 143);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-12-19', '594', '532', '0.707071', '62', '0.895623', '0.763636', '0.946387', '279', '0.664286', 144);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-12-20', '719', '565', '0.606398', '154', '0.785814', '0.737903', '0.81104', '272', '0.623853', 145);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-12-21', '757', '593', '0.694848', '164', '0.783355', '0.767773', '0.789377', '397', '0.754753', 146);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-12-22', '704', '552', '0.634943', '152', '0.784091', '0.753906', '0.801339', '311', '0.695749', 147);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-12-23', '592', '462', '0.653716', '130', '0.780405', '0.805556', '0.772321', '274', '0.70801', 148);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-12-24', '628', '478', '0.60828', '150', '0.761146', '0.741935', '0.767442', '253', '0.662304', 149);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-12-25', '611', '483', '0.685761', '128', '0.790507', '0.759259', '0.807595', '303', '0.72315', 150);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-12-26', '676', '512', '0.64645', '164', '0.757396', '0.738397', '0.767654', '316', '0.723112', 151);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-12-27', '628', '477', '0.644904', '151', '0.759554', '0.755245', '0.760825', '313', '0.77284', 152);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-12-28', '596', '440', '0.61745', '156', '0.738255', '0.748691', '0.733333', '262', '0.711957', 153);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-12-29', '765', '597', '0.628758', '168', '0.780392', '0.750916', '0.796748', '356', '0.740125', 154);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-12-30', '636', '500', '0.672956', '136', '0.786164', '0.751825', '0.795591', '335', '0.78271', 155);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2020-12-31', '682', '519', '0.61437', '163', '0.760997', '0.738516', '0.776942', '279', '0.665871', 156);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2021-01-01', '760', '605', '0.619737', '155', '0.796053', '0.818533', '0.784431', '284', '0.602972', 157);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2021-01-02', '656', '515', '0.617378', '141', '0.785061', '0.785714', '0.784722', '320', '0.790123', 158);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2021-01-03', '660', '558', '0.674242', '102', '0.845455', '0.69898', '0.907328', '321', '0.721348', 159);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2021-01-04', '609', '465', '0.612479', '144', '0.763547', '0.745509', '0.785455', '227', '0.608579', 160);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2021-01-05', '798', '676', '0.697995', '122', '0.847118', '0.78744', '0.911458', '409', '0.734291', 161);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2021-01-06', '865', '668', '0.65896', '197', '0.772254', '0.74359', '0.812849', '343', '0.601754', 162);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2021-01-07', '965', '751', '0.59171', '214', '0.778238', '0.749543', '0.815789', '274', '0.47986', 163);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2021-01-08', '787', '602', '0.609911', '185', '0.76493', '0.719608', '0.848375', '306', '0.6375', 164);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2021-01-09', '649', '532', '0.701079', '117', '0.819723', '0.821138', '0.818859', '308', '0.676923', 165);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2021-01-10', '595', '486', '0.668908', '109', '0.816807', '0.786364', '0.834667', '318', '0.798995', 166);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2021-01-11', '776', '656', '0.708763', '120', '0.845361', '0.80618', '0.878571', '383', '0.696364', 167);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2021-01-12', '754', '617', '0.661804', '137', '0.818302', '0.785859', '0.880309', '358', '0.717435', 168);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2021-01-13', '793', '605', '0.604035', '188', '0.762926', '0.771639', '0.744', '288', '0.601253', 169);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2021-01-14', '811', '633', '0.646116', '178', '0.780518', '0.792793', '0.765668', '321', '0.612595', 170);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2021-01-15', '668', '539', '0.648204', '129', '0.806886', '0.869863', '0.757979', '328', '0.757506', 171);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2021-01-16', '600', '488', '0.676667', '112', '0.813333', '0.786047', '0.828571', '257', '0.633005', 172);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2021-01-17', '759', '600', '0.642951', '159', '0.790514', '0.765677', '0.807018', '356', '0.729508', 173);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2021-01-18', '707', '524', '0.609618', '183', '0.74116', '0.734426', '0.746269', '333', '0.772622', 174);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2021-01-19', '948', '715', '0.593882', '233', '0.754219', '0.750923', '0.758621', '412', '0.731794', 175);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2021-01-20', '469', '355', '0.603412', '114', '0.75693', '0.736318', '0.772388', '176', '0.621908', 176);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2021-01-21', '941', '745', '0.636557', '196', '0.791711', '0.757974', '0.835784', '448', '0.747913', 177);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2021-01-22', '618', '527', '0.682848', '91', '0.852751', '0.779817', '0.8925', '287', '0.680095', 178);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2021-01-23', '923', '749', '0.630553', '174', '0.811484', '0.782927', '0.834308', '422', '0.725086', 179);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2021-01-24', '923', '689', '0.607801', '234', '0.746479', '0.710843', '0.775591', '419', '0.746881', 180);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2021-01-25', '748', '625', '0.656417', '123', '0.835561', '0.843882', '0.831703', '385', '0.784114', 181);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2021-01-26', '945', '697', '0.606349', '248', '0.737566', '0.710723', '0.757353', '405', '0.706806', 182);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2021-01-27', '824', '678', '0.675971', '146', '0.822816', '0.835509', '0.811791', '438', '0.786355', 183);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2021-01-28', '592', '456', '0.643581', '136', '0.77027', '0.7875', '0.75', '229', '0.60105', 184);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2021-01-29', '779', '556', '0.594352', '223', '0.713736', '0.723653', '0.701705', '314', '0.678186', 185);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2021-01-30', '934', '673', '0.617773', '261', '0.720557', '0.738636', '0.697044', '384', '0.665511', 186);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES ('2021-01-31', '785', '589', '0.625478', '196', '0.750318', '0.774691', '0.733189', '380', '0.773931', 187);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 188);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 189);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 190);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 191);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 192);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 193);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 194);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 195);
INSERT INTO `mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 196);

-- ----------------------------
-- Table structure for mock_wykj_yunyingbaobiao3_fangkuan
-- ----------------------------
DROP TABLE IF EXISTS `mock_wykj_yunyingbaobiao3_fangkuan`;
CREATE TABLE `mock_wykj_yunyingbaobiao3_fangkuan`  (
  `a0` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a1` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a2` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a3` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a4` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a5` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a6` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 197 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mock_wykj_yunyingbaobiao3_fangkuan
-- ----------------------------
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-07-23', '72', '161200.8', '72', '1', '0', '0', 1);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-07-24', '25', '55972.5', '25', '1', '0', '0', 2);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-07-25', '58', '129856.2', '58', '1', '0', '0', 3);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-07-26', '41', '91794.9', '41', '1', '0', '0', 4);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-07-27', '70', '156723', '70', '1', '0', '0', 5);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-07-28', '56', '125378.4', '36', '0.642857', '20', '0.357143', 6);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-07-29', '68', '152245.2', '50', '0.735294', '18', '0.264706', 7);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-07-30', '83', '185828.7', '59', '0.710843', '24', '0.289157', 8);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-07-31', '96', '214934.4', '66', '0.6875', '30', '0.3125', 9);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-08-01', '41', '91794.9', '26', '0.634146', '15', '0.365854', 10);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-08-02', '45', '100750.5', '20', '0.444444', '25', '0.555556', 11);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-08-03', '67', '150006.3', '38', '0.567164', '29', '0.432836', 12);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-08-04', '59', '132095.1', '42', '0.711864', '17', '0.288136', 13);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-08-05', '96', '214934.4', '64', '0.666667', '32', '0.333333', 14);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-08-06', '65', '145528.5', '36', '0.553846', '29', '0.446154', 15);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-08-07', '720', '1612008', '694', '0.963889', '26', '0.036111', 16);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-08-08', '902', '2019487.8', '887', '0.98337', '15', '0.01663', 17);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-08-09', '803', '1797836.7', '779', '0.970112', '24', '0.029888', 18);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-08-10', '751', '1681413.9', '732', '0.9747', '19', '0.0253', 19);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-08-11', '1090', '2440401', '639', '0.586239', '451', '0.413761', 20);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-08-12', '1254', '2807580.6', '822', '0.655502', '432', '0.344498', 21);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-08-13', '1119', '2505329.1', '601', '0.537087', '518', '0.462913', 22);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-08-14', '1282', '2870269.8', '771', '0.601404', '511', '0.398596', 23);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-08-15', '1077', '2411295.3', '604', '0.560817', '473', '0.439183', 24);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-08-16', '1140', '2552346', '709', '0.62193', '431', '0.37807', 25);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-08-17', '1286', '2879225.4', '892', '0.693624', '394', '0.306376', 26);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-08-18', '1184', '2650857.6', '742', '0.626689', '442', '0.373311', 27);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-08-19', '1158', '2592646.2', '678', '0.585492', '480', '0.414508', 28);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-08-20', '1149', '2572496.1', '730', '0.635335', '419', '0.364665', 29);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-08-21', '1015', '2272483.5', '633', '0.623645', '382', '0.376355', 30);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-08-22', '1290', '2888181', '835', '0.647287', '455', '0.352713', 31);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-08-23', '1068', '2391145.2', '662', '0.61985', '406', '0.38015', 32);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-08-24', '1340', '3000126', '852', '0.635821', '488', '0.364179', 33);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-08-25', '1067', '2388906.3', '626', '0.586692', '441', '0.413308', 34);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-08-26', '1290', '2888181', '857', '0.664341', '433', '0.335659', 35);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-08-27', '1244', '2785191.6', '895', '0.719453', '349', '0.280547', 36);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-08-28', '1229', '2751608.1', '768', '0.624898', '461', '0.375102', 37);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-08-29', '1223', '2738174.7', '765', '0.625511', '458', '0.374489', 38);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-08-30', '1193', '2671007.7', '807', '0.676446', '386', '0.323554', 39);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-08-31', '983', '2200838.7', '600', '0.610376', '383', '0.389624', 40);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-09-01', '1063', '2379950.7', '543', '0.510818', '520', '0.489182', 41);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-09-02', '1276', '2856836.4', '784', '0.61442', '492', '0.38558', 42);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-09-03', '1171', '2621751.9', '792', '0.676345', '379', '0.323655', 43);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-09-04', '1019', '2281439.1', '533', '0.523062', '486', '0.476938', 44);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-09-05', '1192', '2668768.8', '745', '0.625', '447', '0.375', 45);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-09-06', '1097', '2456073.3', '676', '0.616226', '421', '0.383774', 46);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-09-07', '1025', '2294872.5', '546', '0.532683', '479', '0.467317', 47);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-09-08', '960', '2149344', '520', '0.541667', '440', '0.458333', 48);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-09-09', '1167', '2612796.3', '734', '0.628963', '433', '0.371037', 49);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-09-10', '1044', '2337411.6', '702', '0.672414', '342', '0.327586', 50);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-09-11', '1098', '2458312.2', '654', '0.595628', '444', '0.404372', 51);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-09-12', '1192', '2668768.8', '714', '0.598993', '478', '0.401007', 52);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-09-13', '1117', '2500851.3', '720', '0.644584', '397', '0.355416', 53);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-09-14', '891', '1994859.9', '524', '0.588103', '367', '0.411897', 54);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-09-15', '1081', '2420250.9', '669', '0.618871', '412', '0.381129', 55);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-09-16', '1163', '2603840.7', '791', '0.680138', '372', '0.319862', 56);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-09-17', '1144', '2561301.6', '782', '0.683566', '362', '0.316434', 57);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-09-18', '1201', '2688918.9', '763', '0.635304', '438', '0.364696', 58);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-09-19', '1100', '2462790', '629', '0.571818', '471', '0.428182', 59);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-09-20', '1173', '2626229.7', '758', '0.646206', '415', '0.353794', 60);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-09-21', '1235', '2765041.5', '724', '0.586235', '511', '0.413765', 61);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-09-22', '988', '2212033.2', '530', '0.536437', '458', '0.463563', 62);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-09-23', '1167', '2612796.3', '726', '0.622108', '441', '0.377892', 63);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-09-24', '1181', '2644140.9', '704', '0.596105', '477', '0.403895', 64);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-09-25', '1121', '2509806.9', '743', '0.662801', '378', '0.337199', 65);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-09-26', '1060', '2373234', '642', '0.60566', '418', '0.39434', 66);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-09-27', '976', '2185166.4', '523', '0.535861', '453', '0.464139', 67);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-09-28', '1128', '2525479.2', '651', '0.577128', '477', '0.422872', 68);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-09-29', '1103', '2469506.7', '682', '0.618314', '421', '0.381686', 69);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-09-30', '1229', '2751608.1', '765', '0.622457', '464', '0.377543', 70);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-10-01', '1138', '2547868.2', '719', '0.63181', '419', '0.36819', 71);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-10-02', '996', '2229944.4', '635', '0.63755', '361', '0.36245', 72);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-10-03', '1298', '2906092.2', '775', '0.597072', '523', '0.402928', 73);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-10-04', '1030', '2306067', '571', '0.554369', '459', '0.445631', 74);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-10-05', '1168', '2615035.2', '774', '0.662671', '394', '0.337329', 75);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-10-06', '1040', '2328456', '573', '0.550962', '467', '0.449038', 76);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-10-07', '1205', '2697874.5', '789', '0.654772', '416', '0.345228', 77);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-10-08', '1063', '2379950.7', '723', '0.680151', '340', '0.319849', 78);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-10-09', '1070', '2395623', '543', '0.507477', '527', '0.492523', 79);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-10-10', '1003', '2245616.7', '569', '0.567298', '434', '0.432702', 80);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-10-11', '960', '2149344', '596', '0.620833', '364', '0.379167', 81);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-10-12', '1025', '2294872.5', '566', '0.552195', '459', '0.447805', 82);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-10-13', '1022', '2288155.8', '617', '0.603718', '405', '0.396282', 83);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-10-14', '1189', '2662052.1', '773', '0.650126', '416', '0.349874', 84);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-10-15', '1202', '2691157.8', '798', '0.663894', '404', '0.336106', 85);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-10-16', '1105', '2473984.5', '703', '0.636199', '402', '0.363801', 86);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-10-17', '1098', '2458312.2', '634', '0.577413', '464', '0.422587', 87);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-10-18', '1188', '2659813.2', '758', '0.638047', '430', '0.361953', 88);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-10-19', '1168', '2615035.2', '726', '0.621575', '442', '0.378425', 89);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-10-20', '1161', '2599362.9', '756', '0.651163', '405', '0.348837', 90);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-10-21', '1196', '2677724.4', '720', '0.602007', '476', '0.397993', 91);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-10-22', '1107', '2478462.3', '595', '0.537489', '512', '0.462511', 92);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-10-23', '1028', '2301589.2', '615', '0.598249', '413', '0.401751', 93);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-10-24', '1092', '2444878.8', '681', '0.623626', '411', '0.376374', 94);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-10-25', '1038', '2323978.2', '583', '0.561657', '455', '0.438343', 95);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-10-26', '969', '2169494.1', '545', '0.562436', '424', '0.437564', 96);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-10-27', '1003', '2245616.7', '589', '0.587238', '414', '0.412762', 97);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-10-28', '1171', '2621751.9', '654', '0.558497', '517', '0.441503', 98);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-10-29', '1218', '2726980.2', '747', '0.6133', '471', '0.3867', 99);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-10-30', '1079', '2415773.1', '638', '0.591288', '441', '0.408712', 100);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-10-31', '1129', '2527718.1', '705', '0.624446', '424', '0.375554', 101);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-11-01', '994', '2225466.6', '570', '0.573441', '424', '0.426559', 102);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-11-02', '1084', '2426967.6', '722', '0.666052', '362', '0.333948', 103);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-11-03', '1146', '2565779.4', '756', '0.659686', '390', '0.340314', 104);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-11-04', '1149', '2572496.1', '710', '0.617929', '439', '0.382071', 105);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-11-05', '1071', '2397861.9', '577', '0.538749', '494', '0.461251', 106);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-11-06', '1071', '2397861.9', '705', '0.658263', '366', '0.341737', 107);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-11-07', '1052', '2355322.8', '649', '0.61692', '403', '0.38308', 108);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-11-08', '958', '2144866.2', '510', '0.532359', '448', '0.467641', 109);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-11-09', '1204', '2695635.6', '784', '0.651163', '420', '0.348837', 110);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-11-10', '1219', '2729219.1', '777', '0.637408', '442', '0.362592', 111);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-11-11', '1310', '2932959', '795', '0.60687', '515', '0.39313', 112);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-11-12', '982', '2198599.8', '529', '0.538697', '453', '0.461303', 113);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-11-13', '932', '2086654.8', '585', '0.627682', '347', '0.372318', 114);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-11-14', '989', '2214272.1', '577', '0.583418', '412', '0.416582', 115);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-11-15', '960', '2149344', '534', '0.55625', '426', '0.44375', 116);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-11-16', '981', '2196360.9', '506', '0.5158', '475', '0.4842', 117);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-11-17', '1113', '2491895.7', '670', '0.601977', '443', '0.398023', 118);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-11-18', '1123', '2514284.7', '677', '0.60285', '446', '0.39715', 119);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-11-19', '1205', '2697874.5', '789', '0.654772', '416', '0.345228', 120);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-11-20', '1220', '2731458', '688', '0.563934', '532', '0.436066', 121);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-11-21', '933', '2088893.7', '527', '0.564845', '406', '0.435155', 122);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-11-22', '1088', '2435923.2', '601', '0.55239', '487', '0.44761', 123);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-11-23', '1009', '2259050.1', '547', '0.542121', '462', '0.457879', 124);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-11-24', '983', '2200838.7', '550', '0.559512', '433', '0.440488', 125);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-11-25', '1016', '2274722.4', '532', '0.523622', '484', '0.476378', 126);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-11-26', '1167', '2612796.3', '769', '0.658955', '398', '0.341045', 127);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-11-27', '1222', '2735935.8', '753', '0.616203', '469', '0.383797', 128);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-11-28', '1075', '2406817.5', '604', '0.56186', '471', '0.43814', 129);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-11-29', '1266', '2834447.4', '745', '0.588468', '521', '0.411532', 130);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-11-30', '1025', '2294872.5', '557', '0.543415', '468', '0.456585', 131);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-12-01', '565', '1264978.5', '160', '0.283186', '405', '0.716814', 132);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-12-02', '635', '1421701.5', '224', '0.352756', '411', '0.647244', 133);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-12-03', '636', '1423940.4', '170', '0.267296', '466', '0.732704', 134);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-12-04', '502', '1123927.8', '103', '0.205179', '399', '0.794821', 135);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-12-05', '574', '1285128.6', '206', '0.358885', '368', '0.641115', 136);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-12-06', '611', '1367967.9', '172', '0.281506', '439', '0.718494', 137);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-12-07', '656', '1468718.4', '212', '0.323171', '444', '0.676829', 138);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-12-08', '659', '1475435.1', '293', '0.444613', '366', '0.555387', 139);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-12-09', '668', '1495585.2', '225', '0.336826', '443', '0.663174', 140);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-12-10', '523', '1170944.7', '101', '0.193117', '422', '0.806883', 141);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-12-11', '648', '1450807.2', '275', '0.424383', '373', '0.575617', 142);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-12-12', '727', '1627680.3', '283', '0.389271', '444', '0.610729', 143);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-12-13', '594', '1329906.6', '165', '0.277778', '429', '0.722222', 144);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-12-14', '719', '1609769.1', '248', '0.344924', '471', '0.655076', 145);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-12-15', '757', '1694847.3', '211', '0.278732', '546', '0.721268', 146);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-12-16', '704', '1576185.6', '256', '0.363636', '448', '0.636364', 147);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-12-17', '592', '1325428.8', '144', '0.243243', '448', '0.756757', 148);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-12-18', '628', '1406029.2', '155', '0.246815', '473', '0.753185', 149);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-12-19', '611', '1367967.9', '216', '0.353519', '395', '0.646481', 150);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-12-20', '676', '1513496.4', '237', '0.350592', '439', '0.649408', 151);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-12-21', '628', '1406029.2', '143', '0.227707', '485', '0.772293', 152);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-12-22', '596', '1334384.4', '191', '0.32047', '405', '0.67953', 153);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-12-23', '765', '1712758.5', '273', '0.356863', '492', '0.643137', 154);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-12-24', '636', '1423940.4', '137', '0.215409', '499', '0.784591', 155);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-12-25', '682', '1526929.8', '283', '0.414956', '399', '0.585044', 156);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-12-26', '760', '1701564', '259', '0.340789', '501', '0.659211', 157);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-12-27', '656', '1468718.4', '224', '0.341463', '432', '0.658537', 158);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-12-28', '660', '1477674', '196', '0.29697', '464', '0.70303', 159);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-12-29', '609', '1363490.1', '334', '0.54844', '275', '0.45156', 160);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-12-30', '798', '1786642.2', '414', '0.518797', '384', '0.481203', 161);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2020-12-31', '865', '1936648.5', '507', '0.586127', '358', '0.413873', 162);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2021-01-01', '965', '2160538.5', '547', '0.566839', '418', '0.433161', 163);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2021-01-02', '787', '1762014.3', '510', '0.64803', '277', '0.35197', 164);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2021-01-03', '649', '1453046.1', '246', '0.379045', '403', '0.620955', 165);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2021-01-04', '595', '1332145.5', '220', '0.369748', '375', '0.630252', 166);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2021-01-05', '776', '1737386.4', '356', '0.458763', '420', '0.541237', 167);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2021-01-06', '754', '1688130.6', '495', '0.656499', '259', '0.343501', 168);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2021-01-07', '793', '1775447.7', '543', '0.684741', '250', '0.315259', 169);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2021-01-08', '811', '1815747.9', '444', '0.547472', '367', '0.452528', 170);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2021-01-09', '668', '1495585.2', '292', '0.437126', '376', '0.562874', 171);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2021-01-10', '600', '1343340', '215', '0.358333', '385', '0.641667', 172);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2021-01-11', '759', '1699325.1', '303', '0.399209', '456', '0.600791', 173);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2021-01-12', '707', '1582902.3', '305', '0.4314', '402', '0.5686', 174);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2021-01-13', '948', '2122477.2', '542', '0.57173', '406', '0.42827', 175);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2021-01-14', '469', '1050044.1', '201', '0.428571', '268', '0.571429', 176);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2021-01-15', '941', '2106804.9', '533', '0.566419', '408', '0.433581', 177);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2021-01-16', '618', '1383640.2', '218', '0.352751', '400', '0.647249', 178);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2021-01-17', '923', '2066504.7', '410', '0.444204', '513', '0.555796', 179);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2021-01-18', '923', '2066504.7', '415', '0.449621', '508', '0.550379', 180);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2021-01-19', '748', '1674697.2', '237', '0.316845', '511', '0.683155', 181);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2021-01-20', '945', '2115760.5', '401', '0.424339', '544', '0.575661', 182);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2021-01-21', '824', '1844853.6', '383', '0.464806', '441', '0.535194', 183);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2021-01-22', '592', '1325428.8', '320', '0.540541', '272', '0.459459', 184);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2021-01-23', '779', '1744103.1', '427', '0.548139', '352', '0.451861', 185);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2021-01-24', '934', '2091132.6', '528', '0.56531', '406', '0.43469', 186);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2021-01-25', '785', '1757536.5', '324', '0.412739', '461', '0.587261', 187);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2021-01-26', '761', '1703802.9', '298', '0.39159', '463', '0.60841', 188);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2021-01-27', '803', '1797836.7', '391', '0.486924', '412', '0.513076', 189);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2021-01-28', '630', '1410507', '294', '0.466667', '336', '0.533333', 190);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2021-01-29', '784', '1755297.6', '289', '0.368622', '495', '0.631378', 191);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2021-01-30', '553', '1238111.7', '214', '0.38698', '339', '0.61302', 192);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2021-01-31', '762', '1706041.8', '493', '0.646982', '269', '0.353018', 193);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2021-02-01', '647', '1448568.3', '348', '0.537867', '299', '0.462133', 194);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2021-02-02', '707', '1582902.3', '424', '0.599717', '283', '0.400283', 195);
INSERT INTO `mock_wykj_yunyingbaobiao3_fangkuan` VALUES ('2021-02-03', '757', '1694847.3', '456', '0.602378', '301', '0.397622', 196);

-- ----------------------------
-- Table structure for mock_wykj_yunyingbaobiao4
-- ----------------------------
DROP TABLE IF EXISTS `mock_wykj_yunyingbaobiao4`;
CREATE TABLE `mock_wykj_yunyingbaobiao4`  (
  `a0` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a1` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a2` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a3` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a4` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a5` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a6` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `a7` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 197 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mock_wykj_yunyingbaobiao4
-- ----------------------------
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-07-29', '72', '217481.76', '208420.02', '69', '9061.74', '3', '0.958333', 1);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-07-30', '25', '75514.5', '66452.76', '22', '9061.74', '3', '0.88', 2);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-07-31', '58', '175193.64', '151029', '50', '24164.64', '8', '0.862069', 3);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-08-01', '41', '123843.78', '105720.3', '35', '18123.48', '6', '0.853659', 4);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-08-02', '70', '211440.6', '178214.22', '59', '33226.38', '11', '0.842857', 5);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-08-03', '56', '169152.48', '148008.42', '49', '21144.06', '7', '0.875', 6);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-08-04', '68', '205399.44', '172173.06', '57', '33226.38', '11', '0.838235', 7);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-08-05', '83', '250708.14', '217481.76', '72', '33226.38', '11', '0.86747', 8);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-08-06', '96', '289975.68', '268831.62', '89', '21144.06', '7', '0.927083', 9);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-08-07', '41', '123843.78', '111761.46', '37', '12082.32', '4', '0.902439', 10);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-08-08', '45', '135926.1', '117802.62', '39', '18123.48', '6', '0.866667', 11);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-08-09', '67', '202378.86', '181234.8', '60', '21144.06', '7', '0.895522', 12);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-08-10', '59', '178214.22', '144987.84', '48', '33226.38', '11', '0.813559', 13);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-08-11', '96', '289975.68', '262790.46', '87', '27185.22', '9', '0.90625', 14);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-08-12', '65', '196337.7', '157070.16', '52', '39267.54', '13', '0.8', 15);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-08-13', '720', '2174817.6', '1803286.26', '597', '371531.34', '123', '0.829167', 16);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-08-14', '902', '2724563.16', '2485937.34', '823', '238625.82', '79', '0.912417', 17);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-08-15', '803', '2425525.74', '2280537.9', '755', '144987.84', '48', '0.940224', 18);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-08-16', '751', '2268455.58', '1933171.2', '640', '335284.38', '111', '0.852197', 19);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-08-17', '1090', '3292432.2', '3014538.84', '998', '277893.36', '92', '0.915596', 20);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-08-18', '1254', '3787807.32', '3564284.4', '1180', '223522.92', '74', '0.940989', 21);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-08-19', '1119', '3380029.02', '2884653.9', '955', '495375.12', '164', '0.853441', 22);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-08-20', '1282', '3872383.56', '3210876.54', '1063', '661507.02', '219', '0.829173', 23);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-08-21', '1077', '3253164.66', '2794036.5', '925', '459128.16', '152', '0.858867', 24);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-08-22', '1140', '3443461.2', '3068909.28', '1016', '374551.92', '124', '0.891228', 25);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-08-23', '1286', '3884465.88', '3389090.76', '1122', '495375.12', '164', '0.872473', 26);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-08-24', '1184', '3576366.72', '3138382.62', '1039', '437984.1', '145', '0.877534', 27);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-08-25', '1158', '3497831.64', '3144423.78', '1041', '353407.86', '117', '0.898964', 28);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-08-26', '1149', '3470646.42', '2960168.4', '980', '510478.02', '169', '0.852916', 29);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-08-27', '1015', '3065888.7', '2624884.02', '869', '441004.68', '146', '0.856158', 30);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-08-28', '1290', '3896548.2', '3651881.22', '1209', '244666.98', '81', '0.937209', 31);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-08-29', '1068', '3225979.44', '2730604.32', '904', '495375.12', '164', '0.846442', 32);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-08-30', '1340', '4047577.2', '3428358.3', '1135', '619218.9', '205', '0.847015', 33);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-08-31', '1067', '3222958.86', '3017559.42', '999', '205399.44', '68', '0.93627', 34);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-09-01', '1290', '3896548.2', '3558243.24', '1178', '338304.96', '112', '0.913178', 35);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-09-02', '1244', '3757601.52', '3262226.4', '1080', '495375.12', '164', '0.868167', 36);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-09-03', '1229', '3712292.82', '3328679.16', '1102', '383613.66', '127', '0.896664', 37);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-09-04', '1223', '3694169.34', '3201814.8', '1060', '492354.54', '163', '0.866721', 38);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-09-05', '1193', '3603551.94', '3093073.92', '1024', '510478.02', '169', '0.85834', 39);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-09-06', '983', '2969230.14', '2573534.16', '852', '395695.98', '131', '0.866734', 40);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-09-07', '1063', '3210876.54', '2969230.14', '983', '241646.4', '80', '0.924741', 41);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-09-08', '1276', '3854260.08', '3286391.04', '1088', '567869.04', '188', '0.852665', 42);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-09-09', '1171', '3537099.18', '3213897.12', '1064', '323202.06', '107', '0.908625', 43);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-09-10', '1019', '3077971.02', '2911839.12', '964', '166131.9', '55', '0.946026', 44);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-09-11', '1192', '3600531.36', '2957147.82', '979', '643383.54', '213', '0.821309', 45);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-09-12', '1097', '3313576.26', '2836324.62', '939', '477251.64', '158', '0.855971', 46);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-09-13', '1025', '3096094.5', '2766851.28', '916', '329243.22', '109', '0.893659', 47);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-09-14', '960', '2899756.8', '2473855.02', '819', '425901.78', '141', '0.853125', 48);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-09-15', '1167', '3525016.86', '3183691.32', '1054', '341325.54', '113', '0.903171', 49);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-09-16', '1044', '3153485.52', '2727583.74', '903', '425901.78', '141', '0.864943', 50);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-09-17', '1098', '3316596.84', '3114217.98', '1031', '202378.86', '67', '0.93898', 51);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-09-18', '1192', '3600531.36', '3355864.38', '1111', '244666.98', '81', '0.932047', 52);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-09-19', '1117', '3373987.86', '2857468.68', '946', '516519.18', '171', '0.846911', 53);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-09-20', '891', '2691336.78', '2404381.68', '796', '286955.1', '95', '0.893378', 54);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-09-21', '1081', '3265246.98', '2715501.42', '899', '549745.56', '182', '0.831637', 55);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-09-22', '1163', '3512934.54', '3274308.72', '1084', '238625.82', '79', '0.932072', 56);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-09-23', '1144', '3455543.52', '3005477.1', '995', '450066.42', '149', '0.869755', 57);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-09-24', '1201', '3627716.58', '3343782.06', '1107', '283934.52', '94', '0.921732', 58);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-09-25', '1100', '3322638', '2960168.4', '980', '362469.6', '120', '0.890909', 59);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-09-26', '1173', '3543140.34', '3011518.26', '997', '531622.08', '176', '0.849957', 60);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-09-27', '1235', '3730416.3', '3467625.84', '1148', '262790.46', '87', '0.929555', 61);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-09-28', '988', '2984333.04', '2516143.14', '833', '468189.9', '155', '0.843117', 62);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-09-29', '1167', '3525016.86', '2954127.24', '978', '570889.62', '189', '0.838046', 63);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-09-30', '1181', '3567304.98', '3050785.8', '1010', '516519.18', '171', '0.855207', 64);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-10-01', '1121', '3386070.18', '3129320.88', '1036', '256749.3', '85', '0.924175', 65);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-10-02', '1060', '3201814.8', '2724563.16', '902', '477251.64', '158', '0.850943', 66);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-10-03', '976', '2948086.08', '2661130.98', '881', '286955.1', '95', '0.902664', 67);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-10-04', '1128', '3407214.24', '2911839.12', '964', '495375.12', '164', '0.85461', 68);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-10-05', '1103', '3331699.74', '2929962.6', '970', '401737.14', '133', '0.87942', 69);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-10-06', '1229', '3712292.82', '3222958.86', '1067', '489333.96', '162', '0.868186', 70);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-10-07', '1138', '3437420.04', '3011518.26', '997', '425901.78', '141', '0.876098', 71);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-10-08', '996', '3008497.68', '2745707.22', '909', '262790.46', '87', '0.912651', 72);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-10-09', '1298', '3920712.84', '3473667', '1150', '447045.84', '148', '0.885978', 73);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-10-10', '1030', '3111197.4', '2791015.92', '924', '320181.48', '106', '0.897087', 74);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-10-11', '1168', '3528037.44', '3074950.44', '1018', '453087', '150', '0.871575', 75);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-10-12', '1040', '3141403.2', '2670192.72', '884', '471210.48', '156', '0.85', 76);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-10-13', '1205', '3639798.9', '3111197.4', '1030', '528601.5', '175', '0.854772', 77);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-10-14', '1063', '3210876.54', '2936003.76', '972', '274872.78', '91', '0.914393', 78);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-10-15', '1070', '3232020.6', '2848406.94', '943', '383613.66', '127', '0.881308', 79);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-10-16', '1003', '3029641.74', '2751748.38', '911', '277893.36', '92', '0.908275', 80);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-10-17', '960', '2899756.8', '2479896.18', '821', '419860.62', '139', '0.855208', 81);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-10-18', '1025', '3096094.5', '2670192.72', '884', '425901.78', '141', '0.862439', 82);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-10-19', '1022', '3087032.76', '2812159.98', '931', '274872.78', '91', '0.910959', 83);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-10-20', '1189', '3591469.62', '3304514.52', '1094', '286955.1', '95', '0.920101', 84);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-10-21', '1202', '3630737.16', '3370967.28', '1116', '259769.88', '86', '0.928453', 85);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-10-22', '1105', '3337740.9', '2905797.96', '962', '431942.94', '143', '0.870588', 86);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-10-23', '1098', '3316596.84', '2920900.86', '967', '395695.98', '131', '0.880692', 87);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-10-24', '1188', '3588449.04', '3232020.6', '1070', '356428.44', '118', '0.900673', 88);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-10-25', '1168', '3528037.44', '3147444.36', '1042', '380593.08', '126', '0.892123', 89);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-10-26', '1161', '3506893.38', '3096094.5', '1025', '410798.88', '136', '0.88286', 90);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-10-27', '1196', '3612613.68', '3352843.8', '1110', '259769.88', '86', '0.928094', 91);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-10-28', '1107', '3343782.06', '2887674.48', '956', '456107.58', '151', '0.863595', 92);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-10-29', '1028', '3105156.24', '2655089.82', '879', '450066.42', '149', '0.855058', 93);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-10-30', '1092', '3298473.36', '2866530.42', '949', '431942.94', '143', '0.869048', 94);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-10-31', '1038', '3135362.04', '2649048.66', '877', '486313.38', '161', '0.844894', 95);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-11-01', '969', '2926942.02', '2425525.74', '803', '501416.28', '166', '0.828689', 96);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-11-02', '1003', '3029641.74', '2501040.24', '828', '528601.5', '175', '0.825523', 97);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-11-03', '1171', '3537099.18', '3023600.58', '1001', '513498.6', '170', '0.854825', 98);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-11-04', '1218', '3679066.44', '3232020.6', '1070', '447045.84', '148', '0.878489', 99);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-11-05', '1079', '3259205.82', '2748727.8', '910', '510478.02', '169', '0.843373', 100);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-11-06', '1129', '3410234.82', '2969230.14', '983', '441004.68', '146', '0.870682', 101);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-11-07', '994', '3002456.52', '2519163.72', '834', '483292.8', '160', '0.839034', 102);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-11-08', '1084', '3274308.72', '2769871.86', '917', '504436.86', '167', '0.845941', 103);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-11-09', '1146', '3461584.68', '3238061.76', '1072', '223522.92', '74', '0.935428', 104);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-11-10', '1149', '3470646.42', '3153485.52', '1044', '317160.9', '105', '0.908616', 105);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-11-11', '1071', '3235041.18', '2827262.88', '936', '407778.3', '135', '0.87395', 106);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-11-12', '1071', '3235041.18', '3002456.52', '994', '232584.66', '77', '0.928105', 107);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-11-13', '1052', '3177650.16', '2875592.16', '952', '302058', '100', '0.904943', 108);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-11-14', '958', '2893715.64', '2612801.7', '865', '280913.94', '93', '0.902923', 109);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-11-15', '1204', '3636778.32', '3256185.24', '1078', '380593.08', '126', '0.895349', 110);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-11-16', '1219', '3682087.02', '3026621.16', '1002', '655465.86', '217', '0.821985', 111);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-11-17', '1310', '3956959.8', '3437420.04', '1138', '519539.76', '172', '0.868702', 112);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-11-18', '982', '2966209.56', '2627904.6', '870', '338304.96', '112', '0.885947', 113);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-11-19', '932', '2815180.56', '2437608.06', '807', '377572.5', '125', '0.86588', 114);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-11-20', '989', '2987353.62', '2691336.78', '891', '296016.84', '98', '0.90091', 115);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-11-21', '960', '2899756.8', '2576554.74', '853', '323202.06', '107', '0.888542', 116);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-11-22', '981', '2963188.98', '2700398.52', '894', '262790.46', '87', '0.911315', 117);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-11-23', '1113', '3361905.54', '2878612.74', '953', '483292.8', '160', '0.856244', 118);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-11-24', '1123', '3392111.34', '3159526.68', '1046', '232584.66', '77', '0.931434', 119);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-11-25', '1205', '3639798.9', '3129320.88', '1036', '510478.02', '169', '0.859751', 120);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-11-26', '1220', '3685107.6', '3216917.7', '1065', '468189.9', '155', '0.872951', 121);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-11-27', '933', '2818201.14', '2594678.22', '859', '223522.92', '74', '0.920686', 122);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-11-28', '1088', '3286391.04', '2872571.58', '951', '413819.46', '137', '0.874081', 123);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-11-29', '1009', '3047765.22', '2588637.06', '857', '459128.16', '152', '0.849356', 124);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-11-30', '983', '2969230.14', '2739666.06', '907', '229564.08', '76', '0.922686', 125);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-12-01', '1016', '3068909.28', '2639986.92', '874', '428922.36', '142', '0.860236', 126);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-12-02', '1167', '3525016.86', '3096094.5', '1025', '428922.36', '142', '0.87832', 127);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-12-03', '1222', '3691148.76', '3265246.98', '1081', '425901.78', '141', '0.884615', 128);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-12-04', '1075', '3247123.5', '2872571.58', '951', '374551.92', '124', '0.884651', 129);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-12-05', '1266', '3824054.28', '3419296.56', '1132', '404757.72', '134', '0.894155', 130);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-12-06', '1025', '3096094.5', '2395319.94', '793', '700774.56', '232', '0.773659', 131);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-12-07', '565', '1706627.7', '1501228.26', '497', '205399.44', '68', '0.879646', 132);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-12-08', '635', '1918068.3', '1513310.58', '501', '404757.72', '134', '0.788976', 133);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-12-09', '636', '1921088.88', '1640174.94', '543', '280913.94', '93', '0.853774', 134);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-12-10', '502', '1516331.16', '1187087.94', '393', '329243.22', '109', '0.782869', 135);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-12-11', '574', '1733812.92', '1434775.5', '475', '299037.42', '99', '0.827526', 136);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-12-12', '611', '1845574.38', '1510290', '500', '335284.38', '111', '0.818331', 137);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-12-13', '656', '1981500.48', '1727771.76', '572', '253728.72', '84', '0.871951', 138);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-12-14', '659', '1990562.22', '1564660.44', '518', '425901.78', '141', '0.786039', 139);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-12-15', '668', '2017747.44', '1643195.52', '544', '374551.92', '124', '0.814371', 140);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-12-16', '523', '1579763.34', '1347178.68', '446', '232584.66', '77', '0.852772', 141);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-12-17', '648', '1957335.84', '1582783.92', '524', '374551.92', '124', '0.808642', 142);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-12-18', '727', '2195961.66', '1872759.6', '620', '323202.06', '107', '0.85282', 143);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-12-19', '594', '1794224.52', '1606948.56', '532', '187275.96', '62', '0.895623', 144);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-12-20', '719', '2171797.02', '1706627.7', '565', '465169.32', '154', '0.785814', 145);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-12-21', '757', '2286579.06', '1791203.94', '593', '495375.12', '164', '0.783355', 146);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-12-22', '704', '2126488.32', '1667360.16', '552', '459128.16', '152', '0.784091', 147);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-12-23', '592', '1788183.36', '1395507.96', '462', '392675.4', '130', '0.780405', 148);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-12-24', '628', '1896924.24', '1443837.24', '478', '453087', '150', '0.761146', 149);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-12-25', '611', '1845574.38', '1458940.14', '483', '386634.24', '128', '0.790507', 150);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-12-26', '676', '2041912.08', '1546536.96', '512', '495375.12', '164', '0.757396', 151);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-12-27', '628', '1896924.24', '1440816.66', '477', '456107.58', '151', '0.759554', 152);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-12-28', '596', '1800265.68', '1329055.2', '440', '471210.48', '156', '0.738255', 153);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-12-29', '765', '2310743.7', '1803286.26', '597', '507457.44', '168', '0.780392', 154);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-12-30', '636', '1921088.88', '1510290', '500', '410798.88', '136', '0.786164', 155);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2020-12-31', '682', '2060035.56', '1567681.02', '519', '492354.54', '163', '0.760997', 156);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2021-01-01', '760', '2295640.8', '1827450.9', '605', '468189.9', '155', '0.796053', 157);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2021-01-02', '656', '1981500.48', '1555598.7', '515', '425901.78', '141', '0.785061', 158);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2021-01-03', '660', '1993582.8', '1685483.64', '558', '308099.16', '102', '0.845455', 159);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2021-01-04', '609', '1839533.22', '1404569.7', '465', '434963.52', '144', '0.763547', 160);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2021-01-05', '798', '2410422.84', '2041912.08', '676', '368510.76', '122', '0.847118', 161);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2021-01-06', '865', '2612801.7', '2017747.44', '668', '595054.26', '197', '0.772254', 162);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2021-01-07', '965', '2914859.7', '2268455.58', '751', '646404.12', '214', '0.778238', 163);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2021-01-08', '787', '2377196.46', '1818389.16', '602', '558807.3', '185', '0.76493', 164);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2021-01-09', '649', '1960356.42', '1591845.66', '527', '368510.76', '122', '0.812018', 165);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2021-01-10', '595', '1797245.1', '1468001.88', '486', '329243.22', '109', '0.816807', 166);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2021-01-11', '776', '2343970.08', '1981500.48', '656', '362469.6', '120', '0.845361', 167);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2021-01-12', '754', '2277517.32', '1863697.86', '617', '413819.46', '137', '0.818302', 168);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2021-01-13', '793', '2395319.94', '1827450.9', '605', '567869.04', '188', '0.762926', 169);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2021-01-14', '811', '2449690.38', '1912027.14', '633', '537663.24', '178', '0.780518', 170);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2021-01-15', '668', '2017747.44', '1628092.62', '539', '389654.82', '129', '0.806886', 171);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2021-01-16', '600', '1812348', '1464981.3', '485', '347366.7', '115', '0.808333', 172);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2021-01-17', '759', '2292620.22', '1812348', '600', '480272.22', '159', '0.790514', 173);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2021-01-18', '707', '2135550.06', '1552578.12', '514', '582971.94', '193', '0.727016', 174);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2021-01-19', '948', '2863509.84', '2159714.7', '715', '703795.14', '233', '0.754219', 175);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2021-01-20', '469', '1416652.02', '1023976.62', '339', '392675.4', '130', '0.722814', 176);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2021-01-21', '941', '2842365.78', '2250332.1', '745', '592033.68', '196', '0.791711', 177);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2021-01-22', '618', '1866718.44', '1591845.66', '527', '274872.78', '91', '0.852751', 178);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2021-01-23', '923', '2787995.34', '2050973.82', '679', '737021.52', '244', '0.735645', 179);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES ('2021-01-24', '923', '2787995.34', '1694545.38', '561', '1093449.96', '362', '0.607801', 180);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 181);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 182);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 183);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 184);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 185);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 186);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 187);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 188);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 189);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 190);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 191);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 192);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 193);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 194);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 195);
INSERT INTO `mock_wykj_yunyingbaobiao4` VALUES (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 196);

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `blob_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.ruoyi.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720028636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000176FEA27B7078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.ruoyi.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720028636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000176FEA27B7078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.ruoyi.project.monitor.job.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720028636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E6A6F622E646F6D61696E2E4A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000176FEA27B7078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'localhost1615532346081', 1615704000334, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `int_prop_1` int(11) NULL DEFAULT NULL,
  `int_prop_2` int(11) NULL DEFAULT NULL,
  `long_prop_1` bigint(20) NULL DEFAULT NULL,
  `long_prop_2` bigint(20) NULL DEFAULT NULL,
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL,
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL,
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `next_fire_time` bigint(13) NULL DEFAULT NULL,
  `prev_fire_time` bigint(13) NULL DEFAULT NULL,
  `priority` int(11) NULL DEFAULT NULL,
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) NULL DEFAULT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `misfire_instr` smallint(2) NULL DEFAULT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1615532350000, -1, 5, 'PAUSED', 'CRON', 1615532346000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1615532355000, -1, 5, 'PAUSED', 'CRON', 1615532346000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1615532360000, -1, 5, 'PAUSED', 'CRON', 1615532346000, 0, NULL, 2, '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2021-01-14 10:03:50', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2021-01-14 10:03:50', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2021-01-14 10:03:50', '', NULL, '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` VALUES (4, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2021-01-14 10:03:50', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '用户管理-密码字符范围', 'sys.account.chrtype', '0', 'Y', 'admin', '2021-01-14 10:03:50', '', NULL, '默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）');
INSERT INTO `sys_config` VALUES (6, '用户管理-初始密码修改策略', 'sys.account.initPasswordModify', '0', 'Y', 'admin', '2021-01-14 10:03:50', '', NULL, '0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (7, '用户管理-账号密码更新周期', 'sys.account.passwordValidateDays', '0', 'Y', 'admin', '2021-01-14 10:03:50', '', NULL, '密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (8, '主框架页-菜单导航显示风格', 'sys.index.menuStyle', 'default', 'Y', 'admin', '2021-01-14 10:03:50', '', NULL, '菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）');
INSERT INTO `sys_config` VALUES (9, '主框架页-是否开启页脚', 'sys.index.ignoreFooter', 'true', 'Y', 'admin', '2021-01-14 10:03:50', '', NULL, '是否开启底部页脚显示（true显示，false隐藏）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 202 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-01-14 10:03:50', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-01-14 10:03:50', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-01-14 10:03:50', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-01-14 10:03:50', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-01-14 10:03:50', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-01-14 10:03:50', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-01-14 10:03:50', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-01-14 10:03:50', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-01-14 10:03:50', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-01-14 10:03:50', '', NULL);
INSERT INTO `sys_dept` VALUES (200, 100, '0,100', '运营部门', 1, NULL, NULL, NULL, '0', '2', 'admin', '2021-01-14 19:56:35', '', NULL);
INSERT INTO `sys_dept` VALUES (201, 101, '0,100,101', '运营部门', 1, NULL, NULL, NULL, '0', '0', 'admin', '2021-01-14 19:57:12', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2021-01-14 10:03:50', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
INSERT INTO `sys_job_log` VALUES (1, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：1毫秒', '0', '', '2021-01-29 15:10:15');
INSERT INTO `sys_job_log` VALUES (2, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-01-29 15:23:46');
INSERT INTO `sys_job_log` VALUES (3, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '系统默认（有参） 总共耗时：0毫秒', '0', '', '2021-01-29 15:23:50');
INSERT INTO `sys_job_log` VALUES (4, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：2毫秒', '0', '', '2021-01-29 16:11:29');

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 245 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-14 10:05:04');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-14 10:09:25');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-14 13:46:20');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-14 17:33:04');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-14 17:34:47');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-14 18:19:37');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-14 18:20:21');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-14 18:25:44');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-14 18:31:57');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-14 18:34:58');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-14 18:37:39');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-14 19:11:25');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-14 19:20:17');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-14 19:21:52');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-14 19:26:35');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-01-14 19:41:18');
INSERT INTO `sys_logininfor` VALUES (116, 'shujufenxi', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-14 19:41:24');
INSERT INTO `sys_logininfor` VALUES (117, 'shujufenxi', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-01-14 19:41:59');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-14 19:42:04');
INSERT INTO `sys_logininfor` VALUES (119, 'shujufenxi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-14 19:45:06');
INSERT INTO `sys_logininfor` VALUES (120, 'shujufenxi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-01-14 20:23:58');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-14 20:30:33');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-01-14 20:31:17');
INSERT INTO `sys_logininfor` VALUES (123, 'shujufenxi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-14 20:31:27');
INSERT INTO `sys_logininfor` VALUES (124, 'shujufenxi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-01-14 21:06:32');
INSERT INTO `sys_logininfor` VALUES (125, 'shujufenxi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-14 21:07:32');
INSERT INTO `sys_logininfor` VALUES (126, 'shujufenxi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-01-14 21:12:33');
INSERT INTO `sys_logininfor` VALUES (127, 'shujufenxi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-14 21:12:39');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '192.168.0.158', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-15 11:44:08');
INSERT INTO `sys_logininfor` VALUES (129, 'shujufenxi', '192.168.0.158', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-15 11:44:26');
INSERT INTO `sys_logininfor` VALUES (130, 'shujufenxi', '192.168.0.158', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-01-15 11:46:42');
INSERT INTO `sys_logininfor` VALUES (131, 'shujufenxi', '192.168.0.158', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-15 11:47:21');
INSERT INTO `sys_logininfor` VALUES (132, 'shujufenxi', '192.168.0.192', '内网IP', 'Chrome 65', 'Windows 10', '0', '登录成功', '2021-01-15 11:47:52');
INSERT INTO `sys_logininfor` VALUES (133, 'shujufenxi', '192.168.0.184', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-15 11:52:32');
INSERT INTO `sys_logininfor` VALUES (134, 'shujufenxi', '192.168.0.158', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-15 13:41:06');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-01-15 17:42:04');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-01-15 17:42:17');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误2次', '2021-01-15 17:42:25');
INSERT INTO `sys_logininfor` VALUES (138, 'admin1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-01-15 17:44:00');
INSERT INTO `sys_logininfor` VALUES (139, 'admin1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误2次', '2021-01-15 17:44:12');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-15 17:44:31');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-01-15 17:44:35');
INSERT INTO `sys_logininfor` VALUES (142, 'admin1', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '密码输入错误3次', '2021-01-15 17:44:46');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-15 17:44:58');
INSERT INTO `sys_logininfor` VALUES (144, 'shujufenxi', '183.15.176.211', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-15 18:01:22');
INSERT INTO `sys_logininfor` VALUES (145, 'shujufenxi', '183.15.176.211', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-15 18:02:48');
INSERT INTO `sys_logininfor` VALUES (146, 'shujufenxi', '183.15.176.211', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-15 18:15:46');
INSERT INTO `sys_logininfor` VALUES (147, 'shujufenxi', '113.89.34.246', 'XX XX', 'Chrome 65', 'Windows 10', '0', '登录成功', '2021-01-18 13:51:40');
INSERT INTO `sys_logininfor` VALUES (148, 'shujufenxi', '113.89.33.83', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-19 12:04:56');
INSERT INTO `sys_logininfor` VALUES (149, 'shujufenxi', '113.89.33.83', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-20 16:29:44');
INSERT INTO `sys_logininfor` VALUES (150, 'shujufenxi', '113.89.33.83', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-20 16:48:00');
INSERT INTO `sys_logininfor` VALUES (151, 'shujufenxi', '113.89.33.83', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-20 16:48:27');
INSERT INTO `sys_logininfor` VALUES (152, 'shujufenxi', '61.141.65.25', 'XX XX', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-01-21 15:16:26');
INSERT INTO `sys_logininfor` VALUES (153, 'shujufenxi', '61.141.65.25', 'XX XX', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-01-21 15:16:29');
INSERT INTO `sys_logininfor` VALUES (154, 'shujufenxi', '61.141.65.25', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-21 15:16:31');
INSERT INTO `sys_logininfor` VALUES (155, 'shujufenxi', '61.141.65.25', 'XX XX', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-01-21 15:21:36');
INSERT INTO `sys_logininfor` VALUES (156, 'shujufenxi', '61.141.65.25', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-21 15:21:40');
INSERT INTO `sys_logininfor` VALUES (157, 'shujufenxi', '61.141.65.25', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-21 15:29:05');
INSERT INTO `sys_logininfor` VALUES (158, 'shujufenxi', '154.209.86.53', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-21 15:30:37');
INSERT INTO `sys_logininfor` VALUES (159, 'shujufenxi', '154.209.86.53', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-21 15:32:46');
INSERT INTO `sys_logininfor` VALUES (160, 'sujufenxi', '60.177.18.172', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '用户不存在/密码错误', '2021-01-21 16:19:30');
INSERT INTO `sys_logininfor` VALUES (161, 'sujufenxi', '60.177.18.172', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '用户不存在/密码错误', '2021-01-21 16:19:38');
INSERT INTO `sys_logininfor` VALUES (162, 'shujufenxi', '60.177.18.172', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '1', '验证码错误', '2021-01-21 16:20:04');
INSERT INTO `sys_logininfor` VALUES (163, 'shujufenxi', '60.177.18.172', 'XX XX', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', '2021-01-21 16:20:12');
INSERT INTO `sys_logininfor` VALUES (164, 'shujufenxi', '116.24.67.22', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-24 09:49:40');
INSERT INTO `sys_logininfor` VALUES (165, 'shujufenxi', '116.24.67.22', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-24 09:51:16');
INSERT INTO `sys_logininfor` VALUES (166, 'shujufenxi', '154.209.86.53', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-24 14:42:33');
INSERT INTO `sys_logininfor` VALUES (167, 'shujufenxi', '154.209.86.53', 'XX XX', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-01-25 12:26:56');
INSERT INTO `sys_logininfor` VALUES (168, 'shujufenxi', '154.209.86.53', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-25 12:26:58');
INSERT INTO `sys_logininfor` VALUES (169, 'shujufenxi', '116.24.65.19', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-25 14:52:51');
INSERT INTO `sys_logininfor` VALUES (170, 'shujufenxi', '154.209.86.53', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-25 17:04:24');
INSERT INTO `sys_logininfor` VALUES (171, 'shujufenxi', '116.24.65.19', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-26 10:25:57');
INSERT INTO `sys_logininfor` VALUES (172, 'shujufenxi', '112.17.237.126', 'XX XX', 'Chrome 63', 'Windows 10', '0', '登录成功', '2021-01-26 17:12:37');
INSERT INTO `sys_logininfor` VALUES (173, 'shujufenxi', '60.180.63.166', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-26 17:16:31');
INSERT INTO `sys_logininfor` VALUES (174, 'shujufenxi', '154.209.86.53', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-26 17:55:54');
INSERT INTO `sys_logininfor` VALUES (175, 'shujufenxi', '154.209.86.53', 'XX XX', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-01-26 17:56:10');
INSERT INTO `sys_logininfor` VALUES (176, 'shujufenxi', '154.209.86.53', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-27 15:49:00');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-27 16:55:38');
INSERT INTO `sys_logininfor` VALUES (178, 'shujufenxi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-27 16:56:26');
INSERT INTO `sys_logininfor` VALUES (179, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-27 16:58:43');
INSERT INTO `sys_logininfor` VALUES (180, 'shujufenxi', '154.209.86.53', 'XX XX', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-01-28 10:54:27');
INSERT INTO `sys_logininfor` VALUES (181, 'shujufenxi', '154.209.86.53', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-28 10:54:33');
INSERT INTO `sys_logininfor` VALUES (182, 'shujufenxi', '154.209.86.53', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-28 19:08:39');
INSERT INTO `sys_logininfor` VALUES (183, 'shujufenxi', '154.209.86.53', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-28 19:15:01');
INSERT INTO `sys_logininfor` VALUES (184, 'shujufenxi', '183.15.177.52', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-29 09:33:28');
INSERT INTO `sys_logininfor` VALUES (185, 'shujufenxi', '154.209.86.53', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-29 11:29:58');
INSERT INTO `sys_logininfor` VALUES (186, 'shujufenxi', '154.209.86.53', 'XX XX', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-01-29 11:30:34');
INSERT INTO `sys_logininfor` VALUES (187, 'shujufenxi', '154.209.86.53', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-29 11:31:57');
INSERT INTO `sys_logininfor` VALUES (188, 'shujufenxi', '154.209.86.53', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-29 13:34:48');
INSERT INTO `sys_logininfor` VALUES (189, 'shujufenxi', '154.209.86.53', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-29 14:46:36');
INSERT INTO `sys_logininfor` VALUES (190, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-29 14:49:25');
INSERT INTO `sys_logininfor` VALUES (191, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-01-29 14:49:29');
INSERT INTO `sys_logininfor` VALUES (192, 'shujufenxi', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-29 14:49:38');
INSERT INTO `sys_logininfor` VALUES (193, 'shujufenxi', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-29 15:13:35');
INSERT INTO `sys_logininfor` VALUES (194, 'shujufenxi', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-29 15:23:59');
INSERT INTO `sys_logininfor` VALUES (195, 'shujufenxi', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '退出成功', '2021-01-29 15:31:37');
INSERT INTO `sys_logininfor` VALUES (196, 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '密码输入错误1次', '2021-01-29 15:31:44');
INSERT INTO `sys_logininfor` VALUES (197, 'admin1', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', '2021-01-29 15:31:50');
INSERT INTO `sys_logininfor` VALUES (198, 'shujufenxi', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-01-29 15:32:06');
INSERT INTO `sys_logininfor` VALUES (199, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-29 15:32:10');
INSERT INTO `sys_logininfor` VALUES (200, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-01-29 15:35:49');
INSERT INTO `sys_logininfor` VALUES (201, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-29 15:35:55');
INSERT INTO `sys_logininfor` VALUES (202, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-01-29 15:36:11');
INSERT INTO `sys_logininfor` VALUES (203, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-29 15:36:19');
INSERT INTO `sys_logininfor` VALUES (204, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-01-29 15:36:29');
INSERT INTO `sys_logininfor` VALUES (205, 'shujufenxi', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-29 15:36:33');
INSERT INTO `sys_logininfor` VALUES (206, 'shujufenxi', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-01-29 15:43:44');
INSERT INTO `sys_logininfor` VALUES (207, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-29 15:43:49');
INSERT INTO `sys_logininfor` VALUES (208, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-01-29 15:46:22');
INSERT INTO `sys_logininfor` VALUES (209, 'shujufenxi', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-29 15:46:29');
INSERT INTO `sys_logininfor` VALUES (210, 'shujufenxi', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-01-29 15:48:47');
INSERT INTO `sys_logininfor` VALUES (211, 'shujufenxi', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-29 15:51:02');
INSERT INTO `sys_logininfor` VALUES (212, 'shujufenxi', '154.209.86.53', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-29 15:54:17');
INSERT INTO `sys_logininfor` VALUES (213, 'shujufenxi', '154.209.86.53', 'XX XX', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-01-29 15:54:31');
INSERT INTO `sys_logininfor` VALUES (214, 'admin', '154.209.86.53', 'XX XX', 'Chrome 8', 'Windows 10', '1', '密码输入错误1次', '2021-01-29 15:54:46');
INSERT INTO `sys_logininfor` VALUES (215, 'shujufenxi', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-01-29 15:54:59');
INSERT INTO `sys_logininfor` VALUES (216, 'admin', '154.209.86.53', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-29 15:55:20');
INSERT INTO `sys_logininfor` VALUES (217, 'admin', '154.209.86.53', 'XX XX', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-01-29 15:58:05');
INSERT INTO `sys_logininfor` VALUES (218, 'shujufenxi', '183.15.177.52', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-29 15:58:38');
INSERT INTO `sys_logininfor` VALUES (219, 'admin', '154.209.86.53', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-29 15:59:28');
INSERT INTO `sys_logininfor` VALUES (220, 'shujufenxi', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-29 16:01:43');
INSERT INTO `sys_logininfor` VALUES (221, 'shujufenxi', '183.15.177.52', 'XX XX', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-01-29 16:06:08');
INSERT INTO `sys_logininfor` VALUES (222, 'shujufenxi', '183.15.177.52', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-29 16:06:11');
INSERT INTO `sys_logininfor` VALUES (223, 'shujufenxi', '183.15.177.52', 'XX XX', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-01-29 16:11:12');
INSERT INTO `sys_logininfor` VALUES (224, 'shujufenxi', '154.209.86.53', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-29 16:12:47');
INSERT INTO `sys_logininfor` VALUES (225, 'shujufenxi', '154.209.86.53', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-29 18:07:53');
INSERT INTO `sys_logininfor` VALUES (226, 'shujufenxi', '154.209.86.53', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-29 19:04:50');
INSERT INTO `sys_logininfor` VALUES (227, 'shujufenxi', '154.209.86.53', 'XX XX', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-01-29 19:05:11');
INSERT INTO `sys_logininfor` VALUES (228, 'shujufenxi', '183.15.177.52', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-29 19:05:18');
INSERT INTO `sys_logininfor` VALUES (229, 'shujufenxi', '113.108.56.202', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-30 13:30:04');
INSERT INTO `sys_logininfor` VALUES (230, 'shujufenxi', '113.108.56.202', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-30 13:37:20');
INSERT INTO `sys_logininfor` VALUES (231, 'shujufenxi', '113.108.56.202', 'XX XX', 'Chrome', 'Windows 10', '0', '退出成功', '2021-01-30 13:37:41');
INSERT INTO `sys_logininfor` VALUES (232, 'admin', '113.108.56.202', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-30 13:37:52');
INSERT INTO `sys_logininfor` VALUES (233, 'admin', '113.108.56.202', 'XX XX', 'Chrome', 'Windows 10', '0', '退出成功', '2021-01-30 13:40:43');
INSERT INTO `sys_logininfor` VALUES (234, 'shujufenxi', '113.108.56.202', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-30 13:40:51');
INSERT INTO `sys_logininfor` VALUES (235, 'shujufenxi', '113.108.56.202', 'XX XX', 'Chrome', 'Windows 10', '0', '登录成功', '2021-01-30 13:43:26');
INSERT INTO `sys_logininfor` VALUES (236, 'shujufenxi', '36.157.22.175', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-31 15:04:18');
INSERT INTO `sys_logininfor` VALUES (237, 'shujufenxi', '36.157.22.175', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-02-01 08:50:21');
INSERT INTO `sys_logininfor` VALUES (238, 'shujufenxi', '154.209.86.53', 'XX XX', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-02-03 23:08:13');
INSERT INTO `sys_logininfor` VALUES (239, 'shujufenxi', '154.209.86.53', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-02-03 23:08:18');
INSERT INTO `sys_logininfor` VALUES (240, 'shujufenxi', '154.209.86.53', 'XX XX', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-02-03 23:09:24');
INSERT INTO `sys_logininfor` VALUES (241, 'shujufenxi', '154.209.86.53', 'XX XX', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-02-07 11:30:21');
INSERT INTO `sys_logininfor` VALUES (242, 'shujufenxi', '223.104.63.195', 'XX XX', 'Chrome Mobile', 'Android 1.x', '1', '验证码错误', '2021-03-12 15:01:16');
INSERT INTO `sys_logininfor` VALUES (243, 'shujufenxi', '223.104.63.195', 'XX XX', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2021-03-12 15:01:22');
INSERT INTO `sys_logininfor` VALUES (244, 'shujufenxi', '154.209.88.47', 'XX XX', 'Chrome 8', 'Linux', '0', '登录成功', '2021-03-12 22:51:32');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `is_refresh` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '1' COMMENT '是否刷新（0刷新 1不刷新）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2059 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, '#', '', 'M', '0', '1', '', 'fa fa-gear', 'admin', '2021-01-14 10:03:50', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, '#', '', 'M', '0', '1', '', 'fa fa-video-camera', 'admin', '2021-01-14 10:03:50', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, '#', '', 'M', '0', '1', '', 'fa fa-bars', 'admin', '2021-01-14 10:03:50', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 4, 'http://ruoyi.vip', 'menuBlank', 'C', '0', '1', '', 'fa fa-location-arrow', 'admin', '2021-01-14 10:03:50', '', NULL, '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, '/system/user', '', 'C', '0', '1', 'system:user:view', 'fa fa-user-o', 'admin', '2021-01-14 10:03:50', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, '/system/role', '', 'C', '0', '1', 'system:role:view', 'fa fa-user-secret', 'admin', '2021-01-14 10:03:50', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, '/system/menu', '', 'C', '0', '1', 'system:menu:view', 'fa fa-th-list', 'admin', '2021-01-14 10:03:50', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, '/system/dept', '', 'C', '0', '1', 'system:dept:view', 'fa fa-outdent', 'admin', '2021-01-14 10:03:50', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, '/system/post', '', 'C', '0', '1', 'system:post:view', 'fa fa-address-card-o', 'admin', '2021-01-14 10:03:50', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, '/system/dict', '', 'C', '0', '1', 'system:dict:view', 'fa fa-bookmark-o', 'admin', '2021-01-14 10:03:50', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, '/system/config', '', 'C', '0', '1', 'system:config:view', 'fa fa-sun-o', 'admin', '2021-01-14 10:03:50', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, '/system/notice', '', 'C', '0', '1', 'system:notice:view', 'fa fa-bullhorn', 'admin', '2021-01-14 10:03:50', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, '#', '', 'M', '0', '1', '', 'fa fa-pencil-square-o', 'admin', '2021-01-14 10:03:50', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, '/monitor/online', '', 'C', '0', '1', 'monitor:online:view', 'fa fa-user-circle', 'admin', '2021-01-14 10:03:50', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, '/monitor/job', '', 'C', '0', '1', 'monitor:job:view', 'fa fa-tasks', 'admin', '2021-01-14 10:03:50', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, '/monitor/data', '', 'C', '0', '1', 'monitor:data:view', 'fa fa-bug', 'admin', '2021-01-14 10:03:50', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, '/monitor/server', '', 'C', '0', '1', 'monitor:server:view', 'fa fa-server', 'admin', '2021-01-14 10:03:50', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, '/monitor/cache', '', 'C', '0', '1', 'monitor:cache:view', 'fa fa-cube', 'admin', '2021-01-14 10:03:50', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, '/tool/build', '', 'C', '0', '1', 'tool:build:view', 'fa fa-wpforms', 'admin', '2021-01-14 10:03:50', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, '/tool/gen', '', 'C', '0', '1', 'tool:gen:view', 'fa fa-code', 'admin', '2021-01-14 10:03:50', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, '/tool/swagger', '', 'C', '0', '1', 'tool:swagger:view', 'fa fa-gg', 'admin', '2021-01-14 10:03:50', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, '/monitor/operlog', '', 'C', '0', '1', 'monitor:operlog:view', 'fa fa-address-book', 'admin', '2021-01-14 10:03:50', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, '/monitor/logininfor', '', 'C', '0', '1', 'monitor:logininfor:view', 'fa fa-file-image-o', 'admin', '2021-01-14 10:03:50', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '#', '', 'F', '0', '1', 'system:user:list', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '#', '', 'F', '0', '1', 'system:user:add', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '#', '', 'F', '0', '1', 'system:user:edit', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '#', '', 'F', '0', '1', 'system:user:remove', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '#', '', 'F', '0', '1', 'system:user:export', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '#', '', 'F', '0', '1', 'system:user:import', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '#', '', 'F', '0', '1', 'system:user:resetPwd', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '#', '', 'F', '0', '1', 'system:role:list', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '#', '', 'F', '0', '1', 'system:role:add', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '#', '', 'F', '0', '1', 'system:role:edit', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '#', '', 'F', '0', '1', 'system:role:remove', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '#', '', 'F', '0', '1', 'system:role:export', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '#', '', 'F', '0', '1', 'system:menu:list', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '#', '', 'F', '0', '1', 'system:menu:add', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '#', '', 'F', '0', '1', 'system:menu:edit', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '#', '', 'F', '0', '1', 'system:menu:remove', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '#', '', 'F', '0', '1', 'system:dept:list', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '#', '', 'F', '0', '1', 'system:dept:add', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '#', '', 'F', '0', '1', 'system:dept:edit', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '#', '', 'F', '0', '1', 'system:dept:remove', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '#', '', 'F', '0', '1', 'system:post:list', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '#', '', 'F', '0', '1', 'system:post:add', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '#', '', 'F', '0', '1', 'system:post:edit', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '#', '', 'F', '0', '1', 'system:post:remove', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '#', '', 'F', '0', '1', 'system:post:export', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', 'F', '0', '1', 'system:dict:list', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', 'F', '0', '1', 'system:dict:add', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', 'F', '0', '1', 'system:dict:edit', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', 'F', '0', '1', 'system:dict:remove', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', 'F', '0', '1', 'system:dict:export', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', 'F', '0', '1', 'system:config:list', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', 'F', '0', '1', 'system:config:add', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', 'F', '0', '1', 'system:config:edit', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', 'F', '0', '1', 'system:config:remove', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', 'F', '0', '1', 'system:config:export', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', 'F', '0', '1', 'system:notice:list', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', 'F', '0', '1', 'system:notice:add', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', 'F', '0', '1', 'system:notice:edit', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', 'F', '0', '1', 'system:notice:remove', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', 'F', '0', '1', 'monitor:operlog:list', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', 'F', '0', '1', 'monitor:operlog:remove', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '详细信息', 500, 3, '#', '', 'F', '0', '1', 'monitor:operlog:detail', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 'F', '0', '1', 'monitor:operlog:export', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 'F', '0', '1', 'monitor:logininfor:list', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 'F', '0', '1', 'monitor:logininfor:remove', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 'F', '0', '1', 'monitor:logininfor:export', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '账户解锁', 501, 4, '#', '', 'F', '0', '1', 'monitor:logininfor:unlock', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '在线查询', 109, 1, '#', '', 'F', '0', '1', 'monitor:online:list', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '批量强退', 109, 2, '#', '', 'F', '0', '1', 'monitor:online:batchForceLogout', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '单条强退', 109, 3, '#', '', 'F', '0', '1', 'monitor:online:forceLogout', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务查询', 110, 1, '#', '', 'F', '0', '1', 'monitor:job:list', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务新增', 110, 2, '#', '', 'F', '0', '1', 'monitor:job:add', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务修改', 110, 3, '#', '', 'F', '0', '1', 'monitor:job:edit', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '任务删除', 110, 4, '#', '', 'F', '0', '1', 'monitor:job:remove', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '状态修改', 110, 5, '#', '', 'F', '0', '1', 'monitor:job:changeStatus', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '任务详细', 110, 6, '#', '', 'F', '0', '1', 'monitor:job:detail', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '任务导出', 110, 7, '#', '', 'F', '0', '1', 'monitor:job:export', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成查询', 115, 1, '#', '', 'F', '0', '1', 'tool:gen:list', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '生成修改', 115, 2, '#', '', 'F', '0', '1', 'tool:gen:edit', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '生成删除', 115, 3, '#', '', 'F', '0', '1', 'tool:gen:remove', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '预览代码', 115, 4, '#', '', 'F', '0', '1', 'tool:gen:preview', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1061, '生成代码', 115, 5, '#', '', 'F', '0', '1', 'tool:gen:code', '#', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '报表管理', 0, 1, '#', 'menuItem', 'M', '0', '1', NULL, 'fa fa-bar-chart', 'admin', '2021-01-14 10:05:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2001, '信审报表', 2000, 620, '/system/shoudai', 'menuItem', 'C', '0', '0', 'system:shoudai:view', '#', 'admin', '2021-01-14 10:06:46', 'admin', '2021-01-15 15:57:11', '');
INSERT INTO `sys_menu` VALUES (2002, '【请填写功能名称】', 3, 1, '/system/fudai', '', 'C', '0', '1', 'system:fudai:view', '#', 'admin', '2021-01-14 10:10:30', '', NULL, '【请填写功能名称】菜单');
INSERT INTO `sys_menu` VALUES (2003, '【请填写功能名称】查询', 2002, 1, '#', '', 'F', '0', '1', 'system:fudai:list', '#', 'admin', '2021-01-14 10:10:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2004, '【请填写功能名称】新增', 2002, 2, '#', '', 'F', '0', '1', 'system:fudai:add', '#', 'admin', '2021-01-14 10:10:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '【请填写功能名称】修改', 2002, 3, '#', '', 'F', '0', '1', 'system:fudai:edit', '#', 'admin', '2021-01-14 10:10:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '【请填写功能名称】删除', 2002, 4, '#', '', 'F', '0', '1', 'system:fudai:remove', '#', 'admin', '2021-01-14 10:10:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2007, '【请填写功能名称】导出', 2002, 5, '#', '', 'F', '0', '1', 'system:fudai:export', '#', 'admin', '2021-01-14 10:10:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2008, '【请填写功能名称】', 3, 1, '/system/shoudai', '', 'C', '0', '1', 'system:shoudai:view', '#', 'admin', '2021-01-14 10:10:37', '', NULL, '【请填写功能名称】菜单');
INSERT INTO `sys_menu` VALUES (2009, '【请填写功能名称】查询', 2008, 1, '#', '', 'F', '0', '1', 'system:shoudai:list', '#', 'admin', '2021-01-14 10:10:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2010, '【请填写功能名称】新增', 2008, 2, '#', '', 'F', '0', '1', 'system:shoudai:add', '#', 'admin', '2021-01-14 10:10:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2011, '【请填写功能名称】修改', 2008, 3, '#', '', 'F', '0', '1', 'system:shoudai:edit', '#', 'admin', '2021-01-14 10:10:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2012, '【请填写功能名称】删除', 2008, 4, '#', '', 'F', '0', '1', 'system:shoudai:remove', '#', 'admin', '2021-01-14 10:10:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2013, '【请填写功能名称】导出', 2008, 5, '#', '', 'F', '0', '1', 'system:shoudai:export', '#', 'admin', '2021-01-14 10:10:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2017, '1', 2001, 1, '#', 'menuItem', 'F', '0', '1', 'system:shoudai:list', '#', 'admin', '2021-01-14 20:00:56', 'admin', '2021-01-14 20:01:27', '');
INSERT INTO `sys_menu` VALUES (2020, '【请填写功能名称】', 3, 1, '/system/yunyingbaobiao4', '', 'C', '0', '1', 'system:yunyingbaobiao4:view', '#', 'admin', '2021-01-14 21:22:16', '', NULL, '【请填写功能名称】菜单');
INSERT INTO `sys_menu` VALUES (2021, '【请填写功能名称】查询', 2020, 1, '#', '', 'F', '0', '1', 'system:yunyingbaobiao4:list', '#', 'admin', '2021-01-14 21:22:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2022, '【请填写功能名称】新增', 2020, 2, '#', '', 'F', '0', '1', 'system:yunyingbaobiao4:add', '#', 'admin', '2021-01-14 21:22:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2023, '【请填写功能名称】修改', 2020, 3, '#', '', 'F', '0', '1', 'system:yunyingbaobiao4:edit', '#', 'admin', '2021-01-14 21:22:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2024, '【请填写功能名称】删除', 2020, 4, '#', '', 'F', '0', '1', 'system:yunyingbaobiao4:remove', '#', 'admin', '2021-01-14 21:22:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2025, '【请填写功能名称】导出', 2020, 5, '#', '', 'F', '0', '1', 'system:yunyingbaobiao4:export', '#', 'admin', '2021-01-14 21:22:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2027, '【请填写功能名称】', 3, 1, '/system/fangkuan', '', 'C', '0', '1', 'system:fangkuan:view', '#', 'admin', '2021-01-14 21:30:12', '', NULL, '【请填写功能名称】菜单');
INSERT INTO `sys_menu` VALUES (2028, '【请填写功能名称】查询', 2027, 1, '#', '', 'F', '0', '1', 'system:fangkuan:list', '#', 'admin', '2021-01-14 21:30:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2029, '【请填写功能名称】新增', 2027, 2, '#', '', 'F', '0', '1', 'system:fangkuan:add', '#', 'admin', '2021-01-14 21:30:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2030, '【请填写功能名称】修改', 2027, 3, '#', '', 'F', '0', '1', 'system:fangkuan:edit', '#', 'admin', '2021-01-14 21:30:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2031, '【请填写功能名称】删除', 2027, 4, '#', '', 'F', '0', '1', 'system:fangkuan:remove', '#', 'admin', '2021-01-14 21:30:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2032, '【请填写功能名称】导出', 2027, 5, '#', '', 'F', '0', '1', 'system:fangkuan:export', '#', 'admin', '2021-01-14 21:30:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2035, '【请填写功能名称】', 3, 1, '/system/yinghuanqieshijihuanqing', '', 'C', '0', '1', 'system:yinghuanqieshijihuanqing:view', '#', 'admin', '2021-01-15 10:00:50', '', NULL, '【请填写功能名称】菜单');
INSERT INTO `sys_menu` VALUES (2036, '【请填写功能名称】查询', 2035, 1, '#', '', 'F', '0', '1', 'system:yinghuanqieshijihuanqing:list', '#', 'admin', '2021-01-15 10:00:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2037, '【请填写功能名称】新增', 2035, 2, '#', '', 'F', '0', '1', 'system:yinghuanqieshijihuanqing:add', '#', 'admin', '2021-01-15 10:00:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2038, '【请填写功能名称】修改', 2035, 3, '#', '', 'F', '0', '1', 'system:yinghuanqieshijihuanqing:edit', '#', 'admin', '2021-01-15 10:00:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2039, '【请填写功能名称】删除', 2035, 4, '#', '', 'F', '0', '1', 'system:yinghuanqieshijihuanqing:remove', '#', 'admin', '2021-01-15 10:00:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2040, '【请填写功能名称】导出', 2035, 5, '#', '', 'F', '0', '1', 'system:yinghuanqieshijihuanqing:export', '#', 'admin', '2021-01-15 10:00:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2043, '【请填写功能名称】', 3, 1, '/system/yuanyingqingkuan', '', 'C', '0', '1', 'system:yuanyingqingkuan:view', '#', 'admin', '2021-01-15 10:11:14', '', NULL, '【请填写功能名称】菜单');
INSERT INTO `sys_menu` VALUES (2044, '【请填写功能名称】查询', 2043, 1, '#', '', 'F', '0', '1', 'system:yuanyingqingkuan:list', '#', 'admin', '2021-01-15 10:11:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2045, '【请填写功能名称】新增', 2043, 2, '#', '', 'F', '0', '1', 'system:yuanyingqingkuan:add', '#', 'admin', '2021-01-15 10:11:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2046, '【请填写功能名称】修改', 2043, 3, '#', '', 'F', '0', '1', 'system:yuanyingqingkuan:edit', '#', 'admin', '2021-01-15 10:11:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2047, '【请填写功能名称】删除', 2043, 4, '#', '', 'F', '0', '1', 'system:yuanyingqingkuan:remove', '#', 'admin', '2021-01-15 10:11:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2048, '【请填写功能名称】导出', 2043, 5, '#', '', 'F', '0', '1', 'system:yuanyingqingkuan:export', '#', 'admin', '2021-01-15 10:11:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2049, '运营报表', 2000, 10, 'system/yuanyingqingkuan', 'menuItem', 'C', '0', '1', 'system:yuanyingqingkuan:view', '#', 'admin', '2021-01-15 10:18:05', 'admin', '2021-01-15 17:10:23', '');
INSERT INTO `sys_menu` VALUES (2050, '1', 2049, 1, '#', 'menuItem', 'F', '0', '1', 'system:yuanyingqingkuan:list', '#', 'admin', '2021-01-15 10:19:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2051, '【请填写功能名称】', 3, 1, '/system/daihoubaobiao', '', 'C', '0', '1', 'system:daihoubaobiao:view', '#', 'admin', '2021-01-15 11:19:15', '', NULL, '【请填写功能名称】菜单');
INSERT INTO `sys_menu` VALUES (2052, '【请填写功能名称】查询', 2051, 1, '#', '', 'F', '0', '1', 'system:daihoubaobiao:list', '#', 'admin', '2021-01-15 11:19:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2053, '【请填写功能名称】新增', 2051, 2, '#', '', 'F', '0', '1', 'system:daihoubaobiao:add', '#', 'admin', '2021-01-15 11:19:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2054, '【请填写功能名称】修改', 2051, 3, '#', '', 'F', '0', '1', 'system:daihoubaobiao:edit', '#', 'admin', '2021-01-15 11:19:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2055, '【请填写功能名称】删除', 2051, 4, '#', '', 'F', '0', '1', 'system:daihoubaobiao:remove', '#', 'admin', '2021-01-15 11:19:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2056, '【请填写功能名称】导出', 2051, 5, '#', '', 'F', '0', '1', 'system:daihoubaobiao:export', '#', 'admin', '2021-01-15 11:19:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2057, '贷后报表', 2000, 1000, '/system/daihoubaobiao', 'menuItem', 'C', '0', '1', 'system:daihoubaobiao:view', '#', 'admin', '2021-01-15 11:23:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2058, '1', 2057, 1, '#', 'menuItem', 'F', '0', '1', 'system:daihoubaobiao:list', '#', 'admin', '2021-01-15 11:23:51', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 225 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"mock_wykj_xinsheng_shoudai,mock_wykj_xinsheng_fudai\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 10:05:26');
INSERT INTO `sys_oper_log` VALUES (101, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"0\"],\"menuType\":[\"M\"],\"menuName\":[\"报表管理\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-bar-chart\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 10:05:52');
INSERT INTO `sys_oper_log` VALUES (102, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"信审报表\"],\"url\":[\"\"],\"target\":[\"menuBlank\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 10:06:46');
INSERT INTO `sys_oper_log` VALUES (103, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"mock_wykj_xinsheng_fudai,mock_wykj_xinsheng_shoudai\"]}', 'null', 0, NULL, '2021-01-14 10:07:25');
INSERT INTO `sys_oper_log` VALUES (104, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2001\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"信审报表\"],\"url\":[\"/system/shoudai\"],\"target\":[\"menuBlank\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 10:11:33');
INSERT INTO `sys_oper_log` VALUES (105, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2001\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"信审报表\"],\"url\":[\"/system/shoudai\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 10:12:05');
INSERT INTO `sys_oper_log` VALUES (106, '【请填写功能名称】', 5, 'com.ruoyi.project.system.shoudai.controller.MockWykjXinshengShoudaiController.export()', 'POST', 1, 'admin', '研发部门', '/system/shoudai/export', '127.0.0.1', '内网IP', '{\"field0\":[\"\"],\"field1\":[\"\"],\"field2\":[\"\"],\"field3\":[\"\"],\"field4\":[\"\"],\"field5\":[\"\"],\"field6\":[\"\"],\"field7\":[\"\"],\"field8\":[\"\"],\"field9\":[\"\"],\"field10\":[\"\"],\"field11\":[\"\"],\"field12\":[\"\"],\"field13\":[\"\"],\"field14\":[\"\"],\"field15\":[\"\"],\"field16\":[\"\"],\"orderByColumn\":[\"\"],\"isAsc\":[\"asc\"]}', '{\"msg\":\"d077ed43-725b-42f4-bc34-45f9572ab836_shoudai.xlsx\",\"code\":0}', 0, NULL, '2021-01-14 10:12:29');
INSERT INTO `sys_oper_log` VALUES (107, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"信审管理-复贷\"],\"url\":[\"/system/fudai\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 10:15:50');
INSERT INTO `sys_oper_log` VALUES (108, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1,2\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 13:46:33');
INSERT INTO `sys_oper_log` VALUES (109, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"mock_wykj_xinsheng_fudai_01,mock_wykj_xinsheng_shoudai_01\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 13:47:35');
INSERT INTO `sys_oper_log` VALUES (110, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"mock_wykj_xinsheng_fudai_01,mock_wykj_xinsheng_shoudai_01\"]}', 'null', 0, NULL, '2021-01-14 13:47:45');
INSERT INTO `sys_oper_log` VALUES (111, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"3,4\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 13:49:09');
INSERT INTO `sys_oper_log` VALUES (112, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"mock_wykj_xinsheng_shoudai,mock_wykj_xinsheng_fudai\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 13:49:15');
INSERT INTO `sys_oper_log` VALUES (113, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"mock_wykj_xinsheng_fudai,mock_wykj_xinsheng_shoudai\"]}', 'null', 0, NULL, '2021-01-14 13:49:19');
INSERT INTO `sys_oper_log` VALUES (114, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"5,6\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 17:33:20');
INSERT INTO `sys_oper_log` VALUES (115, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"mock_wykj_xinsheng_shoudai,mock_wykj_xinsheng_fudai\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 17:33:23');
INSERT INTO `sys_oper_log` VALUES (116, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"mock_wykj_xinsheng_fudai,mock_wykj_xinsheng_shoudai\"]}', 'null', 0, NULL, '2021-01-14 17:33:29');
INSERT INTO `sys_oper_log` VALUES (117, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2001\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"信审报表-首贷\"],\"url\":[\"/system/shoudai\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 18:38:08');
INSERT INTO `sys_oper_log` VALUES (118, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2014\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"信审报表-复贷\"],\"url\":[\"/system/fudai\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 19:39:13');
INSERT INTO `sys_oper_log` VALUES (119, '角色管理', 1, 'com.ruoyi.project.system.role.controller.RoleController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/role/add', '127.0.0.1', '内网IP', '{\"roleName\":[\"shujufenxi\"],\"roleKey\":[\"shujufenxi\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2000,2001,2014\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 19:40:49');
INSERT INTO `sys_oper_log` VALUES (120, '用户管理', 1, 'com.ruoyi.project.system.user.controller.UserController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\"deptId\":[\"\"],\"userName\":[\"shujufenxi\"],\"deptName\":[\"\"],\"phonenumber\":[\"\"],\"email\":[\"\"],\"loginName\":[\"shujufenxi\"],\"sex\":[\"0\"],\"role\":[\"100\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"100\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 19:41:14');
INSERT INTO `sys_oper_log` VALUES (121, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"shujufenxi\"],\"roleKey\":[\"shujufenxi\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2000,2001,2014\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 19:43:03');
INSERT INTO `sys_oper_log` VALUES (122, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2001\"],\"menuType\":[\"F\"],\"menuName\":[\"ssssss\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 19:44:39');
INSERT INTO `sys_oper_log` VALUES (123, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2015', '127.0.0.1', '内网IP', NULL, '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 19:45:36');
INSERT INTO `sys_oper_log` VALUES (124, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2001\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"信审报表-首贷\"],\"url\":[\"/system/shoudai\"],\"target\":[\"menuItem\"],\"perms\":[\"system:shoudai:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 19:46:42');
INSERT INTO `sys_oper_log` VALUES (125, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2014\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"信审报表-复贷\"],\"url\":[\"/system/fudai\"],\"target\":[\"menuItem\"],\"perms\":[\"system:fudai:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 19:46:50');
INSERT INTO `sys_oper_log` VALUES (126, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2001\"],\"menuType\":[\"F\"],\"menuName\":[\"c\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:shoudai:list\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 19:48:35');
INSERT INTO `sys_oper_log` VALUES (127, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2016\"],\"parentId\":[\"2001\"],\"menuType\":[\"C\"],\"menuName\":[\"c\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"system:shoudai:list\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 19:49:09');
INSERT INTO `sys_oper_log` VALUES (128, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2016', '127.0.0.1', '内网IP', NULL, '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 19:54:13');
INSERT INTO `sys_oper_log` VALUES (129, '用户管理', 2, 'com.ruoyi.project.system.user.controller.UserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"100\"],\"deptId\":[\"\"],\"userName\":[\"shujufenxi\"],\"dept.deptName\":[\"\"],\"phonenumber\":[\"\"],\"email\":[\"\"],\"loginName\":[\"shujufenxi\"],\"sex\":[\"0\"],\"role\":[\"100\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"100\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 19:56:03');
INSERT INTO `sys_oper_log` VALUES (130, '部门管理', 1, 'com.ruoyi.project.system.dept.controller.DeptController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"100\"],\"deptName\":[\"运营部门\"],\"orderNum\":[\"1\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 19:56:35');
INSERT INTO `sys_oper_log` VALUES (131, '部门管理', 3, 'com.ruoyi.project.system.dept.controller.DeptController.remove()', 'GET', 1, 'admin', '研发部门', '/system/dept/remove/200', '127.0.0.1', '内网IP', NULL, '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 19:57:04');
INSERT INTO `sys_oper_log` VALUES (132, '部门管理', 1, 'com.ruoyi.project.system.dept.controller.DeptController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"101\"],\"deptName\":[\"运营部门\"],\"orderNum\":[\"1\"],\"leader\":[\"\"],\"phone\":[\"\"],\"email\":[\"\"],\"status\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 19:57:12');
INSERT INTO `sys_oper_log` VALUES (133, '用户管理', 2, 'com.ruoyi.project.system.user.controller.UserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"100\"],\"deptId\":[\"201\"],\"userName\":[\"shujufenxi\"],\"dept.deptName\":[\"运营部门\"],\"phonenumber\":[\"\"],\"email\":[\"\"],\"loginName\":[\"shujufenxi\"],\"sex\":[\"0\"],\"role\":[\"100\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"100\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 19:57:22');
INSERT INTO `sys_oper_log` VALUES (134, '用户管理', 4, 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', 1, 'admin', '研发部门', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"100\"],\"roleIds\":[\"100\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 19:57:34');
INSERT INTO `sys_oper_log` VALUES (135, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"shujufenxi\"],\"roleKey\":[\"shujufenxi\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2000,2001,2014\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 19:59:11');
INSERT INTO `sys_oper_log` VALUES (136, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.authDataScopeSave()', 'POST', 1, 'admin', '研发部门', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"shujufenxi\"],\"roleKey\":[\"shujufenxi\"],\"dataScope\":[\"5\"],\"deptIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 19:59:22');
INSERT INTO `sys_oper_log` VALUES (137, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2001\"],\"menuType\":[\"C\"],\"menuName\":[\"1\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:shoudai:list\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 20:00:56');
INSERT INTO `sys_oper_log` VALUES (138, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2017\"],\"parentId\":[\"2001\"],\"menuType\":[\"F\"],\"menuName\":[\"1\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"system:shoudai:list\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 20:01:27');
INSERT INTO `sys_oper_log` VALUES (139, '用户管理', 4, 'com.ruoyi.project.system.user.controller.UserController.insertAuthRole()', 'POST', 1, 'admin', '研发部门', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\"userId\":[\"100\"],\"roleIds\":[\"2,100\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 20:02:24');
INSERT INTO `sys_oper_log` VALUES (140, '用户管理', 2, 'com.ruoyi.project.system.user.controller.UserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"100\"],\"deptId\":[\"201\"],\"userName\":[\"shujufenxi\"],\"dept.deptName\":[\"运营部门\"],\"phonenumber\":[\"\"],\"email\":[\"\"],\"loginName\":[\"shujufenxi\"],\"sex\":[\"0\"],\"role\":[\"100\"],\"remark\":[\"\"],\"status\":[\"0\"],\"roleIds\":[\"100\"],\"postIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 20:02:44');
INSERT INTO `sys_oper_log` VALUES (141, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"shujufenxi\"],\"roleKey\":[\"shujufenxi\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2000,2001,2017,2014\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 20:04:14');
INSERT INTO `sys_oper_log` VALUES (142, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2014\"],\"menuType\":[\"F\"],\"menuName\":[\"system:fudai:list\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 20:04:59');
INSERT INTO `sys_oper_log` VALUES (143, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"shujufenxi\"],\"roleKey\":[\"shujufenxi\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2000,2001,2017,2014,2018\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 20:05:16');
INSERT INTO `sys_oper_log` VALUES (144, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2018\"],\"parentId\":[\"2014\"],\"menuType\":[\"F\"],\"menuName\":[\"1\"],\"url\":[\"#\"],\"target\":[\"menuItem\"],\"perms\":[\"system:fudai:list\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 20:05:57');
INSERT INTO `sys_oper_log` VALUES (145, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"shujufenxi\"],\"roleKey\":[\"shujufenxi\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2000,2001,2017,2014,2018\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 20:06:07');
INSERT INTO `sys_oper_log` VALUES (146, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"shujufenxi\"],\"roleKey\":[\"shujufenxi\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2001,2014\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 20:07:04');
INSERT INTO `sys_oper_log` VALUES (147, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"shujufenxi\"],\"roleKey\":[\"shujufenxi\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2000,2001,2017,2014,2018\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 20:07:46');
INSERT INTO `sys_oper_log` VALUES (148, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'shujufenxi', '运营部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', NULL, '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 20:23:47');
INSERT INTO `sys_oper_log` VALUES (149, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', NULL, '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 20:31:01');
INSERT INTO `sys_oper_log` VALUES (150, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'shujufenxi', '运营部门', '/system/user/profile/updateAvatar', '127.0.0.1', '内网IP', NULL, '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 20:53:47');
INSERT INTO `sys_oper_log` VALUES (151, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"mock_wykj_yunyingbaobiao4\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 21:17:37');
INSERT INTO `sys_oper_log` VALUES (152, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"mock_wykj_yunyingbaobiao4\"]}', 'null', 0, NULL, '2021-01-14 21:17:43');
INSERT INTO `sys_oper_log` VALUES (153, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"运营报表-应还\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"100\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 21:21:41');
INSERT INTO `sys_oper_log` VALUES (154, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2019\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"运营报表-应还\"],\"url\":[\"system/yunyingbaobiao4\"],\"target\":[\"menuItem\"],\"perms\":[\"system:yunyingbaobiao4:view\"],\"orderNum\":[\"100\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 21:22:47');
INSERT INTO `sys_oper_log` VALUES (155, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2019\"],\"menuType\":[\"F\"],\"menuName\":[\"1\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:yunyingbaobiao4:list\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 21:23:06');
INSERT INTO `sys_oper_log` VALUES (156, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"shujufenxi\"],\"roleKey\":[\"shujufenxi\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2000,2001,2017,2014,2018,2019,2026\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 21:23:21');
INSERT INTO `sys_oper_log` VALUES (157, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"mock_wykj_yunyingbaobiao3_fangkuan\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 21:29:34');
INSERT INTO `sys_oper_log` VALUES (158, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"mock_wykj_yunyingbaobiao3_fangkuan\"]}', 'null', 0, NULL, '2021-01-14 21:29:42');
INSERT INTO `sys_oper_log` VALUES (159, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"运营报表-放款\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:fangkuan:view\"],\"orderNum\":[\"101\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 21:32:53');
INSERT INTO `sys_oper_log` VALUES (160, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2033\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"运营报表-放款\"],\"url\":[\"/system/fangkuan\"],\"target\":[\"menuItem\"],\"perms\":[\"system:fangkuan:view\"],\"orderNum\":[\"101\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 21:33:14');
INSERT INTO `sys_oper_log` VALUES (161, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2033\"],\"menuType\":[\"F\"],\"menuName\":[\"1\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:fangkuan:list\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 21:33:34');
INSERT INTO `sys_oper_log` VALUES (162, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"shujufenxi\"],\"roleKey\":[\"shujufenxi\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2000,2001,2017,2014,2018,2019,2026,2033,2034\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-14 21:34:04');
INSERT INTO `sys_oper_log` VALUES (163, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 10:00:05');
INSERT INTO `sys_oper_log` VALUES (164, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing\"]}', 'null', 0, NULL, '2021-01-15 10:00:18');
INSERT INTO `sys_oper_log` VALUES (165, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"运营报表-应还且实际还清\"],\"url\":[\"/system/yinghuanqieshijihuanqing\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"102\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 10:06:37');
INSERT INTO `sys_oper_log` VALUES (166, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2041\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"运营报表-应还且实际还清\"],\"url\":[\"/system/yinghuanqieshijihuanqing\"],\"target\":[\"menuItem\"],\"perms\":[\"system:yinghuanqieshijihuanqing:view\"],\"orderNum\":[\"102\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 10:06:57');
INSERT INTO `sys_oper_log` VALUES (167, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2041\"],\"menuType\":[\"F\"],\"menuName\":[\"1\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:yinghuanqieshijihuanqing:list\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 10:07:14');
INSERT INTO `sys_oper_log` VALUES (168, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"shujufenxi\"],\"roleKey\":[\"shujufenxi\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2000,2001,2017,2014,2018,2019,2026,2033,2034,2041,2042\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 10:07:31');
INSERT INTO `sys_oper_log` VALUES (169, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"mock_wykj_yunyingbaobiao1_yuanyingqingkuan\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 10:10:39');
INSERT INTO `sys_oper_log` VALUES (170, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"mock_wykj_yunyingbaobiao1_yuanyingqingkuan\"]}', 'null', 0, NULL, '2021-01-15 10:10:44');
INSERT INTO `sys_oper_log` VALUES (171, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2000\"],\"menuType\":[\"M\"],\"menuName\":[\"运营情况\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 10:18:05');
INSERT INTO `sys_oper_log` VALUES (172, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2049\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"运营情况\"],\"url\":[\"system/yuanyingqingkuan\"],\"target\":[\"menuItem\"],\"perms\":[\"system:yuanyingqingkuan:view\"],\"orderNum\":[\"1\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 10:19:00');
INSERT INTO `sys_oper_log` VALUES (173, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2049\"],\"menuType\":[\"F\"],\"menuName\":[\"1\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:yuanyingqingkuan:list\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 10:19:14');
INSERT INTO `sys_oper_log` VALUES (174, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"shujufenxi\"],\"roleKey\":[\"shujufenxi\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2000,2049,2050,2001,2017,2014,2018,2019,2026,2033,2034,2041,2042\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 10:19:25');
INSERT INTO `sys_oper_log` VALUES (175, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2001\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"信审报表-首贷\"],\"url\":[\"/system/shoudai\"],\"target\":[\"menuItem\"],\"perms\":[\"system:shoudai:view\"],\"orderNum\":[\"20\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 10:54:00');
INSERT INTO `sys_oper_log` VALUES (176, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2014\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"信审报表-复贷\"],\"url\":[\"/system/fudai\"],\"target\":[\"menuItem\"],\"perms\":[\"system:fudai:view\"],\"orderNum\":[\"21\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 10:54:10');
INSERT INTO `sys_oper_log` VALUES (177, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"mock_wykj_daihoubaobiao\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 11:18:41');
INSERT INTO `sys_oper_log` VALUES (178, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"mock_wykj_daihoubaobiao\"]}', 'null', 0, NULL, '2021-01-15 11:18:46');
INSERT INTO `sys_oper_log` VALUES (179, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"贷后报表\"],\"url\":[\"/system/daihoubaobiao\"],\"target\":[\"menuItem\"],\"perms\":[\"system:daihoubaobiao:view\"],\"orderNum\":[\"1000\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 11:23:35');
INSERT INTO `sys_oper_log` VALUES (180, '菜单管理', 1, 'com.ruoyi.project.system.menu.controller.MenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\"parentId\":[\"2057\"],\"menuType\":[\"F\"],\"menuName\":[\"1\"],\"url\":[\"\"],\"target\":[\"menuItem\"],\"perms\":[\"system:daihoubaobiao:list\"],\"orderNum\":[\"1\"],\"icon\":[\"\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 11:23:51');
INSERT INTO `sys_oper_log` VALUES (181, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"shujufenxi\"],\"roleKey\":[\"shujufenxi\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2000,2049,2050,2001,2017,2014,2018,2019,2026,2033,2034,2041,2042,2057,2058\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 11:24:00');
INSERT INTO `sys_oper_log` VALUES (182, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2019\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"运营报表-应还\"],\"url\":[\"system/yunyingbaobiao4\"],\"target\":[\"menuItem\"],\"perms\":[\"system:yunyingbaobiao4:view\"],\"orderNum\":[\"110\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 11:31:23');
INSERT INTO `sys_oper_log` VALUES (183, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2019\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"运营报表-应还\"],\"url\":[\"system/yunyingbaobiao4\"],\"target\":[\"menuItem\"],\"perms\":[\"system:yunyingbaobiao4:view\"],\"orderNum\":[\"500\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 11:32:01');
INSERT INTO `sys_oper_log` VALUES (184, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2033\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"运营报表-放款\"],\"url\":[\"/system/fangkuan\"],\"target\":[\"menuItem\"],\"perms\":[\"system:fangkuan:view\"],\"orderNum\":[\"550\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 11:32:23');
INSERT INTO `sys_oper_log` VALUES (185, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2041\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"运营报表-应还且实际还清\"],\"url\":[\"/system/yinghuanqieshijihuanqing\"],\"target\":[\"menuItem\"],\"perms\":[\"system:yinghuanqieshijihuanqing:view\"],\"orderNum\":[\"450\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 11:32:35');
INSERT INTO `sys_oper_log` VALUES (186, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2001\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"信审报表-首贷\"],\"url\":[\"/system/shoudai\"],\"target\":[\"menuItem\"],\"perms\":[\"system:shoudai:view\"],\"orderNum\":[\"100\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 11:32:53');
INSERT INTO `sys_oper_log` VALUES (187, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2001\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"信审报表-首贷\"],\"url\":[\"/system/shoudai\"],\"target\":[\"menuItem\"],\"perms\":[\"system:shoudai:view\"],\"orderNum\":[\"110\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 11:33:06');
INSERT INTO `sys_oper_log` VALUES (188, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2014\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"信审报表-复贷\"],\"url\":[\"/system/fudai\"],\"target\":[\"menuItem\"],\"perms\":[\"system:fudai:view\"],\"orderNum\":[\"100\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 11:33:16');
INSERT INTO `sys_oper_log` VALUES (189, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2049\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"运营情况\"],\"url\":[\"system/yuanyingqingkuan\"],\"target\":[\"menuItem\"],\"perms\":[\"system:yuanyingqingkuan:view\"],\"orderNum\":[\"10\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 11:33:27');
INSERT INTO `sys_oper_log` VALUES (190, '字典类型', 1, 'com.ruoyi.project.system.dict.controller.DictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"贷后报表类型\"],\"dictType\":[\"sys_normal_daihoubaobiao_type\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 11:38:32');
INSERT INTO `sys_oper_log` VALUES (191, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2014\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"信审报表-复贷\"],\"url\":[\"/system/fudai\"],\"target\":[\"menuItem\"],\"perms\":[\"system:fudai:view\"],\"orderNum\":[\"610\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 11:45:50');
INSERT INTO `sys_oper_log` VALUES (192, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2001\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"信审报表-首贷\"],\"url\":[\"/system/shoudai\"],\"target\":[\"menuItem\"],\"perms\":[\"system:shoudai:view\"],\"orderNum\":[\"620\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 11:46:06');
INSERT INTO `sys_oper_log` VALUES (193, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2014', '127.0.0.1', '内网IP', NULL, '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', 0, NULL, '2021-01-15 15:43:10');
INSERT INTO `sys_oper_log` VALUES (194, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2018', '127.0.0.1', '内网IP', NULL, '{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}', 0, NULL, '2021-01-15 15:43:20');
INSERT INTO `sys_oper_log` VALUES (195, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2001\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"信审报表\"],\"url\":[\"/system/shoudai\"],\"target\":[\"menuItem\"],\"perms\":[\"\"],\"orderNum\":[\"620\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 15:46:16');
INSERT INTO `sys_oper_log` VALUES (196, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2001\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"信审报表\"],\"url\":[\"/system/shoudai\"],\"target\":[\"menuItem\"],\"perms\":[\"system:shoudai:view\"],\"orderNum\":[\"620\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 15:46:47');
INSERT INTO `sys_oper_log` VALUES (197, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2018', '127.0.0.1', '内网IP', NULL, '{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}', 0, NULL, '2021-01-15 15:48:34');
INSERT INTO `sys_oper_log` VALUES (198, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"shujufenxi\"],\"roleKey\":[\"shujufenxi\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 15:48:44');
INSERT INTO `sys_oper_log` VALUES (199, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2018', '127.0.0.1', '内网IP', NULL, '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 15:48:56');
INSERT INTO `sys_oper_log` VALUES (200, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2014', '127.0.0.1', '内网IP', NULL, '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 15:49:08');
INSERT INTO `sys_oper_log` VALUES (201, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"shujufenxi\"],\"roleKey\":[\"shujufenxi\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2000,2049,2050,2041,2042,2019,2026,2033,2034,2001,2017,2057,2058\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 15:49:33');
INSERT INTO `sys_oper_log` VALUES (202, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2001\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"信审报表\"],\"url\":[\"/system/xinshenbaobiao\"],\"target\":[\"menuItem\"],\"perms\":[\"system:shoudai:view\"],\"orderNum\":[\"620\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 15:51:20');
INSERT INTO `sys_oper_log` VALUES (203, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2001\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"信审报表\"],\"url\":[\"/system/xinshenbaobiao\"],\"target\":[\"menuItem\"],\"perms\":[\"system:shoudai:view\"],\"orderNum\":[\"620\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 15:51:41');
INSERT INTO `sys_oper_log` VALUES (204, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2001\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"信审报表\"],\"url\":[\"/system/shoudai\"],\"target\":[\"menuItem\"],\"perms\":[\"system:shoudai:view\"],\"orderNum\":[\"620\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 15:54:30');
INSERT INTO `sys_oper_log` VALUES (205, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2001\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"信审报表\"],\"url\":[\"/system/shoudai\"],\"target\":[\"menuItem\"],\"perms\":[\"system:shoudai:view\"],\"orderNum\":[\"620\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"0\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 15:57:11');
INSERT INTO `sys_oper_log` VALUES (206, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"shujufenxi\"],\"roleKey\":[\"shujufenxi\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2000,2049,2050,2041,2042,2019,2026,2033,2034,2014,2018,2001,2017,2057,2058\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 15:57:19');
INSERT INTO `sys_oper_log` VALUES (207, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2014', '127.0.0.1', '内网IP', NULL, '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', 0, NULL, '2021-01-15 16:26:46');
INSERT INTO `sys_oper_log` VALUES (208, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2018', '127.0.0.1', '内网IP', NULL, '{\"msg\":\"菜单已分配,不允许删除\",\"code\":301}', 0, NULL, '2021-01-15 16:26:53');
INSERT INTO `sys_oper_log` VALUES (209, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"shujufenxi\"],\"roleKey\":[\"shujufenxi\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2000,2049,2050,2041,2042,2019,2026,2033,2034,2001,2017,2057,2058\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 16:27:03');
INSERT INTO `sys_oper_log` VALUES (210, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"shujufenxi\"],\"roleKey\":[\"shujufenxi\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 17:08:29');
INSERT INTO `sys_oper_log` VALUES (211, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2041', '127.0.0.1', '内网IP', NULL, '{\"msg\":\"存在子菜单,不允许删除\",\"code\":301}', 0, NULL, '2021-01-15 17:08:44');
INSERT INTO `sys_oper_log` VALUES (212, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2042', '127.0.0.1', '内网IP', NULL, '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 17:08:49');
INSERT INTO `sys_oper_log` VALUES (213, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2041', '127.0.0.1', '内网IP', NULL, '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 17:08:54');
INSERT INTO `sys_oper_log` VALUES (214, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2026', '127.0.0.1', '内网IP', NULL, '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 17:08:59');
INSERT INTO `sys_oper_log` VALUES (215, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2019', '127.0.0.1', '内网IP', NULL, '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 17:09:06');
INSERT INTO `sys_oper_log` VALUES (216, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2034', '127.0.0.1', '内网IP', NULL, '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 17:09:12');
INSERT INTO `sys_oper_log` VALUES (217, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2033', '127.0.0.1', '内网IP', NULL, '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 17:09:25');
INSERT INTO `sys_oper_log` VALUES (218, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2018', '127.0.0.1', '内网IP', NULL, '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 17:09:32');
INSERT INTO `sys_oper_log` VALUES (219, '菜单管理', 3, 'com.ruoyi.project.system.menu.controller.MenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2014', '127.0.0.1', '内网IP', NULL, '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 17:10:00');
INSERT INTO `sys_oper_log` VALUES (220, '菜单管理', 2, 'com.ruoyi.project.system.menu.controller.MenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2049\"],\"parentId\":[\"2000\"],\"menuType\":[\"C\"],\"menuName\":[\"运营报表\"],\"url\":[\"system/yuanyingqingkuan\"],\"target\":[\"menuItem\"],\"perms\":[\"system:yuanyingqingkuan:view\"],\"orderNum\":[\"10\"],\"icon\":[\"#\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 17:10:23');
INSERT INTO `sys_oper_log` VALUES (221, '角色管理', 2, 'com.ruoyi.project.system.role.controller.RoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"100\"],\"roleName\":[\"shujufenxi\"],\"roleKey\":[\"shujufenxi\"],\"roleSort\":[\"1\"],\"status\":[\"0\"],\"remark\":[\"\"],\"menuIds\":[\"2000,2049,2050,2001,2017,2057,2058\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 17:10:40');
INSERT INTO `sys_oper_log` VALUES (222, '重置密码', 2, 'com.ruoyi.project.system.user.controller.ProfileController.resetPwd()', 'POST', 1, 'admin', '研发部门', '/system/user/profile/resetPwd', '127.0.0.1', '内网IP', '{\"userId\":[\"1\"],\"loginName\":[\"admin\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 17:45:18');
INSERT INTO `sys_oper_log` VALUES (223, '个人信息', 2, 'com.ruoyi.project.system.user.controller.ProfileController.updateAvatar()', 'POST', 1, 'shujufenxi', '运营部门', '/system/user/profile/updateAvatar', '183.15.176.211', 'XX XX', NULL, '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2021-01-15 18:21:16');
INSERT INTO `sys_oper_log` VALUES (224, '字典类型', 5, 'com.ruoyi.project.system.dict.controller.DictTypeController.export()', 'POST', 1, 'admin', '研发部门', '/system/dict/export', '113.108.56.202', 'XX XX', '{\"dictName\":[\"\"],\"dictType\":[\"\"],\"status\":[\"\"],\"params[beginTime]\":[\"\"],\"params[endTime]\":[\"\"],\"orderByColumn\":[\"dictId\"],\"isAsc\":[\"asc\"]}', '{\"msg\":\"662e4bc9-f1ae-4960-9f9d-017b316d12ef_字典类型.xlsx\",\"code\":0}', 0, NULL, '2021-01-30 13:38:51');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2021-01-14 10:03:50', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2021-01-14 10:03:50', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', '0', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', '0', '0', 'admin', '2021-01-14 10:03:50', '', NULL, '普通角色');
INSERT INTO `sys_role` VALUES (100, 'shujufenxi', 'shujufenxi', 1, '5', '0', '0', 'admin', '2021-01-14 19:40:48', 'admin', '2021-01-15 17:10:40', '');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (0, 0);
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (2, 1061);
INSERT INTO `sys_role_menu` VALUES (100, 2000);
INSERT INTO `sys_role_menu` VALUES (100, 2001);
INSERT INTO `sys_role_menu` VALUES (100, 2017);
INSERT INTO `sys_role_menu` VALUES (100, 2049);
INSERT INTO `sys_role_menu` VALUES (100, 2050);
INSERT INTO `sys_role_menu` VALUES (100, 2057);
INSERT INTO `sys_role_menu` VALUES (100, 2058);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime(0) NULL DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '/profile/avatar/2021/01/14/6d2fb8b9-7d33-4d52-bbfe-6a9615424137.png', '4845524112fc921922b552e23d3fca9c', '1d4709', '0', '0', '113.108.56.202', '2021-01-30 13:37:52', '2021-01-15 17:43:19', 'admin', '2021-01-14 10:03:50', '', '2021-01-30 13:37:52', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry1', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', '2021-01-14 10:03:50', '2021-01-14 10:03:50', 'admin', '2021-01-14 10:03:50', '', NULL, '测试员');
INSERT INTO `sys_user` VALUES (100, 201, 'shujufenxi', 'shujufenxi', '00', '', '', '0', '/profile/avatar/2021/01/15/d19220f3-5f82-41b8-a18e-646f8c50eb91.png', '138ee728e7c83cbb9066d1580efc2341', '1a0ff4', '0', '0', '154.209.88.47', '2021-03-12 22:51:32', NULL, 'admin', '2021-01-14 19:41:14', 'admin', '2021-03-12 22:51:32', '');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `sessionId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime(0) NULL DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime(0) NULL DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) NULL DEFAULT 0 COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '在线用户记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (100, 100);

SET FOREIGN_KEY_CHECKS = 1;
