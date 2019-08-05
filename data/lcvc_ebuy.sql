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

 Date: 05/08/2019 19:58:00
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
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 86 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (-99, 'liangdian', 'e10adc3949ba59abbe56e057f20f883e', '管理员', 2, '2013-08-23 15:33:01');
INSERT INTO `admin` VALUES (1, 'user', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '阿斯顿发1', 1, '2013-08-23 15:33:01');
INSERT INTO `admin` VALUES (2, 'liangxiu1', '123456', '测试账户-梁X1', 1, '2013-08-23 15:33:01');
INSERT INTO `admin` VALUES (15, '666aasdf', 'e10adc3949ba59abbe56e057f20f883e', '密码是777', 1, '2013-10-15 17:28:57');
INSERT INTO `admin` VALUES (18, '77676', 'e10adc3949ba59abbe56e057f20f883e', '密码是', 1, '2013-10-15 17:30:01');
INSERT INTO `admin` VALUES (19, '75565', 'c605e6e35ed4c1c955a081a2980a7fa5', '密码是！@#', 1, '2013-10-15 17:30:27');
INSERT INTO `admin` VALUES (23, '554523', 'e10adc3949ba59abbe56e057f20f883e', 'kkk', 1, '2013-10-15 17:38:10');
INSERT INTO `admin` VALUES (25, 'dfdsfsdf', 'e10adc3949ba59abbe56e057f20f883e', '665656', 1, '2013-10-15 17:38:34');
INSERT INTO `admin` VALUES (28, 't65765', 'e10adc3949ba59abbe56e057f20f883e', '7676', 1, '2013-10-15 17:39:29');
INSERT INTO `admin` VALUES (29, '6767123', 'e10adc3949ba59abbe56e057f20f883e', '767657', 1, '2013-10-15 17:39:34');
INSERT INTO `admin` VALUES (31, '67457464', 'e10adc3949ba59abbe56e057f20f883e', '6464565', 1, '2013-10-15 17:39:50');
INSERT INTO `admin` VALUES (37, '2223232', 'e10adc3949ba59abbe56e057f20f883e', '2223232', 1, '2013-10-15 17:41:00');
INSERT INTO `admin` VALUES (39, 'fefdsadf', 'e10adc3949ba59abbe56e057f20f883e', 'fdfdf', 1, '2013-10-16 09:13:46');
INSERT INTO `admin` VALUES (41, 'gggd132', 'e10adc3949ba59abbe56e057f20f883e', '43434', 1, '2013-10-16 09:14:20');
INSERT INTO `admin` VALUES (42, '1213df', 'e10adc3949ba59abbe56e057f20f883e', '85445', 1, '2013-10-16 09:14:26');
INSERT INTO `admin` VALUES (43, '243434', 'e10adc3949ba59abbe56e057f20f883e', '56656', 1, '2013-10-16 09:14:34');
INSERT INTO `admin` VALUES (44, '5454we', 'e10adc3949ba59abbe56e057f20f883e', '5465434', 1, '2013-10-16 09:14:43');
INSERT INTO `admin` VALUES (46, '4343asdf', 'e10adc3949ba59abbe56e057f20f883e', '3434', 2, '2013-10-16 11:55:55');
INSERT INTO `admin` VALUES (49, '888er12', 'e10adc3949ba59abbe56e057f20f883e', '999', 1, '2013-10-16 17:50:51');
INSERT INTO `admin` VALUES (51, 'asdfed', 'e10adc3949ba59abbe56e057f20f883e', '123123', 1, '2013-10-17 09:46:24');
INSERT INTO `admin` VALUES (52, 'chenru', 'e10adc3949ba59abbe56e057f20f883e', '测试管理员-陈儒', 2, '2013-10-17 13:48:37');
INSERT INTO `admin` VALUES (53, 'asdfasd', 'e10adc3949ba59abbe56e057f20f883e', '阿萨德发', 1, '2013-10-18 09:21:34');
INSERT INTO `admin` VALUES (54, '1231231', 'e10adc3949ba59abbe56e057f20f883e', '撒旦法', 1, '2013-10-18 09:21:41');
INSERT INTO `admin` VALUES (55, 'asdfsd', 'e10adc3949ba59abbe56e057f20f883e', 'sfasdfwe', 2, '2013-10-18 09:24:23');
INSERT INTO `admin` VALUES (57, '123123', 'e10adc3949ba59abbe56e057f20f883e', '阿是否大是大非', 1, '2013-10-18 09:24:36');
INSERT INTO `admin` VALUES (59, '131adfad', 'e10adc3949ba59abbe56e057f20f883e', '试点范围非', 1, '2013-10-18 09:24:51');
INSERT INTO `admin` VALUES (60, 'adadfad', 'e10adc3949ba59abbe56e057f20f883e', '斯蒂芬', 1, '2013-10-18 09:25:00');
INSERT INTO `admin` VALUES (61, '123adf', 'e10adc3949ba59abbe56e057f20f883e', '阿萨德发12', 2, '2013-10-18 09:25:08');
INSERT INTO `admin` VALUES (62, 'asdfaf', 'e10adc3949ba59abbe56e057f20f883e', '阿萨德发顺丰', 1, '2013-10-18 09:25:14');
INSERT INTO `admin` VALUES (63, 'asdfasf', 'e10adc3949ba59abbe56e057f20f883e', '阿萨德发1', 1, '2013-10-18 09:25:22');
INSERT INTO `admin` VALUES (64, 'asdfadf', 'e10adc3949ba59abbe56e057f20f883e', '删除账户1', 1, '2013-10-18 09:31:35');
INSERT INTO `admin` VALUES (65, 'adfawef', 'e10adc3949ba59abbe56e057f20f883e', '删除账户2', 2, '2013-10-18 09:31:52');
INSERT INTO `admin` VALUES (66, 'asdfasdf', 'e10adc3949ba59abbe56e057f20f883e', '删除账户3', 1, '2013-10-18 09:31:58');
INSERT INTO `admin` VALUES (67, '测试删除账户', 'e10adc3949ba59abbe56e057f20f883e', '删除帐号4', 1, '2013-10-18 09:34:10');
INSERT INTO `admin` VALUES (68, '测试删除账户5', 'e10adc3949ba59abbe56e057f20f883e', '删除账户5', 1, '2013-10-18 09:35:10');
INSERT INTO `admin` VALUES (69, '测试删除账户6', 'e10adc3949ba59abbe56e057f20f883e', '删除账户6', 1, '2013-10-18 09:36:34');
INSERT INTO `admin` VALUES (70, '12asdfsdfa', 'e10adc3949ba59abbe56e057f20f883e', 'sadfasdf', 2, '2013-10-18 09:43:32');
INSERT INTO `admin` VALUES (71, 'aaaaa123', 'e10adc3949ba59abbe56e057f20f883e', 'asdfasdfa', 1, '2013-10-19 15:03:41');
INSERT INTO `admin` VALUES (75, 'chengru', 'e10adc3949ba59abbe56e057f20f883e', '测试账户-陈儒', 1, '2013-10-22 13:58:49');
INSERT INTO `admin` VALUES (76, 'test1', '123456', '测试账号1', 1, '2017-08-25 20:32:21');
INSERT INTO `admin` VALUES (77, 'test2', '123456', '测试账户2', 2, '2017-08-25 20:43:15');
INSERT INTO `admin` VALUES (78, 'tes3', '123456', '阿道夫', 2, '2017-08-25 20:45:23');
INSERT INTO `admin` VALUES (79, 'test4', '123456', '撒旦法', 1, '2017-08-25 20:45:32');
INSERT INTO `admin` VALUES (80, 'adfadfadf', '123456', '第三方', 1, NULL);
INSERT INTO `admin` VALUES (81, 'adfadfadf1', '123456', '第三方', 2, NULL);
INSERT INTO `admin` VALUES (82, 'ljyadbefgh1', '123456', '洪洪', 2, NULL);
INSERT INTO `admin` VALUES (85, 'user11111', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '撒旦法', 2, '2019-08-05 00:01:10');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账户名',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账户密码',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户名称',
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '移动电话',
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户地址',
  `zip` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户地址的邮编',
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户电子邮件',
  `picUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片路径',
  `intro` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '客户信息备注，简介',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, 'xiaoer', '888888', '张三', '13124123132', '柳州市恒大小区', '13432', '1312313@qq.com', NULL, '张三丰传人', '2013-11-21 17:31:46');
INSERT INTO `customer` VALUES (9, 'wenye', '123456', '温晓峰', '12344513121', '柳州市宝骏', '55233', '23123123@qq.com', NULL, '温爷传人', '2013-11-21 17:31:46');
INSERT INTO `customer` VALUES (12, 'zhizunbao', '666666', '至尊宝', '13633083252', '桂林市大河小区', '151431', 'asdfa@163.com', '', '你们懂的', '2013-11-21 17:39:38');

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
INSERT INTO `order_detail` VALUES (49, '3ba0104bc84b4b4f85ad71a11e5ca8d2', 82, 18.5, 21, 13);
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
  `price` float NULL DEFAULT NULL COMMENT '产品现价',
  `originalPrice` float NULL DEFAULT NULL COMMENT '产品原价',
  `picUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品图片路径',
  `number` int(11) NULL DEFAULT 0 COMMENT '库存',
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
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (71, 25, '芒果冰', 100, '芒果冰很好吃', '芒果冰很好吃', 17, 26, '/lcvc_ebuy/upload/image/20170907/20170907202328_453.jpg', 60, 3001, b'1', '2017-09-07 20:24:21', NULL, NULL, NULL);
INSERT INTO `product` VALUES (72, 25, '8寸蛋糕', 100, '蛋糕很好吃', '蛋糕很好吃蛋糕很好吃', 66, 88, '/lcvc_ebuy/upload/image/20170907/20170907202746_301.jpg', 94, 0, b'1', '2017-09-07 20:28:07', NULL, NULL, '2017-09-07 20:31:16');
INSERT INTO `product` VALUES (73, 25, '圣诞老人蛋糕', 100, '打发', '阿萨德发的算法的', 13, 28, '/lcvc_ebuy/upload/image/20170907/20170907202856_20.jpg', 510, 0, b'1', '2017-09-07 20:29:16', NULL, NULL, NULL);
INSERT INTO `product` VALUES (74, 25, '南瓜甜点', 100, '打发的是发', '阿萨德发的是法师打发的是发', 12, 16, '/lcvc_ebuy/upload/image/20170907/20170907203009_184.jpg', 41, 0, b'1', '2017-09-07 20:30:33', NULL, NULL, NULL);
INSERT INTO `product` VALUES (75, 6, '螺蛳粉', 100, '大法师的法师的法师的发大发', '大法师的法师的法师的发大发大法师的法师的法师的发大发', 12, 16, '/lcvc_ebuy/upload/image/20170907/20170907203134_218.jpg', 899, 0, b'1', '2017-09-07 20:31:47', NULL, NULL, NULL);
INSERT INTO `product` VALUES (76, 6, '桂林米粉', 100, '桂林米粉甲天下', '桂林米粉甲天下桂林米粉甲天下桂林米粉甲天下桂林米粉甲天下', 8, 12, '/lcvc_ebuy/upload/image/20170907/20170907203238_612.jpg', 779, 0, b'1', '2017-09-07 20:32:57', NULL, NULL, NULL);
INSERT INTO `product` VALUES (77, 6, '老友粉', 100, '打发打发斯蒂芬', '打发打发斯蒂芬打发打发斯蒂芬', 6, 10, '/lcvc_ebuy/upload/image/20170907/20170907203401_181.jpg', 653, 0, b'1', '2017-09-07 20:34:15', NULL, NULL, NULL);
INSERT INTO `product` VALUES (78, 6, '叉烧饭', 100, '真的很好吃', '真的很好吃真的很好吃', 12, 15, '/lcvc_ebuy/upload/image/20170907/20170907203501_900.jpg', 348, 0, b'1', '2017-09-07 20:35:24', NULL, NULL, NULL);
INSERT INTO `product` VALUES (79, 6, '烧鸭饭', 100, '真的很好吃', '真的很好吃真的很好吃', 8, 12, '/lcvc_ebuy/upload/image/20170907/20170907203536_774.jpg', 650, 0, b'1', '2017-09-07 20:35:50', NULL, NULL, NULL);
INSERT INTO `product` VALUES (80, 6, '白切鸡饭', 100, '真的很好吃', '真的很好吃真的很好吃', 12, 18, '/lcvc_ebuy/upload/image/20170907/20170907203645_950.jpg', 532, 0, b'1', '2017-09-07 20:37:02', NULL, NULL, NULL);
INSERT INTO `product` VALUES (81, 6, '鸡腿饭', 100, '真的很好吃', '真的很好吃真的很好吃', 12, 15, '/lcvc_ebuy/upload/image/20170907/20170907203714_815.jpg', 12339, 0, b'1', '2017-09-07 20:37:30', NULL, NULL, NULL);
INSERT INTO `product` VALUES (82, 25, '芒果冰', 100, '真的很好吃', '真的很好吃真的很好吃', 18.5, 21, '/lcvc_ebuy/upload/image/20170907/20170907203805_103.jpg', 287, 0, b'1', '2017-09-07 20:38:22', NULL, NULL, NULL);
INSERT INTO `product` VALUES (83, 25, '泰芒了', 100, '真的很好吃', '真的很好吃真的很好吃', 15.6, 28, '/lcvc_ebuy/upload/image/20170907/20170907204013_283.jpg', 499, 0, b'1', '2017-09-07 20:40:30', NULL, NULL, NULL);
INSERT INTO `product` VALUES (84, 25, '南瓜饼', 100, '真的很好吃', '真的很好吃真的很好吃', 21, 25, '/lcvc_ebuy/upload/image/20170907/20170907204123_274.jpg', 689, 0, b'1', '2017-09-07 20:41:39', NULL, NULL, NULL);
INSERT INTO `product` VALUES (85, 25, '特色猪肉肠粉', 100, '真的很好吃', '真的很好吃真的很好吃', 12, 16, '/lcvc_ebuy/upload/image/20170907/20170907204212_590.jpg', 300, 0, b'1', '2017-09-07 20:42:25', NULL, NULL, NULL);
INSERT INTO `product` VALUES (86, 25, '冰淇淋', 100, '打发撒旦法第三方', '啊是打发是打发第三方额', 3, 6, '/lcvc_ebuy/upload/image/20170907/20170907232230_82.jpg', 124, 32, b'1', '2017-09-07 23:22:49', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for producttype
-- ----------------------------
DROP TABLE IF EXISTS `producttype`;
CREATE TABLE `producttype`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品类别编号',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品类别名称',
  `linkUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转向链接地址（如果存在则直接转向链接地址，否则打开本网站栏目）',
  `imageUrl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '保存栏目图片',
  `intro` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '栏目简介',
  `orderNum` int(11) NULL DEFAULT 0 COMMENT '排序（默认0，规则由前台决定，一般排序为最大）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of producttype
-- ----------------------------
INSERT INTO `producttype` VALUES (6, '小吃快餐', '', '/lcvc_ebuy/upload/image/20170907/20170907212953_839.png', '', 20);
INSERT INTO `producttype` VALUES (25, '甜点饮品', '', '/lcvc_ebuy/upload/image/20170907/20170907213003_155.png', '', 10);

SET FOREIGN_KEY_CHECKS = 1;
