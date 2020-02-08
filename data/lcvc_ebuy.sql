/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : lcvc_ebuy

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 07/02/2020 16:27:20
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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (-99, 'admin', '-fe2nispc28dcddckd443jdmhnl8l9bjv', '超级管理员', 1, b'1', '2013-08-23 15:33:01');
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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 231 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role
-- ----------------------------
INSERT INTO `admin_role` VALUES (81, -99, -99, '2019-10-14 18:19:38');
INSERT INTO `admin_role` VALUES (101, 0, 3, '2019-10-21 10:54:40');
INSERT INTO `admin_role` VALUES (115, 103, 12, '2019-12-28 23:22:27');
INSERT INTO `admin_role` VALUES (137, 25, 14, '2019-12-31 21:22:45');
INSERT INTO `admin_role` VALUES (140, 104, 14, '2020-01-01 23:28:16');
INSERT INTO `admin_role` VALUES (142, 104, -1, '2020-01-01 23:28:16');
INSERT INTO `admin_role` VALUES (226, -1, 12, '2020-01-20 23:54:36');
INSERT INTO `admin_role` VALUES (227, -2, 14, '2020-01-20 23:54:43');
INSERT INTO `admin_role` VALUES (228, -9, -1, '2020-01-20 23:57:47');
INSERT INTO `admin_role` VALUES (229, -3, 3, '2020-01-20 23:58:30');
INSERT INTO `admin_role` VALUES (230, -9, 3, '2020-01-28 11:53:16');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, 'hqjmz', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '陈家龙', 2, '13124123132', '柳州城市职业学院7栋', '134321', '1312313@qq.com', '1.jpg', '每天都很闲的,爱好是吃脚.', '2013-11-21 17:31:46');
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
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `menu` VALUES (23, 6, '基础信息设置', 100, b'1', '/system/basic/**', 'SysBasic', '/sys/basic', 'A', NULL, b'1', b'1');
INSERT INTO `menu` VALUES (24, 6, '系统管理', 100, b'1', '/system/cfg/**', 'SysCfg', '/sys/cfg', 'B', NULL, b'1', b'1');
INSERT INTO `menu` VALUES (25, 6, '操作日志管理', 100, b'1', '/system/log/**', 'SysLog', '/sys/log', 'C', NULL, b'1', b'1');
INSERT INTO `menu` VALUES (29, 7, '密码修改', 100, b'1', '12', NULL, '/emp/basic/passowrd', '/admin/admin/PasswordEdit', 'el-icon-lock', b'1', b'1');
INSERT INTO `menu` VALUES (30, 7, '基本信息修改', 100, b'1', '1', NULL, '/emp/basic/information', '/admin/admin/AdminEdit', 'el-icon-s-custom', b'1', b'1');
INSERT INTO `menu` VALUES (32, 2, '角色管理', 100, b'1', '/rolemanage', 'RoleManage', NULL, '/admin/adminmanage/RoleManage', NULL, b'1', b'1');
INSERT INTO `menu` VALUES (33, 2, '账户管理', 100, b'1', '/adminmanage', 'AdminManage', NULL, '/admin/adminmanage/AdminManage', NULL, b'1', b'1');
INSERT INTO `menu` VALUES (53, 2, '菜单管理', 20, b'1', '/menumanage', 'MenuManage', '', '/admin/adminmanage/MenuManage', NULL, b'1', b'1');
INSERT INTO `menu` VALUES (55, 5, '订单管理', 100, b'1', '/', '', '', '/admin/productorder/ProductOrderManage', '', b'1', b'1');
INSERT INTO `menu` VALUES (56, 5, '子订单管理', 100, b'1', '/', '', '', '/admin/productorder/ProductOrderDetailManage', '', b'1', b'1');
INSERT INTO `menu` VALUES (57, 6, '二级菜单示范', 100, b'1', '/', '', '', '', '', b'1', b'1');
INSERT INTO `menu` VALUES (58, 57, '三级菜单示范1', 100, b'1', '/', '', '', '', '', b'1', b'1');
INSERT INTO `menu` VALUES (59, 57, '三级菜单示范2', 100, b'1', '/', '', '', '', '', b'1', b'1');

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  `orderNo` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单编号（外键）',
  `productId` int(11) NULL DEFAULT NULL COMMENT '产品编号（外键）',
  `price` float NULL DEFAULT NULL COMMENT '交易价格（下订单时的产品价格）',
  `originalPrice` float NULL DEFAULT 0 COMMENT '原价',
  `number` int(11) NULL DEFAULT 0 COMMENT '产品数量',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `orderId`(`orderNo`) USING BTREE,
  INDEX `productId`(`productId`) USING BTREE,
  CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `product` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `order_detail_ibfk_3` FOREIGN KEY (`orderNo`) REFERENCES `orders` (`orderNo`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES (44, 'f653aec2da68487ea69a0adcce58b107', 74, 12, 16, 9);
INSERT INTO `order_detail` VALUES (45, 'f653aec2da68487ea69a0adcce58b107', 76, 8, 12, 12);
INSERT INTO `order_detail` VALUES (46, 'f653aec2da68487ea69a0adcce58b107', 81, 12, 15, 13);
INSERT INTO `order_detail` VALUES (47, '3ba0104bc84b4b4f85ad71a11e5ca8d2', 73, 13, 28, 9);
INSERT INTO `order_detail` VALUES (48, '3ba0104bc84b4b4f85ad71a11e5ca8d2', 78, 12, 15, 12);
INSERT INTO `order_detail` VALUES (49, '3ba0104bc84b4b4f85ad71a11e5ca8d2', NULL, 18.5, 21, 13);
INSERT INTO `order_detail` VALUES (50, 'da247d46a58540a381aad88462f0f20b', 76, 8, 12, 9);
INSERT INTO `order_detail` VALUES (51, 'da247d46a58540a381aad88462f0f20b', 73, 13, 28, 12);
INSERT INTO `order_detail` VALUES (52, '480b807046b84c85b4ab241106aac39b', 72, 66, 88, 6);
INSERT INTO `order_detail` VALUES (53, '077dc8e1365045cc8fa386ba1d33a2e9', 86, 3, 6, 2);
INSERT INTO `order_detail` VALUES (54, '077dc8e1365045cc8fa386ba1d33a2e9', 81, 12, 15, 2);
INSERT INTO `order_detail` VALUES (55, '077dc8e1365045cc8fa386ba1d33a2e9', 75, 12, 16, 1);
INSERT INTO `order_detail` VALUES (56, '077dc8e1365045cc8fa386ba1d33a2e9', 77, 6, 10, 1);
INSERT INTO `order_detail` VALUES (57, '077dc8e1365045cc8fa386ba1d33a2e9', 83, 15.6, 28, 1);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `orderNo` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号（由业务层生成）',
  `customerId` int(11) NULL DEFAULT NULL COMMENT '客户-外键',
  `sendName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人姓名',
  `sendAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人地址',
  `sendZip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人邮编',
  `sendTel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人电话',
  `payment` int(11) NULL DEFAULT 1 COMMENT '付款方式（1、货到付款；2、网上支付）',
  `meno` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '生成订单时间',
  `dealTime` datetime(0) NULL DEFAULT NULL COMMENT '交易时间（付钱的时间）',
  `tag` int(11) NULL DEFAULT 2 COMMENT '订单处理标记（1、已付款，2、未付款，3、异常）',
  PRIMARY KEY (`orderNo`) USING BTREE,
  INDEX `customerId`(`customerId`) USING BTREE,
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('077dc8e1365045cc8fa386ba1d33a2e9', 9, '温晓峰', '柳州市宝骏', '55233', '12344513121', 2, NULL, '2017-09-09 17:34:47', NULL, 1);
INSERT INTO `orders` VALUES ('3ba0104bc84b4b4f85ad71a11e5ca8d2', 12, '至尊宝', 'asdasdf', '151431', '13633083252', 2, '请不要发次品', '2017-09-07 20:48:13', NULL, 2);
INSERT INTO `orders` VALUES ('480b807046b84c85b4ab241106aac39b', 1, '张三', '', '', '', 2, '请不要发次品', '2017-09-07 20:49:27', NULL, 2);
INSERT INTO `orders` VALUES ('da247d46a58540a381aad88462f0f20b', 1, '张三', '', '', '', 2, '请不要发次品', '2017-09-07 20:49:09', NULL, 2);
INSERT INTO `orders` VALUES ('f653aec2da68487ea69a0adcce58b107', 12, '至尊宝', 'asdasdf', '151431', '13633083252', 2, '请不要发次品', '2017-09-07 20:47:44', NULL, 2);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品关键字',
  `productTypeId` int(11) NULL DEFAULT NULL COMMENT '所属产品类别编号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品名称',
  `orderNum` int(11) NULL DEFAULT NULL COMMENT '产品优先级',
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
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`creatorId`) REFERENCES `admin` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `product_ibfk_3` FOREIGN KEY (`finalEditorId`) REFERENCES `admin` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE = InnoDB AUTO_INCREMENT = 164 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (71, 47, '芒果冰', 100, '芒果冰很好吃', '<p>芒果冰很好吃</p>', 15.00, 21.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675234544062648.jpg', 141, 3001, b'1', '2017-09-07 20:24:21', -99, NULL, '2019-12-26 08:31:50');
INSERT INTO `product` VALUES (72, 47, '8寸蛋糕', 100, '蛋糕很好吃', '<p>蛋糕很好吃蛋糕很好吃</p>', 66.50, 88.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675235027064694.jpg', 171, 123, b'1', '2017-09-07 20:28:07', -99, -99, '2019-09-05 17:29:19');
INSERT INTO `product` VALUES (73, 47, '奶油蛋糕', 100, '打发', '<p>阿萨德发的算法的</p>', 13.00, 28.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675235027064694.jpg', 592, 645, b'1', '2017-09-07 20:29:16', -99, NULL, '2019-12-26 08:32:08');
INSERT INTO `product` VALUES (74, 25, '南瓜甜点', 100, '打发的是发', '<p>阿萨德发的是法师打发的是发</p>', 12.00, 16.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675235811076829.jpg', 122, 545, b'1', '2017-09-07 20:30:33', -99, NULL, '2019-12-26 08:31:26');
INSERT INTO `product` VALUES (75, 47, '烤螺蛳粉', 100, '大法师的法师的法师的发大发', '<p>大法师的法师的法师的发大发大法师的法师的法师的发大发</p>', 12.00, 16.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675235357029569.jpg', 981, 45, b'1', '2017-09-07 20:31:47', -99, -99, '2020-02-05 15:45:51');
INSERT INTO `product` VALUES (76, 6, '桂林米粉', 100, '桂林米粉甲天下', '<p>桂林米粉甲天下桂林米粉甲天下桂林米粉甲天下桂林米粉甲天下</p>', 8.00, 12.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675235421061119.jpg', 861, 34, b'1', '2017-09-07 20:32:57', -99, NULL, '2019-12-26 08:32:22');
INSERT INTO `product` VALUES (77, 6, '老友粉', 100, '打发打发斯蒂芬', '<p>打发打发斯蒂芬打发打发斯蒂芬</p>', 6.00, 10.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675235275070878.jpg', 735, 45, b'1', '2017-09-07 20:34:15', -99, NULL, '2019-12-26 08:32:35');
INSERT INTO `product` VALUES (78, 6, '叉烧饭', 100, '真的很好吃', '<p>真的很好吃真的很好吃</p>', 12.00, 15.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675235429002841.jpg', 430, 234, b'1', '2017-09-07 20:35:24', -99, -99, '2019-09-05 21:10:36');
INSERT INTO `product` VALUES (79, 6, '烧鸭饭', 100, '真的很好吃', '<p>真的很好吃真的很好吃</p>', 8.00, 12.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675235528055206.jpg', 731, 5645, b'1', '2017-09-07 20:35:50', -99, -99, '2019-09-05 17:28:39');
INSERT INTO `product` VALUES (80, 6, '白切鸡饭', 100, '真的很好吃', '<p>真的很好吃真的很好吃</p>', 12.00, 18.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675235515011160.jpg', 613, 324, b'1', '2017-09-07 20:37:02', -99, NULL, '2019-12-26 08:32:54');
INSERT INTO `product` VALUES (81, 6, '鸡腿饭', 100, '真的很好吃', '<p>真的很好吃真的很好吃</p>', 12.00, 15.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675235515011160.jpg', 12422, 22, b'1', '2017-09-07 20:37:30', -99, -99, '2019-09-05 17:27:51');
INSERT INTO `product` VALUES (83, 25, '泰芒了', 100, '真的很好吃', '<p>真的很好吃真的很好吃</p>', 16.00, 28.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675235635066818.jpg', 582, 0, b'1', '2017-09-07 20:40:30', -99, -99, '2019-09-05 17:27:26');
INSERT INTO `product` VALUES (84, 25, '南瓜饼', 100, '真的很好吃', '<p>真的很好吃真的很好吃</p>', 21.00, 25.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675235811076829.jpg', 772, 234, b'1', '2017-09-07 20:41:39', -99, -99, '2019-09-05 17:26:36');
INSERT INTO `product` VALUES (85, 25, '特色猪肉肠粉', 100, '真的很好吃', '<p>真的很好吃真的很好吃</p>', 12.00, 16.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675235759036894.jpg', 382, 0, b'1', '2017-09-07 20:42:25', -99, -99, '2019-09-05 17:26:17');
INSERT INTO `product` VALUES (86, 25, '巧克力冰淇淋', 100, '打发撒旦法第三方', '<p>啊是打发是打发第三方额</p>', 3.00, 6.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675235803060534.jpg', 206, 32, b'1', '2017-09-07 23:22:49', -99, NULL, '2019-12-26 08:33:37');
INSERT INTO `product` VALUES (95, 6, 'sdfgsd', 100, '', '<p><img src=\"http://120.76.118.101:8081/upload/website/image/20190905/1567674760811077127.png\" alt=\"1567674760811077127.png\"/></p>', 0.00, 0.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567674760811077127.png', 93, 0, b'1', '2019-09-05 17:13:22', -99, NULL, NULL);
INSERT INTO `product` VALUES (96, 46, '金枪鱼黄瓜寿司', 100, '金枪鱼黄瓜寿司，美味好吃，低脂低盐，健康的不二选择！', '<p>金枪鱼黄瓜寿司，美味好吃，低脂低盐，健康的不二选择！</p>', 19.90, 29.90, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675520105092012.jpg', 1081, 1111, b'1', '2019-09-05 17:27:04', -99, NULL, NULL);
INSERT INTO `product` VALUES (97, 46, '意大利肉酱面', 50, '好吃不黏牙，香喷喷的意大利肉酱面', '<p>好吃不黏牙，香喷喷的意大利肉酱面</p>', 80.00, 5.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675554758069586.jpg', 381, 0, b'1', '2019-09-05 17:27:35', -99, NULL, NULL);
INSERT INTO `product` VALUES (98, 46, '可丽饼', 20, '跟其它种类的面糊饼（Pancake，班戢饼）相比，可丽饼的最大特点就是比较薄，厚度一般小于1/16英寸，也就是1.6毫米左右。', '<p>跟其它种类的面糊饼（Pancake，班戢饼）相比，可丽饼的最大特点就是比较薄，厚度一般小于1/16英寸，也就是1.6毫米左右。</p>', 25.50, 50.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675679423024115.jpg', 183, 0, b'1', '2019-09-05 17:28:45', -99, NULL, NULL);
INSERT INTO `product` VALUES (99, 47, '烤鱿鱼', 50, '新鲜烤鱿鱼美味多汁。', '<p>新鲜烤鱿鱼美味多汁。<br/></p>', 15.00, 30.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675639143095354.jpeg', 331, 9999, b'1', '2019-09-05 17:29:25', -99, NULL, NULL);
INSERT INTO `product` VALUES (100, 47, '烤羊肉串', 100, '好吃好吃，非常好吃', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">烤肉过程中要抹一些油在肉块的表面，防止肉块烤干。</span></p>', 4.00, 5.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675664211048580.jpg', 181, 200, b'1', '2019-09-05 17:29:25', -99, -99, '2019-09-05 17:30:18');
INSERT INTO `product` VALUES (101, 46, '芝士焗土豆泥', 20, '健康功效土豆:活血化瘀培根:保护神经系统、促进肠胃蠕动、抗脚气黄油:活血化瘀', '<h3 style=\"margin: 0px 0px 8px; padding: 0px; font-stretch: normal; font-size: 14px; line-height: normal; font-family: 宋体, Arial, Helvetica, sans-serif; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\">健康功效</h3><p style=\"margin-top: 0px; margin-bottom: 35px; padding: 0px; font-stretch: normal; font-size: 14px; line-height: 22px; font-family: 宋体, Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);\">土豆:活血化瘀<br/>培根:保护神经系统、促进肠胃蠕动、抗脚气<br/>黄油:活血化瘀</p><p><br/></p>', 6.00, 50.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675698486033182.jpg', 1082, 0, b'1', '2019-09-05 17:29:29', -99, -99, '2020-02-04 23:30:50');
INSERT INTO `product` VALUES (102, 6, '北极虾烟熏三文鱼卷', 0, '富含蛋白质、碳水化合物、维生素和钙、铁、磷、钾、镁等矿物质，有养心益肾、健脾厚肠、除热止渴的功效。 ...', '<p><span style=\"color: rgb(52, 52, 52); font-family: Arial, Helvetica, Tahoma, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">富含蛋白质、碳水化合物、维生素和钙、铁、磷、钾、镁等矿物质，有养心益肾、健脾厚肠、除热止渴的功效。</span></p>', 59.00, 89.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675711265057455.jpg', 1082, 999999, b'1', '2019-09-05 17:29:41', -99, NULL, NULL);
INSERT INTO `product` VALUES (103, 46, '巴黎龙虾', 100, '​龙虾在法餐中扮演的角色比较特殊，它是吉祥喜庆的象征，因此，只有在特别隆重的庆祝场合，法国人才会大啖龙虾。这个习惯一直延续到了今天。', '<p><em style=\"white-space: normal;\">龙虾</em>在法餐中扮演的角色比较特殊，它是吉祥喜庆的象征，因此，只有在特别隆重的庆祝场合，法国人才会大啖<em style=\"white-space: normal;\">龙虾</em>。这个习惯一直延续到了今天。</p>', 100.00, 399.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675741111033681.jpg', 183, 50, b'1', '2019-09-05 17:30:25', -99, NULL, NULL);
INSERT INTO `product` VALUES (104, 47, '烤鸡脚', 100, '又辣又好吃', '<p>又辣又好吃</p>', 9.90, 10.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675693984003121.jpg', 183, 99999, b'1', '2019-09-05 17:30:52', -99, NULL, NULL);
INSERT INTO `product` VALUES (105, 25, '香芒小丸子', 50, '超级Q好吃[害羞][害羞]香芒小丸子也，芋头很粉好吃。 而且在市中心。可以吃多的零食，累了可以过来吃个甜品是个不错的选择 重点价钱不贵，像隔壁网红茶不好喝又贵[流泪][流泪][流泪]还不如这里[鼓掌]', '<p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(17, 17, 17); font-family: PingFangSC-Regular,Microsoft YaHei,Hiragino Sans GB,Helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 20px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">超级Q好</span>吃<span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(17, 17, 17); font-family: PingFangSC-Regular,Microsoft YaHei,Hiragino Sans GB,Helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 20px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">[害羞][害羞]</span><span style=\"background-color: transparent; color: rgb(204, 0, 0); font-family: PingFangSC-Regular,Microsoft YaHei,Hiragino Sans GB,Helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; outline-color: invert; outline-style: none; outline-width: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-tap-highlight-color: transparent; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">香芒小丸子</span><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(17, 17, 17); font-family: PingFangSC-Regular,Microsoft YaHei,Hiragino Sans GB,Helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 20px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">也</span><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(17, 17, 17); font-family: PingFangSC-Regular,Microsoft YaHei,Hiragino Sans GB,Helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 20px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">，芋头很</span><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(17, 17, 17); font-family: PingFangSC-Regular,Microsoft YaHei,Hiragino Sans GB,Helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 20px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">粉好</span>吃<span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(17, 17, 17); font-family: PingFangSC-Regular,Microsoft YaHei,Hiragino Sans GB,Helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 20px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">。</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(17, 17, 17); font-family: PingFangSC-Regular,Microsoft YaHei,Hiragino Sans GB,Helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 20px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">&nbsp;而且</span><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(17, 17, 17); font-family: PingFangSC-Regular,Microsoft YaHei,Hiragino Sans GB,Helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 20px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">在市中心。可以</span>吃<span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(17, 17, 17); font-family: PingFangSC-Regular,Microsoft YaHei,Hiragino Sans GB,Helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 20px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">多的零食，累了可以过</span>来吃<span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(17, 17, 17); font-family: PingFangSC-Regular,Microsoft YaHei,Hiragino Sans GB,Helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 20px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">个甜品是</span><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(17, 17, 17); font-family: PingFangSC-Regular,Microsoft YaHei,Hiragino Sans GB,Helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 20px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">个不错的选择</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(17, 17, 17); font-family: PingFangSC-Regular,Microsoft YaHei,Hiragino Sans GB,Helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 20px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">&nbsp;重点</span><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(17, 17, 17); font-family: PingFangSC-Regular,Microsoft YaHei,Hiragino Sans GB,Helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 20px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">价钱不贵，像隔壁</span>网红<span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(17, 17, 17); font-family: PingFangSC-Regular,Microsoft YaHei,Hiragino Sans GB,Helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 20px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">茶</span><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(17, 17, 17); font-family: PingFangSC-Regular,Microsoft YaHei,Hiragino Sans GB,Helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 20px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">不好喝又贵[流泪][流泪][流泪]还不如</span><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(17, 17, 17); font-family: PingFangSC-Regular,Microsoft YaHei,Hiragino Sans GB,Helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 20px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">这里[鼓掌]</span></p>', 9.00, 11.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675670285048811.jpg', 1081, 999, b'1', '2019-09-05 17:31:10', -99, NULL, NULL);
INSERT INTO `product` VALUES (106, 46, '黑椒牛排', 50, '黑椒牛排是一道西餐,主要食材是牛排和黑胡椒,主要烹饪工艺是煎。', '<p>黑椒牛排是一道西餐,主要食材是牛排和黑胡椒,主要烹饪工艺是煎。<img src=\"http://120.76.118.101:8081/upload/website/image/20190905/1567675864689052378.jpg\" title=\"1567675864689052378.jpg\" alt=\"3.jpg\"/></p>', 120.00, 99.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675888211004779.jpeg', 93, 111, b'1', '2019-09-05 17:31:40', -99, NULL, NULL);
INSERT INTO `product` VALUES (107, 49, '清淡去火汤', 50, '黄花菜豆皮汤-清淡有营养 清淡剥皮鱼面线汤 清淡爽口白萝卜蔬菜汤 清淡三文鱼 清淡炒饭 清淡爽口调芹菜 清淡的牛肉面 清清淡淡小炒杂烩 清淡爽口', '<p>黄花菜豆皮汤-清淡有营养 清淡剥皮鱼面线汤 清淡爽口白萝卜蔬菜汤 清淡三文鱼 清淡炒饭 清淡爽口调芹菜 清淡的牛肉面 清清淡淡小炒杂烩 清淡爽口</p>', 15.00, 25.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675862732016397.jpeg', 182, 101, b'1', '2019-09-05 17:32:06', -99, NULL, NULL);
INSERT INTO `product` VALUES (108, 25, '榴莲千层', 100, '一种十分美味的糕点！', '<p>选自泰国金枕榴莲制作，先将榴莲烘烤完成后进行不断铺饼，看似薄薄的饼其实有30，40层！</p>', 10.00, 15.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675719297097721.jpg', 103, 20, b'1', '2019-09-05 17:32:29', -99, NULL, NULL);
INSERT INTO `product` VALUES (109, 6, '烧烤茄子', 0, '多汁嫩的茄子美味无比。', '<p>多汁嫩的茄子美味无比。</p>', 10.00, 20.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675795718003810.jpg', 102, 100, b'1', '2019-09-05 17:32:41', -99, NULL, NULL);
INSERT INTO `product` VALUES (110, 46, '法式鹅肝', 100, '鹅肝为鸭科动物鹅的肝脏。因其十分丰富的营养和特殊功效，使得鹅肝成为补血养生的最佳食物。法国著名的料理鹅肝（法文：Foie gras）是一种从被过份喂饲的鹅取出来的肝。欧洲人将鹅肝与鱼子酱、松露并列为“世界三大珍馐”。', '<p><span style=\"color: rgb(51, 51, 51); font-family: Verdana; font-size: 14px; background-color: rgb(255, 255, 255);\">鹅肝为</span><a class=\"xp\" href=\"http://www.zwbk.org/MyLemmaInter.aspx?title=%e9%b8%ad%e7%a7%91\" target=\"_blank\" style=\"color: rgb(219, 0, 16); text-decoration: none; padding-right: 1px; padding-left: 1px; font-family: Verdana; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">鸭科</a><span style=\"color: rgb(51, 51, 51); font-family: Verdana; font-size: 14px; background-color: rgb(255, 255, 255);\">动物</span><a class=\"classic\" href=\"http://www.zwbk.org/MyLemmaShow.aspx?lid=95658\" target=\"_blank\" style=\"color: rgb(102, 153, 255); text-decoration: none; padding-right: 1px; padding-left: 1px; font-family: Verdana; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">鹅</a><span style=\"color: rgb(51, 51, 51); font-family: Verdana; font-size: 14px; background-color: rgb(255, 255, 255);\">的肝脏。因其十分丰富的营养和特殊功效，使得鹅肝成为补血养生的最佳食物。</span><a class=\"classic\" href=\"http://www.zwbk.org/MyLemmaShow.aspx?lid=2527\" target=\"_blank\" style=\"color: rgb(102, 153, 255); text-decoration: none; padding-right: 1px; padding-left: 1px; font-family: Verdana; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">法国</a><span style=\"color: rgb(51, 51, 51); font-family: Verdana; font-size: 14px; background-color: rgb(255, 255, 255);\">著名的料理鹅肝（法文：Foie gras）是一种从被过份喂饲的鹅取出来的肝。欧洲人将鹅肝与</span><a class=\"classic\" href=\"http://www.zwbk.org/MyLemmaShow.aspx?lid=188851\" target=\"_blank\" style=\"color: rgb(102, 153, 255); text-decoration: none; padding-right: 1px; padding-left: 1px; font-family: Verdana; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">鱼子酱</a><span style=\"color: rgb(51, 51, 51); font-family: Verdana; font-size: 14px; background-color: rgb(255, 255, 255);\">、</span><a class=\"classic\" href=\"http://www.zwbk.org/MyLemmaShow.aspx?lid=194293\" target=\"_blank\" style=\"color: rgb(102, 153, 255); text-decoration: none; padding-right: 1px; padding-left: 1px; font-family: Verdana; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">松露</a><span style=\"color: rgb(51, 51, 51); font-family: Verdana; font-size: 14px; background-color: rgb(255, 255, 255);\">并列为“世界三大珍馐”。</span></p>', 199.00, 299.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675943888014082.jpg', 182, 100, b'1', '2019-09-05 17:32:51', -99, NULL, NULL);
INSERT INTO `product` VALUES (111, 47, '烤腰子', 20, '烤腰子烤腰子', '<p>烤腰子 美味酥脆下酒好菜<br/></p>', 28.00, 35.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675898073078062.jpg', 538, 264, b'1', '2019-09-05 17:33:08', -99, NULL, NULL);
INSERT INTO `product` VALUES (112, 6, '法式蒜蓉虾', 0, '不饱和脂肪酸，所含氨基酸齐全，人体所需8种氨基酸均有，还含有维生素、丰富的铁、钾、钙、碘等多种矿物质和微量元素', '<p><span style=\"color: rgb(52, 52, 52); font-family: Arial, Helvetica, Tahoma, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">不饱和脂肪酸，所含氨基酸齐全，人体所需8种氨基酸均有，还含有维生素、丰富的铁、钾、钙、碘等多种矿物质和微量元素</span></p>', 199.00, 299.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675834958006717.jpg', 1081, 99999, b'1', '2019-09-05 17:33:18', -99, NULL, NULL);
INSERT INTO `product` VALUES (113, 25, '瓜皮糕', 100, '婚前茶歇蛋糕点心复古炫彩系列无与伦比的甜品', '<p>婚前茶歇蛋糕点心复古炫彩系列无与伦比的甜品</p>', 9.90, 10.90, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675928035095211.jpg', 181, 66, b'1', '2019-09-05 17:33:20', -99, NULL, NULL);
INSERT INTO `product` VALUES (114, 46, '法式注心月饼', 20, '来点小清新的,这叫杏鲍菇变身高级法国料理.', '<p><span style=\"font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">来点小清新的,这叫杏鲍菇变身高级法国料理.</span></p>', 33.30, 99.90, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675878244055718.jpg', 182, 110, b'1', '2019-09-05 17:33:24', -99, NULL, NULL);
INSERT INTO `product` VALUES (115, 47, '烤鸡翅', 100, '又香又辣超级超级好吃，', '<p>又香又辣超级超级好吃，</p>', 9.90, 10.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675929855018703.jpg', 1081, 9999, b'1', '2019-09-05 17:33:41', -99, NULL, NULL);
INSERT INTO `product` VALUES (116, 6, '烧烤韭菜', 0, '有嚼劲又不硬。美味营养', '<p>有嚼劲又不硬。美味营养</p>', 5.00, 20.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675978887015956.jpg', 182, 200, b'1', '2019-09-05 17:33:45', -99, NULL, NULL);
INSERT INTO `product` VALUES (117, 25, '芋圆一号', 50, '到店点了芋圆一号，非常好吃，有团购很优惠!份星很足!芋圆软Q糯，其它配料给的真的很多!多种口味的，不会太甜，冰镇的非常好吃!环境很大，装修很休闲舒适，午好非常好的去处!空调也够足!下次还是在店试试别的品种!', '<p>到店点了芋圆一号，非常好吃，有团购很优惠!份星很足!芋圆软Q糯，其它配料给的真的很多!多种口味的，不会太甜，冰镇的非常好吃!环境很大，装修很休闲舒适，午好非常好的去处!空调也够足!下次还是在店试试别的品种!</p>', 12.00, 12.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675922527073932.jpg', 1081, 999, b'1', '2019-09-05 17:33:53', -99, NULL, NULL);
INSERT INTO `product` VALUES (118, 6, '老北京炒鸡饭', 100, '精品新鲜鸡肉，口感舒适！', '<p>王企鹅的热情<span style=\"border: 1px solid rgb(0, 0, 0);\"></span></p>', 25.00, 30.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675945167055338.jpg', 182, 0, b'1', '2019-09-05 17:34:23', -99, NULL, NULL);
INSERT INTO `product` VALUES (119, 47, '烤鱼腩', 100, '新鲜美味的鱼腩，好吃又不腻', '<p>666666好吃没毛病，下单就完了！！！！<br/></p>', 3.00, 5.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675945588053003.jpg', 316, 432, b'1', '2019-09-05 17:34:49', -99, NULL, NULL);
INSERT INTO `product` VALUES (120, 46, '香煎三文鱼', 50, '三文鱼既有营养 热量又低 对于减肥的广大女性筒子们可谓是福音啊！', '<p>三文鱼既有营养 热量又低 对于减肥的广大女性筒子们可谓是福音啊！</p>', 99.00, 76.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676063823015062.jpg', 95, 112, b'1', '2019-09-05 17:35:12', -99, NULL, NULL);
INSERT INTO `product` VALUES (121, 6, '菠萝糕', 100, '满满的少女心甜品', '<p><a target=\"_blank\" href=\"https://image.baidu.com/search/redirect?tn=redirect&word=j&juid=801032&sign=caaowekkbi&url=http%3A%2F%2Fhuaban.com%2Fboards%2F37901530&objurl=https%3A%2F%2Ftimgsa.baidu.com%2Ftimg%3Fimage%26quality%3D80%26size%3Db9999_10000%26sec%3D1009835585610%26di%3D0a07798937e12a6d5907337011ebb922%26imgtype%3D0%26src%3Dhttp%253A%252F%252Fhbimg.b0.upaiyun.com%252F7aba477ac549b0e9e10dd9eec8b0921468da857d548be-JMoES0_fw658\" title=\"满满的少女心甜品\" style=\"font-family: 微软雅黑, 宋体, Arial; margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; font-size: 14px; vertical-align: baseline; outline: 0px; cursor: pointer; text-decoration: none; color: rgb(0, 0, 0); word-break: break-all; white-space: normal; background-color: rgb(255, 255, 255);\">满满的少女心甜品</a></p>', 6.60, 9.90, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676071037050191.jpg', 179, 66, b'1', '2019-09-05 17:35:12', -99, NULL, NULL);
INSERT INTO `product` VALUES (122, 49, '咖喱牛肉汤', 100, '【原料】牛腩，牛桶骨，姜片\n\n【配料】咖喱粉，盐，香菜', '<p>美味、可口</p>', 12.00, 18.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676170807061389.jpg', 183, 50, b'1', '2019-09-05 17:36:18', -99, NULL, NULL);
INSERT INTO `product` VALUES (123, 49, '骨头汤', 50, '骨头汤中含有的胶原蛋白正好能增强人体制造血细胞的能力。对于中老年人来说,喝些骨头汤加以调理,可以减缓骨骼老化。', '<p><em>骨头汤</em>中含有的胶原蛋白正好能增强人体制造血细胞的能力。对于中老年人来说,喝些<em>骨头汤</em>加以调理,可以减缓骨骼老化。</p>', 56.00, 67.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676078903050088.jpeg', 282, 356, b'1', '2019-09-05 17:36:38', -99, NULL, NULL);
INSERT INTO `product` VALUES (124, 47, '黄金烤鼠', 20, '精品', '<p>精品美食<br/></p>', 34.00, 45.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676323302041190.jpg', 181, 264, b'1', '2019-09-05 17:37:00', -99, -99, '2019-09-05 17:38:51');
INSERT INTO `product` VALUES (125, 6, '黄焖鸡米饭', 100, '黄焖鸡米饭采用秘制酱料工艺技术，所需十余种香料必须选用优质药材。黄焖鸡配料讲究君臣佐史配伍相益，调和得当。鸡肉含有对人体生长发育有重要作用的磷脂类，是中国人膳食结构中脂肪和磷脂的重要来源之一。', '<p>黄焖鸡米饭采用秘制酱料工艺技术，所需十余种香料必须选用优质药材。</p><p><img src=\"http://120.76.118.101:8081/upload/website/image/20190905/1567676155812024768.jpg\" title=\"1567676155812024768.jpg\" alt=\"5adac1edce93a.jpg\"/></p><p></p><p>黄焖鸡配料讲究君臣佐史配伍相益，调和得当。</p><p>鸡肉含有对人体生长发育有重要作用的磷脂类，是中国人膳食结构中脂肪和磷脂的重要来源之一。</p>', 18.00, 20.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676240806070203.jpg', 116, 666, b'1', '2019-09-05 17:37:25', -99, NULL, NULL);
INSERT INTO `product` VALUES (126, 6, '烤龙虾', 0, '虾的鲜嫩，加上火炉的烘烤，肉质Q弹爽口，简直是不可多的的人间美味！', '<p>虾的鲜嫩，加上火炉的烘烤，肉质Q弹爽口，简直是不可多的的人间美味！</p>', 20.00, 50.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676181037041027.jpg', 170, 50, b'1', '2019-09-05 17:37:45', -99, NULL, NULL);
INSERT INTO `product` VALUES (127, 25, '雪媚娘', 50, '雪媚娘是日本一种有名的甜品，传入中国后大火。', '<p>雪媚娘源自<font color=\"#0b0119\">日本</font>，原名为“大福”，是<font color=\"#0b0119\">日本</font>的地道点心之一，外皮是QQ的雪媚娘冰皮，在日本它的馅料都是当季的真材实料的水果为主。 “雪媚娘”这个名字源于日本当地发明各种<b><font color=\"#0b0119\">草莓大福</font></b>的一位夫人，而我们制作的雪媚娘也是她的代表作之一。</p><p>雪媚娘细白软糯，第一口咬到的是特别Q滑的冰皮，里面是奶香怡人的淡奶油，裹着好吃的水果粒， 酸酸甜甜、口感丰富。<sup class=\"sup--normal\" style=\"color: rgb(51, 102, 204); cursor: pointer; font-size: 8.8px; line-height: 0px; margin-left: 2px; padding-bottom: 0px; padding-left: 2px; padding-right: 2px; padding-top: 0px; position: relative; top: -4.4px; vertical-align: baseline; white-space: normal;\">[1]</sup><a class=\"sup-anchor\" style=\"color: rgb(19, 110, 194); font-size: 0px; line-height: 0px; position: relative; text-decoration: none; top: -50px;\">&nbsp;</a>\n “雪媚娘”冷藏后的口感更佳，轻轻一口下去，细软中还带着隐隐的甜意和凉意。西茄雪媚娘，沿用轻施手粉风格，内馅采用鲜果，是传统雪媚娘的最重要流派。</p><p>又名升级版驴打滚。<sup class=\"sup--normal\" style=\"color: rgb(51, 102, 204); cursor: pointer; font-size: 8.8px; line-height: 0px; margin-left: 2px; padding-bottom: 0px; padding-left: 2px; padding-right: 2px; padding-top: 0px; position: relative; top: -4.4px; vertical-align: baseline; white-space: normal;\"></sup></p><p><br/></p>', 9.00, 12.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676112546083993.jpg', 105, 56, b'1', '2019-09-05 17:37:56', -99, NULL, NULL);
INSERT INTO `product` VALUES (128, 49, '香菇炖甲鱼汤', 100, ' 主料：甲鱼500克\n辅料：香菇（鲜）50克,鸡胸脯肉50克,冬笋25克,火腿50克\n调料：料酒10克,盐4克,味精2克,大葱15克,姜5克,胡椒粉2克', '<p>有益智健脑的作用，适用于气血亏损、精血不足、肝肾阴虚等症的治疗。</p>', 16.00, 14.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676226346041190.jpg', 182, 99, b'1', '2019-09-05 17:38:02', -99, NULL, NULL);
INSERT INTO `product` VALUES (129, 49, '西红柿芹菜减肥汤', 50, '常食用可达到有效的减肥效果，健康有营养。', '<p>精品靓汤，值得拥有！！适合饭前食用。<img src=\"http://120.76.118.101:8081/upload/website/image/20190905/1567676240243092905.jpg\" title=\"1567676240243092905.jpg\" alt=\"150901757_2_20181231060429278.jpg\"/></p>', 25.00, 19.90, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676216723035867.jpg', 116, 5, b'1', '2019-09-05 17:38:08', -99, NULL, NULL);
INSERT INTO `product` VALUES (130, 6, '热狗', 0, '好吃不贵，价格实惠。', '<p>好吃不贵，价格实惠。</p>', 2.00, 5.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676282937082673.jpg', 172, 50, b'1', '2019-09-05 17:38:37', -99, NULL, NULL);
INSERT INTO `product` VALUES (131, 49, '排骨汤', 50, '排骨汤是以排骨为主要食材的家常菜,口味咸鲜,补肾养血,滋阴润燥,营养价值丰富， 排骨汤是以排骨为主要食材的家常菜,口味咸鲜,补肾养血,滋阴润燥,营养价值丰富。', '<p><em>排骨汤</em>是以排骨为主要食材的家常菜,口味咸鲜,补肾养血,滋阴润燥,营养价值丰富， <em>排骨汤</em>是以排骨为主要食材的家常菜,口味咸鲜,补肾养血,滋阴润燥,营养价值丰富。<br/></p>', 20.00, 10.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676306003069319.jpeg', 191, 299, b'1', '2019-09-05 17:38:57', -99, NULL, NULL);
INSERT INTO `product` VALUES (132, 25, '榴莲蛋糕', 100, '秘制烤蛋糕', '<p>秘制榴莲烤蛋糕</p>', 10.00, 15.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676323372008434.jpg', 182, 100, b'1', '2019-09-05 17:39:45', -99, NULL, NULL);
INSERT INTO `product` VALUES (133, 49, '鲫鱼头豆腐汤', 100, '食材：鲫鱼头1个，豆腐200克葱，姜，蒜，小葱，油，料酒，盐，鸡精', '<p>美味、可口。有营养</p>', 20.00, 15.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676339135066256.jpg', 182, 99, b'1', '2019-09-05 17:40:07', -99, NULL, NULL);
INSERT INTO `product` VALUES (134, 6, '蜜汁鸡腿', 50, '想喷可口，回味无穷', '<p>好吃，汁料美味，鸡腿够大</p>', 8.00, 12.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676308899047615.jpg', 106, 1123, b'1', '2019-09-05 17:42:52', -99, NULL, NULL);
INSERT INTO `product` VALUES (135, 25, '草莓蛋糕', 100, '是是是', '<p>好好吃</p>', 5.00, 10.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676412666077876.jpg', 182, 0, b'1', '2019-09-05 17:43:37', -99, NULL, NULL);
INSERT INTO `product` VALUES (136, 6, '龙凤汤', 0, '顶级食材', '<p>龙凤和鸣</p>', 0.01, 99999.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676355681005277.jpg', 83, 8888888, b'1', '2019-09-05 17:44:03', -99, NULL, NULL);
INSERT INTO `product` VALUES (137, 6, '酱香鸭脖', 100, '卤中仙酱香鸭脖秘制配方，采用二十二味中药秘制程序，让鸭脖更入味，同时不丢失鸭脖原本的鲜嫩和营养，成品麻辣、咸甜适中、肉质细嫩，回味持久，为居家、旅游、休闲之佳品。', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">卤中仙酱香鸭脖秘制配方，采用二十二味中药秘制程序，让鸭脖更入味，同时不丢失鸭脖原本的鲜嫩和营养，成品麻辣、咸甜适中、肉质细嫩，回味持久，为居家、旅游、休闲之佳品。</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><img src=\"http://120.76.118.101:8081/upload/website/image/20190905/1567676679386067227.jpg\" title=\"1567676679386067227.jpg\" alt=\"t0114237702343738ab.jpg\"/></span></p>', 28.00, 30.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676417046088731.jpg', 102, 21, b'1', '2019-09-05 17:44:55', -99, NULL, NULL);
INSERT INTO `product` VALUES (138, 6, '姐姐炸排骨', 100, '炸排骨是一道四川省的地方名菜，属于川菜系。外酥里嫩，不硬不软，块块不连，香甜咸淡适口。', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">选新鲜的猪肋条排骨和软骨(每千克骨上带2千克肉)。.剁块及腌制:将排骨剁成3厘米见方的小块，用清水洗净，捞出沥尽水。将葱、姜切成碎末，连同其他佐料倒入容器内混合均匀，再将排骨倒入搅拌均匀，腌制30分钟。上糊、油炸:用清水500克，把淀粉、面粉、鸡蛋搅成干糊状。将腌制过的排骨连同佐料一起倒入糊内，用木棒搅匀。把油加热到180℃，倒入排骨，注意炸匀，约10分钟后，排骨表面呈深黄色捞出，即为成品。</span></p>', 28.00, 31.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676418596060009.jpg', 1082, 99, b'1', '2019-09-05 17:45:14', -99, NULL, NULL);
INSERT INTO `product` VALUES (139, 25, '招牌丝袜奶茶', 100, '有红豆，珍珠，椰果', '<p>茶香奶香萦绕鼻尖</p>', 12.00, 14.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676646012045863.jpg', 91, 222, b'1', '2019-09-05 17:45:23', -99, NULL, NULL);
INSERT INTO `product` VALUES (140, 49, '清炖鸽子汤', 100, ' 主料： 鸽子一只  \n配料： 姜片适量   枸杞适量   葱适量  \n辅料： 盐适量   鸡精适量 ', '<p>大补</p>', 25.00, 18.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676681970094970.jpg', 182, 99, b'1', '2019-09-05 17:45:37', -99, NULL, NULL);
INSERT INTO `product` VALUES (141, 6, '菌王汤', 0, '美食顶级', '<p>订单加八福</p><p><img src=\"http://img.baidu.com/hi/jx2/j_0019.gif\"/></p>', 0.10, 88888.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676733863075744.jpg', 84, 6666, b'1', '2019-09-05 17:46:16', -99, -99, '2020-01-31 02:45:13');
INSERT INTO `product` VALUES (142, 6, '味千拉面', 100, '好好好', '<p>美味</p>', 23.00, 25.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676762205031022.jpg', 114, 333, b'1', '2019-09-05 17:46:33', -99, NULL, NULL);
INSERT INTO `product` VALUES (143, 25, '芋圆奶茶', 50, '有芋圆', '<p>芋圆软糯香甜</p>', 10.00, 12.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676746044047550.jpg', 115, 20, b'1', '2019-09-05 17:46:36', -99, NULL, NULL);
INSERT INTO `product` VALUES (144, 49, '山药香菇枸杞排骨汤', 50, '山药香菇枸杞排骨汤是一道以排骨等为原料的美食。 ', '<p><em>山药香菇枸杞排骨汤</em>是一道以<em>排骨</em>等为原料的美食。 &nbsp; \n &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 43.00, 11.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676763633054028.jpeg', 408, 435, b'1', '2019-09-05 17:46:36', -99, NULL, NULL);
INSERT INTO `product` VALUES (146, 6, '窝窝头', 100, '', '<p><img src=\"http://120.76.118.101:8081/upload/website/image/20190905/1567676806208091862.jpg\" title=\"1567676806208091862.jpg\" alt=\"d0515a525e47355ed8a9a48e0c391922.jpg\"/></p>', 1.00, 4.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676777256094543.jpg', 1081, 50000, b'1', '2019-09-05 17:46:49', -99, NULL, NULL);
INSERT INTO `product` VALUES (147, 48, '葱油鲍鱼', 100, '鲍鱼是海产贝类，同鱼毫无关系，倒跟田螺之类沾亲带故。它是海洋中的单壳软体动物，只有半面外壳，壳坚厚，扁而宽，形状有些像人的耳朵，所以也叫它\"海耳\"。自古被人们视为“海味珍品之冠”，其肉质柔嫩细滑，滋味极其鲜美，非其他海味所能比拟的。', '<p>鲍鱼营养价值极高，富含丰富的球蛋白；鲍鱼的肉中还含有一种被称为“鲍素”的成分，能够破坏癌细胞必需的代谢物质。</p>', 10.00, 20.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567679654395087840.jpg', 1082, 99, b'1', '2019-09-05 18:37:11', -99, NULL, NULL);
INSERT INTO `product` VALUES (148, 48, '清蒸生蚝', 100, '清蒸生蚝是将新鲜的生蚝放进蒸箱蒸。蚝是一种有“海中牛奶”之誉的海洋生物，富含人体必需的蛋白质和微量元素。', '<p>壮骨。生蚝中钙含量接近牛奶，铁含量为牛奶的21倍，食用后有助于骨骼生长。尤其对老年男性非常有利，不但养骨、健齿，还有益智作用。</p>', 10.00, 20.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567680120628045108.jpg', 1080, 99, b'1', '2019-09-05 18:45:14', -99, NULL, NULL);
INSERT INTO `product` VALUES (149, 48, '铁板鱿鱼', 100, '铁板鱿鱼是一道街边小吃，是用铁板把鱿鱼煎熟后，再用铁铲将鱿鱼切段，然后撒上特制酱做成。铁板烧起源于日本，已经有40年的悠久历史。铁板鱿鱼是一道街边小吃，是用铁板把鱿鱼煎熟后，再用铁铲将鱿鱼切段，然后撒上特制酱做成。', '<p><span style=\"color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: arial, &quot;pingfang sc&quot;, stheiti, simsun, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">铁板鱿鱼是一道街边小吃，是用铁板把鱿鱼煎熟后，再用铁铲将鱿鱼切段，然后撒上特制酱做成。</span><a class=\"ed_inner_link\" style=\"color: rgb(51, 102, 204); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: arial, &quot;pingfang sc&quot;, stheiti, simsun, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; text-decoration: underline; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px;\" href=\"https://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=113221&ss_c=ssc.citiao.link\" target=\"_blank\">铁板烧</a><span style=\"color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: arial, &quot;pingfang sc&quot;, stheiti, simsun, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">起源于日本，已经有40年的悠久历史。铁板鱿鱼是一道街边小吃，是用铁板把鱿鱼煎熟后，再用铁铲将鱿鱼切段，然后撒上特制酱做成。</span></p>', 60.00, 80.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567680156298066696.jpg', 93, 0, b'1', '2019-09-05 18:45:25', -99, NULL, NULL);
INSERT INTO `product` VALUES (150, 48, '濑尿虾', 100, ' 赖尿虾( 皮皮虾) 营养价值非常高. \" 皮皮虾\"俗称\"赖尿虾\"又名\" 富贵虾\"、\" 琵琶虾\"等, 虾蛄是其学名;虾蛄的营养价值较高,其性温,味甘,有 补肾壮阳、活血生津、通乳脱毒之功效.虾蛄的肉质含水分较多,肉味鲜甜嫩滑,淡而柔软。', '<p><span style=\"color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: arial, &quot;pingfang sc&quot;, stheiti, simsun, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</span><a class=\"ed_inner_link\" style=\"color: rgb(51, 102, 204); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: arial, &quot;pingfang sc&quot;, stheiti, simsun, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; text-decoration: none; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px;\" href=\"https://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=94683&ss_c=ssc.citiao.link\" target=\"_blank\">赖尿虾</a><span style=\"color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: arial, &quot;pingfang sc&quot;, stheiti, simsun, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">(&nbsp;</span><a class=\"ed_inner_link\" style=\"color: rgb(51, 102, 204); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: arial, &quot;pingfang sc&quot;, stheiti, simsun, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; text-decoration: none; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px;\" href=\"https://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=94683&ss_c=ssc.citiao.link\" target=\"_blank\">皮皮虾</a><span style=\"color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: arial, &quot;pingfang sc&quot;, stheiti, simsun, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">) 营养价值非常高. &quot; 皮皮虾&quot;俗称&quot;赖尿虾&quot;又名&quot;&nbsp;</span><a class=\"ed_inner_link\" style=\"color: rgb(51, 102, 204); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: arial, &quot;pingfang sc&quot;, stheiti, simsun, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; text-decoration: none; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px;\" href=\"https://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=94683&ss_c=ssc.citiao.link\" target=\"_blank\">富贵虾</a><span style=\"color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: arial, &quot;pingfang sc&quot;, stheiti, simsun, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">&quot;、&quot;&nbsp;</span><a class=\"ed_inner_link\" style=\"color: rgb(51, 102, 204); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: arial, &quot;pingfang sc&quot;, stheiti, simsun, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; text-decoration: none; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px;\" href=\"https://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=94683&ss_c=ssc.citiao.link\" target=\"_blank\">琵琶虾</a><span style=\"color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: arial, &quot;pingfang sc&quot;, stheiti, simsun, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">&quot;等,&nbsp;</span><a class=\"ed_inner_link\" style=\"color: rgb(51, 102, 204); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: arial, &quot;pingfang sc&quot;, stheiti, simsun, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; text-decoration: none; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px;\" href=\"https://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=94683&ss_c=ssc.citiao.link\" target=\"_blank\">虾蛄</a><span style=\"color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: arial, &quot;pingfang sc&quot;, stheiti, simsun, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">是其学名;虾蛄的营养价值较高,其性温,味甘,有 补肾壮阳、活血生津、通乳脱毒之功效.虾蛄的肉质含水分较多,肉味鲜甜嫩滑,淡而柔软。</span></p>', 50.00, 60.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567680523285035872.jpg', 92, 0, b'1', '2019-09-05 18:48:48', -99, NULL, NULL);
INSERT INTO `product` VALUES (151, 48, '麻辣蛤蜊', 100, '蛤蜊色泽焦黄，有张有合，欲拒还羞，挑逗客官的味觉。佐以绿色的大葱和黄瓜，宛若千里荒岩，簇簇绿生，十分讨人喜。而色泽暗红小米辣则低调隐忍，丝毫不夺人眼球，只是偶然惊鸿一瞥，便叫你心跳快上三分。', '<p><span style=\"color: rgb(64, 64, 64); font-family: -apple-system, BlinkMacSystemFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Segoe UI&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);\">蛤蜊色泽焦黄，有张有合，欲拒还羞，挑逗客官的味觉。佐以绿色的大葱和黄瓜，宛若千里荒岩，簇簇绿生，十分讨人喜。而色泽暗红小米辣则低调隐忍，丝毫不夺人眼球，只是偶然惊鸿一瞥，便叫你心跳快上三分。</span></p>', 145.00, 184.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567680249628019088.png', 183, 123, b'1', '2019-09-05 18:52:03', -99, NULL, NULL);
INSERT INTO `product` VALUES (152, 48, '冰鲜北极贝', 50, '北极贝是一种营养非常丰富的食物，它的肉质非常鲜美所以深受男女老少的喜爱，适当的吃北极贝对人们的身体健康是有好处的。', '<p><span style=\"color: rgb(102, 102, 102); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">过节这几天，冰箱里存了很多冰鲜食品，正好和家人一起，吃了海鲜大餐，其中北极贝就是一个，北极贝吃法多样，不过最好吃还是即食吃起来更加新鲜，北极贝从深海打捞上来，经过处理已经是熟的了，所以，自己稍作加工就可以像饭店一样，同样可以做出美味的冰鲜北极贝哦。</span></p>', 120.00, 600.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567680723912062066.jpg', 102, 600000, b'1', '2019-09-05 18:53:40', -99, -99, '2020-02-05 17:21:03');
INSERT INTO `product` VALUES (153, 48, '剁椒鱼头', 100, '菜品色泽红亮、味浓、肉质细嫩。肥而不腻、口感软糯、鲜辣适口。', '<p>菜品色泽红亮、味浓、肉质细嫩。肥而不腻、口感软糯、鲜辣适口。</p>', 89.00, 123.50, 'http://120.76.118.101:8081/upload/website/image/20190905/1567680249577051027.jpg', 1337, 45641, b'1', '2019-09-05 18:55:02', -99, NULL, NULL);
INSERT INTO `product` VALUES (154, 48, '酸菜鲈鱼', 100, '酸菜鲈鱼是一款家常菜品，制作原料主要有酸菜、鲈鱼等。', '<p>酸菜鲈鱼是一款家常菜品，制作原料主要有酸菜、鲈鱼等。</p>', 99.00, 130.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567680888776039727.png', 181, 0, b'1', '2019-09-05 18:57:07', -99, NULL, NULL);
INSERT INTO `product` VALUES (155, 48, '剁椒鳊鱼', 50, '简单方便', '<p><span style=\"color: rgb(102, 102, 102); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">味道鲜美</span></p>', 100.00, 120.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567681032706027524.jpg', 113, 3222, b'1', '2019-09-05 18:58:21', -99, NULL, NULL);
INSERT INTO `product` VALUES (156, 48, '飘香东星斑', 100, '飘香东星斑，香港十大经典名菜之一。', '<p>飘香东星斑是2018年9月10日发布的“中国菜”之一。</p>', 999.00, 1200.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567681164953083263.png', 141, 99, b'1', '2019-09-05 19:00:57', -99, NULL, NULL);
INSERT INTO `product` VALUES (157, 48, '蟹黄', 50, '蟹黄中含有丰富的蛋白质、磷脂和其他营养物质，营养丰富，但是同时含有较高含量的油脂和胆固醇。蟹黄可制成很多美食：蟹黄粥等。上海滩还有著名的美味小吃——蟹粉小笼。顾名思义，主料就是蟹黄。蟹黄有河蟹黄和海蟹黄两种。', '<p>蟹膏也有可能是脂肪。因为公蟹为了准备过冬，渐渐的脂肪堆积，长成了蟹膏（俗称蟹油）。剥开公蟹的壳，可以看到蟹壳和蟹坨坨当中有白白的、粘粘的东西，就是蟹膏（蟹油）。煮熟了以后，蟹膏变成了半透明状。蟹膏越多，说明这只公蟹越壮。</p><p>在野生的环境中，到了农历九月，母蟹的蟹黄长得最丰满；到了十月，公蟹的蟹膏（蟹油）长得最厚实。所以，过去吃螃蟹，有“九雌十雄”的说法。意思是：农历九月里要吃母蟹，农历十月里要吃公蟹。</p><p><br/></p>', 69.00, 119.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567683427828014985.jpg', 1081, 8946, b'1', '2019-09-05 19:38:53', -99, -99, '2019-09-05 19:42:45');
INSERT INTO `product` VALUES (158, 6, '海绵宝宝蟹黄堡', 0, '派大星我们去抓水母吧！', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255);\">他真是可怕了，一看到他我就恶心！那双大牛眼睛、方身体、两颗大门牙，还有那个愚蠢的领带！真是太可怕了！</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255);\">但是他在你身上就很好看！1</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255);\"><img src=\"http://120.76.118.101:8081/upload/website/image/20190905/1567675235429002841.jpg\" alt=\"1567675235429002841.jpg\"/></span></p>', 28.00, 35.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567683550982006259.jpg', 1081, 54678, b'1', '2019-09-05 19:41:57', -99, -99, '2020-01-31 13:11:18');
INSERT INTO `product` VALUES (159, 6, '章鱼烧', 100, '', '<p><img src=\"http://120.76.118.101:8081/upload/website/image/20190905/1567693738768030754.jpg\" title=\"1567693738768030754.jpg\" alt=\"timg.jpg\"/></p>', 11.00, 16.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567693711169015255.jpg', 951, 2333, b'1', '2019-09-05 22:29:03', -99, NULL, NULL);
INSERT INTO `product` VALUES (160, 6, '窝窝头', 100, '美味可口，窝窝头一块钱四个，嘿嘿', '<p><span style=\"font-family: &quot;Hiragino Sans GB&quot;, STHeiti, 微软雅黑, &quot;Microsoft YaHei&quot;, Helvetica, Arial, serif; background-color: rgb(255, 255, 255);\">用豆浆机制作出来的豆浆很细腻，我为了做豆浆酸奶，特意把豆浆过滤掉豆渣，我就想起曾经做过放豆腐的窝窝头，家里人说嚼着很香。这次就用豆渣制作了迷你窝窝头，一口一个玉米面窝窝头，色泽金黄，而且玉米面、豆渣都是注重粗粮注重健康的营养佳品。</span></p>', 1.00, 2.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567693922131019949.jpg', 581, 99, b'1', '2019-09-05 22:33:36', -99, NULL, NULL);
INSERT INTO `product` VALUES (163, 6, '螺蛳粉', 0, '非常好吃的螺蛳粉1', '<p>\n    看看诱人的图片吧1\n</p>\n<p>\n    <img src=\"http://120.76.118.101:8081/upload/website/image/20190905/1567675235357029569.jpg\"/>\n</p>\n<p>\n    <img src=\"http://120.76.118.101:8081/upload/website/image/20190905/1567675235421061119.jpg\"/>\n</p>\n<p>\n    <br/>\n</p>', 7.91, 121.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675234903016987.jpg', 144, 10001, b'1', '2020-01-31 14:22:53', -99, -99, '2020-02-06 23:06:57');

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
  `strikePrice` decimal(11, 2) NULL DEFAULT 0.00 COMMENT '成交价格',
  `meno` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '生成订单时间',
  `dealTime` datetime(0) NULL DEFAULT NULL COMMENT '交易时间（付钱的时间）',
  `sendTime` datetime(0) NULL DEFAULT NULL COMMENT '发货时间',
  `receiveTime` datetime(0) NULL DEFAULT NULL COMMENT '收货时间',
  `tag` int(11) NULL DEFAULT 2 COMMENT '-9异常，-8已拒绝，-4已退货，-3 申请退货，-2已取消，-1申请取消，0待付款、1.待发货，2已发货，3已收货、4已完成',
  PRIMARY KEY (`orderNo`) USING BTREE,
  INDEX `customerId`(`customerId`) USING BTREE,
  CONSTRAINT `product_order_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `customer` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product_order
-- ----------------------------
INSERT INTO `product_order` VALUES ('077dc8e1365045cc8fa386ba1d33a2e9', 9, '温晓峰', '柳州市宝骏', '552331', '17712939359', 1, 1, 112.80, '请尽快发货', '2017-09-09 17:34:47', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020221562612221932', 12, '至尊宝', 'f653aec2da68487ea69a0adcce58b107', '545036', '13145200520', 2, 2, NULL, '请不要发次品', '2017-09-07 20:47:44', NULL, NULL, NULL, -1);
INSERT INTO `product_order` VALUES ('202002042132481146593', 1, '陈家龙', '柳州城市职业学院7栋', '134321', '13124123132', 0, 1, NULL, NULL, '2020-02-04 21:32:48', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('202002042208011150627', 1, '陈家龙', '柳州城市职业学院7栋', '134321', '13124123132', 0, 1, NULL, NULL, '2020-02-04 22:08:01', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020422080116143492', 16, '紫霞', '柳州橙汁园', '568741', '18083815777', 0, 1, NULL, NULL, '2020-02-04 22:08:01', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020422080125159910', 25, '张三', '广西柳州', '000000', '17376108213', 0, 1, NULL, NULL, '2020-02-04 22:08:01', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020422080150165192', 50, '周杰伦', '柳州城市职业学院', '545005', '13633088047', 0, 1, NULL, NULL, '2020-02-04 22:08:01', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020422080160179596', 60, 'adsfdsf', '广西柳州', '689541', '18697845987', 0, 1, NULL, NULL, '2020-02-04 22:08:01', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020422080161136147', 61, '你好', '柳州城市职业学院', '000000', '18756987552', 0, 1, NULL, NULL, '2020-02-04 22:08:01', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020422080216139398', 16, '紫霞', '柳州橙汁园', '568741', '18083815777', 0, 1, NULL, NULL, '2020-02-04 22:08:02', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020422080236178369', 36, '灰娘娘', '青青草原', '000000', '18254567891', 0, 1, NULL, NULL, '2020-02-04 22:08:02', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020422080251134453', 51, '易燃', '北京市昌平区回龙观镇北清路', '000000', '18520001128', 0, 1, NULL, NULL, '2020-02-04 22:08:02', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020422080263126527', 63, '谭谭谭', '柳州城市职业学院', '515673', '17677777771', 0, 1, NULL, NULL, '2020-02-04 22:08:02', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020422101555161632', 55, '位试试', '广西柳州', '537519', '18894622108', 0, 1, NULL, NULL, '2020-02-04 22:10:15', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('202002042210201106902', 1, '陈家龙', '柳州城市职业学院7栋', '134321', '13124123132', 0, 1, NULL, NULL, '2020-02-04 22:10:20', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020422102531199418', 31, '阿尔托利亚·潘德拉贡', '大不列颠帝国', '666666', '14795309399', 0, 1, NULL, NULL, '2020-02-04 22:10:25', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020422103040141598', 40, '李小', '柳州城市职业技术学院', '000000', '13640516155', 0, 1, NULL, NULL, '2020-02-04 22:10:30', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020422103518124494', 18, 'ABC客户2', '广西柳州', '000000', '18168526111', 0, 1, NULL, NULL, '2020-02-04 22:10:35', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020422104045162745', 45, '李丽莉', '柳州城市职业学院', '000000', '13877690264', 0, 1, NULL, NULL, '2020-02-04 22:10:40', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020422104518100165', 18, 'ABC客户2', '广西柳州', '000000', '18168526111', 0, 1, NULL, NULL, '2020-02-04 22:10:45', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020422105034143368', 34, '勇哥', '柳州城市职业学院', '202020', '18078764223', 0, 1, NULL, NULL, '2020-02-04 22:10:50', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020422105565141179', 65, '张11q', '柳州q', '545005', '17376108213', 0, 1, NULL, NULL, '2020-02-04 22:10:55', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('202002042211001144850', 1, '陈家龙', '柳州城市职业学院7栋', '134321', '13124123132', 0, 1, NULL, NULL, '2020-02-04 22:11:00', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('202002042211059186774', 9, '白安善', '柳州市抠脚村', '547000', '13647789517', 0, 1, NULL, NULL, '2020-02-04 22:11:05', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020422111119179635', 19, 'ABC客户3', '广西柳州', '000000', '18100800709', 0, 1, NULL, NULL, '2020-02-04 22:11:11', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('202002042211169175332', 9, '白安善', '柳州市抠脚村', '547000', '13647789517', 0, 1, NULL, NULL, '2020-02-04 22:11:16', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020422112158108065', 58, '妮妮', '广西柳州市鱼峰区', '253343', '18775534562', 0, 1, NULL, NULL, '2020-02-04 22:11:21', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020422112644186998', 44, 'ad', '广西柳州', '000000', '13677533336', 0, 1, NULL, NULL, '2020-02-04 22:11:26', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020422113144199638', 44, 'ad', '广西柳州', '000000', '13677533336', 0, 1, NULL, NULL, '2020-02-04 22:11:31', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020422113652136323', 52, '小二', '外太空', '545000', '17777777777', 0, 1, NULL, NULL, '2020-02-04 22:11:36', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020422114112162683', 12, '至尊宝', '桂林市大河小区', '151431', '13633083252', 0, 1, NULL, NULL, '2020-02-04 22:11:41', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020422114630173673', 30, '张无忌', '广西陆川', '537700', '18844528478', 0, 1, NULL, NULL, '2020-02-04 22:11:46', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020422115149107555', 49, '白云', '柳州城市职业学院', '537400', '18277589582', 0, 1, NULL, NULL, '2020-02-04 22:11:51', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020515480853100521', 53, '马化腾', '柳州市恒大小区', '545000', '15678078888', 0, 2, NULL, NULL, '2020-02-05 15:48:08', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020515481348194285', 48, '啊毛', '柳州城市职业学院', '124587', '17677430458', 0, 2, NULL, NULL, '2020-02-05 15:48:13', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020515481838122512', 38, '勇哥', '柳州城市职业学院', '000000', '18648841344', 0, 2, NULL, NULL, '2020-02-05 15:48:18', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020515482352166635', 52, '小二', '外太空', '545000', '17777777777', 0, 2, NULL, NULL, '2020-02-05 15:48:23', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020515482823120026', 23, 'abc客户11', '广西柳州', '000000', '13357024777', 0, 2, NULL, NULL, '2020-02-05 15:48:28', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020515483326175780', 26, '123', '广西柳州', '000000', '13357024777', 0, 2, NULL, NULL, '2020-02-05 15:48:33', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020515483817164685', 17, 'ABC客户1', '广西柳州', '000000', '15377892222', 0, 1, NULL, NULL, '2020-02-05 15:48:38', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020515484327165060', 27, '12', '广西柳州', '000000', '13357024777', 0, 1, NULL, NULL, '2020-02-05 15:48:43', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020515484859170638', 59, '嘻嘻', '柳州市', '231433', '18216463254', 0, 1, NULL, NULL, '2020-02-05 15:48:48', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020515485349146783', 49, '白云', '柳州城市职业学院', '537400', '18277589582', 0, 1, NULL, NULL, '2020-02-05 15:48:53', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020515485833127921', 33, '阿沙姐姐丶', '西伯利亚', '547200', '18174918911', 0, 2, NULL, NULL, '2020-02-05 15:48:58', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020515490321131944', 21, 'ABC客户5', '广西柳州', '000000', '15377892222', 0, 2, NULL, NULL, '2020-02-05 15:49:03', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020515490835120363', 35, '芙蓉姐', '柳城职9栋519', '000000', '17888993366', 0, 1, NULL, NULL, '2020-02-05 15:49:08', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020515491316126470', 16, '紫霞', '柳州橙汁园', '568741', '18083815777', 0, 2, NULL, NULL, '2020-02-05 15:49:13', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020515491845193919', 45, '李丽莉', '柳州城市职业学院', '000000', '13877690264', 0, 1, NULL, NULL, '2020-02-05 15:49:18', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020610260264169387', 64, '小白', '很多事卡拉', '748520', '13878474643', 0, 2, NULL, NULL, '2020-02-03 10:26:02', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020610261350198368', 50, '周杰伦', '柳州城市职业学院', '545005', '13633088047', 0, 2, NULL, NULL, '2020-02-03 10:26:13', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020610262322181412', 22, 'ABC客户6', '广西柳州', '000000', '15377892222', 0, 1, NULL, NULL, '2020-02-03 10:26:23', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020610263325149069', 25, '张三', '广西柳州', '000000', '17376108213', 0, 1, NULL, NULL, '2020-02-03 10:26:33', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020610264348149936', 48, '啊毛', '柳州城市职业学院', '124587', '17677430458', 0, 1, NULL, NULL, '2020-02-03 10:26:43', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020610265359184958', 59, '嘻嘻', '柳州市', '231433', '18216463254', 0, 1, NULL, NULL, '2020-02-03 10:26:53', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020610270352127981', 52, '小二', '外太空', '545000', '17777777777', 0, 1, NULL, NULL, '2020-02-03 10:27:03', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020610271344189142', 44, 'ad', '广西柳州', '000000', '13677533336', 0, 1, NULL, NULL, '2020-02-03 10:27:13', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020610272342170227', 42, '林轩', '新疆维吾尔自治区满斗村', '545597', '15151788955', 0, 1, NULL, NULL, '2020-02-03 10:27:23', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020610273334165530', 34, '勇哥', '柳州城市职业学院', '202020', '18078764223', 0, 2, NULL, NULL, '2020-02-03 10:27:33', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020610274358104537', 58, '妮妮', '广西柳州市鱼峰区', '253343', '18775534562', 0, 1, NULL, NULL, '2020-02-03 10:27:43', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020610275361107233', 61, '你好', '柳州城市职业学院', '000000', '18756987552', 0, 2, NULL, NULL, '2020-02-03 10:27:53', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020610280330129024', 30, '张无忌', '广西陆川', '537700', '18844528478', 0, 1, NULL, NULL, '2020-02-03 10:28:03', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020610281316169436', 16, '紫霞', '柳州橙汁园', '568741', '18083815777', 0, 1, NULL, NULL, '2020-02-03 10:28:13', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020610282364195050', 64, '小白', '很多事卡拉', '748520', '13878474643', 0, 1, NULL, NULL, '2020-02-03 10:28:23', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('202002061028331127717', 1, '陈家龙', '柳州城市职业学院7栋', '134321', '13124123132', 0, 2, NULL, NULL, '2020-02-03 10:28:33', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020610284341162248', 41, '嘟嘟', '广西柳州', '545107', '17377235562', 0, 2, NULL, NULL, '2020-02-03 10:28:43', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020610285322109773', 22, 'ABC客户6', '广西柳州', '000000', '15377892222', 0, 2, NULL, NULL, '2020-02-03 10:28:53', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020610290346179646', 46, '邓一封', '北京市朝阳区', '548766', '15648544696', 0, 2, NULL, NULL, '2020-02-03 10:29:03', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020610291323175484', 23, 'abc客户11', '广西柳州', '000000', '13357024777', 0, 1, NULL, NULL, '2020-02-03 10:29:13', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020610292335186300', 35, '芙蓉姐', '柳城职9栋519', '000000', '17888993366', 0, 2, NULL, NULL, '2020-02-03 10:29:23', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020610293332154066', 32, '岑辉山', '柳州城市职业学院', '047300', '13087726397', 0, 1, NULL, NULL, '2020-02-03 10:29:33', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020610294323177677', 23, 'abc客户11', '广西柳州', '000000', '13357024777', 0, 1, NULL, NULL, '2020-02-03 10:29:43', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617415118132474', 18, 'ABC客户2', '广西柳州', '000000', '18168526111', 0, 2, NULL, NULL, '2020-02-02 17:41:51', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617415227119724', 27, '12', '广西柳州', '000000', '13357024777', 0, 1, NULL, NULL, '2020-02-02 17:41:52', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617415253159644', 53, '马化腾', '柳州市恒大小区', '545000', '15678078888', 0, 2, NULL, NULL, '2020-02-02 17:41:52', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617415320125263', 20, 'ABC客户4', '广西柳州', '000000', '15377892222', 0, 1, NULL, NULL, '2020-02-02 17:41:53', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617415362180249', 62, '昭君', '广西贵港市港南区', '537100', '15253524689', 0, 2, NULL, NULL, '2020-02-02 17:41:53', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617415462197911', 62, '昭君', '广西贵港市港南区', '537100', '15253524689', 0, 1, NULL, NULL, '2020-02-02 17:41:54', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617415464156248', 64, '小白', '很多事卡拉', '748520', '13878474643', 0, 1, NULL, NULL, '2020-02-02 17:41:54', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617415538141416', 38, '勇哥', '柳州城市职业学院', '000000', '18648841344', 0, 2, NULL, NULL, '2020-02-02 17:41:55', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617415547148677', 47, '憨憨', '柳州城市职业学院', '000000', '15578568273', 0, 1, NULL, NULL, '2020-02-02 17:41:55', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617415619183244', 19, 'ABC客户3', '广西柳州', '000000', '18100800709', 0, 1, NULL, NULL, '2020-02-02 17:41:56', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617415641153495', 41, '嘟嘟', '广西柳州', '545107', '17377235562', 0, 1, NULL, NULL, '2020-02-02 17:41:56', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617415725101744', 25, '张三', '广西柳州', '000000', '17376108213', 0, 1, NULL, NULL, '2020-02-02 17:41:57', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617415755190592', 55, '位试试', '广西柳州', '537519', '18894622108', 0, 1, NULL, NULL, '2020-02-02 17:41:57', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617451823107363', 23, 'abc客户11', '广西柳州', '000000', '13357024777', 0, 1, NULL, NULL, '2020-02-01 17:45:18', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617451963170774', 63, '谭谭谭', '柳州城市职业学院', '515673', '17677777771', 0, 2, NULL, NULL, '2020-02-01 17:45:19', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617452059189043', 59, '嘻嘻', '柳州市', '231433', '18216463254', 0, 2, NULL, NULL, '2020-02-01 17:45:20', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('202002061745209155180', 9, '白安善', '柳州市抠脚村', '547000', '13647789517', 0, 1, NULL, NULL, '2020-02-01 17:45:20', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617452147165034', 47, '憨憨', '柳州城市职业学院', '000000', '15578568273', 0, 1, NULL, NULL, '2020-02-01 17:45:21', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617452226189376', 26, '123', '广西柳州', '000000', '13357024777', 0, 1, NULL, NULL, '2020-02-01 17:45:22', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617452351168743', 51, '易燃', '北京市昌平区回龙观镇北清路', '000000', '18520001128', 0, 1, NULL, NULL, '2020-02-01 17:45:23', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('202002061745241138612', 1, '陈家龙', '柳州城市职业学院7栋', '134321', '13124123132', 0, 1, NULL, NULL, '2020-02-01 17:45:24', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('202002061745251181601', 1, '陈家龙', '柳州城市职业学院7栋', '134321', '13124123132', 0, 2, NULL, NULL, '2020-02-01 17:45:25', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617452557139187', 57, '小猪佩奇', '柳州中山路8号', '000000', '18410358497', 0, 1, NULL, NULL, '2020-02-01 17:45:25', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617452649113732', 49, '白云', '柳州城市职业学院', '537400', '18277589582', 0, 1, NULL, NULL, '2020-02-01 17:45:26', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617452739155492', 39, '邓一封', '北京市朝阳区', '545933', '15468951235', 0, 2, NULL, NULL, '2020-02-01 17:45:27', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617452818181646', 18, 'ABC客户2', '广西柳州', '000000', '18168526111', 0, 2, NULL, NULL, '2020-02-01 17:45:28', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617452930143805', 30, '张无忌', '广西陆川', '537700', '18844528478', 0, 2, NULL, NULL, '2020-02-01 17:45:29', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617452947146565', 47, '憨憨', '柳州城市职业学院', '000000', '15578568273', 0, 2, NULL, NULL, '2020-02-01 17:45:29', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617453044119793', 44, 'ad', '广西柳州', '000000', '13677533336', 0, 1, NULL, NULL, '2020-02-01 17:45:30', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617453118163466', 18, 'ABC客户2', '广西柳州', '000000', '18168526111', 0, 2, NULL, NULL, '2020-02-01 17:45:31', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617453254123594', 54, 'buyaolian', '北极半球', '530401', '18645678564', 0, 2, NULL, NULL, '2020-02-01 17:45:32', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617471723116954', 23, 'abc客户11', '广西柳州', '000000', '13357024777', 0, 2, NULL, NULL, '2020-01-31 17:47:17', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617471840135123', 40, '李小', '柳州城市职业技术学院', '000000', '13640516155', 0, 2, NULL, NULL, '2020-01-31 17:47:18', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617471913129151', 13, '徐凤年', '广西柳州', '000000', '17703771999', 0, 2, NULL, NULL, '2020-01-31 17:47:19', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617472026197481', 26, '123', '广西柳州', '000000', '13357024777', 0, 2, NULL, NULL, '2020-01-31 17:47:20', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617472165169166', 65, '张11q', '柳州q', '545005', '17376108213', 0, 2, NULL, NULL, '2020-01-31 17:47:21', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617472231121097', 31, '阿尔托利亚·潘德拉贡', '大不列颠帝国', '666666', '14795309399', 0, 1, NULL, NULL, '2020-01-31 17:47:22', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617472319106336', 19, 'ABC客户3', '广西柳州', '000000', '18100800709', 0, 1, NULL, NULL, '2020-01-31 17:47:23', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617480514188254', 14, '王大发', '北京市顺义区', '000000', '15388889881', 0, 1, NULL, NULL, '2020-01-30 17:48:05', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617480633172480', 33, '阿沙姐姐丶', '西伯利亚', '547200', '18174918911', 0, 1, NULL, NULL, '2020-01-30 17:48:06', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617480722164762', 22, 'ABC客户6', '广西柳州', '000000', '15377892222', 0, 1, NULL, NULL, '2020-01-30 17:48:07', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617480859180400', 59, '嘻嘻', '柳州市', '231433', '18216463254', 0, 2, NULL, NULL, '2020-01-30 17:48:08', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617480946114557', 46, '邓一封', '北京市朝阳区', '548766', '15648544696', 0, 1, NULL, NULL, '2020-01-30 17:48:09', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617481062108640', 62, '昭君', '广西贵港市港南区', '537100', '15253524689', 0, 1, NULL, NULL, '2020-01-30 17:48:10', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617481115109847', 15, '客户3', '广东省广州市', '000000', '15388889881', 0, 2, NULL, NULL, '2020-01-30 17:48:11', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617481246161693', 46, '邓一封', '北京市朝阳区', '548766', '15648544696', 0, 1, NULL, NULL, '2020-01-30 17:48:12', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617481322183174', 22, 'ABC客户6', '广西柳州', '000000', '15377892222', 0, 1, NULL, NULL, '2020-01-30 17:48:13', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617481445134696', 45, '李丽莉', '柳州城市职业学院', '000000', '13877690264', 0, 1, NULL, NULL, '2020-01-30 17:48:14', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617481523155156', 23, 'abc客户11', '广西柳州', '000000', '13357024777', 0, 2, NULL, NULL, '2020-01-30 17:48:15', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617481650147929', 50, '周杰伦', '柳州城市职业学院', '545005', '13633088047', 0, 1, NULL, NULL, '2020-01-30 17:48:16', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617481828192394', 28, '张三丰', '柳州城市职业学院', '000000', '13633083200', 0, 1, NULL, NULL, '2020-01-30 17:48:18', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617481937110231', 37, '小小', '柳州市官塘大道柳州城市职业学院', '000000', '17677253547', 0, 2, NULL, NULL, '2020-01-30 17:48:19', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617482036128446', 36, '灰娘娘', '青青草原', '000000', '18254567891', 0, 2, NULL, NULL, '2020-01-30 17:48:20', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617482120148029', 20, 'ABC客户4', '广西柳州', '000000', '15377892222', 0, 2, NULL, NULL, '2020-01-30 17:48:21', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617482222144297', 22, 'ABC客户6', '广西柳州', '000000', '15377892222', 0, 2, NULL, NULL, '2020-01-30 17:48:22', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617482335154411', 35, '芙蓉姐', '柳城职9栋519', '000000', '17888993366', 0, 2, NULL, NULL, '2020-01-30 17:48:23', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617482462165619', 62, '昭君', '广西贵港市港南区', '537100', '15253524689', 0, 2, NULL, NULL, '2020-01-30 17:48:24', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617482521184761', 21, 'ABC客户5', '广西柳州', '000000', '15377892222', 0, 2, NULL, NULL, '2020-01-30 17:48:25', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617482647139440', 47, '憨憨', '柳州城市职业学院', '000000', '15578568273', 0, 1, NULL, NULL, '2020-01-30 17:48:26', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617493158180758', 58, '妮妮', '广西柳州市鱼峰区', '253343', '18775534562', 0, 2, NULL, NULL, '2020-02-06 17:49:31', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617494346108271', 46, '邓一封', '北京市朝阳区', '548766', '15648544696', 0, 1, NULL, NULL, '2020-02-06 17:49:43', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617495543167064', 43, '王守义', '石家庄', '000000', '13737664103', 0, 2, NULL, NULL, '2020-02-06 17:49:55', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617500734144171', 34, '勇哥', '柳州城市职业学院', '202020', '18078764223', 0, 2, NULL, NULL, '2020-02-06 17:50:07', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617501913183606', 13, '徐凤年', '广西柳州', '000000', '17703771999', 0, 1, NULL, NULL, '2020-02-06 17:50:19', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617503154148712', 54, 'buyaolian', '北极半球', '530401', '18645678564', 0, 1, NULL, NULL, '2020-02-06 17:50:31', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617504329181155', 29, '你的名字', '柳州城市职业学院7栋', '545003', '18775207581', 0, 1, NULL, NULL, '2020-02-06 17:50:43', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617505544110061', 44, 'ad', '广西柳州', '000000', '13677533336', 0, 2, NULL, NULL, '2020-02-06 17:50:55', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617510731129500', 31, '阿尔托利亚·潘德拉贡', '大不列颠帝国', '666666', '14795309399', 0, 1, NULL, NULL, '2020-02-06 17:51:07', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617511917180373', 17, 'ABC客户1', '广西柳州', '000000', '15377892222', 0, 2, NULL, NULL, '2020-02-06 17:51:19', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617513138106270', 38, '勇哥', '柳州城市职业学院', '000000', '18648841344', 0, 1, NULL, NULL, '2020-02-06 17:51:31', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617514322137729', 22, 'ABC客户6', '广西柳州', '000000', '15377892222', 0, 2, NULL, NULL, '2020-02-06 17:51:43', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617515525127894', 25, '张三', '广西柳州', '000000', '17376108213', 0, 2, NULL, NULL, '2020-02-06 17:51:55', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617520733173123', 33, '阿沙姐姐丶', '西伯利亚', '547200', '18174918911', 0, 1, NULL, NULL, '2020-02-06 17:52:07', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020617521965117374', 65, '张11q', '柳州q', '545005', '17376108213', 0, 2, NULL, NULL, '2020-02-06 17:52:19', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020617523154119175', 54, 'buyaolian', '北极半球', '530401', '18645678564', 0, 1, NULL, NULL, '2020-02-06 17:52:31', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020715433060147342', 60, 'adsfdsf', '广西柳州', '689541', '18697845987', 0, 2, NULL, NULL, '2020-02-07 15:43:30', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020715442163155610', 63, '谭谭谭', '柳州城市职业学院', '515673', '17677777771', 0, 1, NULL, NULL, '2020-02-07 15:44:21', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020715451159173145', 59, '嘻嘻', '柳州市', '231433', '18216463254', 0, 1, NULL, NULL, '2020-02-07 15:45:11', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020715460119126118', 19, 'ABC客户3', '广西柳州', '000000', '18100800709', 0, 1, NULL, NULL, '2020-02-07 15:46:01', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020715465152195312', 52, '小二', '外太空', '545000', '17777777777', 0, 2, NULL, NULL, '2020-02-07 15:46:51', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020715474158176941', 58, '妮妮', '广西柳州市鱼峰区', '253343', '18775534562', 0, 2, NULL, NULL, '2020-02-07 15:47:41', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020715483137120424', 37, '小小', '柳州市官塘大道柳州城市职业学院', '000000', '17677253547', 0, 2, NULL, NULL, '2020-02-07 15:48:31', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('2020020715492158152088', 58, '妮妮', '广西柳州市鱼峰区', '253343', '18775534562', 0, 1, NULL, NULL, '2020-02-07 15:49:21', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('2020020715501163127554', 63, '谭谭谭', '柳州城市职业学院', '515673', '17677777771', 0, 2, NULL, NULL, '2020-02-07 15:50:11', NULL, NULL, NULL, 1);
INSERT INTO `product_order` VALUES ('3ba0104bc84b4b4f85ad71a11e5ca8d2', 12, '至尊宝', '柳州市鹧鸪江路1号', '151431', '18260700009', 0, 1, NULL, '请不要发次品', '2017-09-07 20:48:13', '2017-09-07 20:49:13', NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('480b807046b84c85b4ab241106aac39b', 1, '张三', '柳州市官塘大道1号', '000000', '17712939359', 0, 2, 300.00, '请不要发次品', '2017-09-07 20:49:27', '2020-02-02 21:09:13', '2020-02-02 21:07:40', NULL, 2);
INSERT INTO `product_order` VALUES ('da247d46a58540a381aad88462f0f20b', 1, '张三2', '柳州市鱼峰区官塘大道文苑路1号2', '545032', '18922898902', 0, 1, 10.00, '请不要发次品', '2017-09-07 20:49:09', NULL, NULL, NULL, 0);
INSERT INTO `product_order` VALUES ('f653aec2da68487ea69a0adcce58b107', 12, '至尊宝', 'f653aec2da68487ea69a0adcce58b107', '545036', '13145200520', 1, 2, NULL, '请不要发次品', '2017-09-07 20:47:44', NULL, NULL, NULL, -1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 595 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_order_detail
-- ----------------------------
INSERT INTO `product_order_detail` VALUES (44, 'f653aec2da68487ea69a0adcce58b107', 74, 12.00, 16.00, 9);
INSERT INTO `product_order_detail` VALUES (45, 'f653aec2da68487ea69a0adcce58b107', 76, 8.00, 12.00, 12);
INSERT INTO `product_order_detail` VALUES (46, 'f653aec2da68487ea69a0adcce58b107', 81, 12.00, 15.00, 13);
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
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (-99, 'ROLE_admin', '系统管理员', -99, b'0', b'1', '系统自带管理员，最高权限');
INSERT INTO `role` VALUES (-1, 'ROLE_user', '普通管理员', 20, b'0', b'1', '系统自带管理员，基本角色');
INSERT INTO `role` VALUES (3, 'ROLE_visitor', '观光员', 100, b'0', b'1', '只拥有查询权限');
INSERT INTO `role` VALUES (12, 'ROLE_student', '学生', 100, b'1', b'1', '给学生操作的角色');
INSERT INTO `role` VALUES (14, 'ROLE_teacher', '老师', 100, b'0', b'1', '提供给软件专业教师操作的角色');

-- ----------------------------
-- Table structure for role_menu
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) NULL DEFAULT NULL COMMENT 'role主键',
  `menuId` int(11) NULL DEFAULT NULL COMMENT 'menu主键',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 439 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES (313, -99, 7, NULL);
INSERT INTO `role_menu` VALUES (314, -99, 29, NULL);
INSERT INTO `role_menu` VALUES (315, -99, 30, NULL);
INSERT INTO `role_menu` VALUES (316, -99, 2, NULL);
INSERT INTO `role_menu` VALUES (317, -99, 53, NULL);
INSERT INTO `role_menu` VALUES (318, -99, 8, NULL);
INSERT INTO `role_menu` VALUES (319, -99, 32, NULL);
INSERT INTO `role_menu` VALUES (320, -99, 33, NULL);
INSERT INTO `role_menu` VALUES (321, -99, 3, NULL);
INSERT INTO `role_menu` VALUES (322, -99, 10, NULL);
INSERT INTO `role_menu` VALUES (323, -99, 4, NULL);
INSERT INTO `role_menu` VALUES (324, -99, 14, NULL);
INSERT INTO `role_menu` VALUES (325, -99, 15, NULL);
INSERT INTO `role_menu` VALUES (326, -99, 5, NULL);
INSERT INTO `role_menu` VALUES (327, -99, 55, NULL);
INSERT INTO `role_menu` VALUES (328, -99, 56, NULL);
INSERT INTO `role_menu` VALUES (329, -99, 6, NULL);
INSERT INTO `role_menu` VALUES (330, -99, 23, NULL);
INSERT INTO `role_menu` VALUES (331, -99, 24, NULL);
INSERT INTO `role_menu` VALUES (332, -99, 25, NULL);
INSERT INTO `role_menu` VALUES (333, -99, 57, NULL);
INSERT INTO `role_menu` VALUES (334, -99, 58, NULL);
INSERT INTO `role_menu` VALUES (335, -99, 59, NULL);
INSERT INTO `role_menu` VALUES (359, -1, 7, NULL);
INSERT INTO `role_menu` VALUES (360, -1, 29, NULL);
INSERT INTO `role_menu` VALUES (361, -1, 30, NULL);
INSERT INTO `role_menu` VALUES (362, -1, 2, NULL);
INSERT INTO `role_menu` VALUES (363, -1, 53, NULL);
INSERT INTO `role_menu` VALUES (364, -1, 8, NULL);
INSERT INTO `role_menu` VALUES (365, -1, 32, NULL);
INSERT INTO `role_menu` VALUES (366, -1, 33, NULL);
INSERT INTO `role_menu` VALUES (367, -1, 3, NULL);
INSERT INTO `role_menu` VALUES (368, -1, 10, NULL);
INSERT INTO `role_menu` VALUES (369, -1, 4, NULL);
INSERT INTO `role_menu` VALUES (370, -1, 14, NULL);
INSERT INTO `role_menu` VALUES (371, -1, 15, NULL);
INSERT INTO `role_menu` VALUES (372, -1, 5, NULL);
INSERT INTO `role_menu` VALUES (373, -1, 55, NULL);
INSERT INTO `role_menu` VALUES (374, -1, 56, NULL);
INSERT INTO `role_menu` VALUES (375, -1, 6, NULL);
INSERT INTO `role_menu` VALUES (376, -1, 23, NULL);
INSERT INTO `role_menu` VALUES (377, -1, 24, NULL);
INSERT INTO `role_menu` VALUES (378, -1, 25, NULL);
INSERT INTO `role_menu` VALUES (379, -1, 57, NULL);
INSERT INTO `role_menu` VALUES (380, -1, 58, NULL);
INSERT INTO `role_menu` VALUES (381, -1, 59, NULL);
INSERT INTO `role_menu` VALUES (382, 3, 7, NULL);
INSERT INTO `role_menu` VALUES (383, 3, 29, NULL);
INSERT INTO `role_menu` VALUES (384, 3, 30, NULL);
INSERT INTO `role_menu` VALUES (385, 3, 2, NULL);
INSERT INTO `role_menu` VALUES (386, 3, 53, NULL);
INSERT INTO `role_menu` VALUES (387, 3, 8, NULL);
INSERT INTO `role_menu` VALUES (388, 3, 32, NULL);
INSERT INTO `role_menu` VALUES (389, 3, 33, NULL);
INSERT INTO `role_menu` VALUES (390, 3, 3, NULL);
INSERT INTO `role_menu` VALUES (391, 3, 10, NULL);
INSERT INTO `role_menu` VALUES (392, 3, 4, NULL);
INSERT INTO `role_menu` VALUES (393, 3, 14, NULL);
INSERT INTO `role_menu` VALUES (394, 3, 15, NULL);
INSERT INTO `role_menu` VALUES (395, 3, 5, NULL);
INSERT INTO `role_menu` VALUES (396, 3, 55, NULL);
INSERT INTO `role_menu` VALUES (397, 3, 56, NULL);
INSERT INTO `role_menu` VALUES (398, 3, 6, NULL);
INSERT INTO `role_menu` VALUES (399, 3, 23, NULL);
INSERT INTO `role_menu` VALUES (400, 3, 24, NULL);
INSERT INTO `role_menu` VALUES (401, 3, 25, NULL);
INSERT INTO `role_menu` VALUES (402, 3, 57, NULL);
INSERT INTO `role_menu` VALUES (403, 3, 58, NULL);
INSERT INTO `role_menu` VALUES (404, 3, 59, NULL);
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
INSERT INTO `role_menu` VALUES (419, 14, 7, NULL);
INSERT INTO `role_menu` VALUES (420, 14, 29, NULL);
INSERT INTO `role_menu` VALUES (421, 14, 30, NULL);
INSERT INTO `role_menu` VALUES (422, 14, 2, NULL);
INSERT INTO `role_menu` VALUES (423, 14, 33, NULL);
INSERT INTO `role_menu` VALUES (424, 14, 3, NULL);
INSERT INTO `role_menu` VALUES (425, 14, 10, NULL);
INSERT INTO `role_menu` VALUES (426, 14, 4, NULL);
INSERT INTO `role_menu` VALUES (427, 14, 14, NULL);
INSERT INTO `role_menu` VALUES (428, 14, 15, NULL);
INSERT INTO `role_menu` VALUES (429, 14, 5, NULL);
INSERT INTO `role_menu` VALUES (430, 14, 55, NULL);
INSERT INTO `role_menu` VALUES (431, 14, 56, NULL);
INSERT INTO `role_menu` VALUES (432, 14, 6, NULL);
INSERT INTO `role_menu` VALUES (433, 14, 23, NULL);
INSERT INTO `role_menu` VALUES (434, 14, 24, NULL);
INSERT INTO `role_menu` VALUES (435, 14, 25, NULL);
INSERT INTO `role_menu` VALUES (436, 14, 57, NULL);
INSERT INTO `role_menu` VALUES (437, 14, 58, NULL);
INSERT INTO `role_menu` VALUES (438, 14, 59, NULL);

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 324 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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

SET FOREIGN_KEY_CHECKS = 1;
