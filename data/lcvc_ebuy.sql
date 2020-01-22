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

 Date: 23/01/2020 00:46:26
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
INSERT INTO `admin` VALUES (-9, 'user', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '普通管理员', 1, b'1', '2013-08-23 15:33:01');
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
) ENGINE = InnoDB AUTO_INCREMENT = 230 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
) ENGINE = InnoDB AUTO_INCREMENT = 65 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, 'hqjmz', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '陈家龙', 1, '13124123132', '柳州市大傻子路逗比公寓1号', '134321', '1312313@qq.com', '1.jpg', '每天都很闲的,爱好是吃脚.', '2013-11-21 17:31:46');
INSERT INTO `customer` VALUES (9, 'wenye', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '白安善', 1, '13647789517', '柳州市抠脚村', '547000', '23123123@qq.com', '9.jpg', '和家龙是好♂兄弟', '2013-11-21 17:31:46');
INSERT INTO `customer` VALUES (12, 'huangsan', '666666', '至尊宝', 1, '13633083252', '桂林市大河小区', '151431', 'asdfa@163.com', '12.jpg', '你们懂的', '2013-11-21 17:39:38');
INSERT INTO `customer` VALUES (13, 'guangge', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '徐凤年', 1, '17703771999', '', '', '', '', '', '2019-08-06 15:03:13');
INSERT INTO `customer` VALUES (14, 'user2', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '王大发', 1, '15388889881', '北京市顺义区', '000000', '13233@qq.com', '', '非常友善', '2019-08-06 15:06:53');
INSERT INTO `customer` VALUES (15, 'user3', '3214234', '客户3', 1, '15388889881', '广东省广州市', '000000', '1352312@qq.com', '', '长隆', '2019-08-06 15:07:48');
INSERT INTO `customer` VALUES (16, 'user4', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '紫霞', 2, '18083815777', '柳州橙汁园', '568741', '', '', '', '2019-08-06 15:08:48');
INSERT INTO `customer` VALUES (17, 'abc1', 'fh58q2ea6thauof5ikg98fe2ciafh50r', 'ABC客户1', 1, '15377892222', '', '', '', '', '', '2019-08-06 15:09:12');
INSERT INTO `customer` VALUES (18, 'abc2', 'fh58q2ea6thauof5ikg98fe2ciafh50r', 'ABC客户2', 2, '18168526111', '', '', '', '', '', '2019-08-06 16:21:41');
INSERT INTO `customer` VALUES (19, 'abc3', '2341234123', 'ABC客户3', 1, '18100800709', '广西柳州', '', '123@qq.com', NULL, '', '2019-08-06 16:22:12');
INSERT INTO `customer` VALUES (20, 'abc4', 'fh58q2ea6thauof5ikg98fe2ciafh50r', 'ABC客户4', 1, '15377892222', '', '', '', '', '', '2019-08-06 15:09:12');
INSERT INTO `customer` VALUES (21, 'abc5', 'fh58q2ea6thauof5ikg98fe2ciafh50r', 'ABC客户5', 1, '15377892222', '', '', '', NULL, '', '2019-08-06 15:09:12');
INSERT INTO `customer` VALUES (22, 'abc6', 'fh58q2ea6thauof5ikg98fe2ciafh50r', 'ABC客户6', 1, '15377892222', '', '', '', '', '', '2019-08-06 15:09:12');
INSERT INTO `customer` VALUES (23, 'abc11', '123141421', 'abc客户11', 1, '13357024777', '', '', '', '', '', '2019-08-06 16:25:07');
INSERT INTO `customer` VALUES (25, 'user1', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '张三', 1, '17376108213', '', '', '', '', '', '2019-08-31 15:11:15');
INSERT INTO `customer` VALUES (26, 'sdf', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '123', 1, '', '', '', '', NULL, '', '2019-08-31 18:30:05');
INSERT INTO `customer` VALUES (27, '123a', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '12', 2, '', '', '', '', NULL, '', '2019-08-31 18:30:19');
INSERT INTO `customer` VALUES (28, 'zhangsan', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '张三丰', 1, '13633083200', '柳州城市职业学院', '000000', '89287689@qq.com', '', '张三丰简介', '2019-10-25 09:04:29');
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
INSERT INTO `customer` VALUES (41, 'ywc', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '嘟嘟', 1, '17377235562', '广西柳州', '545107', '', NULL, '.................', '2019-10-25 09:11:02');
INSERT INTO `customer` VALUES (42, 'LiXuan', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '林轩', 1, '15151788955', '新疆维吾尔自治区满斗村', '545597', '554466@qq.com', '42.jpg', '呜呜呜呜无无无无无无无', '2019-10-25 09:11:11');
INSERT INTO `customer` VALUES (43, 'wsy', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '王守义', 1, '13737664103', '石家庄', '000000', '13737664103@136.com', '43.jpg', '王守义说你13香', '2019-10-25 09:11:11');
INSERT INTO `customer` VALUES (44, '打打3', 'fh58q2ea6thauof5ikg98fe2ciafh50r', 'ad', 1, '13677533336', '', '', '', NULL, '', '2019-10-25 09:11:14');
INSERT INTO `customer` VALUES (45, 'lll', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '李丽莉', 2, '13877690264', '柳州城市职业学院', '000000', '13877690264@qq.com', '45.jpg', '李丽莉', '2019-10-25 09:11:17');
INSERT INTO `customer` VALUES (46, 'uiiu', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '邓一封', 2, '15648544696', '北京市朝阳区', '548766', '', NULL, '', '2019-10-25 09:11:35');
INSERT INTO `customer` VALUES (47, 'Sakura', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '憨憨', 1, '15578568273', '柳州城市职业学院', '000000', '754358745@qq.com', NULL, '不关粥粥的事喔', '2019-10-25 09:11:42');
INSERT INTO `customer` VALUES (48, 'amgg', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '啊毛', 1, '17677430458', '柳州城市职业学院', '124587', '1175345922@qq.com', '48.jpg', '叫我靓仔。', '2019-10-25 09:11:50');
INSERT INTO `customer` VALUES (49, 'xiaomi', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '白云', 1, '18277589582', '柳州城市职业学院', '537400', '2287088066@qq.com', '49.jpg', '这个人很懒,什么也没有说。', '2019-10-25 09:12:11');
INSERT INTO `customer` VALUES (50, 'zjl', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '周杰伦', 1, '13633088047', '柳州城市职业学院', '545005', '529550987@qq.com', '50.jpg', '歌手', '2019-10-25 09:12:33');
INSERT INTO `customer` VALUES (51, 'yyqx', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '易燃', 1, '18520001128', '北京市昌平区回龙观镇北清路', '', '', NULL, '', '2019-10-25 09:12:34');
INSERT INTO `customer` VALUES (52, 'asd', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '小二', 2, '17777777777', '外太空', '545000', '8888@qq.com', NULL, '简介', '2019-10-25 09:13:06');
INSERT INTO `customer` VALUES (53, 'xiaoma', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '马化腾', 1, '15678078888', '柳州市恒大小区', '545000', 'xiaoma@qq.com', '53.jpg', '鹅厂搬运工', '2019-10-25 09:14:03');
INSERT INTO `customer` VALUES (54, '不要脸的你', 'fh58q2ea6thauof5ikg98fe2ciafh50r', 'buyaolian', 1, '18645678564', '北极半球', '530401', '123456789@qq.com', NULL, '你给我....', '2019-11-05 08:52:43');
INSERT INTO `customer` VALUES (55, '3问问', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '位试试', 1, '18894622108', '123', '537519', '1608318868@qq.com', NULL, '', '2019-11-05 08:54:44');
INSERT INTO `customer` VALUES (56, 'stud', 'fh58q2ea6thauof5ikg98fe2ciafh50r', 'nini', 2, '18378556608', 'liuzhou', '537114', '13245@360.com', NULL, 'haohai', '2019-11-05 08:55:24');
INSERT INTO `customer` VALUES (57, '佩奇是只猪', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '小猪佩奇', 2, '18410358497', '柳州中山路8号', '', '', NULL, '', '2019-11-05 08:56:21');
INSERT INTO `customer` VALUES (58, 'nininini', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '妮妮', 2, '18775534562', '广西柳州市鱼峰区', '253343', '12324345@126.com', NULL, '', '2019-11-05 08:56:40');
INSERT INTO `customer` VALUES (59, 'king', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '嘻嘻', 2, '18216463254', '柳州市', '231433', '231433@126.com', NULL, '', '2019-11-05 08:56:41');
INSERT INTO `customer` VALUES (60, 'jdsahfj ', 'fh58q2ea6thauof5ikg98fe2ciafh50r', 'adsfdsf', 2, '18697845987', 'sdfasd', '689541', 'dfasdfdsaf@126.com', NULL, '', '2019-11-05 08:58:38');
INSERT INTO `customer` VALUES (61, 'avd', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '你好', 2, '18756987552', '柳州城市职业学院', '', '', NULL, '你好啊', '2019-11-05 08:58:54');
INSERT INTO `customer` VALUES (62, '是昭君哎', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '昭君', 2, '15253524689', '广西贵港市港南区', '537100', '2811389@qq.com', NULL, '', '2019-11-05 09:00:55');
INSERT INTO `customer` VALUES (63, 'Tany', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '谭谭谭', 2, '17677777771', '柳州城市职业学院', '515673', '', NULL, '', '2019-11-05 09:00:58');
INSERT INTO `customer` VALUES (64, 'wwww111111', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '小白', 1, '13878474643', '很多事卡拉', '748520', '1515@qq.com', NULL, '小小小iOS试试', '2019-11-05 11:50:59');

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
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (2, NULL, '管理员模块', 10, b'1', '/', 'Home', '/home', '', 'el-icon-user-solid', b'1', b'1');
INSERT INTO `menu` VALUES (3, NULL, '客户模块', 20, b'1', '/', 'Home', '/home', 'D', 'el-icon-s-custom', b'1', b'1');
INSERT INTO `menu` VALUES (4, NULL, '产品模块', 100, b'1', '/', 'Home', '/home', 'DD', 'el-icon-fork-spoon\r\nel-icon-fork-spoon\r\nel-icon-food', b'1', b'1');
INSERT INTO `menu` VALUES (5, NULL, '订单管理', 100, b'1', '/', 'Home', '/home', 'D', 'el-icon-s-goods', b'1', b'1');
INSERT INTO `menu` VALUES (6, NULL, '系统管理', 100, b'1', '/', 'Home', '/home', 'C', 'el-icon-s-tools', b'1', b'1');
INSERT INTO `menu` VALUES (7, NULL, '个人信息', 5, b'1', '/employee/basic/**', 'EmpBasic', '/emp/basic', '', 'el-icon-user', b'1', b'1');
INSERT INTO `menu` VALUES (8, 2, '权限管理', 100, b'1', '/employee/advanced/**', 'PurviewManage', '/emp/adv', '/admin/PurviewManage', NULL, b'1', b'1');
INSERT INTO `menu` VALUES (9, 10, '客户添加', 20, b'1', '/personnel/emp/**', 'PerEmp', '/per/emp', 'a\'aaa', NULL, b'1', b'1');
INSERT INTO `menu` VALUES (10, 3, '客户管理', 10, b'1', '/personnel/ec/**', 'CustomerManage', '/per/ec', 'A', NULL, b'1', b'1');
INSERT INTO `menu` VALUES (14, 4, '产品类别管理', 100, b'1', '/salary/sob/**', 'SalSob', '/sal/sob', 'AA', NULL, b'1', b'1');
INSERT INTO `menu` VALUES (15, 4, '产品管理', 100, b'1', '/salary/sobcfg/**', 'SalSobCfg', '/sal/sobcfg', 'BB', NULL, b'1', b'1');
INSERT INTO `menu` VALUES (23, 6, '基础信息设置', 100, b'1', '/system/basic/**', 'SysBasic', '/sys/basic', 'A', NULL, b'1', b'1');
INSERT INTO `menu` VALUES (24, 6, '系统管理', 100, b'1', '/system/cfg/**', 'SysCfg', '/sys/cfg', 'B', NULL, b'1', b'1');
INSERT INTO `menu` VALUES (25, 6, '操作日志管理', 100, b'1', '/system/log/**', 'SysLog', '/sys/log', 'C', NULL, b'1', b'1');
INSERT INTO `menu` VALUES (29, 7, '密码修改', 100, b'1', '12', NULL, '/emp/basic/passowrd', '/admin/PasswordEdit', NULL, b'1', b'1');
INSERT INTO `menu` VALUES (30, 7, '基本信息修改', 100, b'1', '1', NULL, '/emp/basic/information', '/admin/AdminEdit', NULL, b'1', b'1');
INSERT INTO `menu` VALUES (32, 2, '角色管理', 100, b'1', '/rolemanage', '', NULL, '/admin/RoleManage', NULL, b'1', b'1');
INSERT INTO `menu` VALUES (33, 2, '账户管理', 100, b'1', '/adminmanage', 'AdminManage', NULL, '/admin/AdminManage', NULL, b'1', b'1');
INSERT INTO `menu` VALUES (53, 2, '菜单管理', 20, b'1', '/menumanage', 'MenuManage', '', '/admin/MenuManage', NULL, b'1', b'1');

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
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`productTypeId`) REFERENCES `producttype` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`creatorId`) REFERENCES `admin` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `product_ibfk_3` FOREIGN KEY (`finalEditorId`) REFERENCES `admin` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE = InnoDB AUTO_INCREMENT = 161 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (71, 25, '芒果冰', 100, '芒果冰很好吃', '<p>芒果冰很好吃</p>', 15.00, 21.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675234544062648.jpg', 60, 3001, b'1', '2017-09-07 20:24:21', -99, NULL, '2019-12-26 08:31:50');
INSERT INTO `product` VALUES (72, 25, '8寸蛋糕', 100, '蛋糕很好吃', '<p>蛋糕很好吃蛋糕很好吃</p>', 66.50, 88.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675235027064694.jpg', 94, 123, b'1', '2017-09-07 20:28:07', -99, -99, '2019-09-05 17:29:19');
INSERT INTO `product` VALUES (73, 25, '奶油蛋糕', 100, '打发', '<p>阿萨德发的算法的</p>', 13.00, 28.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675235027064694.jpg', 510, 645, b'1', '2017-09-07 20:29:16', -99, NULL, '2019-12-26 08:32:08');
INSERT INTO `product` VALUES (74, 25, '南瓜甜点', 100, '打发的是发', '<p>阿萨德发的是法师打发的是发</p>', 12.00, 16.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675235811076829.jpg', 41, 545, b'1', '2017-09-07 20:30:33', -99, NULL, '2019-12-26 08:31:26');
INSERT INTO `product` VALUES (75, 6, '螺蛳粉', 100, '大法师的法师的法师的发大发', '<p>大法师的法师的法师的发大发大法师的法师的法师的发大发</p>', 12.00, 16.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675235357029569.jpg', 899, 45, b'1', '2017-09-07 20:31:47', -99, -99, '2019-09-05 17:34:05');
INSERT INTO `product` VALUES (76, 6, '桂林米粉', 100, '桂林米粉甲天下', '<p>桂林米粉甲天下桂林米粉甲天下桂林米粉甲天下桂林米粉甲天下</p>', 8.00, 12.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675235421061119.jpg', 779, 34, b'1', '2017-09-07 20:32:57', -99, NULL, '2019-12-26 08:32:22');
INSERT INTO `product` VALUES (77, 6, '老友粉', 100, '打发打发斯蒂芬', '<p>打发打发斯蒂芬打发打发斯蒂芬</p>', 6.00, 10.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675235275070878.jpg', 653, 45, b'1', '2017-09-07 20:34:15', -99, NULL, '2019-12-26 08:32:35');
INSERT INTO `product` VALUES (78, 6, '叉烧饭', 100, '真的很好吃', '<p>真的很好吃真的很好吃</p>', 12.00, 15.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675235429002841.jpg', 348, 234, b'1', '2017-09-07 20:35:24', -99, -99, '2019-09-05 21:10:36');
INSERT INTO `product` VALUES (79, 6, '烧鸭饭', 100, '真的很好吃', '<p>真的很好吃真的很好吃</p>', 8.00, 12.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675235528055206.jpg', 650, 5645, b'1', '2017-09-07 20:35:50', -99, -99, '2019-09-05 17:28:39');
INSERT INTO `product` VALUES (80, 6, '白切鸡饭', 100, '真的很好吃', '<p>真的很好吃真的很好吃</p>', 12.00, 18.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675235515011160.jpg', 532, 324, b'1', '2017-09-07 20:37:02', -99, NULL, '2019-12-26 08:32:54');
INSERT INTO `product` VALUES (81, 6, '鸡腿饭', 100, '真的很好吃', '<p>真的很好吃真的很好吃</p>', 12.00, 15.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675235515011160.jpg', 12339, 22, b'1', '2017-09-07 20:37:30', -99, -99, '2019-09-05 17:27:51');
INSERT INTO `product` VALUES (83, 25, '泰芒了', 100, '真的很好吃', '<p>真的很好吃真的很好吃</p>', 16.00, 28.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675235635066818.jpg', 499, 0, b'1', '2017-09-07 20:40:30', -99, -99, '2019-09-05 17:27:26');
INSERT INTO `product` VALUES (84, 25, '南瓜饼', 100, '真的很好吃', '<p>真的很好吃真的很好吃</p>', 21.00, 25.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675235811076829.jpg', 689, 234, b'1', '2017-09-07 20:41:39', -99, -99, '2019-09-05 17:26:36');
INSERT INTO `product` VALUES (85, 25, '特色猪肉肠粉', 100, '真的很好吃', '<p>真的很好吃真的很好吃</p>', 12.00, 16.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675235759036894.jpg', 300, 0, b'1', '2017-09-07 20:42:25', -99, -99, '2019-09-05 17:26:17');
INSERT INTO `product` VALUES (86, 25, '巧克力冰淇淋', 100, '打发撒旦法第三方', '<p>啊是打发是打发第三方额</p>', 3.00, 6.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675235803060534.jpg', 124, 32, b'1', '2017-09-07 23:22:49', -99, NULL, '2019-12-26 08:33:37');
INSERT INTO `product` VALUES (95, 6, 'sdfgsd', 100, '', '<p><img src=\"http://120.76.118.101:8081/upload/website/image/20190905/1567674760811077127.png\" alt=\"1567674760811077127.png\"/></p>', 0.00, 0.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567674760811077127.png', 10, 0, b'1', '2019-09-05 17:13:22', -99, NULL, NULL);
INSERT INTO `product` VALUES (96, 46, '金枪鱼黄瓜寿司', 100, '金枪鱼黄瓜寿司，美味好吃，低脂低盐，健康的不二选择！', '<p>金枪鱼黄瓜寿司，美味好吃，低脂低盐，健康的不二选择！</p>', 19.90, 29.90, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675520105092012.jpg', 1000, 1111, b'1', '2019-09-05 17:27:04', -99, NULL, NULL);
INSERT INTO `product` VALUES (97, 46, '意大利肉酱面', 50, '好吃不黏牙，香喷喷的意大利肉酱面', '<p>好吃不黏牙，香喷喷的意大利肉酱面</p>', 80.00, 5.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675554758069586.jpg', 300, 0, b'1', '2019-09-05 17:27:35', -99, NULL, NULL);
INSERT INTO `product` VALUES (98, 46, '可丽饼', 20, '跟其它种类的面糊饼（Pancake，班戢饼）相比，可丽饼的最大特点就是比较薄，厚度一般小于1/16英寸，也就是1.6毫米左右。', '<p>跟其它种类的面糊饼（Pancake，班戢饼）相比，可丽饼的最大特点就是比较薄，厚度一般小于1/16英寸，也就是1.6毫米左右。</p>', 25.50, 50.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675679423024115.jpg', 100, 0, b'1', '2019-09-05 17:28:45', -99, NULL, NULL);
INSERT INTO `product` VALUES (99, 47, '烤鱿鱼', 50, '新鲜烤鱿鱼美味多汁。', '<p>新鲜烤鱿鱼美味多汁。<br/></p>', 15.00, 30.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675639143095354.jpeg', 250, 9999, b'1', '2019-09-05 17:29:25', -99, NULL, NULL);
INSERT INTO `product` VALUES (100, 47, '烤羊肉串', 100, '好吃好吃，非常好吃', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">烤肉过程中要抹一些油在肉块的表面，防止肉块烤干。</span></p>', 4.00, 5.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675664211048580.jpg', 100, 200, b'1', '2019-09-05 17:29:25', -99, -99, '2019-09-05 17:30:18');
INSERT INTO `product` VALUES (101, 46, '芝士焗土豆泥', 20, '健康功效土豆:活血化瘀培根:保护神经系统、促进肠胃蠕动、抗脚气黄油:活血化瘀', '<h3 style=\"margin: 0px 0px 8px; padding: 0px; font-stretch: normal; font-size: 14px; line-height: normal; font-family: 宋体, Arial, Helvetica, sans-serif; color: rgb(102, 102, 102); white-space: normal; background-color: rgb(255, 255, 255);\">健康功效</h3><p style=\"margin-top: 0px; margin-bottom: 35px; padding: 0px; font-stretch: normal; font-size: 14px; line-height: 22px; font-family: 宋体, Arial, Helvetica, sans-serif; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);\">土豆:活血化瘀<br/>培根:保护神经系统、促进肠胃蠕动、抗脚气<br/>黄油:活血化瘀</p><p><br/></p>', 500.00, 8.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675698486033182.jpg', 1000, 0, b'1', '2019-09-05 17:29:29', -99, NULL, NULL);
INSERT INTO `product` VALUES (102, 46, '北极虾烟熏三文鱼卷', 0, '富含蛋白质、碳水化合物、维生素和钙、铁、磷、钾、镁等矿物质，有养心益肾、健脾厚肠、除热止渴的功效。 ...', '<p><span style=\"color: rgb(52, 52, 52); font-family: Arial, Helvetica, Tahoma, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">富含蛋白质、碳水化合物、维生素和钙、铁、磷、钾、镁等矿物质，有养心益肾、健脾厚肠、除热止渴的功效。</span></p>', 59.00, 89.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675711265057455.jpg', 1000, 999999, b'1', '2019-09-05 17:29:41', -99, NULL, NULL);
INSERT INTO `product` VALUES (103, 46, '巴黎龙虾', 100, '​龙虾在法餐中扮演的角色比较特殊，它是吉祥喜庆的象征，因此，只有在特别隆重的庆祝场合，法国人才会大啖龙虾。这个习惯一直延续到了今天。', '<p><em style=\"white-space: normal;\">龙虾</em>在法餐中扮演的角色比较特殊，它是吉祥喜庆的象征，因此，只有在特别隆重的庆祝场合，法国人才会大啖<em style=\"white-space: normal;\">龙虾</em>。这个习惯一直延续到了今天。</p>', 100.00, 399.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675741111033681.jpg', 100, 50, b'1', '2019-09-05 17:30:25', -99, NULL, NULL);
INSERT INTO `product` VALUES (104, 47, '烤鸡脚', 100, '又辣又好吃', '<p>又辣又好吃</p>', 9.90, 10.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675693984003121.jpg', 100, 99999, b'1', '2019-09-05 17:30:52', -99, NULL, NULL);
INSERT INTO `product` VALUES (105, 25, '香芒小丸子', 50, '超级Q好吃[害羞][害羞]香芒小丸子也，芋头很粉好吃。 而且在市中心。可以吃多的零食，累了可以过来吃个甜品是个不错的选择 重点价钱不贵，像隔壁网红茶不好喝又贵[流泪][流泪][流泪]还不如这里[鼓掌]', '<p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(17, 17, 17); font-family: PingFangSC-Regular,Microsoft YaHei,Hiragino Sans GB,Helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 20px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">超级Q好</span>吃<span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(17, 17, 17); font-family: PingFangSC-Regular,Microsoft YaHei,Hiragino Sans GB,Helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 20px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">[害羞][害羞]</span><span style=\"background-color: transparent; color: rgb(204, 0, 0); font-family: PingFangSC-Regular,Microsoft YaHei,Hiragino Sans GB,Helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; outline-color: invert; outline-style: none; outline-width: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-tap-highlight-color: transparent; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">香芒小丸子</span><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(17, 17, 17); font-family: PingFangSC-Regular,Microsoft YaHei,Hiragino Sans GB,Helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 20px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">也</span><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(17, 17, 17); font-family: PingFangSC-Regular,Microsoft YaHei,Hiragino Sans GB,Helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 20px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">，芋头很</span><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(17, 17, 17); font-family: PingFangSC-Regular,Microsoft YaHei,Hiragino Sans GB,Helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 20px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">粉好</span>吃<span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(17, 17, 17); font-family: PingFangSC-Regular,Microsoft YaHei,Hiragino Sans GB,Helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 20px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">。</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(17, 17, 17); font-family: PingFangSC-Regular,Microsoft YaHei,Hiragino Sans GB,Helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 20px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">&nbsp;而且</span><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(17, 17, 17); font-family: PingFangSC-Regular,Microsoft YaHei,Hiragino Sans GB,Helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 20px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">在市中心。可以</span>吃<span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(17, 17, 17); font-family: PingFangSC-Regular,Microsoft YaHei,Hiragino Sans GB,Helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 20px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">多的零食，累了可以过</span>来吃<span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(17, 17, 17); font-family: PingFangSC-Regular,Microsoft YaHei,Hiragino Sans GB,Helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 20px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">个甜品是</span><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(17, 17, 17); font-family: PingFangSC-Regular,Microsoft YaHei,Hiragino Sans GB,Helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 20px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">个不错的选择</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(17, 17, 17); font-family: PingFangSC-Regular,Microsoft YaHei,Hiragino Sans GB,Helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 20px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">&nbsp;重点</span><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(17, 17, 17); font-family: PingFangSC-Regular,Microsoft YaHei,Hiragino Sans GB,Helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 20px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">价钱不贵，像隔壁</span>网红<span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(17, 17, 17); font-family: PingFangSC-Regular,Microsoft YaHei,Hiragino Sans GB,Helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 20px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">茶</span><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(17, 17, 17); font-family: PingFangSC-Regular,Microsoft YaHei,Hiragino Sans GB,Helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 20px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">不好喝又贵[流泪][流泪][流泪]还不如</span><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(17, 17, 17); font-family: PingFangSC-Regular,Microsoft YaHei,Hiragino Sans GB,Helvetica; font-size: 12px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 20px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">这里[鼓掌]</span></p>', 9.00, 11.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675670285048811.jpg', 999, 999, b'1', '2019-09-05 17:31:10', -99, NULL, NULL);
INSERT INTO `product` VALUES (106, 46, '黑椒牛排', 50, '黑椒牛排是一道西餐,主要食材是牛排和黑胡椒,主要烹饪工艺是煎。', '<p>黑椒牛排是一道西餐,主要食材是牛排和黑胡椒,主要烹饪工艺是煎。<img src=\"http://120.76.118.101:8081/upload/website/image/20190905/1567675864689052378.jpg\" title=\"1567675864689052378.jpg\" alt=\"3.jpg\"/></p>', 120.00, 99.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675888211004779.jpeg', 10, 111, b'1', '2019-09-05 17:31:40', -99, NULL, NULL);
INSERT INTO `product` VALUES (107, 49, '清淡去火汤', 50, '黄花菜豆皮汤-清淡有营养 清淡剥皮鱼面线汤 清淡爽口白萝卜蔬菜汤 清淡三文鱼 清淡炒饭 清淡爽口调芹菜 清淡的牛肉面 清清淡淡小炒杂烩 清淡爽口', '<p>黄花菜豆皮汤-清淡有营养 清淡剥皮鱼面线汤 清淡爽口白萝卜蔬菜汤 清淡三文鱼 清淡炒饭 清淡爽口调芹菜 清淡的牛肉面 清清淡淡小炒杂烩 清淡爽口</p>', 15.00, 25.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675862732016397.jpeg', 100, 101, b'1', '2019-09-05 17:32:06', -99, NULL, NULL);
INSERT INTO `product` VALUES (108, 25, '榴莲千层', 100, '一种十分美味的糕点！', '<p>选自泰国金枕榴莲制作，先将榴莲烘烤完成后进行不断铺饼，看似薄薄的饼其实有30，40层！</p>', 10.00, 15.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675719297097721.jpg', 20, 20, b'1', '2019-09-05 17:32:29', -99, NULL, NULL);
INSERT INTO `product` VALUES (109, 47, '烧烤茄子', 0, '多汁嫩的茄子美味无比。', '<p>多汁嫩的茄子美味无比。</p>', 10.00, 20.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675795718003810.jpg', 20, 100, b'1', '2019-09-05 17:32:41', -99, NULL, NULL);
INSERT INTO `product` VALUES (110, 46, '法式鹅肝', 100, '鹅肝为鸭科动物鹅的肝脏。因其十分丰富的营养和特殊功效，使得鹅肝成为补血养生的最佳食物。法国著名的料理鹅肝（法文：Foie gras）是一种从被过份喂饲的鹅取出来的肝。欧洲人将鹅肝与鱼子酱、松露并列为“世界三大珍馐”。', '<p><span style=\"color: rgb(51, 51, 51); font-family: Verdana; font-size: 14px; background-color: rgb(255, 255, 255);\">鹅肝为</span><a class=\"xp\" href=\"http://www.zwbk.org/MyLemmaInter.aspx?title=%e9%b8%ad%e7%a7%91\" target=\"_blank\" style=\"color: rgb(219, 0, 16); text-decoration: none; padding-right: 1px; padding-left: 1px; font-family: Verdana; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">鸭科</a><span style=\"color: rgb(51, 51, 51); font-family: Verdana; font-size: 14px; background-color: rgb(255, 255, 255);\">动物</span><a class=\"classic\" href=\"http://www.zwbk.org/MyLemmaShow.aspx?lid=95658\" target=\"_blank\" style=\"color: rgb(102, 153, 255); text-decoration: none; padding-right: 1px; padding-left: 1px; font-family: Verdana; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">鹅</a><span style=\"color: rgb(51, 51, 51); font-family: Verdana; font-size: 14px; background-color: rgb(255, 255, 255);\">的肝脏。因其十分丰富的营养和特殊功效，使得鹅肝成为补血养生的最佳食物。</span><a class=\"classic\" href=\"http://www.zwbk.org/MyLemmaShow.aspx?lid=2527\" target=\"_blank\" style=\"color: rgb(102, 153, 255); text-decoration: none; padding-right: 1px; padding-left: 1px; font-family: Verdana; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">法国</a><span style=\"color: rgb(51, 51, 51); font-family: Verdana; font-size: 14px; background-color: rgb(255, 255, 255);\">著名的料理鹅肝（法文：Foie gras）是一种从被过份喂饲的鹅取出来的肝。欧洲人将鹅肝与</span><a class=\"classic\" href=\"http://www.zwbk.org/MyLemmaShow.aspx?lid=188851\" target=\"_blank\" style=\"color: rgb(102, 153, 255); text-decoration: none; padding-right: 1px; padding-left: 1px; font-family: Verdana; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">鱼子酱</a><span style=\"color: rgb(51, 51, 51); font-family: Verdana; font-size: 14px; background-color: rgb(255, 255, 255);\">、</span><a class=\"classic\" href=\"http://www.zwbk.org/MyLemmaShow.aspx?lid=194293\" target=\"_blank\" style=\"color: rgb(102, 153, 255); text-decoration: none; padding-right: 1px; padding-left: 1px; font-family: Verdana; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\">松露</a><span style=\"color: rgb(51, 51, 51); font-family: Verdana; font-size: 14px; background-color: rgb(255, 255, 255);\">并列为“世界三大珍馐”。</span></p>', 199.00, 299.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675943888014082.jpg', 100, 100, b'1', '2019-09-05 17:32:51', -99, NULL, NULL);
INSERT INTO `product` VALUES (111, 47, '烤腰子', 20, '烤腰子烤腰子', '<p>烤腰子 美味酥脆下酒好菜<br/></p>', 28.00, 35.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675898073078062.jpg', 456, 264, b'1', '2019-09-05 17:33:08', -99, NULL, NULL);
INSERT INTO `product` VALUES (112, 46, '法式蒜蓉虾', 0, '不饱和脂肪酸，所含氨基酸齐全，人体所需8种氨基酸均有，还含有维生素、丰富的铁、钾、钙、碘等多种矿物质和微量元素', '<p><span style=\"color: rgb(52, 52, 52); font-family: Arial, Helvetica, Tahoma, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);\">不饱和脂肪酸，所含氨基酸齐全，人体所需8种氨基酸均有，还含有维生素、丰富的铁、钾、钙、碘等多种矿物质和微量元素</span></p>', 199.00, 299.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675834958006717.jpg', 1000, 99999, b'1', '2019-09-05 17:33:18', -99, NULL, NULL);
INSERT INTO `product` VALUES (113, 25, '瓜皮糕', 100, '婚前茶歇蛋糕点心复古炫彩系列无与伦比的甜品', '<p>婚前茶歇蛋糕点心复古炫彩系列无与伦比的甜品</p>', 9.90, 10.90, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675928035095211.jpg', 99, 66, b'1', '2019-09-05 17:33:20', -99, NULL, NULL);
INSERT INTO `product` VALUES (114, 46, '法式注心月饼', 20, '来点小清新的,这叫杏鲍菇变身高级法国料理.', '<p><span style=\"font-family: 宋体, Arial, Helvetica, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">来点小清新的,这叫杏鲍菇变身高级法国料理.</span></p>', 33.30, 99.90, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675878244055718.jpg', 100, 110, b'1', '2019-09-05 17:33:24', -99, NULL, NULL);
INSERT INTO `product` VALUES (115, 47, '烤鸡翅', 100, '又香又辣超级超级好吃，', '<p>又香又辣超级超级好吃，</p>', 9.90, 10.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675929855018703.jpg', 999, 9999, b'1', '2019-09-05 17:33:41', -99, NULL, NULL);
INSERT INTO `product` VALUES (116, 47, '烧烤韭菜', 0, '有嚼劲又不硬。美味营养', '<p>有嚼劲又不硬。美味营养</p>', 5.00, 20.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675978887015956.jpg', 100, 200, b'1', '2019-09-05 17:33:45', -99, NULL, NULL);
INSERT INTO `product` VALUES (117, 25, '芋圆一号', 50, '到店点了芋圆一号，非常好吃，有团购很优惠!份星很足!芋圆软Q糯，其它配料给的真的很多!多种口味的，不会太甜，冰镇的非常好吃!环境很大，装修很休闲舒适，午好非常好的去处!空调也够足!下次还是在店试试别的品种!', '<p>到店点了芋圆一号，非常好吃，有团购很优惠!份星很足!芋圆软Q糯，其它配料给的真的很多!多种口味的，不会太甜，冰镇的非常好吃!环境很大，装修很休闲舒适，午好非常好的去处!空调也够足!下次还是在店试试别的品种!</p>', 12.00, 12.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675922527073932.jpg', 999, 999, b'1', '2019-09-05 17:33:53', -99, NULL, NULL);
INSERT INTO `product` VALUES (118, 6, '老北京炒鸡饭', 100, '精品新鲜鸡肉，口感舒适！', '<p>王企鹅的热情<span style=\"border: 1px solid rgb(0, 0, 0);\"></span></p>', 25.00, 30.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675945167055338.jpg', 100, 0, b'1', '2019-09-05 17:34:23', -99, NULL, NULL);
INSERT INTO `product` VALUES (119, 47, '烤鱼腩', 100, '新鲜美味的鱼腩，好吃又不腻', '<p>666666好吃没毛病，下单就完了！！！！<br/></p>', 3.00, 5.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567675945588053003.jpg', 234, 432, b'1', '2019-09-05 17:34:49', -99, NULL, NULL);
INSERT INTO `product` VALUES (120, 46, '香煎三文鱼', 50, '三文鱼既有营养 热量又低 对于减肥的广大女性筒子们可谓是福音啊！', '<p>三文鱼既有营养 热量又低 对于减肥的广大女性筒子们可谓是福音啊！</p>', 99.00, 76.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676063823015062.jpg', 12, 112, b'1', '2019-09-05 17:35:12', -99, NULL, NULL);
INSERT INTO `product` VALUES (121, 6, '菠萝糕', 100, '满满的少女心甜品', '<p><a target=\"_blank\" href=\"https://image.baidu.com/search/redirect?tn=redirect&word=j&juid=801032&sign=caaowekkbi&url=http%3A%2F%2Fhuaban.com%2Fboards%2F37901530&objurl=https%3A%2F%2Ftimgsa.baidu.com%2Ftimg%3Fimage%26quality%3D80%26size%3Db9999_10000%26sec%3D1009835585610%26di%3D0a07798937e12a6d5907337011ebb922%26imgtype%3D0%26src%3Dhttp%253A%252F%252Fhbimg.b0.upaiyun.com%252F7aba477ac549b0e9e10dd9eec8b0921468da857d548be-JMoES0_fw658\" title=\"满满的少女心甜品\" style=\"font-family: 微软雅黑, 宋体, Arial; margin: 0px; padding: 0px; border: 0px; font-stretch: inherit; font-size: 14px; vertical-align: baseline; outline: 0px; cursor: pointer; text-decoration: none; color: rgb(0, 0, 0); word-break: break-all; white-space: normal; background-color: rgb(255, 255, 255);\">满满的少女心甜品</a></p>', 6.60, 9.90, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676071037050191.jpg', 96, 66, b'1', '2019-09-05 17:35:12', -99, NULL, NULL);
INSERT INTO `product` VALUES (122, 49, '咖喱牛肉汤', 100, '【原料】牛腩，牛桶骨，姜片\n\n【配料】咖喱粉，盐，香菜', '<p>美味、可口</p>', 12.00, 18.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676170807061389.jpg', 100, 50, b'1', '2019-09-05 17:36:18', -99, NULL, NULL);
INSERT INTO `product` VALUES (123, 49, '骨头汤', 50, '骨头汤中含有的胶原蛋白正好能增强人体制造血细胞的能力。对于中老年人来说,喝些骨头汤加以调理,可以减缓骨骼老化。', '<p><em>骨头汤</em>中含有的胶原蛋白正好能增强人体制造血细胞的能力。对于中老年人来说,喝些<em>骨头汤</em>加以调理,可以减缓骨骼老化。</p>', 56.00, 67.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676078903050088.jpeg', 199, 356, b'1', '2019-09-05 17:36:38', -99, NULL, NULL);
INSERT INTO `product` VALUES (124, 47, '黄金烤鼠', 10, '精品', '<p>精品美食<br/></p>', 34.00, 45.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676323302041190.jpg', 99, 264, b'1', '2019-09-05 17:37:00', -99, -99, '2019-09-05 17:38:51');
INSERT INTO `product` VALUES (125, 6, '黄焖鸡米饭', 100, '黄焖鸡米饭采用秘制酱料工艺技术，所需十余种香料必须选用优质药材。黄焖鸡配料讲究君臣佐史配伍相益，调和得当。鸡肉含有对人体生长发育有重要作用的磷脂类，是中国人膳食结构中脂肪和磷脂的重要来源之一。', '<p>黄焖鸡米饭采用秘制酱料工艺技术，所需十余种香料必须选用优质药材。</p><p><img src=\"http://120.76.118.101:8081/upload/website/image/20190905/1567676155812024768.jpg\" title=\"1567676155812024768.jpg\" alt=\"5adac1edce93a.jpg\"/></p><p></p><p>黄焖鸡配料讲究君臣佐史配伍相益，调和得当。</p><p>鸡肉含有对人体生长发育有重要作用的磷脂类，是中国人膳食结构中脂肪和磷脂的重要来源之一。</p>', 18.00, 20.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676240806070203.jpg', 34, 666, b'1', '2019-09-05 17:37:25', -99, NULL, NULL);
INSERT INTO `product` VALUES (126, 47, '烤龙虾', 0, '虾的鲜嫩，加上火炉的烘烤，肉质Q弹爽口，简直是不可多的的人间美味！', '<p>虾的鲜嫩，加上火炉的烘烤，肉质Q弹爽口，简直是不可多的的人间美味！</p>', 20.00, 50.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676181037041027.jpg', 89, 50, b'1', '2019-09-05 17:37:45', -99, NULL, NULL);
INSERT INTO `product` VALUES (127, 25, '雪媚娘', 50, '雪媚娘是日本一种有名的甜品，传入中国后大火。', '<p>雪媚娘源自<font color=\"#0b0119\">日本</font>，原名为“大福”，是<font color=\"#0b0119\">日本</font>的地道点心之一，外皮是QQ的雪媚娘冰皮，在日本它的馅料都是当季的真材实料的水果为主。 “雪媚娘”这个名字源于日本当地发明各种<b><font color=\"#0b0119\">草莓大福</font></b>的一位夫人，而我们制作的雪媚娘也是她的代表作之一。</p><p>雪媚娘细白软糯，第一口咬到的是特别Q滑的冰皮，里面是奶香怡人的淡奶油，裹着好吃的水果粒， 酸酸甜甜、口感丰富。<sup class=\"sup--normal\" style=\"color: rgb(51, 102, 204); cursor: pointer; font-size: 8.8px; line-height: 0px; margin-left: 2px; padding-bottom: 0px; padding-left: 2px; padding-right: 2px; padding-top: 0px; position: relative; top: -4.4px; vertical-align: baseline; white-space: normal;\">[1]</sup><a class=\"sup-anchor\" style=\"color: rgb(19, 110, 194); font-size: 0px; line-height: 0px; position: relative; text-decoration: none; top: -50px;\">&nbsp;</a>\n “雪媚娘”冷藏后的口感更佳，轻轻一口下去，细软中还带着隐隐的甜意和凉意。西茄雪媚娘，沿用轻施手粉风格，内馅采用鲜果，是传统雪媚娘的最重要流派。</p><p>又名升级版驴打滚。<sup class=\"sup--normal\" style=\"color: rgb(51, 102, 204); cursor: pointer; font-size: 8.8px; line-height: 0px; margin-left: 2px; padding-bottom: 0px; padding-left: 2px; padding-right: 2px; padding-top: 0px; position: relative; top: -4.4px; vertical-align: baseline; white-space: normal;\"></sup></p><p><br/></p>', 9.00, 12.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676112546083993.jpg', 24, 56, b'1', '2019-09-05 17:37:56', -99, NULL, NULL);
INSERT INTO `product` VALUES (128, 49, '香菇炖甲鱼汤', 100, ' 主料：甲鱼500克\n辅料：香菇（鲜）50克,鸡胸脯肉50克,冬笋25克,火腿50克\n调料：料酒10克,盐4克,味精2克,大葱15克,姜5克,胡椒粉2克', '<p>有益智健脑的作用，适用于气血亏损、精血不足、肝肾阴虚等症的治疗。</p>', 16.00, 14.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676226346041190.jpg', 100, 99, b'1', '2019-09-05 17:38:02', -99, NULL, NULL);
INSERT INTO `product` VALUES (129, 49, '西红柿芹菜减肥汤', 50, '常食用可达到有效的减肥效果，健康有营养。', '<p>精品靓汤，值得拥有！！适合饭前食用。<img src=\"http://120.76.118.101:8081/upload/website/image/20190905/1567676240243092905.jpg\" title=\"1567676240243092905.jpg\" alt=\"150901757_2_20181231060429278.jpg\"/></p>', 25.00, 19.90, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676216723035867.jpg', 33, 5, b'1', '2019-09-05 17:38:08', -99, NULL, NULL);
INSERT INTO `product` VALUES (130, 47, '热狗', 0, '好吃不贵，价格实惠。', '<p>好吃不贵，价格实惠。</p>', 2.00, 5.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676282937082673.jpg', 89, 50, b'1', '2019-09-05 17:38:37', -99, NULL, NULL);
INSERT INTO `product` VALUES (131, 49, '排骨汤', 50, '排骨汤是以排骨为主要食材的家常菜,口味咸鲜,补肾养血,滋阴润燥,营养价值丰富， 排骨汤是以排骨为主要食材的家常菜,口味咸鲜,补肾养血,滋阴润燥,营养价值丰富。', '<p><em>排骨汤</em>是以排骨为主要食材的家常菜,口味咸鲜,补肾养血,滋阴润燥,营养价值丰富， <em>排骨汤</em>是以排骨为主要食材的家常菜,口味咸鲜,补肾养血,滋阴润燥,营养价值丰富。<br/></p>', 20.00, 10.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676306003069319.jpeg', 109, 299, b'1', '2019-09-05 17:38:57', -99, NULL, NULL);
INSERT INTO `product` VALUES (132, 25, '榴莲蛋糕', 100, '秘制烤蛋糕', '<p>秘制榴莲烤蛋糕</p>', 10.00, 15.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676323372008434.jpg', 99, 100, b'1', '2019-09-05 17:39:45', -99, NULL, NULL);
INSERT INTO `product` VALUES (133, 49, '鲫鱼头豆腐汤', 100, '食材：鲫鱼头1个，豆腐200克葱，姜，蒜，小葱，油，料酒，盐，鸡精', '<p>美味、可口。有营养</p>', 20.00, 15.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676339135066256.jpg', 100, 99, b'1', '2019-09-05 17:40:07', -99, NULL, NULL);
INSERT INTO `product` VALUES (134, 6, '蜜汁鸡腿', 50, '想喷可口，回味无穷', '<p>好吃，汁料美味，鸡腿够大</p>', 8.00, 12.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676308899047615.jpg', 25, 1123, b'1', '2019-09-05 17:42:52', -99, NULL, NULL);
INSERT INTO `product` VALUES (135, 25, '草莓蛋糕', 100, '是是是', '<p>好好吃</p>', 5.00, 10.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676412666077876.jpg', 99, 0, b'1', '2019-09-05 17:43:37', -99, NULL, NULL);
INSERT INTO `product` VALUES (136, 49, '龙凤汤', 0, '顶级食材', '<p>龙凤和鸣</p>', 0.01, 99999.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676355681005277.jpg', 1, 8888888, b'1', '2019-09-05 17:44:03', -99, NULL, NULL);
INSERT INTO `product` VALUES (137, 6, '酱香鸭脖', 100, '卤中仙酱香鸭脖秘制配方，采用二十二味中药秘制程序，让鸭脖更入味，同时不丢失鸭脖原本的鲜嫩和营养，成品麻辣、咸甜适中、肉质细嫩，回味持久，为居家、旅游、休闲之佳品。', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">卤中仙酱香鸭脖秘制配方，采用二十二味中药秘制程序，让鸭脖更入味，同时不丢失鸭脖原本的鲜嫩和营养，成品麻辣、咸甜适中、肉质细嫩，回味持久，为居家、旅游、休闲之佳品。</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\"><img src=\"http://120.76.118.101:8081/upload/website/image/20190905/1567676679386067227.jpg\" title=\"1567676679386067227.jpg\" alt=\"t0114237702343738ab.jpg\"/></span></p>', 28.00, 30.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676417046088731.jpg', 21, 21, b'1', '2019-09-05 17:44:55', -99, NULL, NULL);
INSERT INTO `product` VALUES (138, 6, '姐姐炸排骨', 100, '炸排骨是一道四川省的地方名菜，属于川菜系。外酥里嫩，不硬不软，块块不连，香甜咸淡适口。', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; text-indent: 28px; background-color: rgb(255, 255, 255);\">选新鲜的猪肋条排骨和软骨(每千克骨上带2千克肉)。.剁块及腌制:将排骨剁成3厘米见方的小块，用清水洗净，捞出沥尽水。将葱、姜切成碎末，连同其他佐料倒入容器内混合均匀，再将排骨倒入搅拌均匀，腌制30分钟。上糊、油炸:用清水500克，把淀粉、面粉、鸡蛋搅成干糊状。将腌制过的排骨连同佐料一起倒入糊内，用木棒搅匀。把油加热到180℃，倒入排骨，注意炸匀，约10分钟后，排骨表面呈深黄色捞出，即为成品。</span></p>', 28.00, 31.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676418596060009.jpg', 1000, 99, b'1', '2019-09-05 17:45:14', -99, NULL, NULL);
INSERT INTO `product` VALUES (139, 25, '招牌丝袜奶茶', 100, '有红豆，珍珠，椰果', '<p>茶香奶香萦绕鼻尖</p>', 12.00, 14.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676646012045863.jpg', 10, 222, b'1', '2019-09-05 17:45:23', -99, NULL, NULL);
INSERT INTO `product` VALUES (140, 49, '清炖鸽子汤', 100, ' 主料： 鸽子一只  \n配料： 姜片适量   枸杞适量   葱适量  \n辅料： 盐适量   鸡精适量 ', '<p>大补</p>', 25.00, 18.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676681970094970.jpg', 100, 99, b'1', '2019-09-05 17:45:37', -99, NULL, NULL);
INSERT INTO `product` VALUES (141, 49, '菌王汤', 0, '美食顶级', '<p>订单加八福</p>', 0.10, 88888.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676733863075744.jpg', 1, 6666, b'1', '2019-09-05 17:46:16', -99, NULL, NULL);
INSERT INTO `product` VALUES (142, 6, '味千拉面', 100, '好好好', '<p>美味</p>', 23.00, 25.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676762205031022.jpg', 33, 333, b'1', '2019-09-05 17:46:33', -99, NULL, NULL);
INSERT INTO `product` VALUES (143, 25, '芋圆奶茶', 50, '有芋圆', '<p>芋圆软糯香甜</p>', 10.00, 12.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676746044047550.jpg', 32, 20, b'1', '2019-09-05 17:46:36', -99, NULL, NULL);
INSERT INTO `product` VALUES (144, 49, '山药香菇枸杞排骨汤', 50, '山药香菇枸杞排骨汤是一道以排骨等为原料的美食。 ', '<p><em>山药香菇枸杞排骨汤</em>是一道以<em>排骨</em>等为原料的美食。 &nbsp; \n &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 43.00, 11.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676763633054028.jpeg', 326, 435, b'1', '2019-09-05 17:46:36', -99, NULL, NULL);
INSERT INTO `product` VALUES (146, 6, '窝窝头', 100, '', '<p><img src=\"http://120.76.118.101:8081/upload/website/image/20190905/1567676806208091862.jpg\" title=\"1567676806208091862.jpg\" alt=\"d0515a525e47355ed8a9a48e0c391922.jpg\"/></p>', 1.00, 4.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567676777256094543.jpg', 1000, 50000, b'1', '2019-09-05 17:46:49', -99, NULL, NULL);
INSERT INTO `product` VALUES (147, 48, '葱油鲍鱼', 100, '鲍鱼是海产贝类，同鱼毫无关系，倒跟田螺之类沾亲带故。它是海洋中的单壳软体动物，只有半面外壳，壳坚厚，扁而宽，形状有些像人的耳朵，所以也叫它\"海耳\"。自古被人们视为“海味珍品之冠”，其肉质柔嫩细滑，滋味极其鲜美，非其他海味所能比拟的。', '<p>鲍鱼营养价值极高，富含丰富的球蛋白；鲍鱼的肉中还含有一种被称为“鲍素”的成分，能够破坏癌细胞必需的代谢物质。</p>', 10.00, 20.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567679654395087840.jpg', 999, 99, b'1', '2019-09-05 18:37:11', -99, NULL, NULL);
INSERT INTO `product` VALUES (148, 48, '清蒸生蚝', 100, '清蒸生蚝是将新鲜的生蚝放进蒸箱蒸。蚝是一种有“海中牛奶”之誉的海洋生物，富含人体必需的蛋白质和微量元素。', '<p>壮骨。生蚝中钙含量接近牛奶，铁含量为牛奶的21倍，食用后有助于骨骼生长。尤其对老年男性非常有利，不但养骨、健齿，还有益智作用。</p>', 10.00, 20.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567680120628045108.jpg', 999, 99, b'1', '2019-09-05 18:45:14', -99, NULL, NULL);
INSERT INTO `product` VALUES (149, 48, '铁板鱿鱼', 100, '铁板鱿鱼是一道街边小吃，是用铁板把鱿鱼煎熟后，再用铁铲将鱿鱼切段，然后撒上特制酱做成。铁板烧起源于日本，已经有40年的悠久历史。铁板鱿鱼是一道街边小吃，是用铁板把鱿鱼煎熟后，再用铁铲将鱿鱼切段，然后撒上特制酱做成。', '<p><span style=\"color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: arial, &quot;pingfang sc&quot;, stheiti, simsun, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">铁板鱿鱼是一道街边小吃，是用铁板把鱿鱼煎熟后，再用铁铲将鱿鱼切段，然后撒上特制酱做成。</span><a class=\"ed_inner_link\" style=\"color: rgb(51, 102, 204); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: arial, &quot;pingfang sc&quot;, stheiti, simsun, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; text-decoration: underline; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px;\" href=\"https://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=113221&ss_c=ssc.citiao.link\" target=\"_blank\">铁板烧</a><span style=\"color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: arial, &quot;pingfang sc&quot;, stheiti, simsun, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">起源于日本，已经有40年的悠久历史。铁板鱿鱼是一道街边小吃，是用铁板把鱿鱼煎熟后，再用铁铲将鱿鱼切段，然后撒上特制酱做成。</span></p>', 60.00, 80.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567680156298066696.jpg', 10, 0, b'1', '2019-09-05 18:45:25', -99, NULL, NULL);
INSERT INTO `product` VALUES (150, 48, '濑尿虾', 100, ' 赖尿虾( 皮皮虾) 营养价值非常高. \" 皮皮虾\"俗称\"赖尿虾\"又名\" 富贵虾\"、\" 琵琶虾\"等, 虾蛄是其学名;虾蛄的营养价值较高,其性温,味甘,有 补肾壮阳、活血生津、通乳脱毒之功效.虾蛄的肉质含水分较多,肉味鲜甜嫩滑,淡而柔软。', '<p><span style=\"color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: arial, &quot;pingfang sc&quot;, stheiti, simsun, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">&nbsp;</span><a class=\"ed_inner_link\" style=\"color: rgb(51, 102, 204); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: arial, &quot;pingfang sc&quot;, stheiti, simsun, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; text-decoration: none; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px;\" href=\"https://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=94683&ss_c=ssc.citiao.link\" target=\"_blank\">赖尿虾</a><span style=\"color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: arial, &quot;pingfang sc&quot;, stheiti, simsun, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">(&nbsp;</span><a class=\"ed_inner_link\" style=\"color: rgb(51, 102, 204); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: arial, &quot;pingfang sc&quot;, stheiti, simsun, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; text-decoration: none; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px;\" href=\"https://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=94683&ss_c=ssc.citiao.link\" target=\"_blank\">皮皮虾</a><span style=\"color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: arial, &quot;pingfang sc&quot;, stheiti, simsun, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">) 营养价值非常高. &quot; 皮皮虾&quot;俗称&quot;赖尿虾&quot;又名&quot;&nbsp;</span><a class=\"ed_inner_link\" style=\"color: rgb(51, 102, 204); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: arial, &quot;pingfang sc&quot;, stheiti, simsun, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; text-decoration: none; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px;\" href=\"https://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=94683&ss_c=ssc.citiao.link\" target=\"_blank\">富贵虾</a><span style=\"color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: arial, &quot;pingfang sc&quot;, stheiti, simsun, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">&quot;、&quot;&nbsp;</span><a class=\"ed_inner_link\" style=\"color: rgb(51, 102, 204); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: arial, &quot;pingfang sc&quot;, stheiti, simsun, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; text-decoration: none; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px;\" href=\"https://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=94683&ss_c=ssc.citiao.link\" target=\"_blank\">琵琶虾</a><span style=\"color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: arial, &quot;pingfang sc&quot;, stheiti, simsun, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">&quot;等,&nbsp;</span><a class=\"ed_inner_link\" style=\"color: rgb(51, 102, 204); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: arial, &quot;pingfang sc&quot;, stheiti, simsun, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; text-decoration: none; word-spacing: 0px; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px;\" href=\"https://baike.sogou.com/lemma/ShowInnerLink.htm?lemmaId=94683&ss_c=ssc.citiao.link\" target=\"_blank\">虾蛄</a><span style=\"color: rgb(51, 51, 51); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: arial, &quot;pingfang sc&quot;, stheiti, simsun, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">是其学名;虾蛄的营养价值较高,其性温,味甘,有 补肾壮阳、活血生津、通乳脱毒之功效.虾蛄的肉质含水分较多,肉味鲜甜嫩滑,淡而柔软。</span></p>', 50.00, 60.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567680523285035872.jpg', 10, 0, b'1', '2019-09-05 18:48:48', -99, NULL, NULL);
INSERT INTO `product` VALUES (151, 48, '麻辣蛤蜊', 100, '蛤蜊色泽焦黄，有张有合，欲拒还羞，挑逗客官的味觉。佐以绿色的大葱和黄瓜，宛若千里荒岩，簇簇绿生，十分讨人喜。而色泽暗红小米辣则低调隐忍，丝毫不夺人眼球，只是偶然惊鸿一瞥，便叫你心跳快上三分。', '<p><span style=\"color: rgb(64, 64, 64); font-family: -apple-system, BlinkMacSystemFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;, &quot;Segoe UI&quot;, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);\">蛤蜊色泽焦黄，有张有合，欲拒还羞，挑逗客官的味觉。佐以绿色的大葱和黄瓜，宛若千里荒岩，簇簇绿生，十分讨人喜。而色泽暗红小米辣则低调隐忍，丝毫不夺人眼球，只是偶然惊鸿一瞥，便叫你心跳快上三分。</span></p>', 145.00, 184.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567680249628019088.png', 100, 123, b'1', '2019-09-05 18:52:03', -99, NULL, NULL);
INSERT INTO `product` VALUES (152, 48, '冰鲜北极贝', 50, '北极贝是一种营养非常丰富的食物，它的肉质非常鲜美所以深受男女老少的喜爱，适当的吃北极贝对人们的身体健康是有好处的。', '<p><span style=\"color: rgb(102, 102, 102); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">过节这几天，冰箱里存了很多冰鲜食品，正好和家人一起，吃了海鲜大餐，其中北极贝就是一个，北极贝吃法多样，不过最好吃还是即食吃起来更加新鲜，北极贝从深海打捞上来，经过处理已经是熟的了，所以，自己稍作加工就可以像饭店一样，同样可以做出美味的冰鲜北极贝哦。</span></p>', 12000.00, 20000.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567680723912062066.jpg', 20, 600000, b'1', '2019-09-05 18:53:40', -99, NULL, NULL);
INSERT INTO `product` VALUES (153, 48, '剁椒鱼头', 100, '菜品色泽红亮、味浓、肉质细嫩。肥而不腻、口感软糯、鲜辣适口。', '<p>菜品色泽红亮、味浓、肉质细嫩。肥而不腻、口感软糯、鲜辣适口。</p>', 89.00, 123.50, 'http://120.76.118.101:8081/upload/website/image/20190905/1567680249577051027.jpg', 1254, 45641, b'1', '2019-09-05 18:55:02', -99, NULL, NULL);
INSERT INTO `product` VALUES (154, 48, '酸菜鲈鱼', 100, '酸菜鲈鱼是一款家常菜品，制作原料主要有酸菜、鲈鱼等。', '<p>酸菜鲈鱼是一款家常菜品，制作原料主要有酸菜、鲈鱼等。</p>', 99.00, 130.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567680888776039727.png', 99, 0, b'1', '2019-09-05 18:57:07', -99, NULL, NULL);
INSERT INTO `product` VALUES (155, 48, '剁椒鳊鱼', 50, '简单方便', '<p><span style=\"color: rgb(102, 102, 102); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-weight: 400; word-spacing: 0px; float: none; display: inline !important; white-space: normal; orphans: 2; widows: 2; background-color: rgb(255, 255, 255); font-variant-ligatures: normal; font-variant-caps: normal; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\">味道鲜美</span></p>', 100.00, 120.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567681032706027524.jpg', 30, 3222, b'1', '2019-09-05 18:58:21', -99, NULL, NULL);
INSERT INTO `product` VALUES (156, 48, '飘香东星斑', 100, '飘香东星斑，香港十大经典名菜之一。', '<p>飘香东星斑是2018年9月10日发布的“中国菜”之一。</p>', 999.00, 1200.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567681164953083263.png', 59, 99, b'1', '2019-09-05 19:00:57', -99, NULL, NULL);
INSERT INTO `product` VALUES (157, 48, '蟹黄', 50, '蟹黄中含有丰富的蛋白质、磷脂和其他营养物质，营养丰富，但是同时含有较高含量的油脂和胆固醇。蟹黄可制成很多美食：蟹黄粥等。上海滩还有著名的美味小吃——蟹粉小笼。顾名思义，主料就是蟹黄。蟹黄有河蟹黄和海蟹黄两种。', '<p>蟹膏也有可能是脂肪。因为公蟹为了准备过冬，渐渐的脂肪堆积，长成了蟹膏（俗称蟹油）。剥开公蟹的壳，可以看到蟹壳和蟹坨坨当中有白白的、粘粘的东西，就是蟹膏（蟹油）。煮熟了以后，蟹膏变成了半透明状。蟹膏越多，说明这只公蟹越壮。</p><p>在野生的环境中，到了农历九月，母蟹的蟹黄长得最丰满；到了十月，公蟹的蟹膏（蟹油）长得最厚实。所以，过去吃螃蟹，有“九雌十雄”的说法。意思是：农历九月里要吃母蟹，农历十月里要吃公蟹。</p><p><br/></p>', 69.00, 119.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567683427828014985.jpg', 1000, 8946, b'1', '2019-09-05 19:38:53', -99, -99, '2019-09-05 19:42:45');
INSERT INTO `product` VALUES (158, 48, '海绵宝宝蟹黄堡', 0, '派大星我们去抓水母吧！', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255);\">他真是可怕了，一看到他我就恶心！那双大牛眼睛、方身体、两颗大门牙，还有那个愚蠢的领带！真是太可怕了！</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255);\">但是他在你身上就很好看！</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: arial; text-align: justify; background-color: rgb(255, 255, 255);\"><img src=\"http://120.76.118.101:8081/upload/website/image/20190905/1567675235429002841.jpg\" alt=\"1567675235429002841.jpg\"/></span></p>', 28.00, 35.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567683550982006259.jpg', 1000, 54678, b'1', '2019-09-05 19:41:57', -99, -99, '2019-12-26 08:34:40');
INSERT INTO `product` VALUES (159, 6, '章鱼烧', 100, '', '<p><img src=\"http://120.76.118.101:8081/upload/website/image/20190905/1567693738768030754.jpg\" title=\"1567693738768030754.jpg\" alt=\"timg.jpg\"/></p>', 11.00, 16.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567693711169015255.jpg', 870, 2333, b'1', '2019-09-05 22:29:03', -99, NULL, NULL);
INSERT INTO `product` VALUES (160, 6, '窝窝头', 100, '美味可口，窝窝头一块钱四个，嘿嘿', '<p><span style=\"font-family: &quot;Hiragino Sans GB&quot;, STHeiti, 微软雅黑, &quot;Microsoft YaHei&quot;, Helvetica, Arial, serif; background-color: rgb(255, 255, 255);\">用豆浆机制作出来的豆浆很细腻，我为了做豆浆酸奶，特意把豆浆过滤掉豆渣，我就想起曾经做过放豆腐的窝窝头，家里人说嚼着很香。这次就用豆渣制作了迷你窝窝头，一口一个玉米面窝窝头，色泽金黄，而且玉米面、豆渣都是注重粗粮注重健康的营养佳品。</span></p>', 1.00, 2.00, 'http://120.76.118.101:8081/upload/website/image/20190905/1567693922131019949.jpg', 500, 99, b'1', '2019-09-05 22:33:36', -99, NULL, NULL);

-- ----------------------------
-- Table structure for producttype
-- ----------------------------
DROP TABLE IF EXISTS `producttype`;
CREATE TABLE `producttype`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品类别编号',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品类别名称',
  `linkUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转向链接地址（如果存在则直接转向链接地址，否则打开本网站栏目）',
  `imageUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保存栏目图片',
  `summary` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '栏目简介（纯文本）',
  `intro` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '栏目简介（富文本）',
  `orderNum` int(11) NULL DEFAULT 0 COMMENT '排序（默认0，规则由前台决定，一般排序为最大）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of producttype
-- ----------------------------
INSERT INTO `producttype` VALUES (6, '小吃快餐', '', '6.png', '小吃是一类在口味上具有特定风格特色的食品的总称。小吃就地取材，能够突出反映当地的物质文化及社会生活风貌，是一个地区不可或缺的重要特色，更是离乡游子们对家乡思念的主要对象。', '<p>小吃是一类在<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%8F%A3%E5%91%B3/2536129\" data-lemmaid=\"2536129\">口味</a>上具有特定风格<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%89%B9%E8%89%B2/3690806\" data-lemmaid=\"3690806\">特色</a>的<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%A3%9F%E5%93%81/174284\" data-lemmaid=\"174284\">食品</a>的<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%80%BB%E7%A7%B0/8996550\" data-lemmaid=\"8996550\">总称</a>。小吃<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%B0%B1%E5%9C%B0%E5%8F%96%E6%9D%90/1539770\" data-lemmaid=\"1539770\">就地取材</a>，能够突出反映当地的<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%89%A9%E8%B4%A8/661503\" data-lemmaid=\"661503\">物质</a>文化及<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%A4%BE%E4%BC%9A%E7%94%9F%E6%B4%BB/9324529\" data-lemmaid=\"9324529\">社会生活</a>风貌，是一个地区不可或缺的重要特色，更是离乡游子们对<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%AE%B6%E4%B9%A1/1954\" data-lemmaid=\"1954\">家乡</a>思念的主要对象。</p>', 20);
INSERT INTO `producttype` VALUES (25, '甜点饮品', '', '25.png', '甜点，也叫甜品，是一个很广的概念，大致分为甜味点心和广式的糖水。甜点，一般不会被当作正餐，通常作为下午茶的小食。自古以来，中国人的饮食之道讲究养生，保健，滋补。特别是女生，饭后来一杯甜品，一碗甜汤，它们不含咖啡因、不含人工色素、不含食用香精等。让您里里外外都能有无处不在的健康美丽。在高温的夏季，酷暑吞噬着城市的每一个角落，人们走在街头通常想到的是找一家店，能喝上一杯让身心舒畅的冰凉饮品。平衡一下身体的热气，那该是多美妙的享受，而且吃一点甜品会感到开心和放松。在冬季，热食滋补甜品、手工磨糊、牛奶炖品、精选奶制甜品等让喜欢甜食的人们在寒冷的冬天也能品尝到可口的甜品。', '<p>甜点，也叫甜品，是一个很广的概念，大致分为甜味点心和广式的糖水。甜点，一般不会被当作正餐，通常作为下午茶的小食。</p><p>自古以来，中国人的饮食之道讲究养生，保健，滋补。特别是女生，饭后来一杯甜品，一碗甜汤，它们不含咖啡因、不含人工色素、不含食用香精等。让您里里外外都能有无处不在的健康美丽。在高温的夏季，酷暑吞噬着城市的每一个角落，人们走在街头通常想到的是找一家店，能喝上一杯让身心舒畅的冰凉饮品。平衡一下身体的热气，那该是多美妙的享受，而且吃一点甜品会感到开心和放松。</p><p>在冬季，热食滋补甜品、手工磨糊、牛奶炖品、精选奶制甜品等让喜欢甜食的人们在寒冷的冬天也能品尝到可口的甜品。<br></p>', 20);
INSERT INTO `producttype` VALUES (46, '西餐', '', '46.jpg', '西餐，顾名思义是西方国家的餐食。西方国家，是相对于东亚而言的欧洲白人世界文化圈，西餐的准确称呼应为欧洲美食，或欧式餐饮。其菜式料理与中国菜不同，一般使用橄榄油、黄油、番茄酱、沙拉酱等调味料。不同的主食相同的都是搭配上一些蔬菜，如番茄、西兰花等。西餐这个词是由于其特定的地理位置所决定的。\"西\"是西方的意思。一般指欧洲各国。\"餐\"就是饮食菜肴。东方人通常所说的西餐主要包括西欧国家的饮食菜肴，当然同时还包括东欧各国，地中海沿岸等国和一些拉丁美洲如墨西哥等国的菜肴。而东南亚各国的菜肴一般统称为东南亚菜，但也有独为一种菜系的，如印度菜。西餐一般以刀叉为餐具以面包为主食，多以长形桌台为台形。西餐的主要特点是主料突出，形色美观，口味鲜美，营养丰富，供应方便等。正规西菜而言应包括了餐汤、前菜、主菜、餐后甜品及饮品。西餐大致可分为法式、英式、意式、俄式、美式，地中海等多种不同风格的菜肴。', NULL, 100);
INSERT INTO `producttype` VALUES (47, '烧烤', '', '47.png', '烧烤，可能是人类最原始的烹调方式，是以燃料加热和干燥空气，并把食物放置于热干空气中一个比较接近热源的位置来加热食物。一般来说，烧烤是在火上将食物（多为肉类，海鲜，蔬菜）烤熟，烹调至可食用；现代社会，由于人类发明了多种用火方式，烧烤方式也逐渐多样化，发展出各式烧烤炉、烧烤架、烧烤酱等烧烤用品。', NULL, 20);
INSERT INTO `producttype` VALUES (48, '海鲜', '', '48.jpg', '海鲜（hoisin），又称海产食物，包括了鱼类、虾类、贝类这些海产等。虽然海带这类海洋生物也常是被料理成食物，但是海鲜主要还是针对动物制成的料理为主。', NULL, 20);
INSERT INTO `producttype` VALUES (49, '靓汤', '', '49.jpg', '', NULL, 100);

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
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purview
-- ----------------------------
INSERT INTO `purview` VALUES (30, '权限管理', '/api/backstage/purviewmanage/**', '/purview', b'1', NULL, 20);
INSERT INTO `purview` VALUES (31, '角色管理', '/api/backstage/rolemanage/**', '/rolemanage', b'1', '', 30);
INSERT INTO `purview` VALUES (32, '个人资料编辑', '/api/backstage/admin/**', '/admin', b'1', '', 5);
INSERT INTO `purview` VALUES (33, '管理员管理', '/api/backstage/adminmanage/**', '/adminmanage', b'1', '', 40);
INSERT INTO `purview` VALUES (34, '客户模块管理', '/api/backstage/customermanage/**', '/customermanage/', b'1', '', 60);
INSERT INTO `purview` VALUES (38, '产品类别模块', '/api/backstage/producttype/**', '/producttype/', b'1', NULL, 70);
INSERT INTO `purview` VALUES (39, '产品模块', '/api/backstage/product/**', '/product', b'1', '', 80);
INSERT INTO `purview` VALUES (40, '富文本操作权限', '/api/backstage/ueditor/**', NULL, b'1', '', 900);
INSERT INTO `purview` VALUES (41, '菜单模块', '/api/backstage/menumanage/**', '/menumanage', b'1', NULL, 10);

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
INSERT INTO `role` VALUES (14, 'ROLE_teacher', '老师', 100, b'0', b'1', '');

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
) ENGINE = InnoDB AUTO_INCREMENT = 224 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES (103, -99, 2, NULL);
INSERT INTO `role_menu` VALUES (104, -99, 7, NULL);
INSERT INTO `role_menu` VALUES (105, -99, 29, NULL);
INSERT INTO `role_menu` VALUES (106, -99, 30, NULL);
INSERT INTO `role_menu` VALUES (107, -99, 53, NULL);
INSERT INTO `role_menu` VALUES (108, -99, 8, NULL);
INSERT INTO `role_menu` VALUES (109, -99, 32, NULL);
INSERT INTO `role_menu` VALUES (110, -99, 33, NULL);
INSERT INTO `role_menu` VALUES (111, -99, 3, NULL);
INSERT INTO `role_menu` VALUES (112, -99, 10, NULL);
INSERT INTO `role_menu` VALUES (113, -99, 9, NULL);
INSERT INTO `role_menu` VALUES (119, -99, 4, NULL);
INSERT INTO `role_menu` VALUES (120, -99, 14, NULL);
INSERT INTO `role_menu` VALUES (121, -99, 15, NULL);
INSERT INTO `role_menu` VALUES (122, -99, 5, NULL);
INSERT INTO `role_menu` VALUES (123, -99, 6, NULL);
INSERT INTO `role_menu` VALUES (124, -99, 23, NULL);
INSERT INTO `role_menu` VALUES (125, -99, 24, NULL);
INSERT INTO `role_menu` VALUES (126, -99, 25, NULL);
INSERT INTO `role_menu` VALUES (130, -1, 7, NULL);
INSERT INTO `role_menu` VALUES (131, -1, 29, NULL);
INSERT INTO `role_menu` VALUES (132, -1, 30, NULL);
INSERT INTO `role_menu` VALUES (133, -1, 2, NULL);
INSERT INTO `role_menu` VALUES (134, -1, 53, NULL);
INSERT INTO `role_menu` VALUES (135, -1, 8, NULL);
INSERT INTO `role_menu` VALUES (136, -1, 32, NULL);
INSERT INTO `role_menu` VALUES (137, -1, 33, NULL);
INSERT INTO `role_menu` VALUES (138, -1, 3, NULL);
INSERT INTO `role_menu` VALUES (139, -1, 10, NULL);
INSERT INTO `role_menu` VALUES (140, -1, 9, NULL);
INSERT INTO `role_menu` VALUES (141, -1, 4, NULL);
INSERT INTO `role_menu` VALUES (142, -1, 14, NULL);
INSERT INTO `role_menu` VALUES (143, -1, 15, NULL);
INSERT INTO `role_menu` VALUES (144, -1, 5, NULL);
INSERT INTO `role_menu` VALUES (145, -1, 6, NULL);
INSERT INTO `role_menu` VALUES (146, -1, 23, NULL);
INSERT INTO `role_menu` VALUES (147, -1, 24, NULL);
INSERT INTO `role_menu` VALUES (148, -1, 25, NULL);
INSERT INTO `role_menu` VALUES (149, 3, 7, NULL);
INSERT INTO `role_menu` VALUES (150, 3, 29, NULL);
INSERT INTO `role_menu` VALUES (151, 3, 30, NULL);
INSERT INTO `role_menu` VALUES (152, 3, 2, NULL);
INSERT INTO `role_menu` VALUES (153, 3, 53, NULL);
INSERT INTO `role_menu` VALUES (154, 3, 8, NULL);
INSERT INTO `role_menu` VALUES (155, 3, 32, NULL);
INSERT INTO `role_menu` VALUES (156, 3, 33, NULL);
INSERT INTO `role_menu` VALUES (157, 3, 3, NULL);
INSERT INTO `role_menu` VALUES (158, 3, 10, NULL);
INSERT INTO `role_menu` VALUES (159, 3, 9, NULL);
INSERT INTO `role_menu` VALUES (160, 3, 4, NULL);
INSERT INTO `role_menu` VALUES (161, 3, 14, NULL);
INSERT INTO `role_menu` VALUES (162, 3, 15, NULL);
INSERT INTO `role_menu` VALUES (163, 3, 5, NULL);
INSERT INTO `role_menu` VALUES (164, 3, 6, NULL);
INSERT INTO `role_menu` VALUES (165, 3, 23, NULL);
INSERT INTO `role_menu` VALUES (166, 3, 24, NULL);
INSERT INTO `role_menu` VALUES (167, 3, 25, NULL);
INSERT INTO `role_menu` VALUES (197, 14, 7, NULL);
INSERT INTO `role_menu` VALUES (198, 14, 29, NULL);
INSERT INTO `role_menu` VALUES (199, 14, 30, NULL);
INSERT INTO `role_menu` VALUES (200, 14, 2, NULL);
INSERT INTO `role_menu` VALUES (201, 14, 33, NULL);
INSERT INTO `role_menu` VALUES (202, 14, 3, NULL);
INSERT INTO `role_menu` VALUES (203, 14, 10, NULL);
INSERT INTO `role_menu` VALUES (204, 14, 9, NULL);
INSERT INTO `role_menu` VALUES (205, 14, 4, NULL);
INSERT INTO `role_menu` VALUES (206, 14, 14, NULL);
INSERT INTO `role_menu` VALUES (207, 14, 15, NULL);
INSERT INTO `role_menu` VALUES (208, 14, 5, NULL);
INSERT INTO `role_menu` VALUES (209, 14, 6, NULL);
INSERT INTO `role_menu` VALUES (210, 14, 23, NULL);
INSERT INTO `role_menu` VALUES (211, 14, 24, NULL);
INSERT INTO `role_menu` VALUES (212, 14, 25, NULL);
INSERT INTO `role_menu` VALUES (213, 12, 7, NULL);
INSERT INTO `role_menu` VALUES (214, 12, 29, NULL);
INSERT INTO `role_menu` VALUES (215, 12, 30, NULL);
INSERT INTO `role_menu` VALUES (216, 12, 33, NULL);
INSERT INTO `role_menu` VALUES (217, 12, 3, NULL);
INSERT INTO `role_menu` VALUES (218, 12, 10, NULL);
INSERT INTO `role_menu` VALUES (219, 12, 9, NULL);
INSERT INTO `role_menu` VALUES (220, 12, 4, NULL);
INSERT INTO `role_menu` VALUES (221, 12, 14, NULL);
INSERT INTO `role_menu` VALUES (222, 12, 15, NULL);
INSERT INTO `role_menu` VALUES (223, 12, 5, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 310 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `role_purview` VALUES (67, 12, 34, '1234', '2019-10-24 20:16:02');
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

SET FOREIGN_KEY_CHECKS = 1;
