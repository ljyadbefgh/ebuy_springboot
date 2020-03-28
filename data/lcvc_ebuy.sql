/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : lcvc_ebuy

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 24/03/2020 16:48:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账户名',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '网名',
  `sex` int(11) NULL DEFAULT NULL COMMENT '性别（1表示男，2表示女）',
  `unLocked` bit(1) NULL DEFAULT NULL COMMENT '账户是否没有锁定，true表示没有锁定',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (-99, 'adminljy', '-fe2nispc28dcddckd443jdmhnl8l9bjv', '超级管理员', 1, b'1', '2013-08-23 15:33:01');
INSERT INTO `admin` VALUES (-9, 'user', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '普通管理员', 2, b'1', '2013-08-23 15:33:01');
INSERT INTO `admin` VALUES (-3, 'vistor', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '演示账户', 1, b'1', '2013-10-15 17:30:01');
INSERT INTO `admin` VALUES (-2, 'teacher', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '教师', 1, b'1', '2013-10-15 17:38:10');
INSERT INTO `admin` VALUES (-1, 'student', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '学生', 1, b'1', '2013-10-15 17:30:27');
INSERT INTO `admin` VALUES (25, 'dfdsfsdf1', 'e10adc3949ba59abbe56e057f20f883e', '6656563', 1, b'1', '2013-10-15 17:38:34');
INSERT INTO `admin` VALUES (31, '67457464', 'e10adc3949ba59abbe56e057f20f883e', '6464565', 1, b'1', '2013-10-15 17:39:50');
INSERT INTO `admin` VALUES (42, '1213df', 'e10adc3949ba59abbe56e057f20f883e', '85445', 1, b'1', '2013-10-16 09:14:26');
INSERT INTO `admin` VALUES (46, '4343asdf', 'e10adc3949ba59abbe56e057f20f883e', '3434', 2, b'1', '2013-10-16 11:55:55');
INSERT INTO `admin` VALUES (49, '888er12', 'e10adc3949ba59abbe56e057f20f883e', '999', 1, b'1', '2013-10-16 17:50:51');
INSERT INTO `admin` VALUES (52, 'chenru', 'e10adc3949ba59abbe56e057f20f883e', '测试管理员-陈儒', 2, b'1', '2013-10-17 13:48:37');
INSERT INTO `admin` VALUES (53, 'asdfasd', 'e10adc3949ba59abbe56e057f20f883e', '阿萨德发', 1, b'1', '2013-10-18 09:21:34');
INSERT INTO `admin` VALUES (54, '1231231', 'e10adc3949ba59abbe56e057f20f883e', '撒旦法', 1, b'1', '2013-10-18 09:21:41');
INSERT INTO `admin` VALUES (55, 'asdfsd', 'e10adc3949ba59abbe56e057f20f883e', 'sfasdfwe', 2, b'1', '2013-10-18 09:24:23');
INSERT INTO `admin` VALUES (57, '123123', 'e10adc3949ba59abbe56e057f20f883e', '阿是否大是大非', 1, b'1', '2013-10-18 09:24:36');
INSERT INTO `admin` VALUES (59, '131adfad', 'e10adc3949ba59abbe56e057f20f883e', '试点范围非', 1, b'1', '2013-10-18 09:24:51');
INSERT INTO `admin` VALUES (60, 'adadfad', 'e10adc3949ba59abbe56e057f20f883e', '斯蒂芬', 1, b'1', '2013-10-18 09:25:00');
INSERT INTO `admin` VALUES (61, '123adf', 'e10adc3949ba59abbe56e057f20f883e', '阿萨德发12', 2, b'1', '2013-10-18 09:25:08');
INSERT INTO `admin` VALUES (62, 'asdfaf', 'e10adc3949ba59abbe56e057f20f883e', '阿萨德发顺丰', 1, b'1', '2013-10-18 09:25:14');
INSERT INTO `admin` VALUES (63, 'asdfasf', 'e10adc3949ba59abbe56e057f20f883e', '阿萨德发1', 1, b'1', '2013-10-18 09:25:22');
INSERT INTO `admin` VALUES (64, 'asdfadf', 'e10adc3949ba59abbe56e057f20f883e', '删除账户1', 1, b'1', '2013-10-18 09:31:35');
INSERT INTO `admin` VALUES (65, 'adfawef', 'e10adc3949ba59abbe56e057f20f883e', '删除账户2', 2, b'1', '2013-10-18 09:31:52');
INSERT INTO `admin` VALUES (66, 'asdfasdf', 'e10adc3949ba59abbe56e057f20f883e', '删除账户3', 1, b'1', '2013-10-18 09:31:58');
INSERT INTO `admin` VALUES (67, '测试删除账户', 'e10adc3949ba59abbe56e057f20f883e', '删除帐号4', 1, b'1', '2013-10-18 09:34:10');
INSERT INTO `admin` VALUES (68, '测试删除账户5', 'e10adc3949ba59abbe56e057f20f883e', '删除账户5', 1, b'1', '2013-10-18 09:35:10');
INSERT INTO `admin` VALUES (69, '测试删除账户6', 'e10adc3949ba59abbe56e057f20f883e', '删除账户6', 1, b'1', '2013-10-18 09:36:34');
INSERT INTO `admin` VALUES (70, '12asdfsdfa', 'e10adc3949ba59abbe56e057f20f883e', 'sadfasdf', 2, b'1', '2013-10-18 09:43:32');
INSERT INTO `admin` VALUES (71, 'aaaaa123', 'e10adc3949ba59abbe56e057f20f883e', 'asdfasdfa', 1, b'1', '2013-10-19 15:03:41');
INSERT INTO `admin` VALUES (75, 'chengru', 'e10adc3949ba59abbe56e057f20f883e', '测试账户-陈儒', 1, b'1', '2013-10-22 13:58:49');
INSERT INTO `admin` VALUES (76, 'test1', '123456', '测试账号1', 1, b'1', '2017-08-25 20:32:21');
INSERT INTO `admin` VALUES (77, 'test2', '123456', '测试账户2', 2, b'1', '2017-08-25 20:43:15');
INSERT INTO `admin` VALUES (78, 'tes3', '123456', '阿道夫', 2, b'1', '2017-08-25 20:45:23');
INSERT INTO `admin` VALUES (79, 'test4', '123456', '撒旦法', 1, b'1', '2017-08-25 20:45:32');
INSERT INTO `admin` VALUES (80, 'adfadfadf', '123456', '第三方', 1, b'1', NULL);
INSERT INTO `admin` VALUES (81, 'adfadfadf1', '123456', '第三方', 2, b'1', NULL);
INSERT INTO `admin` VALUES (82, 'ljyadbefgh1', '123456', '洪洪', 2, b'1', NULL);
INSERT INTO `admin` VALUES (86, 'ljy', 'string', 'string', 0, b'1', '2019-08-05 23:24:04');
INSERT INTO `admin` VALUES (89, 'ljy3', '111111', '张三', 1, b'1', '2019-09-01 16:13:43');
INSERT INTO `admin` VALUES (95, 'user9', '13', '小红', 1, b'1', NULL);
INSERT INTO `admin` VALUES (96, 'adfds', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '撒旦法', 2, b'1', '2019-10-15 08:40:06');
INSERT INTO `admin` VALUES (98, 'aaa1', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '撒旦法', 1, b'1', '2019-12-28 22:06:54');
INSERT INTO `admin` VALUES (99, 'aaa2', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '发', 2, b'1', '2019-12-28 22:34:33');
INSERT INTO `admin` VALUES (100, 'aaa3', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '地方', 2, b'1', '2019-12-28 22:38:18');
INSERT INTO `admin` VALUES (101, 'aaa4', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '撒旦法', 1, b'1', '2019-12-28 22:40:29');
INSERT INTO `admin` VALUES (102, 'aaaa5', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '阿斯顿发', 1, b'1', '2019-12-28 22:40:42');
INSERT INTO `admin` VALUES (103, 'aaa6', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '第三方', 1, b'1', '2019-12-28 23:22:27');
INSERT INTO `admin` VALUES (104, 'aaa8', 'fh58q2ea6thauof5ikg98fe2ciafh50r', 'adf', 1, b'1', '2020-01-01 23:28:16');
INSERT INTO `admin` VALUES (105, 'aaa', 'fh58q2ea6thauof5ikg98fe2ciafh50r', 'aaa', 2, b'1', '2020-01-09 16:59:47');
INSERT INTO `admin` VALUES (106, 'aaaa1', 'fh58q2ea6thauof5ikg98fe2ciafh50r', 'sd', 1, b'1', '2020-01-09 17:58:49');

-- ----------------------------
-- Table structure for admin_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE `admin_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminId` int(11) NULL DEFAULT NULL COMMENT 'admin主键',
  `roleId` int(11) NULL DEFAULT NULL COMMENT 'role主键',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `adminId`(`adminId`, `roleId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 233 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role
-- ----------------------------
INSERT INTO `admin_role` VALUES (81, -99, -99, '2019-10-14 18:19:38');
INSERT INTO `admin_role` VALUES (101, 0, 3, '2019-10-21 10:54:40');
INSERT INTO `admin_role` VALUES (115, 103, 12, '2019-12-28 23:22:27');
INSERT INTO `admin_role` VALUES (137, 25, 14, '2019-12-31 21:22:45');
INSERT INTO `admin_role` VALUES (140, 104, 14, '2020-01-01 23:28:16');
INSERT INTO `admin_role` VALUES (142, 104, -1, '2020-01-01 23:28:16');
INSERT INTO `admin_role` VALUES (227, -2, 14, '2020-01-20 23:54:43');
INSERT INTO `admin_role` VALUES (228, -9, -1, '2020-01-20 23:57:47');
INSERT INTO `admin_role` VALUES (229, -3, 3, '2020-01-20 23:58:30');
INSERT INTO `admin_role` VALUES (230, -9, 3, '2020-01-28 11:53:16');
INSERT INTO `admin_role` VALUES (232, -1, 15, '2020-03-06 11:55:51');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账户名',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账户密码',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户名称',
  `sex` int(255) NULL DEFAULT 0 COMMENT '性别，1男2女',
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '移动电话',
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户地址',
  `zip` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户地址的邮编',
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户电子邮件',
  `picUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片路径',
  `intro` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '客户信息备注，简介',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, 'ljy', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '测试账号', 2, '13124123132', '柳州城市职业学院7栋', '134321', '1312313@qq.com', '1.jpg', '每天都很闲的,爱好是吃脚.', '2013-11-21 17:31:46');
INSERT INTO `customer` VALUES (9, 'wenye', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '白安善', 1, '13647789517', '柳州市抠脚村', '547000', '23123123@qq.com', '9.jpg', '和家龙是好♂兄弟', '2013-11-21 17:31:46');
INSERT INTO `customer` VALUES (12, 'huangsan', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '至尊宝', 1, '13633083252', '桂林市大河小区', '151431', 'asdfa@163.com', '12.jpg', '你们懂的', '2013-11-21 17:39:38');
INSERT INTO `customer` VALUES (13, 'guangge', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '徐凤年', 1, '17703771999', '广西柳州', '000000', '1312313@qq.com', '', '', '2019-08-06 15:03:13');
INSERT INTO `customer` VALUES (14, 'user2', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '王大发', 1, '15388889881', '北京市顺义区', '000000', '13233@qq.com', '14.jpg', '非常友善', '2019-08-06 15:06:53');
INSERT INTO `customer` VALUES (15, 'user3', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '客户3', 1, '15388889881', '广东省广州市', '000000', '1352312@qq.com', '15.jpg', '长隆', '2019-08-06 15:07:48');
INSERT INTO `customer` VALUES (16, 'user4', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '紫霞', 2, '18083815777', '柳州橙汁园', '568741', '1312313@qq.com', '', '', '2019-08-06 15:08:48');
INSERT INTO `customer` VALUES (17, 'abc1', 'fh58q2ea6thauof5ikg98fe2ciafh50r', 'ABC客户1', 1, '15377892222', '广西柳州', '000000', '1312313@qq.com', '17.jpg', '', '2019-08-06 15:09:12');
INSERT INTO `customer` VALUES (18, 'abc2', 'fh58q2ea6thauof5ikg98fe2ciafh50r', 'ABC客户2', 2, '18168526111', '广西柳州', '000000', 'fdssdadsf@qq.com', '18.jpg', '', '2019-08-06 16:21:41');
INSERT INTO `customer` VALUES (19, 'abc3', 'fh58q2ea6thauof5ikg98fe2ciafh50r', 'ABC客户3', 1, '18100800709', '广西柳州', '000000', '123@qq.com', NULL, '', '2019-08-06 16:22:12');
INSERT INTO `customer` VALUES (20, 'abc4', 'fh58q2ea6thauof5ikg98fe2ciafh50r', 'ABC客户4', 1, '15377892222', '广西柳州', '000000', '123@qq.com', '', '', '2019-08-06 15:09:12');
INSERT INTO `customer` VALUES (21, 'abc5', 'fh58q2ea6thauof5ikg98fe2ciafh50r', 'ABC客户5', 1, '15377892222', '广西柳州', '000000', '123@qq.com', NULL, '', '2019-08-06 15:09:12');
INSERT INTO `customer` VALUES (22, 'abc6', 'fh58q2ea6thauof5ikg98fe2ciafh50r', 'ABC客户6', 1, '15377892222', '广西柳州', '000000', '123@qq.com', '', '', '2019-08-06 15:09:12');
INSERT INTO `customer` VALUES (23, 'abc11', '123141421', 'abc客户11', 1, '13357024777', '广西柳州', '000000', '123@qq.com', '', '', '2019-08-06 16:25:07');
INSERT INTO `customer` VALUES (25, 'user1', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '张三', 1, '17376108213', '广西柳州', '000000', '123@qq.com', '', '', '2019-08-31 15:11:15');
INSERT INTO `customer` VALUES (26, 'sdf', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '123', 1, '13357024777', '广西柳州', '000000', '123@qq.com', NULL, '', '2019-08-31 18:30:05');
INSERT INTO `customer` VALUES (27, '123a', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '12', 2, '13357024777', '广西柳州', '000000', '123@qq.com', NULL, '', '2019-08-31 18:30:19');
INSERT INTO `customer` VALUES (28, 'zhangsan', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '张三丰', 1, '13633083200', '柳州城市职业学院', '000000', '89287689@qq.com', '28.jpg', '张三丰简介', '2019-10-25 09:04:29');
INSERT INTO `customer` VALUES (29, 'LiuFeng', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '你的名字', 1, '18775207581', '柳州城市职业学院7栋', '545003', '2508507565@qq.com', '29.jpg', '没有任何生气', '2019-10-25 09:08:18');
INSERT INTO `customer` VALUES (30, 'zhangwuji', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '张无忌', 1, '18844528478', '广西陆川', '537700', '452555878@qq.com', '30.jpg', '张无忌简介', '2019-10-25 09:08:47');
INSERT INTO `customer` VALUES (31, 'saber', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '阿尔托利亚·潘德拉贡', 1, '14795309399', '大不列颠帝国', '666666', '666666666@qq.com', '31.jpg', '亚瑟王', '2019-10-25 09:08:47');
INSERT INTO `customer` VALUES (32, 'chs', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '岑辉山', 1, '13087726397', '柳州城市职业学院', '047300', '2827824808@qq.com', '', '我是最帅的，最牛B的。完美。', '2019-10-25 09:08:57');
INSERT INTO `customer` VALUES (33, 'lys', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '阿沙姐姐丶', 2, '18174918911', '西伯利亚', '547200', '1367541027@qq.com', '33.jpg', '你号没了', '2019-10-25 09:09:06');
INSERT INTO `customer` VALUES (34, 'mohuiyong', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '勇哥', 1, '18078764223', '柳州城市职业学院', '202020', '2273838703@qq.com', NULL, '不差钱', '2019-10-25 09:09:24');
INSERT INTO `customer` VALUES (35, 'yuan', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '芙蓉姐', 2, '17888993366', '柳城职9栋519', '000000', '54586384@qq.com', '35.jpg', '', '2019-10-25 09:09:28');
INSERT INTO `customer` VALUES (36, 'htl', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '灰娘娘', 1, '18254567891', '青青草原', '000000', '456789@qq.com', '36.jpg', '', '2019-10-25 09:10:11');
INSERT INTO `customer` VALUES (37, 'xiaoxiao', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '小小', 2, '17677253547', '柳州市官塘大道柳州城市职业学院', '000000', '37645238374@qq.com', '37.jpg', '我是一名学生', '2019-10-25 09:10:16');
INSERT INTO `customer` VALUES (38, 'yongge', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '勇哥', 1, '18648841344', '柳州城市职业学院', '000000', '1120449400@qq.com', NULL, '问怅茫大地谁主沉浮', '2019-10-25 09:10:33');
INSERT INTO `customer` VALUES (39, 'uuiu', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '邓一封', 2, '15468951235', '北京市朝阳区', '545933', 'shun12032@qq.com', NULL, '我是小邋遢的后人', '2019-10-25 09:10:34');
INSERT INTO `customer` VALUES (40, 'lixian', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '李小', 1, '13640516155', '柳州城市职业技术学院', '000000', '3122500251@qq.com', NULL, '李小的简介', '2019-10-25 09:10:41');
INSERT INTO `customer` VALUES (41, 'ywc', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '嘟嘟', 1, '17377235562', '广西柳州', '545107', '123@qq.com', NULL, '.................', '2019-10-25 09:11:02');
INSERT INTO `customer` VALUES (42, 'LiXuan', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '林轩', 1, '15151788955', '新疆维吾尔自治区满斗村', '545597', '554466@qq.com', '42.jpg', '呜呜呜呜无无无无无无无', '2019-10-25 09:11:11');
INSERT INTO `customer` VALUES (43, 'wsy', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '王守义', 1, '13737664103', '石家庄', '000000', '13737664103@136.com', '43.jpg', '王守义说你13香', '2019-10-25 09:11:11');
INSERT INTO `customer` VALUES (44, '打打3', 'fh58q2ea6thauof5ikg98fe2ciafh50r', 'ad', 1, '13677533336', '广西柳州', '000000', '123@qq.com', NULL, '', '2019-10-25 09:11:14');
INSERT INTO `customer` VALUES (45, 'lll', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '李丽莉', 2, '13877690264', '柳州城市职业学院', '000000', '13877690264@qq.com', '45.jpg', '李丽莉', '2019-10-25 09:11:17');
INSERT INTO `customer` VALUES (46, 'uiiu', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '邓一封', 2, '15648544696', '北京市朝阳区', '548766', '123@qq.com', NULL, '', '2019-10-25 09:11:35');
INSERT INTO `customer` VALUES (47, 'Sakura', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '憨憨', 1, '15578568273', '柳州城市职业学院', '000000', '754358745@qq.com', NULL, '不关粥粥的事喔', '2019-10-25 09:11:42');
INSERT INTO `customer` VALUES (48, 'amgg', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '啊毛', 1, '17677430458', '柳州城市职业学院', '124587', '1175345922@qq.com', '48.jpg', '叫我靓仔。', '2019-10-25 09:11:50');
INSERT INTO `customer` VALUES (49, 'xiaomi', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '白云', 1, '18277589582', '柳州城市职业学院', '537400', '2287088066@qq.com', '49.jpg', '这个人很懒,什么也没有说。', '2019-10-25 09:12:11');
INSERT INTO `customer` VALUES (50, 'zjl', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '周杰伦', 1, '13633088047', '柳州城市职业学院', '545005', '529550987@qq.com', '50.jpg', '歌手', '2019-10-25 09:12:33');
INSERT INTO `customer` VALUES (51, 'yyqx', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '易燃', 1, '18520001128', '北京市昌平区回龙观镇北清路', '000000', '123@qq.com', NULL, '', '2019-10-25 09:12:34');
INSERT INTO `customer` VALUES (52, 'asd', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '小二', 2, '17777777777', '外太空', '545000', '8888@qq.com', NULL, '简介', '2019-10-25 09:13:06');
INSERT INTO `customer` VALUES (53, 'xiaoma', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '马化腾', 1, '15678078888', '柳州市恒大小区', '545000', 'xiaoma@qq.com', '53.jpg', '鹅厂搬运工', '2019-10-25 09:14:03');
INSERT INTO `customer` VALUES (54, '不要脸的你', 'fh58q2ea6thauof5ikg98fe2ciafh50r', 'buyaolian', 1, '18645678564', '北极半球', '530401', '123456789@qq.com', NULL, '你给我....', '2019-11-05 08:52:43');
INSERT INTO `customer` VALUES (55, '3问问', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '位试试', 1, '18894622108', '广西柳州', '537519', '1608318868@qq.com', NULL, '', '2019-11-05 08:54:44');
INSERT INTO `customer` VALUES (56, 'stud', 'fh58q2ea6thauof5ikg98fe2ciafh50r', 'nini', 2, '18378556608', '广西柳州', '537114', '13245@360.com', NULL, 'haohai', '2019-11-05 08:55:24');
INSERT INTO `customer` VALUES (57, '佩奇是只猪', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '小猪佩奇', 2, '18410358497', '柳州中山路8号', '000000', '123@qq.com', '57.jpg', '', '2019-11-05 08:56:21');
INSERT INTO `customer` VALUES (58, 'nininini', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '妮妮', 2, '18775534562', '广西柳州市鱼峰区', '253343', '12324345@126.com', NULL, '', '2019-11-05 08:56:40');
INSERT INTO `customer` VALUES (59, 'king', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '嘻嘻', 2, '18216463254', '柳州市', '231433', '231433@126.com', NULL, '', '2019-11-05 08:56:41');
INSERT INTO `customer` VALUES (60, 'jdsahfj ', 'fh58q2ea6thauof5ikg98fe2ciafh50r', 'adsfdsf', 2, '18697845987', '广西柳州', '689541', 'dfasdfdsaf@126.com', NULL, '', '2019-11-05 08:58:38');
INSERT INTO `customer` VALUES (61, 'avd', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '你好', 2, '18756987552', '柳州城市职业学院', '000000', '123@qq.com', NULL, '你好啊', '2019-11-05 08:58:54');
INSERT INTO `customer` VALUES (62, '是昭君哎', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '昭君', 2, '15253524689', '广西贵港市港南区', '537100', '2811389@qq.com', NULL, '', '2019-11-05 09:00:55');
INSERT INTO `customer` VALUES (63, 'Tany', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '谭谭谭', 2, '17677777771', '柳州城市职业学院', '515673', '123@qq.com', NULL, '', '2019-11-05 09:00:58');
INSERT INTO `customer` VALUES (64, 'wwww111111', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '小白', 1, '13878474643', '很多事卡拉', '748520', '1515@qq.com', NULL, '小小小iOS试试', '2019-11-05 11:50:59');
INSERT INTO `customer` VALUES (65, 'user11q', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '张11q', 1, '17376108213', '柳州q', '545005', '1312312q@qq.com', NULL, '张1q', '2020-01-25 22:14:19');
INSERT INTO `customer` VALUES (67, 'zxcvgb', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '从水水水水', 1, '13245678412', 'cxzczxc', '231456', NULL, NULL, NULL, '2020-03-01 16:11:56');
INSERT INTO `customer` VALUES (68, 'test', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '小明', 1, '13222222222', '地王21楼', '537022', NULL, '68.jpg', NULL, '2020-03-03 14:27:40');

-- ----------------------------
-- Table structure for log_admin_login
-- ----------------------------
DROP TABLE IF EXISTS `log_admin_login`;
CREATE TABLE `log_admin_login`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminId` int(20) NULL DEFAULT NULL COMMENT '管理账户外键',
  `ip` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ip地址',
  `loginResult` bit(1) NULL DEFAULT NULL COMMENT '表示登录是否成功,true表示登录成功，false表示登录失败',
  `loginTime` datetime(0) NULL DEFAULT NULL COMMENT '登陆时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `parentId`(`adminId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 182 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_admin_login
-- ----------------------------
INSERT INTO `log_admin_login` VALUES (54, -9, '192.168.52.1', b'0', '2020-03-01 12:33:59');
INSERT INTO `log_admin_login` VALUES (55, -9, '192.168.52.1', b'0', '2020-03-01 12:34:24');
INSERT INTO `log_admin_login` VALUES (56, -99, '192.168.52.1', b'0', '2020-03-01 12:34:29');
INSERT INTO `log_admin_login` VALUES (57, -99, '192.168.52.1', b'1', '2020-03-01 12:34:39');
INSERT INTO `log_admin_login` VALUES (58, -99, '192.168.52.1', b'0', '2020-03-01 12:52:17');
INSERT INTO `log_admin_login` VALUES (61, -99, '192.168.52.1', b'1', '2020-03-01 13:17:44');
INSERT INTO `log_admin_login` VALUES (62, -99, '192.168.52.1', b'0', '2020-03-01 13:17:51');
INSERT INTO `log_admin_login` VALUES (63, -99, '192.168.52.1', b'0', '2020-03-01 13:17:54');
INSERT INTO `log_admin_login` VALUES (64, -99, '192.168.52.1', b'1', '2020-03-01 13:17:58');
INSERT INTO `log_admin_login` VALUES (65, -99, '192.168.52.1', b'0', '2020-03-01 13:18:02');
INSERT INTO `log_admin_login` VALUES (66, -99, '192.168.52.1', b'1', '2020-03-01 13:18:20');
INSERT INTO `log_admin_login` VALUES (67, -99, '113.13.156.155', b'1', '2020-03-01 13:55:17');
INSERT INTO `log_admin_login` VALUES (68, -3, '180.136.132.246', b'1', '2020-03-01 16:06:02');
INSERT INTO `log_admin_login` VALUES (69, -99, '113.13.156.155', b'1', '2020-03-01 16:40:51');
INSERT INTO `log_admin_login` VALUES (70, -99, '113.13.156.155', b'1', '2020-03-01 17:45:39');
INSERT INTO `log_admin_login` VALUES (71, -99, '113.13.156.155', b'1', '2020-03-01 21:10:47');
INSERT INTO `log_admin_login` VALUES (72, -99, '113.13.156.155', b'1', '2020-03-03 10:45:07');
INSERT INTO `log_admin_login` VALUES (73, -99, '113.13.156.155', b'1', '2020-03-03 21:14:51');
INSERT INTO `log_admin_login` VALUES (74, -99, '113.13.156.155', b'1', '2020-03-04 12:06:45');
INSERT INTO `log_admin_login` VALUES (75, -99, '113.13.156.155', b'1', '2020-03-04 12:13:18');
INSERT INTO `log_admin_login` VALUES (76, -99, '113.13.156.155', b'1', '2020-03-04 21:57:43');
INSERT INTO `log_admin_login` VALUES (77, -99, '113.13.156.155', b'1', '2020-03-05 09:24:31');
INSERT INTO `log_admin_login` VALUES (78, -99, '113.13.156.155', b'0', '2020-03-06 09:08:42');
INSERT INTO `log_admin_login` VALUES (79, -99, '113.13.156.155', b'1', '2020-03-06 09:08:47');
INSERT INTO `log_admin_login` VALUES (80, -99, '113.13.156.155', b'1', '2020-03-06 11:52:46');
INSERT INTO `log_admin_login` VALUES (81, -1, '113.13.156.155', b'1', '2020-03-06 11:57:03');
INSERT INTO `log_admin_login` VALUES (82, -1, '223.104.22.43', b'1', '2020-03-06 12:26:27');
INSERT INTO `log_admin_login` VALUES (83, -1, '117.181.27.42', b'1', '2020-03-06 13:01:13');
INSERT INTO `log_admin_login` VALUES (84, -1, '223.104.22.43', b'1', '2020-03-06 14:05:57');
INSERT INTO `log_admin_login` VALUES (85, -1, '117.181.27.42', b'1', '2020-03-06 15:53:09');
INSERT INTO `log_admin_login` VALUES (86, -1, '117.181.27.42', b'1', '2020-03-06 15:53:21');
INSERT INTO `log_admin_login` VALUES (87, -1, '116.1.42.47', b'1', '2020-03-06 16:19:19');
INSERT INTO `log_admin_login` VALUES (88, -1, '117.181.27.42', b'1', '2020-03-06 17:03:18');
INSERT INTO `log_admin_login` VALUES (89, -99, '113.13.156.155', b'1', '2020-03-06 18:32:53');
INSERT INTO `log_admin_login` VALUES (90, -99, '113.13.156.155', b'1', '2020-03-06 23:14:13');
INSERT INTO `log_admin_login` VALUES (91, -99, '113.13.156.155', b'1', '2020-03-07 10:07:24');
INSERT INTO `log_admin_login` VALUES (92, -99, '113.13.156.155', b'1', '2020-03-07 11:39:05');
INSERT INTO `log_admin_login` VALUES (93, -99, '113.13.156.155', b'1', '2020-03-07 14:57:37');
INSERT INTO `log_admin_login` VALUES (94, -3, '120.239.123.102', b'1', '2020-03-07 15:04:04');
INSERT INTO `log_admin_login` VALUES (95, -3, '120.239.123.102', b'1', '2020-03-07 15:16:11');
INSERT INTO `log_admin_login` VALUES (96, -99, '113.13.156.155', b'1', '2020-03-07 18:20:52');
INSERT INTO `log_admin_login` VALUES (97, -1, '116.1.42.133', b'1', '2020-03-07 18:42:23');
INSERT INTO `log_admin_login` VALUES (98, -1, '116.1.42.133', b'1', '2020-03-07 19:13:48');
INSERT INTO `log_admin_login` VALUES (99, -1, '117.181.27.42', b'1', '2020-03-07 20:07:06');
INSERT INTO `log_admin_login` VALUES (100, -3, '120.239.123.83', b'1', '2020-03-08 02:09:14');
INSERT INTO `log_admin_login` VALUES (101, -99, '113.13.170.5', b'1', '2020-03-08 11:18:01');
INSERT INTO `log_admin_login` VALUES (102, -1, '116.1.42.133', b'1', '2020-03-08 13:50:16');
INSERT INTO `log_admin_login` VALUES (103, -99, '113.13.170.5', b'1', '2020-03-08 14:21:34');
INSERT INTO `log_admin_login` VALUES (104, -3, '120.239.123.83', b'1', '2020-03-08 14:30:22');
INSERT INTO `log_admin_login` VALUES (105, -3, '120.239.123.83', b'1', '2020-03-08 14:32:23');
INSERT INTO `log_admin_login` VALUES (106, -3, '120.239.123.83', b'1', '2020-03-08 14:33:30');
INSERT INTO `log_admin_login` VALUES (107, -99, '113.13.170.5', b'1', '2020-03-08 18:33:50');
INSERT INTO `log_admin_login` VALUES (108, -1, '113.13.170.5', b'1', '2020-03-08 18:36:04');
INSERT INTO `log_admin_login` VALUES (109, -1, '117.181.27.42', b'1', '2020-03-08 18:53:35');
INSERT INTO `log_admin_login` VALUES (110, -1, '117.181.27.42', b'1', '2020-03-08 20:24:50');
INSERT INTO `log_admin_login` VALUES (111, -1, '117.181.27.42', b'1', '2020-03-08 22:12:39');
INSERT INTO `log_admin_login` VALUES (112, -1, '117.181.27.42', b'1', '2020-03-08 22:30:06');
INSERT INTO `log_admin_login` VALUES (113, -99, '113.13.170.5', b'1', '2020-03-08 23:24:43');
INSERT INTO `log_admin_login` VALUES (114, -1, '117.181.27.42', b'1', '2020-03-09 00:00:59');
INSERT INTO `log_admin_login` VALUES (115, -99, '113.13.170.5', b'1', '2020-03-09 09:24:49');
INSERT INTO `log_admin_login` VALUES (116, -1, '116.1.42.133', b'1', '2020-03-09 13:10:15');
INSERT INTO `log_admin_login` VALUES (117, -99, '113.13.170.5', b'1', '2020-03-09 13:10:25');
INSERT INTO `log_admin_login` VALUES (118, -3, '120.239.123.83', b'1', '2020-03-09 14:34:55');
INSERT INTO `log_admin_login` VALUES (119, -1, '223.104.22.32', b'1', '2020-03-09 17:28:44');
INSERT INTO `log_admin_login` VALUES (120, -1, '117.181.27.42', b'1', '2020-03-09 17:45:33');
INSERT INTO `log_admin_login` VALUES (121, -1, '223.104.22.49', b'1', '2020-03-09 20:32:10');
INSERT INTO `log_admin_login` VALUES (122, -1, '117.181.27.42', b'1', '2020-03-09 20:37:21');
INSERT INTO `log_admin_login` VALUES (123, -1, '117.181.27.42', b'0', '2020-03-09 20:41:02');
INSERT INTO `log_admin_login` VALUES (124, -1, '117.181.27.42', b'1', '2020-03-09 20:41:08');
INSERT INTO `log_admin_login` VALUES (125, -1, '116.1.42.133', b'1', '2020-03-09 21:08:46');
INSERT INTO `log_admin_login` VALUES (126, -1, '223.104.22.49', b'1', '2020-03-09 21:38:45');
INSERT INTO `log_admin_login` VALUES (127, -1, '223.104.90.31', b'1', '2020-03-09 23:37:13');
INSERT INTO `log_admin_login` VALUES (128, -99, '113.13.170.5', b'1', '2020-03-09 23:54:21');
INSERT INTO `log_admin_login` VALUES (129, -1, '116.1.42.133', b'1', '2020-03-10 11:28:37');
INSERT INTO `log_admin_login` VALUES (130, -99, '113.13.170.5', b'1', '2020-03-10 13:12:35');
INSERT INTO `log_admin_login` VALUES (131, -1, '116.1.42.133', b'1', '2020-03-10 18:21:21');
INSERT INTO `log_admin_login` VALUES (132, -99, '113.13.170.5', b'1', '2020-03-10 19:53:00');
INSERT INTO `log_admin_login` VALUES (133, -1, '223.104.90.22', b'1', '2020-03-10 20:33:01');
INSERT INTO `log_admin_login` VALUES (134, -1, '223.104.22.188', b'1', '2020-03-10 21:46:24');
INSERT INTO `log_admin_login` VALUES (135, -99, '113.13.170.5', b'1', '2020-03-11 12:26:07');
INSERT INTO `log_admin_login` VALUES (136, -1, '116.1.42.133', b'1', '2020-03-11 16:02:59');
INSERT INTO `log_admin_login` VALUES (137, -99, '113.13.170.5', b'1', '2020-03-11 19:25:54');
INSERT INTO `log_admin_login` VALUES (138, -99, '113.13.170.5', b'1', '2020-03-11 20:43:03');
INSERT INTO `log_admin_login` VALUES (139, -1, '116.1.42.133', b'1', '2020-03-11 20:46:12');
INSERT INTO `log_admin_login` VALUES (140, -1, '223.104.90.25', b'1', '2020-03-11 21:16:56');
INSERT INTO `log_admin_login` VALUES (141, -1, '223.104.90.25', b'1', '2020-03-11 21:18:09');
INSERT INTO `log_admin_login` VALUES (142, -1, '116.1.42.133', b'1', '2020-03-11 21:19:25');
INSERT INTO `log_admin_login` VALUES (143, -99, '113.13.170.5', b'1', '2020-03-11 21:38:29');
INSERT INTO `log_admin_login` VALUES (144, -1, '113.13.170.5', b'1', '2020-03-11 21:40:25');
INSERT INTO `log_admin_login` VALUES (145, -99, '113.13.170.5', b'1', '2020-03-11 21:40:36');
INSERT INTO `log_admin_login` VALUES (146, -99, '113.13.170.5', b'1', '2020-03-11 22:24:46');
INSERT INTO `log_admin_login` VALUES (147, -3, '120.239.123.6', b'1', '2020-03-11 23:08:21');
INSERT INTO `log_admin_login` VALUES (148, -99, '113.13.170.5', b'1', '2020-03-12 00:40:05');
INSERT INTO `log_admin_login` VALUES (149, -3, '120.239.123.6', b'1', '2020-03-12 02:10:40');
INSERT INTO `log_admin_login` VALUES (150, -3, '120.239.123.6', b'1', '2020-03-12 09:02:57');
INSERT INTO `log_admin_login` VALUES (151, -99, '113.13.170.5', b'1', '2020-03-12 10:44:21');
INSERT INTO `log_admin_login` VALUES (152, -1, '116.1.42.133', b'1', '2020-03-12 13:58:58');
INSERT INTO `log_admin_login` VALUES (153, -99, '113.13.170.5', b'1', '2020-03-12 15:12:52');
INSERT INTO `log_admin_login` VALUES (154, -99, '113.13.170.5', b'1', '2020-03-12 22:17:52');
INSERT INTO `log_admin_login` VALUES (155, -99, '113.13.170.5', b'1', '2020-03-13 20:50:03');
INSERT INTO `log_admin_login` VALUES (156, -99, '113.13.170.5', b'1', '2020-03-14 19:45:50');
INSERT INTO `log_admin_login` VALUES (157, -1, '111.58.144.93', b'1', '2020-03-14 21:39:33');
INSERT INTO `log_admin_login` VALUES (158, -99, '113.13.170.5', b'1', '2020-03-14 23:02:17');
INSERT INTO `log_admin_login` VALUES (159, -99, '125.73.89.208', b'1', '2020-03-15 17:57:48');
INSERT INTO `log_admin_login` VALUES (160, -99, '125.73.89.208', b'1', '2020-03-15 22:15:09');
INSERT INTO `log_admin_login` VALUES (161, -99, '125.73.89.208', b'1', '2020-03-16 10:08:58');
INSERT INTO `log_admin_login` VALUES (162, -99, '125.73.89.208', b'1', '2020-03-16 10:25:22');
INSERT INTO `log_admin_login` VALUES (163, -1, '116.1.47.146', b'1', '2020-03-16 20:58:30');
INSERT INTO `log_admin_login` VALUES (164, -1, '117.181.27.252', b'1', '2020-03-16 21:40:53');
INSERT INTO `log_admin_login` VALUES (165, -99, '117.141.205.10', b'1', '2020-03-17 13:54:50');
INSERT INTO `log_admin_login` VALUES (166, -99, '125.73.89.208', b'1', '2020-03-17 21:17:04');
INSERT INTO `log_admin_login` VALUES (167, -99, '221.7.206.202', b'1', '2020-03-18 13:27:07');
INSERT INTO `log_admin_login` VALUES (168, -99, '117.141.205.13', b'1', '2020-03-19 09:21:04');
INSERT INTO `log_admin_login` VALUES (169, -1, '116.1.41.208', b'1', '2020-03-19 17:19:39');
INSERT INTO `log_admin_login` VALUES (170, -99, '192.168.52.1', b'1', '2020-03-21 12:00:15');
INSERT INTO `log_admin_login` VALUES (171, -99, '192.168.52.1', b'1', '2020-03-21 16:03:19');
INSERT INTO `log_admin_login` VALUES (172, -99, '192.168.52.1', b'1', '2020-03-21 16:08:40');
INSERT INTO `log_admin_login` VALUES (173, -99, '113.13.170.248', b'1', '2020-03-22 10:03:25');
INSERT INTO `log_admin_login` VALUES (174, -1, '117.183.52.145', b'1', '2020-03-22 12:40:27');
INSERT INTO `log_admin_login` VALUES (175, -99, '113.13.170.248', b'1', '2020-03-22 13:30:42');
INSERT INTO `log_admin_login` VALUES (176, -1, '117.183.52.145', b'1', '2020-03-22 16:54:37');
INSERT INTO `log_admin_login` VALUES (177, -99, '113.13.170.248', b'1', '2020-03-22 23:57:27');
INSERT INTO `log_admin_login` VALUES (178, -99, '192.168.52.1', b'1', '2020-03-23 14:27:35');
INSERT INTO `log_admin_login` VALUES (179, -99, '113.13.170.248', b'1', '2020-03-23 14:54:27');
INSERT INTO `log_admin_login` VALUES (180, -99, '113.13.170.248', b'1', '2020-03-23 21:21:04');
INSERT INTO `log_admin_login` VALUES (181, -99, '113.13.170.248', b'1', '2020-03-24 16:45:44');

-- ----------------------------
-- Table structure for log_customer_login
-- ----------------------------
DROP TABLE IF EXISTS `log_customer_login`;
CREATE TABLE `log_customer_login`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(20) NULL DEFAULT NULL COMMENT '客户外键',
  `ip` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ip地址',
  `loginResult` bit(1) NULL DEFAULT NULL COMMENT '表示登录是否成功,true表示登录成功，false表示登录失败',
  `loginTime` datetime(0) NULL DEFAULT NULL COMMENT '登陆时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `parentId`(`customerId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_customer_login
-- ----------------------------
INSERT INTO `log_customer_login` VALUES (4, 1, '127.0.0.1', b'0', '2020-02-29 15:57:15');
INSERT INTO `log_customer_login` VALUES (5, 1, '127.0.0.1', b'0', '2020-02-29 15:57:33');
INSERT INTO `log_customer_login` VALUES (6, 1, '127.0.0.1', b'1', '2020-02-29 15:57:43');
INSERT INTO `log_customer_login` VALUES (7, 1, '127.0.0.1', b'0', '2020-02-29 16:03:44');
INSERT INTO `log_customer_login` VALUES (8, 1, '127.0.0.1', b'1', '2020-02-29 16:04:01');
INSERT INTO `log_customer_login` VALUES (9, 1, '127.0.0.1', b'0', '2020-02-29 19:52:24');
INSERT INTO `log_customer_login` VALUES (10, 1, '127.0.0.1', b'0', '2020-02-29 19:52:26');
INSERT INTO `log_customer_login` VALUES (11, 9, '127.0.0.1', b'0', '2020-02-29 19:52:40');
INSERT INTO `log_customer_login` VALUES (12, 9, '127.0.0.1', b'1', '2020-02-29 19:52:42');
INSERT INTO `log_customer_login` VALUES (13, 9, '127.0.0.1', b'0', '2020-02-29 19:52:46');
INSERT INTO `log_customer_login` VALUES (14, 9, '127.0.0.1', b'0', '2020-02-29 19:52:52');
INSERT INTO `log_customer_login` VALUES (15, 1, '127.0.0.1', b'1', '2020-02-29 19:52:59');
INSERT INTO `log_customer_login` VALUES (16, 1, '127.0.0.1', b'0', '2020-02-29 19:53:05');
INSERT INTO `log_customer_login` VALUES (17, 1, '127.0.0.1', b'0', '2020-02-29 21:25:30');
INSERT INTO `log_customer_login` VALUES (18, 1, '127.0.0.1', b'0', '2020-02-29 21:25:32');
INSERT INTO `log_customer_login` VALUES (19, 1, '127.0.0.1', b'1', '2020-02-29 21:26:13');
INSERT INTO `log_customer_login` VALUES (20, 1, '127.0.0.1', b'0', '2020-02-29 21:26:30');
INSERT INTO `log_customer_login` VALUES (21, 1, '127.0.0.1', b'0', '2020-02-29 21:26:31');
INSERT INTO `log_customer_login` VALUES (22, 1, '125.73.89.189', b'0', '2020-02-29 21:39:57');
INSERT INTO `log_customer_login` VALUES (25, 1, '125.73.89.189', b'0', '2020-02-29 23:31:26');
INSERT INTO `log_customer_login` VALUES (26, 1, '125.73.89.189', b'1', '2020-02-29 23:31:33');
INSERT INTO `log_customer_login` VALUES (27, 1, '113.13.156.155', b'1', '2020-03-01 16:54:29');
INSERT INTO `log_customer_login` VALUES (28, 1, '113.13.156.155', b'1', '2020-03-01 20:46:40');
INSERT INTO `log_customer_login` VALUES (29, 1, '171.109.177.228', b'1', '2020-03-02 09:12:49');
INSERT INTO `log_customer_login` VALUES (30, 1, '113.13.156.155', b'1', '2020-03-03 21:57:13');
INSERT INTO `log_customer_login` VALUES (31, 1, '113.13.156.155', b'1', '2020-03-04 10:12:35');
INSERT INTO `log_customer_login` VALUES (32, 68, '43.247.230.74', b'1', '2020-03-04 17:03:49');
INSERT INTO `log_customer_login` VALUES (33, 9, '223.104.22.43', b'1', '2020-03-06 12:20:20');
INSERT INTO `log_customer_login` VALUES (34, 9, '116.1.42.47', b'1', '2020-03-06 16:17:48');
INSERT INTO `log_customer_login` VALUES (35, 68, '43.247.230.74', b'1', '2020-03-06 17:24:55');
INSERT INTO `log_customer_login` VALUES (36, 1, '113.13.156.155', b'1', '2020-03-07 11:23:00');
INSERT INTO `log_customer_login` VALUES (37, 1, '113.13.156.155', b'1', '2020-03-07 11:39:23');
INSERT INTO `log_customer_login` VALUES (38, 1, '113.13.170.5', b'1', '2020-03-08 18:10:34');
INSERT INTO `log_customer_login` VALUES (39, 1, '113.13.170.5', b'1', '2020-03-09 15:26:57');
INSERT INTO `log_customer_login` VALUES (40, 1, '113.13.170.5', b'1', '2020-03-10 10:28:36');
INSERT INTO `log_customer_login` VALUES (41, 1, '113.13.170.5', b'1', '2020-03-12 23:21:49');

-- ----------------------------
-- Table structure for log_product_click
-- ----------------------------
DROP TABLE IF EXISTS `log_product_click`;
CREATE TABLE `log_product_click`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) NULL DEFAULT NULL COMMENT '产品外键',
  `customerId` int(11) NULL DEFAULT NULL COMMENT '客户外键',
  `ip` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ip地址',
  `clickTime` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `parentId`(`productId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_product_click
-- ----------------------------
INSERT INTO `log_product_click` VALUES (42, 207, NULL, '127.0.0.1', '2020-03-23 01:11:00');
INSERT INTO `log_product_click` VALUES (43, 207, NULL, '127.0.0.1', '2020-03-23 01:11:09');
INSERT INTO `log_product_click` VALUES (44, 156, 1, '127.0.0.1', '2020-03-23 01:11:36');
INSERT INTO `log_product_click` VALUES (45, 156, 1, '127.0.0.1', '2020-03-23 01:11:44');
INSERT INTO `log_product_click` VALUES (46, 156, NULL, '127.0.0.1', '2020-03-23 09:46:29');
INSERT INTO `log_product_click` VALUES (47, 156, NULL, '127.0.0.1', '2020-03-23 11:45:29');
INSERT INTO `log_product_click` VALUES (48, 156, NULL, '127.0.0.1', '2020-03-23 12:49:02');
INSERT INTO `log_product_click` VALUES (49, 156, NULL, '127.0.0.1', '2020-03-23 12:49:20');
INSERT INTO `log_product_click` VALUES (50, 156, NULL, '127.0.0.1', '2020-03-23 12:53:48');
INSERT INTO `log_product_click` VALUES (51, 156, NULL, '127.0.0.1', '2020-03-23 12:53:53');
INSERT INTO `log_product_click` VALUES (52, 156, NULL, '127.0.0.1', '2020-03-23 13:20:05');
INSERT INTO `log_product_click` VALUES (53, 156, NULL, '127.0.0.1', '2020-03-23 13:22:12');
INSERT INTO `log_product_click` VALUES (54, 156, NULL, '127.0.0.1', '2020-03-23 13:42:10');
INSERT INTO `log_product_click` VALUES (55, 207, NULL, '127.0.0.1', '2020-03-23 13:44:43');
INSERT INTO `log_product_click` VALUES (56, 207, NULL, '127.0.0.1', '2020-03-23 14:28:08');
INSERT INTO `log_product_click` VALUES (57, 207, NULL, '127.0.0.1', '2020-03-23 14:32:54');
INSERT INTO `log_product_click` VALUES (58, 207, NULL, '127.0.0.1', '2020-03-23 14:32:55');
INSERT INTO `log_product_click` VALUES (59, 207, NULL, '113.13.170.248', '2020-03-23 14:48:02');
INSERT INTO `log_product_click` VALUES (60, 152, NULL, '113.13.170.248', '2020-03-23 14:52:47');
INSERT INTO `log_product_click` VALUES (61, 102, NULL, '113.13.170.248', '2020-03-23 14:53:50');
INSERT INTO `log_product_click` VALUES (62, 102, NULL, '113.13.170.248', '2020-03-23 14:54:57');
INSERT INTO `log_product_click` VALUES (63, 102, NULL, '113.13.170.248', '2020-03-23 21:26:36');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NULL DEFAULT NULL COMMENT '父菜单id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名',
  `orderNum` int(11) NULL DEFAULT NULL COMMENT '优先级排序',
  `enabled` bit(1) NULL DEFAULT b'1' COMMENT '是否可用',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '服务器地址',
  `component` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件名称（用于前端生成组件的名称）',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件地址',
  `route` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表示路由的跳转地址（前端vue的跳转，通过点击该菜单跳转到的前端url）',
  `iconCls` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片地址',
  `requireAuth` bit(1) NULL DEFAULT NULL COMMENT '是否要求登陆后才能访问',
  `display` bit(1) NULL DEFAULT NULL COMMENT '该菜单是否隐藏',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `parentId`(`parentId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (2, NULL, '管理员模块', 10, b'1', '/', 'Home', '/home', '', 'el-icon-user-solid', b'1', b'1');
INSERT INTO `menu` VALUES (3, NULL, '客户模块', 20, b'1', '/', 'Home', '/home', 'D', 'el-icon-s-custom', b'1', b'1');
INSERT INTO `menu` VALUES (4, NULL, '产品模块', 100, b'1', '/', 'Home', '/home', 'DD', 'el-icon-food', b'1', b'1');
INSERT INTO `menu` VALUES (5, NULL, '订单模块', 100, b'1', '/', 'Home', '/home', '', 'el-icon-s-goods', b'1', b'1');
INSERT INTO `menu` VALUES (6, NULL, '系统管理', 100, b'1', '/', 'Home', '/home', 'C', 'el-icon-s-tools', b'1', b'1');
INSERT INTO `menu` VALUES (7, NULL, '个人信息', 5, b'1', '/employee/basic/**', 'EmpBasic', '/emp/basic', '', 'el-icon-user', b'1', b'1');
INSERT INTO `menu` VALUES (8, 2, '权限管理', 100, b'1', '/employee/advanced/**', 'PurviewManage', '/emp/adv', '/admin/adminmanage/PurviewManage', NULL, b'1', b'1');
INSERT INTO `menu` VALUES (10, 3, '客户管理', 10, b'1', '/personnel/ec/**', 'CustomerManage', '/per/ec', '/admin/customermanage/CustomerManage', NULL, b'1', b'1');
INSERT INTO `menu` VALUES (14, 4, '产品类别管理', 100, b'1', '/salary/sob/**', 'SalSob', '/sal/sob', '/admin/product/ProductTypeManage', NULL, b'1', b'1');
INSERT INTO `menu` VALUES (15, 4, '产品管理', 100, b'1', '/salary/sobcfg/**', 'SalSobCfg', '/sal/sobcfg', '/admin/product/ProductManage', NULL, b'1', b'1');
INSERT INTO `menu` VALUES (23, 6, '基础信息设置', 10, b'1', '/system/basic/**', 'SysBasic', '/sys/basic', '/admin/webconfig/WebConfigEdit', NULL, b'1', b'1');
INSERT INTO `menu` VALUES (24, 6, '404界面', 100, b'1', '/system/cfg/**', 'SysCfg', '/sys/cfg', 'B', NULL, b'1', b'1');
INSERT INTO `menu` VALUES (29, 7, '密码修改', 100, b'1', '12', NULL, '/emp/basic/passowrd', '/admin/admin/PasswordEdit', 'el-icon-lock', b'1', b'1');
INSERT INTO `menu` VALUES (30, 7, '基本信息修改', 100, b'1', '1', NULL, '/emp/basic/information', '/admin/admin/AdminEdit', 'el-icon-s-custom', b'1', b'1');
INSERT INTO `menu` VALUES (32, 2, '角色管理', 100, b'1', '/rolemanage', 'RoleManage', NULL, '/admin/adminmanage/RoleManage', NULL, b'1', b'1');
INSERT INTO `menu` VALUES (33, 2, '账户管理', 100, b'1', '/adminmanage', 'AdminManage', NULL, '/admin/adminmanage/AdminManage', NULL, b'1', b'1');
INSERT INTO `menu` VALUES (53, 2, '菜单管理', 20, b'1', '/menumanage', 'MenuManage', '', '/admin/adminmanage/MenuManage', NULL, b'1', b'1');
INSERT INTO `menu` VALUES (55, 5, '订单管理', 100, b'1', '/', '', '', '/admin/productorder/ProductOrderManage', '', b'1', b'1');
INSERT INTO `menu` VALUES (56, 5, '子订单管理', 100, b'1', '/', '', '', '/admin/productorder/ProductOrderDetailManage', '', b'1', b'1');
INSERT INTO `menu` VALUES (57, 6, '日志管理', 20, b'1', '/', '', '', '', '', b'1', b'1');
INSERT INTO `menu` VALUES (58, 57, '客户登陆日志', 20, b'1', '/', '', '', '/admin/webconfig/LogManage/LogOfCustomerLoginManage', '', b'1', b'1');
INSERT INTO `menu` VALUES (59, 57, '管理员登陆日志', 10, b'1', '/', '', '', '/admin/webconfig/LogManage/LogOfAdminLoginManage', '', b'1', b'1');
INSERT INTO `menu` VALUES (60, 57, '产品访问日志', 100, b'1', '/', '', '', '/admin/webconfig/LogManage/LogOfProductClickManage', '', b'1', b'1');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品关键字',
  `productTypeId` int(11) NULL DEFAULT NULL COMMENT '所属产品类别编号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品名称',
  `orderNum` int(11) NULL DEFAULT NULL COMMENT '产品优先级',
  `recommendation` tinyint(4) NULL DEFAULT NULL COMMENT '产品推荐指数',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '产品描述',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '产品详细描述',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '产品现价',
  `originalPrice` decimal(10, 2) NULL DEFAULT NULL COMMENT '产品原价',
  `picUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品图片路径',
  `repository` int(11) NULL DEFAULT 0 COMMENT '库存',
  `click` int(11) NULL DEFAULT 0 COMMENT '点击数',
  `onSale` bit(1) NULL DEFAULT b'1' COMMENT '是否上架（1表示上架，但是要考虑上架时间；0表示不上架）',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '产品创建时间',
  `creatorId` int(11) NULL DEFAULT NULL COMMENT '创建管理员',
  `finalEditorId` int(11) NULL DEFAULT NULL COMMENT '最后编辑管理员',
  `updateTime` datetime(0) NULL DEFAULT NULL COMMENT '最后编辑时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `productTypeId`(`productTypeId`) USING BTREE,
  INDEX `creatorId`(`creatorId`) USING BTREE,
  INDEX `finalEditorId`(`finalEditorId`) USING BTREE,
  INDEX `onSale`(`onSale`) USING BTREE,
  INDEX `recommendation`(`recommendation`) USING BTREE,
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`creatorId`) REFERENCES `admin` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `product_ibfk_3` FOREIGN KEY (`finalEditorId`) REFERENCES `admin` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE = InnoDB AUTO_INCREMENT = 227 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (71, 25, '芒果冰', 100, 1, '芒果冰是近年来在台湾掀起一股热潮的夏日冰品', '<p>芒果冰是近年来在台湾掀起一股热潮的夏日冰品，有别于传统的刨冰，加粉圆、芋圆、仙草等，它加入的是新鲜的芒果、炼乳以及芒果冰激凌覆盖在挫冰或绵绵冰上面，有着清凉解暑的功用，在现在讲求高品质以及新鲜卫生的社会环境，造成很大的回响。许多地方的传统冰店都纷纷卖起芒果冰或各式水果冰。 　　有别于芒果冰沙，芒果 芒果冰(1张)冰里的芒果通常是切成小块状。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583744178319059539.jpg\" title=\"1583744178319059539.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583744178351044892.jpg\" title=\"1583744178351044892.jpg\"/></p><p><br/></p>', 15.00, 21.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583744190178042861.jpg', 1818, 3001, b'1', '2017-09-07 20:24:21', -99, -1, '2020-03-09 16:56:33');
INSERT INTO `product` VALUES (72, 25, '8寸蛋糕', 100, 1, '蛋糕是一种古老的西点，一般是由烤箱制作的，蛋糕是用鸡蛋、白糖、小麦粉为主要原料。以牛奶、果汁、奶粉、香粉、色拉油、水，起酥油、泡打粉为辅料。经过搅拌、调制、烘烤后制成一种像海绵的点心。', '<p>蛋糕是一种古老的西点，一般是由烤箱制作的，蛋糕是用鸡蛋、白糖、小麦粉为主要原料。以牛奶、果汁、奶粉、香粉、色拉油、水，起酥油、泡打粉为辅料。经过搅拌、调制、烘烤后制成一种像海绵的点心。</p><p>蛋糕是一种面食，通常是甜的，典型的蛋糕是以烤的方式制作出来。蛋糕的材料主要包括了面粉、甜味剂(通常是蔗糖)、黏合剂(一般是鸡蛋，素食主义者可用面筋和淀粉代替)、起酥油（一般是牛油或人造牛油，低脂肪含量的蛋糕会以浓缩果汁代替），液体（牛奶，水或果汁），香精和发酵剂（例如酵母或者发酵粉）。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583744094149072176.jpg\" title=\"1583744094149072176.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583744094290093698.jpg\" title=\"1583744094290093698.jpg\"/></p><p><br/></p>', 66.50, 88.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583652296173019376.jpg', 1841, 123, b'1', '2017-09-07 20:28:07', -99, -1, '2020-03-09 16:55:01');
INSERT INTO `product` VALUES (73, 25, '奶油蛋糕', 100, 1, '奶油蛋糕是用鸡蛋奶油制作的一道甜品。奶油蛋糕是一种将奶油涂在蛋糕表面上的糕点制品，凸显出浓浓的奶香味以及蛋糕的香软。\n\n', '<p>奶油蛋糕是用鸡蛋奶油制作的一道甜品。奶油蛋糕是一种将奶油涂在蛋糕表面上的糕点制品，凸显出浓浓的奶香味以及蛋糕的香软。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583743980417031143.jpg\" title=\"1583743980417031143.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583743980480015096.jpg\" title=\"1583743980480015096.jpg\"/></p><p><br/></p>', 13.00, 28.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675235027064694.jpg', 2260, 645, b'1', '2017-09-07 20:29:16', -99, -1, '2020-03-09 16:53:19');
INSERT INTO `product` VALUES (74, 25, '糯米糍', 100, 1, '糯米糍又叫状元糍，传统名点。糯米糍以糯米为主料，辅以其他佐料加工而成。\n\n糯米糍可食用、待客，风干之后，还可以作为馈赠亲友的好礼品。', '<p>糯米糍又叫状元糍，传统名点。糯米糍以糯米为主料，辅以其他佐料加工而成。</p><p>糯米糍可食用、待客，风干之后，还可以作为馈赠亲友的好礼品。<img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583743904810015780.jpeg\" title=\"1583743904810015780.jpeg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583743904950013769.jpg\" title=\"1583743904950013769.jpg\"/></p><p><br/></p>', 12.00, 16.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583653279171002561.jpg', 1806, 545, b'1', '2017-09-07 20:30:33', -99, -1, '2020-03-12 14:27:25');
INSERT INTO `product` VALUES (75, 47, '烤鸡块', 100, 1, '鲜嫩鸡块，香~', '<p>上好的鸡块，加上孜然，炸的飘香</p><p>1、鸡洗净，切块，配蔬也洗净切块！2、自行增加，随意些 ，没有固定的量，喜欢什么味道可适量多加一点，最后尝下咸淡，别太咸3、将调料与鸡块、蔬菜混合一起放入冰雪腌制3小时左右！</p><p>2、放入烤箱，上下火200度，1小时！</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583677726539067022.jpg\" title=\"1583677726539067022.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583677726554088008.jpg\" title=\"1583677726554088008.jpg\"/></p><p><br/></p>', 14.00, 16.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583669179904093079.jpg', 2674, 45, b'1', '2017-09-07 20:31:47', -99, -1, '2020-03-08 22:28:50');
INSERT INTO `product` VALUES (76, 6, '桂林米粉', 100, 1, '桂林米粉甲天下，加点卤水，泡菜，芝麻，花生油，辣椒更棒哦', '桂林米粉以其独特的风味远近闻名，据说是源于中国桂林的特色小吃，但并未得到任何证实，桂林市民经常以此做为早餐。其做工考究，先将上好大米磨成浆，装袋滤干，揣成粉团煮熟后压榨成圆根或片状即成。圆的称米粉，片状的称切粉，通称米粉，其特点是洁白、细嫩、软滑、爽口。其吃法多样，最讲究卤水的制作，其工艺各家有异，大致以猪、牛骨、罗汉果和各式佐料熬煮而成，香味浓郁，卤水的用料和做法不同，米粉的风味也不同。现在桂林米粉或模仿桂林米粉的菜式在中国各地可见，更传播至东亚各地区。桂林本地的米粉都搭配酸笋，味道很浓且无汤。在中国大陆一般分为生菜粉、牛腩粉、三鲜粉、原汤粉、卤菜粉、酸辣粉、马肉米粉、担子米粉等。<p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583675119935034252.jpg\" title=\"1583675119935034252.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583675119982095874.jpeg\" title=\"1583675119982095874.jpeg\"/></p>', 8.00, 12.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675235421061119.jpg', 2530, 34, b'1', '2017-09-07 20:32:57', -99, -1, '2020-03-08 21:45:26');
INSERT INTO `product` VALUES (77, 6, '老友粉', 100, 1, '驱风散寒、通窍醒味	\n酸辣咸香兼备', '<p>老友粉是广西南宁的本土美食，于2007年入选南宁公布的首批26项非物质文化遗产名录，与柳州的螺蛳粉、桂林的桂林米粉同为广西“三大米粉”。南宁人认为酸辣可口的老友粉夏天吃着开胃，冬天吃着驱寒。老友粉是当地没有阶层分化的小吃代表，非常具有民生气质。这种粉能以自己独特的方式，把酸和辣巧妙的结合在一起，形成了南宁小吃的独特风味之一。其主要食材有河粉、酸笋、豆豉、姜丝、葱花、肉类、辣椒、胡椒粉。<img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583674983777048556.jpg\" title=\"1583674983777048556.jpg\" alt=\"1老友粉.jpg\"/></p>', 6.00, 10.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675235275070878.jpg', 2419, 45, b'1', '2017-09-07 20:34:15', -99, -1, '2020-03-08 21:43:40');
INSERT INTO `product` VALUES (78, 6, '叉烧饭', 100, 1, '是一种熟食肉', '<p>叉烧饭（简称叉饭）为中国广东、台湾、香港、澳门、新加坡和马来西亚等地区的茶餐厅、酒楼及港式快餐店常见的食品，是一道色香味俱全的汉族名点，属于粤菜系。原料为猪肉里脊、叉烧酱、大米、小油菜、葱蒜等，由叉烧加叉烧汁或酱油盖住1碗（1碟）白饭而成。<span style=\"color: rgb(51, 51, 51); font-family: arial, &quot;pingfang sc&quot;, stheiti, simsun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"></span><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583674645992027572.jpg\" title=\"1583674645992027572.jpg\" alt=\"1叉烧饭.jpg\"/></p>', 12.00, 15.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675235429002841.jpg', 2117, 234, b'1', '2017-09-07 20:35:24', -99, -1, '2020-03-08 21:48:20');
INSERT INTO `product` VALUES (79, 6, '鸡腿饭', 100, 1, '大鸡腿配上秘制炸酱，加上香喷喷的米饭，又是一顿饱腹佳品。主要营养成分：蛋白质\n', '<p>农家大鸡腿，营养又美味，鸡腿饭是一道菜，使用鸡腿、青椒、黄瓜、米饭做成。依据食谱步骤来完成这道料理。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583674508538016853.jpg\" title=\"1583674508538016853.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583674510866075933.jpeg\" title=\"1583674510866075933.jpeg\"/></p><p><br/></p>', 8.00, 12.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675235528055206.jpg', 2415, 5645, b'1', '2017-09-07 20:35:50', -99, -1, '2020-03-08 21:35:41');
INSERT INTO `product` VALUES (80, 6, '白切鸡饭', 100, 1, '真的很好吃', '<p>1.鸡肉：一锅水，葱姜，八角，花椒，料酒，盐，把小母鸡对切（这样熟的快一些），盖上盖子，开锅后转小火，15分钟，关火，再闷20分钟。因为是孩子吃，所以宁熟勿嫩。</p><p>2.料汁：小火，上油，炒香葱姜末，加盐，白胡椒，调匀，倒入半杯冰水即可。</p><p>3.捞出鸡，放入冰水中浸泡，10分钟，空水，切块装盘，浇上料汁就好了。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583674312254092661.png\" title=\"1583674312254092661.png\" alt=\"1白切鸡.png\"/></p><p><br/></p>', 12.00, 18.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583674329067063044.png', 2301, 324, b'1', '2017-09-07 20:37:02', -99, -1, '2020-03-08 21:32:12');
INSERT INTO `product` VALUES (81, 6, '火海捞月', 100, 1, '	\n鱼、肉、豆制品、酸菜、素食材等，底汤配料，撒尿牛肉丸，麻辣烫面条，白菜，海带。各种食材混合，浇上鲜汤再来点辣椒红油，那酸爽~', '<p>麻辣烫（Spicy Hot Pot）是一种起源于川渝地区，流行于中国各地的传统特色小吃，是川渝地区最有特色、最能代表“川味”的饮食之一。</p><p>麻辣烫味道麻辣鲜香、回味无穷，一般放进麻辣烫的食材都以容易烫熟的为主，如牛肉、毛肚、藕片、豆制品等。麻辣火锅也是吸收了麻辣烫的优点改良而来。<img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583674089643043972.jpeg\" title=\"1583674089643043972.jpeg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583674089783058764.jpg\" title=\"1583674089783058764.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583674089971087938.jpg\" title=\"1583674089971087938.jpg\"/></p><p><br/></p>', 15.00, 20.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583674102643089540.jpg', 12436, 22, b'1', '2017-09-07 20:37:30', -99, -1, '2020-03-12 14:22:11');
INSERT INTO `product` VALUES (83, 25, '泰芒了', 100, 1, '真的很好吃，厦门美食', '<p>&quot;泰芒了&quot;为赖三金（厦门）餐饮管理有限公司于2015年推出的旗下饮品品牌。赖三金（厦门）餐饮管理有限公司在2015年12月[1]申请的在第35类商品/服务上使用“泰芒了”注册商标获得核准，商标注册证号第第18630115号。</p><p>“泰芒了”项目由赖三金公司创立，2015年12月，赖三金公司就已经向国家工商行政管理总局商标局申请注册“泰芒了”商标。2018年2月，商标局作出准予赖三金公司注册的决定。2018年4月7日，“泰芒了”注册商标获国家工商行政管理总局商标局核准。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583743701517001624.png\" title=\"1583743701517001624.png\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583743701595032850.jpg\" title=\"1583743701595032850.jpg\"/></p><p><br/></p>', 16.00, 28.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675235635066818.jpg', 2267, 0, b'1', '2017-09-07 20:40:30', -99, -1, '2020-03-09 16:48:40');
INSERT INTO `product` VALUES (84, 25, '南瓜饼', 100, 1, '一般人群，老少皆宜\n维生素,膳食纤维，蛋白质，膳食纤维', '南瓜饼是一道传统菜式，是主要以南瓜为原料做成的饼，在不同地方的制作方法有多不同。南瓜中对人体的有益成分有：多糖、氨基酸、活性蛋白、类胡罗卜素及多种微量元素等。<p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583743566051049659.jpg\" title=\"1583743566051049659.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583743566051064861.jpeg\" title=\"1583743566051064861.jpeg\"/></p>', 21.00, 25.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675235811076829.jpg', 2471, 234, b'1', '2017-09-07 20:41:39', -99, -1, '2020-03-09 16:46:09');
INSERT INTO `product` VALUES (85, 6, '特色猪肉肠粉', 100, 1, '早餐首选美食', '<p>1. 准备工作：将猪肉剁成肉沫，加入少许盐和酱油拌匀腌制。同时将粉类材料称量在同一个容器中，将水逐渐加入开成粉浆。 &nbsp; &nbsp;</p><p>2. 锅中装入适量水大火烧开。肠粉盘刷一层熟油，然后舀进适量粉浆。（不宜太多，否则肠粉会太厚） &nbsp; &nbsp;</p><p>3. 舀一勺肉沫，用勺子将肉沫按散大致均匀分布开来。 &nbsp; &nbsp;</p><p>4. 放入锅中大火蒸2分钟。在差不多好的时候马上准备第二盘。 &nbsp; &nbsp;</p><p>5. 取出第一盘后马上将第二盘放入。如此重复。（如果蒸的份量很多要注意锅中的水有没有蒸干，水不够了要加水烧开后再放入肠粉蒸，必须是水滚后用大火蒸哈） &nbsp; &nbsp;</p><p>6. 取出的肠粉马上用配套的铲子铲起放入盘中。 &nbsp; &nbsp;</p><p>7. 搭配自己喜欢的酱料即可食用。推荐酱油组合：1.小碗中倒入适量酱油备用。2.烧热适量油放入蒜蓉爆香，然后盛起倒入酱油碗中即可。3.个人还喜欢再搭配广式黄芥末食用，赞！ &nbsp; &nbsp;</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583673824203089609.jpg\" title=\"1583673824203089609.jpg\" alt=\"1特色猪肉肠粉.jpg\"/></p>', 12.00, 16.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675235759036894.jpg', 2048, 0, b'1', '2017-09-07 20:42:25', -99, -1, '2020-03-08 21:26:11');
INSERT INTO `product` VALUES (86, 25, '巧克力冰淇淋', 100, 1, '休闲\n巧克力冰淇淋，风靡全球的冰点王子。', '<p>巧克力冰淇淋，风靡全球的冰点王子。因其高贵诱人的外形、难以描述的美味、无法抵挡的魅力，而闻名天下。它给人带来的不仅仅是风花雪月般的美妙滋味，更因其经久不衰的丰厚利润为众多商家创造了巨大的冰淇淋财富，食客盈门、钱柜爆满、好评如潮的情景，尽显巧克力冰淇淋的神奇与名家风范。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583743445226077403.jpg\" title=\"1583743445226077403.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583743445444085146.jpeg\" title=\"1583743445444085146.jpeg\"/></p><p><br/></p>', 3.00, 6.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583743459288068636.jpg', 1901, 32, b'1', '2017-09-07 23:22:49', -99, -1, '2020-03-09 16:44:24');
INSERT INTO `product` VALUES (95, 25, '芭比西柚茶', 100, 1, '西柚含维他命C等非常丰富，是含糖分较少的水果，减肥人士的餐单都少不了它。\n\n', '<p>1、 柚子洗干净，用温水烫几次</p><p>2、 柚子去皮，记得去皮的时候一定要小心，皮要削的薄薄的，否则会有苦味</p><p>3、把削好的皮切的细细的</p><p>4、削好 的皮一定要用盐水浸泡，去掉涩味,将果肉剥好 用榨汁机搅碎</p><p>5、将搅碎的 柚子放锅里加皮和冰糖一起熬煮，熬的时候要用文火，用筷子不时搅拌即可</p><p>6、待熬好的&nbsp;柚子茶冷却后，加入蜂蜜即可。一定要凉透，否则会破坏蜂蜜的营养</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583743325088059873.jpg\" title=\"1583743325088059873.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583743325182011798.jpg\" title=\"1583743325182011798.jpg\"/></p><p><br/></p>', 6.00, 15.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583652423860085228.jpg', 1764, 0, b'1', '2019-09-05 17:13:22', -99, -1, '2020-03-09 16:42:13');
INSERT INTO `product` VALUES (96, 46, '金枪鱼黄瓜寿司', 100, 1, '由金枪鱼、黄瓜制成的金枪鱼寿司', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">金枪鱼不但味感鲜脆爽口，蛋白质含量高，具有较高的营养价值，而且富有药用价值。</span>金枪鱼黄瓜寿司，美味好吃，低脂低盐，健康的不二选择！</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583678300682061042.jpg\" title=\"1583678300682061042.jpg\"/></p><p><br/></p><p><br/></p>', 19.90, 29.90, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675520105092012.jpg', 2795, 1111, b'1', '2019-09-05 17:27:04', -99, -1, '2020-03-08 23:57:31');
INSERT INTO `product` VALUES (97, 46, '肉酱面', 50, 1, '好吃不黏牙，香喷喷的意大利肉酱面', '<p>意大利肉酱面是炸酱面的一种，是用瘦肉做好酱，伴着煮熟的面一起食用。然后再加上自己做的调料，酸爽有劲。</p><p></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583682721511056173.jpg\" title=\"1583682721511056173.jpg\"/><br/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583682721527080341.jpg\" title=\"1583682721527080341.jpg\"/></p><p><span style=\"font-size: 14px;\"><br/></span><br/></p>', 80.00, 86.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675554758069586.jpg', 2058, 0, b'1', '2019-09-05 17:27:35', -99, -1, '2020-03-12 14:42:03');
INSERT INTO `product` VALUES (98, 46, '可丽饼', 20, 1, '可丽饼是一种比薄烤饼更薄的煎饼，以小麦粉制作而成并且很流行的一种美食。', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\"></span></p><p>可丽饼由一种可丽饼烤盘（一种没有边的特殊加热炉具）或平底锅煎制两面而成，可用作甜点的盘底，也可以自成一道佳肴美馔。最普遍的成分包括面粉、鸡蛋、牛乳、奶油和一小撮的盐，主要分为两种口味，甜可丽饼使用的是小麦粉，而咸可丽饼则使用荞麦或黑麦粉制作。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583678967152009294.jpg\" title=\"1583678967152009294.jpg\"/><br/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583678967199019586.jpg\" title=\"1583678967199019586.jpg\"/></p><p><br/></p>', 25.50, 50.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675679423024115.jpg', 1874, 0, b'1', '2019-09-05 17:28:45', -99, -1, '2020-03-12 14:41:20');
INSERT INTO `product` VALUES (99, 47, '烤鱿鱼', 50, 1, '新鲜烤鱿鱼美味多汁。上好的鱿鱼，加上孜然，烤的飘香	\n浙江菜', '<p>新鲜烤鱿鱼美味多汁。</p>烤鱿鱼是中国大陆及台湾各地都有的一道街头烧烤。鱿鱼，也称柔鱼、枪乌贼，营养价值很高，具有高蛋白、低脂肪、低热量的优点，是优质的海产品。<p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583676862698007962.jpeg\" title=\"1583676862698007962.jpeg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583676862713007544.jpeg\" title=\"1583676862713007544.jpeg\"/></p>', 15.00, 30.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675639143095354.jpeg', 2054, 9999, b'1', '2019-09-05 17:29:25', -99, -1, '2020-03-08 22:14:29');
INSERT INTO `product` VALUES (100, 47, '烤鸡胗', 100, 1, '新鲜的鸡胗，加上烤汁，上架子一烤，Q弹爽口', '<p>新鲜的鸡胗，加上烤汁，上架子一烤，Q弹爽口</p><p>1.鸡胗洗净切上十字花刀</p><p>2. 洋葱切丝，红绿彩椒分别切菱形块。<br/></p><p>3. 用洋葱、豆豉、蒜片、盐、胡椒粉、绍酒将鸡胗10分钟腌渍。</p><p>4. 锅做热放入腌渍好的鸡胗。</p><p>5. 盖好盖中小火3分钟。</p><p>6. 撒上辣椒面出锅装盘。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583677544152000978.jpg\" title=\"1583677544152000978.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583677549980095571.jpg\" title=\"1583677549980095571.jpg\"/></p><p><br/></p>', 4.00, 5.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583654735448051727.jpg', 1850, 200, b'1', '2019-09-05 17:29:25', -99, -1, '2020-03-12 14:34:10');
INSERT INTO `product` VALUES (101, 46, '芝士焗土豆泥', 20, 1, '健康功效土豆:活血化瘀培根:保护神经系统、促进肠胃蠕动、抗脚气黄油:活血化瘀', '<p>芝士焗土豆泥，香浓软糯的土豆泥，配上五颜六色的蔬菜。</p><p>土豆是一款价廉物鲜美的大众食物，以各种形式摆放在人们的餐桌，亦菜亦主食，很多朋友还坚持吃土豆减肥，是因为土豆相比大米所产生的热量较低，并且只含有0.1%的脂肪。土豆中的蛋白质比大豆还好，最接近动物蛋白。土豆含丰富的赖氨酸和色氨酸，这是一般粮食所不可比的。土豆还是富含钾、锌、铁的食物。所含的钾可预防脑血管破裂。它所含的蛋白质和维生素C，均为苹果的10倍，维生素B1、B2、铁和磷含量也比苹果高得多。从营养角度看，它的营养价值相当于苹果的3.5倍。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583680325189088745.jpg\" title=\"1583680325189088745.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583680325204013828.jpg\" title=\"1583680325204013828.jpg\"/></p><p><br/></p>', 15.00, 26.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675698486033182.jpg', 2771, 0, b'1', '2019-09-05 17:29:29', -99, -1, '2020-03-08 23:48:35');
INSERT INTO `product` VALUES (102, 6, '鸿运伴春来', 0, 1, '来自农家的新鲜拂手苗，味道鲜美甘甜。\n', '<p style=\"white-space: normal;\">来自农家的新鲜拂手苗，味道鲜美甘甜。不含农药，健康。</p><p>佛手瓜能吃是众所周知的事情，而且人们知道佛手瓜口感鲜嫩，营养丰富，只有以后对身体有诸多好处，不过平时人们吃的佛手瓜只是植物佛手瓜的果实，这种植物在生长过程中长出的幼苗也特别诱人，有些人想把它当蔬菜吃，只是不知道它能不能吃，今天小编就专门介绍这个问题，同时也会告诉大家佛手苗怎么炒最好吃。 佛手苗可以吃吗 1、佛手苗是一种能吃的绿色蔬菜，它口感鲜嫩营养丰富，人们使用它后能吸收丰富叶绿素和多种维生素，还能吸收一些碳水化合物，对维持人类身体健康有很大好处，另外它含有的膳食纤维在被人体吸收后还能加快肠道蠕动，能促进消化也能预防缓解便秘。 2、佛手苗能吃而且人们在吃了它以后能对人非常有好处。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583671543288083259.png\" title=\"1583671543288083259.png\" alt=\"10鸿运伴春来.png\"/><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583671740493081469.jpeg\" title=\"1583671740493081469.jpeg\" alt=\"6佛手苗.jpeg\"/></p>', 12.00, 18.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583651222363074868.png', 2785, 1000002, b'1', '2019-09-05 17:29:41', -99, -1, '2020-03-08 20:49:37');
INSERT INTO `product` VALUES (103, 46, '蜜汁蛋饺', 100, 1, '蛋饺，是以鲜虾、猪肉或牛羊肉为馅料，用蛋皮包制而成的一种美食。', '<p>蛋饺，是以鲜虾、猪肉或牛羊肉为馅料，用蛋皮包制而成的一种美食。口味鲜香，营养丰富，老少皆宜。鸡蛋味甘，性平，具有养心安神，补血，滋阴润燥的功效。</p><p>做蛋饺的关键在于蛋皮，而摊制蛋皮的难度很高，不仅耗费时间，还需要耐心和技巧。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583683009746066305.jpg\" title=\"1583683009746066305.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583683009762042303.jpg\" title=\"1583683009762042303.jpg\"/></p><p><br/></p>', 36.00, 58.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583656862054067134.jpg', 1910, 50, b'1', '2019-09-05 17:30:25', -99, -1, '2020-03-08 23:57:38');
INSERT INTO `product` VALUES (104, 47, '烤鸡脚', 100, 1, '又辣又好吃', '<p>烤鸡脚，即用烤制的方式制作鸡脚，色泽鲜艳，口味依个人喜好而定，是简单快手的菜式之一。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583677395343000945.jpg\" title=\"1583677395343000945.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583677395374012107.jpeg\" title=\"1583677395374012107.jpeg\"/></p><p><br/></p>', 9.90, 10.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583662759068020231.jpeg', 1868, 99999, b'1', '2019-09-05 17:30:52', -99, -1, '2020-03-08 22:23:18');
INSERT INTO `product` VALUES (105, 25, '香芒蛋糕', 50, 1, '香芒蛋糕是在奶油蛋糕的基础上加上芒果，酸酸甜甜。', '<p>香芒蛋糕是在奶油蛋糕的基础上加上芒果，酸酸甜甜。奶油蛋糕是用鸡蛋奶油制作的一道甜品。奶油蛋糕是一种将奶油涂在蛋糕表面上的糕点制品，凸显出浓浓的奶香味以及蛋糕的香软。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583742589807030922.jpeg\" title=\"1583742589807030922.jpeg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583742589869002612.jpg\" title=\"1583742589869002612.jpg\"/></p><p><br/></p>', 9.00, 11.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583653129437089353.jpg', 2746, 999, b'1', '2019-09-05 17:31:10', -99, -1, '2020-03-09 16:29:53');
INSERT INTO `product` VALUES (106, 46, '黑椒牛排', 50, 1, '黑椒牛排是一道西餐,主要食材是牛排和黑胡椒,主要烹饪工艺是煎。', '<p>黑椒牛排是一道西餐,主要食材是牛排和黑胡椒,主要烹饪工艺是煎。<img src=\"http://182.92.128.70:8081/upload/website/image/20190905/1567675864689052378.jpg\" title=\"1567675864689052378.jpg\" alt=\"3.jpg\"/></p>', 78.88, 99.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675888211004779.jpeg', 1806, 111, b'1', '2019-09-05 17:31:40', -99, -1, '2020-03-08 23:58:08');
INSERT INTO `product` VALUES (107, 49, '清淡去火汤', 50, 1, '清淡去火汤是一道菜品，制作原料主要有文蛤、豆腐、姜等。具有清热利湿、化痰、散结、润五脏、止消渴、健脾胃、治赤目和增乳液功效。', '<p>清淡去火汤是一道菜品，制作原料主要有文蛤、豆腐、姜等。具有清热利湿、化痰、散结、润五脏、止消渴、健脾胃、治赤目和增乳液功效。具有低脂肪、高蛋白，含有铁、镁、钙、锌等多种微量元素。而且难得的是，还额外含有能降低胆固醇的特殊成分，不止可以抑制胆固醇吸收，对于身体内已有的胆固醇也有一定的分解作用。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583674255644078902.jpg\" title=\"1583674255644078902.jpg\"/><br/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583681289453094221.jpg\" title=\"1583681289453094221.jpg\" alt=\"u=4144962267,4054341402&amp;fm=26&amp;gp=0.jpg\"/></p><p><br/></p>', 15.00, 25.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675862732016397.jpeg', 1891, 101, b'1', '2019-09-05 17:32:06', -99, -1, '2020-03-12 15:23:41');
INSERT INTO `product` VALUES (108, 25, '榴莲千层', 100, 1, '一种十分美味的糕点！', '<p>选自泰国金枕榴莲制作，先将榴莲烘烤完成后进行不断铺饼，看似薄薄的饼其实有30，40层！</p><p>1. 鸡蛋和糖粉混合打散。倒入牛奶。搅拌 &nbsp; &nbsp;</p>2. 筛入低粉。再次搅拌。最后加入融化成液态的黄油搅拌。把混合物过筛后放入冰箱冷藏半小时<p>3. 把以上混合物从冰箱取出开始制作千层皮。用不粘平底锅是最基本的。锅子可以不用油 也可以在最初刷一层薄薄的油。这个量基本可以做十三四张皮。&nbsp; &nbsp;&nbsp;</p><p>4. 300ml淡奶用打蛋器打发打到能竖起尖角。把榴莲去核搅拌匀加入打发好的淡奶中再稍微搅拌一下。OK。一层皮一层榴莲奶油一层皮一层榴莲奶油。直到所有的皮用完。外观可以再改进也可以就这样放进冰箱冷藏两小时以上。&nbsp; &nbsp;&nbsp;</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583743210153044693.jpg\" title=\"1583743210153044693.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583743210247007181.jpg\" title=\"1583743210247007181.jpg\"/></p><p><br/></p>', 10.00, 15.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675719297097721.jpg', 1818, 20, b'1', '2019-09-05 17:32:29', -99, -1, '2020-03-09 16:40:28');
INSERT INTO `product` VALUES (109, 25, '桃花酥', 0, 1, '刚开出的挑花，摘下经过繁琐的步骤做成可口的酥饼，一口下去满嘴桃花香', '<p>1、油皮所有材料混合装入容器</p><p>2、倒入沸水，先用筷子搅拌成面絮<br/></p><p>3、再用手揉成团，用保鲜膜包起来备用<br/></p><p>4、油酥所有材料混合</p><p>5、揉成团</p><p>6、枣泥馅平均分成12个，25g每个</p><p>7、油酥分成12个，10g每个</p><p>8、油皮分成12个，20g每个</p><p>9、取一个油皮，一个油酥</p><p>10、包起来</p><p>11、依次做好盖上湿布或者保鲜膜备用</p><p>12、取一个面团，擀开成牛舌状</p><p>13、卷起来。放进保鲜膜内盖好。依次将剩余的面团做好</p><p>14、从第一个开始，取出一个面团压扁</p><p>15、再次擀开，擀长</p><p>16、卷起来，放回去盖好保鲜膜</p><p>17、全部做好，再从第一个开始。取一个面团，用手指从中间压下去</p><p>18、揪起两侧捏合</p><p>19、用手掌压扁，再用擀面杖擀薄一点</p><p>20、包入馅料</p><p>21、用虎口向上推，捏紧收口</p><p>22、收口向下</p><p>23、先用手掌压扁一点，再用擀面杖擀开一些</p><p>24、用剪刀剪出5瓣</p><p>25、在用锋利的小刀在每一片上划伤两刀，要割到馅料</p><p>26、用拇指和是指捏起边缘向外轻轻拉一下捏合在一起。</p><p>27、压扁一点整形好。依次做好放入烤盘。</p><p>28、用筷子蘸少许红丝绒精华点在中心处。</p><p>29、放入预热好的烤箱，170度30分钟左右 按照自家烤箱的脾气调整时间与温度。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583741855745010964.jpg\" title=\"1583741855745010964.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583741855776074140.jpg\" title=\"1583741855776074140.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583741855791017051.jpg\" title=\"1583741855791017051.jpg\"/></p><p><br/></p>', 10.00, 20.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583652722047033065.jpg', 1788, 100, b'1', '2019-09-05 17:32:41', -99, -1, '2020-03-09 16:17:41');
INSERT INTO `product` VALUES (110, 46, '法式鹅肝', 100, 1, '鹅肝为鸭科动物鹅的肝脏。因其十分丰富的营养和特殊功效，使得鹅肝成为补血养生的最佳食物。法国著名的料理鹅肝（法文：Foie gras）是一种从被过份喂饲的鹅取出来的肝。欧洲人将鹅肝与鱼子酱、松露并列为“世界三大珍馐”。', '<p><span style=\"font-size: 14px;\">鹅肝是法国的传统名菜，法语称为“FoieGras”。其中，“Gras”有顶级的意思，鹅肝在法国菜中的地位可见一般。这道名菜将法国菜的浪漫推到了极至，法式鹅肝是最适合女性的一道西菜。</span></p><p><span style=\"font-size: 14px;\">其主要材料有鹅肝、黑菌、松茸菌、红蒜、奶油、黄油、盐、糖、胡椒等，采用烤的烹饪工艺，味道鲜香。</span></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583682849370057062.jpg\" title=\"1583682849370057062.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583682849402061845.jpg\" title=\"1583682849402061845.jpg\"/></p><p><br/></p>', 199.00, 299.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675943888014082.jpg', 1880, 100, b'1', '2019-09-05 17:32:51', -99, -1, '2020-03-08 23:59:38');
INSERT INTO `product` VALUES (111, 47, '烤腰子', 20, 1, '烤腰子烤腰子	\n新疆菜', '<p>烤腰子 美味酥脆下酒好菜，</p><p>猪腰子，味甘、咸，性平。略能补肾气，利水，作用缓和，“方药所用，借其引导而已。”（李时珍）可作为食疗辅助之品。如治肾虚腰痛，《本草权度》将本品以椒、盐腌去腥水，入杜仲末10g，用荷叶包煨食之；治肾虚久泻，《濒湖集简方》用本品掺入骨碎补末，煨熟食。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583676700123098651.jpg\" title=\"1583676700123098651.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583676700186081173.png\" title=\"1583676700186081173.png\"/></p><p><br/></p>', 28.00, 35.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675898073078062.jpg', 2231, 264, b'1', '2019-09-05 17:33:08', -99, -1, '2020-03-08 22:11:49');
INSERT INTO `product` VALUES (112, 6, '阿妈手擀面', 0, 1, '阿妈手擀面，人工擀面有滋有味', '<p style=\"text-align: left;\"><span style=\"color: rgb(51, 51, 51); font-family: arial;\"><span style=\"background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255);\">纯手工制作，q弹美味，流连忘返。古人说“每逢佳节倍思亲”，谁又能保证他只是思念亲人，而不思念家乡的食物呢？屈指算来，祖传手艺。擀的过程中力度大小合适，擀出来的面薄厚均匀，离出来的面条也宽窄有度。韭叶、毛细、大宽、菱形块，想吃什么形状，在妈妈的刀下都会活灵活现。开水沸腾煮熟后，可干拌、可泼汤、可杂酱、可臊子，想怎么吃就怎么吃，不过怎么吃都一样，用咱老陕话说就是“味道聊咋咧”！关中地区的手擀面以臊子面居多，臊子的制作特别讲究，西府农家多是土豆丁、红萝卜丁、豆角丁、豆腐丁等加上鸡蛋饼小块，吃汤面的就再撒点韭菜花，如此便可谓色香味俱全了。<span style=\"margin: 0px; padding: 0px; max-width: 100%; color: rgb(51, 51, 51); font-size: 17px; letter-spacing: 0.544px; text-align: justify; text-indent: 29px; background-color: rgb(255, 255, 255); font-family: 宋体; box-sizing: border-box !important; overflow-wrap: break-word !important;\"></span></span><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583671147331008599.jpg\" title=\"1583671147331008599.jpg\" alt=\"2阿妈手擀面.jpg\"/><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583671261332049221.jpg\" title=\"1583671261332049221.jpg\" alt=\"2手擀面.jpg\"/></span></span></p>', 22.00, 36.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583662374727017560.jpg', 2751, 99999, b'1', '2019-09-05 17:33:18', -99, -1, '2020-03-12 14:10:37');
INSERT INTO `product` VALUES (113, 25, '瓜皮糕', 100, 1, '婚前茶歇蛋糕点心复古炫彩系列无与伦比的甜品', '<p>婚前茶歇蛋糕点心复古炫彩系列无与伦比的甜品，</p><p>糕点(Cakes and Pastries)是一种食品。它是以面粉或米粉、糖、油脂、蛋、乳品等为主要原料，配以各种辅料、馅料和调味料，初制成型，再经蒸、烤、炸、炒等方式加工制成。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583743070484039062.jpg\" title=\"1583743070484039062.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583743070578067176.jpg\" title=\"1583743070578067176.jpg\"/></p><p><br/></p>', 9.90, 10.90, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675928035095211.jpg', 1880, 66, b'1', '2019-09-05 17:33:20', -99, -1, '2020-03-09 16:37:54');
INSERT INTO `product` VALUES (114, 46, '白玉丝菇', 20, 1, '杏鲍菇，肉质肥厚，吃起来脆滑爽口，营养还非常丰富。', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">杏鲍菇，肉质</span><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">肥厚，吃起来脆滑爽口，营养还非常丰富。杏鲍菇</span><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">有耐久煮、易吸味的特性，很适合炖煮或油炸成菜。杏鲍菇</span><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">除了有降血脂、胆固醇</span><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">等作用外，还有清肠、美容的食疗效果。</span></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583679886253041996.jpg\" title=\"1583679886253041996.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583679886284032437.jpg\" title=\"1583679886284032437.jpg\"/></p><p><br/></p>', 33.30, 99.90, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675878244055718.jpg', 1876, 110, b'1', '2019-09-05 17:33:24', -99, -1, '2020-03-08 23:47:16');
INSERT INTO `product` VALUES (115, 47, '烤鸡翅', 100, 1, '又香又辣超级超级好吃，	\n小吃', '<p>又香又辣超级超级好吃，</p>烤鸡翅是指以油炸方式烹调的鸡肉。炸鸡有很多不同的种类，例如原件连皮连骨的鸡件，或者已去皮去骨的鸡肉块。不同国家和地区的炸鸡，均有其独特的特色。<p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583677252877047851.jpg\" title=\"1583677252877047851.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583677252893070228.jpeg\" title=\"1583677252893070228.jpeg\"/></p>', 9.90, 10.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675929855018703.jpg', 2777, 9999, b'1', '2019-09-05 17:33:41', -99, -1, '2020-03-08 22:20:56');
INSERT INTO `product` VALUES (116, 25, '麦香奶盖', 0, 1, '麦香是五谷的味道，香甜可口', '<p>奶盖茶在台湾仅有两家茶饮料品牌在供应，跟奶茶的牛奶与茶的融合不同，奶盖茶是分层的，上盖都会有一层将近3CM厚的奶盖，下面一层为茶。</p><p>正宗的奶盖茶特别之处就在于每一杯茶的上盖都会有一层将近3CM厚的奶盖，它要用真正纯鲜奶及奶盖粉调制而成的奶油。而假的奶盖茶加的则是奶香的泡沫 甚至连奶泡都不是 喝在嘴里会有一股浓郁而不腻味的奶香味。在台湾甜汇店内热情老板会教你喝的方法。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583741492315062881.jpeg\" title=\"1583741492315062881.jpeg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583741492331045087.jpg\" title=\"1583741492331045087.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583741492409044045.png\" title=\"1583741492409044045.png\"/></p><p><br/></p>', 8.00, 20.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583652558423030048.jpg', 1838, 200, b'1', '2019-09-05 17:33:45', -99, -1, '2020-03-09 16:11:37');
INSERT INTO `product` VALUES (117, 25, '牛角包', 50, 1, '外酥内软，软绵不失嚼劲，一口咬下去，口腔一下被黄油香味所俘虏，谁能抵受住一只牛角包的诱惑？', '<p>外酥内软，软绵不失嚼劲，一口咬下去，口腔一下被黄油香味所俘虏，谁能抵受住一只牛角包的诱惑？</p><p>1/将1，2，3，4，5混合，后加入6，醒发30分</p><p>2/将7打成片，冷冻备用</p><p>3/面团成正方形，包入黄油，三等份折叠，稍醒15分</p><p>4/再次三等份折叠，稍醒15分</p><p>5/再次三等份折叠，稍醒15分</p><p>6/擀成0.5厚的长方型，切成等边三角型</p><p>7/底边中间切一个1CM口，向上卷起，刷蛋液，醒30分</p><p>8/用200度，15分钟</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583742284579074851.jpeg\" title=\"1583742284579074851.jpeg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583742284595085842.jpg\" title=\"1583742284595085842.jpg\"/></p><p><br/></p>', 10.00, 12.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583652958781060682.jpg', 2774, 999, b'1', '2019-09-05 17:33:53', -99, -1, '2020-03-09 16:24:47');
INSERT INTO `product` VALUES (118, 47, '牛肉烤串', 100, 1, '精品新鲜牛肉，口感舒适，撒上孜然的美味，无可比拟！烤牛肉串是一道菜品，主料为牛肉 。', '<p>烤的滋滋冒油的烤串散发出迷人的香味，谁又能收回再来一串的手呢~</p><p>1.烤箱200度预热或调到微波炉烧烤功能。韭菜洗净切碎。</p><p>2.混合牛肉，调料粉，韭菜和鸡蛋。</p><p>3.做成肉串放入烤箱15分钟即可。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583677129817045976.jpg\" title=\"1583677129817045976.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583677129864025464.jpg\" title=\"1583677129864025464.jpg\"/></p><p><br/></p>', 25.00, 30.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675664211048580.jpg', 1885, 0, b'1', '2019-09-05 17:34:23', -99, -1, '2020-03-08 22:18:53');
INSERT INTO `product` VALUES (119, 47, '烤鱼腩', 100, 1, '新鲜美味的鱼腩，好吃又不腻，	\n鱼类的腹部', '<p>666666好吃没毛病，下单就完了！！！！</p>鱼腩是鱼接近肚子部位， 相对鱼头，鱼腩是鱼身上最软弱无力，缺乏防备而且没有攻击力的所在，而且无骨，容易食用。 鱼尾等别的部位， 广州话，又称为&quot;啖啖肉&quot;，意谓每一口都是净肉。<p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583676986476050513.jpeg\" title=\"1583676986476050513.jpeg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583676986539074543.jpeg\" title=\"1583676986539074543.jpeg\"/></p>', 3.00, 5.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675945588053003.jpg', 2004, 432, b'1', '2019-09-05 17:34:49', -99, -1, '2020-03-08 22:16:30');
INSERT INTO `product` VALUES (120, 46, '香煎三文鱼', 50, 1, '三三文鱼300克，甜豆50克，青、红、黄椒各1只（切片状），藕条50克，干葱或洋葱25克，鸡蛋1只，干淀粉、未炒过的黑白芝麻、柠檬汁、盐、胡椒粉、蜂蜜、鱼露等适量', '<p>三文鱼既有营养，热量低，口感鲜嫩，是道不可多得的美食。<br/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583680848204036910.jpg\" title=\"1583680848204036910.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583680848235014807.jpg\" title=\"1583680848235014807.jpg\"/></p><p><br/></p>', 76.00, 99.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567676063823015062.jpg', 1804, 112, b'1', '2019-09-05 17:35:12', -99, -1, '2020-03-08 23:58:22');
INSERT INTO `product` VALUES (121, 6, '金汤肥牛', 100, 1, '浓稠的鲜汤，配上美味的牛肉，口水都流出来了', '<p>秘制香料熬制而成的鲜汤，搭配切制薄片的牛肉，下锅即熟，美味可口，</p><p>金汤肥牛是一道入门级别的大菜，酸辣爽口，非常开胃，因而许多餐厅都把它定为特色菜。酸爽辛辣的金汤，清爽不腻的肥牛，饱吸了汤汁的金针配菜，吃一次绝对还想下一次。</p><p>原料：金针菇适量、肥牛适量、干辣椒适量、盐适量，大蒜、南瓜 泡椒、鸡精各适量</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583673717405672005.jpg\" title=\"1583673717405672005.jpg\"/><br/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583673717483009201.jpg\" title=\"1583673717483009201.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583673717561036029.jpg\" title=\"1583673717561036029.jpg\"/></p><p><br/></p>', 18.00, 25.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583649512210055670.jpg', 1874, 66, b'1', '2019-09-05 17:35:12', -99, -1, '2020-03-08 21:47:49');
INSERT INTO `product` VALUES (122, 49, '咖喱牛肉汤', 100, 1, '黄牛肉500克，咖喱粉10克，精盐30克，味精6克，葱25克。', '<p>咖喱牛肉汤是上海最著名的大众化名优小吃，采用熬煮氽炖烩焖法制作，具有营养丰富、健脾开胃、壮腰健肾、术后调理、便秘调理功效。</p><p><img title=\"1583675657784059179.jpg\" src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583675657784059179.jpg\"/></p><p><img title=\"1583675657831067697.jpg\" src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583675657831067697.jpg\"/></p><p><br/></p>', 12.00, 18.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583659549799020869.jpg', 1886, 150, b'1', '2019-09-05 17:36:18', -99, -1, '2020-03-12 15:42:02');
INSERT INTO `product` VALUES (123, 49, '骨头汤', 50, 1, '骨头汤中含有的胶原蛋白正好能增强人体制造血细胞的能力。对于中老年人来说,喝些骨头汤加以调理,可以减缓骨骼老化。', '<p>骨头汤是一道菜品，制作原料主要有扇子骨、直通骨、尾脊骨等。能起到抗衰老的作用，同样，骨头汤也能有利于青少年的骨骼生长。这是由于人体骨胳中最重要的是骨髓，血液中的红、白细胞等就是在骨髓中形成的，随着年龄的增大和机体的老化，骨髓制造红、白细胞的功能逐渐衰退，骨髓功能降低，直接影响到人体新陈代谢的能力。骨头汤中含有的胶原蛋白正好能增强人体制造血细胞的能力。所以对于中老年人来说，喝些骨头汤加以调理，可以减缓骨骼老化<img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583674012064072121.jpg\" title=\"1583674012064072121.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583674012079036824.jpg\" title=\"1583674012079036824.jpg\"/></p><p><br/></p>', 56.00, 67.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583659397660010758.jpg', 1957, 356, b'1', '2019-09-05 17:36:38', -99, -1, '2020-03-12 15:23:15');
INSERT INTO `product` VALUES (124, 47, '黄金烤鼠', 20, 1, '精品夹棍烤竹鼠，是西双版纳傣族、布朗族用“并”的烧烤方法加工制作的野味之一。', '<p>精品美食，夹棍烤竹鼠，是西双版纳傣族、布朗族用“并”的烧烤方法加工制作的野味之一。<img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583676545673066053.jpeg\" title=\"1583676545673066053.jpeg\" alt=\"1烤鼠.jpeg\"/><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583676571485097441.jpg\" title=\"1583676571485097441.jpg\" alt=\"0.jpg\"/></p>', 34.00, 45.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567676323302041190.jpg', 1865, 264, b'1', '2019-09-05 17:37:00', -99, -1, '2020-03-08 22:09:37');
INSERT INTO `product` VALUES (125, 6, '黄焖鸡米饭', 100, 1, '黄焖鸡米饭采用秘制酱料工艺技术，所需十余种香料必须选用优质药材。黄焖鸡配料讲究君臣佐史配伍相益，调和得当。鸡肉含有对人体生长发育有重要作用的磷脂类，是中国人膳食结构中脂肪和磷脂的重要来源之一。', '<p>黄焖鸡米饭采用秘制酱料工艺技术，所需十余种香料必须选用优质药材。</p><p style=\"white-space: normal;\">黄焖鸡配料讲究君臣佐史配伍相益，调和得当。</p><p style=\"white-space: normal;\">鸡肉含有对人体生长发育有重要作用的磷脂类，是中国人膳食结构中脂肪和磷脂的重要来源之一。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20190905/1567676155812024768.jpg\" title=\"1567676155812024768.jpg\" alt=\"5adac1edce93a.jpg\"/><br/></p><p><br/></p>', 18.00, 20.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567676240806070203.jpg', 1836, 666, b'1', '2019-09-05 17:37:25', -99, -1, '2020-03-12 14:20:58');
INSERT INTO `product` VALUES (126, 48, '碳烤小龙虾', 0, 1, '虾的鲜嫩，加上火炉的烘烤，肉质Q弹爽口，简直是不可多的的人间美味！加上柠檬，黄油（butter），黑胡椒更加美味', '<p>虾的鲜嫩，加上火炉的烘烤，肉质Q弹爽口，简直是不可多的的人间美味！</p><p>1. 大锅水煮开后，将小龙虾放入煮一分钟左右至不再动弹即可；（虾肉仍为透明色）</p><p>2. 将小龙虾头背部剪开翻平，去除虾肠及杂物；用刀背敲开大虾钳；</p><p>3. 烤架烧热后，放入小龙虾，背部朝上；洒上少许黑胡椒粉，融化的奶油，以中火烤3分钟左右；</p><p>4. 将小龙虾翻身续烤，至虾肉变色至熟即可，有金黄的烤痕为佳；</p><p>5. 洒上少许新鲜柠檬汁，趁热食用</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583678405211040434.jpg\" title=\"1583678405211040434.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583678405321067044.jpg\" title=\"1583678405321067044.jpg\"/></p><p><br/></p>', 20.00, 50.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567676181037041027.jpg', 1846, 50, b'1', '2019-09-05 17:37:45', -99, -1, '2020-03-08 22:40:08');
INSERT INTO `product` VALUES (127, 25, '抹茶雪媚娘', 50, 1, '雪媚娘是日本一种有名的甜品，传入中国后大火。', '<p>雪媚娘源自日本，原名为“大福”，是日本的地道点心之一，外皮是QQ的雪媚娘冰皮，在日本它的馅料都是当季的真材实料的水果为主。 “雪媚娘”这个名字源于日本当地发明各种草莓大福的一位夫人，而我们制作的雪媚娘也是她的代表作之一。</p><p>雪媚娘细白软糯，第一口咬到的是特别Q滑的冰皮，里面是奶香怡人的淡奶油，裹着好吃的水果粒， 酸酸甜甜、口感丰富“雪媚娘”冷藏后的口感更佳，轻轻一口下去，细软中还带着隐隐的甜意和凉意。西茄雪媚娘，沿用轻施手粉风格，内馅采用鲜果，是传统雪媚娘的最重要流派。</p><p>又名升级版驴打滚。</p><p><sup class=\"sup--normal\" style=\"color: rgb(51, 102, 204); cursor: pointer; font-size: 8.8px; line-height: 0px; margin-left: 2px; padding-bottom: 0px; padding-left: 2px; padding-right: 2px; padding-top: 0px; position: relative; top: -4.4px; vertical-align: baseline; white-space: normal;\"></sup><br/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583742159613038945.jpeg\" title=\"1583742159613038945.jpeg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583742159816038699.png\" title=\"1583742159816038699.png\"/></p><p><br/></p>', 9.00, 12.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583652863062057890.jpg', 1804, 56, b'1', '2019-09-05 17:37:56', -99, -1, '2020-03-09 16:22:48');
INSERT INTO `product` VALUES (128, 49, '清炖甲鱼汤', 100, 1, ' 主料：甲鱼500克\n辅料：香菇（鲜）50克,鸡胸脯肉50克,冬笋25克,火腿50克\n调料：料酒10克,盐4克,味精2克,大葱15克,姜5克,胡椒粉2克', '<p>清炖甲鱼汤，即以甲鱼为主要材料炖制的汤。甲鱼为鳖的俗称，味道鲜美，有清热养阴，平肝熄风，软坚散结，对肝硬化，肝脾肿大，小儿惊痫等疗效，不仅是餐桌上的美味佳肴，而且还可以作为一味中药材入药，药用和食用价值极高。</p><p>食用甲鱼应注意祖国医学中有记载，食用甲鱼时不能与鸡蛋、兔、猪、鸡、鸭肉以及苋菜等同食，否则无益。</p><p><img title=\"1583675369719052286.jpg\" src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583675369719052286.jpg\"/></p><p><img title=\"1583675369719004579.jpg\" src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583675369719004579.jpg\"/></p><p><br/></p>', 20.00, 28.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583659927030000768.png', 1870, 299, b'1', '2019-09-05 17:38:02', -99, -1, '2020-03-12 15:41:26');
INSERT INTO `product` VALUES (129, 49, '家常杂菌汤', 50, 1, '各种菌类混合熬制，香浓健康', '<p>“山珍”即是野生菌的代名词，含有多种氨基酸、蛋白质、维生素、矿物质，在春夏之季阳气上升时能调节人体机能、增强免疫力，有极高的食用和药用价值。野生菌的纤维素含量远远超过一般蔬菜，并含有多种氨基酸。是强碱性粗纤维食品，欧洲人把蘑菇誉为“植物肉”，美国人甚至把蘑菇誉为“上帝的食品”。</p><p>据了解，长期食用含有碱性矿物质的野生菌，如老人头菌、猴头菇、鹅蛋菌、珍珠菌等，能使血液中对皮肤有害的物质大大减少。鲜爽可口；或将鲫鱼用油煎，味鲜而香脆。不过，时下最适宜的制法就是用其炖各种汤。</p><p>此外，蘑菇还可以治白细胞减少症、消化道障碍等症；对促进食欲、恢复大脑功能都有一定辅助作用，成为时尚一族追捧的健康养生菜肴。根据调查研究，用山珍菌吊出的鲜汤里含有大量的微量元素硒、锌、铁，汤中所含的多种维生素又起到了补充水分、滋润肌肤的功效，能保证肌肤不再干燥，美容是菌汤具有的时髦功效，美味、健康、美容，成了当下杂菌汤被宠爱的理由。</p><p style=\"white-space: normal;\"><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583672527298030362.jpg\" title=\"1583672527298030362.jpg\"/><br/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583672527330069950.jpg\" title=\"1583672527330069950.jpg\"/></p><p><br/></p>', 19.90, 25.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583659092048000628.jpg', 1816, 5, b'1', '2019-09-05 17:38:08', -99, -1, '2020-03-12 15:23:02');
INSERT INTO `product` VALUES (130, 47, '热狗', 0, 1, '好吃不贵，价格实惠。', '<p>热狗（hot dog）是火腿肠的一种吃法。夹有烤肠的整个面包或者三明治称作热狗。和狗这个动物本身没有什么联系，只是面包的一种称呼。</p><p>吃热狗的时候可以配上很多种类的配料。热狗还有其他种的变化。加起司的叫做“起司热狗”，或是直接叫“起司狗”。加了辣肉酱（chili）的叫做“辣狗”。前面两种全加的就叫“辣起司狗”。裹了玉米浆的油炸热狗，而且插了根小竹棒的叫做玉米狗。受各地方不同饮食习惯的影响，热狗会使用不同的材料，传统上使用法兰克福肠。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583676396505084896.jpg\" title=\"1583676396505084896.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583676396599090818.jpg\" title=\"1583676396599090818.jpg\"/></p><p><br/></p>', 2.00, 5.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567676282937082673.jpg', 1890, 50, b'1', '2019-09-05 17:38:37', -99, -1, '2020-03-08 22:06:45');
INSERT INTO `product` VALUES (131, 49, '排骨汤', 50, 1, '排骨汤是以排骨为主要食材的家常菜,口味咸鲜,补肾养血,滋阴润燥,营养价值丰富， 排骨汤是以排骨为主要食材的家常菜,口味咸鲜,补肾养血,滋阴润燥,营养价值丰富。', '<p>排骨汤，是用猪、牛、羊等动物剔肉后剩下的肋骨和脊椎骨制作的一道家常汤品。排骨除含蛋白、脂肪、维生素外，还含有大量磷酸钙、骨胶原、骨粘蛋白等，可为幼儿和老人提供钙质。具有滋补润心，补阳益髓，壮体抗老的功效。</p><p><img title=\"1583672063700073299.jpg\" src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583672063700073299.jpg\"/><br/></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\"></span><img title=\"1583672356515079269.jpg\" alt=\"u=2217928706,1248448825&amp;fm=26&amp;gp=0.jpg\" src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583672356515079269.jpg\"/></p>', 18.88, 20.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567676306003069319.jpeg', 1910, 299, b'1', '2019-09-05 17:38:57', -99, -1, '2020-03-12 15:22:09');
INSERT INTO `product` VALUES (132, 25, '甜心马卡龙', 100, 1, '马卡龙，又称玛卡龙、法式小圆饼，是一种用蛋白、杏仁粉、白砂糖和糖霜制作，并夹有水果酱或奶油的法式甜点。口感丰富，外脆内柔，外观五彩缤纷，精致小巧。\nMacaron一词本是法语，实际发音较接近“马卡红”。“马卡龙”是使用西班牙语发音音译的结果。', '<p>马卡龙，又称玛卡龙、法式小圆饼，是一种用蛋白、杏仁粉、白砂糖和糖霜制作，并夹有水果酱或奶油的法式甜点。口感丰富，外脆内柔，外观五彩缤纷，精致小巧。</p><p>Macaron一词本是法语，实际发音较接近“马卡红”。“马卡龙”是使用西班牙语发音音译的结果。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583742925833064568.jpg\" title=\"1583742925833064568.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583742925909011202.jpg\" title=\"1583742925909011202.jpg\"/></p><p><br/></p>', 10.00, 15.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567676323372008434.jpg', 1840, 100, b'1', '2019-09-05 17:39:45', -99, -1, '2020-03-09 16:35:29');
INSERT INTO `product` VALUES (133, 49, '鲫鱼豆腐汤', 100, 1, '食材：鲫鱼头1个，豆腐200克葱，姜，蒜，小葱，油，料酒，盐，鸡精', '<p>鲫鱼豆腐汤是一道汉族名菜，属于粤菜菜系，口味咸鲜可口，鲫鱼具有很好的催乳作用，配用豆腐，益气养血、健脾宽中，豆腐亦富有营养，含蛋白质较高，对于产后康复及乳汁分泌有很好的促进作用。鲫鱼所含的蛋白质质优、齐全、易于消化吸收，是肝肾疾病，心脑血管疾病患者的良好蛋白质来源，常食可增强抗病能力，肝炎、肾炎、高血压、心脏病，慢性支气管炎等疾病患者可经常食用。</p><p><img title=\"1583674868635049125.jpg\" src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583674868635049125.jpg\"/></p><p><img title=\"1583674868651086075.jpg\" src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583674868651086075.jpg\"/></p><p><br/></p>', 15.00, 20.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583659354801030136.jpg', 1886, 99, b'1', '2019-09-05 17:40:07', -99, -1, '2020-03-12 15:41:06');
INSERT INTO `product` VALUES (134, 6, '蜜汁鸡腿', 50, 1, '香喷可口，回味无穷', '<p>蜜汁鸡腿 ：蜜汁鸡腿是一道美食。</p><p>主要原料：鸡全腿一只，土豆。</p><p>调料：料酒，酱油，盐，糖，蒜泥，葱姜末，八角，胡椒粉，花椒粉，孜然粒，橄榄油，叉烧酱。<br/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583671911464009550.jpg\" title=\"1583671911464009550.jpg\"/><br/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583671911479024637.jpeg\" title=\"1583671911479024637.jpeg\"/></p><p><br/></p>', 8.00, 12.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567676308899047615.jpg', 1798, 1123, b'1', '2019-09-05 17:42:52', -99, -1, '2020-03-12 14:11:36');
INSERT INTO `product` VALUES (135, 25, '草莓蛋糕', 100, 1, '草莓它是一款受欢迎程度极高的水果，长得形状又萌又可爱，颜色还总是娇艳欲滴。用草莓做各种蛋糕，草莓也总能与它们完美融合，真是美貌与口感俱佳，草莓与蛋糕相结合的可口食物。', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, &quot;pingfang sc&quot;, stheiti, simsun, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">草莓它是一款受欢迎程度极高的水果，长得形状又萌又可爱，颜色还总是娇艳欲滴。用草莓做各种蛋糕，草莓也总能与它们完美融合，真是美貌与口感俱佳，草莓与蛋糕相结合的可口食物。</span></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583742796084097481.jpg\" title=\"1583742796084097481.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583742796099025601.jpeg\" title=\"1583742796099025601.jpeg\"/></p><p><br/></p>', 5.00, 10.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567676412666077876.jpg', 1888, 0, b'1', '2019-09-05 17:43:37', -99, -1, '2020-03-09 16:33:19');
INSERT INTO `product` VALUES (136, 49, '龙凤汤', 0, 1, '龙凤汤是一道色香味俱全的传统名肴，属于闽系。此菜汤色微红，清澈见底，是一道滋补药膳。', '<p>鸡完全煮熟时﹐捞取撕肉与葱﹑蒜﹑香油﹑胡椒粉一起拌。在煮鸡的汤里放蛇肉块儿﹐重煮一遍。有龙凤汤的真味儿出来时﹐盛在碗里﹐并在上面放拌的鸡肉和辣椒丝。龙凤汤是一道色香味俱全的传统名肴，属于闽系。此菜汤色微红，清澈见底，是一道滋补药膳。</p><p><img title=\"1583671043877069428.jpg\" src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583671043877069428.jpg\"/><br/></p><p><img title=\"1583671043892055340.jpg\" src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583671043892055340.jpg\"/></p><p><br/></p>', 89.99, 126.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583660797554010336.png', 1794, 8765, b'1', '2019-09-05 17:44:03', -99, -1, '2020-03-12 15:20:26');
INSERT INTO `product` VALUES (137, 6, '山珍狮子头', 100, 1, '酥香可口、醇厚鲜美。秘制配方，采用二十二味中药秘制程序，让丸子更入味，同时不丢失原本的鲜嫩和营养，成品麻辣、咸甜适中、肉质细嫩，回味持久，为居家、晚宴之佳品。', '<p>秘制配方，采用二十二味中药秘制程序，让丸子更入味，同时不丢失原本的鲜嫩和营养，成品麻辣、咸甜适中、肉质细嫩，回味持久，为居家、晚宴之佳品。</p><p>狮子头是中国江苏省扬州淮扬菜系中的一道传统菜肴。传说狮子头做法始于隋朝，是在隋炀帝游幸时，厨师以扬州万松山、金钱墩、象牙林、葵花岗四大名景为主题做成了松鼠桂鱼、金钱虾饼、象牙鸡条和葵花斩肉四道菜，据说原名葵花斩肉、葵花肉丸，唐代郇国公韦陟的家厨韦巨元做松鼠桂鱼，金钱虾饼，象牙鸡条，葵花斩肉四道名菜，令座中宾客叹服，葵花斩肉被改名为狮子头。此菜口感软糯滑腻，健康营养。</p><p>江西宜丰也有此菜，盛传100余年，具有色泽雪白，肉质鲜嫩、清香味醇，四季皆宜等特点。安徽巢湖地区每年在新春佳节期间都要扎彩球，耍狮子，庆祝五谷丰登。当地群众届时要制作形似狮子头的点心来酬谢舞狮子的人，这种习俗自古至今广为流传。此小吃因用食碱量比普通酵面团要稍大，所以特别酥香，可贮存数日不会软。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583673523949088337.jpg\" title=\"1583673523949088337.jpg\"/><br/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583673524012040714.jpg\" title=\"1583673524012040714.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583673524106092056.jpg\" title=\"1583673524106092056.jpg\"/></p><p><br/></p>', 39.00, 50.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583673447777099645.jpg', 1784, 21, b'1', '2019-09-05 17:44:55', -99, -1, '2020-03-08 21:47:29');
INSERT INTO `product` VALUES (138, 6, '姐姐炸排骨', 100, 1, '炸排骨是一道四川省的地方名菜，属于川菜系。外酥里嫩，不硬不软，块块不连，香甜咸淡适口。', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">选新鲜的猪肋条排骨和软骨(每千克骨上带2千克肉)。.剁块及腌制:将排骨剁成3厘米见方的小块，用清水洗净，捞出沥尽水。将葱、姜切成碎末，连同其他佐料倒入容器内混合均匀，再将排骨倒入搅拌均匀，腌制30分钟。上糊、油炸:用清水500克，把淀粉、面粉、鸡蛋搅成干糊状。将腌制过的排骨连同佐料一起倒入糊内，用木棒搅匀。把油加热到180℃，倒入排骨，注意炸匀，约10分钟后，排骨表面呈深黄色捞出，即为成品。</span></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583673392511061505.jpg\" title=\"1583673392511061505.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583673392526015091.jpg\" title=\"1583673392526015091.jpg\"/></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\"></span><br/></p>', 28.00, 31.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567676418596060009.jpg', 2771, 99, b'1', '2019-09-05 17:45:14', -99, -1, '2020-03-08 21:16:51');
INSERT INTO `product` VALUES (139, 25, '招牌丝袜奶茶', 100, 1, '有红豆，珍珠，椰果，特色奶茶', '<p>茶香奶香萦绕鼻尖</p>丝袜奶茶（Stockings tea）是具香港特色的一种奶茶，是香港人日常下午茶和早餐常见的饮品。基本上，在香港茶餐厅供应的奶茶都是用“丝袜奶茶”的方式泡制。其主要制作材料是黑白牌全脂淡奶和白砂糖。<p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583742698836036753.jpg\" title=\"1583742698836036753.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583742698883010213.jpg\" title=\"1583742698883010213.jpg\"/></p>', 12.00, 14.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583653581514060232.jpg', 1789, 222, b'1', '2019-09-05 17:45:23', -99, -1, '2020-03-09 16:31:42');
INSERT INTO `product` VALUES (140, 49, '清炖鸽子汤', 100, 1, ' 主料： 鸽子一只  \n配料： 姜片适量   枸杞适量   葱适量  \n辅料： 盐适量   鸡精适量 ', '<p>清炖鸽子汤是以鸽子为主要食材的汤类菜品，味道鲜美，营养价值丰富，较适合春天食用。缺铁性人群可以利用鸽子汤补铁，青少年能够增强记忆力。具有促进生长发育 改善缺铁性贫血 增强记忆力的功效。</p><p></p><p><img title=\"1583674615211078446.jpg\" src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583674615211078446.jpg\"/><br/></p><p><img title=\"1583674615195033863.jpg\" src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583674615195033863.jpg\"/></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><br/></span><br/></p>', 18.00, 25.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583659175393050302.jpg', 1832, 990, b'1', '2019-09-05 17:45:37', -99, -1, '2020-03-12 15:40:50');
INSERT INTO `product` VALUES (141, 49, '菌王汤', 0, 1, '野生菌王汤是有可调节免疫力，有抗癌作用，同时有清热解毒、润肺利尿等功效的汤羹。', '<p>提前将菇类洗净后用水漂1～2天，沥干水后放入高汤，大火煲滚，然后改小火继续煲3个小时左右，盛汤前加盐调味，野生菌王汤是有可调节免疫力，有抗癌作用，同时有清热解毒、润肺利尿等功效的汤羹。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583670729217050350.jpg\" title=\"1583670729217050350.jpg\"/><br/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583670729233005313.jpg\" title=\"1583670729233005313.jpg\"/></p><p><br/></p><p><br/></p>', 20.00, 23.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583660349917059464.jpg', 1780, 6666, b'1', '2019-09-05 17:46:16', -99, -1, '2020-03-12 15:19:53');
INSERT INTO `product` VALUES (142, 6, '味千拉面', 100, 1, '好好好', '<p>味千拉面徽号是妹妹携带碗面图案，在日本已有25余间分店（其中7成在熊本县)。</p><p>1968年创始于日本。</p><p>1996年潘慰开始将日本味千拉面引入香港及内地，并先后取得该品牌在香港、澳门及内地的永久经营权。</p><p>2007年3月，味千拉面的股票在香港主板上市。</p><p>2018年11月27日，味千拉面在上海中心举办“大骨熬汤50年，全球门店800家”品牌战略升级发布会。</p><p>味千骨汤是采用日本中央大厨房熬汤工艺，生成了高品质的味千骨汤汤底。从选材、切块、熬煮、蒸发、包装、配送、出品七大核心环节，通过一体化的品控管理，对时间、温度、计量、顺序等进行把控，也正是因为中央大厨房的熬汤工艺保证了标准化出品，让口味一致的骨汤送到不同门店</p><p>2018年11月17日，国内多家媒体参观了味千位于山形的中央大厨房，据相关负责人介绍，中央大厨房熬汤已成为日本连锁拉面店主流的熬汤方式。</p><p>针对此前消息质疑的钙质含量问题，味千方面表示，“味千汤底的钙含量是由于浓缩未还原的计算方式错误而致，对此我们已经修改。”11月上海市工商局在日前以反不正当竞争法为由，决定对味千进行行政处罚，罚款20万元。2012年2月，味千拉面被曝产品提价，公司方面回应称提价已有半年以上时间。</p><p>2020年1月10日，味千中国2019年第四季度同店销售增长为6.8%。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583673174165073833.jpg\" title=\"1583673174165073833.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583673175993087026.jpg\" title=\"1583673175993087026.jpg\"/></p><p><br/></p>', 23.00, 25.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567676762205031022.jpg', 1805, 333, b'1', '2019-09-05 17:46:33', -99, -1, '2020-03-08 21:13:01');
INSERT INTO `product` VALUES (143, 25, '草莓小烤杯', 50, 1, '杯子蛋糕，一种蛋糕的种类，意指cupcake,装入纸杯中的蛋糕。顾名思义，草莓杯子蛋糕，即以草莓为主要原料和装饰的cupcake。\n\n', '<p>杯子蛋糕，一种蛋糕的种类，意指cupcake,装入纸杯中的蛋糕。顾名思义，草莓杯子蛋糕，即以草莓为主要原料和装饰的cupcake。</p><p>⒈将黄油和牛奶混合加热至黄油熔化后备用，低筋面粉过筛备用。</p><p>⒉将蛋打散，加入细砂糖打至用打蛋头挑起蛋液划线，划痕不会立即消失的程度。</p><p>⒊加入过筛的低筋面粉拌匀。</p><p>⒋取少量面糊与黄油和牛奶的混合液混匀。</p><p>⒌将4倒入3中拌匀。</p><p>⒍将面糊盛入纸杯中约8分左右满。</p><p>⒎入预热170℃的烤箱，中层，上下火，15分钟左右。</p><p>⒏蛋糕晾凉后，在表面挤适量打发的淡奶油后，用草莓进行装饰。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583742047162016983.jpg\" title=\"1583742047162016983.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583742047240062731.jpg\" title=\"1583742047240062731.jpg\"/></p><p><br/></p>', 10.00, 12.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567676746044047550.jpg', 1803, 20, b'1', '2019-09-05 17:46:36', -99, -1, '2020-03-09 16:20:50');
INSERT INTO `product` VALUES (144, 49, '山药香菇枸杞排骨汤', 50, 1, '山药香菇枸杞排骨汤是一道以排骨等为原料的美食。 ', '<p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 16px;\"><span style=\"font-family: arial, helvetica, sans-serif; letter-spacing: 0px;\">山药香菇枸杞排骨汤是一道以排骨等为原料的美食。具有</span><span style=\"font-family: arial, helvetica, sans-serif; color: rgb(51, 51, 51); letter-spacing: 0px; background: rgb(255, 255, 255);\">健脾益胃、助消化</span><span style=\"font-family: arial, helvetica, sans-serif; letter-spacing: 0px;\">，</span><span style=\"font-family: arial, helvetica, sans-serif; color: rgb(51, 51, 51); letter-spacing: 0px; background: rgb(255, 255, 255);\">滋肾益精</span><span style=\"font-family: arial, helvetica, sans-serif; letter-spacing: 0px;\">&nbsp; ，</span><span style=\"font-family: arial, helvetica, sans-serif; color: rgb(51, 51, 51); letter-spacing: 0px; background: rgb(255, 255, 255);\">益肺止咳</span><span style=\"font-family: arial, helvetica, sans-serif; letter-spacing: 0px;\">，</span><span style=\"font-family: arial, helvetica, sans-serif; color: rgb(51, 51, 51); letter-spacing: 0px; background: rgb(255, 255, 255);\">降低血糖，延年益寿，抗肝昏迷多种功效。</span></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\"></span></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583671527866063492.jpg\" title=\"1583671527866063492.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583671527897064997.jpg\" title=\"1583671527897064997.jpg\"/></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><br/></span><br/></p>', 28.88, 35.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567676763633054028.jpeg', 2086, 435, b'1', '2019-09-05 17:46:36', -99, -1, '2020-03-08 23:45:49');
INSERT INTO `product` VALUES (146, 6, '窝窝头', 100, 1, '多种蛋白质、氨基酸、不饱合脂肪酸、碳水化合物\n适宜老年人、心脑血管疾病患者、糖尿病、肥胖病人', '<p>窝窝头是以玉米粉、黄豆粉为主要原料的一种食品。其纤维素含量很高，具有刺激胃肠蠕动、加速粪便排泄的特性，可防治便秘、肠炎、肠癌等。窝窝头含有多种蛋白质、氨基酸、不饱合脂肪酸、碳水化合物，适宜老年人、心脑血管疾病患者、糖尿病、肥胖病人食用。<img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583672912506051498.jpg\" title=\"1583672912506051498.jpg\" alt=\"10窝窝头.jpg\"/><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583846360904004887.png\" title=\"1583846360904004887.png\" alt=\"1窝窝头.png\"/><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583846377936047304.jpeg\" title=\"1583846377936047304.jpeg\" alt=\"1窝窝头2.jpeg\"/></p>', 1.00, 4.00, 'http://182.92.128.70:8081/upload/website/image/20200310/1583846338541021913.jpeg', 2767, 50000, b'1', '2019-09-05 17:46:49', -99, -1, '2020-03-10 21:19:42');
INSERT INTO `product` VALUES (147, 48, '葱油鲍鱼', 100, 1, '鲍鱼是海产贝类，同鱼毫无关系，倒跟田螺之类沾亲带故。它是海洋中的单壳软体动物，只有半面外壳，壳坚厚，扁而宽，形状有些像人的耳朵，所以也叫它\"海耳\"。自古被人们视为“海味珍品之冠”，其肉质柔嫩细滑，滋味极其鲜美，非其他海味所能比拟的。', '<p>鲍鱼营养价值极高，富含丰富的球蛋白；鲍鱼的肉中还含有一种被称为“鲍素”的成分，能够破坏癌细胞必需的代谢物质。</p><p>葱油鲍鱼是一道菜品，主料为鲍鱼、料酒。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583740091651039578.jpg\" title=\"1583740091651039578.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583740091666054258.jpg\" title=\"1583740091666054258.jpg\"/></p><p><br/></p>', 10.00, 20.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583655929859081419.jpg', 2778, 99, b'1', '2019-09-05 18:37:11', -99, -1, '2020-03-09 15:48:14');
INSERT INTO `product` VALUES (148, 48, '清蒸生蚝', 100, 1, '清蒸生蚝是将新鲜的生蚝放进蒸箱蒸。蚝是一种有“海中牛奶”之誉的海洋生物，富含人体必需的蛋白质和微量元素。', '<p>壮骨。生蚝中钙含量接近牛奶，铁含量为牛奶的21倍，食用后有助于骨骼生长。尤其对老年男性非常有利，不但养骨、健齿，还有益智作用。</p><p>清蒸生蚝是将新鲜的生蚝放进蒸箱蒸。蚝是一种有“海中牛奶”之誉的海洋生物，富含人体必需的蛋白质和微量元素。蚝有了更多的吃法，但美食家始终推崇生食。尤其在生食时其营养价值极高。若佐以口感偏干的白酒，生蚝的味道会更臻鲜美。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583739593818044052.jpg\" title=\"1583739593818044052.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583739593849090000.jpeg\" title=\"1583739593849090000.jpeg\"/></p><p><br/></p>', 10.00, 20.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583655877203029580.jpg', 2754, 99, b'1', '2019-09-05 18:45:14', -99, -1, '2020-03-09 15:39:58');
INSERT INTO `product` VALUES (149, 48, '铁板鱿鱼', 100, 1, '铁板鱿鱼是一道街边小吃，是用铁板把鱿鱼煎熟后，再用铁铲将鱿鱼切段，然后撒上特制酱做成。铁板烧起源于日本，已经有40年的悠久历史。铁板鱿鱼是一道街边小吃，是用铁板把鱿鱼煎熟后，再用铁铲将鱿鱼切段，然后撒上特制酱做成。', '<p>铁板烧起源于日本,已经有40年的悠久历史,国内铁板烧风靡大江南北,红透全国各地,经历数年市场培育,在各地城市形成了一批又一批铁板烧的爱好者顾客群,无论在南方还是北方,无论是在豪华的酒店还是繁华的街头都可以火暴经营,深受欢迎老少皆宜!<br/>铁板烧讲究其食材新鲜，干净卫生,鲜味完全来自食材本身。没有一点腥味，丝毫不会破坏食物的原味。并且铁板导热快温度高，食材可以迅速地成熟，最大程度地保留食材的营养，口感也是无法比拟地有汁有味。<br/>铁板烧配方,是采用中香料秘制配方加工出与众不同的香味,吃完一次还想吃,回头率达百分之九十八以上,收入十分可观.所用的原料都是先经过几十种调料,中药材浸泡,然后经铁板烤制而成.<br/>铁板烧可做的食品种类众多，如,鱿鱼、热狗(香肠),牛肉、海螺、鸡、动物肾脏、腰花、炒饭、鲈鱼等等再刷上各种不同的调味酱,鲜美润滑,油而不腻.本品可现场加工现做现卖,不仅受到青年男女和学生的喜爱,还倍受中老年人的青睐!是一道美味的小吃！深受广大人民的喜爱。</p><p></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583739484957050226.jpg\" title=\"1583739484957050226.jpg\"/><br/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583739484973086658.jpg\" title=\"1583739484973086658.jpg\"/></p><p><span style=\"color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: arial, &quot;pingfang sc&quot;, stheiti, simsun, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\"><br/></span><br/></p>', 60.00, 80.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567680156298066696.jpg', 1786, 0, b'1', '2019-09-05 18:45:25', -99, -1, '2020-03-12 14:39:57');
INSERT INTO `product` VALUES (150, 48, '濑尿虾', 100, 1, ' 赖尿虾( 皮皮虾) 营养价值非常高. \" 皮皮虾\"俗称\"赖尿虾\"又名\" 富贵虾\"、\" 琵琶虾\"等, 虾蛄是其学名;虾蛄的营养价值较高,其性温,味甘,有 补肾壮阳、活血生津、通乳脱毒之功效.虾蛄的肉质含水分较多,肉味鲜甜嫩滑,淡而柔软。', '<p>皮皮虾（学名：Oratosquilla oratoria），别称琵琶虾、虾耙子等，虾蛄科口虾蛄属动物。[1]分布范围极广，从俄罗斯的大彼得海湾到日本及中国沿海、菲律宾、马来半岛、夏威夷群岛均有分布。</p><p>皮皮虾头胸甲前缘中央有一片能活动的梯形额角板，其前方有能活动的眼节和触角节。腹部宽大，共六节，最后另有宽而短的尾节，其背面有中央脊，后缘具强棘。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583739284768097236.jpg\" title=\"1583739284768097236.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583739287236083536.jpg\" title=\"1583739287236083536.jpg\"/></p><p><br/></p>', 50.00, 60.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567680523285035872.jpg', 1758, 0, b'1', '2019-09-05 18:48:48', -99, -1, '2020-03-09 15:34:52');
INSERT INTO `product` VALUES (151, 48, '麻辣蛤蜊', 100, 1, '蛤蜊色泽焦黄，有张有合，欲拒还羞，挑逗客官的味觉。佐以绿色的大葱和黄瓜，宛若千里荒岩，簇簇绿生，十分讨人喜。而色泽暗红小米辣则低调隐忍，丝毫不夺人眼球，只是偶然惊鸿一瞥，便叫你心跳快上三分。', '<p><span style=\"color: rgb(64, 64, 64); font-family: -apple-system, BlinkMacSystemFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Segoe UI&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);\">蛤蜊色泽焦黄，有张有合，欲拒还羞，挑逗客官的味觉。佐以绿色的大葱和黄瓜，宛若千里荒岩，簇簇绿生，十分讨人喜。而色泽暗红小米辣则低调隐忍，丝毫不夺人眼球，只是偶然惊鸿一瞥，便叫你心跳快上三分。</span></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583739148954030768.jpg\" title=\"1583739148954030768.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583739148985025472.jpg\" title=\"1583739148985025472.jpg\"/></p><p><span style=\"color: rgb(64, 64, 64); font-family: -apple-system, BlinkMacSystemFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Segoe UI&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);\"></span><br/></p>', 145.00, 184.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583655832078012160.jpg', 1835, 123, b'1', '2019-09-05 18:52:03', -99, -1, '2020-03-09 15:32:42');
INSERT INTO `product` VALUES (152, 48, '冰鲜北极贝', 50, 1, '北极贝是一种营养非常丰富的食物，它的肉质非常鲜美所以深受男女老少的喜爱，适当的吃北极贝对人们的身体健康是有好处的。', '<p>库页岛马珂蛤（学名：Pseudocardium sachalinense），又名北寄贝、北极贝、姥贝。马珂蛤科的一种贝，是日本和附近国家重要的食用贝类之一，福岛县相马市的代表性产物，亦被列为北海道苫小牧市的市贝。作为水产物时常被称为北寄贝（ホッキガイ）。此名称源自北海道方言阿伊努语的“ポキセイ”。</p><p>过节这几天，冰箱里存了很多冰鲜食品，正好和家人一起，吃了海鲜大餐，其中北极贝就是一个，北极贝吃法多样，不过最好吃还是即食吃起来更加新鲜，北极贝从深海打捞上来，经过处理已经是熟的了，所以，自己稍作加工就可以像饭店一样，同样可以做出美味的冰鲜北极贝哦。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583735288760054431.jpg\" title=\"1583735288760054431.jpg\"/><br/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583735288823020469.jpeg\" title=\"1583735288823020469.jpeg\"/></p><p><span style=\"color: rgb(102, 102, 102); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\"><br/></span><br/></p>', 120.00, 600.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583663201051034265.png', 1796, 600001, b'1', '2019-09-05 18:53:40', -99, -1, '2020-03-12 14:37:36');
INSERT INTO `product` VALUES (153, 48, '剁椒鱼头', 100, 1, '菜品色泽红亮、味浓、肉质细嫩。肥而不腻、口感软糯、鲜辣适口。', '剁椒鱼头属湘菜系，是湘潭的一道名菜。以鱼头的“味鲜”和剁辣椒的“辣”为一体，肥而不腻、肉质细嫩、鲜辣适口，风味独具一格。特别指出的是此菜所使用的油是茶油。剁椒鱼头味辣、偏咸鲜，尤以湖南湘潭所作最为出名，风味独具一格。湖南湘潭的剁椒鱼头是在大街小巷的大小餐馆酒店都可以吃到的。它的来历和清代著名文人黄宗宪有关。火辣辣的红剁椒，覆盖着白嫩嫩的鱼头肉，冒着热腾腾清香四溢的香气。据说清朝雍正年间，黄宗宪为了躲避文字狱，逃到湖南一个小村子，借住农户家。这家人很穷，买不起菜，幸好晚上吃饭前，农户的儿子捞了一条河鱼回家。于是，女主人就在鱼肉里面放盐煮汤，再将辣椒剁碎后与鱼头同蒸。黄宗宪觉得非常鲜美，从此对鱼头情有独钟。避难结束后，他让家里厨师加以改良，就成了今天的湖南名菜剁椒鱼头。<p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583737604953056843.jpg\" title=\"1583737604953056843.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583737605141036260.jpg\" title=\"1583737605141036260.jpg\"/></p>', 89.00, 123.50, 'http://182.92.128.70:8081/upload/website/image/20190905/1567680249577051027.jpg', 3048, 45641, b'1', '2019-09-05 18:55:02', -99, -1, '2020-03-09 15:06:52');
INSERT INTO `product` VALUES (154, 48, '酸菜鲈鱼', 100, 1, '酸菜鲈鱼是一款家常菜品，制作原料主要有酸菜、鲈鱼等。', '<p>酸菜鲈鱼是一款家常菜品，制作原料主要有酸菜、鲈鱼等。</p><p><br/></p><p>中文介绍编辑</p><p>酸菜鱼原料：　　鲈鱼1条、酸菜200g、生姜1小块、大蒜头6瓣、大葱一段　　酸菜鱼调料：</p><p>油2大勺、花椒少许(20粒左右)</p><p>酸菜鲈鱼做法：酸菜鲈鱼步骤一：鲈鱼去内脏和鱼腮后洗净备用；酸菜洗净备用；大蒜头用刀背拍开备用、大葱切圈后备用；生姜切片备用。</p><p>酸菜鲈鱼步骤二：酸菜切片。</p><p>小提示：</p><p>市面上酸菜很多，其中散装的酸菜很咸，做汤的时候不能放多，袋装的酸菜里有酸菜调料包和没有调料包2种，如果选择价格适中的话可以买袋装无调料包的，一来，酸菜买回来还是要清洗一下比较放心，二来，调料包其实可以根据自己的口味自己配的更新鲜。</p><p>酸菜鲈鱼步骤三：起油锅，放入花椒粒，花椒粒数量根据自己能承受的麻的能力来放，图上的大概10粒左右，主要是提香，基本上没麻的感觉。</p><p>酸菜鲈鱼步骤四：爆香花椒后丢掉，然后倒入生姜片、大蒜、大葱煸炒出香味。</p><p>酸菜鲈鱼步骤五：倒入酸菜煸炒2分钟左右，这个时候酸菜煸炒出的香味很浓了。</p><p>酸菜鲈鱼步骤六：倒入适量清水烧开后小火烧5分钟。</p><p>酸菜鲈鱼步骤七：继续倒入鲈鱼，鲈鱼可以整条，也可以切的小一些，看自家的锅大小而定。</p><p>酸菜鲈鱼步骤八：继续烧开后开盖沸腾5分钟即可。</p><p>小贴士：</p><p>这道菜最主要的一点就是不要放盐啊，酸菜本身是很咸的。可以适当的放点醋，去下腥味！<img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583736835961026533.jpg\" title=\"1583736835961026533.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583736836039082719.jpeg\" title=\"1583736836039082719.jpeg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583736836055053169.jpg\" title=\"1583736836055053169.jpg\"/></p><p><br/></p>', 99.00, 130.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583655783218081173.jpg', 1853, 0, b'1', '2019-09-05 18:57:07', -99, -1, '2020-03-12 14:37:56');
INSERT INTO `product` VALUES (155, 48, '剁椒鳊鱼', 50, 1, '剁椒扁鱼是一道以武昌鱼、剁椒等为主要材料的美食，配料有花椒、色拉油等。该美食主要通蒸煮的烹饪方法制作而成。', '<p>1鳊鱼去鳞去肠去鳃，洗净沥干，在鱼身斜切几刀，抹上盐，放些料酒，姜丝，腌制20分钟.</p><p>2把腌制鱼渗出的汁倒掉，放2调羹剁椒。</p><p>3放些葱白</p><p>4放些蒸鱼豉油，隔水蒸8--10分钟.</p><p>5把蒸鱼的水倒去，放上葱段，把植物油烧开，倒在鱼上面即可</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583735183697052003.jpg\" title=\"1583735183697052003.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583735183775090361.jpg\" title=\"1583735183775090361.jpg\"/></p><p><br/></p>', 100.00, 120.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583656490674054057.jpeg', 1827, 3222, b'1', '2019-09-05 18:58:21', -99, -1, '2020-03-09 14:26:31');
INSERT INTO `product` VALUES (156, 48, '飘香东星斑', 100, 1, '飘香东星斑，香港十大经典名菜之一。', '<p>飘香东星斑是2018年9月10日发布的“中国菜”之一。</p>东星斑，Plectropomus leopardus (Lacepède, 1802)，&nbsp;鮨科鳃棘鲈属的一种鱼类。东星斑颜色鲜艳，很适合饲养在凶猛鱼的混养缸。石斑是很凶猛的&nbsp;掠食者，会吞掉任何它能吞掉的鱼。也会吃掉观赏用的虾及其他甲壳类动物。不像&nbsp;炮弹鱼，&nbsp;石斑鱼会整个吞下猎物而不是咬食。不会骚扰它们吞不下去的鱼，可以和其他品种的石斑鱼混养，但会和其他星斑打架。食物包括各种海鱼、 鱿鱼、 贝类及 虾。需要经常提供一些活食，足够的营养会保持它的色彩。<p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583735400682025992.jpeg\" title=\"1583735400682025992.jpeg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583735400808033667.jpg\" title=\"1583735400808033667.jpg\"/></p>', 699.00, 999.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583655746327006487.jpg', 1849, 107, b'1', '2019-09-05 19:00:57', -99, -1, '2020-03-09 14:30:04');
INSERT INTO `product` VALUES (157, 48, '蟹黄', 50, 1, '蟹黄中含有丰富的蛋白质、磷脂和其他营养物质，营养丰富，但是同时含有较高含量的油脂和胆固醇。蟹黄可制成很多美食：蟹黄粥等。上海滩还有著名的美味小吃——蟹粉小笼。顾名思义，主料就是蟹黄。蟹黄有河蟹黄和海蟹黄两种。', '<p>蟹膏也有可能是脂肪。因为公蟹为了准备过冬，渐渐的脂肪堆积，长成了蟹膏（俗称蟹油）。剥开公蟹的壳，可以看到蟹壳和蟹坨坨当中有白白的、粘粘的东西，就是蟹膏（蟹油）。煮熟了以后，蟹膏变成了半透明状。蟹膏越多，说明这只公蟹越壮。</p><p>在野生的环境中，到了农历九月，母蟹的蟹黄长得最丰满；到了十月，公蟹的蟹膏（蟹油）长得最厚实。所以，过去吃螃蟹，有“九雌十雄”的说法。意思是：农历九月里要吃母蟹，农历十月里要吃公蟹。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583735071244023955.jpg\" title=\"1583735071244023955.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583735071228075859.jpg\" title=\"1583735071228075859.jpg\"/></p><p><br/></p>', 69.00, 119.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567683427828014985.jpg', 2798, 8946, b'1', '2019-09-05 19:38:53', -99, -1, '2020-03-09 14:24:44');
INSERT INTO `product` VALUES (158, 6, '风味双拼', 0, 2, '采用优质食材，撒上颗颗饱满的玉米点缀，来一口，温暖你的心。\n', '<p>双拼一般由两个菜品，一荤一素的搭配再加上米饭或者面条，配上一些配菜，一份的价钱就可以品尝两份口味，方便美味。且可以自己选择自己喜欢的菜品，非常适合赶时间的朋友们以及单人用餐像品尝多份菜品的用户<img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583670243900031545.jpg\" title=\"1583670243900031545.jpg\" alt=\"双拼菜.jpg\"/><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583664856417005180.jpg\" title=\"1583664856417005180.jpg\" alt=\"9998a7d228d6ff1d4629b8b17284f8be3a32180fd4d0f-1WONNG_fw658.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583664969137002223.jpg\" title=\"1583664969137002223.jpg\" alt=\"QQ图片20200306155014.jpg\"/></p><p><br/></p>', 18.00, 28.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583662457523097282.jpg', 2750, 54678, b'1', '2019-09-05 19:41:57', -99, -99, '2020-03-21 16:04:49');
INSERT INTO `product` VALUES (159, 6, '章鱼烧', 100, 1, '	\n味鲜而香，营养成分十分丰富', '<p>章鱼小丸子又名章鱼烧，起源于日本大阪，成份主要是章鱼，章鱼烧粉，柴鱼片，海苔，沙拉酱，章鱼烧酱等。创始人是日本著名美食家——远藤留吉先生，素有皮酥肉嫩、味美价廉之特点，成为日本家喻户晓的国粹小吃。章鱼小丸子早随后在东南亚各地区流行起来，成为各地区的新兴食品之一。</p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, &quot;pingfang sc&quot;, stheiti, simsun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\"></span><img src=\"http://182.92.128.70:8081/upload/website/image/20190905/1567693738768030754.jpg\" title=\"1567693738768030754.jpg\" alt=\"timg.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583672673050019167.jpg\" title=\"1583672673050019167.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583672673081082928.jpg\" title=\"1583672673081082928.jpg\"/></p><p><br/></p>', 11.00, 16.00, 'http://182.92.128.70:8081/upload/website/image/20190905/1567693711169015255.jpg', 2649, 2333, b'1', '2019-09-05 22:29:03', -99, -1, '2020-03-12 14:16:51');
INSERT INTO `product` VALUES (160, 6, '松茸扒菜心', 100, 1, '来自农家的青菜，可口美味', '<p><span style=\"font-family: &quot;Hiragino Sans GB&quot;, STHeiti, 微软雅黑, &quot;Microsoft YaHei&quot;, Helvetica, Arial, serif; background-color: rgb(255, 255, 255);\">有机青菜，营养美味，让人欲罢不能，吃了还想再来一盘。</span></p><p><span style=\"font-family: &quot;Hiragino Sans GB&quot;, STHeiti, 微软雅黑, &quot;Microsoft YaHei&quot;, Helvetica, Arial, serif; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(17, 17, 17); font-family: PingFangSC-Regular; text-align: justify; background-color: rgb(255, 255, 255);\">无论是平日家常饭，还是家庭聚会、节日大餐，菜心都是能够登大雅之堂的一道素菜。虽然随着时代的进步，引进的青菜品种越来越多，但是菜心仍然不失为一个素菜的好选择，尤其是喜好上海青的人们。N年前，这道南方的菜心在北方还是很奢侈的素菜，只有在酒店才有，后来飞入寻常百姓家，成为了今日的一道家常菜。</span></span></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583672528673013485.jpeg\" title=\"1583672528673013485.jpeg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583672528923058385.png\" title=\"1583672528923058385.png\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583672529236037678.png\" title=\"1583672529236037678.png\"/></p><p><span style=\"font-family: &quot;Hiragino Sans GB&quot;, STHeiti, 微软雅黑, &quot;Microsoft YaHei&quot;, Helvetica, Arial, serif; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(17, 17, 17); font-family: PingFangSC-Regular; text-align: justify; background-color: rgb(255, 255, 255);\"></span></span><br/></p>', 12.00, 20.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583647417670003530.png', 2279, 99, b'1', '2019-09-05 22:33:36', -99, -1, '2020-03-08 21:02:17');
INSERT INTO `product` VALUES (163, 6, '螺蛳粉', 0, 4, '螺蛳粉是柳州的传统文化美食，味道鲜香爽口，采用传统工艺制作，嗦上一口给你柳州的味道！', '<p><span style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\">螺蛳粉具有酸、辣、鲜、爽、烫的独特风味,位居柳州风味小吃之首,它由柳州特有的软滑爽口的米粉,加上酸笋、木耳、花生、油炸腐竹、黄花菜、鲜嫩青菜等配料及浓郁适度的酸辣味和煮烂螺蛳的汤水调合而成,因有奇特鲜美的螺蛳汤,使人吃一想二。</span><span style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\">　　柳州人一回到家乡都是第一时间找一碗螺蛳粉,以解乡思。</span><span style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; background-color: rgb(255, 255, 255);\">　　螺蛳粉是柳州最出名也最受大众欢迎的小吃米粉,它就像周星驰的&quot;无厘头”笑话一样,于市井之中,随处可见,随手可得。</span></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20190905/1567675235357029569.jpg\"/><br/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20190905/1567675235421061119.jpg\"/></p><p><br/></p>', 10.00, 10.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583663398021065865.png', 1816, 10001, b'1', '2020-01-31 14:22:53', -99, -99, '2020-03-21 16:06:56');
INSERT INTO `product` VALUES (166, 6, '西红柿挂面', 100, 3, '西红柿的美味加上挂面的香，妈妈的味道~', '<p>这是一道家常菜，<span style=\"margin: 0px; padding: 0px; max-width: 100%; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; letter-spacing: 0.544px; box-sizing: border-box !important; overflow-wrap: break-word !important;\">西红柿鸡蛋挂面需要准备的材料有：</span><span style=\"margin: 0px; padding: 0px; max-width: 100%; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; letter-spacing: 0.544px; box-sizing: border-box !important; overflow-wrap: break-word !important;\">西红柿，菠菜，鸡蛋，空心挂面，香菜，大葱，辣椒面，生抽，盐，醋。&nbsp; &nbsp;</span></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583672231092067603.jpg\" title=\"1583672231092067603.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583672231327075219.jpg\" title=\"1583672231327075219.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200308/1583672231655083165.jpg\" title=\"1583672231655083165.jpg\"/></p><p><span style=\"margin: 0px; padding: 0px; max-width: 100%; color: rgb(34, 34, 34); font-family: &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, &quot;Helvetica Neue&quot;, Arial, sans-serif; letter-spacing: 0.544px; box-sizing: border-box !important; overflow-wrap: break-word !important;\"></span><br/></p>', 18.00, 25.00, 'http://182.92.128.70:8081/upload/website/image/20200308/1583662949675083960.jpg', 775, 888, b'1', '2020-03-08 18:23:25', -1, -1, '2020-03-08 20:57:32');
INSERT INTO `product` VALUES (167, 25, '提拉米苏', 100, 1, '提拉米苏（Tiramisu）是一种带咖啡酒味儿的意大利甜点。', '<p>提拉米苏（Tiramisu）是一种带咖啡酒味儿的意大利甜点。以马斯卡彭芝士作为主要材料，再以手指饼干取代传统甜点的海绵蛋糕，加入咖啡、可可粉等其他材料。吃到嘴里香、滑、甜、腻、柔和中带有质感的变化，味道并不是一味的甜。</p><p>在意大利文里提拉米苏（Tiramisu）的意思是“马上把我带走”，意指吃了此等美味，就会幸福得飘飘然、宛如登上仙境</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583745014977044346.jpg\" title=\"1583745014977044346.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583745015039004616.jpg\" title=\"1583745015039004616.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583745015227036456.jpg\" title=\"1583745015227036456.jpg\"/></p><p><br/></p>', 15.00, 25.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583744985711017100.jpg', 1226, 1324, b'1', '2020-03-09 17:10:51', -1, NULL, NULL);
INSERT INTO `product` VALUES (168, 46, '意面', 100, 4, '意大利面条（Spaghetti）是意大利的主食之一，简称意粉，口感紧实而有弹性，是意大利的代表美食，也是西餐正餐中最接近中国人饮食习惯的面点。\n\n', '<p>意大利面条（Spaghetti）是意大利的主食之一，简称意粉，口感紧实而有弹性，是意大利的代表美食，也是西餐正餐中最接近中国人饮食习惯的面点。<br/></p><p>最初的意大利面条可追溯至公元5世纪犹太教经典的《塔木德》，据记载，意面当时已流行于西西里岛。意大利面条的主要原料为杜兰小麦，拥有直线型、螺丝型、蝴蝶型、空心型等数百种形状。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583746351185089566.jpg\" title=\"1583746351185089566.jpg\"/><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583746392904043557.jpg\" title=\"1583746392904043557.jpg\" alt=\"1意面.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583746351185033020.jpg\" title=\"1583746351185033020.jpg\"/></p><p><br/></p>', 45.00, 55.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583746237294032027.jpg', 1130, 13464, b'1', '2020-03-09 17:33:30', -1, NULL, NULL);
INSERT INTO `product` VALUES (169, 46, '菲力牛排', 100, 5, '菲力牛排四个字中的菲力，指的是牛里脊肉（beef tenderloin）', '<p>菲力牛排四个字中的菲力，指的是牛里脊肉（beef tenderloin）。在澳洲，这块肉被称为“眼菲力”，在法国和英国被称为filet和fillet，中文音译菲力。菲力牛排就是用一定厚度的牛里脊肉做出的牛排。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583746598811074833.jpg\" title=\"1583746598811074833.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583746601326001894.jpg\" title=\"1583746601326001894.jpg\"/></p><p><br/></p>', 68.00, 99.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583746514873007048.png', 1106, 12345, b'1', '2020-03-09 17:36:47', -1, NULL, NULL);
INSERT INTO `product` VALUES (170, 46, '三明治', 100, 3, '三明治是一种典型的西方食品，以两片面包夹几片肉和奶酪、各种调料制作而成，吃法简便，广泛流行于西方各国。\n\n', '<p>三明治是一种典型的西方食品，以两片面包夹几片肉和奶酪、各种调料制作而成，吃法简便，广泛流行于西方各国。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583746871421061770.jpg\" title=\"1583746871421061770.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583746871609029989.jpg\" title=\"1583746871609029989.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583746871624014254.jpg\" title=\"1583746871624014254.jpg\"/></p>', 18.00, 25.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583750735218039584.jpg', 816, 555, b'1', '2020-03-09 17:41:22', -1, -1, '2020-03-09 18:45:38');
INSERT INTO `product` VALUES (171, 46, '意式番茄鸡蛋通心粉', 100, 4, '通心粉有两百多种，从形状来说，面条形的有宽窄、粗细、圆扁等；空管形的有直管、弯管、扭曲管、花纹管等；花形的有螺旋、贝壳、星星、车轮、蝴蝶或橄榄叶等，甚至还有卡通数字形的意粉。今天以短管意粉入菜，它中空呈直管，外表压有条纹，具有耐久煮、有嚼劲、营养价值高等特点。', '<p>通心粉有两百多种，从形状来说，面条形的有宽窄、粗细、圆扁等；空管形的有直管、弯管、扭曲管、花纹管等；花形的有螺旋、贝壳、星星、车轮、蝴蝶或橄榄叶等，甚至还有卡通数字形的意粉。今天以短管意粉入菜，它中空呈直管，外表压有条纹，具有耐久煮、有嚼劲、营养价值高等特点。</p><p>1、番茄洗净去蒂，切成块状。</p><p>2、鸡蛋打入碗内，加入1/2汤匙，蚝油和1/3汤匙生粉，打散成蛋液。</p><p>3、烧热3汤匙油，炒香蒜末，倒入番茄快炒至出汁，注入1碗清水搅匀煮沸，改小火焖煮10分钟。</p><p>4、取一平底锅，烧热3汤匙油，倒入蛋液摊匀，以小火煎至双面成金黄色。</p><p>5、加入2汤匙番茄沙司、2汤匙白糖和1/3汤匙盐调味。</p><p>6、将蛋饼切成条状，倒入番茄汁中搅拌均匀。</p><p>7、烧开锅内的水，加入1汤匙盐，放入通心粉加盖以中火煮7～8分钟。</p><p>8、煮至通心粉八成熟，捞起过冷河沥干水。</p><p>9、将煮好的通心粉倒入番茄汁中炒匀，以小火续煮1分钟，即可出锅。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583747073672044622.jpg\" title=\"1583747073672044622.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583747073703023279.jpeg\" title=\"1583747073703023279.jpeg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583747073828080980.jpg\" title=\"1583747073828080980.jpg\"/></p><p><br/></p>', 45.00, 55.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583747090578095249.jpeg', 1915, 11112, b'1', '2020-03-09 17:45:12', -1, -1, '2020-03-09 18:27:10');
INSERT INTO `product` VALUES (172, 46, '冷什锦肉', 100, 4, '必点美食~~', '<p>1. 猪肉切片加入淀粉上浆。</p><p>2. 木耳提前泡发。</p><p>3. 豆腐切成小块。</p><p>4. 胡萝卜切丝，焯水备用。</p><p>5. 鲜蘑撕成小条后焯水。</p><p>6. 煎锅放油下入豆腐煎成金黄。</p><p>7. 锅中留底油，爆香葱碎，下入肉片翻炒至变色。</p><p>8. 倒入料酒、酱油、糖翻炒均匀。</p><p>9. 加入豆腐继续翻炒。</p><p>10. 加入木耳和鲜蘑翻炒均匀。</p><p>11. 再加入胡萝卜丝。</p><p>12. 芶入水淀粉，加入鸡精调味即可。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583747476220001859.jpeg\" title=\"1583747476220001859.jpeg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583747476236065385.jpg\" title=\"1583747476236065385.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583747476345012585.jpeg\" title=\"1583747476345012585.jpeg\"/></p><p><br/></p>', 38.00, 45.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583747435939070553.jpg', 755, 1597, b'1', '2020-03-09 17:51:25', -1, NULL, NULL);
INSERT INTO `product` VALUES (173, 49, '三合汤', 100, 1, '三合汤因其起源于同治年间的郧县而得名，至今已有100多年的历史。', '<p>三合汤是始源自湖北郧阳地区的一道传统名小吃。郧阳三合汤因其起源于同治年间的郧阳而得名，当地人也说，三合汤是三种主要食品成分的组合，因此叫做“三合”，当地还流传几句顺口溜，“天下香客朝武当 &nbsp;必吃万历三合汤”，“郧阳万历三合汤， 一顿不吃想的慌！一碗正宗的三合汤中都含有当地农户的红薯粉，牛肉片以及碗中几个小饺子。三合汤至今已有400多年的历史。属郧阳风味美食。</p><p></p><p><img title=\"1583747745175077404.jpg\" src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583747745175077404.jpg\"/><br/></p><p><img title=\"1583747745190001978.jpg\" src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583747745190001978.jpg\"/></p><p><span style=\"font: 400 14px/24px arial,helvetica,sans-serif; text-align: left; color: rgb(51, 51, 51); text-transform: none; text-indent: 2em; letter-spacing: normal; text-decoration: none; word-spacing: 0px; display: inline !important; zoom: 1; orphans: 2; font-size-adjust: none; font-stretch: normal; float: none; -webkit-text-stroke-width: 0px; overflow-wrap: break-word; background-color: rgb(255, 255, 255);\"><br/></span><br/></p>', 28.00, 35.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583747509830022550.jpg', 914, 1261, b'1', '2020-03-09 17:55:48', -1, -1, '2020-03-12 15:40:37');
INSERT INTO `product` VALUES (174, 46, '红烩牛肉', 100, 3, '红烩牛肉，菜系及功效：其他国家；气血双补食谱，消化不良食谱，补虚养身食谱，健脾开胃食谱。', '红烩牛肉，菜系及功效：其他国家；气血双补食谱，消化不良食谱，补虚养身食谱，健脾开胃食谱。<p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583747937175011181.jpeg\" title=\"1583747937175011181.jpeg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583747937207091717.jpg\" title=\"1583747937207091717.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583747937222085963.jpg\" title=\"1583747937222085963.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583747937300048427.jpg\" title=\"1583747937300048427.jpg\"/></p>', 45.00, 55.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583747988191038925.jpeg', 1133, 8888, b'1', '2020-03-09 17:59:53', -1, NULL, NULL);
INSERT INTO `product` VALUES (175, 46, '沙丁油鱼', 100, 3, '中文学名沙丁鱼别称沙鲻 沙脑鰛 大肚鰛 真鰛 南美拟沙丁鱼 鰯', '<p>沙丁鱼（Sardine）是硬骨鱼纲鲱形目鲱科沙丁鱼属、小沙丁鱼属和拟沙丁鱼属及鲱科某些食用鱼类的统称。也指制成油浸鱼罐头的普通鲱(Clupea harengus）以及其它小型的鲱或鲱状鱼。</p><p>沙丁鱼在香港被人们称沙甸鱼，又称萨丁鱼、鳁和鰯。小者长二寸，大者尺许，下颚较上颚略长，齿不显，背苍腹白，肉美，多用来制为罐头食品。最初在意大利萨丁尼亚捕获而得名，古希腊文称其“sardonios”意即“来自萨丁尼亚岛”。分布于南北纬度6～20度的等温带海洋区域中。</p><p>沙丁鱼主要用作食用，但鱼肉亦可制为动物饲料。沙丁鱼油的用途包括制造油漆、颜料和油毡，在欧洲还用来制造人造奶油。同时是世界重要的海洋经济鱼类。</p><p>沙丁鱼为群居鱼类，聚集时，沙丁鱼的数字可达3亿只。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583748265880089215.jpg\" title=\"1583748265880089215.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583748265942025702.jpg\" title=\"1583748265942025702.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583748266005083663.jpg\" title=\"1583748266005083663.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583748266036079265.jpeg\" title=\"1583748266036079265.jpeg\"/></p><p><br/></p>', 55.00, 65.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583748236052024483.jpg', 1458, 4548, b'1', '2020-03-09 18:04:32', -1, NULL, NULL);
INSERT INTO `product` VALUES (176, 49, '罗宋汤', 50, 3, '罗宋汤是发源于乌克兰的一种浓菜汤。', '<p>罗宋汤大多以甜菜为主料，常加入马铃薯、葫芦波、菠菜和牛肉块、奶油等熬煮，因此呈紫红色。有些地方以番茄为主料，甜菜为辅料。也有不加甜菜加番茄酱的橙色罗宋汤和绿色罗宋汤。</p><p></p><p><img title=\"1583748284005050403.jpg\" src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583748284005050403.jpg\"/><br/></p><p><img title=\"1583748284021035569.jpg\" src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583748284021035569.jpg\"/></p><p><span style=\"font-family:arial,helvetica,sans-serif\"><span style=\"font: 400 14px/24px arial,helvetica,sans-serif; text-align: left; color: rgb(51, 51, 51); text-transform: none; text-indent: 2em; letter-spacing: normal; text-decoration: none; word-spacing: 0px; display: inline !important; zoom: 1; orphans: 2; font-size-adjust: none; font-stretch: normal; float: none; -webkit-text-stroke-width: 0px; overflow-wrap: break-word; background-color: rgb(255, 255, 255);\"><br/></span></span><br/></p>', 36.00, 42.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583748143411082722.jpg', 791, 164, b'1', '2020-03-09 18:04:50', -1, -1, '2020-03-12 15:20:52');
INSERT INTO `product` VALUES (177, 46, '奶酪', 100, 2, '奶酪（cheese）是一种发酵的奶制品，近似固体食物，营养价值丰富，其性质与酸牛奶相似。\n\n', '<p>奶酪（cheese）是一种发酵的奶制品，近似固体食物，营养价值丰富，其性质与酸牛奶相似。</p><p>奶酪含有丰富的蛋白质、钙、脂肪、磷和维生素等营养成分，乳源包括牛奶、羊奶等。其制作过程中通常加入凝乳酶，造成其中的酪蛋白凝结，使乳品酸化，再将固体分离、压制为成品。奶酪是中国西北的蒙古族，哈萨克族等游牧民族的传统食品。世界出口奶酪最多的国家是荷兰。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583748505037070924.jpg\" title=\"1583748505037070924.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583748505099010386.jpg\" title=\"1583748505099010386.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583748505287092343.jpeg\" title=\"1583748505287092343.jpeg\"/></p><p><br/></p>', 15.00, 20.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583748490959022038.jpeg', 1466, 1324, b'1', '2020-03-09 18:08:30', -1, NULL, NULL);
INSERT INTO `product` VALUES (178, 46, '冷烤鹅', 100, 4, '烤鹅是广东地方特产，很有名气，享誉海内外。其味芳香嫩酥，口味独特，对于吃惯鸡鸭的朋友来说别有一番滋味。\n\n', '<p>（1） 先料与处理：选 取经过良肥饲养，体肥肉嫩，骨细皮柔，活重 2.25~3.0公斤的清远黑棕鹅(又名乌棕鹅)为原料(符合条件的其他品种幼鹅亦可). 经屠宰放血,褪毛清皮,腹部开膛清内脏,净洗膛腔,斩脚去翅,烫皮景干待腌。（2） 配料与腌制：按50公斤原料鹅胚计算，将精盐2公斤，五香粉0.2公斤,白糖2公斤,50度白酒0.5公斤,葱白1公斤,芝麻2公斤,生抽(酱油)2公斤,蒜与豉酱少许等辅料混合均匀,用以腌鹅胚.最后放适量配料于腹腔,用 竹针将膛 口缝好,全表涂淋加5倍冷开水的芽糖溶液晾干即可烧烤。</p><p>（3） 烧烤：将配制好的科技开发胚挂炉烧烤。先以鹅背向火，微火烧烤约20分钟，见鹅体变干转色，使鹅胚胸背转向火口，炉温升至200℃，高温继续烘烤20分钟，便可出炉。在烤熟的鹅体上涂抹一层花生没，即为成品。（4） 成品规格与食用品质：成品要求达到色泽鲜红，皮脆肉香，脂及丰富，味美适口。</p><p>（5） 食用：烧烤出炉的成品，待稍行冷却之后，有规则地切成大小均匀的块，装盘时拼成原形状，热食或冷食均可，上市销售。亦可按规则切块包装，顾客回家恢复原鹅形状装盘，别具风味。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583748722944027109.jpg\" title=\"1583748722944027109.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583748723100030676.jpg\" title=\"1583748723100030676.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583748723132069061.jpg\" title=\"1583748723132069061.jpg\"/></p><p><br/></p>', 68.00, 79.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583748705913082729.jpg', 1249, 6666, b'1', '2020-03-09 18:12:21', -1, NULL, NULL);
INSERT INTO `product` VALUES (179, 46, '奶油大虾汤', 100, 4, '奶油大虾汤是以淡炼乳汤为主要食材制成的一道美食。', '<p>奶油大虾汤是以淡炼乳汤为主要食材制成的一道美食。制作方法是先把净虾肉切成小丁，用鸡清汤煮熟；再把大虾子头除去虾盔，其余部分用黄油以文火焖；焖到油呈红色时，把其过滤，起汤时先把虾肉放入盘内；最后盛上奶油汤，再浇上虾油，撒上或单配面包丁即成。</p>虾忌与某些水果同吃。虾含有比较丰富的蛋白质和钙等营养物质。如果把它们与含有鞣酸的水果，如葡萄、石榴、山楂、柿子等同食，不仅会降低蛋白质的营养价值，而且鞣酸和钙离子结合形成不溶性结合物刺激肠胃，引起人体不适，出现呕吐、头晕、恶心和腹痛腹泻等症状，海鲜与这些水果同吃至少应间隔2小时。<p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583749036617061460.png\" title=\"1583749036617061460.png\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583749036680041469.jpg\" title=\"1583749036680041469.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583749036820032334.jpeg\" title=\"1583749036820032334.jpeg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583749036836042671.png\" title=\"1583749036836042671.png\"/></p>', 66.00, 88.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583749014789010272.jpeg', 2130, 55555, b'1', '2020-03-09 18:17:23', -1, NULL, NULL);
INSERT INTO `product` VALUES (180, 46, '披萨', 100, 4, '“匹萨”是一种由特殊的酱汁和馅料做成的具有意大利风味的食品，但其实这种食品已经超越语言与文化的障碍，成为全球通行的小吃，受到各国消费者的喜爱。', '<p>比萨（Pizza）是一种著名的意大利食物，发源地是意大利的那不勒斯，在全球颇受欢迎，已经成为全球通行的食品，但不同的国家和地区的人们在吃这种饼的时候，口味又稍有不同。</p><p>比萨饼的通常做法是用发酵的圆面饼皮上面覆盖番茄酱、奶酪和其他配料，并由烤炉烤制而成，奶酪通常用马苏里拉奶酪，也有混用几种奶酪的形式。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583749509322041781.jpg\" title=\"1583749509322041781.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583749509431057601.jpg\" title=\"1583749509431057601.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583749509463049036.jpg\" title=\"1583749509463049036.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583749509556019933.jpg\" title=\"1583749509556019933.jpg\"/></p><p><br/></p>', 56.00, 98.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583749490603062356.jpg', 8457, 88888, b'1', '2020-03-09 18:25:21', -1, NULL, NULL);
INSERT INTO `product` VALUES (181, 46, '沙拉', 100, 2, '​色拉系音译，即Salad，又译作沙拉。', '<p>色拉系音译，即Salad，又译作沙拉。沙拉主要有三类，分别为水果沙拉、蔬菜沙拉、其他沙拉。</p><p>蔬菜沙拉：由绿色有叶生菜制成的一道菜，常加有萝卜、黄瓜或西红柿，并加调味品食用。<br/></p><p>源自于西方。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583749980011098891.jpg\" title=\"1583749980011098891.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583749980136056302.jpg\" title=\"1583749980136056302.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583749980152068288.jpg\" title=\"1583749980152068288.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583749980183044916.jpg\" title=\"1583749980183044916.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583749980199056891.jpg\" title=\"1583749980199056891.jpg\"/></p><p><br/></p>', 25.00, 36.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583750003683080993.jpg', 1109, 6666, b'1', '2020-03-09 18:33:29', -1, NULL, NULL);
INSERT INTO `product` VALUES (182, 25, '黑森林', 0, 3, '黑森林蛋糕(Schwarzwaelder Kirschtorte)是德国著名甜点，在德文里全名\"Schwarzwaelder\" 即为黑森林。', '<p>黑森林蛋糕(Schwarzwaelder Kirschtorte)是德国著名甜点，在德文里全名&quot;Schwarzwaelder&quot; 即为黑森林。它融合了樱桃的酸、奶油的甜、巧克力的苦、樱桃酒的醇香。完美的黑森林蛋糕经得起各种口味的挑剔。黑森林蛋糕被称作黑森林的特产之一，德文原意为“黑森林樱桃奶油蛋糕”。正宗的黑森林蛋糕一点也不黑，不含黑色的巧克力。真的只是一种“没有巧克力的樱桃奶油蛋糕”。</p><p>　　黑森林蛋糕的雏形最早出现于南部黑森林地区，黑森林区是德国西南的一个山区，从巴登巴登（Baden Baden）往南一直到弗莱堡（Freiburg）这带，都属黑森林区。相传，每当樱桃丰收时，农妇们除了将过剩的樱桃制成果酱外，在做蛋糕时，也会大方地将樱桃一颗颗塞在蛋糕的夹层里，或是作为装饰细心地点缀在蛋糕的表面。而在打制蛋糕的鲜奶油时，更会加入大量樱桃汁。制作蛋糕坯时，面糊中也加入樱桃汁和樱桃酒。这种以樱桃与鲜奶油为主的蛋糕从黑森林传到外地后，也就变成所谓的“黑森林蛋糕”了。<br/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583750258591071222.jpg\" title=\"1583750258591071222.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583750258606057767.png\" title=\"1583750258606057767.png\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583750258684089068.jpeg\" title=\"1583750258684089068.jpeg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583750258700099402.jpg\" title=\"1583750258700099402.jpg\"/></p><p style=\"margin-top: 0px; margin-bottom: 15px; padding: 0px; font-family: arial, &quot;pingfang sc&quot;, stheiti, simsun, sans-serif; text-indent: 2em; line-height: 24px; color: rgb(51, 51, 51); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p>', 28.00, 39.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583750274294093176.png', 757, 7854, b'1', '2020-03-09 18:37:59', -1, -99, '2020-03-21 17:10:06');
INSERT INTO `product` VALUES (183, 46, '拌海蛰', 100, 3, '拌海蜇是一道美食，主要食材是海蜇，黄瓜。\n', '<p>将海蜇洗净，去掉泥沙切成丝，用开水烫一下捞出，速用凉水淘一下，捞出。把黄瓜洗净，切成丝；香菜洗净，切成1.8厘米长段。把 黄瓜丝放入盘内，上面放 海蜇丝、香菜、海米，然后浇上用以上调料兑好的汁，即成。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583750626295053928.jpg\" title=\"1583750626295053928.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583750626358053468.jpg\" title=\"1583750626358053468.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583750626451009579.jpeg\" title=\"1583750626451009579.jpeg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583750626561057836.jpg\" title=\"1583750626561057836.jpg\"/></p><p><br/></p>', 66.00, 88.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583750569811051664.jpg', 1141, 123, b'1', '2020-03-09 18:43:51', -1, -1, '2020-03-12 14:42:24');
INSERT INTO `product` VALUES (184, 49, '酸辣汤', 100, 2, '酸辣汤是一道传统的川菜小吃，属于川菜或湘菜系。', '<p>酸辣汤的特点是酸、辣、咸、鲜、香。用肉丝、豆腐、冬笋、保宁醋等料经清汤煮制而成。饭后饮用，有醒酒去腻，助消化的作用。所以很多人在没有太大食欲的时候会想念酸辣汤的美味。酸辣汤具有健脾养胃、柔肝益肾的作用，适用于辅助治疗食欲不振。</p><p><img title=\"1583757791043060595.jpg\" src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583757791043060595.jpg\"/><br/></p><p><img title=\"1583757791059064349.jpg\" src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583757791059064349.jpg\"/></p><p><br/></p>', 23.00, 28.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583757717842051966.jpg', 744, 456, b'1', '2020-03-09 20:43:13', -1, -1, '2020-03-12 15:40:23');
INSERT INTO `product` VALUES (185, 49, '冬阴功汤', 100, 1, '冬阴功汤是泰国和老挝的一道富有特色的酸辣口味汤品。', '<p>冬阴功汤也叫东炎汤，在泰国非常普遍。主要食材有柠檬叶、香茅、虾等。泰国大小餐馆、普通人家常饮此汤，从而成为泰国菜的代表。同时，它也是在其他东南亚国家，如马来西亚，新加坡，印尼非常受欢迎的菜品。</p><p><img title=\"1583758888379061742.jpg\" src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583758888379061742.jpg\"/><br/></p><p><img title=\"1583758888441000424.jpg\" src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583758888441000424.jpg\"/></p><p><br/></p>', 28.00, 36.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583758779959096376.jpg', 785, 71, b'1', '2020-03-09 21:01:32', -1, -1, '2020-03-12 15:40:07');
INSERT INTO `product` VALUES (186, 49, '番茄蛋汤', 100, 2, '番茄鸡蛋汤是一道常见的家常菜。经常食用对人体非常有好处，番茄鸡蛋汤做法简易，味道可口，营养丰富，是一道十分受欢迎的菜肴。', '<p>番茄是一种常见的水果型蔬菜，味道酸中带甜，汁多爽口，富含各种维生素和微量元素，经常食用对人体非常有好处，为美国《时代》周刊推荐为十大健康食品之一。番茄鸡蛋汤做法简易，味道可口，营养丰富，是一道十分受欢迎的菜肴。</p><p></p><p><img title=\"1583759599723023265.jpg\" src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583759599723023265.jpg\"/><br/></p><p><img title=\"1583759599770004041.jpg\" src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583759599770004041.jpg\"/></p><p><span style=\"font-size: 14px;\"><br/></span><br/></p>', 16.60, 22.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583759548021014546.jpg', 752, 465, b'1', '2020-03-09 21:13:23', -1, -1, '2020-03-12 15:38:27');
INSERT INTO `product` VALUES (187, 47, '烤面筋', 100, 2, '烤面筋是陕西关中地区传统特色小吃，具有香辣味、孜然味等口味。主要是将面筋制作成螺旋状坯料，放置于炭火上进行烘烤，撒上调料、酱汁即成。', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\"></span></p><p>面筋是小麦粉中所特有的一种胶体混合蛋白质，由麦胶蛋白质和麦谷蛋白质组成。将面粉加入适量水、少许食盐，搅匀上劲，形成面团，稍后用清水反复搓洗，把面团中的活粉和其它杂质全部洗掉，剩下的即是面筋。</p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583757223713009410.jpg\" alt=\"1583757223713009410.jpg\"/></span><br/></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\"></span></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848426568059845.jpg\" title=\"1583848426568059845.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848426604083079.jpg\" title=\"1583848426604083079.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848426650010405.jpg\" title=\"1583848426650010405.jpg\"/></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><br/></span><br/></p>', 2.00, 3.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583757223713009410.jpg', 784, 12, b'1', '2020-03-09 21:14:20', -1, -1, '2020-03-12 14:32:43');
INSERT INTO `product` VALUES (188, 47, '烤排骨', 100, 3, '酱烤排骨是用烤箱烤制的一道家常菜品，制作原料主要有排骨，盐，排骨酱等，口感香甜少辣，细嫩酥软，蜜汁可口。', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\"></span></p>酱烧烤排骨是以肋排、酱油，盐，胡椒粉，孜然粒等为主要食材做的一道美食。<p style=\"white-space: normal;\"><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\"></span><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583757223401066756.jpg\" alt=\"1583757223401066756.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848397920001742.jpg\" title=\"1583848397920001742.jpg\"/><br/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848398075037399.jpg\" title=\"1583848398075037399.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848398092022558.jpg\" title=\"1583848398092022558.jpg\"/></p><p><br/></p>', 48.00, 69.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583757223401066756.jpg', 686, 1, b'1', '2020-03-09 21:37:58', -1, -1, '2020-03-12 14:32:21');
INSERT INTO `product` VALUES (189, 47, '烤鸡柳', 100, 2, '烤鸡柳是以新鲜鸡胸脯肉配以烧烤酱、孜然、黑椒等烤制而成，蘸以番茄酱更有异国风味。烤鸡柳与烤鸡翅不同，鸡柳由于没有外皮烤制，所以更需要讲究烧烤技巧。\n', '<p>烤鸡柳是以新鲜鸡胸脯肉配以烧烤酱、孜然、黑椒等烤制而成，蘸以番茄酱更有异国风味。烤鸡柳与烤鸡翅不同，鸡柳由于没有外皮烤制，所以更需要讲究烧烤技巧。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583761459858053928.jpg\" title=\"1583761459858053928.jpg\" alt=\"鸡柳.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848377141009601.jpg\" title=\"1583848377141009601.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848377130028701.jpg\" title=\"1583848377130028701.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848377193047882.jpg\" title=\"1583848377193047882.jpg\"/></p><p><br/></p>', 3.00, 4.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583761196735075090.jpg', 682, 21, b'1', '2020-03-09 21:44:26', -1, -1, '2020-03-10 21:53:01');
INSERT INTO `product` VALUES (190, 47, '烤生蚝', 100, 2, '烤生蚝是沿海地区的特色小吃，是用新鲜生蚝通过炭烤而成。烤生蚝的做法非常简单，只需将蒜蓉、姜末、酱等佐料放入刚刚撬开的生蚝内，再直接放到火上烤熟即可，最大限度地保证了蚝肉的新鲜还增加了蚝的野味感觉 。', '<p>1、鲜活生蚝洗净表面泥沙，用较厚的刀背从蚝壳前端小心翘开，去掉没有蚝肉的一半蚝壳，将另一半带有蚝壳的蚝肉用清水冲洗干净，沥干水分。<br/>2、将朝天椒和香葱洗净切碎，再调入盐、蒜茸、柠檬汁混合均匀，制成调味汁。<br/>3、把生蚝带壳直接放在烧烤架上烤制，随温度的变化，生蚝会逐渐渗出鲜汁。</p><p>4、蚝肉表面的汤汁渐干时，将调味汁淋入，继续烧烤约2分钟。<br/>5、最后用夹子将生蚝夹出离火，放入盘中即可。</p><p><a class=\"lemma-anchor para-title\" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a><a class=\"lemma-anchor \" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a><a class=\"lemma-anchor \" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583761606014023281.jpg\" title=\"1583761606014023281.jpg\" alt=\"考生蚝.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848358688015176.jpg\" title=\"1583848358688015176.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848358713029466.jpg\" title=\"1583848358713029466.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848358766035429.jpg\" title=\"1583848358766035429.jpg\"/></p><p><br/></p>', 10.00, 15.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583761488124085219.jpg', 659, 2, b'1', '2020-03-09 21:46:53', -1, -1, '2020-03-12 14:31:35');
INSERT INTO `product` VALUES (191, 47, '烤鸡腿', 100, 3, '烤鸡腿是餐桌上的一道美味，制作原料主要有棒棒腿、柠檬、酱油、酒等，因其肉质鲜嫩，酱香味道而深受欢迎。', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">营养丰富，有滋补养身的作用。鸡肉对营养不良、畏寒怕冷、乏力疲劳、月经不调、贫血、虚弱等有很好的食疗作用。祖国医学认为，鸡肉有温中益气、补虚填精、健脾胃、活血脉、强筋骨的功效。</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583761701826041504.jpg\" title=\"1583761701826041504.jpg\" alt=\"烤鸡腿.jpg\"/></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\"></span></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848335011093322.jpg\" title=\"1583848335011093322.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848335088000752.jpg\" title=\"1583848335088000752.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848335103078214.jpg\" title=\"1583848335103078214.jpg\"/></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><br/></span><br/></p>', 8.00, 12.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583761628654067934.jpg', 739, 23, b'1', '2020-03-09 21:48:31', -1, -1, '2020-03-10 21:52:19');
INSERT INTO `product` VALUES (192, 47, '烤金针菇', 100, 3, '烤金针菇是以金针菇为主材制作而成的菜肴名。', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">金针菇是秋冬与早春栽培的食用菌，以其菌盖滑嫩、柄脆、营养丰富、味美适口而著称于世，特别是凉拌菜和火锅的上好食材，其营养丰富、清香扑鼻而且味道鲜美，深受大众的喜爱。</span></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583761851529066301.jpg\" title=\"1583761851529066301.jpg\" alt=\"烤金针菇.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848310970077950.jpg\" title=\"1583848310970077950.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848311013075245.jpg\" title=\"1583848311013075245.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848311031014921.jpg\" title=\"1583848311031014921.jpg\"/></p><p><br/></p>', 8.00, 10.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583761741217033342.jpg', 710, 35, b'1', '2020-03-09 21:51:06', -1, -1, '2020-03-10 21:51:57');
INSERT INTO `product` VALUES (193, 47, '烤鸭肠', 100, 3, '大街小巷，车水马龙。休闲的春节假期静悄悄的走了，让人猝不及防的开始了新的一年的工作日，各大城市的小吃群、小吃街少了很多人，站在路口一眼望向小吃街的尽头，唯一能看到排起长队的就是我们的鸭来哒秘制烤鸭肠。', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255);\">烤鸭肠看似纤小，但制作起来却十分复杂，严选新鲜鸭肠，反复清洗，保证鸭肠的品质和卫生。反复多道工序打理之后，再将如此纤细的鸭肠串在串串上，你以为你吃的烤鸭肠来之轻巧，实则复杂得很。</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255);\"><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583762021841020012.png\" title=\"1583762021841020012.png\" alt=\"烤鸭肠.png\"/></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255);\"></span></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848280124028811.jpg\" title=\"1583848280124028811.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848280185009205.jpg\" title=\"1583848280185009205.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848280173087556.jpg\" title=\"1583848280173087556.jpg\"/></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255);\"><br/></span><br/></p>', 10.00, 20.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583761891669038584.png', 705, 13, b'1', '2020-03-09 21:53:49', -1, -1, '2020-03-10 21:51:30');
INSERT INTO `product` VALUES (194, 47, '烤鸭腿', 100, 3, '烤鸭腿是由鸭腿、盐适量等主要食材做成的一道菜品。', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255);\">烤鸭腿 ◾鸭肉是一种美味佳肴，适于滋补，是各种美味名菜的主要原料。其蛋白质含量比畜肉含量高得多，脂肪含量适中且分布较均匀。用家里常有的材料腌制，然后送进烤箱等待40分钟左右就可以享受色香味俱全的烤鸭腿了。</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255);\"><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583762190466041349.jpg\" title=\"1583762190466041349.jpg\" alt=\"烤鸭腿.jpg\"/></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255);\"></span></p><p><br/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848245285031304.jpg\" title=\"1583848245285031304.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848245302001028.jpg\" title=\"1583848245302001028.jpg\"/></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255);\"><br/></span><br/></p>', 8.00, 10.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583762048091043994.jpg', 679, 28, b'1', '2020-03-09 21:56:34', -1, -1, '2020-03-10 21:50:58');
INSERT INTO `product` VALUES (195, 47, '烤鱼', 100, 4, '烤鱼（Grilled fish），是一道菜品。制作原料主要有鱼、蘑菇、番茄等。它是指鱼类经过烤制之后然后进行烹饪的一种方法，这种烹调方式实现了“一烤二炖”。', '<p>烤鱼，一种发源于重庆巫溪县，而发扬于万州的特色美食，在流传过程中，融合腌、烤、炖三种烹饪工艺技术，充分借鉴传统渝菜及重庆火锅用料特点，是口味奇绝、营养丰富的风味小吃。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583762323903017684.jpeg\" title=\"1583762323903017684.jpeg\" alt=\"烤鱼.jpeg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848206511055663.jpg\" title=\"1583848206511055663.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848206557089493.jpg\" title=\"1583848206557089493.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848206631097707.jpg\" title=\"1583848206631097707.jpg\"/></p><p><br/></p>', 30.00, 45.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583762210887092796.jpeg', 701, 34, b'1', '2020-03-09 21:58:48', -1, -1, '2020-03-10 21:50:12');
INSERT INTO `product` VALUES (196, 47, '烤玉米', 100, 3, '刷一层料汁刷一层辣酱，分几次烤，想起来还是格外诱人~我用的水果玉米，在家用烤箱容易烤透，有嚼劲儿但也不会对牙齿进行过度考验。', '<p>玉米含蛋白质、脂肪、淀粉、钙、磷、铁、维生素B1.B2.B6，烟酸、泛酸、胡萝卜素、槲皮素等成分。玉米油富含多个不饱和键脂肪酸的油脂，是一种胆固醇吸收的抑制剂，对降低血浆胆固醇和预防冠心病有一定作用。用于脾胃不健，食欲不振，饮食减少；水湿停滞，小便不利或水肿；高血脂症、冠心病。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583762465340026722.jpg\" title=\"1583762465340026722.jpg\" alt=\"烤玉米.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848178794055509.jpg\" title=\"1583848178794055509.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848178783029070.jpg\" title=\"1583848178783029070.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848178770080690.jpg\" title=\"1583848178770080690.jpg\"/></p><p><br/></p>', 6.00, 8.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583762345121078533.jpg', 695, 1, b'1', '2020-03-09 22:01:09', -1, -1, '2020-03-10 21:49:44');
INSERT INTO `product` VALUES (197, 47, '掌中宝', 100, 3, '掌中宝是鸡的大腿中间那一块软骨那里那个黄色的。它以其独特的口感而倍受食客青睐，常见的菜例有宫保鸡脆骨、椒盐鸡脆，麻辣鸡脆骨、燕山鸡脆。对于不同的鸡脆骨菜肴，往往需要采取不同的腌制方法，方能达到独特的成菜效果。而且口感清脆，和人口味，颇受很多人青睐。', '<p style=\"margin-top: 17px; margin-bottom: 17px; padding: 0px; line-height: 28px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma; white-space: normal; background-color: rgb(255, 255, 255);\">香辣鸡脆骨是一道简单的家常菜，适合作下酒菜。鸡腿关节部分的鸡脆骨又叫跳跳骨，口感柔中带脆，会让人吃上瘾。首先在鸡脆骨中是含有大量的蛋白质、脂肪、维生素存在的，同时在鸡脆骨中实际上还含有大量的磷酸钙、骨胶原、骨黏蛋白等营养物质都存在。对人体来说是很适合吃鸡脆骨的，而且实际上鸡脆骨的营养也是很容易被我们人体所吸收的，所以说鸡脆骨对于大多数人来说实际上都是可以吃的。</p><p style=\"margin-top: 17px; margin-bottom: 17px; padding: 0px; line-height: 28px; color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583762603996082124.jpg\" title=\"1583762603996082124.jpg\" alt=\"烤掌中宝.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848148040033194.jpg\" title=\"1583848148040033194.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848148122046834.jpg\" title=\"1583848148122046834.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848148101018669.jpg\" title=\"1583848148101018669.jpg\"/></p><p><br/></p>', 15.00, 20.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583762486309083405.jpg', 684, 26, b'1', '2020-03-09 22:03:28', -1, -1, '2020-03-12 14:30:00');
INSERT INTO `product` VALUES (198, 47, '孜然羊肉串', 100, 3, '羊肉串指将羊肉，羊尾等食材用签子穿成串后炙烤的烹饪方法，也指通过该方法产生的食物，属于烧烤的一种。烤串在中东、南亚、中亚、地中海、东亚等多地均非常流行。一种起源于中东，后来流传至南亚及地中海地区，后至全世界的料理。卡博（Kebabı）的意思是在中东一带烧、煎和烤的肉类料理总称（主要为鸡肉、羊肉、牛肉，没有猪肉）。这个词源于波斯语的“کباب‎”（Kebab），意思原指“烤肉”。', '<p>羊肉串是近几年来流行很广的大众饮食，基本上没有淡旺季之分，如果在天气炎热的南方，冬天的生意要更好一些。烧烤可以说是从新疆的烤羊肉串普及开来的，通过不断发展，烧烤的风格结合地域特色有了创新和变化，品种呈多样性，除了羊、牛、鸡、鱼等许多肉类之外，许多蔬菜水果也可以拿来烤。烤羊肉串的吃法只撒辣椒和孜然两种作料，但演变后的烧烤一般都会在此基础上根据当地消费者口味调配佐料。<span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\"></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583762738699021483.jpg\" title=\"1583762738699021483.jpg\" alt=\"孜香羊肉串.jpg\"/></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\"></span></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848107677076471.jpg\" title=\"1583848107677076471.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848107734074017.jpg\" title=\"1583848107734074017.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583848107748046717.jpg\" title=\"1583848107748046717.jpg\"/></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><br/></span><br/></p>', 28.00, 39.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583762622824062994.jpg', 692, 28, b'1', '2020-03-09 22:05:45', -1, -1, '2020-03-12 14:29:34');
INSERT INTO `product` VALUES (199, 6, '什锦米线', 100, 3, '主要食材番茄，鸡蛋', '<p>1. 将准备的上述食材洗净切丁，先将鸡蛋打散加适量油炒熟，再将其他食材一起入锅翻炒几下 &nbsp; &nbsp;</p><p>2. 然后加适量水，煮开后将提前泡好的米线入锅一起煮熟，加盐，起锅，开放 &nbsp; &nbsp;<img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583766309545097036.jpg\" title=\"1583766309545097036.jpg\" alt=\"timg11.jpg\"/></p><p><br/></p>', 25.00, 36.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583766174513073244.jpg', 728, 77556, b'1', '2020-03-09 23:05:12', -1, NULL, NULL);
INSERT INTO `product` VALUES (200, 25, '草莓布丁', 100, 3, '草莓里富含蛋白质、碳水化合物、钙、铁、锌、钾，维他命B1、B2和丰富的维生素C。\n\n', '<p>中世纪”布丁”似乎是肉制的，不过在《文艺复兴的教父》一书中，曾提到法国王后凯瑟琳·德·美第奇从家乡托斯卡纳带来了意大利厨师，这些厨师改革了法国宫廷的餐桌，带来了意大利的厨艺理念，并带来了甜品布丁和冰淇淋，由此推测布丁应该来源于文艺复兴时期的意大利。</p><p>1、将明胶加水，在温水中化开，再加入果汁。2、往草莓上加果胶，刚覆盖过草莓即可，冷冻片刻，待用。</p><p>3、将奶油打起，把剩下的果胶加在奶油中，放在选好的容器里，（盘子、碗，或者其他形状的容器）冰冻成型，然后倒在盘子里，成为奶油果冻。</p><p>4、把做好的草莓冻轻轻覆在奶油果冻上。</p><p>5、你可以根据自己的喜好洒上少许果酱食用。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583766572062029581.jpg\" title=\"1583766572062029581.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583766572187000952.jpg\" title=\"1583766572187000952.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583766572296064305.jpg\" title=\"1583766572296064305.jpg\"/></p><p><br/></p>', 20.00, 25.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583766547593084110.jpg', 746, 5555, b'1', '2020-03-09 23:09:36', -1, NULL, NULL);
INSERT INTO `product` VALUES (201, 6, '麻辣豆干', 100, 3, '豆干是豆腐干的简称，汉族传统豆制品之一，咸香爽口，硬中带韧，久放不坏，是中国各大菜系中都有一道美食。豆腐干营养丰富，含有大量蛋白质、脂肪、碳水化合物，还含有钙、磷、铁等多种人体所需的矿物质。\n\n', '<p>豆干是豆腐干的简称，汉族传统豆制品之一，咸香爽口，硬中带韧，久放不坏，是中国各大菜系中都有一道美食。豆腐干营养丰富，含有大量蛋白质、脂肪、碳水化合物，还含有钙、磷、铁等多种人体所需的矿物质。</p><p>豆干，或称豆腐干。豆制品之一。</p><p>在广东，豆干主要有2种，一种是外形较薄而扁的，类似饼干状，分为白香干和卤香干。</p><p>另一种外形较厚而大，汁水稍多，可炖可煎。口感香滑近似于豆腐。</p><p>民俗小吃。用大豆作主要原料，掺以薯粉、石膏、卤水制成的豆制品。普宁豆干的吃法有煎、焗、炸等。</p><p>制作工序是：磨浆、除渣、煮浆、配膏、试粉、掺膏粉、拌和定卤、包块、压块、煮熟，有的煮熟后还用栀子上色。特点是外皮柔韧，内肉嫩滑。普宁市人烹调豆干的方法主要有煎、焗、炸等3种。油炸豆干更是普宁的民俗风味。其皮酥脆，肉嫩滑，清中有香。蘸以辣椒醋，更觉可口。有侨胞把普宁豆干的制作工艺带到国外，经营此项生意。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583766941610023570.jpg\" title=\"1583766941610023570.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583766941626073337.jpg\" title=\"1583766941626073337.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583766941844086172.jpg\" title=\"1583766941844086172.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583766942063093191.jpg\" title=\"1583766942063093191.jpg\"/></p><p><br/></p>', 2.00, 5.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583766786609019523.jpg', 1332, 245477, b'1', '2020-03-09 23:15:48', -1, NULL, NULL);
INSERT INTO `product` VALUES (202, 49, '紫菜蛋花汤', 100, 2, '紫菜蛋花汤属于一款速食汤，是四川传统餐后汤。', '<p>紫菜蛋花汤属于一款速食汤，是四川传统餐后汤，其主料紫菜和鸡蛋的营养价值都比较高，因其制作简单方便，营养丰富而广受喜爱。紫菜属中叶状藻体可食的种群，其蛋白质、铁、磷、钙、核黄素、胡萝卜素等含量居各种蔬菜的之冠，故紫菜又有“营养宝库”的美称。</p><p><img title=\"1583767209783035192.jpg\" src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583767209783035192.jpg\"/><br/></p><p><img title=\"1583767209798087836.jpg\" src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583767209798087836.jpg\"/></p><p><span style=\"font: 400 14px/24px arial,&quot;宋体&quot;,sans-serif; text-align: left; color: rgb(51, 51, 51); text-transform: none; text-indent: 2em; letter-spacing: normal; text-decoration: none; word-spacing: 0px; display: inline !important; zoom: 1; orphans: 2; font-size-adjust: none; font-stretch: normal; float: none; -webkit-text-stroke-width: 0px; overflow-wrap: break-word; background-color: rgb(255, 255, 255);\"><br/></span><br/></p>', 14.00, 18.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583767219580007283.jpg', 803, 755, b'1', '2020-03-09 23:20:23', -1, -1, '2020-03-12 15:38:11');
INSERT INTO `product` VALUES (203, 49, '乌鸡汤', 100, 2, '乌鸡汤是广东省传统的地方名菜，以乌鸡、阿胶、黄精、桂圆、红枣、枸杞等食材制作而成。', '<p>乌鸡汤属于粤菜，有着悠久的历史，以特有的菜式和韵味，独树一帜，粤菜是中国著名八大菜系之一，在国内外享有盛誉。粤菜的主要性格为：取之自然，烹之自由 ，食之自在！粤菜广义上来说由广州菜（亦称广府菜）、潮州菜（亦称“潮汕菜”）、东江菜（属客家菜）组成，以广州菜作为代表。</p><p><img title=\"1583767486706072018.jpg\" src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583767486706072018.jpg\"/><br/></p><p><img title=\"1583767486721045077.jpg\" src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583767486721045077.jpg\"/></p><p><span style=\"font-size: 14px;\"><br/></span><br/></p>', 22.00, 28.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583767506878013567.jpg', 746, 1126, b'1', '2020-03-09 23:25:13', -1, -1, '2020-03-12 15:37:57');
INSERT INTO `product` VALUES (204, 49, '味噌汤', 100, 2, '味噌汤是以鲷鱼、红白萝卜、鱼骨、味噌等材料制作而成的一道日本料理。', '<p>味噌汤作为日本的“国汤”，分为赤味噌和白味噌。味噌，又称面豉酱，是以黄豆为主原料，加入盐及不同的种麴发酵而成。在日本，味噌是最受欢迎的调味料，它既可以做成汤品，又能与肉类烹煮成菜，还能做成火锅的汤底。由于味噌含有丰富的蛋白质、氨基酸和食物纤维，常食对健康有利，天气转凉时喝味噌汤还可暖身醒胃。</p><p></p><p><img title=\"1583768021599044713.jpg\" src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583768021599044713.jpg\"/><br/></p><p><img title=\"1583768021911068854.jpg\" src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583768021911068854.jpg\"/></p><p><span style=\"font-size: 14px;\"><br/></span><br/></p>', 39.00, 45.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583767975348001372.jpg', 783, 176, b'1', '2020-03-09 23:33:45', -1, -1, '2020-03-12 15:37:43');
INSERT INTO `product` VALUES (205, 49, '冬瓜排骨汤', 100, 3, '冬瓜排骨汤是一道羹汤，制作原料主要有排骨、冬瓜等，口味鲜，汤清宜人、性凉而味甘，清热消暑，对暑热难消等现象有效。', '<p>冬瓜排骨汤是一道羹汤，具有清热解毒、利湿化滞、降脂降压、通利小便之功效。适用于湿热内盛所致的饮食积滞、大便溏泻、小便短黄、头目眩晕等。但是本肴通利之功较强，体质瘦弱者不宜常服。孕妇慎用！</p><p></p><p><img title=\"1583768681523012346.jpg\" src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583768681523012346.jpg\"/><br/></p><p><img title=\"1583768682086048897.jpg\" src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583768682086048897.jpg\"/></p><p><span style=\"font-size: 14px;\"><br/></span><br/></p>', 26.00, 34.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583768630757084496.jpg', 775, 1070, b'1', '2020-03-09 23:44:46', -1, -1, '2020-03-12 15:37:03');
INSERT INTO `product` VALUES (206, 49, '大酱汤', 100, 2, '大酱汤是一道上至总统，下至平民百姓，是日常餐桌必不可少的传统菜品。源自朝鲜半岛，从古至今在朝鲜半岛源远流长。', '<p>大酱汤是一道上至总统，下至平民百姓，是日常餐桌必不可少的传统菜品。源自朝鲜半岛，从古至今在朝鲜半岛源远流长。大酱汤的主要原料是大酱，而大酱的主要原料黄豆中含有的异戊醛是一种天然的植物激素，它除了能预防乳腺癌外，还能降低与激素相关的各种肿瘤的发病率。</p><p><img title=\"1583769099353061899.jpg\" src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583769099353061899.jpg\"/><br/></p><p><img title=\"1583769100806083243.jpg\" src=\"http://182.92.128.70:8081/upload/website/image/20200309/1583769100806083243.jpg\"/></p><p><br/></p>', 36.50, 43.00, 'http://182.92.128.70:8081/upload/website/image/20200309/1583769117681084532.jpg', 738, 536, b'1', '2020-03-09 23:52:25', -1, -1, '2020-03-12 15:36:17');
INSERT INTO `product` VALUES (207, 48, '帝王蟹', 0, 4, '帝王蟹浑身都是蛋白质。有食疗效果，味道一流，让人流连忘返。', '<p>\n    <span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">帝王蟹脚含有丰富的蛋白质、微量元素等营养，对身体有很好的滋补作用，吃蟹对结核病的康复在有补益。 中医认为其有清热解毒、补骨添髓、养筋活血、通经络、利肢节、续绝伤、滋肝阴、充胃液之功效。对于淤血、损伤、</span>黄疸<span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">、腰腿酸痛和风湿性关节炎等疾病有一定的食疗效果。</span>\n</p>\n<p>\n    <img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583845715467066038.jpg\" title=\"1583845715467066038.jpg\"/>\n</p>\n<p>\n    <img src=\"http://182.92.128.70:8081/upload/website/image/20200310/1583845715490094207.jpg\" title=\"1583845715490094207.jpg\"/>\n</p>\n<p>\n    <br/>\n</p>', 299.00, 399.00, 'http://182.92.128.70:8081/upload/website/image/20200310/1583845606920055755.jpg', 4262, 590, b'1', '2020-03-10 21:10:41', -1, -99, '2020-03-22 10:24:47');
INSERT INTO `product` VALUES (208, 48, '葱油鲈鱼', 20, 2, '鲈鱼，体长侧扁，下颌长于上颌，肉坚实呈蒜瓣状，鱼鳔可制鱼肚，常清蒸食用。\n', '<p>鲈鱼肉质洁白肥嫩，细刺少、无腥味，味极鲜美，富含丰富的蛋白质和维生素，可入药，是一种极其珍贵的补品。可做清蒸鲈鱼、红烧鲈鱼、糖醋鲈鱼，葱油鲈鱼等</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200311/1583932855404068092.jpg\" title=\"1583932855404068092.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200311/1583933299913030757.jpg\" title=\"1583933299913030757.jpg\" alt=\"鲈鱼1.jpg\"/></p>', 78.00, 88.00, 'http://182.92.128.70:8081/upload/website/image/20200311/1583932763991061047.jpg', 4246, 85, b'1', '2020-03-11 21:21:01', -1, -1, '2020-03-12 14:36:33');
INSERT INTO `product` VALUES (209, 48, '清蒸毛蟹', 20, 4, '毛蟹又称河蟹、螃蟹、清水大闸蟹，学名中华绒螯蟹。其营养价值极高。', '<p>中华绒螯蟹广泛分布，主要有长江种群、&nbsp;辽河种群、&nbsp;瓯江种群、&nbsp;黄河种群等，&nbsp;而以长江流域所产品质为最佳，&nbsp;尤以产自长江下游阳澄湖的大闸蟹最为著名。其烹饪方法有：腌毛蟹、蒸煮蟹、辣椒蟹、毛蟹焖鸡、清蒸湖蟹等。<img src=\"http://182.92.128.70:8081/upload/website/image/20200311/1583932990949076629.jpg\" title=\"1583932990949076629.jpg\" alt=\"毛蟹.jpg\"/><img src=\"http://182.92.128.70:8081/upload/website/image/20200311/1583933242973031910.jpg\" title=\"1583933242973031910.jpg\" alt=\"毛蟹3.jpg\"/></p>', 158.00, 258.00, 'http://182.92.128.70:8081/upload/website/image/20200311/1583932936385037653.jpg', 6041, 63, b'1', '2020-03-11 21:23:16', -1, -1, '2020-03-11 21:27:27');
INSERT INTO `product` VALUES (210, 48, '酸辣胖头鱼', 100, 1, '胖头鱼，即鳙鱼，俗称熊鱼、花鲢、黑鲢、黄鲢、松鱼、鰫鱼、大头鱼。适用于烧、炖、清蒸、油浸等烹调方法，尤以清蒸，油浸最能体现出胖头鱼清淡，鲜香的特点', '<p>鳙鱼也可入药，其味甘、性温，主入目及大肠，具有暖胃、祛头眩、益脑髓、补虚劳、疏肝解郁、健脾利肺、祛风寒、益筋骨的之功效。可辅助治疗治咳嗽、水肿、肝炎、眩晕、肾炎、小便不利和身体虚弱等症。适宜体质虚弱，脾胃虚寒，营养不良之人食用。凡患有瘙痒性皮肤病之人忌食。<img src=\"http://182.92.128.70:8081/upload/website/image/20200311/1583933647455047421.jpg\" title=\"1583933647455047421.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200311/1583933647470038723.jpg\" title=\"1583933647470038723.jpg\"/></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\"></span><br/></p>', 68.00, 88.00, 'http://182.92.128.70:8081/upload/website/image/20200311/1583933451357097215.jpg', 3846, 44, b'1', '2020-03-11 21:34:16', -1, -1, '2020-03-12 14:38:18');
INSERT INTO `product` VALUES (211, 48, '三文鱼刺身', 20, 3, '三文鱼，又名大马哈鱼、鲑鱼、撒蒙鱼。被国际美食界誉为“冰海之皇”，其肉质鲜美，营养丰富', '<p>三文鱼含有大量优质蛋白和Ω-3系列不饱和脂肪酸，有助于降低血脂，同时DHA和EPA还对儿童脑神经细胞发育和视觉发育起到至关重要的影响，因此常吃适量的三文鱼对于中老年人心脑血管疾病的预防以及儿童智力和视力的发育都颇有裨益。<img src=\"http://182.92.128.70:8081/upload/website/image/20200311/1583934079055087392.jpg\" title=\"1583934079055087392.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200311/1583934079068059261.jpg\" title=\"1583934079068059261.jpg\"/></p><p><span style=\"color: rgb(102, 102, 102); font-family: SimSun; font-size: 12px; background-color: rgb(252, 252, 252);\"></span><br/></p>', 98.00, 108.00, 'http://182.92.128.70:8081/upload/website/image/20200311/1583933970122094706.jpg', 6184, 365, b'1', '2020-03-11 21:41:23', -1, -1, '2020-03-12 14:36:02');
INSERT INTO `product` VALUES (212, 48, '清蒸鲍鱼', 20, 3, '鲍鱼是名贵的“海珍品”之一，味道鲜美，营养丰富，被誉为海洋“软黄金”。鲍鱼是名贵的海洋食用贝类，被誉为“餐桌黄金，海珍之冠”，其肉质细嫩、营养丰富。', '<p>鲍鱼是中国传统的名贵食材，其肉质细嫩、鲜味浓郁，位列八大“海珍”之一，素称“海味之冠”，是极为珍贵的海产品，在国际市场上历来享有盛名。不仅如此，鲍鱼营养丰富，具有极高的药用价值。一般人均可食用。夜尿频、气虚哮喘、血压不稳、精神难以集中者适宜多吃鲍鱼;糖尿病患者也可用 鲍鱼作辅助治疗，但必须配药同炖，才有疗效。</p><p>痛风患者及尿酸高者不宜吃鲍肉，只宜少量喝汤;虽然鲍鱼人人爱吃，但感冒发烧 或阴虚喉痛的人不宜食用;素有顽癣痼疾之人忌食。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200311/1583934462734051286.jpg\" title=\"1583934462734051286.jpg\"/><br/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200311/1583934462966014846.jpg\" title=\"1583934462966014846.jpg\"/></p><p><br/></p>', 108.00, 118.00, 'http://182.92.128.70:8081/upload/website/image/20200311/1583934283908040204.jpg', 7129, 255, b'1', '2020-03-11 21:47:46', -1, -1, '2020-03-12 14:35:46');
INSERT INTO `product` VALUES (213, 48, '酱爆墨鱼仔', 20, 4, '墨鱼，又称墨斗鱼、乌贼。墨鱼仔味道鲜美，营养丰富，药用价值高', '<p>墨鱼，又称墨斗鱼、乌贼。俗称“墨鱼骨”，墨鱼干味道鲜美，营养丰富，药用价值高。中药上称之为“乌贼骨”或“海螺蛸”，可治疗胃酸过多，是止血、收敛常用中药。墨鱼，俗名乌贼，又名“冬鸡”,干品又称“螟蜅鲞”，俗称“乌贼粑”。干墨鱼含有丰富的蛋白质、脂肪、无机盐、碳水化合物等多种物质，加上它滋味鲜美，远在唐代就有食用墨鱼的记载，是人们喜爱的佳肴。分布于中国沿海地区。平潭墨鱼干品营养丰富，具有壮阳健身、益血补肾、健胃理气之功效，其味道鲜美，为妇科食疗佳品</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200311/1583934950655051627.jpg\" title=\"1583934950655051627.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200311/1583934951201008012.jpg\" title=\"1583934951201008012.jpg\"/></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">。</span><br/></p>', 58.00, 68.00, 'http://182.92.128.70:8081/upload/website/image/20200311/1583934969509064385.jpg', 3127, 154, b'1', '2020-03-11 21:56:14', -1, -1, '2020-03-12 14:35:17');
INSERT INTO `product` VALUES (214, 48, '三丝银鱼羹', 50, 2, '银鱼属一种高蛋白低脂肪食品，对高脂血症患者食之亦宜。', '<p>银鱼是极富钙质、高蛋白、低脂肪食的鱼类，基本没有大鱼刺，适宜小孩子食用。据现代营养学分析，银鱼营养丰富，具有高蛋白、低脂肪之特点。并认为银鱼不去鳍、骨，属“整体性食物”，营养完全，利于人体增进免疫功能和长寿。中医理论认为，其味甘性平，善补脾胃，且可宣肺、利水，可治脾胃虚弱、肺虚咳嗽、虚劳诸疾</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200311/1583935432579078149.jpg\" title=\"1583935432579078149.jpg\"/><br/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200311/1583935432784009809.jpg\" title=\"1583935432784009809.jpg\"/></p><p><br/></p>', 58.00, 68.00, 'http://182.92.128.70:8081/upload/website/image/20200311/1583935302588041665.jpg', 1841, 25, b'1', '2020-03-11 22:03:56', -1, -1, '2020-03-12 14:36:49');
INSERT INTO `product` VALUES (215, 49, '奶油蘑菇汤', 50, 3, '奶油蘑菇汤是法国菜谱之一，以蘑菇为制作主料，奶油蘑菇汤的烹饪技巧以白烧为主，口味属于奶汤咸鲜。', '<p>奶油蘑菇汤是法国菜谱之一，以蘑菇为制作主料，奶油蘑菇汤的烹饪技巧以白烧为主，口味属于奶汤咸鲜。奶油蘑菇汤制作提示化面浆时要不停搅拌，使面浆均匀地化入汤中，至汤汁浓稠。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200316/1584369421098010524.jpg\" title=\"1584369421098010524.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200316/1584369421164041060.jpg\" title=\"1584369421164041060.jpg\"/></p><p><br/></p>', 29.80, 37.00, 'http://182.92.128.70:8081/upload/website/image/20200316/1584368483950023589.jpg', 1668, 168, b'1', '2020-03-16 22:38:02', -1, NULL, NULL);
INSERT INTO `product` VALUES (216, 49, '木耳冬瓜三鲜汤', 100, 2, '木耳冬瓜三鲜汤，制作原料主要有冬瓜、水发木耳、大米等。', '<p>木耳冬瓜三鲜汤，是一款养生汤，其具有补血益精，养血充髓功效。最适宜精血亏虚，产后虚嬴，阳痿遗精，虚弱劳怯，久病体虚，衰老瘦弱者。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200316/1584370890788034987.jpg\" title=\"1584370890788034987.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200316/1584370890869094243.jpg\" title=\"1584370890869094243.jpg\"/></p><p><br/></p>', 19.80, 26.60, 'http://182.92.128.70:8081/upload/website/image/20200316/1584370631495079999.jpg', 991, 125, b'1', '2020-03-16 23:01:34', -1, NULL, NULL);
INSERT INTO `product` VALUES (217, 49, '洋葱汤', 100, 2, '洋葱汤是一道法式汤品。', '<p>洋葱的营养价值极高，有说它是“蔬菜皇后”的，开胃，杀菌，预防感冒是大家早就熟悉的；降低血糖，降低血脂，减少骨质疏松，抗氧化，抗癌，则是近些年来科学的新发现。洋葱汤能快速补充能量，适宜血气不足，秋冬手脚冰凉的人群。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200316/1584372556409097273.jpg\" title=\"1584372556409097273.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200316/1584372556423013721.jpg\" title=\"1584372556423013721.jpg\"/></p><p><br/></p>', 21.00, 27.00, 'http://182.92.128.70:8081/upload/website/image/20200316/1584371752365088768.jpg', 783, 133, b'1', '2020-03-16 23:29:20', -1, NULL, NULL);
INSERT INTO `product` VALUES (218, 49, '疙瘩汤', 100, 1, '疙瘩汤，是一道北方家常汤品，在山西太原、榆次地区称为拌汤，晋城一带称不烂汤，制作原料主要有面粉、鸡蛋、西红柿等。', '<p>疙瘩汤既可以做成素的蔬菜疙瘩汤，也可以做成有肉的荤疙瘩汤。用鸡蛋、肉类等做成的疙瘩汤特别适合脑力工作者，可以补充蛋白质。而对于身体虚弱、消化功能较差的人来说，更适合清淡的、素的疙瘩汤，以鸡蛋、油麦菜、西红柿为主，蔬菜中含有大量的维生素和矿物质以及纤维素，能改变由于多食动物性食品而呈现的酸性体质，有助于增强身体的免疫力。对于食欲不振或经常有应酬喝酒的人也比较适合喝素疙瘩汤。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200322/1584853315667025921.jpg\" title=\"1584853315667025921.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200322/1584853315683099531.jpg\" title=\"1584853315683099531.jpg\"/></p><p><br/></p>', 16.80, 20.00, 'http://182.92.128.70:8081/upload/website/image/20200322/1584852884082091613.jpg', 1202, 443, b'1', '2020-03-22 13:02:47', -1, NULL, NULL);
INSERT INTO `product` VALUES (219, 49, '乌鸡汤', 20, 4, '乌鸡汤是广东省传统的地方名菜，以乌鸡、阿胶、黄精、桂圆、红枣、枸杞等食材制作而成。乌鸡营养丰富，并含有激素和紫色素，对人体白血球和血色素有增强的作用。', '<p>乌鸡汤属于粤菜，有着悠久的历史，以特有的菜式和韵味，独树一帜，粤菜是中国著名八大菜系之一，在国内外享有盛誉。具有养肝美容，延年益寿的功效，适饮于血气暴亏而引起的身体虚弱、食欲减退、喜暖嗜卧、动则气促，尤其是妇女痛经、崩漏不止、产后血虚等。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200322/1584853920325076105.jpg\" title=\"1584853920325076105.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200322/1584853920287056268.jpg\" title=\"1584853920287056268.jpg\"/></p><p><br/></p>', 28.90, 35.00, 'http://182.92.128.70:8081/upload/website/image/20200322/1584853947352036646.jpg', 1437, 1116, b'1', '2020-03-22 13:12:36', -1, NULL, NULL);
INSERT INTO `product` VALUES (220, 49, '香菇炖鸡汤', 100, 2, '香菇炖鸡汤是一道做法简单、味道鲜美的滋补靓汤，制作原料有整鸡、香菇、红枣等。', '<p>香菇可以增强人体的免疫功能并有防癌作用，用香菇和鸡一起熬鸡汤，香菇中的有效成分溶解在汤内，可提高人体吸收率；鸡汤本身也有提高呼吸系统免疫力的功能，可谓双效合一。香菇炖鸡汤是一道做法简单、味道鲜美的滋补靓汤。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200322/1584867855087040620.jpg\" title=\"1584867855087040620.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200322/1584867855470084763.jpg\" title=\"1584867855470084763.jpg\"/></p><p><br/></p>', 23.90, 27.00, 'http://182.92.128.70:8081/upload/website/image/20200322/1584867335113072667.jpg', 1228, 345, b'1', '2020-03-22 17:04:30', -1, NULL, NULL);
INSERT INTO `product` VALUES (221, 49, '羊肉萝卜汤', 100, 2, '羊肉在《本草纲目》中，是被称为“补元阳益血气”的上佳补品。冬季吃羊肉可驱散寒冷、温暖心胃。', '<p>冬季吃羊肉可驱散寒冷、温暖心胃。羊肉还有补气益血、滋养肝脏、改善血液循环的功效，常吃可提升气色、滋润肌肤。同时，羊肉肉质细嫩，容易消化，高蛋白、低脂肪、含磷脂多，相比较较猪肉和牛肉的脂肪含量都要少，胆固醇含量少，可收到进补和防寒的双重效果。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200322/1584869537158010817.jpg\" title=\"1584869537158010817.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200322/1584869620778070161.jpg\" title=\"1584869620778070161.jpg\" alt=\"羊肉萝卜 (4).jpg\"/></p><p><br/></p>', 28.90, 32.00, 'http://182.92.128.70:8081/upload/website/image/20200322/1584869441339036578.jpg', 554, 275, b'1', '2020-03-22 17:33:59', -1, NULL, NULL);
INSERT INTO `product` VALUES (222, 49, '黄豆猪蹄汤', 50, 3, '黄豆猪蹄汤是一道药膳。做法简单，营养丰富，适合秋冬季滋补，具有通乳、气血双补、补虚养身等功效。', '<p>黄豆猪蹄汤是一道药膳。具有通乳、气血双补、补虚养身等功效。属于乳母食谱，通乳食谱，气血双补食谱，孕妇食谱，补虚养身食谱。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200322/1584876319082035681.jpg\" title=\"1584876319082035681.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200322/1584876319098092335.jpg\" title=\"1584876319098092335.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200322/1584876319128079813.jpg\" title=\"1584876319128079813.jpg\"/></p><p><br/></p>', 31.50, 35.00, 'http://182.92.128.70:8081/upload/website/image/20200322/1584875827886064270.jpg', 1554, 752, b'1', '2020-03-22 19:25:32', -1, NULL, NULL);
INSERT INTO `product` VALUES (223, 49, '四物汤', 100, 2, '四物汤是一道传统药膳。以当归、川芎、白芍、熟地黄四味药材为主要原料熬制而成，是中医补血、养血的经典药膳。', '<p>四物汤药方最早记载于唐朝的蔺道人著的《仙授理伤续断秘方》，应用较为广泛的药方则是取自《太平惠民合剂局方》的记载。一般来说，它具有补血调经的效果，可减缓女性的痛经。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200322/1584877075125049024.jpg\" title=\"1584877075125049024.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200322/1584877076241057833.jpg\" title=\"1584877076241057833.jpg\"/></p><p><br/></p>', 38.90, 42.00, 'http://182.92.128.70:8081/upload/website/image/20200322/1584876993259068570.jpg', 586, 236, b'1', '2020-03-22 19:37:59', -1, NULL, NULL);
INSERT INTO `product` VALUES (224, 49, '萝卜牛尾汤', 100, 2, '白萝卜牛尾汤是中国传统美食之一制作简单，味道鲜美营养价值极高。', '<p>白萝卜中含有较多的粗纤维、蛋白质和碳水化合物，脂肪含量较少，并含有胡萝卜素、维生素A、维生素C、硫胺素、核黄素、尼克酸等营养物质；矿物质则包含有钙、钾、钠、镁、磷、铁、锰、锌、铜、硒等。白萝卜牛尾汤是中国传统美食之一制作简单，味道鲜美营养价值极高。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200322/1584879504530002333.jpg\" title=\"1584879504530002333.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200322/1584879504542021949.jpg\" title=\"1584879504542021949.jpg\"/></p><p><br/></p>', 26.60, 30.00, 'http://182.92.128.70:8081/upload/website/image/20200322/1584879424086017355.jpg', 707, 322, b'1', '2020-03-22 20:18:30', -1, NULL, NULL);
INSERT INTO `product` VALUES (225, 49, '鱼头豆腐汤', 100, 2, '鱼头豆腐汤是由鱼头和豆腐为主要食材烧的汤，豆腐含钙量比较多，而鱼肉中含有维生素D，两者合吃，借助鱼体内维生素D作用，使人体对钙的吸收率提高很多倍。因此，这道汤特别适合中年人，青少年食用。', '<p>鱼头和豆腐的结合：鱼头富含胶质蛋白，脂肪和热量都很低，食之有健脾补气、温中暖胃、美容润肤之效；豆腐的蛋白质和钙含量丰富，有清热润燥、生津解毒、降低血脂的作用。将鱼头和豆腐炖成汤饮用，不仅可以暖身健脑，还可以使人皮肤润泽细腻。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200322/1584883072992034890.jpg\" title=\"1584883072992034890.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200322/1584883073340022185.jpg\" title=\"1584883073340022185.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200322/1584883073695039870.jpg\" title=\"1584883073695039870.jpg\"/></p><p><br/></p>', 22.90, 28.00, 'http://182.92.128.70:8081/upload/website/image/20200322/1584883000183030623.jpg', 855, 422, b'1', '2020-03-22 21:17:58', -1, NULL, NULL);
INSERT INTO `product` VALUES (226, 49, '十全大补汤', 50, 2, '“十全大补汤”选鲜料加入十味中药，五味小料，五味调料，细火炖制而成，既是一道咸鲜味浓的汤菜，又是一款药膳。', '<p>本方来源于《太平惠民和剂局方》。 又名十全饮，来源《太平惠民和剂局方》卷五。是民间治疗气血不足，虚劳咳嗽，疮疡不敛，崩漏不止等病的汤剂中药。是药与料理的结合，不失菜肴的美味，还充满了药的功效。久食对冠心病、高血压、糖尿病、贫血、气喘、面黄体弱者有一定的疗效。</p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200322/1584883538061075515.jpg\" title=\"1584883538061075515.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200322/1584883538331038930.jpg\" title=\"1584883538331038930.jpg\"/></p><p><img src=\"http://182.92.128.70:8081/upload/website/image/20200322/1584883538580055637.jpg\" title=\"1584883538580055637.jpg\"/></p><p><br/></p>', 42.00, 50.00, 'http://182.92.128.70:8081/upload/website/image/20200322/1584883434685049875.jpg', 718, 274, b'1', '2020-03-22 21:25:42', -1, NULL, NULL);

-- ----------------------------
-- Table structure for product_order
-- ----------------------------
DROP TABLE IF EXISTS `product_order`;
CREATE TABLE `product_order`  (
  `orderNo` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号（由业务层生成）',
  `customerId` int(11) NULL DEFAULT NULL COMMENT '客户-外键',
  `sendName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人姓名',
  `sendAddress` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人地址',
  `sendZip` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人邮编',
  `sendTel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人电话',
  `paymentStatus` int(11) NULL DEFAULT NULL COMMENT '付款状态（0、未付款；1、已付款；2.已退款）',
  `paymentType` int(11) NULL DEFAULT 1 COMMENT '付款方式（1、货到付款；2、网上支付）',
  `deliverStatus` int(11) NULL DEFAULT NULL COMMENT '物流状态（0.未开始,1.待发货，2已发货，3已收货）',
  `strikePrice` decimal(11, 2) NULL DEFAULT 0.00 COMMENT '成交价格',
  `meno` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '生成订单时间',
  `dealTime` datetime(0) NULL DEFAULT NULL COMMENT '交易时间（付钱的时间）',
  `sendTime` datetime(0) NULL DEFAULT NULL COMMENT '发货时间',
  `receiveTime` datetime(0) NULL DEFAULT NULL COMMENT '收货时间',
  `tag` int(11) NULL DEFAULT 2 COMMENT '-9异常，-8已拒绝，-4已退货，-3 申请退货，-2已取消，-1申请取消，0待付款、1.待发货，2已发货，3已收货、4已完成',
  PRIMARY KEY (`orderNo`) USING BTREE,
  INDEX `customerId`(`customerId`) USING BTREE,
  INDEX `paymentStatus`(`paymentStatus`) USING BTREE,
  INDEX `paymentType`(`paymentType`) USING BTREE,
  CONSTRAINT `product_order_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product_order
-- ----------------------------
INSERT INTO `product_order` VALUES ('077dc8e1365045cc8fa386ba1d33a2e9', 9, '温晓峰', '柳州市宝骏', '552331', '17712939359', 1, 1, 3, 112.80, '请尽快发货', '2017-09-09 17:34:47', NULL, '2020-02-08 18:23:13', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020221562612221932', 12, '至尊宝', 'f653aec2da68487ea69a0adcce58b107', '545036', '13145200520', 2, 2, 3, 70.16, '请不要发次品', '2017-09-07 20:47:44', NULL, NULL, NULL, 4);
INSERT INTO `product_order` VALUES ('202002042132481146593', 1, '陈家龙', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 3177.70, NULL, '2020-02-04 21:32:48', '2020-02-08 18:05:05', '2020-02-08 18:23:06', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202002042208011150627', 1, '陈家龙', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 115.80, NULL, '2020-02-04 22:08:01', '2020-02-08 18:05:05', '2020-02-08 18:23:06', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020422080116143492', 16, '紫霞', '柳州橙汁园', '568741', '18083815777', 1, 1, 3, 426.00, NULL, '2020-02-04 22:08:01', '2020-02-08 18:05:05', '2020-02-08 18:23:06', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020422080125159910', 25, '张三', '广西柳州', '000000', '17376108213', 1, 1, 3, 525.00, NULL, '2020-02-04 22:08:01', '2020-02-08 18:05:05', '2020-02-08 18:23:06', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020422080150165192', 50, '周杰伦', '柳州城市职业学院', '545005', '13633088047', 1, 1, 3, 318.00, NULL, '2020-02-04 22:08:01', '2020-02-08 18:05:05', '2020-02-08 18:23:06', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020422080160179596', 60, 'adsfdsf', '广西柳州', '689541', '18697845987', 1, 1, 3, 137.00, NULL, '2020-02-04 22:08:01', '2020-02-08 18:05:05', '2020-02-08 18:23:06', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020422080161136147', 61, '你好', '柳州城市职业学院', '000000', '18756987552', 1, 1, 3, 4422.00, NULL, '2020-02-04 22:08:01', '2020-02-08 18:05:05', '2020-02-08 18:23:06', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020422080216139398', 16, '紫霞', '柳州橙汁园', '568741', '18083815777', 1, 1, 3, 565.03, NULL, '2020-02-04 22:08:02', '2020-02-08 18:05:04', '2020-02-08 18:23:05', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020422080236178369', 36, '灰娘娘', '青青草原', '000000', '18254567891', 1, 1, 3, 219.50, NULL, '2020-02-04 22:08:02', '2020-02-08 18:05:04', '2020-02-08 18:23:05', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020422080251134453', 51, '易燃', '北京市昌平区回龙观镇北清路', '000000', '18520001128', 1, 1, 3, 121.00, NULL, '2020-02-04 22:08:02', '2020-02-08 18:05:05', '2020-02-08 18:23:06', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020422080263126527', 63, '谭谭谭', '柳州城市职业学院', '515673', '17677777771', 1, 1, 3, 315.80, NULL, '2020-02-04 22:08:02', '2020-02-08 18:05:05', '2020-02-08 18:23:06', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020422101555161632', 55, '位试试', '广西柳州', '537519', '18894622108', 1, 1, 3, 73.00, NULL, '2020-02-04 22:10:15', '2020-02-08 18:05:04', '2020-02-08 18:23:05', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202002042210201106902', 1, '陈家龙', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 96.00, NULL, '2020-02-04 22:10:20', '2020-02-08 18:05:04', '2020-02-08 18:23:05', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020422102531199418', 31, '阿尔托利亚·潘德拉贡', '大不列颠帝国', '666666', '14795309399', 1, 1, 3, 3925.00, NULL, '2020-02-04 22:10:25', '2020-02-08 18:05:04', '2020-02-08 18:23:05', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020422103040141598', 40, '李小', '柳州城市职业技术学院', '000000', '13640516155', 1, 1, 3, 2103.67, NULL, '2020-02-04 22:10:30', '2020-02-08 18:05:04', '2020-02-08 18:23:05', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020422103518124494', 18, 'ABC客户2', '广西柳州', '000000', '18168526111', 1, 1, 3, 652.00, NULL, '2020-02-04 22:10:35', '2020-02-08 18:05:04', '2020-02-08 18:23:05', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020422104045162745', 45, '李丽莉', '柳州城市职业学院', '000000', '13877690264', 1, 1, 3, 1195.00, NULL, '2020-02-04 22:10:40', '2020-02-08 18:05:04', '2020-02-08 18:23:05', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020422104518100165', 18, 'ABC客户2', '广西柳州', '000000', '18168526111', 1, 1, 3, 871.00, NULL, '2020-02-04 22:10:45', '2020-02-08 18:05:04', '2020-02-08 18:23:04', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020422105034143368', 34, '勇哥', '柳州城市职业学院', '202020', '18078764223', 1, 1, 3, 1807.00, NULL, '2020-02-04 22:10:50', '2020-02-08 18:05:04', '2020-02-08 18:23:04', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020422105565141179', 65, '张11q', '柳州q', '545005', '17376108213', 1, 1, 3, 1657.50, NULL, '2020-02-04 22:10:55', '2020-02-08 18:05:04', '2020-02-08 18:23:04', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202002042211001144850', 1, '陈家龙', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 72.00, NULL, '2020-02-04 22:11:00', '2020-02-08 18:05:03', '2020-02-08 18:23:04', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202002042211059186774', 9, '白安善', '柳州市抠脚村', '547000', '13647789517', 1, 1, 3, 72361.00, NULL, '2020-02-04 22:11:05', '2020-02-08 18:05:03', '2020-02-08 18:23:04', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020422111119179635', 19, 'ABC客户3', '广西柳州', '000000', '18100800709', 1, 1, 3, 294.10, NULL, '2020-02-04 22:11:11', '2020-02-08 18:05:03', '2020-02-08 18:23:04', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202002042211169175332', 9, '白安善', '柳州市抠脚村', '547000', '13647789517', 1, 1, 3, 1015.00, NULL, '2020-02-04 22:11:16', '2020-02-08 18:05:03', '2020-02-08 18:23:04', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020422112158108065', 58, '妮妮', '广西柳州市鱼峰区', '253343', '18775534562', 1, 1, 3, 56.06, NULL, '2020-02-04 22:11:21', '2020-02-08 18:05:03', '2020-02-08 18:23:04', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020422112644186998', 44, 'ad', '广西柳州', '000000', '13677533336', 1, 1, 3, 159.50, NULL, '2020-02-04 22:11:26', '2020-02-08 18:05:03', '2020-02-08 18:23:04', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020422113144199638', 44, 'ad', '广西柳州', '000000', '13677533336', 1, 1, 3, 28.00, NULL, '2020-02-04 22:11:31', '2020-02-08 18:05:03', '2020-02-08 18:23:04', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020422113652136323', 52, '小二', '外太空', '545000', '17777777777', 1, 1, 3, 176.00, NULL, '2020-02-04 22:11:36', '2020-02-08 18:05:03', '2020-02-08 18:23:04', '2020-02-10 23:45:02', 4);
INSERT INTO `product_order` VALUES ('2020020422114112162683', 12, '至尊宝', '桂林市大河小区', '151431', '13633083252', 1, 1, 3, 60156.00, NULL, '2020-02-04 22:11:41', '2020-02-08 18:05:03', '2020-02-08 18:23:04', '2020-02-10 23:45:02', 4);
INSERT INTO `product_order` VALUES ('2020020422114630173673', 30, '张无忌', '广西陆川', '537700', '18844528478', 1, 1, 3, 183.00, NULL, '2020-02-04 22:11:46', '2020-02-08 18:05:03', '2020-02-08 18:23:04', '2020-02-10 23:45:02', 4);
INSERT INTO `product_order` VALUES ('2020020422115149107555', 49, '白云', '柳州城市职业学院', '537400', '18277589582', 1, 1, 3, 336.00, NULL, '2020-02-04 22:11:51', '2020-02-08 18:05:03', '2020-02-08 18:23:03', '2020-02-10 23:45:02', 4);
INSERT INTO `product_order` VALUES ('2020020515480853100521', 53, '马化腾', '柳州市恒大小区', '545000', '15678078888', 1, 2, 3, 920.00, NULL, '2020-02-05 15:48:08', '2020-02-11 23:35:01', '2020-02-08 18:23:03', '2020-02-10 23:45:02', 4);
INSERT INTO `product_order` VALUES ('2020020515481348194285', 48, '啊毛', '柳州城市职业学院', '124587', '17677430458', 1, 2, 3, 7.08, NULL, '2020-02-05 15:48:13', '2020-02-11 23:35:01', '2020-02-08 18:23:03', '2020-02-10 23:45:02', 4);
INSERT INTO `product_order` VALUES ('2020020515481838122512', 38, '勇哥', '柳州城市职业学院', '000000', '18648841344', 1, 2, 3, 463.00, NULL, '2020-02-05 15:48:18', '2020-02-11 23:35:01', '2020-02-08 18:23:03', '2020-02-10 23:45:02', 4);
INSERT INTO `product_order` VALUES ('2020020515482352166635', 52, '小二', '外太空', '545000', '17777777777', 1, 2, 3, 1167.00, NULL, '2020-02-05 15:48:23', '2020-02-11 23:35:01', '2020-02-08 18:23:03', '2020-02-10 23:45:02', 4);
INSERT INTO `product_order` VALUES ('2020020515482823120026', 23, 'abc客户11', '广西柳州', '000000', '13357024777', 1, 2, 3, 53896.10, NULL, '2020-02-05 15:48:28', '2020-02-11 23:35:01', '2020-02-08 18:23:03', '2020-02-10 23:45:02', 4);
INSERT INTO `product_order` VALUES ('2020020515483326175780', 26, '123', '广西柳州', '000000', '13357024777', 1, 2, 3, 925.00, NULL, '2020-02-05 15:48:33', '2020-02-11 23:35:01', '2020-02-08 18:23:03', '2020-02-10 23:45:02', 4);
INSERT INTO `product_order` VALUES ('2020020515483817164685', 17, 'ABC客户1', '广西柳州', '000000', '15377892222', 1, 1, 3, 373.00, NULL, '2020-02-05 15:48:38', '2020-02-08 18:05:02', '2020-02-08 18:23:03', '2020-02-10 23:45:02', 4);
INSERT INTO `product_order` VALUES ('2020020515484327165060', 27, '12', '广西柳州', '000000', '13357024777', 1, 1, 3, 8239.70, NULL, '2020-02-05 15:48:43', '2020-02-08 18:05:02', '2020-02-08 18:23:03', '2020-02-10 23:45:02', 4);
INSERT INTO `product_order` VALUES ('2020020515484859170638', 59, '嘻嘻', '柳州市', '231433', '18216463254', 1, 1, 3, 96.00, NULL, '2020-02-05 15:48:48', '2020-02-08 18:05:02', '2020-02-08 18:23:03', '2020-02-10 23:45:02', 4);
INSERT INTO `product_order` VALUES ('2020020515485349146783', 49, '白云', '柳州城市职业学院', '537400', '18277589582', 1, 1, 3, 1061.00, NULL, '2020-02-05 15:48:53', '2020-02-08 18:05:02', '2020-02-08 18:23:03', '2020-02-10 23:45:02', 4);
INSERT INTO `product_order` VALUES ('2020020515485833127921', 33, '阿沙姐姐丶', '西伯利亚', '547200', '18174918911', 1, 2, 3, 4.00, NULL, '2020-02-05 15:48:58', '2020-02-11 23:35:01', '2020-02-08 18:23:03', '2020-02-10 23:45:02', 4);
INSERT INTO `product_order` VALUES ('2020020515490321131944', 21, 'ABC客户5', '广西柳州', '000000', '15377892222', 1, 2, 3, 48.00, NULL, '2020-02-05 15:49:03', '2020-02-11 23:35:01', '2020-02-08 18:23:03', '2020-02-10 23:45:02', 4);
INSERT INTO `product_order` VALUES ('2020020515490835120363', 35, '芙蓉姐', '柳城职9栋519', '000000', '17888993366', 1, 1, 3, 1275.10, NULL, '2020-02-05 15:49:08', '2020-02-08 18:05:02', '2020-02-08 18:23:02', '2020-02-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020020515491316126470', 16, '紫霞', '柳州橙汁园', '568741', '18083815777', 1, 2, 3, 54.00, NULL, '2020-02-05 15:49:13', '2020-02-11 23:35:01', '2020-02-08 18:23:02', '2020-02-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020020515491845193919', 45, '李丽莉', '柳州城市职业学院', '000000', '13877690264', 1, 1, 3, 24.00, NULL, '2020-02-05 15:49:18', '2020-02-08 18:05:02', '2020-02-08 18:23:02', '2020-02-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020020610260264169387', 64, '小白', '很多事卡拉', '748520', '13878474643', 1, 2, 3, 90.00, NULL, '2020-02-03 10:26:02', '2020-02-11 23:35:01', '2020-02-08 18:23:08', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020610261350198368', 50, '周杰伦', '柳州城市职业学院', '545005', '13633088047', 1, 2, 3, 601.80, NULL, '2020-02-03 10:26:13', '2020-02-11 23:35:01', '2020-02-08 18:23:08', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020610262322181412', 22, 'ABC客户6', '广西柳州', '000000', '15377892222', 1, 1, 3, 478.00, NULL, '2020-02-03 10:26:23', '2020-02-08 18:05:07', '2020-02-08 18:23:08', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020610263325149069', 25, '张三', '广西柳州', '000000', '17376108213', 1, 1, 3, 864.50, NULL, '2020-02-03 10:26:33', '2020-02-08 18:05:07', '2020-02-08 18:23:08', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020610264348149936', 48, '啊毛', '柳州城市职业学院', '124587', '17677430458', 1, 1, 3, 1641.91, NULL, '2020-02-03 10:26:43', '2020-02-08 18:05:07', '2020-02-08 18:23:08', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020610265359184958', 59, '嘻嘻', '柳州市', '231433', '18216463254', 1, 1, 3, 3065.00, NULL, '2020-02-03 10:26:53', '2020-02-08 18:05:07', '2020-02-08 18:23:08', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020610270352127981', 52, '小二', '外太空', '545000', '17777777777', 1, 1, 3, 96.00, NULL, '2020-02-03 10:27:03', '2020-02-08 18:05:07', '2020-02-08 18:23:08', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020610271344189142', 44, 'ad', '广西柳州', '000000', '13677533336', 1, 1, 3, 300.00, NULL, '2020-02-03 10:27:13', '2020-02-08 18:05:07', '2020-02-08 18:23:07', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020610272342170227', 42, '林轩', '新疆维吾尔自治区满斗村', '545597', '15151788955', 1, 1, 3, 342.00, NULL, '2020-02-03 10:27:23', '2020-02-08 18:05:07', '2020-02-08 18:23:07', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020610273334165530', 34, '勇哥', '柳州城市职业学院', '202020', '18078764223', 1, 2, 3, 1153.00, NULL, '2020-02-03 10:27:33', '2020-02-11 23:35:01', '2020-02-08 18:23:07', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020610274358104537', 58, '妮妮', '广西柳州市鱼峰区', '253343', '18775534562', 1, 1, 3, 112.00, NULL, '2020-02-03 10:27:43', '2020-02-08 18:05:06', '2020-02-08 18:23:07', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020610275361107233', 61, '你好', '柳州城市职业学院', '000000', '18756987552', 1, 2, 3, 346.73, NULL, '2020-02-03 10:27:53', '2020-02-11 23:35:01', '2020-02-08 18:23:07', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020610280330129024', 30, '张无忌', '广西陆川', '537700', '18844528478', 1, 1, 3, 158.90, NULL, '2020-02-03 10:28:03', '2020-02-08 18:05:06', '2020-02-08 18:23:07', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020610281316169436', 16, '紫霞', '柳州橙汁园', '568741', '18083815777', 1, 1, 3, 30.00, NULL, '2020-02-03 10:28:13', '2020-02-08 18:05:06', '2020-02-08 18:23:07', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020610282364195050', 64, '小白', '很多事卡拉', '748520', '13878474643', 1, 1, 3, 294.00, NULL, '2020-02-03 10:28:23', '2020-02-08 18:05:06', '2020-02-08 18:23:07', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202002061028331127717', 1, '陈家龙', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 20.00, NULL, '2020-02-03 10:28:33', '2020-02-11 23:35:01', '2020-02-08 18:23:07', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020610284341162248', 41, '嘟嘟', '广西柳州', '545107', '17377235562', 1, 2, 3, 430.00, NULL, '2020-02-03 10:28:43', '2020-02-11 23:35:01', '2020-02-08 18:23:07', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020610285322109773', 22, 'ABC客户6', '广西柳州', '000000', '15377892222', 1, 2, 3, 527.70, NULL, '2020-02-03 10:28:53', '2020-02-11 23:35:01', '2020-02-08 18:23:07', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020610290346179646', 46, '邓一封', '北京市朝阳区', '548766', '15648544696', 1, 2, 3, 49.50, NULL, '2020-02-03 10:29:03', '2020-02-11 23:35:01', '2020-02-08 18:23:07', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020610291323175484', 23, 'abc客户11', '广西柳州', '000000', '13357024777', 1, 1, 3, 627.00, NULL, '2020-02-03 10:29:13', '2020-02-08 18:05:06', '2020-02-08 18:23:07', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020610292335186300', 35, '芙蓉姐', '柳城职9栋519', '000000', '17888993366', 1, 2, 3, 1771.00, NULL, '2020-02-03 10:29:23', '2020-02-11 23:35:01', '2020-02-08 18:23:06', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020610293332154066', 32, '岑辉山', '柳州城市职业学院', '047300', '13087726397', 1, 1, 3, 6233.50, NULL, '2020-02-03 10:29:33', '2020-02-08 18:05:05', '2020-02-08 18:23:06', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020610294323177677', 23, 'abc客户11', '广西柳州', '000000', '13357024777', 1, 1, 3, 424.00, NULL, '2020-02-03 10:29:43', '2020-02-08 18:05:05', '2020-02-08 18:23:06', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020617415118132474', 18, 'ABC客户2', '广西柳州', '000000', '18168526111', 1, 2, 3, 1176.00, NULL, '2020-02-02 17:41:51', '2020-02-11 23:35:01', '2020-02-08 18:23:09', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617415227119724', 27, '12', '广西柳州', '000000', '13357024777', 1, 1, 3, 210.00, NULL, '2020-02-02 17:41:52', '2020-02-08 18:05:08', '2020-02-08 18:23:09', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617415253159644', 53, '马化腾', '柳州市恒大小区', '545000', '15678078888', 1, 2, 3, 280.00, NULL, '2020-02-02 17:41:52', '2020-02-11 23:35:01', '2020-02-08 18:23:09', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617415320125263', 20, 'ABC客户4', '广西柳州', '000000', '15377892222', 1, 1, 3, 677.90, NULL, '2020-02-02 17:41:53', '2020-02-08 18:05:08', '2020-02-08 18:23:09', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020617415362180249', 62, '昭君', '广西贵港市港南区', '537100', '15253524689', 1, 2, 3, 254.35, NULL, '2020-02-02 17:41:53', '2020-02-11 23:35:01', '2020-02-08 18:23:09', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617415462197911', 62, '昭君', '广西贵港市港南区', '537100', '15253524689', 1, 1, 3, 14.50, NULL, '2020-02-02 17:41:54', '2020-02-08 18:05:08', '2020-02-08 18:23:09', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020617415464156248', 64, '小白', '很多事卡拉', '748520', '13878474643', 1, 1, 3, 342.00, NULL, '2020-02-02 17:41:54', '2020-02-08 18:05:08', '2020-02-08 18:23:09', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020617415538141416', 38, '勇哥', '柳州城市职业学院', '000000', '18648841344', 1, 2, 3, 160.00, NULL, '2020-02-02 17:41:55', '2020-02-11 23:35:01', '2020-02-08 18:23:08', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020617415547148677', 47, '憨憨', '柳州城市职业学院', '000000', '15578568273', 1, 1, 3, 11744.00, NULL, '2020-02-02 17:41:55', '2020-02-08 18:05:07', '2020-02-08 18:23:08', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020617415619183244', 19, 'ABC客户3', '广西柳州', '000000', '18100800709', 1, 1, 3, 1696.00, NULL, '2020-02-02 17:41:56', '2020-02-08 18:05:07', '2020-02-08 18:23:08', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020617415641153495', 41, '嘟嘟', '广西柳州', '545107', '17377235562', 1, 1, 3, 847.00, NULL, '2020-02-02 17:41:56', '2020-02-08 18:05:07', '2020-02-08 18:23:08', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020617415725101744', 25, '张三', '广西柳州', '000000', '17376108213', 1, 1, 3, 916.31, NULL, '2020-02-02 17:41:57', '2020-02-08 18:05:07', '2020-02-08 18:23:08', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020617415755190592', 55, '位试试', '广西柳州', '537519', '18894622108', 1, 1, 3, 300.00, NULL, '2020-02-02 17:41:57', '2020-02-08 18:05:07', '2020-02-08 18:23:08', '2020-02-10 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020020617451823107363', 23, 'abc客户11', '广西柳州', '000000', '13357024777', 1, 1, 3, 516.00, NULL, '2020-02-01 17:45:18', '2020-02-08 18:05:08', '2020-02-08 18:23:11', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617451963170774', 63, '谭谭谭', '柳州城市职业学院', '515673', '17677777771', 1, 2, 3, 308.00, NULL, '2020-02-01 17:45:19', '2020-02-11 23:35:01', '2020-02-08 18:23:10', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617452059189043', 59, '嘻嘻', '柳州市', '231433', '18216463254', 1, 2, 3, 239.40, NULL, '2020-02-01 17:45:20', '2020-02-11 23:35:01', '2020-02-08 18:23:10', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('202002061745209155180', 9, '白安善', '柳州市抠脚村', '547000', '13647789517', 1, 1, 3, 1492.00, NULL, '2020-02-01 17:45:20', '2020-02-08 18:05:08', '2020-02-08 18:23:10', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617452147165034', 47, '憨憨', '柳州城市职业学院', '000000', '15578568273', 1, 1, 3, 305.00, NULL, '2020-02-01 17:45:21', '2020-02-08 18:05:08', '2020-02-08 18:23:10', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617452226189376', 26, '123', '广西柳州', '000000', '13357024777', 1, 1, 3, 415.00, NULL, '2020-02-01 17:45:22', '2020-02-08 18:05:08', '2020-02-08 18:23:10', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617452351168743', 51, '易燃', '北京市昌平区回龙观镇北清路', '000000', '18520001128', 1, 1, 3, 63.60, NULL, '2020-02-01 17:45:23', '2020-02-08 18:05:08', '2020-02-08 18:23:10', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('202002061745241138612', 1, '陈家龙', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 2524.00, NULL, '2020-02-01 17:45:24', '2020-02-08 18:05:08', '2020-02-08 18:23:10', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('202002061745251181601', 1, '陈家龙', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 2302.10, NULL, '2020-02-01 17:45:25', '2020-02-11 23:35:01', '2020-02-08 18:23:10', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617452557139187', 57, '小猪佩奇', '柳州中山路8号', '000000', '18410358497', 1, 1, 3, 324.00, NULL, '2020-02-01 17:45:25', '2020-02-08 18:05:08', '2020-02-08 18:23:10', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617452649113732', 49, '白云', '柳州城市职业学院', '537400', '18277589582', 1, 1, 3, 136.00, NULL, '2020-02-01 17:45:26', '2020-02-08 18:05:08', '2020-02-08 18:23:10', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617452739155492', 39, '邓一封', '北京市朝阳区', '545933', '15468951235', 1, 2, 3, 72.00, NULL, '2020-02-01 17:45:27', '2020-02-11 23:35:01', '2020-02-08 18:23:10', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617452818181646', 18, 'ABC客户2', '广西柳州', '000000', '18168526111', 1, 2, 3, 1453.00, NULL, '2020-02-01 17:45:28', '2020-02-11 23:35:01', '2020-02-08 18:23:10', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617452930143805', 30, '张无忌', '广西陆川', '537700', '18844528478', 1, 2, 3, 822.00, NULL, '2020-02-01 17:45:29', '2020-02-11 23:35:01', '2020-02-08 18:23:09', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617452947146565', 47, '憨憨', '柳州城市职业学院', '000000', '15578568273', 1, 2, 3, 134.00, NULL, '2020-02-01 17:45:29', '2020-02-11 23:35:01', '2020-02-08 18:23:10', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617453044119793', 44, 'ad', '广西柳州', '000000', '13677533336', 1, 1, 3, 140.00, NULL, '2020-02-01 17:45:30', '2020-02-08 18:05:08', '2020-02-08 18:23:09', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617453118163466', 18, 'ABC客户2', '广西柳州', '000000', '18168526111', 1, 2, 3, 24.08, NULL, '2020-02-01 17:45:31', '2020-02-11 23:35:01', '2020-02-08 18:23:09', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617453254123594', 54, 'buyaolian', '北极半球', '530401', '18645678564', 1, 2, 3, 401.07, NULL, '2020-02-01 17:45:32', '2020-02-11 23:35:01', '2020-02-08 18:23:09', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617471723116954', 23, 'abc客户11', '广西柳州', '000000', '13357024777', 1, 2, 3, 598.50, NULL, '2020-01-31 17:47:17', '2020-02-11 23:35:01', '2020-02-08 18:23:11', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617471840135123', 40, '李小', '柳州城市职业技术学院', '000000', '13640516155', 1, 2, 3, 23.00, NULL, '2020-01-31 17:47:18', '2020-02-11 23:35:01', '2020-02-08 18:23:11', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617471913129151', 13, '徐凤年', '广西柳州', '000000', '17703771999', 1, 2, 3, 1324.00, NULL, '2020-01-31 17:47:19', '2020-02-11 23:35:01', '2020-02-08 18:23:11', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617472026197481', 26, '123', '广西柳州', '000000', '13357024777', 1, 2, 3, 537.00, NULL, '2020-01-31 17:47:20', '2020-02-11 23:35:01', '2020-02-08 18:23:11', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617472165169166', 65, '张11q', '柳州q', '545005', '17376108213', 1, 2, 3, 1380.00, NULL, '2020-01-31 17:47:21', '2020-02-11 23:35:01', '2020-02-08 18:23:11', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617472231121097', 31, '阿尔托利亚·潘德拉贡', '大不列颠帝国', '666666', '14795309399', 1, 1, 3, 783.00, NULL, '2020-01-31 17:47:22', '2020-02-08 18:05:09', '2020-02-08 18:23:11', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617472319106336', 19, 'ABC客户3', '广西柳州', '000000', '18100800709', 1, 1, 3, 526.00, NULL, '2020-01-31 17:47:23', '2020-02-08 18:05:09', '2020-02-08 18:23:11', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617480514188254', 14, '王大发', '北京市顺义区', '000000', '15388889881', 1, 1, 3, 170.40, NULL, '2020-01-30 17:48:05', '2020-02-08 18:05:10', '2020-02-08 18:23:13', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617480633172480', 33, '阿沙姐姐丶', '西伯利亚', '547200', '18174918911', 1, 1, 3, 148.00, NULL, '2020-01-30 17:48:06', '2020-02-08 18:05:09', '2020-02-08 18:23:13', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617480722164762', 22, 'ABC客户6', '广西柳州', '000000', '15377892222', 1, 1, 3, 332.50, NULL, '2020-01-30 17:48:07', '2020-02-08 18:05:09', '2020-02-08 18:23:13', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617480859180400', 59, '嘻嘻', '柳州市', '231433', '18216463254', 1, 2, 3, 419.00, NULL, '2020-01-30 17:48:08', '2020-02-11 23:35:01', '2020-02-08 18:23:13', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617480946114557', 46, '邓一封', '北京市朝阳区', '548766', '15648544696', 1, 1, 3, 72.00, NULL, '2020-01-30 17:48:09', '2020-02-08 18:05:09', '2020-02-08 18:23:13', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617481062108640', 62, '昭君', '广西贵港市港南区', '537100', '15253524689', 1, 1, 3, 1140.00, NULL, '2020-01-30 17:48:10', '2020-02-08 18:05:09', '2020-02-08 18:23:12', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617481115109847', 15, '客户3', '广东省广州市', '000000', '15388889881', 1, 2, 3, 255.00, NULL, '2020-01-30 17:48:11', '2020-02-11 23:35:01', '2020-02-08 18:23:12', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617481246161693', 46, '邓一封', '北京市朝阳区', '548766', '15648544696', 1, 1, 3, 154.00, NULL, '2020-01-30 17:48:12', '2020-02-08 18:05:09', '2020-02-08 18:23:12', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617481322183174', 22, 'ABC客户6', '广西柳州', '000000', '15377892222', 1, 1, 3, 77.00, NULL, '2020-01-30 17:48:13', '2020-02-08 18:05:09', '2020-02-08 18:23:12', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617481445134696', 45, '李丽莉', '柳州城市职业学院', '000000', '13877690264', 1, 1, 3, 25.00, NULL, '2020-01-30 17:48:14', '2020-02-08 18:05:09', '2020-02-08 18:23:12', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617481523155156', 23, 'abc客户11', '广西柳州', '000000', '13357024777', 1, 2, 3, 81.00, NULL, '2020-01-30 17:48:15', '2020-02-11 23:35:01', '2020-02-08 18:23:12', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617481650147929', 50, '周杰伦', '柳州城市职业学院', '545005', '13633088047', 1, 1, 3, 297.00, NULL, '2020-01-30 17:48:16', '2020-02-08 18:05:09', '2020-02-08 18:23:12', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617481828192394', 28, '张三丰', '柳州城市职业学院', '000000', '13633083200', 1, 1, 3, 133.00, NULL, '2020-01-30 17:48:18', '2020-02-08 18:05:09', '2020-02-08 18:23:12', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617481937110231', 37, '小小', '柳州市官塘大道柳州城市职业学院', '000000', '17677253547', 1, 2, 3, 799.00, NULL, '2020-01-30 17:48:19', '2020-02-11 23:35:01', '2020-02-08 18:23:12', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617482036128446', 36, '灰娘娘', '青青草原', '000000', '18254567891', 1, 2, 3, 77.00, NULL, '2020-01-30 17:48:20', '2020-02-11 23:35:01', '2020-02-08 18:23:12', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617482120148029', 20, 'ABC客户4', '广西柳州', '000000', '15377892222', 1, 2, 3, 96.00, NULL, '2020-01-30 17:48:21', '2020-02-11 23:35:01', '2020-02-08 18:23:11', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617482222144297', 22, 'ABC客户6', '广西柳州', '000000', '15377892222', 1, 2, 3, 72.00, NULL, '2020-01-30 17:48:22', '2020-02-11 23:35:01', '2020-02-08 18:23:11', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617482335154411', 35, '芙蓉姐', '柳城职9栋519', '000000', '17888993366', 1, 2, 3, 336.00, NULL, '2020-01-30 17:48:23', '2020-02-11 23:35:01', '2020-02-08 18:23:11', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617482462165619', 62, '昭君', '广西贵港市港南区', '537100', '15253524689', 1, 2, 3, 475.00, NULL, '2020-01-30 17:48:24', '2020-02-11 23:35:01', '2020-02-08 18:23:11', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617482521184761', 21, 'ABC客户5', '广西柳州', '000000', '15377892222', 1, 2, 3, 191.70, NULL, '2020-01-30 17:48:25', '2020-02-11 23:35:01', '2020-02-08 18:23:11', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617482647139440', 47, '憨憨', '柳州城市职业学院', '000000', '15578568273', 1, 1, 3, 110.00, NULL, '2020-01-30 17:48:26', '2020-02-08 18:05:09', '2020-02-08 18:23:11', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('2020020617493158180758', 58, '妮妮', '广西柳州市鱼峰区', '253343', '18775534562', 1, 2, 3, 299.00, NULL, '2020-02-06 17:49:31', '2020-02-11 23:35:01', '2020-02-08 18:23:02', '2020-02-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020020617494346108271', 46, '邓一封', '北京市朝阳区', '548766', '15648544696', 1, 1, 3, 672.00, NULL, '2020-02-06 17:49:43', '2020-02-08 18:05:02', '2020-02-08 18:23:02', '2020-02-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020020617495543167064', 43, '王守义', '石家庄', '000000', '13737664103', 1, 2, 3, 77.00, NULL, '2020-02-06 17:49:55', '2020-02-11 23:35:00', '2020-02-08 18:23:02', '2020-02-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020020617500734144171', 34, '勇哥', '柳州城市职业学院', '202020', '18078764223', 1, 2, 3, 156.00, NULL, '2020-02-06 17:50:07', '2020-02-11 23:35:00', '2020-02-08 18:23:02', '2020-02-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020020617501913183606', 13, '徐凤年', '广西柳州', '000000', '17703771999', 1, 1, 3, 309.00, NULL, '2020-02-06 17:50:19', '2020-02-08 18:05:02', '2020-02-08 18:23:02', '2020-02-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020020617503154148712', 54, 'buyaolian', '北极半球', '530401', '18645678564', 1, 1, 3, 228.00, NULL, '2020-02-06 17:50:31', '2020-02-08 18:05:02', '2020-02-08 18:23:02', '2020-02-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020020617504329181155', 29, '你的名字', '柳州城市职业学院7栋', '545003', '18775207581', 1, 1, 3, 1612.00, NULL, '2020-02-06 17:50:43', '2020-02-08 18:05:02', '2020-02-08 18:23:02', '2020-02-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020020617505544110061', 44, 'ad', '广西柳州', '000000', '13677533336', 1, 2, 3, 0.08, NULL, '2020-02-06 17:50:55', '2020-02-11 23:35:00', '2020-02-08 18:23:02', '2020-02-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020020617510731129500', 31, '阿尔托利亚·潘德拉贡', '大不列颠帝国', '666666', '14795309399', 1, 1, 3, 476.70, NULL, '2020-02-06 17:51:07', '2020-02-08 18:05:01', '2020-02-08 18:23:02', '2020-02-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020020617511917180373', 17, 'ABC客户1', '广西柳州', '000000', '15377892222', 1, 2, 3, 1129.00, NULL, '2020-02-06 17:51:19', '2020-02-11 23:35:00', '2020-02-08 18:23:02', '2020-02-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020020617513138106270', 38, '勇哥', '柳州城市职业学院', '000000', '18648841344', 1, 1, 3, 90.00, NULL, '2020-02-06 17:51:31', '2020-02-08 18:05:01', '2020-02-08 18:23:01', '2020-02-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020020617514322137729', 22, 'ABC客户6', '广西柳州', '000000', '15377892222', 1, 2, 3, 253.00, NULL, '2020-02-06 17:51:43', '2020-02-11 23:35:00', '2020-02-08 18:23:01', '2020-02-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020020617515525127894', 25, '张三', '广西柳州', '000000', '17376108213', 1, 2, 3, 80.00, NULL, '2020-02-06 17:51:55', '2020-02-11 23:35:00', '2020-02-08 18:23:01', '2020-02-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020020617520733173123', 33, '阿沙姐姐丶', '西伯利亚', '547200', '18174918911', 1, 1, 3, 1036.00, NULL, '2020-02-06 17:52:07', '2020-02-08 18:05:01', '2020-02-08 18:23:01', '2020-02-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020020617521965117374', 65, '张11q', '柳州q', '545005', '17376108213', 1, 2, 3, 362.00, NULL, '2020-02-06 17:52:19', '2020-02-11 23:35:00', '2020-02-08 18:23:01', '2020-02-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020020617523154119175', 54, 'buyaolian', '北极半球', '530401', '18645678564', 1, 1, 3, 280.00, NULL, '2020-02-06 17:52:31', '2020-02-08 18:05:01', '2020-02-08 18:23:01', '2020-02-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020020715433060147342', 60, 'adsfdsf', '广西柳州', '689541', '18697845987', 1, 2, 3, 326.00, NULL, '2020-02-07 15:43:30', '2020-02-11 23:35:00', '2020-02-08 18:23:01', '2020-02-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020020715442163155610', 63, '谭谭谭', '柳州城市职业学院', '515673', '17677777771', 1, 1, 3, 6.00, NULL, '2020-02-07 15:44:21', '2020-02-08 18:05:01', '2020-02-08 18:23:01', '2020-02-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020020715451159173145', 59, '嘻嘻', '柳州市', '231433', '18216463254', 1, 1, 3, 987.00, NULL, '2020-02-07 15:45:11', '2020-02-08 18:05:01', '2020-02-08 18:23:01', '2020-02-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020020715460119126118', 19, 'ABC客户3', '广西柳州', '000000', '18100800709', 1, 1, 3, 228.00, NULL, '2020-02-07 15:46:01', '2020-02-08 18:05:01', '2020-02-08 18:23:01', '2020-02-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020020715465152195312', 52, '小二', '外太空', '545000', '17777777777', 1, 2, 3, 104.60, NULL, '2020-02-07 15:46:51', '2020-02-11 23:35:00', '2020-02-08 18:23:01', '2020-02-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020020715474158176941', 58, '妮妮', '广西柳州市鱼峰区', '253343', '18775534562', 1, 2, 3, 825.50, NULL, '2020-02-07 15:47:41', '2020-02-11 23:35:00', '2020-02-08 18:23:01', '2020-02-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020020715483137120424', 37, '小小', '柳州市官塘大道柳州城市职业学院', '000000', '17677253547', 1, 2, 3, 690.00, NULL, '2020-02-07 15:48:31', '2020-02-11 23:35:00', '2020-02-08 18:23:00', '2020-02-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020020715492158152088', 58, '妮妮', '广西柳州市鱼峰区', '253343', '18775534562', 1, 1, 3, 1718.00, NULL, '2020-02-07 15:49:21', '2020-02-08 18:05:01', '2020-02-08 18:23:00', '2020-02-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020020715501163127554', 63, '谭谭谭', '柳州城市职业学院', '515673', '17677777771', 1, 2, 3, 60.00, NULL, '2020-02-07 15:50:11', '2020-02-11 23:35:00', '2020-02-08 18:23:00', '2020-02-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020020814060054136496', 54, 'buyaolian', '北极半球', '530401', '18645678564', 1, 2, 3, 417.00, NULL, '2020-02-08 14:06:00', '2020-02-12 23:35:00', '2020-02-09 23:40:00', '2020-02-11 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020020814060536130828', 36, '灰娘娘', '青青草原', '000000', '18254567891', 1, 1, 3, 1885.00, NULL, '2020-02-08 14:06:05', '2020-02-08 18:05:01', '2020-02-09 23:40:00', '2020-02-11 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020020814061017111428', 17, 'ABC客户1', '广西柳州', '000000', '15377892222', 1, 1, 3, 451.00, NULL, '2020-02-08 14:06:10', '2020-02-08 18:05:01', '2020-02-09 23:40:00', '2020-02-11 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020020814061544103027', 44, 'ad', '广西柳州', '000000', '13677533336', 1, 2, 3, 52.10, NULL, '2020-02-08 14:06:15', '2020-02-12 23:35:00', '2020-02-09 23:40:00', '2020-02-11 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020020814062064113019', 64, '小白', '很多事卡拉', '748520', '13878474643', 1, 2, 3, 608.37, NULL, '2020-02-08 14:06:20', '2020-02-12 23:35:00', '2020-02-09 23:40:00', '2020-02-11 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020020814062513112347', 13, '徐凤年', '广西柳州', '000000', '17703771999', 1, 1, 3, 547.10, NULL, '2020-02-08 14:06:25', '2020-02-08 18:05:01', '2020-02-09 23:40:00', '2020-02-11 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020020814063029141710', 29, '你的名字', '柳州城市职业学院7栋', '545003', '18775207581', 1, 1, 3, 339.37, NULL, '2020-02-08 14:06:30', '2020-02-08 18:05:01', '2020-02-09 23:40:00', '2020-02-11 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020020814063537165287', 37, '小小', '柳州市官塘大道柳州城市职业学院', '000000', '17677253547', 1, 1, 3, 60.00, NULL, '2020-02-08 14:06:35', '2020-02-08 18:05:01', '2020-02-09 23:40:00', '2020-02-11 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020020816110051190961', 51, '易燃', '北京市昌平区回龙观镇北清路', '000000', '18520001128', 1, 1, 3, 1039.00, NULL, '2020-02-08 16:11:00', '2020-02-08 18:05:00', '2020-02-09 23:40:00', '2020-02-11 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020020816110517195817', 17, 'ABC客户1', '广西柳州', '000000', '15377892222', 1, 1, 3, 30.00, NULL, '2020-02-08 16:11:05', '2020-02-08 18:05:00', '2020-02-09 23:40:00', '2020-02-11 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020020816111014169366', 14, '王大发', '北京市顺义区', '000000', '15388889881', 1, 2, 3, 47.80, NULL, '2020-02-08 16:11:10', '2020-02-12 23:35:00', '2020-02-09 23:40:00', '2020-02-11 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020020816111549163022', 49, '白云', '柳州城市职业学院', '537400', '18277589582', 1, 2, 3, 209.00, NULL, '2020-02-08 16:11:15', '2020-02-12 23:35:00', '2020-02-09 23:40:00', '2020-02-11 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020020816112032157930', 32, '岑辉山', '柳州城市职业学院', '047300', '13087726397', 1, 2, 3, 121.00, NULL, '2020-02-08 16:11:20', '2020-02-12 23:35:00', '2020-02-09 23:40:00', '2020-02-11 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020020816112520134759', 20, 'ABC客户4', '广西柳州', '000000', '15377892222', 1, 1, 3, 188.00, NULL, '2020-02-08 16:11:25', '2020-02-08 18:05:00', '2020-02-09 23:40:00', '2020-02-11 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020020816113058125057', 58, '妮妮', '广西柳州市鱼峰区', '253343', '18775534562', 1, 2, 3, 12.00, NULL, '2020-02-08 16:11:30', '2020-02-11 23:35:00', '2020-02-08 16:49:46', '2020-02-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020020905300056162625', 56, 'nini', '广西柳州', '537114', '18378556608', 1, 2, 3, 293.00, NULL, '2020-02-09 05:30:00', '2020-02-13 23:35:00', '2020-02-10 23:40:00', '2020-02-12 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020020905310033168944', 33, '阿沙姐姐丶', '西伯利亚', '547200', '18174918911', 1, 1, 3, 56.00, NULL, '2020-02-09 05:31:00', '2020-02-09 23:30:00', '2020-02-10 23:40:00', '2020-02-12 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020020905320045149702', 45, '李丽莉', '柳州城市职业学院', '000000', '13877690264', 1, 2, 3, 170.00, NULL, '2020-02-09 05:32:00', '2020-02-13 23:35:00', '2020-02-10 23:40:00', '2020-02-12 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020020905330038144219', 38, '勇哥', '柳州城市职业学院', '000000', '18648841344', 1, 2, 3, 17.90, NULL, '2020-02-09 05:33:00', '2020-02-13 23:35:00', '2020-02-10 23:40:00', '2020-02-12 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020020905340029104580', 29, '你的名字', '柳州城市职业学院7栋', '545003', '18775207581', 1, 2, 3, 132.00, NULL, '2020-02-09 05:34:00', '2020-02-13 23:35:00', '2020-02-10 23:40:00', '2020-02-12 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020020905350021176471', 21, 'ABC客户5', '广西柳州', '000000', '15377892222', 1, 2, 3, 102.00, NULL, '2020-02-09 05:35:00', '2020-02-13 23:35:00', '2020-02-10 23:40:00', '2020-02-12 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020020905360054121016', 54, 'buyaolian', '北极半球', '530401', '18645678564', 1, 1, 3, 133.00, NULL, '2020-02-09 05:36:00', '2020-02-09 23:30:00', '2020-02-10 23:40:00', '2020-02-12 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020020905370135112389', 35, '芙蓉姐', '柳城职9栋519', '000000', '17888993366', 1, 1, 3, 62.00, NULL, '2020-02-09 05:37:01', '2020-02-09 23:30:00', '2020-02-10 23:40:00', '2020-02-12 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020020905380114130074', 14, '王大发', '北京市顺义区', '000000', '15388889881', 1, 1, 3, 42.00, NULL, '2020-02-09 05:38:01', '2020-02-09 23:30:00', '2020-02-10 23:40:00', '2020-02-12 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020020905390154151711', 54, 'buyaolian', '北极半球', '530401', '18645678564', 1, 2, 3, 53.00, NULL, '2020-02-09 05:39:01', '2020-02-13 23:35:00', '2020-02-10 23:40:00', '2020-02-12 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021005300041145676', 41, '嘟嘟', '广西柳州', '545107', '17377235562', 1, 2, 3, 60.00, NULL, '2020-02-10 05:30:00', '2020-02-14 23:35:00', '2020-02-11 23:40:00', '2020-02-13 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021005310058102976', 58, '妮妮', '广西柳州市鱼峰区', '253343', '18775534562', 1, 1, 3, 165.00, NULL, '2020-02-10 05:31:00', '2020-02-10 23:30:00', '2020-02-11 23:40:00', '2020-02-13 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021005320052153151', 52, '小二', '外太空', '545000', '17777777777', 1, 1, 3, 202.10, NULL, '2020-02-10 05:32:00', '2020-02-10 23:30:00', '2020-02-11 23:40:00', '2020-02-13 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021005330044104108', 44, 'ad', '广西柳州', '000000', '13677533336', 1, 2, 3, 13.20, NULL, '2020-02-10 05:33:00', '2020-02-14 23:35:00', '2020-02-11 23:40:00', '2020-02-13 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021005340036169743', 36, '灰娘娘', '青青草原', '000000', '18254567891', 1, 2, 3, 102.00, NULL, '2020-02-10 05:34:00', '2020-02-14 23:35:00', '2020-02-11 23:40:00', '2020-02-13 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021005350042131017', 42, '林轩', '新疆维吾尔自治区满斗村', '545597', '15151788955', 1, 1, 3, 198.02, NULL, '2020-02-10 05:35:00', '2020-02-10 23:30:00', '2020-02-11 23:40:00', '2020-02-13 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021005360059180415', 59, '嘻嘻', '柳州市', '231433', '18216463254', 1, 2, 3, 65.00, NULL, '2020-02-10 05:36:00', '2020-02-14 23:35:00', '2020-02-11 23:40:00', '2020-02-13 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021005370041187735', 41, '嘟嘟', '广西柳州', '545107', '17377235562', 1, 1, 3, 24.00, NULL, '2020-02-10 05:37:00', '2020-02-10 23:30:00', '2020-02-11 23:40:00', '2020-02-13 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021005380045133191', 45, '李丽莉', '柳州城市职业学院', '000000', '13877690264', 1, 2, 3, 85.00, NULL, '2020-02-10 05:38:00', '2020-02-14 23:35:00', '2020-02-11 23:40:00', '2020-02-13 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021105300055170895', 55, '位试试', '广西柳州', '537519', '18894622108', 1, 1, 3, 89.00, NULL, '2020-02-11 05:30:00', '2020-02-11 23:30:00', '2020-02-12 23:40:00', '2020-02-14 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021105310033190053', 33, '阿沙姐姐丶', '西伯利亚', '547200', '18174918911', 1, 1, 3, 4.00, NULL, '2020-02-11 05:31:00', '2020-02-11 23:30:00', '2020-02-12 23:40:00', '2020-02-14 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021105320042100304', 42, '林轩', '新疆维吾尔自治区满斗村', '545597', '15151788955', 1, 1, 3, 33.30, NULL, '2020-02-11 05:32:00', '2020-02-11 23:30:00', '2020-02-12 23:40:00', '2020-02-14 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021105330041115984', 41, '嘟嘟', '广西柳州', '545107', '17377235562', 1, 2, 3, 112.00, NULL, '2020-02-11 05:33:00', '2020-02-15 23:35:00', '2020-02-12 23:40:00', '2020-02-14 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021105340027156240', 27, '12', '广西柳州', '000000', '13357024777', 1, 2, 3, 12.00, NULL, '2020-02-11 05:34:00', '2020-02-15 23:35:00', '2020-02-12 23:40:00', '2020-02-14 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021105350043136440', 43, '王守义', '石家庄', '000000', '13737664103', 1, 1, 3, 116.00, NULL, '2020-02-11 05:35:00', '2020-02-11 23:30:00', '2020-02-12 23:40:00', '2020-02-14 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021205300021190593', 21, 'ABC客户5', '广西柳州', '000000', '15377892222', 1, 2, 3, 9.90, NULL, '2020-02-12 05:30:00', '2020-02-16 23:35:00', '2020-02-13 23:40:01', '2020-02-15 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021205310037166141', 37, '小小', '柳州市官塘大道柳州城市职业学院', '000000', '17677253547', 1, 1, 3, 257.00, NULL, '2020-02-12 05:31:00', '2020-02-12 23:30:01', '2020-02-13 23:40:00', '2020-02-15 23:45:00', 4);
INSERT INTO `product_order` VALUES ('202002120532001183357', 1, '陈家龙', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 33.10, NULL, '2020-02-12 05:32:00', '2020-02-16 23:35:00', '2020-02-13 23:40:00', '2020-02-15 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021205330055142815', 55, '位试试', '广西柳州', '537519', '18894622108', 1, 1, 3, 206.00, NULL, '2020-02-12 05:33:00', '2020-02-12 23:30:01', '2020-02-13 23:40:00', '2020-02-15 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021205340028119047', 28, '张三丰', '柳州城市职业学院', '000000', '13633083200', 1, 1, 3, 39.80, NULL, '2020-02-12 05:34:00', '2020-02-12 23:30:01', '2020-02-13 23:40:00', '2020-02-15 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021205350047101224', 47, '憨憨', '柳州城市职业学院', '000000', '15578568273', 1, 1, 3, 180.00, NULL, '2020-02-12 05:35:00', '2020-02-12 23:30:01', '2020-02-13 23:40:00', '2020-02-15 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021205360043164344', 43, '王守义', '石家庄', '000000', '13737664103', 1, 1, 3, 20.00, NULL, '2020-02-12 05:36:00', '2020-02-12 23:30:01', '2020-02-13 23:40:00', '2020-02-15 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021205370039169005', 39, '邓一封', '北京市朝阳区', '545933', '15468951235', 1, 1, 3, 1065.60, NULL, '2020-02-12 05:37:00', '2020-02-12 23:30:01', '2020-02-13 23:40:00', '2020-02-15 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021205380028189175', 28, '张三丰', '柳州城市职业学院', '000000', '13633083200', 1, 1, 3, 32.00, NULL, '2020-02-12 05:38:00', '2020-02-12 23:30:01', '2020-02-13 23:40:00', '2020-02-15 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021205390043127758', 43, '王守义', '石家庄', '000000', '13737664103', 1, 2, 3, 121.00, NULL, '2020-02-12 05:39:00', '2020-02-16 23:35:00', '2020-02-13 23:40:00', '2020-02-15 23:45:00', 4);
INSERT INTO `product_order` VALUES ('202002120540009198846', 9, '白安善', '柳州市抠脚村', '547000', '13647789517', 1, 1, 3, 65.00, NULL, '2020-02-12 05:40:00', '2020-02-12 23:30:01', '2020-02-13 23:40:00', '2020-02-15 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021305300038160345', 38, '勇哥', '柳州城市职业学院', '000000', '18648841344', 1, 1, 3, 25.90, NULL, '2020-02-13 05:30:00', '2020-02-13 23:30:00', '2020-02-14 23:40:00', '2020-02-16 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021305310044129695', 44, 'ad', '广西柳州', '000000', '13677533336', 1, 2, 3, 76.00, NULL, '2020-02-13 05:31:00', '2020-02-17 23:35:00', '2020-02-14 23:40:00', '2020-02-16 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021305320041159032', 41, '嘟嘟', '广西柳州', '545107', '17377235562', 1, 1, 3, 32.00, NULL, '2020-02-13 05:32:00', '2020-02-13 23:30:00', '2020-02-14 23:40:00', '2020-02-16 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021305330051182783', 51, '易燃', '北京市昌平区回龙观镇北清路', '000000', '18520001128', 1, 1, 3, 16.00, NULL, '2020-02-13 05:33:00', '2020-02-13 23:30:00', '2020-02-14 23:40:00', '2020-02-16 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021305340027134103', 27, '12', '广西柳州', '000000', '13357024777', 1, 2, 3, 24.00, NULL, '2020-02-13 05:34:00', '2020-02-17 23:35:00', '2020-02-14 23:40:00', '2020-02-16 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021305350041198939', 41, '嘟嘟', '广西柳州', '545107', '17377235562', 1, 1, 3, 157.00, NULL, '2020-02-13 05:35:00', '2020-02-13 23:30:00', '2020-02-14 23:40:00', '2020-02-16 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021305360030155993', 30, '张无忌', '广西陆川', '537700', '18844528478', 1, 1, 3, 80.00, NULL, '2020-02-13 05:36:00', '2020-02-13 23:30:00', '2020-02-14 23:40:00', '2020-02-16 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021405300028199606', 28, '张三丰', '柳州城市职业学院', '000000', '13633083200', 1, 2, 3, 62.00, NULL, '2020-02-14 05:30:00', '2020-02-18 23:35:00', '2020-02-15 23:40:00', '2020-02-17 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021405310036162335', 36, '灰娘娘', '青青草原', '000000', '18254567891', 1, 1, 3, 13.00, NULL, '2020-02-14 05:31:00', '2020-02-14 23:30:00', '2020-02-15 23:40:00', '2020-02-17 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021405320026119640', 26, '123', '广西柳州', '000000', '13357024777', 1, 2, 3, 42.00, NULL, '2020-02-14 05:32:00', '2020-02-18 23:35:00', '2020-02-15 23:40:00', '2020-02-17 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021405330035186831', 35, '芙蓉姐', '柳城职9栋519', '000000', '17888993366', 1, 1, 3, 65.82, NULL, '2020-02-14 05:33:00', '2020-02-14 23:30:00', '2020-02-15 23:40:00', '2020-02-17 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021405340043125027', 43, '王守义', '石家庄', '000000', '13737664103', 1, 2, 3, 20.00, NULL, '2020-02-14 05:34:00', '2020-02-18 23:35:00', '2020-02-15 23:40:00', '2020-02-17 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021405350018105784', 18, 'ABC客户2', '广西柳州', '000000', '18168526111', 1, 2, 3, 58.00, NULL, '2020-02-14 05:35:00', '2020-02-18 23:35:00', '2020-02-15 23:40:00', '2020-02-17 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021405360021109952', 21, 'ABC客户5', '广西柳州', '000000', '15377892222', 1, 1, 3, 60.00, NULL, '2020-02-14 05:36:00', '2020-02-14 23:30:00', '2020-02-15 23:40:00', '2020-02-17 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021405370045126625', 45, '李丽莉', '柳州城市职业学院', '000000', '13877690264', 1, 1, 3, 30.00, NULL, '2020-02-14 05:37:00', '2020-02-14 23:30:00', '2020-02-15 23:40:00', '2020-02-17 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021505300057170805', 57, '小猪佩奇', '柳州中山路8号', '000000', '18410358497', 1, 1, 3, 100.00, NULL, '2020-02-15 05:30:00', '2020-02-15 23:30:00', '2020-02-16 23:40:00', '2020-02-18 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021505310042195133', 42, '林轩', '新疆维吾尔自治区满斗村', '545597', '15151788955', 1, 2, 3, 134.00, NULL, '2020-02-15 05:31:00', '2020-02-19 23:35:00', '2020-02-16 23:40:00', '2020-02-18 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021505320047140260', 47, '憨憨', '柳州城市职业学院', '000000', '15578568273', 1, 2, 3, 23.00, NULL, '2020-02-15 05:32:00', '2020-02-19 23:35:00', '2020-02-16 23:40:00', '2020-02-18 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021505330039134268', 39, '邓一封', '北京市朝阳区', '545933', '15468951235', 1, 2, 3, 20.00, NULL, '2020-02-15 05:33:00', '2020-02-19 23:35:00', '2020-02-16 23:40:00', '2020-02-18 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021505340058149810', 58, '妮妮', '广西柳州市鱼峰区', '253343', '18775534562', 1, 2, 3, 217.00, NULL, '2020-02-15 05:34:00', '2020-02-19 23:35:00', '2020-02-16 23:40:00', '2020-02-18 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021505350060198901', 60, 'adsfdsf', '广西柳州', '689541', '18697845987', 1, 2, 3, 54.00, NULL, '2020-02-15 05:35:00', '2020-02-19 23:35:00', '2020-02-16 23:40:00', '2020-02-18 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021505360032154470', 32, '岑辉山', '柳州城市职业学院', '047300', '13087726397', 1, 2, 3, 30.00, NULL, '2020-02-15 05:36:00', '2020-02-19 23:35:00', '2020-02-16 23:40:00', '2020-02-18 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021605300038194223', 38, '勇哥', '柳州城市职业学院', '000000', '18648841344', 1, 1, 3, 38.00, NULL, '2020-02-16 05:30:00', '2020-02-16 23:30:00', '2020-02-17 23:40:00', '2020-02-19 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021605310031157472', 31, '阿尔托利亚·潘德拉贡', '大不列颠帝国', '666666', '14795309399', 1, 2, 3, 189.00, NULL, '2020-02-16 05:31:00', '2020-02-20 23:35:00', '2020-02-17 23:40:00', '2020-02-19 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021605320051189065', 51, '易燃', '北京市昌平区回龙观镇北清路', '000000', '18520001128', 1, 2, 3, 7.91, NULL, '2020-02-16 05:32:00', '2020-02-20 23:35:00', '2020-02-17 23:40:00', '2020-02-19 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021605330021154756', 21, 'ABC客户5', '广西柳州', '000000', '15377892222', 1, 1, 3, 178.00, NULL, '2020-02-16 05:33:00', '2020-02-16 23:30:00', '2020-02-17 23:40:00', '2020-02-19 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021605340019197773', 19, 'ABC客户3', '广西柳州', '000000', '18100800709', 1, 1, 3, 431.00, NULL, '2020-02-16 05:34:00', '2020-02-16 23:30:00', '2020-02-17 23:40:00', '2020-02-19 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021605350013106273', 13, '徐凤年', '广西柳州', '000000', '17703771999', 1, 1, 3, 91.50, NULL, '2020-02-16 05:35:00', '2020-02-16 23:30:00', '2020-02-17 23:40:00', '2020-02-19 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021605360058157481', 58, '妮妮', '广西柳州市鱼峰区', '253343', '18775534562', 1, 1, 3, 142.00, NULL, '2020-02-16 05:36:00', '2020-02-16 23:30:00', '2020-02-17 23:40:00', '2020-02-19 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021605370012134601', 12, '至尊宝', '桂林市大河小区', '151431', '13633083252', 1, 1, 3, 16.02, NULL, '2020-02-16 05:37:00', '2020-02-16 23:30:00', '2020-02-17 23:40:00', '2020-02-19 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021705300027112788', 27, '12', '广西柳州', '000000', '13357024777', 1, 2, 3, 24.00, NULL, '2020-02-17 05:30:00', '2020-02-21 23:35:00', '2020-02-18 23:40:00', '2020-02-20 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021705310057136253', 57, '小猪佩奇', '柳州中山路8号', '000000', '18410358497', 1, 1, 3, 39.80, NULL, '2020-02-17 05:31:00', '2020-02-17 23:30:01', '2020-02-18 23:40:00', '2020-02-20 23:45:00', 4);
INSERT INTO `product_order` VALUES ('202002170532009159782', 9, '白安善', '柳州市抠脚村', '547000', '13647789517', 1, 1, 3, 48.00, NULL, '2020-02-17 05:32:00', '2020-02-17 23:30:01', '2020-02-18 23:40:00', '2020-02-20 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021705330031142817', 31, '阿尔托利亚·潘德拉贡', '大不列颠帝国', '666666', '14795309399', 1, 2, 3, 240.80, NULL, '2020-02-17 05:33:00', '2020-02-21 23:35:00', '2020-02-18 23:40:00', '2020-02-20 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021705340047172868', 47, '憨憨', '柳州城市职业学院', '000000', '15578568273', 1, 2, 3, 42.80, NULL, '2020-02-17 05:34:00', '2020-02-21 23:35:00', '2020-02-18 23:40:00', '2020-02-20 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021705350065123560', 65, '张11q', '柳州q', '545005', '17376108213', 1, 1, 3, 118.00, NULL, '2020-02-17 05:35:00', '2020-02-17 23:30:01', '2020-02-18 23:40:00', '2020-02-20 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021805300059130733', 59, '嘻嘻', '柳州市', '231433', '18216463254', 1, 2, 3, 24.00, NULL, '2020-02-18 05:30:00', '2020-02-22 23:35:00', '2020-02-19 23:40:00', '2020-02-21 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021805310030126862', 30, '张无忌', '广西陆川', '537700', '18844528478', 1, 2, 3, 133.00, NULL, '2020-02-18 05:31:00', '2020-02-22 23:35:00', '2020-02-19 23:40:00', '2020-02-21 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021805320031199561', 31, '阿尔托利亚·潘德拉贡', '大不列颠帝国', '666666', '14795309399', 1, 1, 3, 145.30, NULL, '2020-02-18 05:32:00', '2020-02-18 23:30:00', '2020-02-19 23:40:00', '2020-02-21 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021805330031119574', 31, '阿尔托利亚·潘德拉贡', '大不列颠帝国', '666666', '14795309399', 1, 1, 3, 28.00, NULL, '2020-02-18 05:33:00', '2020-02-18 23:30:00', '2020-02-19 23:40:00', '2020-02-21 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021805340040103616', 40, '李小', '柳州城市职业技术学院', '000000', '13640516155', 1, 1, 3, 30.00, NULL, '2020-02-18 05:34:00', '2020-02-18 23:30:00', '2020-02-19 23:40:00', '2020-02-21 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021805350045113088', 45, '李丽莉', '柳州城市职业学院', '000000', '13877690264', 1, 2, 3, 57.30, NULL, '2020-02-18 05:35:00', '2020-02-22 23:35:00', '2020-02-19 23:40:00', '2020-02-21 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021805360058108546', 58, '妮妮', '广西柳州市鱼峰区', '253343', '18775534562', 1, 2, 3, 326.00, NULL, '2020-02-18 05:36:00', '2020-02-22 23:35:00', '2020-02-19 23:40:00', '2020-02-21 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021805370058171808', 58, '妮妮', '广西柳州市鱼峰区', '253343', '18775534562', 1, 2, 3, 27.00, NULL, '2020-02-18 05:37:00', '2020-02-22 23:35:00', '2020-02-19 23:40:00', '2020-02-21 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021905300037124444', 37, '小小', '柳州市官塘大道柳州城市职业学院', '000000', '17677253547', 1, 2, 3, 41.80, NULL, '2020-02-19 05:30:00', '2020-02-23 23:35:00', '2020-02-20 23:40:00', '2020-02-22 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021905310039154928', 39, '邓一封', '北京市朝阳区', '545933', '15468951235', 1, 1, 3, 19.80, NULL, '2020-02-19 05:31:00', '2020-02-19 23:30:00', '2020-02-20 23:40:00', '2020-02-22 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021905320028129191', 28, '张三丰', '柳州城市职业学院', '000000', '13633083200', 1, 1, 3, 447.00, NULL, '2020-02-19 05:32:00', '2020-02-19 23:30:00', '2020-02-20 23:40:00', '2020-02-22 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021905330017119020', 17, 'ABC客户1', '广西柳州', '000000', '15377892222', 1, 2, 3, 12.00, NULL, '2020-02-19 05:33:00', '2020-02-23 23:35:00', '2020-02-20 23:40:00', '2020-02-22 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021905340030132982', 30, '张无忌', '广西陆川', '537700', '18844528478', 1, 1, 3, 1.00, NULL, '2020-02-19 05:34:00', '2020-02-19 23:30:00', '2020-02-20 23:40:00', '2020-02-22 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021905350021134527', 21, 'ABC客户5', '广西柳州', '000000', '15377892222', 1, 1, 3, 1055.00, NULL, '2020-02-19 05:35:00', '2020-02-19 23:30:00', '2020-02-20 23:40:00', '2020-02-22 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021905360053119866', 53, '马化腾', '柳州市恒大小区', '545000', '15678078888', 1, 2, 3, 22.00, NULL, '2020-02-19 05:36:00', '2020-02-23 23:35:00', '2020-02-20 23:40:00', '2020-02-22 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021905370055177988', 55, '位试试', '广西柳州', '537519', '18894622108', 1, 1, 3, 20.00, NULL, '2020-02-19 05:37:00', '2020-02-19 23:30:00', '2020-02-20 23:40:00', '2020-02-22 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021905380043102489', 43, '王守义', '石家庄', '000000', '13737664103', 1, 1, 3, 40.00, NULL, '2020-02-19 05:38:00', '2020-02-19 23:30:00', '2020-02-20 23:40:00', '2020-02-22 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021905390060149076', 60, 'adsfdsf', '广西柳州', '689541', '18697845987', 1, 2, 3, 16.00, NULL, '2020-02-19 05:39:00', '2020-02-23 23:35:00', '2020-02-20 23:40:00', '2020-02-22 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020021905400056134471', 56, 'nini', '广西柳州', '537114', '18378556608', 1, 2, 3, 463.30, NULL, '2020-02-19 05:40:00', '2020-02-23 23:35:00', '2020-02-20 23:40:00', '2020-02-22 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022005300029175374', 29, '你的名字', '柳州城市职业学院7栋', '545003', '18775207581', 1, 1, 3, 110.00, NULL, '2020-02-20 05:30:00', '2020-02-20 23:30:00', '2020-02-21 23:40:00', '2020-02-23 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022005310019181998', 19, 'ABC客户3', '广西柳州', '000000', '18100800709', 1, 1, 3, 57.00, NULL, '2020-02-20 05:31:00', '2020-02-20 23:30:00', '2020-02-21 23:40:00', '2020-02-23 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022005320056165011', 56, 'nini', '广西柳州', '537114', '18378556608', 1, 2, 3, 56.00, NULL, '2020-02-20 05:32:00', '2020-02-24 23:35:00', '2020-02-21 23:40:00', '2020-02-23 23:45:00', 4);
INSERT INTO `product_order` VALUES ('202002200533001160100', 1, '陈家龙', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 10.00, NULL, '2020-02-20 05:33:00', '2020-02-20 23:30:00', '2020-02-21 23:40:00', '2020-02-23 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022005340045155844', 45, '李丽莉', '柳州城市职业学院', '000000', '13877690264', 1, 1, 3, 52.00, NULL, '2020-02-20 05:34:00', '2020-02-20 23:30:00', '2020-02-21 23:40:00', '2020-02-23 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022005350046182384', 46, '邓一封', '北京市朝阳区', '548766', '15648544696', 1, 2, 3, 12.00, NULL, '2020-02-20 05:35:00', '2020-02-24 23:35:00', '2020-02-21 23:40:00', '2020-02-23 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022005360042110024', 42, '林轩', '新疆维吾尔自治区满斗村', '545597', '15151788955', 1, 2, 3, 26.00, NULL, '2020-02-20 05:36:00', '2020-02-24 23:35:00', '2020-02-21 23:40:00', '2020-02-23 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022005370040158840', 40, '李小', '柳州城市职业技术学院', '000000', '13640516155', 1, 2, 3, 29.00, NULL, '2020-02-20 05:37:00', '2020-02-24 23:35:00', '2020-02-21 23:40:00', '2020-02-23 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022105300030139479', 30, '张无忌', '广西陆川', '537700', '18844528478', 1, 1, 3, 42.00, NULL, '2020-02-21 05:30:00', '2020-02-21 23:30:00', '2020-02-22 23:40:00', '2020-02-24 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022105310047190717', 47, '憨憨', '柳州城市职业学院', '000000', '15578568273', 0, 2, 3, NULL, NULL, '2020-02-21 05:31:00', NULL, '2020-02-22 23:40:00', '2020-02-24 23:45:00', 3);
INSERT INTO `product_order` VALUES ('2020022105320043158595', 43, '王守义', '石家庄', '000000', '13737664103', 1, 1, 3, 75.00, NULL, '2020-02-21 05:32:00', '2020-02-21 23:30:00', '2020-02-22 23:40:00', '2020-02-24 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022105330044161835', 44, 'ad', '广西柳州', '000000', '13677533336', 1, 1, 3, 200.00, NULL, '2020-02-21 05:33:00', '2020-02-21 23:30:00', '2020-02-22 23:40:00', '2020-02-24 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022105340026194573', 26, '123', '广西柳州', '000000', '13357024777', 0, 2, 3, NULL, NULL, '2020-02-21 05:34:00', NULL, '2020-02-22 23:40:00', '2020-02-24 23:45:00', 3);
INSERT INTO `product_order` VALUES ('2020022105350023113243', 23, 'abc客户11', '广西柳州', '000000', '13357024777', 0, 2, 3, NULL, NULL, '2020-02-21 05:35:00', NULL, '2020-02-22 23:40:00', '2020-02-24 23:45:00', 3);
INSERT INTO `product_order` VALUES ('2020022105360041142889', 41, '嘟嘟', '广西柳州', '545107', '17377235562', 1, 1, 3, 24.00, NULL, '2020-02-21 05:36:00', '2020-02-21 23:30:00', '2020-02-22 23:40:00', '2020-02-24 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022105370032169241', 32, '岑辉山', '柳州城市职业学院', '047300', '13087726397', 0, 2, 3, NULL, NULL, '2020-02-21 05:37:00', NULL, '2020-02-22 23:40:00', '2020-02-24 23:45:00', 3);
INSERT INTO `product_order` VALUES ('2020022205300064157841', 64, '小白', '很多事卡拉', '748520', '13878474643', 1, 2, 3, NULL, NULL, '2020-02-22 05:30:00', NULL, '2020-02-23 23:40:00', '2020-02-26 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022205310047136491', 47, '憨憨', '柳州城市职业学院', '000000', '15578568273', 1, 2, 3, NULL, NULL, '2020-02-22 05:31:00', NULL, '2020-02-23 23:40:00', '2020-02-26 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022205320022100264', 22, 'ABC客户6', '广西柳州', '000000', '15377892222', 1, 1, 3, 3.00, NULL, '2020-02-22 05:32:00', '2020-02-22 23:30:00', '2020-02-23 23:40:00', '2020-02-26 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022205330046136779', 46, '邓一封', '北京市朝阳区', '548766', '15648544696', 1, 1, 3, 25.00, NULL, '2020-02-22 05:33:00', '2020-02-22 23:30:00', '2020-02-23 23:40:00', '2020-02-26 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022205340055154114', 55, '位试试', '广西柳州', '537519', '18894622108', 1, 2, 3, NULL, NULL, '2020-02-22 05:34:00', NULL, '2020-02-23 23:40:00', '2020-02-26 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022205350016158819', 16, '紫霞', '柳州橙汁园', '568741', '18083815777', 1, 1, 3, 5.00, NULL, '2020-02-22 05:35:00', '2020-02-22 23:30:00', '2020-02-23 23:40:00', '2020-02-26 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022205360038111483', 38, '勇哥', '柳州城市职业学院', '000000', '18648841344', 1, 2, 3, NULL, NULL, '2020-02-22 05:36:00', NULL, '2020-02-23 23:40:00', '2020-02-26 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022205370056116674', 56, 'nini', '广西柳州', '537114', '18378556608', 1, 1, 3, 56.20, NULL, '2020-02-22 05:37:00', '2020-02-22 23:30:00', '2020-02-23 23:40:00', '2020-02-26 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022205380058152093', 58, '妮妮', '广西柳州市鱼峰区', '253343', '18775534562', 1, 2, 3, NULL, NULL, '2020-02-22 05:38:00', NULL, '2020-02-23 23:40:00', '2020-02-26 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022305300055132880', 55, '位试试', '广西柳州', '537519', '18894622108', 1, 1, 3, 12.10, NULL, '2020-02-23 05:30:00', '2020-02-23 23:30:00', '2020-02-24 23:40:00', '2020-02-27 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020022305310057158651', 57, '小猪佩奇', '柳州中山路8号', '000000', '18410358497', 1, 2, 3, NULL, NULL, '2020-02-23 05:31:00', NULL, '2020-02-24 23:40:00', '2020-02-27 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020022305320027169746', 27, '12', '广西柳州', '000000', '13357024777', 1, 1, 3, 5.00, NULL, '2020-02-23 05:32:00', '2020-02-23 23:30:00', '2020-02-24 23:40:00', '2020-02-27 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020022305330052147012', 52, '小二', '外太空', '545000', '17777777777', 1, 1, 3, 32.00, NULL, '2020-02-23 05:33:00', '2020-02-23 23:30:00', '2020-02-24 23:40:00', '2020-02-27 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202002230534009128215', 9, '白安善', '柳州市抠脚村', '547000', '13647789517', 1, 1, 3, 19.90, NULL, '2020-02-23 05:34:00', '2020-02-23 23:30:00', '2020-02-24 23:40:00', '2020-02-27 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020022305350037183885', 37, '小小', '柳州市官塘大道柳州城市职业学院', '000000', '17677253547', 1, 2, 3, NULL, NULL, '2020-02-23 05:35:00', NULL, '2020-02-24 23:40:00', '2020-02-27 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020022405300026116007', 26, '123', '广西柳州', '000000', '13357024777', 1, 2, 3, NULL, NULL, '2020-02-24 05:30:00', NULL, '2020-02-25 23:40:00', '2020-02-28 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020022405310062193434', 62, '昭君', '广西贵港市港南区', '537100', '15253524689', 1, 2, 3, NULL, NULL, '2020-02-24 05:31:00', NULL, '2020-02-25 23:40:00', '2020-02-28 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020022405320059120452', 59, '嘻嘻', '柳州市', '231433', '18216463254', 1, 2, 3, NULL, NULL, '2020-02-24 05:32:00', NULL, '2020-02-25 23:40:00', '2020-02-28 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020022405330032162858', 32, '岑辉山', '柳州城市职业学院', '047300', '13087726397', 1, 1, 3, 20.00, NULL, '2020-02-24 05:33:00', '2020-02-24 23:30:00', '2020-02-25 23:40:00', '2020-02-28 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020022405340013161064', 13, '徐凤年', '广西柳州', '000000', '17703771999', 1, 2, 3, NULL, NULL, '2020-02-24 05:34:00', NULL, '2020-02-25 23:40:00', '2020-02-28 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020022405350031164246', 31, '阿尔托利亚·潘德拉贡', '大不列颠帝国', '666666', '14795309399', 1, 1, 3, 280.00, NULL, '2020-02-24 05:35:00', '2020-02-24 23:30:00', '2020-02-25 23:40:00', '2020-02-28 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020022405360065172931', 65, '张11q', '柳州q', '545005', '17376108213', 1, 1, 3, 74.00, NULL, '2020-02-24 05:36:00', '2020-02-24 23:30:00', '2020-02-25 23:40:00', '2020-02-28 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020022405370023138416', 23, 'abc客户11', '广西柳州', '000000', '13357024777', 1, 2, 3, NULL, NULL, '2020-02-24 05:37:00', NULL, '2020-02-25 23:40:00', '2020-02-28 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020022505300037126166', 37, '小小', '柳州市官塘大道柳州城市职业学院', '000000', '17677253547', 1, 1, 3, 52.00, NULL, '2020-02-25 05:30:00', '2020-02-25 23:30:00', '2020-02-26 23:40:00', '2020-02-29 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020022505310042143725', 42, '林轩', '新疆维吾尔自治区满斗村', '545597', '15151788955', 1, 1, 3, 42.20, NULL, '2020-02-25 05:31:00', '2020-02-25 23:30:00', '2020-02-26 23:40:00', '2020-02-29 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020022505320045165053', 45, '李丽莉', '柳州城市职业学院', '000000', '13877690264', 1, 2, 3, NULL, NULL, '2020-02-25 05:32:00', NULL, '2020-02-26 23:40:00', '2020-02-29 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020022505330034157809', 34, '勇哥', '柳州城市职业学院', '202020', '18078764223', 1, 1, 3, 13.00, NULL, '2020-02-25 05:33:00', '2020-02-25 23:30:00', '2020-02-26 23:40:00', '2020-02-29 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020022505340055173673', 55, '位试试', '广西柳州', '537519', '18894622108', 1, 1, 3, 46.00, NULL, '2020-02-25 05:34:00', '2020-02-25 23:30:00', '2020-02-26 23:40:00', '2020-02-29 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020022505350062189998', 62, '昭君', '广西贵港市港南区', '537100', '15253524689', 1, 1, 3, 12.00, NULL, '2020-02-25 05:35:00', '2020-02-25 23:30:00', '2020-02-26 23:40:00', '2020-02-29 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020022505360016192375', 16, '紫霞', '柳州橙汁园', '568741', '18083815777', 1, 2, 3, NULL, NULL, '2020-02-25 05:36:00', NULL, '2020-02-26 23:40:00', '2020-02-29 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022505370049187857', 49, '白云', '柳州城市职业学院', '537400', '18277589582', 1, 1, 3, 15.01, NULL, '2020-02-25 05:37:00', '2020-02-25 23:30:00', '2020-02-26 23:40:00', '2020-02-29 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022505380040144440', 40, '李小', '柳州城市职业技术学院', '000000', '13640516155', 1, 1, 3, 26.00, NULL, '2020-02-25 05:38:00', '2020-02-25 23:30:00', '2020-02-26 23:40:00', '2020-02-29 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022505390019115606', 19, 'ABC客户3', '广西柳州', '000000', '18100800709', 1, 1, 3, 90.00, NULL, '2020-02-25 05:39:00', '2020-02-25 23:30:00', '2020-02-26 23:40:00', '2020-02-29 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022505400056161098', 56, 'nini', '广西柳州', '537114', '18378556608', 1, 1, 3, 10.00, NULL, '2020-02-25 05:40:00', '2020-02-25 23:30:00', '2020-02-26 23:40:00', '2020-02-29 23:45:00', 4);
INSERT INTO `product_order` VALUES ('202002252222429129556', 9, '白安善', '柳州市抠脚村', '547000', '13647789517', 1, 1, 3, 23.93, NULL, '2020-02-25 22:22:42', '2020-02-25 22:45:52', '2020-02-26 23:40:00', '2020-02-29 23:45:00', 4);
INSERT INTO `product_order` VALUES ('202002260454139181462', 9, '白安善', '柳州市抠脚村', '547000', '13647789517', 1, 2, 3, NULL, NULL, '2020-02-26 04:54:13', '2020-03-01 23:45:01', '2020-02-27 23:40:03', '2020-03-01 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020022605300027106577', 27, '12', '广西柳州', '000000', '13357024777', 1, 2, 3, NULL, NULL, '2020-02-26 05:30:00', '2020-03-01 23:45:01', '2020-02-27 23:40:03', '2020-03-01 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020022605310049140477', 49, '白云', '柳州城市职业学院', '537400', '18277589582', 1, 2, 3, NULL, NULL, '2020-02-26 05:31:00', '2020-03-01 23:45:00', '2020-02-27 23:40:03', '2020-03-01 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022605320062187946', 62, '昭君', '广西贵港市港南区', '537100', '15253524689', 1, 1, 3, 214.00, NULL, '2020-02-26 05:32:00', '2020-02-26 23:30:00', '2020-02-27 23:40:03', '2020-03-01 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022605330061126071', 61, '你好', '柳州城市职业学院', '000000', '18756987552', 1, 2, 3, NULL, NULL, '2020-02-26 05:33:00', '2020-03-01 23:45:00', '2020-02-27 23:40:03', '2020-03-01 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022605340053101605', 53, '马化腾', '柳州市恒大小区', '545000', '15678078888', 1, 1, 3, 106.00, NULL, '2020-02-26 05:34:00', '2020-02-26 23:30:00', '2020-02-27 23:40:03', '2020-03-01 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022605350047146456', 47, '憨憨', '柳州城市职业学院', '000000', '15578568273', 1, 1, 3, 141.90, NULL, '2020-02-26 05:35:00', '2020-02-26 23:30:00', '2020-02-27 23:40:03', '2020-03-01 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022605360034123408', 34, '勇哥', '柳州城市职业学院', '202020', '18078764223', 1, 1, 3, 457.80, NULL, '2020-02-26 05:36:00', '2020-02-26 23:30:00', '2020-02-27 23:40:03', '2020-03-01 23:45:00', 4);
INSERT INTO `product_order` VALUES ('202002260537011153517', 1, '陈家龙', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 253.00, NULL, '2020-02-26 05:37:01', '2020-02-26 23:30:00', '2020-02-27 23:40:03', '2020-03-01 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022605380117104807', 17, 'ABC客户1', '广西柳州', '000000', '15377892222', 1, 2, 3, NULL, NULL, '2020-02-26 05:38:01', '2020-03-01 23:45:00', '2020-02-27 23:40:03', '2020-03-01 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022813170143180147', 43, '王守义', '石家庄', '000000', '13737664103', 1, 1, 3, 60.00, NULL, '2020-02-27 13:17:01', '2020-02-28 23:30:02', '2020-02-28 23:40:01', '2020-03-02 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202002281317211138210', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, NULL, NULL, '2020-02-27 13:17:21', '2020-03-02 23:45:03', '2020-02-28 23:40:01', '2020-03-02 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020022813174157175881', 57, '小猪佩奇', '柳州中山路8号', '000000', '18410358497', 1, 1, 3, 160.00, NULL, '2020-02-27 13:17:41', '2020-02-28 23:30:01', '2020-02-28 23:40:01', '2020-03-02 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202002281318011105918', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, NULL, NULL, '2020-02-27 13:18:01', '2020-03-02 23:45:03', '2020-02-28 23:40:01', '2020-03-02 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020022813182214143931', 14, '王大发', '北京市顺义区', '000000', '15388889881', 1, 1, 3, 331.80, NULL, '2020-02-27 13:18:22', '2020-02-28 23:30:01', '2020-02-28 23:40:01', '2020-03-02 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020022813250113100664', 13, '徐凤年', '广西柳州', '000000', '17703771999', 1, 1, 3, 44.20, NULL, '2020-02-28 13:25:01', '2020-02-28 23:30:01', '2020-02-29 23:40:00', '2020-03-03 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020022813251147178693', 47, '憨憨', '柳州城市职业学院', '000000', '15578568273', 1, 1, 3, 68.10, NULL, '2020-02-28 13:25:11', '2020-02-28 23:30:01', '2020-02-29 23:40:00', '2020-03-03 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020022813252254174200', 54, 'buyaolian', '北极半球', '530401', '18645678564', 1, 2, 3, NULL, NULL, '2020-02-28 13:25:22', '2020-03-03 23:45:01', '2020-02-29 23:40:00', '2020-03-03 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020022813253237156019', 37, '小小', '柳州市官塘大道柳州城市职业学院', '000000', '17677253547', 1, 1, 3, 10.00, NULL, '2020-02-28 13:25:32', '2020-02-28 23:30:01', '2020-02-29 23:40:00', '2020-03-03 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020022813254221163474', 21, 'ABC客户5', '广西柳州', '000000', '15377892222', 1, 1, 3, 68.00, NULL, '2020-02-28 13:25:42', '2020-02-28 23:30:01', '2020-02-29 23:40:00', '2020-03-03 23:45:01', 4);
INSERT INTO `product_order` VALUES ('202002281325531156615', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, NULL, NULL, '2020-02-28 13:25:53', '2020-03-03 23:45:00', '2020-02-29 23:40:00', '2020-03-03 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022813260350108121', 50, '周杰伦', '柳州城市职业学院', '545005', '13633088047', 1, 2, 3, NULL, NULL, '2020-02-28 13:26:03', '2020-03-03 23:45:00', '2020-02-29 23:40:00', '2020-03-03 23:45:00', 4);
INSERT INTO `product_order` VALUES ('202002281326131144368', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 33.00, NULL, '2020-02-28 13:26:13', '2020-02-28 23:30:01', '2020-02-29 23:40:00', '2020-03-03 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022813262422121200', 22, 'ABC客户6', '广西柳州', '000000', '15377892222', 1, 2, 3, NULL, NULL, '2020-02-28 13:26:24', '2020-03-03 23:45:00', '2020-02-29 23:40:00', '2020-03-03 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020022905300132108616', 32, '岑辉山', '柳州城市职业学院', '047300', '13087726397', 1, 1, 3, 41.76, NULL, '2020-02-29 05:30:01', '2020-02-29 23:30:03', '2020-03-01 23:40:01', '2020-03-04 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020022905310129153815', 29, '你的名字', '柳州城市职业学院7栋', '545003', '18775207581', 1, 1, 3, 200.00, NULL, '2020-02-29 05:31:01', '2020-02-29 23:30:03', '2020-03-01 23:40:01', '2020-03-04 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020022905320133122040', 33, '阿沙姐姐丶', '西伯利亚', '547200', '18174918911', 1, 1, 3, 42.00, NULL, '2020-02-29 05:32:01', '2020-02-29 23:30:03', '2020-03-01 23:40:01', '2020-03-04 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020022905330121197619', 21, 'ABC客户5', '广西柳州', '000000', '15377892222', 1, 1, 3, 278.88, NULL, '2020-02-29 05:33:01', '2020-02-29 23:30:02', '2020-03-01 23:40:01', '2020-03-04 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020022905340160194026', 60, 'adsfdsf', '广西柳州', '689541', '18697845987', 1, 2, 3, NULL, NULL, '2020-02-29 05:34:01', '2020-03-04 23:45:03', '2020-03-01 23:40:01', '2020-03-04 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020022905350151146478', 51, '易燃', '北京市昌平区回龙观镇北清路', '000000', '18520001128', 1, 2, 3, NULL, NULL, '2020-02-29 05:35:01', '2020-03-04 23:45:03', '2020-03-01 23:40:01', '2020-03-04 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202002290536011179846', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 36.00, NULL, '2020-02-29 05:36:01', '2020-02-29 23:30:02', '2020-03-01 23:40:01', '2020-03-04 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020022905370115113057', 15, '客户3', '广东省广州市', '000000', '15388889881', 1, 2, 3, NULL, NULL, '2020-02-29 05:37:01', '2020-03-04 23:45:03', '2020-03-01 23:40:01', '2020-03-04 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020022905380122187911', 22, 'ABC客户6', '广西柳州', '000000', '15377892222', 1, 1, 3, 1.00, NULL, '2020-02-29 05:38:01', '2020-02-29 23:30:02', '2020-03-01 23:40:01', '2020-03-04 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202002290539011134258', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, NULL, NULL, '2020-02-29 05:39:01', '2020-03-04 23:45:03', '2020-03-01 23:40:01', '2020-03-04 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020022905400164102691', 64, '小白', '很多事卡拉', '748520', '13878474643', 1, 2, 3, NULL, NULL, '2020-02-29 05:40:01', '2020-03-04 23:45:03', '2020-03-01 23:40:01', '2020-03-04 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030105300141102877', 41, '嘟嘟', '广西柳州', '545107', '17377235562', 1, 1, 3, 24.00, NULL, '2020-03-01 05:30:01', '2020-03-01 23:30:01', '2020-03-02 23:40:03', '2020-03-05 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030105310165156079', 65, '张11q', '柳州q', '545005', '17376108213', 1, 1, 3, 30.00, NULL, '2020-03-01 05:31:01', '2020-03-01 23:30:01', '2020-03-02 23:40:03', '2020-03-05 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030105330162161306', 62, '昭君', '广西贵港市港南区', '537100', '15253524689', 1, 1, 3, 11.00, NULL, '2020-03-01 05:33:01', '2020-03-01 23:30:01', '2020-03-02 23:40:03', '2020-03-05 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030105340114124947', 14, '王大发', '北京市顺义区', '000000', '15388889881', 1, 2, 3, NULL, NULL, '2020-03-01 05:34:01', '2020-03-05 23:45:03', '2020-03-02 23:40:03', '2020-03-05 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030105350128128201', 28, '张三丰', '柳州城市职业学院', '000000', '13633083200', 1, 2, 3, NULL, NULL, '2020-03-01 05:35:01', '2020-03-05 23:45:03', '2020-03-02 23:40:03', '2020-03-05 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030105360128119211', 28, '张三丰', '柳州城市职业学院', '000000', '13633083200', 1, 2, 3, NULL, NULL, '2020-03-01 05:36:01', '2020-03-05 23:45:03', '2020-03-02 23:40:03', '2020-03-05 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202003010537011198097', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, NULL, NULL, '2020-03-01 05:37:01', '2020-03-05 23:45:03', '2020-03-02 23:40:03', '2020-03-05 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030105380132181526', 32, '岑辉山', '柳州城市职业学院', '047300', '13087726397', 1, 1, 3, 85.80, NULL, '2020-03-01 05:38:01', '2020-03-01 23:30:01', '2020-03-02 23:40:03', '2020-03-05 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030116121567138642', 67, '从水水水水', 'cxzczxc', '231456', '13245678412', 1, 1, 3, 20.00, NULL, '2020-03-01 16:12:15', '2020-03-01 16:12:23', '2020-03-02 23:40:03', '2020-03-05 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202003012047061174205', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 28.00, NULL, '2020-03-01 20:47:06', '2020-03-01 20:47:18', '2020-03-02 23:40:03', '2020-03-05 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202003012047431118719', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 699.00, NULL, '2020-03-01 20:47:43', '2020-03-01 20:47:56', '2020-03-02 23:40:03', '2020-03-05 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030205300119100771', 19, 'ABC客户3', '广西柳州', '000000', '18100800709', 1, 1, 3, 271.00, NULL, '2020-03-02 05:30:01', '2020-03-02 23:30:03', '2020-03-03 23:40:00', '2020-03-06 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030205310129145480', 29, '你的名字', '柳州城市职业学院7栋', '545003', '18775207581', 1, 1, 3, 80.00, NULL, '2020-03-02 05:31:01', '2020-03-02 23:30:03', '2020-03-03 23:40:00', '2020-03-06 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030205320121112717', 21, 'ABC客户5', '广西柳州', '000000', '15377892222', 1, 2, 3, NULL, NULL, '2020-03-02 05:32:01', '2020-03-06 23:45:03', '2020-03-03 23:40:00', '2020-03-06 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202003020533011149817', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, NULL, NULL, '2020-03-02 05:33:01', '2020-03-06 23:45:03', '2020-03-03 23:40:00', '2020-03-06 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202003020534011189955', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 19.00, NULL, '2020-03-02 05:34:01', '2020-03-02 23:30:03', '2020-03-03 23:40:00', '2020-03-06 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202003020535011105699', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 48.30, NULL, '2020-03-02 05:35:01', '2020-03-02 23:30:03', '2020-03-03 23:40:00', '2020-03-06 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202003020536011167049', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, NULL, NULL, '2020-03-02 05:36:01', '2020-03-06 23:45:03', '2020-03-03 23:40:00', '2020-03-06 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030305300319126170', 19, 'ABC客户3', '广西柳州', '000000', '18100800709', 1, 2, 3, 86.00, NULL, '2020-03-03 05:30:03', '2020-03-07 23:45:02', '2020-03-04 23:40:03', '2020-03-07 23:45:02', 4);
INSERT INTO `product_order` VALUES ('2020030305310334164479', 34, '勇哥', '柳州城市职业学院', '202020', '18078764223', 1, 2, 3, 145.00, NULL, '2020-03-03 05:31:03', '2020-03-07 23:45:02', '2020-03-04 23:40:03', '2020-03-07 23:45:02', 4);
INSERT INTO `product_order` VALUES ('2020030305320364125245', 64, '小白', '很多事卡拉', '748520', '13878474643', 1, 2, 3, 58.80, NULL, '2020-03-03 05:32:03', '2020-03-07 23:45:02', '2020-03-04 23:40:03', '2020-03-07 23:45:02', 4);
INSERT INTO `product_order` VALUES ('2020030305330341144747', 41, '嘟嘟', '广西柳州', '545107', '17377235562', 1, 1, 3, 10.00, NULL, '2020-03-03 05:33:03', '2020-03-03 23:30:00', '2020-03-04 23:40:03', '2020-03-07 23:45:02', 4);
INSERT INTO `product_order` VALUES ('2020030305350323144478', 23, 'abc客户11', '广西柳州', '000000', '13357024777', 1, 1, 3, 14.00, NULL, '2020-03-03 05:35:03', '2020-03-03 23:30:00', '2020-03-04 23:40:03', '2020-03-07 23:45:02', 4);
INSERT INTO `product_order` VALUES ('2020030305360316121542', 16, '紫霞', '柳州橙汁园', '568741', '18083815777', 1, 2, 3, 19.80, NULL, '2020-03-03 05:36:03', '2020-03-07 23:45:02', '2020-03-04 23:40:03', '2020-03-07 23:45:02', 4);
INSERT INTO `product_order` VALUES ('2020030305370314198753', 14, '王大发', '北京市顺义区', '000000', '15388889881', 1, 1, 3, 11.90, NULL, '2020-03-03 05:37:03', '2020-03-03 23:30:00', '2020-03-04 23:40:03', '2020-03-07 23:45:02', 4);
INSERT INTO `product_order` VALUES ('2020030305380362180575', 62, '昭君', '广西贵港市港南区', '537100', '15253524689', 1, 2, 3, 30.00, NULL, '2020-03-03 05:38:03', '2020-03-07 23:45:02', '2020-03-04 23:40:03', '2020-03-07 23:45:02', 4);
INSERT INTO `product_order` VALUES ('2020030305390343156585', 43, '王守义', '石家庄', '000000', '13737664103', 1, 2, 3, 543.00, NULL, '2020-03-03 05:39:03', '2020-03-07 23:45:02', '2020-03-04 23:40:03', '2020-03-07 23:45:02', 4);
INSERT INTO `product_order` VALUES ('202003030540031165336', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 14.60, NULL, '2020-03-03 05:40:03', '2020-03-07 23:45:02', '2020-03-04 23:40:03', '2020-03-07 23:45:02', 4);
INSERT INTO `product_order` VALUES ('202003030541031177816', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 42.00, NULL, '2020-03-03 05:41:03', '2020-03-07 23:45:02', '2020-03-04 23:40:03', '2020-03-07 23:45:02', 4);
INSERT INTO `product_order` VALUES ('202003030542031105100', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 134.68, NULL, '2020-03-03 05:42:03', '2020-03-07 23:45:02', '2020-03-04 23:40:03', '2020-03-07 23:45:02', 4);
INSERT INTO `product_order` VALUES ('202003030543031156903', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 146.00, NULL, '2020-03-03 05:43:03', '2020-03-03 21:57:44', '2020-03-04 23:40:03', '2020-03-07 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020030314280468105208', 68, '小明', '地王21楼', '537022', '13222222222', 1, 2, 3, 89.99, NULL, '2020-03-03 14:28:04', '2020-03-07 23:45:01', '2020-03-04 23:40:03', '2020-03-07 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020030314293068189632', 68, '小明', '地王21楼', '537022', '13222222222', 1, 1, 3, 139.00, NULL, '2020-03-03 14:29:30', '2020-03-03 14:30:06', '2020-03-04 23:40:03', '2020-03-06 17:26:19', 4);
INSERT INTO `product_order` VALUES ('2020030405300159118299', 59, '嘻嘻', '柳州市', '231433', '18216463254', 1, 1, 3, 34.00, NULL, '2020-03-04 05:30:01', '2020-03-04 23:30:03', '2020-03-05 23:40:03', '2020-03-08 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030405310156125959', 56, 'nini', '广西柳州', '537114', '18378556608', 1, 2, 3, 28.00, NULL, '2020-03-04 05:31:01', '2020-03-08 23:45:03', '2020-03-05 23:40:03', '2020-03-08 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030405320154188190', 54, 'buyaolian', '北极半球', '530401', '18645678564', 1, 1, 3, 59.00, NULL, '2020-03-04 05:32:01', '2020-03-04 23:30:03', '2020-03-05 23:40:03', '2020-03-08 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030405330126106283', 26, '123', '广西柳州', '000000', '13357024777', 1, 2, 3, 66.00, NULL, '2020-03-04 05:33:01', '2020-03-08 23:45:03', '2020-03-05 23:40:03', '2020-03-08 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030405340159182605', 59, '嘻嘻', '柳州市', '231433', '18216463254', 1, 1, 3, 26.00, NULL, '2020-03-04 05:34:01', '2020-03-04 23:30:03', '2020-03-05 23:40:03', '2020-03-08 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030405350142155275', 42, '林轩', '新疆维吾尔自治区满斗村', '545597', '15151788955', 1, 1, 3, 22.00, NULL, '2020-03-04 05:35:01', '2020-03-04 23:30:03', '2020-03-05 23:40:03', '2020-03-08 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030405360112137646', 12, '至尊宝', '桂林市大河小区', '151431', '13633083252', 1, 2, 3, 218.00, NULL, '2020-03-04 05:36:01', '2020-03-08 23:45:03', '2020-03-05 23:40:03', '2020-03-08 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030405370120190916', 20, 'ABC客户4', '广西柳州', '000000', '15377892222', 1, 2, 3, 66.00, NULL, '2020-03-04 05:37:01', '2020-03-08 23:45:03', '2020-03-05 23:40:03', '2020-03-08 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030405380132167293', 32, '岑辉山', '柳州城市职业学院', '047300', '13087726397', 1, 1, 3, 78.76, NULL, '2020-03-04 05:38:01', '2020-03-04 23:30:03', '2020-03-05 23:40:03', '2020-03-08 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202003040539011186675', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 24.00, NULL, '2020-03-04 05:39:01', '2020-03-08 23:45:03', '2020-03-05 23:40:03', '2020-03-08 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202003040540011177223', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 99.00, NULL, '2020-03-04 05:40:01', '2020-03-07 11:43:07', '2020-03-05 23:40:03', '2020-03-07 11:43:07', 4);
INSERT INTO `product_order` VALUES ('202003040541021147864', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 2.00, NULL, '2020-03-04 05:41:02', '2020-03-08 23:45:03', '2020-03-05 23:40:03', '2020-03-08 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202003040542021159587', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 574.00, NULL, '2020-03-04 05:42:02', '2020-03-04 23:30:03', '2020-03-05 23:40:03', '2020-03-08 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030417055268167190', 68, '小明', '地王21楼', '537022', '13222222222', 1, 1, 3, 50.00, NULL, '2020-03-04 17:05:52', '2020-03-04 17:06:07', '2020-03-05 23:40:03', '2020-03-08 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030505300354177256', 54, 'buyaolian', '北极半球', '530401', '18645678564', 1, 2, 3, 72.00, NULL, '2020-03-05 05:30:03', '2020-03-09 23:45:03', '2020-03-06 23:40:03', '2020-03-09 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030505310349137878', 49, '白云', '柳州城市职业学院', '537400', '18277589582', 1, 2, 3, 186.88, NULL, '2020-03-05 05:31:03', '2020-03-09 23:45:03', '2020-03-06 23:40:03', '2020-03-09 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030505320343133133', 43, '王守义', '石家庄', '000000', '13737664103', 1, 1, 3, 42.00, NULL, '2020-03-05 05:32:03', '2020-03-05 23:30:03', '2020-03-06 23:40:03', '2020-03-09 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030505330344188869', 44, 'ad', '广西柳州', '000000', '13677533336', 1, 2, 3, 58.00, NULL, '2020-03-05 05:33:03', '2020-03-09 23:45:03', '2020-03-06 23:40:03', '2020-03-09 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030505340357149585', 57, '小猪佩奇', '柳州中山路8号', '000000', '18410358497', 1, 2, 3, 39.00, NULL, '2020-03-05 05:34:03', '2020-03-09 23:45:03', '2020-03-06 23:40:03', '2020-03-09 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030505350426124703', 26, '123', '广西柳州', '000000', '13357024777', 1, 1, 3, 50.00, NULL, '2020-03-05 05:35:04', '2020-03-05 23:30:03', '2020-03-06 23:40:03', '2020-03-09 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030505360419176932', 19, 'ABC客户3', '广西柳州', '000000', '18100800709', 1, 1, 3, 32.00, NULL, '2020-03-05 05:36:04', '2020-03-05 23:30:03', '2020-03-06 23:40:03', '2020-03-09 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202003050537041113141', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 199.00, NULL, '2020-03-05 05:37:04', '2020-03-07 11:39:30', '2020-03-06 23:40:03', '2020-03-07 11:39:30', 4);
INSERT INTO `product_order` VALUES ('202003050538041128942', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 330.00, NULL, '2020-03-05 05:38:04', '2020-03-05 23:30:03', '2020-03-06 23:40:03', '2020-03-09 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202003050539041194075', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, NULL, NULL, '2020-03-05 05:39:04', '2020-03-07 11:23:21', '2020-03-06 23:40:03', '2020-03-07 11:23:21', 4);
INSERT INTO `product_order` VALUES ('202003050540041138645', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 54.00, NULL, '2020-03-05 05:40:04', '2020-03-05 23:30:03', '2020-03-06 23:40:03', '2020-03-09 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030605300356149025', 56, 'nini', '广西柳州', '537114', '18378556608', 1, 1, 3, 227.00, NULL, '2020-03-06 05:30:03', '2020-03-06 23:30:03', '2020-03-07 23:40:02', '2020-03-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020030605310322122267', 22, 'ABC客户6', '广西柳州', '000000', '15377892222', 1, 1, 3, 54.00, NULL, '2020-03-06 05:31:03', '2020-03-06 23:30:03', '2020-03-07 23:40:02', '2020-03-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020030605320345152839', 45, '李丽莉', '柳州城市职业学院', '000000', '13877690264', 1, 1, 3, 100.00, NULL, '2020-03-06 05:32:03', '2020-03-06 23:30:03', '2020-03-07 23:40:02', '2020-03-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020030605330359166752', 59, '嘻嘻', '柳州市', '231433', '18216463254', 1, 2, 3, 10.00, NULL, '2020-03-06 05:33:03', '2020-03-10 23:45:01', '2020-03-07 23:40:02', '2020-03-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020030605340314188375', 14, '王大发', '北京市顺义区', '000000', '15388889881', 1, 1, 3, 69.00, NULL, '2020-03-06 05:34:03', '2020-03-06 23:30:03', '2020-03-07 23:40:02', '2020-03-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020030605350365189551', 65, '张11q', '柳州q', '545005', '17376108213', 1, 1, 3, 11.00, NULL, '2020-03-06 05:35:03', '2020-03-06 23:30:03', '2020-03-07 23:40:02', '2020-03-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020030605360364142446', 64, '小白', '很多事卡拉', '748520', '13878474643', 1, 2, 3, 6.00, NULL, '2020-03-06 05:36:03', '2020-03-10 23:45:01', '2020-03-07 23:40:02', '2020-03-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('202003060537031192518', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 36.00, NULL, '2020-03-06 05:37:03', '2020-03-06 23:30:03', '2020-03-07 23:40:02', '2020-03-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('202003060538031131428', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 99.00, NULL, '2020-03-06 05:38:03', '2020-03-10 23:45:01', '2020-03-07 23:40:01', '2020-03-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('202003060539031138611', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 90.50, NULL, '2020-03-06 05:39:03', '2020-03-06 23:30:03', '2020-03-07 23:40:01', '2020-03-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('202003060540031164095', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 39.80, NULL, '2020-03-06 05:40:03', '2020-03-06 23:30:03', '2020-03-07 23:40:01', '2020-03-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020030617285068134563', 68, '小明', '地王21楼', '537022', '13222222222', 1, 1, 3, 80.00, NULL, '2020-03-06 17:28:50', '2020-03-06 23:30:03', '2020-03-07 23:40:01', '2020-03-10 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020030705300244110721', 44, 'ad', '广西柳州', '000000', '13677533336', 1, 2, 3, 1426.00, NULL, '2020-03-07 05:30:02', '2020-03-11 23:45:01', '2020-03-08 23:40:03', '2020-03-11 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020030705310215146521', 15, '客户3', '广东省广州市', '000000', '15388889881', 1, 1, 3, 51.00, NULL, '2020-03-07 05:31:02', '2020-03-07 23:30:02', '2020-03-08 23:40:03', '2020-03-11 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020030705320217127722', 17, 'ABC客户1', '广西柳州', '000000', '15377892222', 1, 1, 3, 10.00, NULL, '2020-03-07 05:32:02', '2020-03-07 23:30:02', '2020-03-08 23:40:03', '2020-03-11 23:45:01', 4);
INSERT INTO `product_order` VALUES ('202003070533031167896', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 36.88, NULL, '2020-03-07 05:33:03', '2020-03-07 11:42:34', '2020-03-08 23:40:03', '2020-03-11 23:45:01', 4);
INSERT INTO `product_order` VALUES ('202003070534031146719', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 188.00, NULL, '2020-03-07 05:34:03', '2020-03-11 23:45:01', '2020-03-08 23:40:03', '2020-03-11 23:45:01', 4);
INSERT INTO `product_order` VALUES ('202003070535031165443', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 2.00, NULL, '2020-03-07 05:35:03', '2020-03-11 23:45:01', '2020-03-08 23:40:03', '2020-03-11 23:45:01', 4);
INSERT INTO `product_order` VALUES ('202003070536031130131', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 181.00, NULL, '2020-03-07 05:36:03', '2020-03-07 11:42:53', '2020-03-08 23:40:03', '2020-03-11 23:45:01', 4);
INSERT INTO `product_order` VALUES ('2020030805300252134384', 52, '小二', '外太空', '545000', '17777777777', 1, 1, 3, 40.00, NULL, '2020-03-08 05:30:02', '2020-03-08 23:30:03', '2020-03-09 23:40:03', '2020-03-12 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020030805310254132025', 54, 'buyaolian', '北极半球', '530401', '18645678564', 1, 1, 3, 57.76, NULL, '2020-03-08 05:31:02', '2020-03-08 23:30:03', '2020-03-09 23:40:03', '2020-03-12 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020030805320226148416', 26, '123', '广西柳州', '000000', '13357024777', 1, 1, 3, 31.00, NULL, '2020-03-08 05:32:02', '2020-03-08 23:30:03', '2020-03-09 23:40:03', '2020-03-12 23:45:00', 4);
INSERT INTO `product_order` VALUES ('202003080533021131555', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 46.00, NULL, '2020-03-08 05:33:02', '2020-03-12 23:45:00', '2020-03-09 23:40:03', '2020-03-12 23:45:00', 4);
INSERT INTO `product_order` VALUES ('202003080534021133207', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 164.76, NULL, '2020-03-08 05:34:02', '2020-03-12 23:45:00', '2020-03-09 23:40:03', '2020-03-12 23:45:00', 4);
INSERT INTO `product_order` VALUES ('202003080535021186722', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 2.00, NULL, '2020-03-08 05:35:02', '2020-03-08 23:30:03', '2020-03-09 23:40:03', '2020-03-12 23:45:00', 4);
INSERT INTO `product_order` VALUES ('202003080536021131681', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 5.00, NULL, '2020-03-08 05:36:02', '2020-03-08 23:30:03', '2020-03-09 23:40:03', '2020-03-12 23:45:00', 4);
INSERT INTO `product_order` VALUES ('2020030905300334175399', 34, '勇哥', '柳州城市职业学院', '202020', '18078764223', 1, 2, 3, 21.00, NULL, '2020-03-09 05:30:03', '2020-03-13 23:45:03', '2020-03-10 23:40:01', '2020-03-13 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030905310335105120', 35, '芙蓉姐', '柳城职9栋519', '000000', '17888993366', 1, 1, 3, 28.00, NULL, '2020-03-09 05:31:03', '2020-03-09 23:30:03', '2020-03-10 23:40:01', '2020-03-13 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030905320329191845', 29, '你的名字', '柳州城市职业学院7栋', '545003', '18775207581', 1, 1, 3, 57.50, NULL, '2020-03-09 05:32:03', '2020-03-09 23:30:03', '2020-03-10 23:40:01', '2020-03-13 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030905330346116335', 46, '邓一封', '北京市朝阳区', '548766', '15648544696', 1, 1, 3, 82.90, NULL, '2020-03-09 05:33:03', '2020-03-09 23:30:03', '2020-03-10 23:40:01', '2020-03-13 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030905340335159225', 35, '芙蓉姐', '柳城职9栋519', '000000', '17888993366', 1, 2, 3, 40.00, NULL, '2020-03-09 05:34:03', '2020-03-13 23:45:03', '2020-03-10 23:40:01', '2020-03-13 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030905350357163735', 57, '小猪佩奇', '柳州中山路8号', '000000', '18410358497', 1, 1, 3, 56.00, NULL, '2020-03-09 05:35:03', '2020-03-09 23:30:03', '2020-03-10 23:40:01', '2020-03-13 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020030905360325112775', 25, '张三', '广西柳州', '000000', '17376108213', 1, 1, 3, 6.00, NULL, '2020-03-09 05:36:03', '2020-03-09 23:30:03', '2020-03-10 23:40:01', '2020-03-13 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202003090537031155715', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 74.00, NULL, '2020-03-09 05:37:03', '2020-03-09 23:30:03', '2020-03-10 23:40:01', '2020-03-13 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202003090538031151763', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 42.00, NULL, '2020-03-09 05:38:03', '2020-03-13 23:45:03', '2020-03-10 23:40:01', '2020-03-13 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202003090539031110174', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 33.00, NULL, '2020-03-09 05:39:03', '2020-03-09 23:30:03', '2020-03-10 23:40:01', '2020-03-13 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202003090540031171577', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 172.80, NULL, '2020-03-09 05:40:03', '2020-03-13 23:45:03', '2020-03-10 23:40:01', '2020-03-13 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020031005300228166102', 28, '张三丰', '柳州城市职业学院', '000000', '13633083200', 1, 1, 3, 123.76, NULL, '2020-03-10 05:30:02', '2020-03-10 23:30:02', '2020-03-11 23:40:01', '2020-03-14 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020031005310363188105', 63, '谭谭谭', '柳州城市职业学院', '515673', '17677777771', 1, 2, 3, 110.00, NULL, '2020-03-10 05:31:03', '2020-03-14 23:45:03', '2020-03-11 23:40:01', '2020-03-14 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020031005320321122397', 21, 'ABC客户5', '广西柳州', '000000', '15377892222', 1, 1, 3, 82.90, NULL, '2020-03-10 05:32:03', '2020-03-10 23:30:02', '2020-03-11 23:40:01', '2020-03-14 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020031005330334188187', 34, '勇哥', '柳州城市职业学院', '202020', '18078764223', 1, 1, 3, 16.00, NULL, '2020-03-10 05:33:03', '2020-03-10 23:30:02', '2020-03-11 23:40:01', '2020-03-14 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020031005340334137275', 34, '勇哥', '柳州城市职业学院', '202020', '18078764223', 1, 2, 3, 60.00, NULL, '2020-03-10 05:34:03', '2020-03-14 23:45:03', '2020-03-11 23:40:01', '2020-03-14 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020031005350314189067', 14, '王大发', '北京市顺义区', '000000', '15388889881', 1, 2, 3, 106.00, NULL, '2020-03-10 05:35:03', '2020-03-14 23:45:03', '2020-03-11 23:40:01', '2020-03-14 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020031005360341123923', 41, '嘟嘟', '广西柳州', '545107', '17377235562', 1, 1, 3, 39.80, NULL, '2020-03-10 05:36:03', '2020-03-10 23:30:02', '2020-03-11 23:40:01', '2020-03-14 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020031005370317161365', 17, 'ABC客户1', '广西柳州', '000000', '15377892222', 1, 1, 3, 146.50, NULL, '2020-03-10 05:37:03', '2020-03-10 23:30:02', '2020-03-11 23:40:01', '2020-03-14 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202003100538031157884', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 78.88, NULL, '2020-03-10 05:38:03', '2020-03-10 23:30:02', '2020-03-11 23:40:01', '2020-03-14 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202003100539031191599', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 42.00, NULL, '2020-03-10 05:39:03', '2020-03-14 23:45:03', '2020-03-11 23:40:01', '2020-03-14 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202003100540031125993', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 162.00, NULL, '2020-03-10 05:40:03', '2020-03-14 23:45:03', '2020-03-11 23:40:01', '2020-03-14 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202003100541031118884', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 212.00, NULL, '2020-03-10 05:41:03', '2020-03-10 23:30:02', '2020-03-11 23:40:01', '2020-03-14 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020031105300260183578', 60, 'adsfdsf', '广西柳州', '689541', '18697845987', 1, 1, 3, 47.20, NULL, '2020-03-11 05:30:02', '2020-03-11 23:30:01', '2020-03-12 23:40:00', '2020-03-15 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020031105310232172401', 32, '岑辉山', '柳州城市职业学院', '047300', '13087726397', 1, 1, 3, 785.90, NULL, '2020-03-11 05:31:02', '2020-03-11 23:30:01', '2020-03-12 23:40:00', '2020-03-15 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020031105320227164324', 27, '12', '广西柳州', '000000', '13357024777', 1, 1, 3, 159.00, NULL, '2020-03-11 05:32:02', '2020-03-11 23:30:01', '2020-03-12 23:40:00', '2020-03-15 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020031105330235156288', 35, '芙蓉姐', '柳城职9栋519', '000000', '17888993366', 1, 1, 3, 68.00, NULL, '2020-03-11 05:33:02', '2020-03-11 23:30:01', '2020-03-12 23:40:00', '2020-03-15 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020031105340228197800', 28, '张三丰', '柳州城市职业学院', '000000', '13633083200', 1, 1, 3, 12.00, NULL, '2020-03-11 05:34:02', '2020-03-11 23:30:01', '2020-03-12 23:40:00', '2020-03-15 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020031105350245196236', 45, '李丽莉', '柳州城市职业学院', '000000', '13877690264', 1, 1, 3, 12.00, NULL, '2020-03-11 05:35:02', '2020-03-11 23:30:01', '2020-03-12 23:40:00', '2020-03-15 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202003110536021180905', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 66.00, NULL, '2020-03-11 05:36:02', '2020-03-15 23:45:03', '2020-03-12 23:40:00', '2020-03-15 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202003110537021185542', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 168.00, NULL, '2020-03-11 05:37:02', '2020-03-15 23:45:03', '2020-03-12 23:40:00', '2020-03-15 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202003110538021145261', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 33.00, NULL, '2020-03-11 05:38:02', '2020-03-11 23:30:01', '2020-03-12 23:40:00', '2020-03-15 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202003110539021179830', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 32.00, NULL, '2020-03-11 05:39:02', '2020-03-15 23:45:03', '2020-03-12 23:40:00', '2020-03-15 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020031205300055154680', 55, '位试试', '广西柳州', '537519', '18894622108', 1, 2, 3, 33.80, NULL, '2020-03-12 05:30:00', '2020-03-16 23:45:03', '2020-03-13 23:40:03', '2020-03-16 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020031205310056184060', 56, 'nini', '广西柳州', '537114', '18378556608', 1, 2, 3, 160.00, NULL, '2020-03-12 05:31:00', '2020-03-16 23:45:03', '2020-03-13 23:40:03', '2020-03-16 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020031205320033144635', 33, '阿沙姐姐丶', '西伯利亚', '547200', '18174918911', 1, 2, 3, 198.60, NULL, '2020-03-12 05:32:00', '2020-03-16 23:45:03', '2020-03-13 23:40:03', '2020-03-16 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020031205330051107654', 51, '易燃', '北京市昌平区回龙观镇北清路', '000000', '18520001128', 1, 1, 3, 15.00, NULL, '2020-03-12 05:33:00', '2020-03-12 23:30:00', '2020-03-13 23:40:03', '2020-03-16 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020031205340153127793', 53, '马化腾', '柳州市恒大小区', '545000', '15678078888', 1, 2, 3, 303.00, NULL, '2020-03-12 05:34:01', '2020-03-16 23:45:03', '2020-03-13 23:40:03', '2020-03-16 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020031205350156150748', 56, 'nini', '广西柳州', '537114', '18378556608', 1, 1, 3, 41.00, NULL, '2020-03-12 05:35:01', '2020-03-12 23:30:00', '2020-03-13 23:40:03', '2020-03-16 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020031205360139152962', 39, '邓一封', '北京市朝阳区', '545933', '15468951235', 1, 1, 3, 598.00, NULL, '2020-03-12 05:36:01', '2020-03-12 23:30:00', '2020-03-13 23:40:03', '2020-03-16 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020031205370136151286', 36, '灰娘娘', '青青草原', '000000', '18254567891', 1, 2, 3, 90.00, NULL, '2020-03-12 05:37:01', '2020-03-16 23:45:03', '2020-03-13 23:40:03', '2020-03-16 23:45:03', 4);
INSERT INTO `product_order` VALUES ('2020031205380148156693', 48, '啊毛', '柳州城市职业学院', '124587', '17677430458', 1, 2, 3, 99.00, NULL, '2020-03-12 05:38:01', '2020-03-16 23:45:03', '2020-03-13 23:40:03', '2020-03-16 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202003120539011177369', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 73.00, NULL, '2020-03-12 05:39:01', '2020-03-12 23:30:00', '2020-03-13 23:40:03', '2020-03-16 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202003120540011132128', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 227.50, NULL, '2020-03-12 05:40:01', '2020-03-16 23:45:03', '2020-03-13 23:40:03', '2020-03-16 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202003120541011130254', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 100.00, NULL, '2020-03-12 05:41:01', '2020-03-12 23:30:00', '2020-03-13 23:40:03', '2020-03-16 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202003120542011182292', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 61.30, NULL, '2020-03-12 05:42:01', '2020-03-12 23:30:00', '2020-03-13 23:40:03', '2020-03-16 23:45:03', 4);
INSERT INTO `product_order` VALUES ('202003130530011148648', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 43.90, NULL, '2020-03-13 05:30:01', '2020-03-13 23:30:03', '2020-03-14 23:40:03', '2020-03-17 23:45:03', 3);
INSERT INTO `product_order` VALUES ('202003130531011161194', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 246.00, NULL, '2020-03-13 05:31:01', '2020-03-13 23:30:03', '2020-03-14 23:40:03', '2020-03-17 23:45:03', 3);
INSERT INTO `product_order` VALUES ('202003130532011191378', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 59.00, NULL, '2020-03-13 05:32:01', '2020-03-13 23:30:03', '2020-03-14 23:40:03', '2020-03-17 23:45:03', 3);
INSERT INTO `product_order` VALUES ('202003130533011141538', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 95.80, NULL, '2020-03-13 05:33:01', '2020-03-17 23:45:03', '2020-03-14 23:40:03', '2020-03-17 23:45:03', 3);
INSERT INTO `product_order` VALUES ('202003130534011170661', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 136.00, NULL, '2020-03-13 05:34:01', '2020-03-17 23:45:03', '2020-03-14 23:40:03', '2020-03-17 23:45:03', 3);
INSERT INTO `product_order` VALUES ('2020031405300336128805', 36, '灰娘娘', '青青草原', '000000', '18254567891', 1, 1, 3, 56.00, NULL, '2020-03-14 05:30:03', '2020-03-14 23:30:03', '2020-03-15 23:40:03', '2020-03-18 23:45:03', 3);
INSERT INTO `product_order` VALUES ('2020031405310354168756', 54, 'buyaolian', '北极半球', '530401', '18645678564', 1, 1, 3, 12.00, NULL, '2020-03-14 05:31:03', '2020-03-14 23:30:03', '2020-03-15 23:40:03', '2020-03-18 23:45:03', 3);
INSERT INTO `product_order` VALUES ('202003140532031157150', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 148.00, NULL, '2020-03-14 05:32:03', '2020-03-14 23:30:03', '2020-03-15 23:40:03', '2020-03-18 23:45:03', 3);
INSERT INTO `product_order` VALUES ('202003140533031158109', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 251.76, NULL, '2020-03-14 05:33:03', '2020-03-14 23:30:03', '2020-03-15 23:40:03', '2020-03-18 23:45:03', 3);
INSERT INTO `product_order` VALUES ('202003140534031152501', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 62.80, NULL, '2020-03-14 05:34:03', '2020-03-14 23:30:03', '2020-03-15 23:40:03', '2020-03-18 23:45:03', 3);
INSERT INTO `product_order` VALUES ('202003140535031166845', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 394.26, NULL, '2020-03-14 05:35:03', '2020-03-14 23:30:03', '2020-03-15 23:40:03', '2020-03-18 23:45:03', 3);
INSERT INTO `product_order` VALUES ('2020031505300347110097', 47, '憨憨', '柳州城市职业学院', '000000', '15578568273', 1, 1, 3, 53.00, NULL, '2020-03-15 05:30:03', '2020-03-15 23:30:03', '2020-03-16 23:40:03', '2020-03-19 23:45:03', 3);
INSERT INTO `product_order` VALUES ('2020031505310314151578', 14, '王大发', '北京市顺义区', '000000', '15388889881', 1, 2, 3, 118.00, NULL, '2020-03-15 05:31:03', '2020-03-19 23:45:03', '2020-03-16 23:40:03', '2020-03-19 23:45:03', 3);
INSERT INTO `product_order` VALUES ('2020031505320337153144', 37, '小小', '柳州市官塘大道柳州城市职业学院', '000000', '17677253547', 1, 1, 3, 15.00, NULL, '2020-03-15 05:32:03', '2020-03-15 23:30:03', '2020-03-16 23:40:03', '2020-03-19 23:45:03', 3);
INSERT INTO `product_order` VALUES ('2020031505330353197760', 53, '马化腾', '柳州市恒大小区', '545000', '15678078888', 1, 1, 3, 89.30, NULL, '2020-03-15 05:33:03', '2020-03-15 23:30:03', '2020-03-16 23:40:03', '2020-03-19 23:45:03', 3);
INSERT INTO `product_order` VALUES ('202003150534031179069', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 112.00, NULL, '2020-03-15 05:34:03', '2020-03-19 23:45:03', '2020-03-16 23:40:03', '2020-03-19 23:45:03', 3);
INSERT INTO `product_order` VALUES ('202003150535031129461', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 21.00, NULL, '2020-03-15 05:35:03', '2020-03-19 23:45:03', '2020-03-16 23:40:03', '2020-03-19 23:45:03', 3);
INSERT INTO `product_order` VALUES ('202003150536031107882', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 60.00, NULL, '2020-03-15 05:36:03', '2020-03-19 23:45:03', '2020-03-16 23:40:03', '2020-03-19 23:45:03', 3);
INSERT INTO `product_order` VALUES ('202003150537031131011', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 44.80, NULL, '2020-03-15 05:37:03', '2020-03-19 23:45:03', '2020-03-16 23:40:03', '2020-03-19 23:45:03', 3);
INSERT INTO `product_order` VALUES ('2020031605300340173527', 40, '李小', '柳州城市职业技术学院', '000000', '13640516155', 1, 2, 3, 2.00, NULL, '2020-03-16 05:30:03', '2020-03-20 23:45:03', '2020-03-17 23:40:03', '2020-03-20 23:45:03', 3);
INSERT INTO `product_order` VALUES ('2020031605310312105653', 12, '至尊宝', '桂林市大河小区', '151431', '13633083252', 1, 1, 3, 69.00, NULL, '2020-03-16 05:31:03', '2020-03-16 23:30:03', '2020-03-17 23:40:03', '2020-03-20 23:45:03', 3);
INSERT INTO `product_order` VALUES ('2020031605320355115368', 55, '位试试', '广西柳州', '537519', '18894622108', 1, 2, 3, 16.00, NULL, '2020-03-16 05:32:03', '2020-03-20 23:45:03', '2020-03-17 23:40:03', '2020-03-20 23:45:03', 3);
INSERT INTO `product_order` VALUES ('2020031605330322125133', 22, 'ABC客户6', '广西柳州', '000000', '15377892222', 1, 2, 3, 12.00, NULL, '2020-03-16 05:33:03', '2020-03-20 23:45:03', '2020-03-17 23:40:03', '2020-03-20 23:45:03', 3);
INSERT INTO `product_order` VALUES ('2020031605340368186283', 68, '小明', '地王21楼', '537022', '13222222222', 1, 1, 3, 316.00, NULL, '2020-03-16 05:34:03', '2020-03-16 23:30:03', '2020-03-17 23:40:03', '2020-03-20 23:45:03', 3);
INSERT INTO `product_order` VALUES ('2020031605350359187750', 59, '嘻嘻', '柳州市', '231433', '18216463254', 1, 2, 3, 102.00, NULL, '2020-03-16 05:35:03', '2020-03-20 23:45:03', '2020-03-17 23:40:03', '2020-03-20 23:45:03', 3);
INSERT INTO `product_order` VALUES ('2020031605360315171532', 15, '客户3', '广东省广州市', '000000', '15388889881', 1, 2, 3, 35.00, NULL, '2020-03-16 05:36:03', '2020-03-20 23:45:03', '2020-03-17 23:40:03', '2020-03-20 23:45:03', 3);
INSERT INTO `product_order` VALUES ('2020031605370312147472', 12, '至尊宝', '桂林市大河小区', '151431', '13633083252', 1, 1, 3, 99.90, NULL, '2020-03-16 05:37:03', '2020-03-16 23:30:03', '2020-03-17 23:40:03', '2020-03-20 23:45:03', 3);
INSERT INTO `product_order` VALUES ('2020031605380363134092', 63, '谭谭谭', '柳州城市职业学院', '515673', '17677777771', 1, 2, 3, 8.00, NULL, '2020-03-16 05:38:03', '2020-03-20 23:45:03', '2020-03-17 23:40:03', '2020-03-20 23:45:03', 3);
INSERT INTO `product_order` VALUES ('202003160539031181289', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 18.00, NULL, '2020-03-16 05:39:03', '2020-03-16 23:30:03', '2020-03-17 23:40:03', '2020-03-20 23:45:03', 3);
INSERT INTO `product_order` VALUES ('202003160540031101606', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 47.00, NULL, '2020-03-16 05:40:03', '2020-03-16 23:30:03', '2020-03-17 23:40:03', '2020-03-20 23:45:03', 3);
INSERT INTO `product_order` VALUES ('202003160541031172278', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 118.00, NULL, '2020-03-16 05:41:03', '2020-03-20 23:45:03', '2020-03-17 23:40:03', '2020-03-20 23:45:03', 3);
INSERT INTO `product_order` VALUES ('202003160542031164275', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 90.00, NULL, '2020-03-16 05:42:03', '2020-03-16 23:30:03', '2020-03-17 23:40:03', '2020-03-20 23:45:03', 3);
INSERT INTO `product_order` VALUES ('2020031705300354110911', 54, 'buyaolian', '北极半球', '530401', '18645678564', 1, 2, 3, 156.50, NULL, '2020-03-17 05:30:03', '2020-03-21 23:45:01', '2020-03-18 23:40:03', '2020-03-21 23:45:01', 3);
INSERT INTO `product_order` VALUES ('2020031705310344146459', 44, 'ad', '广西柳州', '000000', '13677533336', 1, 2, 3, 122.00, NULL, '2020-03-17 05:31:03', '2020-03-21 23:45:01', '2020-03-18 23:40:03', '2020-03-21 23:45:01', 3);
INSERT INTO `product_order` VALUES ('2020031705320344133072', 44, 'ad', '广西柳州', '000000', '13677533336', 1, 1, 3, 85.90, NULL, '2020-03-17 05:32:03', '2020-03-17 23:30:03', '2020-03-18 23:40:03', '2020-03-21 23:45:01', 3);
INSERT INTO `product_order` VALUES ('2020031705330331187646', 31, '阿尔托利亚·潘德拉贡', '大不列颠帝国', '666666', '14795309399', 1, 2, 3, 262.00, NULL, '2020-03-17 05:33:03', '2020-03-21 23:45:01', '2020-03-18 23:40:03', '2020-03-21 23:45:01', 3);
INSERT INTO `product_order` VALUES ('2020031705340312188399', 12, '至尊宝', '桂林市大河小区', '151431', '13633083252', 1, 1, 3, 398.00, NULL, '2020-03-17 05:34:03', '2020-03-17 23:30:03', '2020-03-18 23:40:03', '2020-03-21 23:45:01', 3);
INSERT INTO `product_order` VALUES ('202003170535031140419', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 42.00, NULL, '2020-03-17 05:35:03', '2020-03-21 23:45:01', '2020-03-18 23:40:03', '2020-03-21 23:45:01', 3);
INSERT INTO `product_order` VALUES ('202003170536031199080', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 43.00, NULL, '2020-03-17 05:36:03', '2020-03-21 23:45:01', '2020-03-18 23:40:03', '2020-03-21 23:45:01', 3);
INSERT INTO `product_order` VALUES ('202003170537031105812', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 76.00, NULL, '2020-03-17 05:37:03', '2020-03-17 23:30:03', '2020-03-18 23:40:03', '2020-03-21 23:45:01', 3);
INSERT INTO `product_order` VALUES ('202003170538031113566', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 56.00, NULL, '2020-03-17 05:38:03', '2020-03-21 23:45:01', '2020-03-18 23:40:03', '2020-03-21 23:45:01', 3);
INSERT INTO `product_order` VALUES ('2020031805300339167617', 39, '邓一封', '北京市朝阳区', '545933', '15468951235', 1, 1, 3, 30.00, NULL, '2020-03-18 05:30:03', '2020-03-18 23:30:03', '2020-03-19 23:40:03', '2020-03-22 23:45:03', 3);
INSERT INTO `product_order` VALUES ('2020031805310338163925', 38, '勇哥', '柳州城市职业学院', '000000', '18648841344', 1, 1, 3, 54.00, NULL, '2020-03-18 05:31:03', '2020-03-18 23:30:03', '2020-03-19 23:40:03', '2020-03-22 23:45:03', 3);
INSERT INTO `product_order` VALUES ('202003180532031118515', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 59.60, NULL, '2020-03-18 05:32:03', '2020-03-18 23:30:03', '2020-03-19 23:40:03', '2020-03-22 23:45:03', 3);
INSERT INTO `product_order` VALUES ('202003180533031112586', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 25.00, NULL, '2020-03-18 05:33:03', '2020-03-22 23:45:03', '2020-03-19 23:40:03', '2020-03-22 23:45:03', 3);
INSERT INTO `product_order` VALUES ('202003180534031138836', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 124.26, NULL, '2020-03-18 05:34:03', '2020-03-22 23:45:03', '2020-03-19 23:40:03', '2020-03-22 23:45:03', 3);
INSERT INTO `product_order` VALUES ('202003180535031141077', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 74.80, NULL, '2020-03-18 05:35:03', '2020-03-22 23:45:03', '2020-03-19 23:40:03', '2020-03-22 23:45:03', 3);
INSERT INTO `product_order` VALUES ('2020031905300327159426', 27, '12', '广西柳州', '000000', '13357024777', 1, 2, 3, 72.00, NULL, '2020-03-19 05:30:03', '2020-03-23 23:45:01', '2020-03-20 23:40:03', '2020-03-23 23:45:01', 3);
INSERT INTO `product_order` VALUES ('2020031905310349134265', 49, '白云', '柳州城市职业学院', '537400', '18277589582', 1, 1, 3, 26.00, NULL, '2020-03-19 05:31:03', '2020-03-19 23:30:03', '2020-03-20 23:40:03', '2020-03-23 23:45:01', 3);
INSERT INTO `product_order` VALUES ('2020031905320353130293', 53, '马化腾', '柳州市恒大小区', '545000', '15678078888', 1, 2, 3, 26.00, NULL, '2020-03-19 05:32:03', '2020-03-23 23:45:01', '2020-03-20 23:40:03', '2020-03-23 23:45:01', 3);
INSERT INTO `product_order` VALUES ('2020031905330348185036', 48, '啊毛', '柳州城市职业学院', '124587', '17677430458', 1, 1, 3, 231.00, NULL, '2020-03-19 05:33:03', '2020-03-19 23:30:03', '2020-03-20 23:40:03', '2020-03-23 23:45:01', 3);
INSERT INTO `product_order` VALUES ('2020031905340341194636', 41, '嘟嘟', '广西柳州', '545107', '17377235562', 1, 2, 3, 30.00, NULL, '2020-03-19 05:34:03', '2020-03-23 23:45:01', '2020-03-20 23:40:03', '2020-03-23 23:45:01', 3);
INSERT INTO `product_order` VALUES ('2020031905350336175405', 36, '灰娘娘', '青青草原', '000000', '18254567891', 1, 2, 3, 12.00, NULL, '2020-03-19 05:35:03', '2020-03-23 23:45:01', '2020-03-20 23:40:03', '2020-03-23 23:45:01', 3);
INSERT INTO `product_order` VALUES ('2020031905360313157994', 13, '徐凤年', '广西柳州', '000000', '17703771999', 1, 2, 3, 21.00, NULL, '2020-03-19 05:36:03', '2020-03-23 23:45:01', '2020-03-20 23:40:03', '2020-03-23 23:45:01', 3);
INSERT INTO `product_order` VALUES ('202003190537031165574', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 158.00, NULL, '2020-03-19 05:37:03', '2020-03-23 23:45:01', '2020-03-20 23:40:03', '2020-03-23 23:45:01', 3);
INSERT INTO `product_order` VALUES ('202003190538031196723', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 66.00, NULL, '2020-03-19 05:38:03', '2020-03-23 23:45:01', '2020-03-20 23:40:03', '2020-03-23 23:45:01', 3);
INSERT INTO `product_order` VALUES ('202003190539031101434', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 2, 3, 18.00, NULL, '2020-03-19 05:39:03', '2020-03-23 23:45:01', '2020-03-20 23:40:03', '2020-03-23 23:45:01', 3);
INSERT INTO `product_order` VALUES ('202003190540031158731', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 3, 3.00, NULL, '2020-03-19 05:40:03', '2020-03-19 23:30:03', '2020-03-20 23:40:03', '2020-03-23 23:45:01', 3);
INSERT INTO `product_order` VALUES ('2020032005300329114073', 29, '你的名字', '柳州城市职业学院7栋', '545003', '18775207581', 0, 2, 2, NULL, NULL, '2020-03-20 05:30:03', NULL, '2020-03-21 23:40:01', NULL, 2);
INSERT INTO `product_order` VALUES ('2020032005310350129929', 50, '周杰伦', '柳州城市职业学院', '545005', '13633088047', 1, 1, 2, 65.00, NULL, '2020-03-20 05:31:03', '2020-03-20 23:30:03', '2020-03-21 23:40:01', NULL, 2);
INSERT INTO `product_order` VALUES ('202003200532031186424', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 2, 110.00, NULL, '2020-03-20 05:32:03', '2020-03-20 23:30:03', '2020-03-21 23:40:01', NULL, 2);
INSERT INTO `product_order` VALUES ('202003200533031154857', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 0, 2, 2, NULL, NULL, '2020-03-20 05:33:03', NULL, '2020-03-21 23:40:01', NULL, 2);
INSERT INTO `product_order` VALUES ('202003200534031193361', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 0, 2, 2, NULL, NULL, '2020-03-20 05:34:03', NULL, '2020-03-21 23:40:01', NULL, 2);
INSERT INTO `product_order` VALUES ('202003200535031190888', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 2, 18.00, NULL, '2020-03-20 05:35:03', '2020-03-20 23:30:03', '2020-03-21 23:40:01', NULL, 2);
INSERT INTO `product_order` VALUES ('2020032105300312109356', 12, '至尊宝', '桂林市大河小区', '151431', '13633083252', 0, 2, 2, NULL, NULL, '2020-03-21 05:30:03', NULL, '2020-03-22 23:40:03', NULL, 2);
INSERT INTO `product_order` VALUES ('2020032105310359184048', 59, '嘻嘻', '柳州市', '231433', '18216463254', 0, 2, 2, NULL, NULL, '2020-03-21 05:31:03', NULL, '2020-03-22 23:40:03', NULL, 2);
INSERT INTO `product_order` VALUES ('2020032105320322140189', 22, 'ABC客户6', '广西柳州', '000000', '15377892222', 1, 1, 2, 23.00, NULL, '2020-03-21 05:32:03', '2020-03-21 23:30:01', '2020-03-22 23:40:03', NULL, 2);
INSERT INTO `product_order` VALUES ('2020032105330347158485', 47, '憨憨', '柳州城市职业学院', '000000', '15578568273', 1, 1, 2, 115.90, NULL, '2020-03-21 05:33:03', '2020-03-21 23:30:01', '2020-03-22 23:40:03', NULL, 2);
INSERT INTO `product_order` VALUES ('2020032105340360133906', 60, 'adsfdsf', '广西柳州', '689541', '18697845987', 1, 1, 2, 102.50, NULL, '2020-03-21 05:34:03', '2020-03-21 23:30:01', '2020-03-22 23:40:03', NULL, 2);
INSERT INTO `product_order` VALUES ('2020032105350325197176', 25, '张三', '广西柳州', '000000', '17376108213', 0, 2, 2, NULL, NULL, '2020-03-21 05:35:03', NULL, '2020-03-22 23:40:03', NULL, 2);
INSERT INTO `product_order` VALUES ('2020032105360358158347', 58, '妮妮', '广西柳州市鱼峰区', '253343', '18775534562', 1, 1, 2, 20.00, NULL, '2020-03-21 05:36:03', '2020-03-21 23:30:01', '2020-03-22 23:40:03', NULL, 2);
INSERT INTO `product_order` VALUES ('202003210537031120769', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 0, 2, 2, NULL, NULL, '2020-03-21 05:37:03', NULL, '2020-03-22 23:40:03', NULL, 2);
INSERT INTO `product_order` VALUES ('202003210538031199216', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 2, 58.00, NULL, '2020-03-21 05:38:03', '2020-03-21 23:30:01', '2020-03-22 23:40:03', NULL, 2);
INSERT INTO `product_order` VALUES ('202003210539031141658', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 0, 2, 2, NULL, NULL, '2020-03-21 05:39:03', NULL, '2020-03-22 23:40:03', NULL, 2);
INSERT INTO `product_order` VALUES ('202003210540031142852', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 2, 98.00, NULL, '2020-03-21 05:40:03', '2020-03-21 23:30:01', '2020-03-22 23:40:03', NULL, 2);
INSERT INTO `product_order` VALUES ('2020032205300153133810', 53, '马化腾', '柳州市恒大小区', '545000', '15678078888', 1, 1, 2, 50.00, NULL, '2020-03-22 05:30:01', '2020-03-22 23:30:03', '2020-03-23 23:40:01', NULL, 2);
INSERT INTO `product_order` VALUES ('2020032205310247115102', 47, '憨憨', '柳州城市职业学院', '000000', '15578568273', 1, 1, 2, 30.00, NULL, '2020-03-22 05:31:02', '2020-03-22 23:30:03', '2020-03-23 23:40:01', NULL, 2);
INSERT INTO `product_order` VALUES ('2020032205320222107917', 22, 'ABC客户6', '广西柳州', '000000', '15377892222', 0, 2, 2, NULL, NULL, '2020-03-22 05:32:02', NULL, '2020-03-23 23:40:01', NULL, 2);
INSERT INTO `product_order` VALUES ('2020032205330236152368', 36, '灰娘娘', '青青草原', '000000', '18254567891', 0, 2, 2, NULL, NULL, '2020-03-22 05:33:02', NULL, '2020-03-23 23:40:01', NULL, 2);
INSERT INTO `product_order` VALUES ('2020032205340246185051', 46, '邓一封', '北京市朝阳区', '548766', '15648544696', 1, 1, 2, 166.00, NULL, '2020-03-22 05:34:02', '2020-03-22 23:30:03', '2020-03-23 23:40:01', NULL, 2);
INSERT INTO `product_order` VALUES ('2020032205350249155270', 49, '白云', '柳州城市职业学院', '537400', '18277589582', 1, 1, 2, 172.00, NULL, '2020-03-22 05:35:02', '2020-03-22 23:30:03', '2020-03-23 23:40:01', NULL, 2);
INSERT INTO `product_order` VALUES ('202003220536021115244', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 0, 2, 2, NULL, NULL, '2020-03-22 05:36:02', NULL, '2020-03-23 23:40:01', NULL, 2);
INSERT INTO `product_order` VALUES ('202003220537021198147', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 0, 2, 2, NULL, NULL, '2020-03-22 05:37:02', NULL, '2020-03-23 23:40:01', NULL, 2);
INSERT INTO `product_order` VALUES ('202003220538021172040', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 0, 2, 2, NULL, NULL, '2020-03-22 05:38:02', NULL, '2020-03-23 23:40:01', NULL, 2);
INSERT INTO `product_order` VALUES ('202003220539021173518', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 2, 18.00, NULL, '2020-03-22 05:39:02', '2020-03-22 23:30:03', '2020-03-23 23:40:01', NULL, 2);
INSERT INTO `product_order` VALUES ('2020032305300329119276', 29, '你的名字', '柳州城市职业学院7栋', '545003', '18775207581', 1, 1, 1, 28.60, NULL, '2020-03-23 05:30:03', '2020-03-23 23:30:01', NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020032305310344107272', 44, 'ad', '广西柳州', '000000', '13677533336', 0, 2, 1, NULL, NULL, '2020-03-23 05:31:03', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020032305320368183914', 68, '小明', '地王21楼', '537022', '13222222222', 1, 1, 1, 208.00, NULL, '2020-03-23 05:32:03', '2020-03-23 23:30:01', NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('202003230533031167422', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 1, 75.80, NULL, '2020-03-23 05:33:03', '2020-03-23 23:30:01', NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('202003230534031164390', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 1, 157.80, NULL, '2020-03-23 05:34:03', '2020-03-23 23:30:01', NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('202003230535031160124', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 1, 1, 1, 197.00, NULL, '2020-03-23 05:35:03', '2020-03-23 23:30:01', NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('202003230536031144949', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 0, 2, 1, NULL, NULL, '2020-03-23 05:36:03', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020032405300218151056', 18, 'ABC客户2', '广西柳州', '000000', '18168526111', 0, 1, 0, NULL, NULL, '2020-03-24 05:30:02', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020032405310255191006', 55, '位试试', '广西柳州', '537519', '18894622108', 0, 2, 1, NULL, NULL, '2020-03-24 05:31:02', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('202003240532021152686', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 0, 2, 1, NULL, NULL, '2020-03-24 05:32:02', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('202003240533021146025', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 0, 1, 0, NULL, NULL, '2020-03-24 05:33:02', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('202003240534021147735', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 0, 1, 0, NULL, NULL, '2020-03-24 05:34:02', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('202003240535021146277', 1, '测试账号', '柳州城市职业学院7栋', '134321', '13124123132', 0, 2, 1, NULL, NULL, '2020-03-24 05:35:02', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('3ba0104bc84b4b4f85ad71a11e5ca8d2', 12, '至尊宝', '柳州市鹧鸪江路1号', '151431', '18260700009', 1, 1, 3, 509.00, '请不要发次品', '2017-09-07 20:48:13', '2020-02-08 18:05:10', '2020-02-08 18:23:13', '2020-02-10 23:45:04', 4);
INSERT INTO `product_order` VALUES ('480b807046b84c85b4ab241106aac39b', 1, '张三', '柳州市官塘大道1号', '000000', '17712939359', 1, 2, 3, 300.00, '请不要发次品', '2017-09-07 20:49:27', '2020-02-02 21:09:13', '2020-02-02 21:07:40', '2020-02-01 11:35:00', 4);
INSERT INTO `product_order` VALUES ('da247d46a58540a381aad88462f0f20b', 1, '张三2', '柳州市鱼峰区官塘大道文苑路1号2', '545032', '18922898902', 1, 1, 3, 10.00, '请不要发次品', '2017-09-07 20:49:09', '2020-02-08 18:05:10', '2020-02-08 18:23:13', '2020-02-10 23:45:04', 4);

-- ----------------------------
-- Table structure for product_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `product_order_detail`;
CREATE TABLE `product_order_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  `orderNo` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号（外键）',
  `productId` int(11) NULL DEFAULT NULL COMMENT '产品编号（外键）',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '交易价格（下订单时的产品价格）',
  `originalPrice` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '原价',
  `productNumber` int(11) NULL DEFAULT 0 COMMENT '产品数量',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `orderId`(`orderNo`) USING BTREE,
  INDEX `productId`(`productId`) USING BTREE,
  CONSTRAINT `product_order_detail_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `product_order_detail_ibfk_3` FOREIGN KEY (`orderNo`) REFERENCES `product_order` (`orderNo`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE = InnoDB AUTO_INCREMENT = 1447 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_order_detail
-- ----------------------------
INSERT INTO `product_order_detail` VALUES (44, NULL, 74, 12.00, 16.00, 9);
INSERT INTO `product_order_detail` VALUES (45, NULL, 76, 8.00, 12.00, 12);
INSERT INTO `product_order_detail` VALUES (46, NULL, 81, 12.00, 15.00, 13);
INSERT INTO `product_order_detail` VALUES (47, '3ba0104bc84b4b4f85ad71a11e5ca8d2', 71, 13.00, 28.00, 11);
INSERT INTO `product_order_detail` VALUES (48, '3ba0104bc84b4b4f85ad71a11e5ca8d2', 78, 12.00, 15.00, 12);
INSERT INTO `product_order_detail` VALUES (49, '3ba0104bc84b4b4f85ad71a11e5ca8d2', 72, 18.50, 21.00, 12);
INSERT INTO `product_order_detail` VALUES (50, 'da247d46a58540a381aad88462f0f20b', 76, 8.00, 12.00, 11);
INSERT INTO `product_order_detail` VALUES (51, 'da247d46a58540a381aad88462f0f20b', 74, 13.22, 28.00, 12);
INSERT INTO `product_order_detail` VALUES (52, '480b807046b84c85b4ab241106aac39b', 76, 66.00, 88.00, 6);
INSERT INTO `product_order_detail` VALUES (53, '077dc8e1365045cc8fa386ba1d33a2e9', 86, 5.00, 6.00, 3);
INSERT INTO `product_order_detail` VALUES (54, '077dc8e1365045cc8fa386ba1d33a2e9', 81, 11.00, 15.00, 3);
INSERT INTO `product_order_detail` VALUES (55, '077dc8e1365045cc8fa386ba1d33a2e9', 75, 12.00, 16.00, 1);
INSERT INTO `product_order_detail` VALUES (56, '077dc8e1365045cc8fa386ba1d33a2e9', 77, 6.00, 10.00, 1);
INSERT INTO `product_order_detail` VALUES (57, '077dc8e1365045cc8fa386ba1d33a2e9', 83, 15.60, 28.00, 3);
INSERT INTO `product_order_detail` VALUES (58, '2020020221562612221932', 84, 17.54, 32.00, 4);
INSERT INTO `product_order_detail` VALUES (59, '202002042132481146593', 72, 66.50, 88.00, 42);
INSERT INTO `product_order_detail` VALUES (60, '202002042132481146593', 96, 19.90, 29.90, 13);
INSERT INTO `product_order_detail` VALUES (61, '202002042132481146593', 77, 6.00, 10.00, 21);
INSERT INTO `product_order_detail` VALUES (125, '2020020422080116143492', 99, 15.00, 30.00, 4);
INSERT INTO `product_order_detail` VALUES (126, '2020020422080116143492', 117, 12.00, 12.00, 8);
INSERT INTO `product_order_detail` VALUES (127, '2020020422080116143492', 116, 5.00, 20.00, 8);
INSERT INTO `product_order_detail` VALUES (128, '2020020422080116143492', 74, 12.00, 16.00, 5);
INSERT INTO `product_order_detail` VALUES (129, '2020020422080116143492', 124, 34.00, 45.00, 5);
INSERT INTO `product_order_detail` VALUES (130, '2020020422080150165192', 138, 28.00, 31.00, 6);
INSERT INTO `product_order_detail` VALUES (131, '2020020422080150165192', 150, 50.00, 60.00, 3);
INSERT INTO `product_order_detail` VALUES (132, '2020020422080160179596', 127, 9.00, 12.00, 9);
INSERT INTO `product_order_detail` VALUES (133, '2020020422080160179596', 158, 28.00, 35.00, 2);
INSERT INTO `product_order_detail` VALUES (134, '2020020422080125159910', 143, 10.00, 12.00, 3);
INSERT INTO `product_order_detail` VALUES (135, '2020020422080125159910', 119, 3.00, 5.00, 5);
INSERT INTO `product_order_detail` VALUES (136, '2020020422080125159910', 106, 120.00, 99.00, 3);
INSERT INTO `product_order_detail` VALUES (137, '2020020422080125159910', 107, 15.00, 25.00, 8);
INSERT INTO `product_order_detail` VALUES (138, '202002042208011150627', 115, 9.90, 10.00, 2);
INSERT INTO `product_order_detail` VALUES (139, '202002042208011150627', 78, 12.00, 15.00, 8);
INSERT INTO `product_order_detail` VALUES (140, '2020020422080161136147', 112, 199.00, 299.00, 2);
INSERT INTO `product_order_detail` VALUES (141, '2020020422080161136147', 101, 500.00, 8.00, 8);
INSERT INTO `product_order_detail` VALUES (142, '2020020422080161136147', 86, 3.00, 6.00, 8);
INSERT INTO `product_order_detail` VALUES (143, '2020020422080216139398', 163, 7.91, 121.00, 3);
INSERT INTO `product_order_detail` VALUES (144, '2020020422080216139398', 105, 9.00, 11.00, 8);
INSERT INTO `product_order_detail` VALUES (145, '2020020422080216139398', 126, 20.00, 50.00, 9);
INSERT INTO `product_order_detail` VALUES (146, '2020020422080216139398', 129, 25.00, 19.90, 6);
INSERT INTO `product_order_detail` VALUES (147, '2020020422080216139398', 96, 19.90, 29.90, 7);
INSERT INTO `product_order_detail` VALUES (148, '2020020422080251134453', 73, 13.00, 28.00, 3);
INSERT INTO `product_order_detail` VALUES (149, '2020020422080251134453', 78, 12.00, 15.00, 4);
INSERT INTO `product_order_detail` VALUES (150, '2020020422080251134453', 130, 2.00, 5.00, 5);
INSERT INTO `product_order_detail` VALUES (151, '2020020422080251134453', 79, 8.00, 12.00, 3);
INSERT INTO `product_order_detail` VALUES (152, '2020020422080263126527', 121, 6.60, 9.90, 3);
INSERT INTO `product_order_detail` VALUES (153, '2020020422080263126527', 143, 10.00, 12.00, 10);
INSERT INTO `product_order_detail` VALUES (154, '2020020422080263126527', 137, 28.00, 30.00, 7);
INSERT INTO `product_order_detail` VALUES (155, '2020020422080236178369', 98, 25.50, 50.00, 6);
INSERT INTO `product_order_detail` VALUES (156, '2020020422080236178369', 72, 66.50, 88.00, 1);
INSERT INTO `product_order_detail` VALUES (157, '2020020422101555161632', 75, 12.00, 16.00, 4);
INSERT INTO `product_order_detail` VALUES (158, '2020020422101555161632', 73, 13.00, 28.00, 1);
INSERT INTO `product_order_detail` VALUES (159, '2020020422101555161632', 139, 12.00, 14.00, 1);
INSERT INTO `product_order_detail` VALUES (160, '202002042210201106902', 74, 12.00, 16.00, 8);
INSERT INTO `product_order_detail` VALUES (161, '2020020422102531199418', 151, 145.00, 184.00, 4);
INSERT INTO `product_order_detail` VALUES (162, '2020020422102531199418', 139, 12.00, 14.00, 7);
INSERT INTO `product_order_detail` VALUES (163, '2020020422102531199418', 156, 999.00, 1200.00, 3);
INSERT INTO `product_order_detail` VALUES (164, '2020020422102531199418', 137, 28.00, 30.00, 8);
INSERT INTO `product_order_detail` VALUES (165, '2020020422102531199418', 134, 8.00, 12.00, 5);
INSERT INTO `product_order_detail` VALUES (166, '2020020422103040141598', 136, 0.01, 99999.00, 7);
INSERT INTO `product_order_detail` VALUES (167, '2020020422103040141598', 78, 12.00, 15.00, 2);
INSERT INTO `product_order_detail` VALUES (168, '2020020422103040141598', 101, 500.00, 8.00, 4);
INSERT INTO `product_order_detail` VALUES (169, '2020020422103040141598', 96, 19.90, 29.90, 4);
INSERT INTO `product_order_detail` VALUES (170, '2020020422103518124494', 75, 12.00, 16.00, 6);
INSERT INTO `product_order_detail` VALUES (171, '2020020422103518124494', 106, 120.00, 99.00, 4);
INSERT INTO `product_order_detail` VALUES (172, '2020020422103518124494', 109, 10.00, 20.00, 9);
INSERT INTO `product_order_detail` VALUES (173, '2020020422103518124494', 116, 5.00, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (174, '2020020422104045162745', 150, 50.00, 60.00, 2);
INSERT INTO `product_order_detail` VALUES (175, '2020020422104045162745', 110, 199.00, 299.00, 5);
INSERT INTO `product_order_detail` VALUES (176, '2020020422104045162745', 129, 25.00, 19.90, 4);
INSERT INTO `product_order_detail` VALUES (177, '2020020422104518100165', 72, 66.50, 88.00, 6);
INSERT INTO `product_order_detail` VALUES (178, '2020020422104518100165', 102, 59.00, 89.00, 8);
INSERT INTO `product_order_detail` VALUES (179, '2020020422105034143368', 131, 20.00, 10.00, 6);
INSERT INTO `product_order_detail` VALUES (180, '2020020422105034143368', 155, 100.00, 120.00, 7);
INSERT INTO `product_order_detail` VALUES (181, '2020020422105034143368', 75, 12.00, 16.00, 8);
INSERT INTO `product_order_detail` VALUES (182, '2020020422105034143368', 154, 99.00, 130.00, 9);
INSERT INTO `product_order_detail` VALUES (183, '2020020422105565141179', 112, 199.00, 299.00, 7);
INSERT INTO `product_order_detail` VALUES (184, '2020020422105565141179', 84, 21.00, 25.00, 3);
INSERT INTO `product_order_detail` VALUES (185, '2020020422105565141179', 135, 5.00, 10.00, 7);
INSERT INTO `product_order_detail` VALUES (186, '2020020422105565141179', 114, 33.30, 99.90, 5);
INSERT INTO `product_order_detail` VALUES (187, '202002042211001144850', 75, 12.00, 16.00, 6);
INSERT INTO `product_order_detail` VALUES (188, '202002042211059186774', 154, 99.00, 130.00, 1);
INSERT INTO `product_order_detail` VALUES (189, '202002042211059186774', 132, 10.00, 15.00, 8);
INSERT INTO `product_order_detail` VALUES (190, '202002042211059186774', 83, 16.00, 28.00, 2);
INSERT INTO `product_order_detail` VALUES (191, '202002042211059186774', 150, 50.00, 60.00, 3);
INSERT INTO `product_order_detail` VALUES (192, '202002042211059186774', 152, 12000.00, 20000.00, 6);
INSERT INTO `product_order_detail` VALUES (193, '2020020422111119179635', 113, 9.90, 10.90, 9);
INSERT INTO `product_order_detail` VALUES (194, '2020020422111119179635', 129, 25.00, 19.90, 8);
INSERT INTO `product_order_detail` VALUES (195, '2020020422111119179635', 146, 1.00, 4.00, 5);
INSERT INTO `product_order_detail` VALUES (196, '202002042211169175332', 151, 145.00, 184.00, 7);
INSERT INTO `product_order_detail` VALUES (197, '2020020422112158108065', 136, 0.01, 99999.00, 6);
INSERT INTO `product_order_detail` VALUES (198, '2020020422112158108065', 111, 28.00, 35.00, 2);
INSERT INTO `product_order_detail` VALUES (199, '2020020422112644186998', 98, 25.50, 50.00, 5);
INSERT INTO `product_order_detail` VALUES (200, '2020020422112644186998', 128, 16.00, 14.00, 2);
INSERT INTO `product_order_detail` VALUES (201, '2020020422113144199638', 137, 28.00, 30.00, 1);
INSERT INTO `product_order_detail` VALUES (202, '2020020422113652136323', 86, 3.00, 6.00, 4);
INSERT INTO `product_order_detail` VALUES (203, '2020020422113652136323', 85, 12.00, 16.00, 2);
INSERT INTO `product_order_detail` VALUES (204, '2020020422113652136323', 125, 18.00, 20.00, 6);
INSERT INTO `product_order_detail` VALUES (205, '2020020422113652136323', 79, 8.00, 12.00, 4);
INSERT INTO `product_order_detail` VALUES (206, '2020020422114112162683', 152, 12000.00, 20000.00, 5);
INSERT INTO `product_order_detail` VALUES (207, '2020020422114112162683', 147, 10.00, 20.00, 8);
INSERT INTO `product_order_detail` VALUES (208, '2020020422114112162683', 77, 6.00, 10.00, 6);
INSERT INTO `product_order_detail` VALUES (209, '2020020422114112162683', 79, 8.00, 12.00, 5);
INSERT INTO `product_order_detail` VALUES (210, '2020020422114630173673', 73, 13.00, 28.00, 8);
INSERT INTO `product_order_detail` VALUES (211, '2020020422114630173673', 101, 5.00, 8.00, 3);
INSERT INTO `product_order_detail` VALUES (212, '2020020422114630173673', 160, 1.00, 2.00, 2);
INSERT INTO `product_order_detail` VALUES (213, '2020020422114630173673', 124, 34.00, 45.00, 1);
INSERT INTO `product_order_detail` VALUES (214, '2020020422114630173673', 100, 4.00, 5.00, 7);
INSERT INTO `product_order_detail` VALUES (215, '2020020422115149107555', 81, 12.00, 15.00, 9);
INSERT INTO `product_order_detail` VALUES (216, '2020020422115149107555', 159, 11.00, 16.00, 9);
INSERT INTO `product_order_detail` VALUES (217, '2020020422115149107555', 78, 12.00, 15.00, 7);
INSERT INTO `product_order_detail` VALUES (218, '2020020422115149107555', 105, 9.00, 11.00, 5);
INSERT INTO `product_order_detail` VALUES (219, '2020020515480853100521', 155, 100.00, 120.00, 8);
INSERT INTO `product_order_detail` VALUES (220, '2020020515480853100521', 126, 20.00, 50.00, 6);
INSERT INTO `product_order_detail` VALUES (221, '2020020515481348194285', 136, 0.01, 99999.00, 8);
INSERT INTO `product_order_detail` VALUES (222, '2020020515481348194285', 95, 0.00, 0.00, 9);
INSERT INTO `product_order_detail` VALUES (223, '2020020515481348194285', 160, 1.00, 2.00, 7);
INSERT INTO `product_order_detail` VALUES (224, '2020020515481838122512', 122, 12.00, 18.00, 19);
INSERT INTO `product_order_detail` VALUES (225, '2020020515481838122512', 116, 5.00, 20.00, 4);
INSERT INTO `product_order_detail` VALUES (226, '2020020515481838122512', 95, 0.00, 0.00, 5);
INSERT INTO `product_order_detail` VALUES (227, '2020020515481838122512', 129, 25.00, 19.90, 7);
INSERT INTO `product_order_detail` VALUES (228, '2020020515481838122512', 108, 10.00, 15.00, 4);
INSERT INTO `product_order_detail` VALUES (229, '2020020515482352166635', 156, 999.00, 1200.00, 1);
INSERT INTO `product_order_detail` VALUES (230, '2020020515482352166635', 123, 56.00, 67.00, 3);
INSERT INTO `product_order_detail` VALUES (231, '2020020515482823120026', 152, 12000.00, 20000.00, 4);
INSERT INTO `product_order_detail` VALUES (232, '2020020515482823120026', 112, 199.00, 299.00, 2);
INSERT INTO `product_order_detail` VALUES (233, '2020020515482823120026', 156, 999.00, 1200.00, 5);
INSERT INTO `product_order_detail` VALUES (234, '2020020515482823120026', 115, 9.90, 10.00, 9);
INSERT INTO `product_order_detail` VALUES (235, '2020020515482823120026', 157, 69.00, 119.00, 4);
INSERT INTO `product_order_detail` VALUES (236, '2020020515482823120026', 142, 23.00, 25.00, 6);
INSERT INTO `product_order_detail` VALUES (237, '2020020515483326175780', 86, 3.00, 6.00, 7);
INSERT INTO `product_order_detail` VALUES (238, '2020020515483326175780', 148, 10.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (239, '2020020515483326175780', 146, 1.00, 4.00, 5);
INSERT INTO `product_order_detail` VALUES (240, '2020020515483326175780', 109, 10.00, 20.00, 4);
INSERT INTO `product_order_detail` VALUES (241, '2020020515483326175780', 106, 120.00, 99.00, 6);
INSERT INTO `product_order_detail` VALUES (242, '2020020515483326175780', 144, 43.00, 11.00, 3);
INSERT INTO `product_order_detail` VALUES (243, '2020020515483817164685', 79, 8.00, 12.00, 6);
INSERT INTO `product_order_detail` VALUES (244, '2020020515483817164685', 98, 25.50, 50.00, 10);
INSERT INTO `product_order_detail` VALUES (245, '2020020515483817164685', 147, 10.00, 20.00, 7);
INSERT INTO `product_order_detail` VALUES (246, '2020020515484327165060', 119, 3.00, 5.00, 8);
INSERT INTO `product_order_detail` VALUES (247, '2020020515484327165060', 104, 9.90, 10.00, 3);
INSERT INTO `product_order_detail` VALUES (248, '2020020515484327165060', 109, 10.00, 20.00, 3);
INSERT INTO `product_order_detail` VALUES (249, '2020020515484327165060', 156, 999.00, 1200.00, 8);
INSERT INTO `product_order_detail` VALUES (250, '2020020515484327165060', 130, 2.00, 5.00, 2);
INSERT INTO `product_order_detail` VALUES (251, '2020020515484327165060', 83, 16.00, 28.00, 10);
INSERT INTO `product_order_detail` VALUES (252, '2020020515484859170638', 83, 16.00, 28.00, 6);
INSERT INTO `product_order_detail` VALUES (253, '2020020515485349146783', 153, 89.00, 123.50, 8);
INSERT INTO `product_order_detail` VALUES (254, '2020020515485349146783', 137, 28.00, 30.00, 10);
INSERT INTO `product_order_detail` VALUES (255, '2020020515485349146783', 73, 13.00, 28.00, 5);
INSERT INTO `product_order_detail` VALUES (256, '2020020515485349146783', 100, 4.00, 5.00, 1);
INSERT INTO `product_order_detail` VALUES (257, '2020020515485833127921', 146, 1.00, 4.00, 4);
INSERT INTO `product_order_detail` VALUES (258, '2020020515490321131944', 79, 8.00, 12.00, 6);
INSERT INTO `product_order_detail` VALUES (259, '2020020515490835120363', 80, 12.00, 18.00, 19);
INSERT INTO `product_order_detail` VALUES (260, '2020020515490835120363', 71, 15.00, 21.00, 9);
INSERT INTO `product_order_detail` VALUES (261, '2020020515490835120363', 86, 3.00, 6.00, 7);
INSERT INTO `product_order_detail` VALUES (262, '2020020515490835120363', 136, 0.01, 99999.00, 10);
INSERT INTO `product_order_detail` VALUES (263, '2020020515490835120363', 120, 99.00, 76.00, 9);
INSERT INTO `product_order_detail` VALUES (264, '2020020515491316126470', 160, 1.00, 2.00, 9);
INSERT INTO `product_order_detail` VALUES (265, '2020020515491316126470', 107, 15.00, 25.00, 3);
INSERT INTO `product_order_detail` VALUES (266, '2020020515491316126470', 95, 0.00, 0.00, 2);
INSERT INTO `product_order_detail` VALUES (267, '2020020515491845193919', 78, 12.00, 15.00, 2);
INSERT INTO `product_order_detail` VALUES (268, '2020020610260264169387', 148, 10.00, 20.00, 9);
INSERT INTO `product_order_detail` VALUES (269, '2020020610261350198368', 96, 19.90, 29.90, 6);
INSERT INTO `product_order_detail` VALUES (270, '2020020610261350198368', 121, 6.60, 9.90, 9);
INSERT INTO `product_order_detail` VALUES (271, '2020020610261350198368', 158, 28.00, 35.00, 10);
INSERT INTO `product_order_detail` VALUES (272, '2020020610261350198368', 72, 66.50, 88.00, 2);
INSERT INTO `product_order_detail` VALUES (273, '2020020610261350198368', 143, 10.00, 12.00, 1);
INSERT INTO `product_order_detail` VALUES (274, '2020020610262322181412', 154, 99.00, 130.00, 4);
INSERT INTO `product_order_detail` VALUES (275, '2020020610262322181412', 85, 12.00, 16.00, 1);
INSERT INTO `product_order_detail` VALUES (276, '2020020610262322181412', 95, 0.00, 0.00, 3);
INSERT INTO `product_order_detail` VALUES (277, '2020020610262322181412', 109, 10.00, 20.00, 7);
INSERT INTO `product_order_detail` VALUES (278, '2020020610263325149069', 101, 6.00, 50.00, 7);
INSERT INTO `product_order_detail` VALUES (279, '2020020610263325149069', 75, 12.00, 16.00, 2);
INSERT INTO `product_order_detail` VALUES (280, '2020020610263325149069', 72, 66.50, 88.00, 7);
INSERT INTO `product_order_detail` VALUES (281, '2020020610263325149069', 127, 9.00, 12.00, 9);
INSERT INTO `product_order_detail` VALUES (282, '2020020610263325149069', 138, 28.00, 31.00, 9);
INSERT INTO `product_order_detail` VALUES (283, '2020020610264348149936', 106, 120.00, 99.00, 8);
INSERT INTO `product_order_detail` VALUES (284, '2020020610264348149936', 163, 7.91, 121.00, 1);
INSERT INTO `product_order_detail` VALUES (285, '2020020610264348149936', 120, 99.00, 76.00, 6);
INSERT INTO `product_order_detail` VALUES (286, '2020020610264348149936', 97, 80.00, 5.00, 1);
INSERT INTO `product_order_detail` VALUES (287, '2020020610265359184958', 157, 69.00, 119.00, 6);
INSERT INTO `product_order_detail` VALUES (288, '2020020610265359184958', 156, 999.00, 1200.00, 1);
INSERT INTO `product_order_detail` VALUES (289, '2020020610265359184958', 152, 120.00, 600.00, 5);
INSERT INTO `product_order_detail` VALUES (290, '2020020610265359184958', 146, 1.00, 4.00, 7);
INSERT INTO `product_order_detail` VALUES (291, '2020020610265359184958', 110, 199.00, 299.00, 5);
INSERT INTO `product_order_detail` VALUES (292, '2020020610265359184958', 109, 10.00, 20.00, 5);
INSERT INTO `product_order_detail` VALUES (293, '2020020610270352127981', 128, 16.00, 14.00, 1);
INSERT INTO `product_order_detail` VALUES (294, '2020020610270352127981', 78, 12.00, 15.00, 2);
INSERT INTO `product_order_detail` VALUES (295, '2020020610270352127981', 130, 2.00, 5.00, 4);
INSERT INTO `product_order_detail` VALUES (296, '2020020610270352127981', 125, 18.00, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (297, '2020020610270352127981', 117, 12.00, 12.00, 1);
INSERT INTO `product_order_detail` VALUES (298, '2020020610271344189142', 150, 50.00, 60.00, 6);
INSERT INTO `product_order_detail` VALUES (299, '2020020610272342170227', 137, 28.00, 30.00, 4);
INSERT INTO `product_order_detail` VALUES (300, '2020020610272342170227', 142, 23.00, 25.00, 10);
INSERT INTO `product_order_detail` VALUES (301, '2020020610273334165530', 148, 10.00, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (302, '2020020610273334165530', 72, 66.50, 88.00, 6);
INSERT INTO `product_order_detail` VALUES (303, '2020020610273334165530', 150, 50.00, 60.00, 10);
INSERT INTO `product_order_detail` VALUES (304, '2020020610273334165530', 130, 2.00, 5.00, 7);
INSERT INTO `product_order_detail` VALUES (305, '2020020610273334165530', 126, 20.00, 50.00, 1);
INSERT INTO `product_order_detail` VALUES (306, '2020020610273334165530', 129, 25.00, 19.90, 8);
INSERT INTO `product_order_detail` VALUES (307, '2020020610274358104537', 128, 16.00, 14.00, 7);
INSERT INTO `product_order_detail` VALUES (308, '2020020610275361107233', 86, 3.00, 6.00, 7);
INSERT INTO `product_order_detail` VALUES (309, '2020020610275361107233', 163, 7.91, 121.00, 4);
INSERT INTO `product_order_detail` VALUES (310, '2020020610275361107233', 97, 80.00, 5.00, 3);
INSERT INTO `product_order_detail` VALUES (311, '2020020610275361107233', 136, 0.01, 99999.00, 9);
INSERT INTO `product_order_detail` VALUES (312, '2020020610275361107233', 125, 18.00, 20.00, 3);
INSERT INTO `product_order_detail` VALUES (313, '2020020610280330129024', 98, 25.50, 50.00, 3);
INSERT INTO `product_order_detail` VALUES (314, '2020020610280330129024', 121, 6.60, 9.90, 4);
INSERT INTO `product_order_detail` VALUES (315, '2020020610280330129024', 158, 28.00, 35.00, 2);
INSERT INTO `product_order_detail` VALUES (316, '2020020610281316169436', 135, 5.00, 10.00, 6);
INSERT INTO `product_order_detail` VALUES (317, '2020020610282364195050', 117, 12.00, 12.00, 6);
INSERT INTO `product_order_detail` VALUES (318, '2020020610282364195050', 105, 9.00, 11.00, 8);
INSERT INTO `product_order_detail` VALUES (319, '2020020610282364195050', 118, 25.00, 30.00, 6);
INSERT INTO `product_order_detail` VALUES (320, '202002061028331127717', 130, 2.00, 5.00, 2);
INSERT INTO `product_order_detail` VALUES (321, '202002061028331127717', 76, 8.00, 12.00, 2);
INSERT INTO `product_order_detail` VALUES (322, '2020020610284341162248', 112, 199.00, 299.00, 2);
INSERT INTO `product_order_detail` VALUES (323, '2020020610284341162248', 79, 8.00, 12.00, 4);
INSERT INTO `product_order_detail` VALUES (324, '2020020610285322109773', 72, 66.50, 88.00, 6);
INSERT INTO `product_order_detail` VALUES (325, '2020020610285322109773', 98, 25.50, 50.00, 2);
INSERT INTO `product_order_detail` VALUES (326, '2020020610285322109773', 115, 9.90, 10.00, 3);
INSERT INTO `product_order_detail` VALUES (327, '2020020610285322109773', 76, 8.00, 12.00, 6);
INSERT INTO `product_order_detail` VALUES (328, '2020020610290346179646', 115, 9.90, 10.00, 5);
INSERT INTO `product_order_detail` VALUES (329, '2020020610291323175484', 99, 15.00, 30.00, 5);
INSERT INTO `product_order_detail` VALUES (330, '2020020610291323175484', 157, 69.00, 119.00, 8);
INSERT INTO `product_order_detail` VALUES (331, '2020020610292335186300', 102, 59.00, 89.00, 7);
INSERT INTO `product_order_detail` VALUES (332, '2020020610292335186300', 125, 18.00, 20.00, 6);
INSERT INTO `product_order_detail` VALUES (333, '2020020610292335186300', 159, 11.00, 16.00, 10);
INSERT INTO `product_order_detail` VALUES (334, '2020020610292335186300', 106, 120.00, 99.00, 7);
INSERT INTO `product_order_detail` VALUES (335, '2020020610292335186300', 126, 20.00, 50.00, 8);
INSERT INTO `product_order_detail` VALUES (336, '2020020610292335186300', 111, 28.00, 35.00, 5);
INSERT INTO `product_order_detail` VALUES (337, '2020020610293332154066', 156, 999.00, 1200.00, 5);
INSERT INTO `product_order_detail` VALUES (338, '2020020610293332154066', 103, 100.00, 399.00, 10);
INSERT INTO `product_order_detail` VALUES (339, '2020020610293332154066', 116, 5.00, 20.00, 10);
INSERT INTO `product_order_detail` VALUES (340, '2020020610293332154066', 102, 59.00, 89.00, 1);
INSERT INTO `product_order_detail` VALUES (341, '2020020610293332154066', 104, 9.90, 10.00, 5);
INSERT INTO `product_order_detail` VALUES (342, '2020020610293332154066', 76, 8.00, 12.00, 10);
INSERT INTO `product_order_detail` VALUES (343, '2020020610294323177677', 100, 4.00, 5.00, 7);
INSERT INTO `product_order_detail` VALUES (344, '2020020610294323177677', 124, 34.00, 45.00, 8);
INSERT INTO `product_order_detail` VALUES (345, '2020020610294323177677', 138, 28.00, 31.00, 3);
INSERT INTO `product_order_detail` VALUES (346, '2020020610294323177677', 131, 20.00, 10.00, 2);
INSERT INTO `product_order_detail` VALUES (347, '2020020610294323177677', 95, 0.00, 0.00, 6);
INSERT INTO `product_order_detail` VALUES (348, '2020020617415118132474', 144, 43.00, 11.00, 5);
INSERT INTO `product_order_detail` VALUES (349, '2020020617415118132474', 149, 60.00, 80.00, 8);
INSERT INTO `product_order_detail` VALUES (350, '2020020617415118132474', 158, 28.00, 35.00, 7);
INSERT INTO `product_order_detail` VALUES (351, '2020020617415118132474', 159, 11.00, 16.00, 10);
INSERT INTO `product_order_detail` VALUES (352, '2020020617415118132474', 129, 25.00, 19.90, 7);
INSERT INTO `product_order_detail` VALUES (353, '2020020617415227119724', 107, 15.00, 25.00, 3);
INSERT INTO `product_order_detail` VALUES (354, '2020020617415227119724', 129, 25.00, 19.90, 1);
INSERT INTO `product_order_detail` VALUES (355, '2020020617415227119724', 126, 20.00, 50.00, 7);
INSERT INTO `product_order_detail` VALUES (356, '2020020617415253159644', 137, 28.00, 30.00, 10);
INSERT INTO `product_order_detail` VALUES (357, '2020020617415362180249', 136, 0.01, 99999.00, 5);
INSERT INTO `product_order_detail` VALUES (358, '2020020617415362180249', 96, 19.90, 29.90, 7);
INSERT INTO `product_order_detail` VALUES (359, '2020020617415362180249', 99, 15.00, 30.00, 3);
INSERT INTO `product_order_detail` VALUES (360, '2020020617415362180249', 143, 10.00, 12.00, 7);
INSERT INTO `product_order_detail` VALUES (361, '2020020617415320125263', 78, 12.00, 15.00, 4);
INSERT INTO `product_order_detail` VALUES (362, '2020020617415320125263', 121, 6.60, 9.90, 4);
INSERT INTO `product_order_detail` VALUES (363, '2020020617415320125263', 98, 25.50, 50.00, 5);
INSERT INTO `product_order_detail` VALUES (364, '2020020617415320125263', 158, 28.00, 35.00, 10);
INSERT INTO `product_order_detail` VALUES (365, '2020020617415320125263', 111, 28.00, 35.00, 7);
INSERT INTO `product_order_detail` VALUES (366, '2020020617415464156248', 133, 20.00, 15.00, 9);
INSERT INTO `product_order_detail` VALUES (367, '2020020617415464156248', 86, 3.00, 6.00, 4);
INSERT INTO `product_order_detail` VALUES (368, '2020020617415464156248', 76, 8.00, 12.00, 6);
INSERT INTO `product_order_detail` VALUES (369, '2020020617415464156248', 126, 20.00, 50.00, 5);
INSERT INTO `product_order_detail` VALUES (370, '2020020617415464156248', 160, 1.00, 2.00, 2);
INSERT INTO `product_order_detail` VALUES (371, '2020020617415462197911', 141, 0.10, 88888.00, 5);
INSERT INTO `product_order_detail` VALUES (372, '2020020617415462197911', 130, 2.00, 5.00, 7);
INSERT INTO `product_order_detail` VALUES (373, '2020020617415538141416', 133, 20.00, 15.00, 8);
INSERT INTO `product_order_detail` VALUES (374, '2020020617415538141416', 95, 0.00, 0.00, 9);
INSERT INTO `product_order_detail` VALUES (375, '2020020617415547148677', 122, 12.00, 18.00, 6);
INSERT INTO `product_order_detail` VALUES (376, '2020020617415547148677', 110, 199.00, 299.00, 8);
INSERT INTO `product_order_detail` VALUES (377, '2020020617415547148677', 130, 2.00, 5.00, 5);
INSERT INTO `product_order_detail` VALUES (378, '2020020617415547148677', 148, 10.00, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (379, '2020020617415547148677', 156, 999.00, 1200.00, 10);
INSERT INTO `product_order_detail` VALUES (380, '2020020617415547148677', 139, 12.00, 14.00, 5);
INSERT INTO `product_order_detail` VALUES (381, '2020020617415619183244', 110, 199.00, 299.00, 8);
INSERT INTO `product_order_detail` VALUES (382, '2020020617415619183244', 132, 10.00, 15.00, 8);
INSERT INTO `product_order_detail` VALUES (383, '2020020617415619183244', 119, 3.00, 5.00, 8);
INSERT INTO `product_order_detail` VALUES (384, '2020020617415641153495', 131, 20.00, 10.00, 5);
INSERT INTO `product_order_detail` VALUES (385, '2020020617415641153495', 105, 9.00, 11.00, 5);
INSERT INTO `product_order_detail` VALUES (386, '2020020617415641153495', 139, 12.00, 14.00, 1);
INSERT INTO `product_order_detail` VALUES (387, '2020020617415641153495', 157, 69.00, 119.00, 10);
INSERT INTO `product_order_detail` VALUES (388, '2020020617415755190592', 117, 12.00, 12.00, 3);
INSERT INTO `product_order_detail` VALUES (389, '2020020617415755190592', 130, 2.00, 5.00, 9);
INSERT INTO `product_order_detail` VALUES (390, '2020020617415755190592', 126, 20.00, 50.00, 9);
INSERT INTO `product_order_detail` VALUES (391, '2020020617415755190592', 95, 0.00, 0.00, 6);
INSERT INTO `product_order_detail` VALUES (392, '2020020617415755190592', 159, 11.00, 16.00, 6);
INSERT INTO `product_order_detail` VALUES (393, '2020020617415725101744', 163, 7.91, 121.00, 8);
INSERT INTO `product_order_detail` VALUES (394, '2020020617415725101744', 136, 0.01, 99999.00, 3);
INSERT INTO `product_order_detail` VALUES (395, '2020020617415725101744', 135, 5.00, 10.00, 1);
INSERT INTO `product_order_detail` VALUES (396, '2020020617415725101744', 155, 100.00, 120.00, 8);
INSERT INTO `product_order_detail` VALUES (397, '2020020617415725101744', 74, 12.00, 16.00, 4);
INSERT INTO `product_order_detail` VALUES (398, '2020020617451823107363', 84, 21.00, 25.00, 9);
INSERT INTO `product_order_detail` VALUES (399, '2020020617451823107363', 105, 9.00, 11.00, 1);
INSERT INTO `product_order_detail` VALUES (400, '2020020617451823107363', 76, 8.00, 12.00, 10);
INSERT INTO `product_order_detail` VALUES (401, '2020020617451823107363', 124, 34.00, 45.00, 7);
INSERT INTO `product_order_detail` VALUES (402, '2020020617451963170774', 138, 28.00, 31.00, 8);
INSERT INTO `product_order_detail` VALUES (403, '2020020617451963170774', 139, 12.00, 14.00, 7);
INSERT INTO `product_order_detail` VALUES (404, '2020020617452059189043', 115, 9.90, 10.00, 4);
INSERT INTO `product_order_detail` VALUES (405, '2020020617452059189043', 114, 33.30, 99.90, 6);
INSERT INTO `product_order_detail` VALUES (406, '202002061745209155180', 97, 80.00, 5.00, 10);
INSERT INTO `product_order_detail` VALUES (407, '202002061745209155180', 108, 10.00, 15.00, 8);
INSERT INTO `product_order_detail` VALUES (408, '202002061745209155180', 149, 60.00, 80.00, 1);
INSERT INTO `product_order_detail` VALUES (409, '202002061745209155180', 106, 120.00, 99.00, 4);
INSERT INTO `product_order_detail` VALUES (410, '202002061745209155180', 105, 9.00, 11.00, 8);
INSERT INTO `product_order_detail` VALUES (411, '2020020617452147165034', 84, 21.00, 25.00, 5);
INSERT INTO `product_order_detail` VALUES (412, '2020020617452147165034', 155, 100.00, 120.00, 2);
INSERT INTO `product_order_detail` VALUES (413, '2020020617452226189376', 126, 20.00, 50.00, 4);
INSERT INTO `product_order_detail` VALUES (414, '2020020617452226189376', 149, 60.00, 80.00, 4);
INSERT INTO `product_order_detail` VALUES (415, '2020020617452226189376', 134, 8.00, 12.00, 10);
INSERT INTO `product_order_detail` VALUES (416, '2020020617452226189376', 116, 5.00, 20.00, 3);
INSERT INTO `product_order_detail` VALUES (417, '2020020617452351168743', 115, 9.90, 10.00, 4);
INSERT INTO `product_order_detail` VALUES (418, '2020020617452351168743', 84, 21.00, 25.00, 1);
INSERT INTO `product_order_detail` VALUES (419, '2020020617452351168743', 86, 3.00, 6.00, 1);
INSERT INTO `product_order_detail` VALUES (420, '202002061745241138612', 98, 25.50, 50.00, 10);
INSERT INTO `product_order_detail` VALUES (421, '202002061745241138612', 156, 999.00, 1200.00, 2);
INSERT INTO `product_order_detail` VALUES (422, '202002061745241138612', 86, 3.00, 6.00, 1);
INSERT INTO `product_order_detail` VALUES (423, '202002061745241138612', 75, 12.00, 16.00, 4);
INSERT INTO `product_order_detail` VALUES (424, '202002061745241138612', 74, 12.00, 16.00, 5);
INSERT INTO `product_order_detail` VALUES (425, '202002061745241138612', 133, 20.00, 15.00, 8);
INSERT INTO `product_order_detail` VALUES (426, '202002061745251181601', 112, 199.00, 299.00, 9);
INSERT INTO `product_order_detail` VALUES (427, '202002061745251181601', 143, 10.00, 12.00, 3);
INSERT INTO `product_order_detail` VALUES (428, '202002061745251181601', 123, 56.00, 67.00, 7);
INSERT INTO `product_order_detail` VALUES (429, '202002061745251181601', 104, 9.90, 10.00, 9);
INSERT INTO `product_order_detail` VALUES (430, '2020020617452557139187', 75, 12.00, 16.00, 9);
INSERT INTO `product_order_detail` VALUES (431, '2020020617452557139187', 101, 6.00, 50.00, 4);
INSERT INTO `product_order_detail` VALUES (432, '2020020617452557139187', 71, 15.00, 21.00, 1);
INSERT INTO `product_order_detail` VALUES (433, '2020020617452557139187', 105, 9.00, 11.00, 1);
INSERT INTO `product_order_detail` VALUES (434, '2020020617452557139187', 111, 28.00, 35.00, 6);
INSERT INTO `product_order_detail` VALUES (435, '2020020617452649113732', 124, 34.00, 45.00, 4);
INSERT INTO `product_order_detail` VALUES (436, '2020020617452739155492', 127, 9.00, 12.00, 8);
INSERT INTO `product_order_detail` VALUES (437, '2020020617452818181646', 72, 66.50, 88.00, 6);
INSERT INTO `product_order_detail` VALUES (438, '2020020617452818181646', 157, 69.00, 119.00, 10);
INSERT INTO `product_order_detail` VALUES (439, '2020020617452818181646', 109, 10.00, 20.00, 3);
INSERT INTO `product_order_detail` VALUES (440, '2020020617452818181646', 124, 34.00, 45.00, 7);
INSERT INTO `product_order_detail` VALUES (441, '2020020617452818181646', 78, 12.00, 15.00, 8);
INSERT INTO `product_order_detail` VALUES (442, '2020020617452947146565', 124, 34.00, 45.00, 1);
INSERT INTO `product_order_detail` VALUES (443, '2020020617452947146565', 101, 6.00, 50.00, 1);
INSERT INTO `product_order_detail` VALUES (444, '2020020617452947146565', 148, 10.00, 20.00, 7);
INSERT INTO `product_order_detail` VALUES (445, '2020020617452947146565', 81, 12.00, 15.00, 2);
INSERT INTO `product_order_detail` VALUES (446, '2020020617452930143805', 150, 50.00, 60.00, 7);
INSERT INTO `product_order_detail` VALUES (447, '2020020617452930143805', 146, 1.00, 4.00, 10);
INSERT INTO `product_order_detail` VALUES (448, '2020020617452930143805', 102, 59.00, 89.00, 6);
INSERT INTO `product_order_detail` VALUES (449, '2020020617452930143805', 125, 18.00, 20.00, 6);
INSERT INTO `product_order_detail` VALUES (450, '2020020617453044119793', 143, 10.00, 12.00, 9);
INSERT INTO `product_order_detail` VALUES (451, '2020020617453044119793', 132, 10.00, 15.00, 5);
INSERT INTO `product_order_detail` VALUES (452, '2020020617453118163466', 136, 0.01, 99999.00, 8);
INSERT INTO `product_order_detail` VALUES (453, '2020020617453118163466', 75, 12.00, 16.00, 2);
INSERT INTO `product_order_detail` VALUES (454, '2020020617453118163466', 95, 0.00, 0.00, 4);
INSERT INTO `product_order_detail` VALUES (455, '2020020617453254123594', 105, 9.00, 11.00, 4);
INSERT INTO `product_order_detail` VALUES (456, '2020020617453254123594', 134, 8.00, 12.00, 4);
INSERT INTO `product_order_detail` VALUES (457, '2020020617453254123594', 114, 33.30, 99.90, 10);
INSERT INTO `product_order_detail` VALUES (458, '2020020617453254123594', 136, 0.01, 99999.00, 7);
INSERT INTO `product_order_detail` VALUES (459, '2020020617471723116954', 98, 25.50, 50.00, 3);
INSERT INTO `product_order_detail` VALUES (460, '2020020617471723116954', 142, 23.00, 25.00, 5);
INSERT INTO `product_order_detail` VALUES (461, '2020020617471723116954', 129, 25.00, 19.90, 8);
INSERT INTO `product_order_detail` VALUES (462, '2020020617471723116954', 157, 69.00, 119.00, 3);
INSERT INTO `product_order_detail` VALUES (463, '2020020617471840135123', 142, 23.00, 25.00, 1);
INSERT INTO `product_order_detail` VALUES (464, '2020020617471913129151', 106, 120.00, 99.00, 8);
INSERT INTO `product_order_detail` VALUES (465, '2020020617471913129151', 124, 34.00, 45.00, 3);
INSERT INTO `product_order_detail` VALUES (466, '2020020617471913129151', 79, 8.00, 12.00, 10);
INSERT INTO `product_order_detail` VALUES (467, '2020020617471913129151', 107, 15.00, 25.00, 10);
INSERT INTO `product_order_detail` VALUES (468, '2020020617471913129151', 83, 16.00, 28.00, 2);
INSERT INTO `product_order_detail` VALUES (469, '2020020617472026197481', 154, 99.00, 130.00, 3);
INSERT INTO `product_order_detail` VALUES (470, '2020020617472026197481', 97, 80.00, 5.00, 3);
INSERT INTO `product_order_detail` VALUES (471, '2020020617472165169166', 125, 18.00, 20.00, 10);
INSERT INTO `product_order_detail` VALUES (472, '2020020617472165169166', 106, 120.00, 99.00, 10);
INSERT INTO `product_order_detail` VALUES (473, '2020020617472231121097', 109, 10.00, 20.00, 8);
INSERT INTO `product_order_detail` VALUES (474, '2020020617472231121097', 133, 20.00, 15.00, 5);
INSERT INTO `product_order_detail` VALUES (475, '2020020617472231121097', 157, 69.00, 119.00, 4);
INSERT INTO `product_order_detail` VALUES (476, '2020020617472231121097', 105, 9.00, 11.00, 8);
INSERT INTO `product_order_detail` VALUES (477, '2020020617472231121097', 98, 25.50, 50.00, 10);
INSERT INTO `product_order_detail` VALUES (478, '2020020617472319106336', 77, 6.00, 10.00, 9);
INSERT INTO `product_order_detail` VALUES (479, '2020020617472319106336', 158, 28.00, 35.00, 8);
INSERT INTO `product_order_detail` VALUES (480, '2020020617472319106336', 105, 9.00, 11.00, 2);
INSERT INTO `product_order_detail` VALUES (481, '2020020617472319106336', 142, 23.00, 25.00, 10);
INSERT INTO `product_order_detail` VALUES (482, '2020020617480514188254', 107, 15.00, 25.00, 5);
INSERT INTO `product_order_detail` VALUES (483, '2020020617480514188254', 121, 6.60, 9.90, 9);
INSERT INTO `product_order_detail` VALUES (484, '2020020617480514188254', 122, 12.00, 18.00, 3);
INSERT INTO `product_order_detail` VALUES (485, '2020020617480633172480', 135, 5.00, 10.00, 6);
INSERT INTO `product_order_detail` VALUES (486, '2020020617480633172480', 126, 20.00, 50.00, 2);
INSERT INTO `product_order_detail` VALUES (487, '2020020617480633172480', 77, 6.00, 10.00, 6);
INSERT INTO `product_order_detail` VALUES (488, '2020020617480633172480', 84, 21.00, 25.00, 2);
INSERT INTO `product_order_detail` VALUES (489, '2020020617480722164762', 72, 66.50, 88.00, 5);
INSERT INTO `product_order_detail` VALUES (490, '2020020617480859180400', 134, 8.00, 12.00, 8);
INSERT INTO `product_order_detail` VALUES (491, '2020020617480859180400', 116, 5.00, 20.00, 3);
INSERT INTO `product_order_detail` VALUES (492, '2020020617480859180400', 144, 43.00, 11.00, 4);
INSERT INTO `product_order_detail` VALUES (493, '2020020617480859180400', 123, 56.00, 67.00, 3);
INSERT INTO `product_order_detail` VALUES (494, '2020020617480946114557', 127, 9.00, 12.00, 8);
INSERT INTO `product_order_detail` VALUES (495, '2020020617481062108640', 79, 8.00, 12.00, 6);
INSERT INTO `product_order_detail` VALUES (496, '2020020617481062108640', 97, 80.00, 5.00, 7);
INSERT INTO `product_order_detail` VALUES (497, '2020020617481062108640', 72, 66.50, 88.00, 8);
INSERT INTO `product_order_detail` VALUES (498, '2020020617481115109847', 98, 25.50, 50.00, 10);
INSERT INTO `product_order_detail` VALUES (499, '2020020617481246161693', 150, 50.00, 60.00, 2);
INSERT INTO `product_order_detail` VALUES (500, '2020020617481246161693', 127, 9.00, 12.00, 6);
INSERT INTO `product_order_detail` VALUES (501, '2020020617481322183174', 159, 11.00, 16.00, 7);
INSERT INTO `product_order_detail` VALUES (502, '2020020617481445134696', 129, 25.00, 19.90, 1);
INSERT INTO `product_order_detail` VALUES (503, '2020020617481523155156', 139, 12.00, 14.00, 6);
INSERT INTO `product_order_detail` VALUES (504, '2020020617481523155156', 105, 9.00, 11.00, 1);
INSERT INTO `product_order_detail` VALUES (505, '2020020617481650147929', 120, 99.00, 76.00, 3);
INSERT INTO `product_order_detail` VALUES (506, '2020020617481828192394', 86, 3.00, 6.00, 7);
INSERT INTO `product_order_detail` VALUES (507, '2020020617481828192394', 143, 10.00, 12.00, 8);
INSERT INTO `product_order_detail` VALUES (508, '2020020617481828192394', 134, 8.00, 12.00, 4);
INSERT INTO `product_order_detail` VALUES (509, '2020020617481937110231', 135, 5.00, 10.00, 2);
INSERT INTO `product_order_detail` VALUES (510, '2020020617481937110231', 120, 99.00, 76.00, 7);
INSERT INTO `product_order_detail` VALUES (511, '2020020617481937110231', 80, 12.00, 18.00, 8);
INSERT INTO `product_order_detail` VALUES (512, '2020020617482036128446', 159, 11.00, 16.00, 7);
INSERT INTO `product_order_detail` VALUES (513, '2020020617482120148029', 74, 12.00, 16.00, 8);
INSERT INTO `product_order_detail` VALUES (514, '2020020617482222144297', 127, 9.00, 12.00, 8);
INSERT INTO `product_order_detail` VALUES (515, '2020020617482335154411', 101, 6.00, 50.00, 6);
INSERT INTO `product_order_detail` VALUES (516, '2020020617482335154411', 155, 100.00, 120.00, 3);
INSERT INTO `product_order_detail` VALUES (517, '2020020617482462165619', 153, 89.00, 123.50, 1);
INSERT INTO `product_order_detail` VALUES (518, '2020020617482462165619', 144, 43.00, 11.00, 2);
INSERT INTO `product_order_detail` VALUES (519, '2020020617482462165619', 150, 50.00, 60.00, 6);
INSERT INTO `product_order_detail` VALUES (520, '2020020617482521184761', 78, 12.00, 15.00, 9);
INSERT INTO `product_order_detail` VALUES (521, '2020020617482521184761', 100, 4.00, 5.00, 6);
INSERT INTO `product_order_detail` VALUES (522, '2020020617482521184761', 96, 19.90, 29.90, 3);
INSERT INTO `product_order_detail` VALUES (523, '2020020617482647139440', 140, 25.00, 18.00, 4);
INSERT INTO `product_order_detail` VALUES (524, '2020020617482647139440', 147, 10.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (525, '2020020617493158180758', 83, 16.00, 28.00, 8);
INSERT INTO `product_order_detail` VALUES (526, '2020020617493158180758', 160, 1.00, 2.00, 1);
INSERT INTO `product_order_detail` VALUES (527, '2020020617493158180758', 127, 9.00, 12.00, 10);
INSERT INTO `product_order_detail` VALUES (528, '2020020617493158180758', 79, 8.00, 12.00, 10);
INSERT INTO `product_order_detail` VALUES (529, '2020020617494346108271', 140, 25.00, 18.00, 3);
INSERT INTO `product_order_detail` VALUES (530, '2020020617494346108271', 110, 199.00, 299.00, 3);
INSERT INTO `product_order_detail` VALUES (531, '2020020617495543167064', 159, 11.00, 16.00, 7);
INSERT INTO `product_order_detail` VALUES (532, '2020020617500734144171', 131, 20.00, 10.00, 6);
INSERT INTO `product_order_detail` VALUES (533, '2020020617500734144171', 75, 12.00, 16.00, 3);
INSERT INTO `product_order_detail` VALUES (534, '2020020617501913183606', 95, 0.00, 0.00, 5);
INSERT INTO `product_order_detail` VALUES (535, '2020020617501913183606', 154, 99.00, 130.00, 2);
INSERT INTO `product_order_detail` VALUES (536, '2020020617501913183606', 107, 15.00, 25.00, 1);
INSERT INTO `product_order_detail` VALUES (537, '2020020617501913183606', 139, 12.00, 14.00, 8);
INSERT INTO `product_order_detail` VALUES (538, '2020020617503154148712', 127, 9.00, 12.00, 5);
INSERT INTO `product_order_detail` VALUES (539, '2020020617503154148712', 148, 10.00, 20.00, 10);
INSERT INTO `product_order_detail` VALUES (540, '2020020617503154148712', 80, 12.00, 18.00, 5);
INSERT INTO `product_order_detail` VALUES (541, '2020020617503154148712', 142, 23.00, 25.00, 1);
INSERT INTO `product_order_detail` VALUES (542, '2020020617504329181155', 83, 16.00, 28.00, 7);
INSERT INTO `product_order_detail` VALUES (543, '2020020617504329181155', 106, 120.00, 99.00, 9);
INSERT INTO `product_order_detail` VALUES (544, '2020020617504329181155', 133, 20.00, 15.00, 3);
INSERT INTO `product_order_detail` VALUES (545, '2020020617504329181155', 149, 60.00, 80.00, 6);
INSERT INTO `product_order_detail` VALUES (546, '2020020617505544110061', 136, 0.01, 99999.00, 8);
INSERT INTO `product_order_detail` VALUES (547, '2020020617510731129500', 127, 9.00, 12.00, 3);
INSERT INTO `product_order_detail` VALUES (548, '2020020617510731129500', 128, 16.00, 14.00, 9);
INSERT INTO `product_order_detail` VALUES (549, '2020020617510731129500', 160, 1.00, 2.00, 6);
INSERT INTO `product_order_detail` VALUES (550, '2020020617510731129500', 114, 33.30, 99.90, 9);
INSERT INTO `product_order_detail` VALUES (551, '2020020617511917180373', 71, 15.00, 21.00, 1);
INSERT INTO `product_order_detail` VALUES (552, '2020020617511917180373', 121, 6.60, 9.90, 9);
INSERT INTO `product_order_detail` VALUES (553, '2020020617511917180373', 104, 9.90, 10.00, 4);
INSERT INTO `product_order_detail` VALUES (554, '2020020617511917180373', 151, 145.00, 184.00, 7);
INSERT INTO `product_order_detail` VALUES (555, '2020020617513138106270', 109, 10.00, 20.00, 6);
INSERT INTO `product_order_detail` VALUES (556, '2020020617513138106270', 77, 6.00, 10.00, 5);
INSERT INTO `product_order_detail` VALUES (557, '2020020617514322137729', 138, 28.00, 31.00, 7);
INSERT INTO `product_order_detail` VALUES (558, '2020020617514322137729', 74, 12.00, 16.00, 1);
INSERT INTO `product_order_detail` VALUES (559, '2020020617514322137729', 116, 5.00, 20.00, 9);
INSERT INTO `product_order_detail` VALUES (560, '2020020617515525127894', 117, 12.00, 12.00, 5);
INSERT INTO `product_order_detail` VALUES (561, '2020020617515525127894', 135, 5.00, 10.00, 4);
INSERT INTO `product_order_detail` VALUES (562, '2020020617520733173123', 158, 28.00, 35.00, 6);
INSERT INTO `product_order_detail` VALUES (563, '2020020617520733173123', 152, 120.00, 600.00, 6);
INSERT INTO `product_order_detail` VALUES (564, '2020020617520733173123', 155, 100.00, 120.00, 1);
INSERT INTO `product_order_detail` VALUES (565, '2020020617520733173123', 134, 8.00, 12.00, 6);
INSERT INTO `product_order_detail` VALUES (566, '2020020617521965117374', 125, 18.00, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (567, '2020020617521965117374', 103, 100.00, 399.00, 2);
INSERT INTO `product_order_detail` VALUES (568, '2020020617521965117374', 131, 20.00, 10.00, 6);
INSERT INTO `product_order_detail` VALUES (569, '2020020617521965117374', 146, 1.00, 4.00, 6);
INSERT INTO `product_order_detail` VALUES (570, '2020020617523154119175', 148, 10.00, 20.00, 5);
INSERT INTO `product_order_detail` VALUES (571, '2020020617523154119175', 86, 3.00, 6.00, 10);
INSERT INTO `product_order_detail` VALUES (572, '2020020617523154119175', 150, 50.00, 60.00, 2);
INSERT INTO `product_order_detail` VALUES (573, '2020020617523154119175', 131, 20.00, 10.00, 5);
INSERT INTO `product_order_detail` VALUES (574, '2020020715433060147342', 149, 60.00, 80.00, 3);
INSERT INTO `product_order_detail` VALUES (575, '2020020715433060147342', 77, 6.00, 10.00, 4);
INSERT INTO `product_order_detail` VALUES (576, '2020020715433060147342', 73, 13.00, 28.00, 2);
INSERT INTO `product_order_detail` VALUES (577, '2020020715433060147342', 85, 12.00, 16.00, 8);
INSERT INTO `product_order_detail` VALUES (578, '2020020715442163155610', 86, 3.00, 6.00, 2);
INSERT INTO `product_order_detail` VALUES (579, '2020020715451159173145', 154, 99.00, 130.00, 9);
INSERT INTO `product_order_detail` VALUES (580, '2020020715451159173145', 128, 16.00, 14.00, 6);
INSERT INTO `product_order_detail` VALUES (581, '2020020715460119126118', 149, 60.00, 80.00, 1);
INSERT INTO `product_order_detail` VALUES (582, '2020020715460119126118', 137, 28.00, 30.00, 6);
INSERT INTO `product_order_detail` VALUES (583, '2020020715465152195312', 98, 25.50, 50.00, 1);
INSERT INTO `product_order_detail` VALUES (584, '2020020715465152195312', 163, 7.91, 121.00, 10);
INSERT INTO `product_order_detail` VALUES (585, '2020020715474158176941', 149, 60.00, 80.00, 6);
INSERT INTO `product_order_detail` VALUES (586, '2020020715474158176941', 134, 8.00, 12.00, 6);
INSERT INTO `product_order_detail` VALUES (587, '2020020715474158176941', 98, 25.50, 50.00, 1);
INSERT INTO `product_order_detail` VALUES (588, '2020020715474158176941', 123, 56.00, 67.00, 7);
INSERT INTO `product_order_detail` VALUES (589, '2020020715483137120424', 106, 120.00, 99.00, 4);
INSERT INTO `product_order_detail` VALUES (590, '2020020715483137120424', 84, 21.00, 25.00, 10);
INSERT INTO `product_order_detail` VALUES (591, '2020020715492158152088', 74, 12.00, 16.00, 9);
INSERT INTO `product_order_detail` VALUES (592, '2020020715492158152088', 151, 145.00, 184.00, 10);
INSERT INTO `product_order_detail` VALUES (593, '2020020715492158152088', 128, 16.00, 14.00, 10);
INSERT INTO `product_order_detail` VALUES (594, '2020020715501163127554', 143, 10.00, 12.00, 6);
INSERT INTO `product_order_detail` VALUES (624, '2020020814060054136496', 84, 21.00, 25.00, 10);
INSERT INTO `product_order_detail` VALUES (625, '2020020814060054136496', 157, 69.00, 119.00, 3);
INSERT INTO `product_order_detail` VALUES (626, '2020020814060536130828', 116, 5.00, 20.00, 5);
INSERT INTO `product_order_detail` VALUES (627, '2020020814060536130828', 120, 99.00, 76.00, 10);
INSERT INTO `product_order_detail` VALUES (628, '2020020814060536130828', 103, 100.00, 399.00, 8);
INSERT INTO `product_order_detail` VALUES (629, '2020020814060536130828', 148, 10.00, 20.00, 7);
INSERT INTO `product_order_detail` VALUES (630, '2020020814061017111428', 98, 25.50, 50.00, 10);
INSERT INTO `product_order_detail` VALUES (631, '2020020814061017111428', 111, 28.00, 35.00, 7);
INSERT INTO `product_order_detail` VALUES (632, '2020020814061544103027', 85, 12.00, 16.00, 3);
INSERT INTO `product_order_detail` VALUES (633, '2020020814061544103027', 136, 0.01, 99999.00, 10);
INSERT INTO `product_order_detail` VALUES (634, '2020020814061544103027', 83, 16.00, 28.00, 1);
INSERT INTO `product_order_detail` VALUES (635, '2020020814062064113019', 79, 8.00, 12.00, 8);
INSERT INTO `product_order_detail` VALUES (636, '2020020814062064113019', 106, 120.00, 99.00, 3);
INSERT INTO `product_order_detail` VALUES (637, '2020020814062064113019', 144, 43.00, 11.00, 3);
INSERT INTO `product_order_detail` VALUES (638, '2020020814062064113019', 163, 7.91, 121.00, 7);
INSERT INTO `product_order_detail` VALUES (639, '2020020814062513112347', 72, 66.50, 88.00, 4);
INSERT INTO `product_order_detail` VALUES (640, '2020020814062513112347', 79, 8.00, 12.00, 6);
INSERT INTO `product_order_detail` VALUES (641, '2020020814062513112347', 114, 33.30, 99.90, 7);
INSERT INTO `product_order_detail` VALUES (642, '2020020814063029141710', 100, 4.00, 5.00, 8);
INSERT INTO `product_order_detail` VALUES (643, '2020020814063029141710', 163, 7.91, 121.00, 7);
INSERT INTO `product_order_detail` VALUES (644, '2020020814063029141710', 138, 28.00, 31.00, 9);
INSERT INTO `product_order_detail` VALUES (645, '2020020814063537165287', 107, 15.00, 25.00, 4);
INSERT INTO `product_order_detail` VALUES (646, '2020020816110051190961', 107, 15.00, 25.00, 1);
INSERT INTO `product_order_detail` VALUES (647, '2020020816110051190961', 156, 999.00, 1200.00, 1);
INSERT INTO `product_order_detail` VALUES (648, '2020020816110051190961', 118, 25.00, 30.00, 1);
INSERT INTO `product_order_detail` VALUES (649, '2020020816110517195817', 71, 15.00, 21.00, 2);
INSERT INTO `product_order_detail` VALUES (650, '2020020816111014169366', 111, 28.00, 35.00, 1);
INSERT INTO `product_order_detail` VALUES (651, '2020020816111014169366', 104, 9.90, 10.00, 2);
INSERT INTO `product_order_detail` VALUES (652, '2020020816111549163022', 135, 5.00, 10.00, 2);
INSERT INTO `product_order_detail` VALUES (653, '2020020816111549163022', 110, 199.00, 299.00, 1);
INSERT INTO `product_order_detail` VALUES (654, '2020020816112032157930', 122, 12.00, 18.00, 1);
INSERT INTO `product_order_detail` VALUES (655, '2020020816112032157930', 154, 99.00, 130.00, 1);
INSERT INTO `product_order_detail` VALUES (656, '2020020816112032157930', 148, 10.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (657, '2020020816112520134759', 84, 21.00, 25.00, 8);
INSERT INTO `product_order_detail` VALUES (658, '2020020816112520134759', 132, 10.00, 15.00, 2);
INSERT INTO `product_order_detail` VALUES (659, '2020020816113058125057', 77, 6.00, 10.00, 2);
INSERT INTO `product_order_detail` VALUES (660, '2020020905300056162625', 151, 145.00, 184.00, 2);
INSERT INTO `product_order_detail` VALUES (661, '2020020905300056162625', 86, 3.00, 6.00, 1);
INSERT INTO `product_order_detail` VALUES (662, '2020020905310033168944', 138, 28.00, 31.00, 2);
INSERT INTO `product_order_detail` VALUES (663, '2020020905320045149702', 140, 25.00, 18.00, 1);
INSERT INTO `product_order_detail` VALUES (664, '2020020905320045149702', 151, 145.00, 184.00, 1);
INSERT INTO `product_order_detail` VALUES (665, '2020020905330038144219', 76, 8.00, 12.00, 1);
INSERT INTO `product_order_detail` VALUES (666, '2020020905330038144219', 104, 9.90, 10.00, 1);
INSERT INTO `product_order_detail` VALUES (667, '2020020905340029104580', 85, 12.00, 16.00, 1);
INSERT INTO `product_order_detail` VALUES (668, '2020020905340029104580', 106, 120.00, 99.00, 1);
INSERT INTO `product_order_detail` VALUES (669, '2020020905350021176471', 111, 28.00, 35.00, 3);
INSERT INTO `product_order_detail` VALUES (670, '2020020905350021176471', 127, 9.00, 12.00, 2);
INSERT INTO `product_order_detail` VALUES (671, '2020020905360054121016', 138, 28.00, 31.00, 2);
INSERT INTO `product_order_detail` VALUES (672, '2020020905360054121016', 79, 8.00, 12.00, 1);
INSERT INTO `product_order_detail` VALUES (673, '2020020905360054121016', 157, 69.00, 119.00, 1);
INSERT INTO `product_order_detail` VALUES (674, '2020020905370135112389', 73, 13.00, 28.00, 2);
INSERT INTO `product_order_detail` VALUES (675, '2020020905370135112389', 83, 16.00, 28.00, 1);
INSERT INTO `product_order_detail` VALUES (676, '2020020905370135112389', 148, 10.00, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (677, '2020020905380114130074', 124, 34.00, 45.00, 1);
INSERT INTO `product_order_detail` VALUES (678, '2020020905380114130074', 79, 8.00, 12.00, 1);
INSERT INTO `product_order_detail` VALUES (679, '2020020905390154151711', 118, 25.00, 30.00, 2);
INSERT INTO `product_order_detail` VALUES (680, '2020020905390154151711', 119, 3.00, 5.00, 1);
INSERT INTO `product_order_detail` VALUES (681, '2020021005300041145676', 149, 60.00, 80.00, 1);
INSERT INTO `product_order_detail` VALUES (682, '2020021005310058102976', 107, 15.00, 25.00, 3);
INSERT INTO `product_order_detail` VALUES (683, '2020021005310058102976', 152, 120.00, 600.00, 1);
INSERT INTO `product_order_detail` VALUES (684, '2020021005320052153151', 103, 100.00, 399.00, 2);
INSERT INTO `product_order_detail` VALUES (685, '2020021005320052153151', 141, 0.10, 88888.00, 1);
INSERT INTO `product_order_detail` VALUES (686, '2020021005320052153151', 160, 1.00, 2.00, 2);
INSERT INTO `product_order_detail` VALUES (687, '2020021005330044104108', 73, 13.00, 28.00, 1);
INSERT INTO `product_order_detail` VALUES (688, '2020021005330044104108', 141, 0.10, 88888.00, 2);
INSERT INTO `product_order_detail` VALUES (689, '2020021005340036169743', 158, 28.00, 35.00, 2);
INSERT INTO `product_order_detail` VALUES (690, '2020021005340036169743', 122, 12.00, 18.00, 2);
INSERT INTO `product_order_detail` VALUES (691, '2020021005340036169743', 159, 11.00, 16.00, 2);
INSERT INTO `product_order_detail` VALUES (692, '2020021005350042131017', 136, 0.01, 99999.00, 2);
INSERT INTO `product_order_detail` VALUES (693, '2020021005350042131017', 154, 99.00, 130.00, 2);
INSERT INTO `product_order_detail` VALUES (694, '2020021005360059180415', 142, 23.00, 25.00, 1);
INSERT INTO `product_order_detail` VALUES (695, '2020021005360059180415', 122, 12.00, 18.00, 2);
INSERT INTO `product_order_detail` VALUES (696, '2020021005360059180415', 127, 9.00, 12.00, 2);
INSERT INTO `product_order_detail` VALUES (697, '2020021005370041187735', 80, 12.00, 18.00, 2);
INSERT INTO `product_order_detail` VALUES (698, '2020021005380045133191', 102, 59.00, 89.00, 1);
INSERT INTO `product_order_detail` VALUES (699, '2020021005380045133191', 73, 13.00, 28.00, 2);
INSERT INTO `product_order_detail` VALUES (700, '2020021105300055170895', 153, 89.00, 123.50, 1);
INSERT INTO `product_order_detail` VALUES (701, '2020021105310033190053', 100, 4.00, 5.00, 1);
INSERT INTO `product_order_detail` VALUES (702, '2020021105320042100304', 114, 33.30, 99.90, 1);
INSERT INTO `product_order_detail` VALUES (703, '2020021105330041115984', 138, 28.00, 31.00, 2);
INSERT INTO `product_order_detail` VALUES (704, '2020021105330041115984', 125, 18.00, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (705, '2020021105330041115984', 131, 20.00, 10.00, 1);
INSERT INTO `product_order_detail` VALUES (706, '2020021105340027156240', 78, 12.00, 15.00, 1);
INSERT INTO `product_order_detail` VALUES (707, '2020021105350043136440', 158, 28.00, 35.00, 2);
INSERT INTO `product_order_detail` VALUES (708, '2020021105350043136440', 129, 25.00, 19.90, 2);
INSERT INTO `product_order_detail` VALUES (709, '2020021105350043136440', 132, 10.00, 15.00, 1);
INSERT INTO `product_order_detail` VALUES (710, '2020021205300021190593', 113, 9.90, 10.90, 1);
INSERT INTO `product_order_detail` VALUES (711, '2020021205310037166141', 125, 18.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (712, '2020021205310037166141', 112, 199.00, 299.00, 1);
INSERT INTO `product_order_detail` VALUES (713, '2020021205310037166141', 133, 20.00, 15.00, 2);
INSERT INTO `product_order_detail` VALUES (714, '202002120532001183357', 116, 5.00, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (715, '202002120532001183357', 121, 6.60, 9.90, 2);
INSERT INTO `product_order_detail` VALUES (716, '202002120532001183357', 113, 9.90, 10.90, 1);
INSERT INTO `product_order_detail` VALUES (717, '2020021205330055142815', 123, 56.00, 67.00, 1);
INSERT INTO `product_order_detail` VALUES (718, '2020021205330055142815', 107, 15.00, 25.00, 2);
INSERT INTO `product_order_detail` VALUES (719, '2020021205330055142815', 149, 60.00, 80.00, 2);
INSERT INTO `product_order_detail` VALUES (720, '2020021205340028119047', 96, 19.90, 29.90, 2);
INSERT INTO `product_order_detail` VALUES (721, '2020021205350047101224', 103, 100.00, 399.00, 1);
INSERT INTO `product_order_detail` VALUES (722, '2020021205350047101224', 97, 80.00, 5.00, 1);
INSERT INTO `product_order_detail` VALUES (723, '2020021205360043164344', 133, 20.00, 15.00, 1);
INSERT INTO `product_order_detail` VALUES (724, '2020021205370039169005', 156, 999.00, 1200.00, 1);
INSERT INTO `product_order_detail` VALUES (725, '2020021205370039169005', 114, 33.30, 99.90, 2);
INSERT INTO `product_order_detail` VALUES (726, '2020021205380028189175', 131, 20.00, 10.00, 1);
INSERT INTO `product_order_detail` VALUES (727, '2020021205380028189175', 77, 6.00, 10.00, 2);
INSERT INTO `product_order_detail` VALUES (728, '2020021205390043127758', 120, 99.00, 76.00, 1);
INSERT INTO `product_order_detail` VALUES (729, '2020021205390043127758', 132, 10.00, 15.00, 1);
INSERT INTO `product_order_detail` VALUES (730, '2020021205390043127758', 101, 6.00, 50.00, 2);
INSERT INTO `product_order_detail` VALUES (731, '202002120540009198846', 146, 1.00, 4.00, 2);
INSERT INTO `product_order_detail` VALUES (732, '202002120540009198846', 98, 25.50, 50.00, 2);
INSERT INTO `product_order_detail` VALUES (733, '202002120540009198846', 117, 12.00, 12.00, 1);
INSERT INTO `product_order_detail` VALUES (734, '2020021305300038160345', 104, 9.90, 10.00, 1);
INSERT INTO `product_order_detail` VALUES (735, '2020021305300038160345', 130, 2.00, 5.00, 2);
INSERT INTO `product_order_detail` VALUES (736, '2020021305300038160345', 101, 6.00, 50.00, 2);
INSERT INTO `product_order_detail` VALUES (737, '2020021305310044129695', 107, 15.00, 25.00, 2);
INSERT INTO `product_order_detail` VALUES (738, '2020021305310044129695', 142, 23.00, 25.00, 2);
INSERT INTO `product_order_detail` VALUES (739, '2020021305320041159032', 83, 16.00, 28.00, 2);
INSERT INTO `product_order_detail` VALUES (740, '2020021305330051182783', 76, 8.00, 12.00, 2);
INSERT INTO `product_order_detail` VALUES (741, '2020021305340027134103', 78, 12.00, 15.00, 2);
INSERT INTO `product_order_detail` VALUES (742, '2020021305350041198939', 74, 12.00, 16.00, 2);
INSERT INTO `product_order_detail` VALUES (743, '2020021305350041198939', 72, 66.50, 88.00, 2);
INSERT INTO `product_order_detail` VALUES (744, '2020021305360030155993', 124, 34.00, 45.00, 2);
INSERT INTO `product_order_detail` VALUES (745, '2020021305360030155993', 85, 12.00, 16.00, 1);
INSERT INTO `product_order_detail` VALUES (746, '2020021405300028199606', 71, 15.00, 21.00, 2);
INSERT INTO `product_order_detail` VALUES (747, '2020021405300028199606', 134, 8.00, 12.00, 1);
INSERT INTO `product_order_detail` VALUES (748, '2020021405300028199606', 80, 12.00, 18.00, 2);
INSERT INTO `product_order_detail` VALUES (749, '2020021405310036162335', 73, 13.00, 28.00, 1);
INSERT INTO `product_order_detail` VALUES (750, '2020021405320026119640', 109, 10.00, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (751, '2020021405320026119640', 159, 11.00, 16.00, 2);
INSERT INTO `product_order_detail` VALUES (752, '2020021405330035186831', 129, 25.00, 19.90, 2);
INSERT INTO `product_order_detail` VALUES (753, '2020021405330035186831', 163, 7.91, 121.00, 2);
INSERT INTO `product_order_detail` VALUES (754, '2020021405340043125027', 108, 10.00, 15.00, 2);
INSERT INTO `product_order_detail` VALUES (755, '2020021405350018105784', 138, 28.00, 31.00, 1);
INSERT INTO `product_order_detail` VALUES (756, '2020021405350018105784', 99, 15.00, 30.00, 2);
INSERT INTO `product_order_detail` VALUES (757, '2020021405360021109952', 139, 12.00, 14.00, 2);
INSERT INTO `product_order_detail` VALUES (758, '2020021405360021109952', 134, 8.00, 12.00, 1);
INSERT INTO `product_order_detail` VALUES (759, '2020021405360021109952', 111, 28.00, 35.00, 1);
INSERT INTO `product_order_detail` VALUES (760, '2020021405370045126625', 99, 15.00, 30.00, 2);
INSERT INTO `product_order_detail` VALUES (761, '2020021505300057170805', 155, 100.00, 120.00, 1);
INSERT INTO `product_order_detail` VALUES (762, '2020021505310042195133', 124, 34.00, 45.00, 1);
INSERT INTO `product_order_detail` VALUES (763, '2020021505310042195133', 103, 100.00, 399.00, 1);
INSERT INTO `product_order_detail` VALUES (764, '2020021505320047140260', 107, 15.00, 25.00, 1);
INSERT INTO `product_order_detail` VALUES (765, '2020021505320047140260', 79, 8.00, 12.00, 1);
INSERT INTO `product_order_detail` VALUES (766, '2020021505330039134268', 126, 20.00, 50.00, 1);
INSERT INTO `product_order_detail` VALUES (767, '2020021505340058149810', 100, 4.00, 5.00, 2);
INSERT INTO `product_order_detail` VALUES (768, '2020021505340058149810', 112, 199.00, 299.00, 1);
INSERT INTO `product_order_detail` VALUES (769, '2020021505340058149810', 143, 10.00, 12.00, 1);
INSERT INTO `product_order_detail` VALUES (770, '2020021505350060198901', 71, 15.00, 21.00, 2);
INSERT INTO `product_order_detail` VALUES (771, '2020021505350060198901', 117, 12.00, 12.00, 2);
INSERT INTO `product_order_detail` VALUES (772, '2020021505360032154470', 107, 15.00, 25.00, 2);
INSERT INTO `product_order_detail` VALUES (773, '2020021605300038194223', 148, 10.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (774, '2020021605300038194223', 108, 10.00, 15.00, 2);
INSERT INTO `product_order_detail` VALUES (775, '2020021605300038194223', 100, 4.00, 5.00, 2);
INSERT INTO `product_order_detail` VALUES (776, '2020021605310031157472', 72, 66.50, 88.00, 2);
INSERT INTO `product_order_detail` VALUES (777, '2020021605310031157472', 111, 28.00, 35.00, 2);
INSERT INTO `product_order_detail` VALUES (778, '2020021605320051189065', 163, 7.91, 121.00, 1);
INSERT INTO `product_order_detail` VALUES (779, '2020021605330021154756', 153, 89.00, 123.50, 2);
INSERT INTO `product_order_detail` VALUES (780, '2020021605340019197773', 120, 99.00, 76.00, 1);
INSERT INTO `product_order_detail` VALUES (781, '2020021605340019197773', 151, 145.00, 184.00, 2);
INSERT INTO `product_order_detail` VALUES (782, '2020021605340019197773', 84, 21.00, 25.00, 2);
INSERT INTO `product_order_detail` VALUES (783, '2020021605350013106273', 118, 25.00, 30.00, 1);
INSERT INTO `product_order_detail` VALUES (784, '2020021605350013106273', 72, 66.50, 88.00, 1);
INSERT INTO `product_order_detail` VALUES (785, '2020021605360058157481', 153, 89.00, 123.50, 1);
INSERT INTO `product_order_detail` VALUES (786, '2020021605360058157481', 130, 2.00, 5.00, 1);
INSERT INTO `product_order_detail` VALUES (787, '2020021605360058157481', 98, 25.50, 50.00, 2);
INSERT INTO `product_order_detail` VALUES (788, '2020021605370012134601', 83, 16.00, 28.00, 1);
INSERT INTO `product_order_detail` VALUES (789, '2020021605370012134601', 136, 0.01, 99999.00, 2);
INSERT INTO `product_order_detail` VALUES (790, '2020021705300027112788', 74, 12.00, 16.00, 2);
INSERT INTO `product_order_detail` VALUES (791, '2020021705310057136253', 96, 19.90, 29.90, 2);
INSERT INTO `product_order_detail` VALUES (792, '202002170532009159782', 78, 12.00, 15.00, 4);
INSERT INTO `product_order_detail` VALUES (793, '2020021705330031142817', 110, 199.00, 299.00, 1);
INSERT INTO `product_order_detail` VALUES (794, '2020021705330031142817', 159, 11.00, 16.00, 2);
INSERT INTO `product_order_detail` VALUES (795, '2020021705330031142817', 104, 9.90, 10.00, 2);
INSERT INTO `product_order_detail` VALUES (796, '2020021705340047172868', 142, 23.00, 25.00, 1);
INSERT INTO `product_order_detail` VALUES (797, '2020021705340047172868', 104, 9.90, 10.00, 2);
INSERT INTO `product_order_detail` VALUES (798, '2020021705350065123560', 103, 100.00, 399.00, 1);
INSERT INTO `product_order_detail` VALUES (799, '2020021705350065123560', 127, 9.00, 12.00, 2);
INSERT INTO `product_order_detail` VALUES (800, '2020021805300059130733', 139, 12.00, 14.00, 2);
INSERT INTO `product_order_detail` VALUES (801, '2020021805310030126862', 72, 66.50, 88.00, 2);
INSERT INTO `product_order_detail` VALUES (802, '2020021805320031199561', 123, 56.00, 67.00, 2);
INSERT INTO `product_order_detail` VALUES (803, '2020021805320031199561', 114, 33.30, 99.90, 1);
INSERT INTO `product_order_detail` VALUES (804, '2020021805330031119574', 125, 18.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (805, '2020021805330031119574', 132, 10.00, 15.00, 1);
INSERT INTO `product_order_detail` VALUES (806, '2020021805340040103616', 147, 10.00, 20.00, 3);
INSERT INTO `product_order_detail` VALUES (807, '2020021805340040103616', 95, 0.00, 0.00, 2);
INSERT INTO `product_order_detail` VALUES (808, '2020021805350045113088', 122, 12.00, 18.00, 2);
INSERT INTO `product_order_detail` VALUES (809, '2020021805350045113088', 114, 33.30, 99.90, 1);
INSERT INTO `product_order_detail` VALUES (810, '2020021805360058108546', 123, 56.00, 67.00, 2);
INSERT INTO `product_order_detail` VALUES (811, '2020021805360058108546', 154, 99.00, 130.00, 2);
INSERT INTO `product_order_detail` VALUES (812, '2020021805360058108546', 134, 8.00, 12.00, 2);
INSERT INTO `product_order_detail` VALUES (813, '2020021805370058171808', 80, 12.00, 18.00, 1);
INSERT INTO `product_order_detail` VALUES (814, '2020021805370058171808', 86, 3.00, 6.00, 1);
INSERT INTO `product_order_detail` VALUES (815, '2020021805370058171808', 77, 6.00, 10.00, 2);
INSERT INTO `product_order_detail` VALUES (816, '2020021905300037124444', 115, 9.90, 10.00, 2);
INSERT INTO `product_order_detail` VALUES (817, '2020021905300037124444', 122, 12.00, 18.00, 1);
INSERT INTO `product_order_detail` VALUES (818, '2020021905300037124444', 108, 10.00, 15.00, 1);
INSERT INTO `product_order_detail` VALUES (819, '2020021905310039154928', 104, 9.90, 10.00, 2);
INSERT INTO `product_order_detail` VALUES (820, '2020021905320028129191', 112, 199.00, 299.00, 2);
INSERT INTO `product_order_detail` VALUES (821, '2020021905320028129191', 129, 25.00, 19.90, 1);
INSERT INTO `product_order_detail` VALUES (822, '2020021905320028129191', 81, 12.00, 15.00, 2);
INSERT INTO `product_order_detail` VALUES (823, '2020021905330017119020', 122, 12.00, 18.00, 1);
INSERT INTO `product_order_detail` VALUES (824, '2020021905340030132982', 146, 1.00, 4.00, 1);
INSERT INTO `product_order_detail` VALUES (825, '2020021905350021134527', 156, 999.00, 1200.00, 1);
INSERT INTO `product_order_detail` VALUES (826, '2020021905350021134527', 123, 56.00, 67.00, 1);
INSERT INTO `product_order_detail` VALUES (827, '2020021905360053119866', 148, 10.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (828, '2020021905360053119866', 101, 6.00, 50.00, 2);
INSERT INTO `product_order_detail` VALUES (829, '2020021905370055177988', 127, 9.00, 12.00, 1);
INSERT INTO `product_order_detail` VALUES (830, '2020021905370055177988', 159, 11.00, 16.00, 1);
INSERT INTO `product_order_detail` VALUES (831, '2020021905380043102489', 126, 20.00, 50.00, 2);
INSERT INTO `product_order_detail` VALUES (832, '2020021905390060149076', 79, 8.00, 12.00, 2);
INSERT INTO `product_order_detail` VALUES (833, '2020021905400056134471', 112, 199.00, 299.00, 2);
INSERT INTO `product_order_detail` VALUES (834, '2020021905400056134471', 128, 16.00, 14.00, 2);
INSERT INTO `product_order_detail` VALUES (835, '2020021905400056134471', 114, 33.30, 99.90, 1);
INSERT INTO `product_order_detail` VALUES (836, '2020022005300029175374', 159, 11.00, 16.00, 1);
INSERT INTO `product_order_detail` VALUES (837, '2020022005300029175374', 154, 99.00, 130.00, 1);
INSERT INTO `product_order_detail` VALUES (838, '2020022005310019181998', 138, 28.00, 31.00, 1);
INSERT INTO `product_order_detail` VALUES (839, '2020022005310019181998', 116, 5.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (840, '2020022005310019181998', 85, 12.00, 16.00, 2);
INSERT INTO `product_order_detail` VALUES (841, '2020022005320056165011', 137, 28.00, 30.00, 2);
INSERT INTO `product_order_detail` VALUES (842, '202002200533001160100', 116, 5.00, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (843, '2020022005340045155844', 122, 12.00, 18.00, 2);
INSERT INTO `product_order_detail` VALUES (844, '2020022005340045155844', 109, 10.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (845, '2020022005340045155844', 105, 9.00, 11.00, 2);
INSERT INTO `product_order_detail` VALUES (846, '2020022005350046182384', 101, 6.00, 50.00, 2);
INSERT INTO `product_order_detail` VALUES (847, '2020022005360042110024', 109, 10.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (848, '2020022005360042110024', 134, 8.00, 12.00, 2);
INSERT INTO `product_order_detail` VALUES (849, '2020022005370040158840', 79, 8.00, 12.00, 1);
INSERT INTO `product_order_detail` VALUES (850, '2020022005370040158840', 128, 16.00, 14.00, 1);
INSERT INTO `product_order_detail` VALUES (851, '2020022005370040158840', 116, 5.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (852, '2020022105300030139479', 84, 21.00, 25.00, 2);
INSERT INTO `product_order_detail` VALUES (853, '2020022105310047190717', 119, 3.00, 5.00, 1);
INSERT INTO `product_order_detail` VALUES (854, '2020022105320043158595', 76, 8.00, 12.00, 2);
INSERT INTO `product_order_detail` VALUES (855, '2020022105320043158595', 86, 3.00, 6.00, 1);
INSERT INTO `product_order_detail` VALUES (856, '2020022105320043158595', 123, 56.00, 67.00, 1);
INSERT INTO `product_order_detail` VALUES (857, '2020022105330044161835', 103, 100.00, 399.00, 2);
INSERT INTO `product_order_detail` VALUES (858, '2020022105340026194573', 158, 28.00, 35.00, 2);
INSERT INTO `product_order_detail` VALUES (859, '2020022105340026194573', 113, 9.90, 10.90, 2);
INSERT INTO `product_order_detail` VALUES (860, '2020022105340026194573', 154, 99.00, 130.00, 2);
INSERT INTO `product_order_detail` VALUES (861, '2020022105350023113243', 130, 2.00, 5.00, 2);
INSERT INTO `product_order_detail` VALUES (862, '2020022105360041142889', 77, 6.00, 10.00, 2);
INSERT INTO `product_order_detail` VALUES (863, '2020022105360041142889', 78, 12.00, 15.00, 1);
INSERT INTO `product_order_detail` VALUES (864, '2020022105370032169241', 110, 199.00, 299.00, 2);
INSERT INTO `product_order_detail` VALUES (865, '2020022205300064157841', 109, 10.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (866, '2020022205300064157841', 106, 120.00, 99.00, 2);
INSERT INTO `product_order_detail` VALUES (867, '2020022205310047136491', 105, 9.00, 11.00, 1);
INSERT INTO `product_order_detail` VALUES (868, '2020022205310047136491', 95, 0.00, 0.00, 1);
INSERT INTO `product_order_detail` VALUES (869, '2020022205310047136491', 152, 120.00, 600.00, 1);
INSERT INTO `product_order_detail` VALUES (870, '2020022205320022100264', 119, 3.00, 5.00, 1);
INSERT INTO `product_order_detail` VALUES (871, '2020022205330046136779', 129, 25.00, 19.90, 1);
INSERT INTO `product_order_detail` VALUES (872, '2020022205340055154114', 79, 8.00, 12.00, 1);
INSERT INTO `product_order_detail` VALUES (873, '2020022205340055154114', 155, 100.00, 120.00, 2);
INSERT INTO `product_order_detail` VALUES (874, '2020022205340055154114', 98, 25.50, 50.00, 2);
INSERT INTO `product_order_detail` VALUES (875, '2020022205350016158819', 146, 1.00, 4.00, 1);
INSERT INTO `product_order_detail` VALUES (876, '2020022205350016158819', 130, 2.00, 5.00, 2);
INSERT INTO `product_order_detail` VALUES (877, '2020022205360038111483', 106, 120.00, 99.00, 1);
INSERT INTO `product_order_detail` VALUES (878, '2020022205370056116674', 141, 0.10, 88888.00, 2);
INSERT INTO `product_order_detail` VALUES (879, '2020022205370056116674', 71, 15.00, 21.00, 2);
INSERT INTO `product_order_detail` VALUES (880, '2020022205370056116674', 73, 13.00, 28.00, 2);
INSERT INTO `product_order_detail` VALUES (881, '2020022205380058152093', 116, 5.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (882, '2020022205380058152093', 129, 25.00, 19.90, 1);
INSERT INTO `product_order_detail` VALUES (883, '2020022305300055132880', 141, 0.10, 88888.00, 1);
INSERT INTO `product_order_detail` VALUES (884, '2020022305300055132880', 139, 12.00, 14.00, 1);
INSERT INTO `product_order_detail` VALUES (885, '2020022305310057158651', 107, 15.00, 25.00, 2);
INSERT INTO `product_order_detail` VALUES (886, '2020022305310057158651', 155, 100.00, 120.00, 1);
INSERT INTO `product_order_detail` VALUES (887, '2020022305320027169746', 135, 5.00, 10.00, 1);
INSERT INTO `product_order_detail` VALUES (888, '2020022305330052147012', 128, 16.00, 14.00, 2);
INSERT INTO `product_order_detail` VALUES (889, '202002230534009128215', 96, 19.90, 29.90, 1);
INSERT INTO `product_order_detail` VALUES (890, '2020022305350037183885', 85, 12.00, 16.00, 1);
INSERT INTO `product_order_detail` VALUES (891, '2020022405300026116007', 132, 10.00, 15.00, 1);
INSERT INTO `product_order_detail` VALUES (892, '2020022405310062193434', 132, 10.00, 15.00, 2);
INSERT INTO `product_order_detail` VALUES (893, '2020022405310062193434', 77, 6.00, 10.00, 2);
INSERT INTO `product_order_detail` VALUES (894, '2020022405320059120452', 81, 12.00, 15.00, 2);
INSERT INTO `product_order_detail` VALUES (895, '2020022405320059120452', 96, 19.90, 29.90, 1);
INSERT INTO `product_order_detail` VALUES (896, '2020022405330032162858', 147, 10.00, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (897, '2020022405340013161064', 121, 6.60, 9.90, 1);
INSERT INTO `product_order_detail` VALUES (898, '2020022405340013161064', 125, 18.00, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (899, '2020022405350031164246', 158, 28.00, 35.00, 2);
INSERT INTO `product_order_detail` VALUES (900, '2020022405350031164246', 103, 100.00, 399.00, 2);
INSERT INTO `product_order_detail` VALUES (901, '2020022405350031164246', 80, 12.00, 18.00, 2);
INSERT INTO `product_order_detail` VALUES (902, '2020022405360065172931', 75, 12.00, 16.00, 2);
INSERT INTO `product_order_detail` VALUES (903, '2020022405360065172931', 129, 25.00, 19.90, 2);
INSERT INTO `product_order_detail` VALUES (904, '2020022405370023138416', 106, 120.00, 99.00, 1);
INSERT INTO `product_order_detail` VALUES (905, '2020022405370023138416', 152, 120.00, 600.00, 2);
INSERT INTO `product_order_detail` VALUES (906, '2020022505300037126166', 159, 11.00, 16.00, 2);
INSERT INTO `product_order_detail` VALUES (907, '2020022505300037126166', 143, 10.00, 12.00, 2);
INSERT INTO `product_order_detail` VALUES (908, '2020022505300037126166', 108, 10.00, 15.00, 1);
INSERT INTO `product_order_detail` VALUES (909, '2020022505310042143725', 121, 6.60, 9.90, 2);
INSERT INTO `product_order_detail` VALUES (910, '2020022505310042143725', 146, 1.00, 4.00, 1);
INSERT INTO `product_order_detail` VALUES (911, '2020022505310042143725', 137, 28.00, 30.00, 1);
INSERT INTO `product_order_detail` VALUES (912, '2020022505320045165053', 136, 0.01, 99999.00, 1);
INSERT INTO `product_order_detail` VALUES (913, '2020022505320045165053', 85, 12.00, 16.00, 2);
INSERT INTO `product_order_detail` VALUES (914, '2020022505330034157809', 135, 5.00, 10.00, 1);
INSERT INTO `product_order_detail` VALUES (915, '2020022505330034157809', 79, 8.00, 12.00, 1);
INSERT INTO `product_order_detail` VALUES (916, '2020022505340055173673', 83, 16.00, 28.00, 1);
INSERT INTO `product_order_detail` VALUES (917, '2020022505340055173673', 108, 10.00, 15.00, 3);
INSERT INTO `product_order_detail` VALUES (918, '2020022505350062189998', 75, 12.00, 16.00, 1);
INSERT INTO `product_order_detail` VALUES (919, '2020022505360016192375', 146, 1.00, 4.00, 1);
INSERT INTO `product_order_detail` VALUES (920, '2020022505360016192375', 138, 28.00, 31.00, 2);
INSERT INTO `product_order_detail` VALUES (921, '2020022505370049187857', 136, 0.01, 99999.00, 1);
INSERT INTO `product_order_detail` VALUES (922, '2020022505370049187857', 71, 15.00, 21.00, 1);
INSERT INTO `product_order_detail` VALUES (923, '2020022505380040144440', 128, 16.00, 14.00, 1);
INSERT INTO `product_order_detail` VALUES (924, '2020022505380040144440', 108, 10.00, 15.00, 1);
INSERT INTO `product_order_detail` VALUES (925, '2020022505390019115606', 129, 25.00, 19.90, 2);
INSERT INTO `product_order_detail` VALUES (926, '2020022505390019115606', 133, 20.00, 15.00, 2);
INSERT INTO `product_order_detail` VALUES (927, '2020022505400056161098', 147, 10.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (928, '202002252222429129556', 141, 0.10, 88888.00, 2);
INSERT INTO `product_order_detail` VALUES (929, '202002252222429129556', 163, 7.91, 121.00, 3);
INSERT INTO `product_order_detail` VALUES (930, '202002260454139181462', 163, 7.91, 121.00, 2);
INSERT INTO `product_order_detail` VALUES (931, '202002260454139181462', 158, 28.00, 35.00, 1);
INSERT INTO `product_order_detail` VALUES (932, '202002260454139181462', 136, 0.01, 99999.00, 6);
INSERT INTO `product_order_detail` VALUES (933, '202002260454139181462', 134, 8.00, 12.00, 1);
INSERT INTO `product_order_detail` VALUES (934, '2020022605300027106577', 97, 80.00, 5.00, 3);
INSERT INTO `product_order_detail` VALUES (935, '2020022605310049140477', 81, 12.00, 15.00, 2);
INSERT INTO `product_order_detail` VALUES (936, '2020022605310049140477', 150, 50.00, 60.00, 1);
INSERT INTO `product_order_detail` VALUES (937, '2020022605320062187946', 128, 16.00, 14.00, 1);
INSERT INTO `product_order_detail` VALUES (938, '2020022605320062187946', 154, 99.00, 130.00, 2);
INSERT INTO `product_order_detail` VALUES (939, '2020022605330061126071', 74, 12.00, 16.00, 1);
INSERT INTO `product_order_detail` VALUES (940, '2020022605340053101605', 77, 6.00, 10.00, 1);
INSERT INTO `product_order_detail` VALUES (941, '2020022605340053101605', 103, 100.00, 399.00, 1);
INSERT INTO `product_order_detail` VALUES (942, '2020022605350047146456', 101, 6.00, 50.00, 2);
INSERT INTO `product_order_detail` VALUES (943, '2020022605350047146456', 104, 9.90, 10.00, 1);
INSERT INTO `product_order_detail` VALUES (944, '2020022605350047146456', 152, 120.00, 600.00, 1);
INSERT INTO `product_order_detail` VALUES (945, '2020022605360034123408', 120, 99.00, 76.00, 2);
INSERT INTO `product_order_detail` VALUES (946, '2020022605360034123408', 152, 120.00, 600.00, 2);
INSERT INTO `product_order_detail` VALUES (947, '2020022605360034123408', 104, 9.90, 10.00, 2);
INSERT INTO `product_order_detail` VALUES (948, '202002260537011153517', 140, 25.00, 18.00, 3);
INSERT INTO `product_order_detail` VALUES (949, '202002260537011153517', 153, 89.00, 123.50, 2);
INSERT INTO `product_order_detail` VALUES (950, '2020022605380117104807', 105, 9.00, 11.00, 2);
INSERT INTO `product_order_detail` VALUES (951, '2020022813170143180147', 149, 60.00, 80.00, 1);
INSERT INTO `product_order_detail` VALUES (952, '202002281317211138210', 147, 10.00, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (953, '2020022813174157175881', 97, 80.00, 5.00, 1);
INSERT INTO `product_order_detail` VALUES (954, '2020022813174157175881', 81, 12.00, 15.00, 2);
INSERT INTO `product_order_detail` VALUES (955, '2020022813174157175881', 123, 56.00, 67.00, 1);
INSERT INTO `product_order_detail` VALUES (956, '202002281318011105918', 150, 50.00, 60.00, 1);
INSERT INTO `product_order_detail` VALUES (957, '2020022813182214143931', 151, 145.00, 184.00, 2);
INSERT INTO `product_order_detail` VALUES (958, '2020022813182214143931', 96, 19.90, 29.90, 2);
INSERT INTO `product_order_detail` VALUES (959, '2020022813182214143931', 160, 1.00, 2.00, 2);
INSERT INTO `product_order_detail` VALUES (960, '2020022813250113100664', 80, 12.00, 18.00, 2);
INSERT INTO `product_order_detail` VALUES (961, '2020022813250113100664', 141, 0.10, 88888.00, 2);
INSERT INTO `product_order_detail` VALUES (962, '2020022813250113100664', 147, 10.00, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (963, '2020022813251147178693', 124, 34.00, 45.00, 2);
INSERT INTO `product_order_detail` VALUES (964, '2020022813251147178693', 141, 0.10, 88888.00, 1);
INSERT INTO `product_order_detail` VALUES (965, '2020022813252254174200', 108, 10.00, 15.00, 1);
INSERT INTO `product_order_detail` VALUES (966, '2020022813252254174200', 158, 28.00, 35.00, 1);
INSERT INTO `product_order_detail` VALUES (967, '2020022813252254174200', 148, 10.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (968, '2020022813253237156019', 108, 10.00, 15.00, 1);
INSERT INTO `product_order_detail` VALUES (969, '2020022813254221163474', 124, 34.00, 45.00, 2);
INSERT INTO `product_order_detail` VALUES (970, '202002281325531156615', 77, 6.00, 10.00, 2);
INSERT INTO `product_order_detail` VALUES (971, '202002281325531156615', 123, 56.00, 67.00, 1);
INSERT INTO `product_order_detail` VALUES (972, '2020022813260350108121', 148, 10.00, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (973, '202002281326131144368', 100, 4.00, 5.00, 2);
INSERT INTO `product_order_detail` VALUES (974, '202002281326131144368', 140, 25.00, 18.00, 1);
INSERT INTO `product_order_detail` VALUES (975, '2020022813262422121200', 108, 10.00, 15.00, 2);
INSERT INTO `product_order_detail` VALUES (976, '2020022813262422121200', 163, 7.91, 121.00, 1);
INSERT INTO `product_order_detail` VALUES (977, '2020022905300132108616', 130, 2.00, 5.00, 2);
INSERT INTO `product_order_detail` VALUES (978, '2020022905300132108616', 131, 18.88, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (979, '2020022905310129153815', 103, 100.00, 399.00, 2);
INSERT INTO `product_order_detail` VALUES (980, '2020022905320133122040', 84, 21.00, 25.00, 2);
INSERT INTO `product_order_detail` VALUES (981, '2020022905330121197619', 118, 25.00, 30.00, 2);
INSERT INTO `product_order_detail` VALUES (982, '2020022905330121197619', 144, 28.88, 35.00, 1);
INSERT INTO `product_order_detail` VALUES (983, '2020022905330121197619', 103, 100.00, 399.00, 2);
INSERT INTO `product_order_detail` VALUES (984, '2020022905340160194026', 97, 80.00, 86.00, 2);
INSERT INTO `product_order_detail` VALUES (985, '2020022905340160194026', 155, 100.00, 120.00, 1);
INSERT INTO `product_order_detail` VALUES (986, '2020022905340160194026', 137, 28.00, 30.00, 1);
INSERT INTO `product_order_detail` VALUES (987, '2020022905350151146478', 126, 20.00, 50.00, 2);
INSERT INTO `product_order_detail` VALUES (988, '2020022905350151146478', 157, 69.00, 119.00, 1);
INSERT INTO `product_order_detail` VALUES (989, '202002290536011179846', 139, 12.00, 14.00, 2);
INSERT INTO `product_order_detail` VALUES (990, '202002290536011179846', 74, 12.00, 16.00, 1);
INSERT INTO `product_order_detail` VALUES (991, '2020022905370115113057', 103, 100.00, 399.00, 2);
INSERT INTO `product_order_detail` VALUES (992, '2020022905370115113057', 127, 9.00, 12.00, 1);
INSERT INTO `product_order_detail` VALUES (993, '2020022905380122187911', 160, 1.00, 2.00, 1);
INSERT INTO `product_order_detail` VALUES (994, '202002290539011134258', 141, 20.00, 23.00, 1);
INSERT INTO `product_order_detail` VALUES (995, '202002290539011134258', 140, 18.00, 25.00, 1);
INSERT INTO `product_order_detail` VALUES (996, '202002290539011134258', 83, 16.00, 28.00, 1);
INSERT INTO `product_order_detail` VALUES (997, '2020022905400164102691', 97, 80.00, 86.00, 1);
INSERT INTO `product_order_detail` VALUES (998, '2020030105300141102877', 78, 12.00, 15.00, 2);
INSERT INTO `product_order_detail` VALUES (999, '2020030105310165156079', 128, 14.00, 16.00, 2);
INSERT INTO `product_order_detail` VALUES (1000, '2020030105310165156079', 130, 2.00, 5.00, 1);
INSERT INTO `product_order_detail` VALUES (1001, '2020030105330162161306', 148, 10.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (1002, '2020030105330162161306', 146, 1.00, 4.00, 1);
INSERT INTO `product_order_detail` VALUES (1003, '2020030105340114124947', 79, 8.00, 12.00, 1);
INSERT INTO `product_order_detail` VALUES (1004, '2020030105340114124947', 149, 60.00, 80.00, 2);
INSERT INTO `product_order_detail` VALUES (1005, '2020030105350128128201', 106, 78.88, 99.00, 2);
INSERT INTO `product_order_detail` VALUES (1006, '2020030105350128128201', 108, 10.00, 15.00, 1);
INSERT INTO `product_order_detail` VALUES (1007, '2020030105350128128201', 128, 14.00, 16.00, 2);
INSERT INTO `product_order_detail` VALUES (1008, '2020030105360128119211', 148, 10.00, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (1009, '2020030105360128119211', 139, 12.00, 14.00, 1);
INSERT INTO `product_order_detail` VALUES (1010, '2020030105360128119211', 105, 9.00, 11.00, 2);
INSERT INTO `product_order_detail` VALUES (1011, '202003010537011198097', 120, 76.00, 99.00, 1);
INSERT INTO `product_order_detail` VALUES (1012, '202003010537011198097', 123, 56.00, 67.00, 2);
INSERT INTO `product_order_detail` VALUES (1013, '202003010537011198097', 83, 16.00, 28.00, 2);
INSERT INTO `product_order_detail` VALUES (1014, '2020030105380132181526', 140, 18.00, 25.00, 1);
INSERT INTO `product_order_detail` VALUES (1015, '2020030105380132181526', 129, 19.90, 25.00, 2);
INSERT INTO `product_order_detail` VALUES (1016, '2020030105380132181526', 111, 28.00, 35.00, 1);
INSERT INTO `product_order_detail` VALUES (1017, '2020030116121567138642', 163, 10.00, 10.00, 2);
INSERT INTO `product_order_detail` VALUES (1018, '202003012047061174205', 158, 28.00, 35.00, 1);
INSERT INTO `product_order_detail` VALUES (1019, '202003012047431118719', 156, 699.00, 999.00, 1);
INSERT INTO `product_order_detail` VALUES (1020, '2020030205300119100771', 150, 50.00, 60.00, 2);
INSERT INTO `product_order_detail` VALUES (1021, '2020030205300119100771', 102, 59.00, 89.00, 1);
INSERT INTO `product_order_detail` VALUES (1022, '2020030205300119100771', 123, 56.00, 67.00, 2);
INSERT INTO `product_order_detail` VALUES (1023, '2020030205310129145480', 107, 15.00, 25.00, 2);
INSERT INTO `product_order_detail` VALUES (1024, '2020030205310129145480', 118, 25.00, 30.00, 2);
INSERT INTO `product_order_detail` VALUES (1025, '2020030205320121112717', 102, 59.00, 89.00, 2);
INSERT INTO `product_order_detail` VALUES (1026, '202003020533011149817', 75, 12.00, 16.00, 2);
INSERT INTO `product_order_detail` VALUES (1027, '202003020534011189955', 160, 1.00, 2.00, 1);
INSERT INTO `product_order_detail` VALUES (1028, '202003020534011189955', 127, 9.00, 12.00, 2);
INSERT INTO `product_order_detail` VALUES (1029, '202003020535011105699', 114, 33.30, 99.90, 1);
INSERT INTO `product_order_detail` VALUES (1030, '202003020535011105699', 133, 15.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (1031, '202003020536011167049', 139, 12.00, 14.00, 2);
INSERT INTO `product_order_detail` VALUES (1032, '2020030305300319126170', 99, 15.00, 30.00, 1);
INSERT INTO `product_order_detail` VALUES (1033, '2020030305300319126170', 98, 25.50, 50.00, 2);
INSERT INTO `product_order_detail` VALUES (1034, '2020030305300319126170', 147, 10.00, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (1035, '2020030305310334164479', 153, 89.00, 123.50, 1);
INSERT INTO `product_order_detail` VALUES (1036, '2020030305310334164479', 150, 50.00, 60.00, 1);
INSERT INTO `product_order_detail` VALUES (1037, '2020030305310334164479', 119, 3.00, 5.00, 2);
INSERT INTO `product_order_detail` VALUES (1038, '2020030305320364125245', 98, 25.50, 50.00, 1);
INSERT INTO `product_order_detail` VALUES (1039, '2020030305320364125245', 114, 33.30, 99.90, 1);
INSERT INTO `product_order_detail` VALUES (1040, '2020030305330341144747', 109, 10.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (1041, '2020030305350323144478', 127, 9.00, 12.00, 1);
INSERT INTO `product_order_detail` VALUES (1042, '2020030305350323144478', 135, 5.00, 10.00, 1);
INSERT INTO `product_order_detail` VALUES (1043, '2020030305360316121542', 113, 9.90, 10.90, 2);
INSERT INTO `product_order_detail` VALUES (1044, '2020030305370314198753', 115, 9.90, 10.00, 1);
INSERT INTO `product_order_detail` VALUES (1045, '2020030305370314198753', 160, 1.00, 2.00, 2);
INSERT INTO `product_order_detail` VALUES (1046, '2020030305380362180575', 99, 15.00, 30.00, 2);
INSERT INTO `product_order_detail` VALUES (1047, '2020030305390343156585', 112, 199.00, 299.00, 2);
INSERT INTO `product_order_detail` VALUES (1048, '2020030305390343156585', 151, 145.00, 184.00, 1);
INSERT INTO `product_order_detail` VALUES (1049, '202003030540031165336', 121, 6.60, 9.90, 1);
INSERT INTO `product_order_detail` VALUES (1050, '202003030540031165336', 134, 8.00, 12.00, 1);
INSERT INTO `product_order_detail` VALUES (1051, '202003030541031177816', 78, 12.00, 15.00, 1);
INSERT INTO `product_order_detail` VALUES (1052, '202003030541031177816', 99, 15.00, 30.00, 2);
INSERT INTO `product_order_detail` VALUES (1053, '202003030542031105100', 106, 78.88, 99.00, 1);
INSERT INTO `product_order_detail` VALUES (1054, '202003030542031105100', 113, 9.90, 10.90, 2);
INSERT INTO `product_order_detail` VALUES (1055, '202003030542031105100', 140, 18.00, 25.00, 2);
INSERT INTO `product_order_detail` VALUES (1056, '202003030543031156903', 109, 10.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (1057, '202003030543031156903', 125, 18.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (1058, '202003030543031156903', 102, 59.00, 89.00, 2);
INSERT INTO `product_order_detail` VALUES (1059, '2020030314280468105208', 136, 89.99, 126.00, 1);
INSERT INTO `product_order_detail` VALUES (1060, '2020030314293068189632', 157, 69.00, 119.00, 2);
INSERT INTO `product_order_detail` VALUES (1061, '2020030314293068189632', 160, 1.00, 2.00, 1);
INSERT INTO `product_order_detail` VALUES (1062, '2020030405300159118299', 80, 12.00, 18.00, 1);
INSERT INTO `product_order_detail` VALUES (1063, '2020030405300159118299', 160, 1.00, 2.00, 2);
INSERT INTO `product_order_detail` VALUES (1064, '2020030405300159118299', 126, 20.00, 50.00, 1);
INSERT INTO `product_order_detail` VALUES (1065, '2020030405310156125959', 138, 28.00, 31.00, 1);
INSERT INTO `product_order_detail` VALUES (1066, '2020030405320154188190', 100, 4.00, 5.00, 2);
INSERT INTO `product_order_detail` VALUES (1067, '2020030405320154188190', 98, 25.50, 50.00, 2);
INSERT INTO `product_order_detail` VALUES (1068, '2020030405330126106283', 148, 10.00, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (1069, '2020030405330126106283', 142, 23.00, 25.00, 2);
INSERT INTO `product_order_detail` VALUES (1070, '2020030405340159182605', 73, 13.00, 28.00, 2);
INSERT INTO `product_order_detail` VALUES (1071, '2020030405350142155275', 109, 10.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (1072, '2020030405350142155275', 122, 12.00, 18.00, 1);
INSERT INTO `product_order_detail` VALUES (1073, '2020030405360112137646', 84, 21.00, 25.00, 2);
INSERT INTO `product_order_detail` VALUES (1074, '2020030405360112137646', 138, 28.00, 31.00, 2);
INSERT INTO `product_order_detail` VALUES (1075, '2020030405360112137646', 149, 60.00, 80.00, 2);
INSERT INTO `product_order_detail` VALUES (1076, '2020030405370120190916', 108, 10.00, 15.00, 2);
INSERT INTO `product_order_detail` VALUES (1077, '2020030405370120190916', 142, 23.00, 25.00, 2);
INSERT INTO `product_order_detail` VALUES (1078, '2020030405380132167293', 105, 9.00, 11.00, 1);
INSERT INTO `product_order_detail` VALUES (1079, '2020030405380132167293', 144, 28.88, 35.00, 2);
INSERT INTO `product_order_detail` VALUES (1080, '2020030405380132167293', 122, 12.00, 18.00, 1);
INSERT INTO `product_order_detail` VALUES (1081, '202003040539011186675', 139, 12.00, 14.00, 2);
INSERT INTO `product_order_detail` VALUES (1082, '202003040540011177223', 154, 99.00, 130.00, 1);
INSERT INTO `product_order_detail` VALUES (1083, '202003040541021147864', 130, 2.00, 5.00, 1);
INSERT INTO `product_order_detail` VALUES (1084, '202003040542021159587', 111, 28.00, 35.00, 2);
INSERT INTO `product_order_detail` VALUES (1085, '202003040542021159587', 112, 199.00, 299.00, 2);
INSERT INTO `product_order_detail` VALUES (1086, '202003040542021159587', 152, 120.00, 600.00, 1);
INSERT INTO `product_order_detail` VALUES (1087, '2020030417055268167190', 163, 10.00, 10.00, 5);
INSERT INTO `product_order_detail` VALUES (1088, '2020030505300354177256', 123, 56.00, 67.00, 1);
INSERT INTO `product_order_detail` VALUES (1089, '2020030505300354177256', 83, 16.00, 28.00, 1);
INSERT INTO `product_order_detail` VALUES (1090, '2020030505310349137878', 106, 78.88, 99.00, 1);
INSERT INTO `product_order_detail` VALUES (1091, '2020030505310349137878', 155, 100.00, 120.00, 1);
INSERT INTO `product_order_detail` VALUES (1092, '2020030505310349137878', 76, 8.00, 12.00, 1);
INSERT INTO `product_order_detail` VALUES (1093, '2020030505320343133133', 132, 10.00, 15.00, 2);
INSERT INTO `product_order_detail` VALUES (1094, '2020030505320343133133', 143, 10.00, 12.00, 1);
INSERT INTO `product_order_detail` VALUES (1095, '2020030505320343133133', 81, 12.00, 15.00, 1);
INSERT INTO `product_order_detail` VALUES (1096, '2020030505330344188869', 140, 18.00, 25.00, 1);
INSERT INTO `product_order_detail` VALUES (1097, '2020030505330344188869', 141, 20.00, 23.00, 1);
INSERT INTO `product_order_detail` VALUES (1098, '2020030505330344188869', 163, 10.00, 10.00, 2);
INSERT INTO `product_order_detail` VALUES (1099, '2020030505340357149585', 128, 14.00, 16.00, 2);
INSERT INTO `product_order_detail` VALUES (1100, '2020030505340357149585', 159, 11.00, 16.00, 1);
INSERT INTO `product_order_detail` VALUES (1101, '2020030505350426124703', 116, 5.00, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (1102, '2020030505350426124703', 141, 20.00, 23.00, 2);
INSERT INTO `product_order_detail` VALUES (1103, '2020030505360419176932', 83, 16.00, 28.00, 2);
INSERT INTO `product_order_detail` VALUES (1104, '202003050537041113141', 110, 199.00, 299.00, 1);
INSERT INTO `product_order_detail` VALUES (1105, '202003050538041128942', 85, 12.00, 16.00, 2);
INSERT INTO `product_order_detail` VALUES (1106, '202003050538041128942', 76, 8.00, 12.00, 2);
INSERT INTO `product_order_detail` VALUES (1107, '202003050538041128942', 151, 145.00, 184.00, 2);
INSERT INTO `product_order_detail` VALUES (1108, '202003050539041194075', 134, 8.00, 12.00, 1);
INSERT INTO `product_order_detail` VALUES (1109, '202003050539041194075', 137, 28.00, 30.00, 2);
INSERT INTO `product_order_detail` VALUES (1110, '202003050539041194075', 138, 28.00, 31.00, 1);
INSERT INTO `product_order_detail` VALUES (1111, '202003050540041138645', 140, 18.00, 25.00, 2);
INSERT INTO `product_order_detail` VALUES (1112, '202003050540041138645', 122, 12.00, 18.00, 1);
INSERT INTO `product_order_detail` VALUES (1113, '202003050540041138645', 95, 6.00, 15.00, 1);
INSERT INTO `product_order_detail` VALUES (1114, '2020030605300356149025', 110, 199.00, 299.00, 1);
INSERT INTO `product_order_detail` VALUES (1115, '2020030605300356149025', 111, 28.00, 35.00, 1);
INSERT INTO `product_order_detail` VALUES (1116, '2020030605310322122267', 143, 10.00, 12.00, 2);
INSERT INTO `product_order_detail` VALUES (1117, '2020030605310322122267', 163, 10.00, 10.00, 1);
INSERT INTO `product_order_detail` VALUES (1118, '2020030605310322122267', 80, 12.00, 18.00, 2);
INSERT INTO `product_order_detail` VALUES (1119, '2020030605320345152839', 103, 100.00, 399.00, 1);
INSERT INTO `product_order_detail` VALUES (1120, '2020030605330359166752', 135, 5.00, 10.00, 2);
INSERT INTO `product_order_detail` VALUES (1121, '2020030605340314188375', 157, 69.00, 119.00, 1);
INSERT INTO `product_order_detail` VALUES (1122, '2020030605350365189551', 159, 11.00, 16.00, 1);
INSERT INTO `product_order_detail` VALUES (1123, '2020030605360364142446', 119, 3.00, 5.00, 2);
INSERT INTO `product_order_detail` VALUES (1124, '202003060537031192518', 134, 8.00, 12.00, 1);
INSERT INTO `product_order_detail` VALUES (1125, '202003060537031192518', 138, 28.00, 31.00, 1);
INSERT INTO `product_order_detail` VALUES (1126, '202003060538031131428', 154, 99.00, 130.00, 1);
INSERT INTO `product_order_detail` VALUES (1127, '202003060539031138611', 78, 12.00, 15.00, 2);
INSERT INTO `product_order_detail` VALUES (1128, '202003060539031138611', 72, 66.50, 88.00, 1);
INSERT INTO `product_order_detail` VALUES (1129, '202003060540031164095', 129, 19.90, 25.00, 2);
INSERT INTO `product_order_detail` VALUES (1130, '2020030617285068134563', 163, 10.00, 10.00, 8);
INSERT INTO `product_order_detail` VALUES (1131, '2020030705300244110721', 156, 699.00, 999.00, 2);
INSERT INTO `product_order_detail` VALUES (1132, '2020030705300244110721', 158, 28.00, 35.00, 1);
INSERT INTO `product_order_detail` VALUES (1133, '2020030705310215146521', 98, 25.50, 50.00, 2);
INSERT INTO `product_order_detail` VALUES (1134, '2020030705320217127722', 143, 10.00, 12.00, 1);
INSERT INTO `product_order_detail` VALUES (1135, '202003070533031167896', 131, 18.88, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (1136, '202003070533031167896', 140, 18.00, 25.00, 1);
INSERT INTO `product_order_detail` VALUES (1137, '202003070534031146719', 133, 15.00, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (1138, '202003070534031146719', 142, 23.00, 25.00, 2);
INSERT INTO `product_order_detail` VALUES (1139, '202003070534031146719', 123, 56.00, 67.00, 2);
INSERT INTO `product_order_detail` VALUES (1140, '202003070535031165443', 130, 2.00, 5.00, 1);
INSERT INTO `product_order_detail` VALUES (1141, '202003070536031130131', 160, 1.00, 2.00, 2);
INSERT INTO `product_order_detail` VALUES (1142, '202003070536031130131', 72, 66.50, 88.00, 2);
INSERT INTO `product_order_detail` VALUES (1143, '202003070536031130131', 142, 23.00, 25.00, 2);
INSERT INTO `product_order_detail` VALUES (1144, '2020030805300252134384', 76, 8.00, 12.00, 2);
INSERT INTO `product_order_detail` VALUES (1145, '2020030805300252134384', 117, 12.00, 12.00, 2);
INSERT INTO `product_order_detail` VALUES (1146, '2020030805310254132025', 144, 28.88, 35.00, 2);
INSERT INTO `product_order_detail` VALUES (1147, '2020030805320226148416', 105, 9.00, 11.00, 1);
INSERT INTO `product_order_detail` VALUES (1148, '2020030805320226148416', 147, 10.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (1149, '2020030805320226148416', 75, 12.00, 16.00, 1);
INSERT INTO `product_order_detail` VALUES (1150, '202003080533021131555', 142, 23.00, 25.00, 2);
INSERT INTO `product_order_detail` VALUES (1151, '202003080534021133207', 146, 1.00, 4.00, 1);
INSERT INTO `product_order_detail` VALUES (1152, '202003080534021133207', 86, 3.00, 6.00, 2);
INSERT INTO `product_order_detail` VALUES (1153, '202003080534021133207', 106, 78.88, 99.00, 2);
INSERT INTO `product_order_detail` VALUES (1154, '202003080535021186722', 146, 1.00, 4.00, 2);
INSERT INTO `product_order_detail` VALUES (1155, '202003080536021131681', 116, 5.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (1156, '2020030905300334175399', 84, 21.00, 25.00, 1);
INSERT INTO `product_order_detail` VALUES (1157, '2020030905310335105120', 75, 14.00, 16.00, 2);
INSERT INTO `product_order_detail` VALUES (1158, '2020030905320329191845', 83, 16.00, 28.00, 1);
INSERT INTO `product_order_detail` VALUES (1159, '2020030905320329191845', 79, 8.00, 12.00, 2);
INSERT INTO `product_order_detail` VALUES (1160, '2020030905320329191845', 98, 25.50, 50.00, 1);
INSERT INTO `product_order_detail` VALUES (1161, '2020030905330346116335', 96, 19.90, 29.90, 1);
INSERT INTO `product_order_detail` VALUES (1162, '2020030905330346116335', 137, 39.00, 50.00, 1);
INSERT INTO `product_order_detail` VALUES (1163, '2020030905330346116335', 78, 12.00, 15.00, 2);
INSERT INTO `product_order_detail` VALUES (1164, '2020030905340335159225', 130, 2.00, 5.00, 2);
INSERT INTO `product_order_detail` VALUES (1165, '2020030905340335159225', 80, 12.00, 18.00, 3);
INSERT INTO `product_order_detail` VALUES (1166, '2020030905350357163735', 111, 28.00, 35.00, 2);
INSERT INTO `product_order_detail` VALUES (1167, '2020030905360325112775', 77, 6.00, 10.00, 1);
INSERT INTO `product_order_detail` VALUES (1168, '202003090537031155715', 126, 20.00, 50.00, 2);
INSERT INTO `product_order_detail` VALUES (1169, '202003090537031155715', 117, 10.00, 12.00, 1);
INSERT INTO `product_order_detail` VALUES (1170, '202003090537031155715', 122, 12.00, 18.00, 2);
INSERT INTO `product_order_detail` VALUES (1171, '202003090538031151763', 84, 21.00, 25.00, 2);
INSERT INTO `product_order_detail` VALUES (1172, '202003090539031110174', 105, 9.00, 11.00, 2);
INSERT INTO `product_order_detail` VALUES (1173, '202003090539031110174', 101, 15.00, 26.00, 1);
INSERT INTO `product_order_detail` VALUES (1174, '202003090540031171577', 104, 9.90, 10.00, 2);
INSERT INTO `product_order_detail` VALUES (1175, '202003090540031171577', 72, 66.50, 88.00, 2);
INSERT INTO `product_order_detail` VALUES (1176, '202003090540031171577', 117, 10.00, 12.00, 2);
INSERT INTO `product_order_detail` VALUES (1177, '2020031005300228166102', 172, 38.00, 45.00, 2);
INSERT INTO `product_order_detail` VALUES (1178, '2020031005300228166102', 193, 10.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (1179, '2020031005300228166102', 131, 18.88, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (1180, '2020031005310363188105', 200, 20.00, 25.00, 1);
INSERT INTO `product_order_detail` VALUES (1181, '2020031005310363188105', 168, 45.00, 55.00, 2);
INSERT INTO `product_order_detail` VALUES (1182, '2020031005320321122397', 142, 23.00, 25.00, 1);
INSERT INTO `product_order_detail` VALUES (1183, '2020031005320321122397', 126, 20.00, 50.00, 2);
INSERT INTO `product_order_detail` VALUES (1184, '2020031005320321122397', 129, 19.90, 25.00, 1);
INSERT INTO `product_order_detail` VALUES (1185, '2020031005330334188187', 134, 8.00, 12.00, 2);
INSERT INTO `product_order_detail` VALUES (1186, '2020031005340334137275', 101, 15.00, 26.00, 2);
INSERT INTO `product_order_detail` VALUES (1187, '2020031005340334137275', 105, 9.00, 11.00, 2);
INSERT INTO `product_order_detail` VALUES (1188, '2020031005340334137275', 78, 12.00, 15.00, 1);
INSERT INTO `product_order_detail` VALUES (1189, '2020031005350314189067', 188, 48.00, 69.00, 2);
INSERT INTO `product_order_detail` VALUES (1190, '2020031005350314189067', 108, 10.00, 15.00, 1);
INSERT INTO `product_order_detail` VALUES (1191, '2020031005360341123923', 129, 19.90, 25.00, 2);
INSERT INTO `product_order_detail` VALUES (1192, '2020031005370317161365', 195, 30.00, 45.00, 2);
INSERT INTO `product_order_detail` VALUES (1193, '2020031005370317161365', 72, 66.50, 88.00, 1);
INSERT INTO `product_order_detail` VALUES (1194, '2020031005370317161365', 143, 10.00, 12.00, 2);
INSERT INTO `product_order_detail` VALUES (1195, '202003100538031157884', 106, 78.88, 99.00, 1);
INSERT INTO `product_order_detail` VALUES (1196, '202003100539031191599', 202, 14.00, 18.00, 1);
INSERT INTO `product_order_detail` VALUES (1197, '202003100539031191599', 111, 28.00, 35.00, 1);
INSERT INTO `product_order_detail` VALUES (1198, '202003100540031125993', 154, 99.00, 130.00, 1);
INSERT INTO `product_order_detail` VALUES (1199, '202003100540031125993', 74, 12.00, 16.00, 2);
INSERT INTO `product_order_detail` VALUES (1200, '202003100540031125993', 204, 39.00, 45.00, 1);
INSERT INTO `product_order_detail` VALUES (1201, '202003100541031118884', 74, 12.00, 16.00, 1);
INSERT INTO `product_order_detail` VALUES (1202, '202003100541031118884', 155, 100.00, 120.00, 2);
INSERT INTO `product_order_detail` VALUES (1203, '2020031105300260183578', 186, 16.60, 22.00, 2);
INSERT INTO `product_order_detail` VALUES (1204, '2020031105300260183578', 75, 14.00, 16.00, 1);
INSERT INTO `product_order_detail` VALUES (1205, '2020031105310232172401', 104, 9.90, 10.00, 1);
INSERT INTO `product_order_detail` VALUES (1206, '2020031105310232172401', 207, 299.00, 399.00, 2);
INSERT INTO `product_order_detail` VALUES (1207, '2020031105310232172401', 153, 89.00, 123.50, 2);
INSERT INTO `product_order_detail` VALUES (1208, '2020031105320227164324', 169, 68.00, 99.00, 2);
INSERT INTO `product_order_detail` VALUES (1209, '2020031105320227164324', 142, 23.00, 25.00, 1);
INSERT INTO `product_order_detail` VALUES (1210, '2020031105330235156288', 169, 68.00, 99.00, 1);
INSERT INTO `product_order_detail` VALUES (1211, '2020031105340228197800', 160, 12.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (1212, '2020031105350245196236', 100, 4.00, 5.00, 1);
INSERT INTO `product_order_detail` VALUES (1213, '2020031105350245196236', 134, 8.00, 12.00, 1);
INSERT INTO `product_order_detail` VALUES (1214, '202003110536021180905', 140, 18.00, 25.00, 1);
INSERT INTO `product_order_detail` VALUES (1215, '202003110536021180905', 167, 15.00, 25.00, 2);
INSERT INTO `product_order_detail` VALUES (1216, '202003110536021180905', 170, 18.00, 25.00, 1);
INSERT INTO `product_order_detail` VALUES (1217, '202003110537021185542', 198, 28.00, 39.00, 2);
INSERT INTO `product_order_detail` VALUES (1218, '202003110537021185542', 123, 56.00, 67.00, 2);
INSERT INTO `product_order_detail` VALUES (1219, '202003110538021145261', 184, 23.00, 28.00, 1);
INSERT INTO `product_order_detail` VALUES (1220, '202003110538021145261', 109, 10.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (1221, '202003110539021179830', 193, 10.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (1222, '202003110539021179830', 159, 11.00, 16.00, 2);
INSERT INTO `product_order_detail` VALUES (1223, '2020031205300055154680', 113, 9.90, 10.90, 2);
INSERT INTO `product_order_detail` VALUES (1224, '2020031205300055154680', 146, 1.00, 4.00, 1);
INSERT INTO `product_order_detail` VALUES (1225, '2020031205300055154680', 73, 13.00, 28.00, 1);
INSERT INTO `product_order_detail` VALUES (1226, '2020031205310056184060', 72, 66.50, 88.00, 2);
INSERT INTO `product_order_detail` VALUES (1227, '2020031205310056184060', 86, 3.00, 6.00, 1);
INSERT INTO `product_order_detail` VALUES (1228, '2020031205310056184060', 78, 12.00, 15.00, 2);
INSERT INTO `product_order_detail` VALUES (1229, '2020031205320033144635', 179, 66.00, 88.00, 2);
INSERT INTO `product_order_detail` VALUES (1230, '2020031205320033144635', 114, 33.30, 99.90, 2);
INSERT INTO `product_order_detail` VALUES (1231, '2020031205330051107654', 167, 15.00, 25.00, 1);
INSERT INTO `product_order_detail` VALUES (1232, '2020031205340153127793', 73, 13.00, 28.00, 1);
INSERT INTO `product_order_detail` VALUES (1233, '2020031205340153127793', 151, 145.00, 184.00, 2);
INSERT INTO `product_order_detail` VALUES (1234, '2020031205350156150748', 159, 11.00, 16.00, 1);
INSERT INTO `product_order_detail` VALUES (1235, '2020031205350156150748', 177, 15.00, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (1236, '2020031205360139152962', 207, 299.00, 399.00, 2);
INSERT INTO `product_order_detail` VALUES (1237, '2020031205370136151286', 77, 6.00, 10.00, 2);
INSERT INTO `product_order_detail` VALUES (1238, '2020031205370136151286', 208, 78.00, 88.00, 1);
INSERT INTO `product_order_detail` VALUES (1239, '2020031205380148156693', 154, 99.00, 130.00, 1);
INSERT INTO `product_order_detail` VALUES (1240, '202003120539011177369', 203, 22.00, 28.00, 2);
INSERT INTO `product_order_detail` VALUES (1241, '202003120539011177369', 147, 10.00, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (1242, '202003120539011177369', 105, 9.00, 11.00, 1);
INSERT INTO `product_order_detail` VALUES (1243, '202003120540011132128', 75, 14.00, 16.00, 2);
INSERT INTO `product_order_detail` VALUES (1244, '202003120540011132128', 72, 66.50, 88.00, 3);
INSERT INTO `product_order_detail` VALUES (1245, '202003120541011130254', 148, 10.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (1246, '202003120541011130254', 213, 58.00, 68.00, 1);
INSERT INTO `product_order_detail` VALUES (1247, '202003120541011130254', 83, 16.00, 28.00, 2);
INSERT INTO `product_order_detail` VALUES (1248, '202003120542011182292', 75, 14.00, 16.00, 2);
INSERT INTO `product_order_detail` VALUES (1249, '202003120542011182292', 114, 33.30, 99.90, 1);
INSERT INTO `product_order_detail` VALUES (1250, '202003130530011148648', 122, 12.00, 18.00, 2);
INSERT INTO `product_order_detail` VALUES (1251, '202003130530011148648', 129, 19.90, 25.00, 1);
INSERT INTO `product_order_detail` VALUES (1252, '202003130531011161194', 180, 56.00, 98.00, 1);
INSERT INTO `product_order_detail` VALUES (1253, '202003130531011161194', 179, 66.00, 88.00, 2);
INSERT INTO `product_order_detail` VALUES (1254, '202003130531011161194', 213, 58.00, 68.00, 1);
INSERT INTO `product_order_detail` VALUES (1255, '202003130532011191378', 99, 15.00, 30.00, 1);
INSERT INTO `product_order_detail` VALUES (1256, '202003130532011191378', 173, 28.00, 35.00, 1);
INSERT INTO `product_order_detail` VALUES (1257, '202003130532011191378', 83, 16.00, 28.00, 1);
INSERT INTO `product_order_detail` VALUES (1258, '202003130533011141538', 120, 76.00, 99.00, 1);
INSERT INTO `product_order_detail` VALUES (1259, '202003130533011141538', 113, 9.90, 10.90, 2);
INSERT INTO `product_order_detail` VALUES (1260, '202003130534011170661', 200, 20.00, 25.00, 1);
INSERT INTO `product_order_detail` VALUES (1261, '202003130534011170661', 100, 4.00, 5.00, 1);
INSERT INTO `product_order_detail` VALUES (1262, '202003130534011170661', 123, 56.00, 67.00, 2);
INSERT INTO `product_order_detail` VALUES (1263, '2020031405300336128805', 173, 28.00, 35.00, 2);
INSERT INTO `product_order_detail` VALUES (1264, '2020031405310354168756', 74, 12.00, 16.00, 1);
INSERT INTO `product_order_detail` VALUES (1265, '202003140532031157150', 191, 8.00, 12.00, 2);
INSERT INTO `product_order_detail` VALUES (1266, '202003140532031157150', 183, 66.00, 88.00, 2);
INSERT INTO `product_order_detail` VALUES (1267, '202003140533031158109', 106, 78.88, 99.00, 2);
INSERT INTO `product_order_detail` VALUES (1268, '202003140533031158109', 213, 58.00, 68.00, 1);
INSERT INTO `product_order_detail` VALUES (1269, '202003140533031158109', 140, 18.00, 25.00, 2);
INSERT INTO `product_order_detail` VALUES (1270, '202003140534031152501', 185, 28.00, 36.00, 1);
INSERT INTO `product_order_detail` VALUES (1271, '202003140534031152501', 115, 9.90, 10.00, 2);
INSERT INTO `product_order_detail` VALUES (1272, '202003140534031152501', 177, 15.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (1273, '202003140535031166845', 131, 18.88, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (1274, '202003140535031166845', 72, 66.50, 88.00, 1);
INSERT INTO `product_order_detail` VALUES (1275, '202003140535031166845', 151, 145.00, 184.00, 2);
INSERT INTO `product_order_detail` VALUES (1276, '2020031505300347110097', 76, 8.00, 12.00, 1);
INSERT INTO `product_order_detail` VALUES (1277, '2020031505300347110097', 174, 45.00, 55.00, 1);
INSERT INTO `product_order_detail` VALUES (1278, '2020031505310314151578', 117, 10.00, 12.00, 2);
INSERT INTO `product_order_detail` VALUES (1279, '2020031505310314151578', 211, 98.00, 108.00, 1);
INSERT INTO `product_order_detail` VALUES (1280, '2020031505320337153144', 101, 15.00, 26.00, 1);
INSERT INTO `product_order_detail` VALUES (1281, '2020031505330353197760', 141, 20.00, 23.00, 2);
INSERT INTO `product_order_detail` VALUES (1282, '2020031505330353197760', 76, 8.00, 12.00, 2);
INSERT INTO `product_order_detail` VALUES (1283, '2020031505330353197760', 114, 33.30, 99.90, 1);
INSERT INTO `product_order_detail` VALUES (1284, '202003150534031179069', 180, 56.00, 98.00, 2);
INSERT INTO `product_order_detail` VALUES (1285, '202003150535031129461', 146, 1.00, 4.00, 1);
INSERT INTO `product_order_detail` VALUES (1286, '202003150535031129461', 108, 10.00, 15.00, 2);
INSERT INTO `product_order_detail` VALUES (1287, '202003150536031107882', 108, 10.00, 15.00, 1);
INSERT INTO `product_order_detail` VALUES (1288, '202003150536031107882', 124, 34.00, 45.00, 1);
INSERT INTO `product_order_detail` VALUES (1289, '202003150536031107882', 79, 8.00, 12.00, 2);
INSERT INTO `product_order_detail` VALUES (1290, '202003150537031131011', 104, 9.90, 10.00, 2);
INSERT INTO `product_order_detail` VALUES (1291, '202003150537031131011', 95, 6.00, 15.00, 2);
INSERT INTO `product_order_detail` VALUES (1292, '202003150537031131011', 73, 13.00, 28.00, 1);
INSERT INTO `product_order_detail` VALUES (1293, '2020031605300340173527', 146, 1.00, 4.00, 2);
INSERT INTO `product_order_detail` VALUES (1294, '2020031605310312105653', 86, 3.00, 6.00, 1);
INSERT INTO `product_order_detail` VALUES (1295, '2020031605310312105653', 179, 66.00, 88.00, 1);
INSERT INTO `product_order_detail` VALUES (1296, '2020031605320355115368', 83, 16.00, 28.00, 1);
INSERT INTO `product_order_detail` VALUES (1297, '2020031605330322125133', 77, 6.00, 10.00, 2);
INSERT INTO `product_order_detail` VALUES (1298, '2020031605340368186283', 209, 158.00, 258.00, 2);
INSERT INTO `product_order_detail` VALUES (1299, '2020031605350359187750', 170, 18.00, 25.00, 2);
INSERT INTO `product_order_detail` VALUES (1300, '2020031605350359187750', 142, 23.00, 25.00, 2);
INSERT INTO `product_order_detail` VALUES (1301, '2020031605350359187750', 126, 20.00, 50.00, 1);
INSERT INTO `product_order_detail` VALUES (1302, '2020031605360315171532', 101, 15.00, 26.00, 1);
INSERT INTO `product_order_detail` VALUES (1303, '2020031605360315171532', 193, 10.00, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (1304, '2020031605370312147472', 122, 12.00, 18.00, 1);
INSERT INTO `product_order_detail` VALUES (1305, '2020031605370312147472', 124, 34.00, 45.00, 2);
INSERT INTO `product_order_detail` VALUES (1306, '2020031605370312147472', 129, 19.90, 25.00, 1);
INSERT INTO `product_order_detail` VALUES (1307, '2020031605380363134092', 134, 8.00, 12.00, 1);
INSERT INTO `product_order_detail` VALUES (1308, '202003160539031181289', 140, 18.00, 25.00, 1);
INSERT INTO `product_order_detail` VALUES (1309, '202003160540031101606', 204, 39.00, 45.00, 1);
INSERT INTO `product_order_detail` VALUES (1310, '202003160540031101606', 191, 8.00, 12.00, 1);
INSERT INTO `product_order_detail` VALUES (1311, '202003160541031172278', 211, 98.00, 108.00, 1);
INSERT INTO `product_order_detail` VALUES (1312, '202003160541031172278', 128, 20.00, 28.00, 1);
INSERT INTO `product_order_detail` VALUES (1313, '202003160542031164275', 203, 22.00, 28.00, 1);
INSERT INTO `product_order_detail` VALUES (1314, '202003160542031164275', 124, 34.00, 45.00, 2);
INSERT INTO `product_order_detail` VALUES (1315, '2020031705300354110911', 149, 60.00, 80.00, 2);
INSERT INTO `product_order_detail` VALUES (1316, '2020031705300354110911', 206, 36.50, 43.00, 1);
INSERT INTO `product_order_detail` VALUES (1317, '2020031705310344146459', 123, 56.00, 67.00, 2);
INSERT INTO `product_order_detail` VALUES (1318, '2020031705310344146459', 135, 5.00, 10.00, 2);
INSERT INTO `product_order_detail` VALUES (1319, '2020031705320344133072', 138, 28.00, 31.00, 2);
INSERT INTO `product_order_detail` VALUES (1320, '2020031705320344133072', 115, 9.90, 10.00, 1);
INSERT INTO `product_order_detail` VALUES (1321, '2020031705320344133072', 143, 10.00, 12.00, 2);
INSERT INTO `product_order_detail` VALUES (1322, '2020031705330331187646', 205, 26.00, 34.00, 1);
INSERT INTO `product_order_detail` VALUES (1323, '2020031705330331187646', 176, 36.00, 42.00, 1);
INSERT INTO `product_order_detail` VALUES (1324, '2020031705330331187646', 155, 100.00, 120.00, 2);
INSERT INTO `product_order_detail` VALUES (1325, '2020031705340312188399', 110, 199.00, 299.00, 2);
INSERT INTO `product_order_detail` VALUES (1326, '202003170535031140419', 217, 21.00, 27.00, 2);
INSERT INTO `product_order_detail` VALUES (1327, '202003170536031199080', 177, 15.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (1328, '202003170536031199080', 163, 10.00, 10.00, 1);
INSERT INTO `product_order_detail` VALUES (1329, '202003170536031199080', 166, 18.00, 25.00, 1);
INSERT INTO `product_order_detail` VALUES (1330, '202003170537031105812', 120, 76.00, 99.00, 1);
INSERT INTO `product_order_detail` VALUES (1331, '202003170538031113566', 185, 28.00, 36.00, 2);
INSERT INTO `product_order_detail` VALUES (1332, '2020031805300339167617', 196, 6.00, 8.00, 1);
INSERT INTO `product_order_detail` VALUES (1333, '2020031805300339167617', 74, 12.00, 16.00, 2);
INSERT INTO `product_order_detail` VALUES (1334, '2020031805310338163925', 190, 10.00, 15.00, 2);
INSERT INTO `product_order_detail` VALUES (1335, '2020031805310338163925', 80, 12.00, 18.00, 2);
INSERT INTO `product_order_detail` VALUES (1336, '2020031805310338163925', 163, 10.00, 10.00, 1);
INSERT INTO `product_order_detail` VALUES (1337, '202003180532031118515', 215, 29.80, 37.00, 2);
INSERT INTO `product_order_detail` VALUES (1338, '202003180533031112586', 118, 25.00, 30.00, 1);
INSERT INTO `product_order_detail` VALUES (1339, '202003180534031138836', 114, 33.30, 99.90, 2);
INSERT INTO `product_order_detail` VALUES (1340, '202003180534031138836', 129, 19.90, 25.00, 1);
INSERT INTO `product_order_detail` VALUES (1341, '202003180534031138836', 131, 18.88, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (1342, '202003180535031141077', 197, 15.00, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (1343, '202003180535031141077', 115, 9.90, 10.00, 2);
INSERT INTO `product_order_detail` VALUES (1344, '202003180535031141077', 118, 25.00, 30.00, 1);
INSERT INTO `product_order_detail` VALUES (1345, '2020031905300327159426', 103, 36.00, 58.00, 2);
INSERT INTO `product_order_detail` VALUES (1346, '2020031905310349134265', 147, 10.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (1347, '2020031905310349134265', 76, 8.00, 12.00, 2);
INSERT INTO `product_order_detail` VALUES (1348, '2020031905320353130293', 205, 26.00, 34.00, 1);
INSERT INTO `product_order_detail` VALUES (1349, '2020031905330348185036', 158, 18.00, 28.00, 1);
INSERT INTO `product_order_detail` VALUES (1350, '2020031905330348185036', 133, 15.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (1351, '2020031905330348185036', 154, 99.00, 130.00, 2);
INSERT INTO `product_order_detail` VALUES (1352, '2020031905340341194636', 195, 30.00, 45.00, 1);
INSERT INTO `product_order_detail` VALUES (1353, '2020031905350336175405', 122, 12.00, 18.00, 1);
INSERT INTO `product_order_detail` VALUES (1354, '2020031905360313157994', 217, 21.00, 27.00, 1);
INSERT INTO `product_order_detail` VALUES (1355, '202003190537031165574', 209, 158.00, 258.00, 1);
INSERT INTO `product_order_detail` VALUES (1356, '202003190538031196723', 140, 18.00, 25.00, 2);
INSERT INTO `product_order_detail` VALUES (1357, '202003190538031196723', 177, 15.00, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (1358, '202003190539031101434', 158, 18.00, 28.00, 1);
INSERT INTO `product_order_detail` VALUES (1359, '202003190540031158731', 146, 1.00, 4.00, 3);
INSERT INTO `product_order_detail` VALUES (1360, '2020032005300329114073', 138, 28.00, 31.00, 1);
INSERT INTO `product_order_detail` VALUES (1361, '2020032005300329114073', 166, 18.00, 25.00, 2);
INSERT INTO `product_order_detail` VALUES (1362, '2020032005300329114073', 149, 60.00, 80.00, 1);
INSERT INTO `product_order_detail` VALUES (1363, '2020032005310350129929', 199, 25.00, 36.00, 2);
INSERT INTO `product_order_detail` VALUES (1364, '2020032005310350129929', 107, 15.00, 25.00, 1);
INSERT INTO `product_order_detail` VALUES (1365, '202003200532031186424', 174, 45.00, 55.00, 2);
INSERT INTO `product_order_detail` VALUES (1366, '202003200532031186424', 147, 10.00, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (1367, '202003200533031154857', 214, 58.00, 68.00, 2);
INSERT INTO `product_order_detail` VALUES (1368, '202003200533031154857', 86, 3.00, 6.00, 2);
INSERT INTO `product_order_detail` VALUES (1369, '202003200534031193361', 205, 26.00, 34.00, 2);
INSERT INTO `product_order_detail` VALUES (1370, '202003200535031190888', 127, 9.00, 12.00, 2);
INSERT INTO `product_order_detail` VALUES (1371, '2020032105300312109356', 107, 15.00, 25.00, 2);
INSERT INTO `product_order_detail` VALUES (1372, '2020032105310359184048', 197, 15.00, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (1373, '2020032105310359184048', 181, 25.00, 36.00, 1);
INSERT INTO `product_order_detail` VALUES (1374, '2020032105320322140189', 142, 23.00, 25.00, 1);
INSERT INTO `product_order_detail` VALUES (1375, '2020032105330347158485', 126, 20.00, 50.00, 1);
INSERT INTO `product_order_detail` VALUES (1376, '2020032105330347158485', 172, 38.00, 45.00, 2);
INSERT INTO `product_order_detail` VALUES (1377, '2020032105330347158485', 96, 19.90, 29.90, 1);
INSERT INTO `product_order_detail` VALUES (1378, '2020032105340360133906', 72, 66.50, 88.00, 1);
INSERT INTO `product_order_detail` VALUES (1379, '2020032105340360133906', 140, 18.00, 25.00, 2);
INSERT INTO `product_order_detail` VALUES (1380, '2020032105350325197176', 112, 22.00, 36.00, 2);
INSERT INTO `product_order_detail` VALUES (1381, '2020032105350325197176', 206, 36.50, 43.00, 1);
INSERT INTO `product_order_detail` VALUES (1382, '2020032105360358158347', 128, 20.00, 28.00, 1);
INSERT INTO `product_order_detail` VALUES (1383, '202003210537031120769', 113, 9.90, 10.90, 2);
INSERT INTO `product_order_detail` VALUES (1384, '202003210537031120769', 207, 299.00, 399.00, 2);
INSERT INTO `product_order_detail` VALUES (1385, '202003210537031120769', 100, 4.00, 5.00, 1);
INSERT INTO `product_order_detail` VALUES (1386, '202003210538031199216', 85, 12.00, 16.00, 2);
INSERT INTO `product_order_detail` VALUES (1387, '202003210538031199216', 124, 34.00, 45.00, 1);
INSERT INTO `product_order_detail` VALUES (1388, '202003210539031141658', 201, 2.00, 5.00, 2);
INSERT INTO `product_order_detail` VALUES (1389, '202003210539031141658', 195, 30.00, 45.00, 1);
INSERT INTO `product_order_detail` VALUES (1390, '202003210539031141658', 77, 6.00, 10.00, 2);
INSERT INTO `product_order_detail` VALUES (1391, '202003210540031142852', 211, 98.00, 108.00, 1);
INSERT INTO `product_order_detail` VALUES (1392, '2020032205300153133810', 128, 20.00, 28.00, 1);
INSERT INTO `product_order_detail` VALUES (1393, '2020032205300153133810', 197, 15.00, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (1394, '2020032205310247115102', 117, 10.00, 12.00, 1);
INSERT INTO `product_order_detail` VALUES (1395, '2020032205310247115102', 79, 8.00, 12.00, 2);
INSERT INTO `product_order_detail` VALUES (1396, '2020032205310247115102', 130, 2.00, 5.00, 2);
INSERT INTO `product_order_detail` VALUES (1397, '2020032205320222107917', 183, 66.00, 88.00, 1);
INSERT INTO `product_order_detail` VALUES (1398, '2020032205320222107917', 110, 199.00, 299.00, 2);
INSERT INTO `product_order_detail` VALUES (1399, '2020032205320222107917', 197, 15.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (1400, '2020032205330236152368', 167, 15.00, 25.00, 2);
INSERT INTO `product_order_detail` VALUES (1401, '2020032205330236152368', 196, 6.00, 8.00, 1);
INSERT INTO `product_order_detail` VALUES (1402, '2020032205340246185051', 137, 39.00, 50.00, 2);
INSERT INTO `product_order_detail` VALUES (1403, '2020032205340246185051', 178, 68.00, 79.00, 1);
INSERT INTO `product_order_detail` VALUES (1404, '2020032205340246185051', 128, 20.00, 28.00, 1);
INSERT INTO `product_order_detail` VALUES (1405, '2020032205350249155270', 204, 39.00, 45.00, 1);
INSERT INTO `product_order_detail` VALUES (1406, '2020032205350249155270', 72, 66.50, 88.00, 2);
INSERT INTO `product_order_detail` VALUES (1407, '202003220536021115244', 169, 68.00, 99.00, 2);
INSERT INTO `product_order_detail` VALUES (1408, '202003220536021115244', 209, 158.00, 258.00, 1);
INSERT INTO `product_order_detail` VALUES (1409, '202003220537021198147', 169, 68.00, 99.00, 1);
INSERT INTO `product_order_detail` VALUES (1410, '202003220537021198147', 180, 56.00, 98.00, 2);
INSERT INTO `product_order_detail` VALUES (1411, '202003220537021198147', 102, 12.00, 18.00, 1);
INSERT INTO `product_order_detail` VALUES (1412, '202003220538021172040', 116, 8.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (1413, '202003220538021172040', 163, 10.00, 10.00, 1);
INSERT INTO `product_order_detail` VALUES (1414, '202003220539021173518', 140, 18.00, 25.00, 1);
INSERT INTO `product_order_detail` VALUES (1415, '2020032305300329119276', 224, 26.60, 30.00, 1);
INSERT INTO `product_order_detail` VALUES (1416, '2020032305300329119276', 201, 2.00, 5.00, 1);
INSERT INTO `product_order_detail` VALUES (1417, '2020032305310344107272', 115, 9.90, 10.00, 2);
INSERT INTO `product_order_detail` VALUES (1418, '2020032305310344107272', 120, 76.00, 99.00, 2);
INSERT INTO `product_order_detail` VALUES (1419, '2020032305310344107272', 110, 199.00, 299.00, 2);
INSERT INTO `product_order_detail` VALUES (1420, '2020032305320368183914', 75, 14.00, 16.00, 1);
INSERT INTO `product_order_detail` VALUES (1421, '2020032305320368183914', 211, 98.00, 108.00, 1);
INSERT INTO `product_order_detail` VALUES (1422, '2020032305320368183914', 188, 48.00, 69.00, 2);
INSERT INTO `product_order_detail` VALUES (1423, '202003230533031167422', 104, 9.90, 10.00, 2);
INSERT INTO `product_order_detail` VALUES (1424, '202003230533031167422', 117, 10.00, 12.00, 2);
INSERT INTO `product_order_detail` VALUES (1425, '202003230533031167422', 125, 18.00, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (1426, '202003230534031164390', 103, 36.00, 58.00, 2);
INSERT INTO `product_order_detail` VALUES (1427, '202003230534031164390', 111, 28.00, 35.00, 1);
INSERT INTO `product_order_detail` VALUES (1428, '202003230534031164390', 219, 28.90, 35.00, 2);
INSERT INTO `product_order_detail` VALUES (1429, '202003230535031160124', 81, 15.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (1430, '202003230535031160124', 179, 66.00, 88.00, 1);
INSERT INTO `product_order_detail` VALUES (1431, '202003230535031160124', 214, 58.00, 68.00, 2);
INSERT INTO `product_order_detail` VALUES (1432, '202003230536031144949', 116, 8.00, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (1433, '2020032405300218151056', 208, 78.00, 88.00, 2);
INSERT INTO `product_order_detail` VALUES (1434, '2020032405300218151056', 99, 15.00, 30.00, 2);
INSERT INTO `product_order_detail` VALUES (1435, '2020032405310255191006', 199, 25.00, 36.00, 1);
INSERT INTO `product_order_detail` VALUES (1436, '202003240532021152686', 204, 39.00, 45.00, 1);
INSERT INTO `product_order_detail` VALUES (1437, '202003240532021152686', 218, 16.80, 20.00, 2);
INSERT INTO `product_order_detail` VALUES (1438, '202003240532021152686', 187, 2.00, 3.00, 2);
INSERT INTO `product_order_detail` VALUES (1439, '202003240533021146025', 175, 55.00, 65.00, 1);
INSERT INTO `product_order_detail` VALUES (1440, '202003240533021146025', 141, 20.00, 23.00, 1);
INSERT INTO `product_order_detail` VALUES (1441, '202003240534021147735', 133, 15.00, 20.00, 1);
INSERT INTO `product_order_detail` VALUES (1442, '202003240534021147735', 185, 28.00, 36.00, 2);
INSERT INTO `product_order_detail` VALUES (1443, '202003240534021147735', 188, 48.00, 69.00, 2);
INSERT INTO `product_order_detail` VALUES (1444, '202003240535021146277', 172, 38.00, 45.00, 2);
INSERT INTO `product_order_detail` VALUES (1445, '202003240535021146277', 217, 21.00, 27.00, 2);
INSERT INTO `product_order_detail` VALUES (1446, '202003240535021146277', 196, 6.00, 8.00, 2);

-- ----------------------------
-- Table structure for product_previewpicture
-- ----------------------------
DROP TABLE IF EXISTS `product_previewpicture`;
CREATE TABLE `product_previewpicture`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '图片地址',
  `productId` int(11) NULL DEFAULT NULL COMMENT '对应的产品',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `productId`(`productId`) USING BTREE,
  CONSTRAINT `product_previewpicture_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 182 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_previewpicture
-- ----------------------------
INSERT INTO `product_previewpicture` VALUES (19, 'http://182.92.128.70:8081/upload/website/image/20200309/1583744190178042861.jpg', 71);
INSERT INTO `product_previewpicture` VALUES (20, 'http://182.92.128.70:8081/upload/website/image/20200308/1583652296173019376.jpg', 72);
INSERT INTO `product_previewpicture` VALUES (21, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675235027064694.jpg', 73);
INSERT INTO `product_previewpicture` VALUES (22, 'http://182.92.128.70:8081/upload/website/image/20200308/1583653279171002561.jpg', 74);
INSERT INTO `product_previewpicture` VALUES (23, 'http://182.92.128.70:8081/upload/website/image/20200308/1583669179904093079.jpg', 75);
INSERT INTO `product_previewpicture` VALUES (24, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675235421061119.jpg', 76);
INSERT INTO `product_previewpicture` VALUES (25, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675235275070878.jpg', 77);
INSERT INTO `product_previewpicture` VALUES (26, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675235429002841.jpg', 78);
INSERT INTO `product_previewpicture` VALUES (27, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675235528055206.jpg', 79);
INSERT INTO `product_previewpicture` VALUES (28, 'http://182.92.128.70:8081/upload/website/image/20200308/1583674329067063044.png', 80);
INSERT INTO `product_previewpicture` VALUES (29, 'http://182.92.128.70:8081/upload/website/image/20200308/1583674102643089540.jpg', 81);
INSERT INTO `product_previewpicture` VALUES (30, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675235635066818.jpg', 83);
INSERT INTO `product_previewpicture` VALUES (31, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675235811076829.jpg', 84);
INSERT INTO `product_previewpicture` VALUES (32, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675235759036894.jpg', 85);
INSERT INTO `product_previewpicture` VALUES (33, 'http://182.92.128.70:8081/upload/website/image/20200309/1583743459288068636.jpg', 86);
INSERT INTO `product_previewpicture` VALUES (34, 'http://182.92.128.70:8081/upload/website/image/20200308/1583652423860085228.jpg', 95);
INSERT INTO `product_previewpicture` VALUES (35, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675520105092012.jpg', 96);
INSERT INTO `product_previewpicture` VALUES (36, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675554758069586.jpg', 97);
INSERT INTO `product_previewpicture` VALUES (37, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675679423024115.jpg', 98);
INSERT INTO `product_previewpicture` VALUES (38, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675639143095354.jpeg', 99);
INSERT INTO `product_previewpicture` VALUES (39, 'http://182.92.128.70:8081/upload/website/image/20200308/1583654735448051727.jpg', 100);
INSERT INTO `product_previewpicture` VALUES (40, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675698486033182.jpg', 101);
INSERT INTO `product_previewpicture` VALUES (41, 'http://182.92.128.70:8081/upload/website/image/20200308/1583651222363074868.png', 102);
INSERT INTO `product_previewpicture` VALUES (42, 'http://182.92.128.70:8081/upload/website/image/20200308/1583656862054067134.jpg', 103);
INSERT INTO `product_previewpicture` VALUES (43, 'http://182.92.128.70:8081/upload/website/image/20200308/1583662759068020231.jpeg', 104);
INSERT INTO `product_previewpicture` VALUES (44, 'http://182.92.128.70:8081/upload/website/image/20200308/1583653129437089353.jpg', 105);
INSERT INTO `product_previewpicture` VALUES (45, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675888211004779.jpeg', 106);
INSERT INTO `product_previewpicture` VALUES (46, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675862732016397.jpeg', 107);
INSERT INTO `product_previewpicture` VALUES (47, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675719297097721.jpg', 108);
INSERT INTO `product_previewpicture` VALUES (48, 'http://182.92.128.70:8081/upload/website/image/20200308/1583652722047033065.jpg', 109);
INSERT INTO `product_previewpicture` VALUES (49, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675943888014082.jpg', 110);
INSERT INTO `product_previewpicture` VALUES (50, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675898073078062.jpg', 111);
INSERT INTO `product_previewpicture` VALUES (51, 'http://182.92.128.70:8081/upload/website/image/20200308/1583662374727017560.jpg', 112);
INSERT INTO `product_previewpicture` VALUES (52, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675928035095211.jpg', 113);
INSERT INTO `product_previewpicture` VALUES (53, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675878244055718.jpg', 114);
INSERT INTO `product_previewpicture` VALUES (54, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675929855018703.jpg', 115);
INSERT INTO `product_previewpicture` VALUES (55, 'http://182.92.128.70:8081/upload/website/image/20200308/1583652558423030048.jpg', 116);
INSERT INTO `product_previewpicture` VALUES (56, 'http://182.92.128.70:8081/upload/website/image/20200308/1583652958781060682.jpg', 117);
INSERT INTO `product_previewpicture` VALUES (57, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675664211048580.jpg', 118);
INSERT INTO `product_previewpicture` VALUES (58, 'http://182.92.128.70:8081/upload/website/image/20190905/1567675945588053003.jpg', 119);
INSERT INTO `product_previewpicture` VALUES (59, 'http://182.92.128.70:8081/upload/website/image/20190905/1567676063823015062.jpg', 120);
INSERT INTO `product_previewpicture` VALUES (60, 'http://182.92.128.70:8081/upload/website/image/20200308/1583649512210055670.jpg', 121);
INSERT INTO `product_previewpicture` VALUES (61, 'http://182.92.128.70:8081/upload/website/image/20200308/1583659549799020869.jpg', 122);
INSERT INTO `product_previewpicture` VALUES (62, 'http://182.92.128.70:8081/upload/website/image/20200308/1583659397660010758.jpg', 123);
INSERT INTO `product_previewpicture` VALUES (63, 'http://182.92.128.70:8081/upload/website/image/20190905/1567676323302041190.jpg', 124);
INSERT INTO `product_previewpicture` VALUES (64, 'http://182.92.128.70:8081/upload/website/image/20190905/1567676240806070203.jpg', 125);
INSERT INTO `product_previewpicture` VALUES (65, 'http://182.92.128.70:8081/upload/website/image/20190905/1567676181037041027.jpg', 126);
INSERT INTO `product_previewpicture` VALUES (66, 'http://182.92.128.70:8081/upload/website/image/20200308/1583652863062057890.jpg', 127);
INSERT INTO `product_previewpicture` VALUES (67, 'http://182.92.128.70:8081/upload/website/image/20200308/1583659927030000768.png', 128);
INSERT INTO `product_previewpicture` VALUES (68, 'http://182.92.128.70:8081/upload/website/image/20200308/1583659092048000628.jpg', 129);
INSERT INTO `product_previewpicture` VALUES (69, 'http://182.92.128.70:8081/upload/website/image/20190905/1567676282937082673.jpg', 130);
INSERT INTO `product_previewpicture` VALUES (70, 'http://182.92.128.70:8081/upload/website/image/20190905/1567676306003069319.jpeg', 131);
INSERT INTO `product_previewpicture` VALUES (71, 'http://182.92.128.70:8081/upload/website/image/20190905/1567676323372008434.jpg', 132);
INSERT INTO `product_previewpicture` VALUES (72, 'http://182.92.128.70:8081/upload/website/image/20200308/1583659354801030136.jpg', 133);
INSERT INTO `product_previewpicture` VALUES (73, 'http://182.92.128.70:8081/upload/website/image/20190905/1567676308899047615.jpg', 134);
INSERT INTO `product_previewpicture` VALUES (74, 'http://182.92.128.70:8081/upload/website/image/20190905/1567676412666077876.jpg', 135);
INSERT INTO `product_previewpicture` VALUES (75, 'http://182.92.128.70:8081/upload/website/image/20200308/1583660797554010336.png', 136);
INSERT INTO `product_previewpicture` VALUES (76, 'http://182.92.128.70:8081/upload/website/image/20200308/1583673447777099645.jpg', 137);
INSERT INTO `product_previewpicture` VALUES (77, 'http://182.92.128.70:8081/upload/website/image/20190905/1567676418596060009.jpg', 138);
INSERT INTO `product_previewpicture` VALUES (78, 'http://182.92.128.70:8081/upload/website/image/20200308/1583653581514060232.jpg', 139);
INSERT INTO `product_previewpicture` VALUES (79, 'http://182.92.128.70:8081/upload/website/image/20200308/1583659175393050302.jpg', 140);
INSERT INTO `product_previewpicture` VALUES (80, 'http://182.92.128.70:8081/upload/website/image/20200308/1583660349917059464.jpg', 141);
INSERT INTO `product_previewpicture` VALUES (81, 'http://182.92.128.70:8081/upload/website/image/20190905/1567676762205031022.jpg', 142);
INSERT INTO `product_previewpicture` VALUES (82, 'http://182.92.128.70:8081/upload/website/image/20190905/1567676746044047550.jpg', 143);
INSERT INTO `product_previewpicture` VALUES (83, 'http://182.92.128.70:8081/upload/website/image/20190905/1567676763633054028.jpeg', 144);
INSERT INTO `product_previewpicture` VALUES (84, 'http://182.92.128.70:8081/upload/website/image/20200310/1583846338541021913.jpeg', 146);
INSERT INTO `product_previewpicture` VALUES (85, 'http://182.92.128.70:8081/upload/website/image/20200308/1583655929859081419.jpg', 147);
INSERT INTO `product_previewpicture` VALUES (86, 'http://182.92.128.70:8081/upload/website/image/20200308/1583655877203029580.jpg', 148);
INSERT INTO `product_previewpicture` VALUES (87, 'http://182.92.128.70:8081/upload/website/image/20190905/1567680156298066696.jpg', 149);
INSERT INTO `product_previewpicture` VALUES (88, 'http://182.92.128.70:8081/upload/website/image/20190905/1567680523285035872.jpg', 150);
INSERT INTO `product_previewpicture` VALUES (89, 'http://182.92.128.70:8081/upload/website/image/20200308/1583655832078012160.jpg', 151);
INSERT INTO `product_previewpicture` VALUES (90, 'http://182.92.128.70:8081/upload/website/image/20200308/1583663201051034265.png', 152);
INSERT INTO `product_previewpicture` VALUES (91, 'http://182.92.128.70:8081/upload/website/image/20190905/1567680249577051027.jpg', 153);
INSERT INTO `product_previewpicture` VALUES (92, 'http://182.92.128.70:8081/upload/website/image/20200308/1583655783218081173.jpg', 154);
INSERT INTO `product_previewpicture` VALUES (93, 'http://182.92.128.70:8081/upload/website/image/20200308/1583656490674054057.jpeg', 155);
INSERT INTO `product_previewpicture` VALUES (94, 'http://182.92.128.70:8081/upload/website/image/20200308/1583655746327006487.jpg', 156);
INSERT INTO `product_previewpicture` VALUES (95, 'http://182.92.128.70:8081/upload/website/image/20190905/1567683427828014985.jpg', 157);
INSERT INTO `product_previewpicture` VALUES (96, 'http://182.92.128.70:8081/upload/website/image/20200308/1583662457523097282.jpg', 158);
INSERT INTO `product_previewpicture` VALUES (97, 'http://182.92.128.70:8081/upload/website/image/20190905/1567693711169015255.jpg', 159);
INSERT INTO `product_previewpicture` VALUES (98, 'http://182.92.128.70:8081/upload/website/image/20200308/1583647417670003530.png', 160);
INSERT INTO `product_previewpicture` VALUES (99, 'http://182.92.128.70:8081/upload/website/image/20200308/1583663398021065865.png', 163);
INSERT INTO `product_previewpicture` VALUES (100, 'http://182.92.128.70:8081/upload/website/image/20200308/1583662949675083960.jpg', 166);
INSERT INTO `product_previewpicture` VALUES (101, 'http://182.92.128.70:8081/upload/website/image/20200309/1583744985711017100.jpg', 167);
INSERT INTO `product_previewpicture` VALUES (102, 'http://182.92.128.70:8081/upload/website/image/20200309/1583746237294032027.jpg', 168);
INSERT INTO `product_previewpicture` VALUES (103, 'http://182.92.128.70:8081/upload/website/image/20200309/1583746514873007048.png', 169);
INSERT INTO `product_previewpicture` VALUES (104, 'http://182.92.128.70:8081/upload/website/image/20200309/1583750735218039584.jpg', 170);
INSERT INTO `product_previewpicture` VALUES (105, 'http://182.92.128.70:8081/upload/website/image/20200309/1583747090578095249.jpeg', 171);
INSERT INTO `product_previewpicture` VALUES (106, 'http://182.92.128.70:8081/upload/website/image/20200309/1583747435939070553.jpg', 172);
INSERT INTO `product_previewpicture` VALUES (107, 'http://182.92.128.70:8081/upload/website/image/20200309/1583747509830022550.jpg', 173);
INSERT INTO `product_previewpicture` VALUES (108, 'http://182.92.128.70:8081/upload/website/image/20200309/1583747988191038925.jpeg', 174);
INSERT INTO `product_previewpicture` VALUES (109, 'http://182.92.128.70:8081/upload/website/image/20200309/1583748236052024483.jpg', 175);
INSERT INTO `product_previewpicture` VALUES (110, 'http://182.92.128.70:8081/upload/website/image/20200309/1583748143411082722.jpg', 176);
INSERT INTO `product_previewpicture` VALUES (111, 'http://182.92.128.70:8081/upload/website/image/20200309/1583748490959022038.jpeg', 177);
INSERT INTO `product_previewpicture` VALUES (112, 'http://182.92.128.70:8081/upload/website/image/20200309/1583748705913082729.jpg', 178);
INSERT INTO `product_previewpicture` VALUES (113, 'http://182.92.128.70:8081/upload/website/image/20200309/1583749014789010272.jpeg', 179);
INSERT INTO `product_previewpicture` VALUES (114, 'http://182.92.128.70:8081/upload/website/image/20200309/1583749490603062356.jpg', 180);
INSERT INTO `product_previewpicture` VALUES (115, 'http://182.92.128.70:8081/upload/website/image/20200309/1583750003683080993.jpg', 181);
INSERT INTO `product_previewpicture` VALUES (116, 'http://182.92.128.70:8081/upload/website/image/20200309/1583750274294093176.png', 182);
INSERT INTO `product_previewpicture` VALUES (117, 'http://182.92.128.70:8081/upload/website/image/20200309/1583750569811051664.jpg', 183);
INSERT INTO `product_previewpicture` VALUES (118, 'http://182.92.128.70:8081/upload/website/image/20200309/1583757717842051966.jpg', 184);
INSERT INTO `product_previewpicture` VALUES (119, 'http://182.92.128.70:8081/upload/website/image/20200309/1583758779959096376.jpg', 185);
INSERT INTO `product_previewpicture` VALUES (120, 'http://182.92.128.70:8081/upload/website/image/20200309/1583759548021014546.jpg', 186);
INSERT INTO `product_previewpicture` VALUES (121, 'http://182.92.128.70:8081/upload/website/image/20200309/1583757223713009410.jpg', 187);
INSERT INTO `product_previewpicture` VALUES (122, 'http://182.92.128.70:8081/upload/website/image/20200309/1583757223401066756.jpg', 188);
INSERT INTO `product_previewpicture` VALUES (123, 'http://182.92.128.70:8081/upload/website/image/20200309/1583761196735075090.jpg', 189);
INSERT INTO `product_previewpicture` VALUES (124, 'http://182.92.128.70:8081/upload/website/image/20200309/1583761488124085219.jpg', 190);
INSERT INTO `product_previewpicture` VALUES (125, 'http://182.92.128.70:8081/upload/website/image/20200309/1583761628654067934.jpg', 191);
INSERT INTO `product_previewpicture` VALUES (126, 'http://182.92.128.70:8081/upload/website/image/20200309/1583761741217033342.jpg', 192);
INSERT INTO `product_previewpicture` VALUES (127, 'http://182.92.128.70:8081/upload/website/image/20200309/1583761891669038584.png', 193);
INSERT INTO `product_previewpicture` VALUES (128, 'http://182.92.128.70:8081/upload/website/image/20200309/1583762048091043994.jpg', 194);
INSERT INTO `product_previewpicture` VALUES (129, 'http://182.92.128.70:8081/upload/website/image/20200309/1583762210887092796.jpeg', 195);
INSERT INTO `product_previewpicture` VALUES (130, 'http://182.92.128.70:8081/upload/website/image/20200309/1583762345121078533.jpg', 196);
INSERT INTO `product_previewpicture` VALUES (131, 'http://182.92.128.70:8081/upload/website/image/20200309/1583762486309083405.jpg', 197);
INSERT INTO `product_previewpicture` VALUES (132, 'http://182.92.128.70:8081/upload/website/image/20200309/1583762622824062994.jpg', 198);
INSERT INTO `product_previewpicture` VALUES (133, 'http://182.92.128.70:8081/upload/website/image/20200309/1583766174513073244.jpg', 199);
INSERT INTO `product_previewpicture` VALUES (134, 'http://182.92.128.70:8081/upload/website/image/20200309/1583766547593084110.jpg', 200);
INSERT INTO `product_previewpicture` VALUES (135, 'http://182.92.128.70:8081/upload/website/image/20200309/1583766786609019523.jpg', 201);
INSERT INTO `product_previewpicture` VALUES (136, 'http://182.92.128.70:8081/upload/website/image/20200309/1583767219580007283.jpg', 202);
INSERT INTO `product_previewpicture` VALUES (137, 'http://182.92.128.70:8081/upload/website/image/20200309/1583767506878013567.jpg', 203);
INSERT INTO `product_previewpicture` VALUES (138, 'http://182.92.128.70:8081/upload/website/image/20200309/1583767975348001372.jpg', 204);
INSERT INTO `product_previewpicture` VALUES (139, 'http://182.92.128.70:8081/upload/website/image/20200309/1583768630757084496.jpg', 205);
INSERT INTO `product_previewpicture` VALUES (140, 'http://182.92.128.70:8081/upload/website/image/20200309/1583769117681084532.jpg', 206);
INSERT INTO `product_previewpicture` VALUES (141, 'http://182.92.128.70:8081/upload/website/image/20200310/1583845606920055755.jpg', 207);
INSERT INTO `product_previewpicture` VALUES (142, 'http://182.92.128.70:8081/upload/website/image/20200311/1583932763991061047.jpg', 208);
INSERT INTO `product_previewpicture` VALUES (143, 'http://182.92.128.70:8081/upload/website/image/20200311/1583932936385037653.jpg', 209);
INSERT INTO `product_previewpicture` VALUES (144, 'http://182.92.128.70:8081/upload/website/image/20200311/1583933451357097215.jpg', 210);
INSERT INTO `product_previewpicture` VALUES (145, 'http://182.92.128.70:8081/upload/website/image/20200311/1583933970122094706.jpg', 211);
INSERT INTO `product_previewpicture` VALUES (146, 'http://182.92.128.70:8081/upload/website/image/20200311/1583934283908040204.jpg', 212);
INSERT INTO `product_previewpicture` VALUES (147, 'http://182.92.128.70:8081/upload/website/image/20200311/1583934969509064385.jpg', 213);
INSERT INTO `product_previewpicture` VALUES (148, 'http://182.92.128.70:8081/upload/website/image/20200311/1583935302588041665.jpg', 214);
INSERT INTO `product_previewpicture` VALUES (149, 'http://182.92.128.70:8081/upload/website/image/20200316/1584368483950023589.jpg', 215);
INSERT INTO `product_previewpicture` VALUES (150, 'http://182.92.128.70:8081/upload/website/image/20200316/1584370631495079999.jpg', 216);
INSERT INTO `product_previewpicture` VALUES (151, 'http://182.92.128.70:8081/upload/website/image/20200316/1584371752365088768.jpg', 217);
INSERT INTO `product_previewpicture` VALUES (154, 'http://182.92.128.70:8081/upload/website/image/20200310/1583845715467066038.jpg', 207);
INSERT INTO `product_previewpicture` VALUES (155, 'http://182.92.128.70:8081/upload/website/image/20200310/1583845715490094207.jpg', 207);
INSERT INTO `product_previewpicture` VALUES (156, 'http://182.92.128.70:8081/upload/website/image/20200322/1584853091878031054.jpg', 218);
INSERT INTO `product_previewpicture` VALUES (157, 'http://182.92.128.70:8081/upload/website/image/20200322/1584853091838044436.jpg', 218);
INSERT INTO `product_previewpicture` VALUES (158, 'http://182.92.128.70:8081/upload/website/image/20200322/1584853091936080067.jpg', 218);
INSERT INTO `product_previewpicture` VALUES (159, 'http://182.92.128.70:8081/upload/website/image/20200322/1584853738048022668.jpg', 219);
INSERT INTO `product_previewpicture` VALUES (160, 'http://182.92.128.70:8081/upload/website/image/20200322/1584853738067051082.jpg', 219);
INSERT INTO `product_previewpicture` VALUES (161, 'http://182.92.128.70:8081/upload/website/image/20200322/1584853738082046307.jpg', 219);
INSERT INTO `product_previewpicture` VALUES (162, 'http://182.92.128.70:8081/upload/website/image/20200322/1584867335113072667.jpg', 220);
INSERT INTO `product_previewpicture` VALUES (163, 'http://182.92.128.70:8081/upload/website/image/20200322/1584867351644046027.jpg', 220);
INSERT INTO `product_previewpicture` VALUES (164, 'http://182.92.128.70:8081/upload/website/image/20200322/1584867351704029032.jpg', 220);
INSERT INTO `product_previewpicture` VALUES (165, 'http://182.92.128.70:8081/upload/website/image/20200322/1584869441339036578.jpg', 221);
INSERT INTO `product_previewpicture` VALUES (166, 'http://182.92.128.70:8081/upload/website/image/20200322/1584869455618038450.jpg', 221);
INSERT INTO `product_previewpicture` VALUES (167, 'http://182.92.128.70:8081/upload/website/image/20200322/1584869455739041924.jpg', 221);
INSERT INTO `product_previewpicture` VALUES (168, 'http://182.92.128.70:8081/upload/website/image/20200322/1584875820623015422.jpg', 222);
INSERT INTO `product_previewpicture` VALUES (169, 'http://182.92.128.70:8081/upload/website/image/20200322/1584875820609049395.jpg', 222);
INSERT INTO `product_previewpicture` VALUES (170, 'http://182.92.128.70:8081/upload/website/image/20200322/1584875820578048872.jpg', 222);
INSERT INTO `product_previewpicture` VALUES (171, 'http://182.92.128.70:8081/upload/website/image/20200322/1584876993259068570.jpg', 223);
INSERT INTO `product_previewpicture` VALUES (172, 'http://182.92.128.70:8081/upload/website/image/20200322/1584877006767013579.jpg', 223);
INSERT INTO `product_previewpicture` VALUES (173, 'http://182.92.128.70:8081/upload/website/image/20200322/1584879424086017355.jpg', 224);
INSERT INTO `product_previewpicture` VALUES (174, 'http://182.92.128.70:8081/upload/website/image/20200322/1584879433821073301.jpg', 224);
INSERT INTO `product_previewpicture` VALUES (175, 'http://182.92.128.70:8081/upload/website/image/20200322/1584879433886060807.jpg', 224);
INSERT INTO `product_previewpicture` VALUES (176, 'http://182.92.128.70:8081/upload/website/image/20200322/1584883000183030623.jpg', 225);
INSERT INTO `product_previewpicture` VALUES (177, 'http://182.92.128.70:8081/upload/website/image/20200322/1584883011075040410.jpg', 225);
INSERT INTO `product_previewpicture` VALUES (178, 'http://182.92.128.70:8081/upload/website/image/20200322/1584883011416041402.jpg', 225);
INSERT INTO `product_previewpicture` VALUES (179, 'http://182.92.128.70:8081/upload/website/image/20200322/1584883434685049875.jpg', 226);
INSERT INTO `product_previewpicture` VALUES (180, 'http://182.92.128.70:8081/upload/website/image/20200322/1584883452825003749.jpg', 226);
INSERT INTO `product_previewpicture` VALUES (181, 'http://182.92.128.70:8081/upload/website/image/20200322/1584883454366023890.jpg', 226);

-- ----------------------------
-- Table structure for producttype
-- ----------------------------
DROP TABLE IF EXISTS `producttype`;
CREATE TABLE `producttype`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品类别编号',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品类别名称',
  `display` bit(1) NULL DEFAULT NULL COMMENT '是否在前台显示',
  `linkUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转向链接地址（如果存在则直接转向链接地址，否则打开本网站栏目）',
  `imageUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保存栏目图片',
  `summary` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '栏目简介（纯文本）',
  `intro` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '栏目简介（富文本）',
  `orderNum` int(11) NULL DEFAULT 0 COMMENT '排序（默认0，规则由前台决定，一般排序为最大）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of producttype
-- ----------------------------
INSERT INTO `producttype` VALUES (6, '小吃快餐', b'1', '', '6.png', '小吃是一类在口味上具有特定风格特色的食品的总称。小吃就地取材，能够突出反映当地的物质文化及社会生活风貌，是一个地区不可或缺的重要特色，更是离乡游子们对家乡思念的主要对象。', '<p>小吃是一类在<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%8F%A3%E5%91%B3/2536129\" data-lemmaid=\"2536129\">口味</a>上具有特定风格<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%89%B9%E8%89%B2/3690806\" data-lemmaid=\"3690806\">特色</a>的<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%A3%9F%E5%93%81/174284\" data-lemmaid=\"174284\">食品</a>的<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%80%BB%E7%A7%B0/8996550\" data-lemmaid=\"8996550\">总称</a>。小吃<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%B0%B1%E5%9C%B0%E5%8F%96%E6%9D%90/1539770\" data-lemmaid=\"1539770\">就地取材</a>，能够突出反映当地的<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%89%A9%E8%B4%A8/661503\" data-lemmaid=\"661503\">物质</a>文化及<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%A4%BE%E4%BC%9A%E7%94%9F%E6%B4%BB/9324529\" data-lemmaid=\"9324529\">社会生活</a>风貌，是一个地区不可或缺的重要特色，更是离乡游子们对<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%AE%B6%E4%B9%A1/1954\" data-lemmaid=\"1954\">家乡</a>思念的主要对象。</p>', 20);
INSERT INTO `producttype` VALUES (25, '甜点饮品', b'1', '', '25.png', '甜点，也叫甜品，是一个很广的概念，大致分为甜味点心和广式的糖水。甜点，一般不会被当作正餐，通常作为下午茶的小食。自古以来，中国人的饮食之道讲究养生，保健，滋补。特别是女生，饭后来一杯甜品，一碗甜汤，它们不含咖啡因、不含人工色素、不含食用香精等。让您里里外外都能有无处不在的健康美丽。在高温的夏季，酷暑吞噬着城市的每一个角落，人们走在街头通常想到的是找一家店，能喝上一杯让身心舒畅的冰凉饮品。平衡一下身体的热气，那该是多美妙的享受，而且吃一点甜品会感到开心和放松。在冬季，热食滋补甜品、手工磨糊、牛奶炖品、精选奶制甜品等让喜欢甜食的人们在寒冷的冬天也能品尝到可口的甜品。', '<p>甜点，也叫甜品，是一个很广的概念，大致分为甜味点心和广式的糖水。甜点，一般不会被当作正餐，通常作为下午茶的小食。</p><p>自古以来，中国人的饮食之道讲究养生，保健，滋补。特别是女生，饭后来一杯甜品，一碗甜汤，它们不含咖啡因、不含人工色素、不含食用香精等。让您里里外外都能有无处不在的健康美丽。在高温的夏季，酷暑吞噬着城市的每一个角落，人们走在街头通常想到的是找一家店，能喝上一杯让身心舒畅的冰凉饮品。平衡一下身体的热气，那该是多美妙的享受，而且吃一点甜品会感到开心和放松。</p><p>在冬季，热食滋补甜品、手工磨糊、牛奶炖品、精选奶制甜品等让喜欢甜食的人们在寒冷的冬天也能品尝到可口的甜品。<br></p>', 20);
INSERT INTO `producttype` VALUES (46, '西餐', b'1', '', '46.jpg', '西餐，顾名思义是西方国家的餐食。西方国家，是相对于东亚而言的欧洲白人世界文化圈，西餐的准确称呼应为欧洲美食，或欧式餐饮。其菜式料理与中国菜不同，一般使用橄榄油、黄油、番茄酱、沙拉酱等调味料。不同的主食相同的都是搭配上一些蔬菜，如番茄、西兰花等。西餐这个词是由于其特定的地理位置所决定的。\"西\"是西方的意思。一般指欧洲各国。\"餐\"就是饮食菜肴。东方人通常所说的西餐主要包括西欧国家的饮食菜肴，当然同时还包括东欧各国，地中海沿岸等国和一些拉丁美洲如墨西哥等国的菜肴。而东南亚各国的菜肴一般统称为东南亚菜，但也有独为一种菜系的，如印度菜。西餐一般以刀叉为餐具以面包为主食，多以长形桌台为台形。西餐的主要特点是主料突出，形色美观，口味鲜美，营养丰富，供应方便等。正规西菜而言应包括了餐汤、前菜、主菜、餐后甜品及饮品。西餐大致可分为法式、英式、意式、俄式、美式，地中海等多种不同风格的菜肴。', NULL, 100);
INSERT INTO `producttype` VALUES (47, '烧烤', b'1', '', '47.png', '烧烤，可能是人类最原始的烹调方式，是以燃料加热和干燥空气，并把食物放置于热干空气中一个比较接近热源的位置来加热食物。一般来说，烧烤是在火上将食物（多为肉类，海鲜，蔬菜）烤熟，烹调至可食用；现代社会，由于人类发明了多种用火方式，烧烤方式也逐渐多样化，发展出各式烧烤炉、烧烤架、烧烤酱等烧烤用品。', NULL, 20);
INSERT INTO `producttype` VALUES (48, '海鲜', b'1', '', '48.jpg', '海鲜（hoisin），又称海产食物，包括了鱼类、虾类、贝类这些海产等。虽然海带这类海洋生物也常是被料理成食物，但是海鲜主要还是针对动物制成的料理为主。', NULL, 20);
INSERT INTO `producttype` VALUES (49, '靓汤', b'1', '', '49.jpg', '', NULL, 100);
INSERT INTO `producttype` VALUES (63, '空栏目（测试）', b'1', '', NULL, '', NULL, 100);

-- ----------------------------
-- Table structure for purview
-- ----------------------------
DROP TABLE IF EXISTS `purview`;
CREATE TABLE `purview`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名/权限名',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求路径规则(表示拥有该路径的访问规则)',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enabled` bit(1) NULL DEFAULT NULL COMMENT '是否可用',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '权限的描述',
  `orderNum` int(11) NULL DEFAULT NULL COMMENT '优先级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purview
-- ----------------------------
INSERT INTO `purview` VALUES (30, '权限管理', '/api/backstage/purviewmanage/**', '/purview', b'1', '核心模块，决定操作权限', 20);
INSERT INTO `purview` VALUES (31, '角色管理', '/api/backstage/rolemanage/**', '/rolemanage', b'1', '', 30);
INSERT INTO `purview` VALUES (32, '个人资料编辑', '/api/backstage/admin/**', '/admin', b'1', '', 5);
INSERT INTO `purview` VALUES (33, '管理员管理', '/api/backstage/adminmanage/**', '/adminmanage', b'1', '', 40);
INSERT INTO `purview` VALUES (34, '客户模块管理', '/api/backstage/customermanage/**', '/customermanage/', b'1', '', 60);
INSERT INTO `purview` VALUES (38, '产品类别模块', '/api/backstage/producttype/**', '/producttype/', b'1', NULL, 70);
INSERT INTO `purview` VALUES (39, '产品模块', '/api/backstage/product/**', '/product', b'1', '', 80);
INSERT INTO `purview` VALUES (40, '富文本操作权限', '/api/backstage/ueditor/**', NULL, b'1', '', 900);
INSERT INTO `purview` VALUES (41, '菜单模块', '/api/backstage/menumanage/**', '/menumanage', b'1', '核心模块，决定前端菜单显示（暂不设计权限验证）——如果需要权限细化，可以用该模块替代权限模块。', 10);
INSERT INTO `purview` VALUES (48, '订单管理模块', '/api/backstage/productorder/**', NULL, b'1', '后台的订单管理', 90);
INSERT INTO `purview` VALUES (49, '子订单管理模块', '/api/backstage/productorderdetail/**', NULL, b'1', '', 100);
INSERT INTO `purview` VALUES (50, '统计模块', '/api/backstage/count/**', NULL, b'1', '', 200);
INSERT INTO `purview` VALUES (51, '网站配置模块', '/api/backstage/webconfig/**', NULL, b'1', '', 999);
INSERT INTO `purview` VALUES (52, '日志管理模块', '/api/backstage/log/**', NULL, b'1', '', 300);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称，采用spring security的命名规则',
  `nameZH` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色中文名称',
  `level` int(11) NULL DEFAULT NULL COMMENT '角色级别',
  `defaultRole` bit(1) NULL DEFAULT NULL COMMENT '是否为默认角色',
  `enabled` bit(1) NULL DEFAULT NULL COMMENT '是否启用',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '角色说明',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (-99, 'ROLE_admin', '系统管理员', -99, b'0', b'1', '系统自带管理员，最高权限');
INSERT INTO `role` VALUES (-1, 'ROLE_user', '普通管理员', 20, b'0', b'1', '系统自带管理员，基本角色');
INSERT INTO `role` VALUES (3, 'ROLE_visitor', '观光员', 100, b'0', b'1', '只拥有查询权限');
INSERT INTO `role` VALUES (12, 'ROLE_student', '学生', 100, b'1', b'1', '给学生操作的角色');
INSERT INTO `role` VALUES (14, 'ROLE_teacher', '老师', 100, b'0', b'1', '提供给软件专业教师操作的角色');
INSERT INTO `role` VALUES (15, 'ROLE_product', '网站编辑', 100, b'0', b'1', '');

-- ----------------------------
-- Table structure for role_menu
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) NULL DEFAULT NULL COMMENT 'role主键',
  `menuId` int(11) NULL DEFAULT NULL COMMENT 'menu主键',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `roleId`(`roleId`, `menuId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 574 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES (405, 12, 7, NULL);
INSERT INTO `role_menu` VALUES (406, 12, 29, NULL);
INSERT INTO `role_menu` VALUES (407, 12, 30, NULL);
INSERT INTO `role_menu` VALUES (408, 12, 33, NULL);
INSERT INTO `role_menu` VALUES (409, 12, 3, NULL);
INSERT INTO `role_menu` VALUES (410, 12, 10, NULL);
INSERT INTO `role_menu` VALUES (411, 12, 4, NULL);
INSERT INTO `role_menu` VALUES (412, 12, 14, NULL);
INSERT INTO `role_menu` VALUES (413, 12, 15, NULL);
INSERT INTO `role_menu` VALUES (414, 12, 5, NULL);
INSERT INTO `role_menu` VALUES (415, 12, 55, NULL);
INSERT INTO `role_menu` VALUES (416, 12, 56, NULL);
INSERT INTO `role_menu` VALUES (417, 12, 58, NULL);
INSERT INTO `role_menu` VALUES (418, 12, 59, NULL);
INSERT INTO `role_menu` VALUES (479, -99, 7, NULL);
INSERT INTO `role_menu` VALUES (480, -99, 29, NULL);
INSERT INTO `role_menu` VALUES (481, -99, 30, NULL);
INSERT INTO `role_menu` VALUES (482, -99, 2, NULL);
INSERT INTO `role_menu` VALUES (483, -99, 53, NULL);
INSERT INTO `role_menu` VALUES (484, -99, 8, NULL);
INSERT INTO `role_menu` VALUES (485, -99, 32, NULL);
INSERT INTO `role_menu` VALUES (486, -99, 33, NULL);
INSERT INTO `role_menu` VALUES (487, -99, 3, NULL);
INSERT INTO `role_menu` VALUES (488, -99, 10, NULL);
INSERT INTO `role_menu` VALUES (489, -99, 4, NULL);
INSERT INTO `role_menu` VALUES (490, -99, 14, NULL);
INSERT INTO `role_menu` VALUES (491, -99, 15, NULL);
INSERT INTO `role_menu` VALUES (492, -99, 5, NULL);
INSERT INTO `role_menu` VALUES (493, -99, 55, NULL);
INSERT INTO `role_menu` VALUES (494, -99, 56, NULL);
INSERT INTO `role_menu` VALUES (495, -99, 6, NULL);
INSERT INTO `role_menu` VALUES (496, -99, 23, NULL);
INSERT INTO `role_menu` VALUES (497, -99, 57, NULL);
INSERT INTO `role_menu` VALUES (498, -99, 59, NULL);
INSERT INTO `role_menu` VALUES (499, -99, 58, NULL);
INSERT INTO `role_menu` VALUES (500, -99, 60, NULL);
INSERT INTO `role_menu` VALUES (501, -99, 24, NULL);
INSERT INTO `role_menu` VALUES (502, -1, 7, NULL);
INSERT INTO `role_menu` VALUES (503, -1, 29, NULL);
INSERT INTO `role_menu` VALUES (504, -1, 30, NULL);
INSERT INTO `role_menu` VALUES (505, -1, 2, NULL);
INSERT INTO `role_menu` VALUES (506, -1, 53, NULL);
INSERT INTO `role_menu` VALUES (507, -1, 8, NULL);
INSERT INTO `role_menu` VALUES (508, -1, 32, NULL);
INSERT INTO `role_menu` VALUES (509, -1, 33, NULL);
INSERT INTO `role_menu` VALUES (510, -1, 3, NULL);
INSERT INTO `role_menu` VALUES (511, -1, 10, NULL);
INSERT INTO `role_menu` VALUES (512, -1, 4, NULL);
INSERT INTO `role_menu` VALUES (513, -1, 14, NULL);
INSERT INTO `role_menu` VALUES (514, -1, 15, NULL);
INSERT INTO `role_menu` VALUES (515, -1, 5, NULL);
INSERT INTO `role_menu` VALUES (516, -1, 55, NULL);
INSERT INTO `role_menu` VALUES (517, -1, 56, NULL);
INSERT INTO `role_menu` VALUES (518, -1, 6, NULL);
INSERT INTO `role_menu` VALUES (519, -1, 23, NULL);
INSERT INTO `role_menu` VALUES (520, -1, 57, NULL);
INSERT INTO `role_menu` VALUES (521, -1, 59, NULL);
INSERT INTO `role_menu` VALUES (522, -1, 58, NULL);
INSERT INTO `role_menu` VALUES (523, -1, 60, NULL);
INSERT INTO `role_menu` VALUES (524, -1, 24, NULL);
INSERT INTO `role_menu` VALUES (525, 3, 7, NULL);
INSERT INTO `role_menu` VALUES (526, 3, 29, NULL);
INSERT INTO `role_menu` VALUES (527, 3, 30, NULL);
INSERT INTO `role_menu` VALUES (528, 3, 2, NULL);
INSERT INTO `role_menu` VALUES (529, 3, 53, NULL);
INSERT INTO `role_menu` VALUES (530, 3, 8, NULL);
INSERT INTO `role_menu` VALUES (531, 3, 32, NULL);
INSERT INTO `role_menu` VALUES (532, 3, 33, NULL);
INSERT INTO `role_menu` VALUES (533, 3, 3, NULL);
INSERT INTO `role_menu` VALUES (534, 3, 10, NULL);
INSERT INTO `role_menu` VALUES (535, 3, 4, NULL);
INSERT INTO `role_menu` VALUES (536, 3, 14, NULL);
INSERT INTO `role_menu` VALUES (537, 3, 15, NULL);
INSERT INTO `role_menu` VALUES (538, 3, 5, NULL);
INSERT INTO `role_menu` VALUES (539, 3, 55, NULL);
INSERT INTO `role_menu` VALUES (540, 3, 56, NULL);
INSERT INTO `role_menu` VALUES (541, 3, 6, NULL);
INSERT INTO `role_menu` VALUES (542, 3, 23, NULL);
INSERT INTO `role_menu` VALUES (543, 3, 57, NULL);
INSERT INTO `role_menu` VALUES (544, 3, 59, NULL);
INSERT INTO `role_menu` VALUES (545, 3, 58, NULL);
INSERT INTO `role_menu` VALUES (546, 3, 60, NULL);
INSERT INTO `role_menu` VALUES (547, 3, 24, NULL);
INSERT INTO `role_menu` VALUES (548, 14, 7, NULL);
INSERT INTO `role_menu` VALUES (549, 14, 29, NULL);
INSERT INTO `role_menu` VALUES (550, 14, 30, NULL);
INSERT INTO `role_menu` VALUES (551, 14, 2, NULL);
INSERT INTO `role_menu` VALUES (552, 14, 33, NULL);
INSERT INTO `role_menu` VALUES (553, 14, 3, NULL);
INSERT INTO `role_menu` VALUES (554, 14, 10, NULL);
INSERT INTO `role_menu` VALUES (555, 14, 4, NULL);
INSERT INTO `role_menu` VALUES (556, 14, 14, NULL);
INSERT INTO `role_menu` VALUES (557, 14, 15, NULL);
INSERT INTO `role_menu` VALUES (558, 14, 5, NULL);
INSERT INTO `role_menu` VALUES (559, 14, 55, NULL);
INSERT INTO `role_menu` VALUES (560, 14, 56, NULL);
INSERT INTO `role_menu` VALUES (561, 14, 6, NULL);
INSERT INTO `role_menu` VALUES (562, 14, 23, NULL);
INSERT INTO `role_menu` VALUES (563, 14, 57, NULL);
INSERT INTO `role_menu` VALUES (564, 14, 59, NULL);
INSERT INTO `role_menu` VALUES (565, 14, 58, NULL);
INSERT INTO `role_menu` VALUES (566, 14, 60, NULL);
INSERT INTO `role_menu` VALUES (567, 14, 24, NULL);
INSERT INTO `role_menu` VALUES (568, 15, 7, NULL);
INSERT INTO `role_menu` VALUES (569, 15, 29, NULL);
INSERT INTO `role_menu` VALUES (570, 15, 30, NULL);
INSERT INTO `role_menu` VALUES (571, 15, 4, NULL);
INSERT INTO `role_menu` VALUES (572, 15, 14, NULL);
INSERT INTO `role_menu` VALUES (573, 15, 15, NULL);

-- ----------------------------
-- Table structure for role_purview
-- ----------------------------
DROP TABLE IF EXISTS `role_purview`;
CREATE TABLE `role_purview`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) NULL DEFAULT NULL COMMENT 'role主键',
  `purviewId` int(11) NULL DEFAULT NULL COMMENT 'purview主键',
  `permissionIds` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作权限，非数据库外键，在业务层写死',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `roleId`(`roleId`, `purviewId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 341 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_purview
-- ----------------------------
INSERT INTO `role_purview` VALUES (1, -99, 30, '1234', '2019-10-17 15:45:55');
INSERT INTO `role_purview` VALUES (3, -99, 32, '1234', '2019-10-17 15:46:07');
INSERT INTO `role_purview` VALUES (5, -99, 34, '1234', '2019-10-17 15:46:08');
INSERT INTO `role_purview` VALUES (7, -99, 31, '1234', '2019-10-17 16:21:02');
INSERT INTO `role_purview` VALUES (9, -99, 33, '1234', '2019-10-17 16:21:04');
INSERT INTO `role_purview` VALUES (11, -99, 38, '1234', '2019-10-17 18:46:14');
INSERT INTO `role_purview` VALUES (15, 3, 30, '1', '2019-10-19 01:36:02');
INSERT INTO `role_purview` VALUES (26, -1, 38, '2341', '2019-10-19 08:12:10');
INSERT INTO `role_purview` VALUES (27, -1, 33, '1', '2019-10-19 08:12:58');
INSERT INTO `role_purview` VALUES (30, -1, 32, '1324', '2019-10-19 08:24:01');
INSERT INTO `role_purview` VALUES (31, 3, 31, '1', '2019-10-19 08:26:02');
INSERT INTO `role_purview` VALUES (32, 3, 32, '1', '2019-10-19 08:26:03');
INSERT INTO `role_purview` VALUES (33, 3, 33, '1', '2019-10-19 08:26:04');
INSERT INTO `role_purview` VALUES (34, 3, 34, '1', '2019-10-19 08:26:04');
INSERT INTO `role_purview` VALUES (35, 3, 38, '1', '2019-10-19 08:26:06');
INSERT INTO `role_purview` VALUES (36, -99, 39, '1234', '2019-10-19 08:51:39');
INSERT INTO `role_purview` VALUES (38, -99, 40, '1234', '2019-10-19 08:56:58');
INSERT INTO `role_purview` VALUES (39, 3, 39, '1', '2019-10-19 08:57:27');
INSERT INTO `role_purview` VALUES (40, 3, 40, '1', '2019-10-19 08:57:28');
INSERT INTO `role_purview` VALUES (41, -1, 30, '1', '2019-10-19 09:02:10');
INSERT INTO `role_purview` VALUES (42, -1, 31, '1', '2019-10-19 09:02:10');
INSERT INTO `role_purview` VALUES (51, 7, 30, '1', '2019-10-21 10:53:12');
INSERT INTO `role_purview` VALUES (52, 7, 31, '1', '2019-10-21 10:53:12');
INSERT INTO `role_purview` VALUES (54, 7, 33, '1', '2019-10-21 10:53:12');
INSERT INTO `role_purview` VALUES (56, 7, 38, '1', '2019-10-21 10:53:12');
INSERT INTO `role_purview` VALUES (57, 7, 39, '1', '2019-10-21 10:53:12');
INSERT INTO `role_purview` VALUES (58, 7, 40, '1', '2019-10-21 10:53:12');
INSERT INTO `role_purview` VALUES (59, 7, 32, '1', '2019-10-21 10:53:26');
INSERT INTO `role_purview` VALUES (60, 7, 34, '1', '2019-10-21 10:53:26');
INSERT INTO `role_purview` VALUES (61, -1, 39, '2134', '2019-10-24 20:14:58');
INSERT INTO `role_purview` VALUES (65, 12, 32, '1', '2019-10-24 20:16:02');
INSERT INTO `role_purview` VALUES (66, 12, 33, '1', '2019-10-24 20:16:02');
INSERT INTO `role_purview` VALUES (67, 12, 34, '1', '2019-10-24 20:16:02');
INSERT INTO `role_purview` VALUES (68, 12, 38, '1', '2019-10-24 20:16:02');
INSERT INTO `role_purview` VALUES (69, 12, 39, '1', '2019-10-24 20:16:02');
INSERT INTO `role_purview` VALUES (70, 12, 40, '1', '2019-10-24 20:16:02');
INSERT INTO `role_purview` VALUES (71, -1, 34, '1234', '2019-11-12 09:44:54');
INSERT INTO `role_purview` VALUES (85, 12, 41, '1', '2020-01-20 00:49:07');
INSERT INTO `role_purview` VALUES (86, 14, 30, '1', '2020-01-20 00:53:19');
INSERT INTO `role_purview` VALUES (89, 14, 31, '1', '2020-01-20 01:04:12');
INSERT INTO `role_purview` VALUES (91, -1, 40, '1234', '2020-01-20 01:04:59');
INSERT INTO `role_purview` VALUES (92, 14, 32, '1', '2020-01-20 01:05:25');
INSERT INTO `role_purview` VALUES (93, 14, 33, '1', '2020-01-20 01:05:55');
INSERT INTO `role_purview` VALUES (302, -99, 41, '1234', '2020-01-20 22:38:55');
INSERT INTO `role_purview` VALUES (303, -1, 41, '1', '2020-01-20 23:48:59');
INSERT INTO `role_purview` VALUES (304, 3, 41, '1', '2020-01-20 23:50:11');
INSERT INTO `role_purview` VALUES (305, 14, 41, '1', '2020-01-20 23:52:53');
INSERT INTO `role_purview` VALUES (306, 14, 34, '1234', '2020-01-20 23:52:53');
INSERT INTO `role_purview` VALUES (307, 14, 38, '1234', '2020-01-20 23:52:53');
INSERT INTO `role_purview` VALUES (308, 14, 39, '1234', '2020-01-20 23:52:53');
INSERT INTO `role_purview` VALUES (309, 14, 40, '12', '2020-01-20 23:52:53');
INSERT INTO `role_purview` VALUES (310, 12, 31, '1', '2020-01-22 20:34:05');
INSERT INTO `role_purview` VALUES (311, 12, 30, '1', '2020-01-22 20:34:05');
INSERT INTO `role_purview` VALUES (312, -99, 48, '1234', '2020-02-01 10:09:59');
INSERT INTO `role_purview` VALUES (313, -1, 48, '1234', '2020-02-01 10:10:08');
INSERT INTO `role_purview` VALUES (314, 3, 48, '1', '2020-02-01 10:10:31');
INSERT INTO `role_purview` VALUES (315, 12, 48, '13', '2020-02-01 10:10:36');
INSERT INTO `role_purview` VALUES (316, 14, 48, '13', '2020-02-01 10:10:45');
INSERT INTO `role_purview` VALUES (317, -99, 49, '1234', '2020-02-03 23:53:51');
INSERT INTO `role_purview` VALUES (318, -1, 49, '1432', '2020-02-03 23:54:00');
INSERT INTO `role_purview` VALUES (319, 3, 49, '1', '2020-02-03 23:54:28');
INSERT INTO `role_purview` VALUES (320, 12, 49, '13', '2020-02-03 23:54:35');
INSERT INTO `role_purview` VALUES (321, 14, 49, '13', '2020-02-03 23:54:50');
INSERT INTO `role_purview` VALUES (322, -99, 50, '1', '2020-02-04 18:14:41');
INSERT INTO `role_purview` VALUES (323, 3, 50, '1', '2020-02-06 20:41:11');
INSERT INTO `role_purview` VALUES (324, -99, 51, '1234', '2020-02-25 21:32:48');
INSERT INTO `role_purview` VALUES (325, 3, 51, '1', '2020-02-25 21:43:37');
INSERT INTO `role_purview` VALUES (326, -99, 52, '1', '2020-02-29 17:29:58');
INSERT INTO `role_purview` VALUES (327, 15, 39, '123', '2020-03-06 11:55:35');
INSERT INTO `role_purview` VALUES (328, 15, 32, '1', '2020-03-06 11:57:56');
INSERT INTO `role_purview` VALUES (329, 15, 41, '1', '2020-03-06 11:57:56');
INSERT INTO `role_purview` VALUES (330, 15, 30, '1', '2020-03-06 11:57:56');
INSERT INTO `role_purview` VALUES (331, 15, 31, '1', '2020-03-06 11:57:56');
INSERT INTO `role_purview` VALUES (332, 15, 33, '1', '2020-03-06 11:57:56');
INSERT INTO `role_purview` VALUES (333, 15, 34, '1', '2020-03-06 11:57:56');
INSERT INTO `role_purview` VALUES (334, 15, 38, '1', '2020-03-06 11:57:56');
INSERT INTO `role_purview` VALUES (335, 15, 48, '1', '2020-03-06 11:57:56');
INSERT INTO `role_purview` VALUES (336, 15, 49, '1', '2020-03-06 11:57:56');
INSERT INTO `role_purview` VALUES (337, 15, 50, '1', '2020-03-06 11:57:56');
INSERT INTO `role_purview` VALUES (338, 15, 52, '1', '2020-03-06 11:57:56');
INSERT INTO `role_purview` VALUES (339, 15, 40, '123', '2020-03-06 11:57:56');
INSERT INTO `role_purview` VALUES (340, 15, 51, '1', '2020-03-06 11:57:56');

-- ----------------------------
-- Table structure for webconfig
-- ----------------------------
DROP TABLE IF EXISTS `webconfig`;
CREATE TABLE `webconfig`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `maintenance` bit(1) NULL DEFAULT NULL COMMENT '表明该网站是否在维护中，如果是维护中，则整站不允许访问',
  `maintenanceContent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '维护时提示的内容',
  `inviteCodeOfCustomer` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邀请码，必须有邀请码才能注册客户信息',
  `closeRegOfCustomer` bit(1) NULL DEFAULT NULL COMMENT '关闭客户注册功能',
  `closeLoginOfCustomer` bit(1) NULL DEFAULT NULL COMMENT '是否关闭客户的登陆功能',
  `maxSingleProductNumberByBuy` tinyint(4) NULL DEFAULT NULL COMMENT '表示每次下单时单个商品的最大购买数量(包含)',
  `maxProductNumberInCart` tinyint(4) NULL DEFAULT NULL COMMENT '购物车中可以存放的最大商品（种类）数量（包含）',
  `maxProductOrderNumberInToday` tinyint(4) NULL DEFAULT NULL COMMENT '当天一个客户可以下单的最大次数',
  `maxLoginErrorNumberOfCustomer` tinyint(4) NULL DEFAULT NULL COMMENT '当天允许某客户连续登陆错误的次数',
  `maxLoginErrorNumberOfAdmin` tinyint(4) NULL DEFAULT NULL COMMENT '当天允许某管理账户连续登陆错误的次数',
  `productClickInterval` bigint(20) NULL DEFAULT NULL COMMENT '产品点击有效规则：同IP间隔（秒）才进行记录',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `parentId`(`inviteCodeOfCustomer`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of webconfig
-- ----------------------------
INSERT INTO `webconfig` VALUES (1, b'0', '网站维护中，请稍后再访问', 'ruanjian', b'0', b'0', 10, 5, 20, 5, 3, 60);

SET FOREIGN_KEY_CHECKS = 1;
