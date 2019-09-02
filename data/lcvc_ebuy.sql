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

 Date: 03/09/2019 01:18:07
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
) ENGINE = InnoDB AUTO_INCREMENT = 95 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (-99, 'liandian1', 'e10adc3949ba59abbe56e057f20f883e', '管理员1', 1, '2013-08-23 15:33:01');
INSERT INTO `admin` VALUES (1, 'user', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '我是默认管理员1', 1, '2013-08-23 15:33:01');
INSERT INTO `admin` VALUES (18, '77676', 'e10adc3949ba59abbe56e057f20f883e', '密码是', 1, '2013-10-15 17:30:01');
INSERT INTO `admin` VALUES (19, 'a75565', 'c605e6e35ed4c1c955a081a2980a7fa5', 'aaa', 1, '2013-10-15 17:30:27');
INSERT INTO `admin` VALUES (23, 'a554523', 'e10adc3949ba59abbe56e057f20f883e', 'kkk1', 1, '2013-10-15 17:38:10');
INSERT INTO `admin` VALUES (25, 'dfdsfsdf', 'e10adc3949ba59abbe56e057f20f883e', '665656', 1, '2013-10-15 17:38:34');
INSERT INTO `admin` VALUES (31, '67457464', 'e10adc3949ba59abbe56e057f20f883e', '6464565', 1, '2013-10-15 17:39:50');
INSERT INTO `admin` VALUES (42, '1213df', 'e10adc3949ba59abbe56e057f20f883e', '85445', 1, '2013-10-16 09:14:26');
INSERT INTO `admin` VALUES (43, '243434a', 'e10adc3949ba59abbe56e057f20f883e', '56656', 2, '2013-10-16 09:14:34');
INSERT INTO `admin` VALUES (44, '5454we', 'e10adc3949ba59abbe56e057f20f883e', '5465434', 2, '2013-10-16 09:14:43');
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
INSERT INTO `admin` VALUES (86, 'ljy', 'string', 'string', 0, '2019-08-05 23:24:04');
INSERT INTO `admin` VALUES (89, 'ljy3', '111111', '张三', 1, '2019-09-01 16:13:43');

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
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, 'xiaoer', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '张三', 1, '13124123132', '柳州市恒大小区', '134321', '1312313@qq.com', NULL, '张三丰传人', '2013-11-21 17:31:46');
INSERT INTO `customer` VALUES (9, 'wenye', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '温晓峰', 2, '12344513121', '柳州市宝骏', '55233', '23123123@qq.com', '9.jpg', '温爷传人', '2013-11-21 17:31:46');
INSERT INTO `customer` VALUES (12, 'huangsan', '666666', '至尊宝', 1, '13633083252', '桂林市大河小区', '151431', 'asdfa@163.com', '12.jpg', '你们懂的', '2013-11-21 17:39:38');
INSERT INTO `customer` VALUES (13, 'guangge', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '客户1', 1, '17703771999', '', '', '', '13.jpg', '', '2019-08-06 15:03:13');
INSERT INTO `customer` VALUES (14, 'user2', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '客户2', 1, '15388889881', '北京市顺义区', '000000', '13233@qq.com', NULL, '非常友善', '2019-08-06 15:06:53');
INSERT INTO `customer` VALUES (15, 'user3', '3214234', '客户3', 1, '15388889881', '广东省广州市', '000000', '1352312@qq.com', '15.jpg', '长隆', '2019-08-06 15:07:48');
INSERT INTO `customer` VALUES (16, 'user4', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '客户4', 2, '18083815777', '', '', '', '16.jpg', '', '2019-08-06 15:08:48');
INSERT INTO `customer` VALUES (17, 'abc1', 'fh58q2ea6thauof5ikg98fe2ciafh50r', 'ABC客户1', 1, '15377892222', '', '', '', '17.jpg', '', '2019-08-06 15:09:12');
INSERT INTO `customer` VALUES (18, 'abc2', 'fh58q2ea6thauof5ikg98fe2ciafh50r', 'ABC客户2', 2, '18168526111', '', '', '', '18.jpg', '', '2019-08-06 16:21:41');
INSERT INTO `customer` VALUES (19, 'abc3', '2341234123', 'ABC客户3', 1, '18100800709', '', '', '', NULL, '', '2019-08-06 16:22:12');
INSERT INTO `customer` VALUES (20, 'abc4', 'fh58q2ea6thauof5ikg98fe2ciafh50r', 'ABC客户4', 1, '15377892222', '', '', '', '20.jpg', '', '2019-08-06 15:09:12');
INSERT INTO `customer` VALUES (21, 'abc5', 'fh58q2ea6thauof5ikg98fe2ciafh50r', 'ABC客户5', 1, '15377892222', '', '', '', NULL, '', '2019-08-06 15:09:12');
INSERT INTO `customer` VALUES (22, 'abc6', 'fh58q2ea6thauof5ikg98fe2ciafh50r', 'ABC客户6', 1, '15377892222', '', '', '', '22.png', '', '2019-08-06 15:09:12');
INSERT INTO `customer` VALUES (23, 'abc11', '123141421', 'abc客户11', 1, '13357024777', '', '', '', '23.jpg', '', '2019-08-06 16:25:07');
INSERT INTO `customer` VALUES (25, 'user1', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '张三', 1, '17376108213', '', '', '', '25.jpg', '', '2019-08-31 15:11:15');
INSERT INTO `customer` VALUES (26, 'sdf', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '123', 1, '', '', '', '', NULL, '', '2019-08-31 18:30:05');
INSERT INTO `customer` VALUES (27, '123a', 'fh58q2ea6thauof5ikg98fe2ciafh50r', '12', 2, '', '', '', '', NULL, '', '2019-08-31 18:30:19');

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
) ENGINE = InnoDB AUTO_INCREMENT = 95 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (71, 25, '芒果冰', 100, '芒果冰很好吃', '<p>芒果冰很好吃</p>', 15.00, 21.00, 'http://localhost:8088/ebuy_springboot//server/upload/website/image/20190828/1566968006397012095.jpg', 60, 3001, b'1', '2017-09-07 20:24:21', 1, NULL, NULL);
INSERT INTO `product` VALUES (72, 25, '8寸蛋糕', 100, '蛋糕很好吃', '<p>蛋糕很好吃蛋糕很好吃</p>', 66.50, 88.00, 'http://localhost:8088/ebuy_springboot//server/upload/website/image/20190828/1566968777074027597.jpg', 94, 123, b'1', '2017-09-07 20:28:07', 1, NULL, '2017-09-07 20:31:16');
INSERT INTO `product` VALUES (73, 25, '奶油蛋糕', 100, '打发', '<p>阿萨德发的算法的</p>', 13.00, 28.00, 'http://localhost:8088/ebuy_springboot//server/upload/website/image/20190828/1566968777063038328.jpg', 510, 645, b'1', '2017-09-07 20:29:16', 1, NULL, NULL);
INSERT INTO `product` VALUES (74, 25, '南瓜甜点', 100, '打发的是发', '<p>阿萨德发的是法师打发的是发</p>', 12.00, 16.00, 'http://localhost:8088/ebuy_springboot//server/upload/website/image/20190828/1566968777296017822.jpg', 41, 545, b'1', '2017-09-07 20:30:33', 1, NULL, NULL);
INSERT INTO `product` VALUES (75, 6, '螺蛳粉', 100, '大法师的法师的法师的发大发', '<p>大法师的法师的法师的发大发大法师的法师的法师的发大发</p>', 12.00, 16.00, 'http://localhost:8088/ebuy_springboot//server/upload/website/image/20190828/1566968777144092172.jpg', 899, 45, b'1', '2017-09-07 20:31:47', 1, NULL, NULL);
INSERT INTO `product` VALUES (76, 6, '桂林米粉', 100, '桂林米粉甲天下', '<p>桂林米粉甲天下桂林米粉甲天下桂林米粉甲天下桂林米粉甲天下</p>', 8.00, 12.00, 'http://localhost:8088/ebuy_springboot//server/upload/website/image/20190828/1566968777165044785.jpg', 779, 34, b'1', '2017-09-07 20:32:57', 1, NULL, NULL);
INSERT INTO `product` VALUES (77, 6, '老友粉', 100, '打发打发斯蒂芬', '<p>打发打发斯蒂芬打发打发斯蒂芬</p>', 6.00, 10.00, 'http://localhost:8088/ebuy_springboot//server/upload/website/image/20190828/1566968777193045028.jpg', 653, 45, b'1', '2017-09-07 20:34:15', 1, NULL, NULL);
INSERT INTO `product` VALUES (78, 6, '叉烧饭', 100, '真的很好吃', '<p>真的很好吃真的很好吃</p>', 12.00, 15.00, 'http://localhost:8088/ebuy_springboot//server/upload/website/image/20190828/1566968777188073500.jpg', 348, 234, b'1', '2017-09-07 20:35:24', 1, NULL, NULL);
INSERT INTO `product` VALUES (79, 6, '烧鸭饭', 100, '真的很好吃', '<p>真的很好吃真的很好吃</p>', 8.00, 12.00, 'http://localhost:8088/ebuy_springboot//server/upload/website/image/20190828/1566968777208023195.jpg', 650, 5645, b'1', '2017-09-07 20:35:50', 1, NULL, NULL);
INSERT INTO `product` VALUES (80, 6, '白切鸡饭', 100, '真的很好吃', '<p>真的很好吃真的很好吃</p>', 12.00, 18.00, 'http://localhost:8088/ebuy_springboot//server/upload/website/image/20190828/1566968105516095998.jpg', 532, 324, b'1', '2017-09-07 20:37:02', 1, NULL, NULL);
INSERT INTO `product` VALUES (81, 6, '鸡腿饭', 100, '真的很好吃', '<p>真的很好吃真的很好吃</p>', 12.00, 15.00, 'http://localhost:8088/ebuy_springboot//server/upload/website/image/20190828/1566968105516095998.jpg', 12339, 22, b'1', '2017-09-07 20:37:30', 1, NULL, NULL);
INSERT INTO `product` VALUES (83, 25, '泰芒了', 100, '真的很好吃', '<p>真的很好吃真的很好吃</p>', 16.00, 28.00, 'http://localhost:8088/ebuy_springboot//server/upload/website/image/20190828/1566968777290063133.jpg', 499, 0, b'1', '2017-09-07 20:40:30', 1, NULL, NULL);
INSERT INTO `product` VALUES (84, 25, '南瓜饼', 100, '真的很好吃', '<p>真的很好吃真的很好吃</p>', 21.00, 25.00, 'http://localhost:8088/ebuy_springboot//server/upload/website/image/20190828/1566968777296017822.jpg', 689, 234, b'1', '2017-09-07 20:41:39', 1, NULL, NULL);
INSERT INTO `product` VALUES (85, 25, '特色猪肉肠粉', 100, '真的很好吃', '<p>真的很好吃真的很好吃</p>', 12.00, 16.00, 'http://localhost:8088/ebuy_springboot//server/upload/website/image/20190828/1566968777334032540.jpg', 300, 0, b'1', '2017-09-07 20:42:25', 1, NULL, NULL);
INSERT INTO `product` VALUES (86, 25, '巧克力冰淇淋', 100, '打发撒旦法第三方', '<p>啊是打发是打发第三方额</p>', 3.00, 6.00, 'http://localhost:8088/ebuy_springboot//server/upload/website/image/20190828/1566968777334037207.jpg', 124, 32, b'1', '2017-09-07 23:22:49', 1, NULL, NULL);
INSERT INTO `product` VALUES (94, 26, 'adfsd', 100, '123123', '<p>123123<br/></p>', 0.00, 0.00, 'http://localhost:8088/ebuy_springboot//server/upload/website/image/20190828/1566968105516095998.jpg', 1, 0, b'0', '2019-08-28 16:10:46', 18, NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of producttype
-- ----------------------------
INSERT INTO `producttype` VALUES (6, '小吃快餐', '', '6.png', '小吃是一类在口味上具有特定风格特色的食品的总称。小吃就地取材，能够突出反映当地的物质文化及社会生活风貌，是一个地区不可或缺的重要特色，更是离乡游子们对家乡思念的主要对象。', '<p>小吃是一类在<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%8F%A3%E5%91%B3/2536129\" data-lemmaid=\"2536129\">口味</a>上具有特定风格<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%89%B9%E8%89%B2/3690806\" data-lemmaid=\"3690806\">特色</a>的<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%A3%9F%E5%93%81/174284\" data-lemmaid=\"174284\">食品</a>的<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%80%BB%E7%A7%B0/8996550\" data-lemmaid=\"8996550\">总称</a>。小吃<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%B0%B1%E5%9C%B0%E5%8F%96%E6%9D%90/1539770\" data-lemmaid=\"1539770\">就地取材</a>，能够突出反映当地的<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%89%A9%E8%B4%A8/661503\" data-lemmaid=\"661503\">物质</a>文化及<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%A4%BE%E4%BC%9A%E7%94%9F%E6%B4%BB/9324529\" data-lemmaid=\"9324529\">社会生活</a>风貌，是一个地区不可或缺的重要特色，更是离乡游子们对<a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%AE%B6%E4%B9%A1/1954\" data-lemmaid=\"1954\">家乡</a>思念的主要对象。</p>', 20);
INSERT INTO `producttype` VALUES (25, '甜点饮品', '', '25.png', '甜点，也叫甜品，是一个很广的概念，大致分为甜味点心和广式的糖水。甜点，一般不会被当作正餐，通常作为下午茶的小食。自古以来，中国人的饮食之道讲究养生，保健，滋补。特别是女生，饭后来一杯甜品，一碗甜汤，它们不含咖啡因、不含人工色素、不含食用香精等。让您里里外外都能有无处不在的健康美丽。在高温的夏季，酷暑吞噬着城市的每一个角落，人们走在街头通常想到的是找一家店，能喝上一杯让身心舒畅的冰凉饮品。平衡一下身体的热气，那该是多美妙的享受，而且吃一点甜品会感到开心和放松。在冬季，热食滋补甜品、手工磨糊、牛奶炖品、精选奶制甜品等让喜欢甜食的人们在寒冷的冬天也能品尝到可口的甜品。', '<p>甜点，也叫甜品，是一个很广的概念，大致分为甜味点心和广式的糖水。甜点，一般不会被当作正餐，通常作为下午茶的小食。</p><p>自古以来，中国人的饮食之道讲究养生，保健，滋补。特别是女生，饭后来一杯甜品，一碗甜汤，它们不含咖啡因、不含人工色素、不含食用香精等。让您里里外外都能有无处不在的健康美丽。在高温的夏季，酷暑吞噬着城市的每一个角落，人们走在街头通常想到的是找一家店，能喝上一杯让身心舒畅的冰凉饮品。平衡一下身体的热气，那该是多美妙的享受，而且吃一点甜品会感到开心和放松。</p><p>在冬季，热食滋补甜品、手工磨糊、牛奶炖品、精选奶制甜品等让喜欢甜食的人们在寒冷的冬天也能品尝到可口的甜品。<br></p>', 20);
INSERT INTO `producttype` VALUES (26, 'ad2', '', NULL, '12', '12<img src=\"http://127.0.0.1:8020/ebuy_web/plugins/layui/images/face/42.gif\" alt=\"[抓狂]\">', 32);
INSERT INTO `producttype` VALUES (41, '测试富文本', '', NULL, '阿斯顿发送到发斯蒂芬阿斯顿发达的说法按时大多数非       阿斯顿发达阿斯顿发斯蒂芬阿斯顿发', '<p>阿斯顿发送到发斯蒂芬阿<img src=\"http://127.0.0.1:8020/ebuy_web/plugins/layui/images/face/22.gif\" alt=\"[委屈]\">斯顿发达的说法按时大多数非</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src=\"http://127.0.0.1:8020/ebuy_web/plugins/layui/images/face/21.gif\" alt=\"[衰]\">阿斯顿发达阿斯顿发斯蒂芬阿斯顿发<br></p>', 123);
INSERT INTO `producttype` VALUES (42, '火锅', '', NULL, '', '', 20);
INSERT INTO `producttype` VALUES (43, '蛋糕奶茶', '', NULL, '', '', 20);

SET FOREIGN_KEY_CHECKS = 1;
